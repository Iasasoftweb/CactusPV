unit Unit73;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Data.DB, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, unit2, ZAbstractRODataset, ZDataset,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmRutas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton3: TcxButton;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label3: TLabel;
    vendedor: TZReadOnlyQuery;
    DsVendedor: TDataSource;
    vendedorID: TIntegerField;
    vendedorNOMBRE: TWideStringField;
    vendedorCEDULA: TWideStringField;
    vendedorTELEFONO: TWideStringField;
    vendedorESTADO: TIntegerField;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    consulta: TZReadOnlyQuery;
    consultaID: TIntegerField;
    consultaNOMBRE_RUTA: TWideStringField;
    consultaIDVENDEDOR: TIntegerField;
    consultaNOMBRE: TWideStringField;
    Edit1: TEdit;
    Label4: TLabel;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1NOMBRE_RUTA: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRutas: TFrmRutas;

implementation

{$R *.dfm}

procedure TFrmRutas.cxButton3Click(Sender: TObject);
begin
datos.TbRutas.CancelUpdates;
datos.Data.Rollback;

  nuevo.Enabled := true;
        guardar.Enabled := false;
        cxButton3.Enabled := false;

        vendedor.close;
        datos.TbRutas.Close;
end;

procedure TFrmRutas.cxGrid1DBTableView1DblClick(Sender: TObject);
begin



with datos.TbRutas do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.nombre from ruta a');
    sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
    sql.Add('where a.id =:pp');
    params[0].Value := consultaid.Value;
    open;
  end;


  cxGroupBox1.Enabled := true;

  cxDBTextEdit1.SetFocus;

vendedor.Open;

nuevo.Enabled := false;
guardar.Enabled := true;
cxButton3.Enabled := true;


end;

procedure TFrmRutas.Edit1Change(Sender: TObject);
begin



with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.nombre from ruta a');
    sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
    sql.Add('where a.NOMBRE_RUTA like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;


end;

procedure TFrmRutas.FormShow(Sender: TObject);
begin
consulta.Open;
end;

procedure TFrmRutas.guardarClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text ='' then
    begin
      Showmessage('  Registro no puede ser guardado ');
      cxDBTextEdit1.SetFocus;
    end else begin
      datos.TbRutas.ApplyUpdates;
      datos.Data.Commit;

        nuevo.Enabled := true;
        guardar.Enabled := false;
        cxButton3.Enabled := false;

        vendedor.close;
        datos.TbRutas.Close;

        consulta.Close;
        consulta.Open;
    end;
end;

procedure TFrmRutas.nuevoClick(Sender: TObject);
begin


with max do
  begin
    close;
    sql.Clear;
    sql.Add('select max(id) from ruta');
    open;
  end;

  datos.TbRutas.Open;
  datos.TbRutas.Insert;
  datos.TbRutasID.Value := maxmax.Value + 1;

  cxGroupBox1.Enabled := true;

  cxDBTextEdit1.SetFocus;

vendedor.Open;

nuevo.Enabled := false;
guardar.Enabled := true;
cxButton3.Enabled := true;
end;

end.
