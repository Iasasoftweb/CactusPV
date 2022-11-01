unit UReporteVentasXProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DB, ZAbstractRODataset, ZDataset,
  cxGroupBox, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar,
  frxClass, frxDBSet;

type
  TFrmVentasxProductos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    DsAlmacenes: TDataSource;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    cxSpinEdit1: TcxSpinEdit;
    Edit1: TEdit;
    cxButton9: TcxButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    inicio: TcxDateEdit;
    cxButton5: TcxButton;
    BtFind: TcxButton;
    QConsulta: TZReadOnlyQuery;
    QConsultaCOD_ART: TWideStringField;
    QConsultaARTICULO: TWideStringField;
    QConsultaGL: TExtendedField;
    QConsultaTOTAL: TExtendedField;
    DsQconsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1GL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxButton17: TcxButton;
    FxCuadre: TfrxReport;
    Config: TfrxDBDataset;
    FxDetalle: TfrxDBDataset;
    FxTarjetas: TfrxDBDataset;
    FxMaster: TfrxDBDataset;
    procedure cxButton9Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure BtFindClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVentasxProductos: TFrmVentasxProductos;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmVentasxProductos.BtFindClick(Sender: TObject);
begin
with qconsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select b.cod_art, c.articulo, sum(b.cantidad) Gl, sum((b.precio * b.cantidad)) Total from master_fact a');
    sql.Add('left join detailfact b On a.no_fact = b.masterid');
    sql.Add('left join mtartuculos c On b.articuloid = c.cod_art and c.condicion = ''Productos''');
    sql.Add('where a.situacion =''IMPRESA''');
    sql.Add('AND a.TIPO =''Contado''');
    sql.Add('and a.fecha_fac >=:fecha1');
    sql.Add('and a.fecha_fac <=:fecha2');
    if cxSpinEdit1.Value > 0 then
      begin
          sql.Add('and a.idestacion =:esta');
      end;
    sql.Add('group by b.cod_art, c.articulo');
    Params[0].Value := inicio.Date;
    Params[1].Value := fechafinal.Date;
    if cxSpinEdit1.Value > 0 then
      begin
          params[2].Value := cxSpinEdit1.Value;
      end;

       open;
  end;







end;

procedure TFrmVentasxProductos.cxButton17Click(Sender: TObject);
begin
 fxcuadre.variables['estacion']:=quotedstr(edit1.Text);
 fxcuadre.variables['fecha1']:=quotedstr(inicio.Text);
 fxcuadre.variables['fecha2']:=quotedstr(fechafinal.Text);

  fxcuadre.PrepareReport(true);
  fxcuadre.ShowPreparedReport;
end;

procedure TFrmVentasxProductos.cxButton5Click(Sender: TObject);
begin
Edit1.Clear;
cxSpinEdit1.Value := 0;
end;

procedure TFrmVentasxProductos.cxButton9Click(Sender: TObject);
begin
almacenes.Open;
cxgrid3.Visible := true;
end;

procedure TFrmVentasxProductos.cxGridDBTableView1DblClick(Sender: TObject);
begin
cxSpinEdit1.Value := almacenesid.Value;
        Edit1.Text  := almacenesdescripcion.Value;

        cxgrid3.Visible := false;
end;

end.
