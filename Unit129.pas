
unit Unit129;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset,
  ZDataset, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  frxClass, frxDBSet, dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog,
  frxExportPDF;

type
  TFrmReporte_Inventario = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    inicio: TcxDateEdit;
    Label1: TLabel;
    fechafinal: TcxDateEdit;
    cxButton9: TcxButton;
    Label19: TLabel;
    Label20: TLabel;
    DsAlmacenes: TDataSource;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Edit1: TEdit;
    Edit2: TEdit;
    FInvenatario: TZReadOnlyQuery;
    FInvenatarioFECHA: TDateField;
    FInvenatarioCOD_ART: TIntegerField;
    FInvenatarioARTICULO: TWideStringField;
    FInvenatarioDESCRIPCION: TWideStringField;
    FInvenatarioCOD_CAT: TIntegerField;
    FInvenatarioENTRADA: TExtendedField;
    FInvenatarioSALIDA: TExtendedField;
    DswInventario: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    FxConfig: TfrxDBDataset;
    Reporte: TfrxReport;
    FXConsulta: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReporte_Inventario: TFrmReporte_Inventario;

implementation

{$R *.dfm}

uses UInicio, Unit2;

procedure TFrmReporte_Inventario.cxButton1Click(Sender: TObject);
begin

  with finvenatario do
  begin
    close;
    sql.Clear;
    sql.add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,Sum(a.entrada) entrada, sum(a.salida) salida from minventario a');
    sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
    sql.add('where a.cod_alm =:op');
    sql.Add('and a.fecha >=:fecha1');
    sql.Add('and a.fecha <=:fecha2');
    sql.Add('and  a.entrada >0');
   // sql.add('and a.cod_alm =:op');
    sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo');
  //  params[0].Value := zexistenciacod_art.Value;
    params[0].Value := StrToInt(edit1.Text);
    params[1].Value := inicio.Date;
    params[2].Value := fechafinal.Date;

    open;
  end;
end;

procedure TFrmReporte_Inventario.cxButton4Click(Sender: TObject);
begin
reporte.variables['fecha1']:=quotedstr(inicio.Text);
             reporte.variables['Empleado']:=quotedstr(Edit2.Text);
             reporte.variables['fecha2']:=quotedstr(fechafinal.Text);
             reporte.PrepareReport(true);
             reporte.ShowPreparedReport;
end;

procedure TFrmReporte_Inventario.cxButton9Click(Sender: TObject);
begin
almacenes.Open;
cxgrid2.Visible := true;


end;

procedure TFrmReporte_Inventario.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
Edit1.Text := almacenesID.Text;
Edit2.Text := almacenesDESCRIPCION.Text;
cxGrid2.Visible := false;
almacenes.Close;
end;

procedure TFrmReporte_Inventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmReporte_Inventario := nil;
Action := caFree;
end;

end.

