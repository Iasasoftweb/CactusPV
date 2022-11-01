unit UReporteInvenario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportPDF, frxClass,
  frxExportBaseDialog, frxExportXLS, frxDBSet, Vcl.StdCtrls, acPNG,
  Vcl.ExtCtrls, Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, cxButtons, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset;

type
  TReporteInventario = class(TForm)
    FxConfig: TfrxDBDataset;
    Reporte: TfrxReport;
    FXConsulta: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    DsAlmacenes: TDataSource;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    zqConsulta: TZReadOnlyQuery;
    zqConsultaCOD_ART: TIntegerField;
    zqConsultaCOSTO_PR: TFloatField;
    zqConsultaARTICULO: TWideStringField;
    zqConsultaCOSTO: TFloatField;
    zqConsultaEMPAQUE: TIntegerField;
    zqConsultaUNIDADCOMPRA: TWideStringField;
    zqConsultaCOD_ALM: TIntegerField;
    zqConsultaEXISTENCIA: TExtendedField;
    zqConsultaTOTAL: TExtendedField;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    op2: TcxGroupBox;
    cxButton2: TcxButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel22: TPanel;
    SpeedButton3: TSpeedButton;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReporteInventario: TReporteInventario;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TReporteInventario.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TReporteInventario.cxButton2Click(Sender: TObject);
begin
almacenes.Open;
cxgrid3.Visible := true;
end;

procedure TReporteInventario.cxGridDBTableView1DblClick(Sender: TObject);
begin
     edit2.Text := almacenesid.text;
        edit3.Text := almacenesdescripcion.Value;
        cxgrid3.Visible := false;


end;

procedure TReporteInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
ReporteInventario := nil;
end;

procedure TReporteInventario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = VK_ESCAPE then
  begin
    cxGrid3.Visible := false;
  end;






end;

procedure TReporteInventario.SpeedButton3Click(Sender: TObject);
begin

if Edit2.Text <>'' then begin



with zqConsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.costo_pr, upper(b.articulo) articulo, b.costo, b.empaque, b.unidadcompra, a.cod_alm, sum(a.entrada - a.salida) Existencia,');
    sql.Add('b.costo * sum(a.entrada - a.salida) Total  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('where b.politica <> ''Servicio''');
    sql.Add('and a.cod_alm =:almacen');
    sql.Add('group by a.cod_art, b.costo_pr,  upper(b.articulo),b.costo, a.cod_alm, b.unidadcompra,  b.empaque');
    sql.Add('order by upper(b.articulo) ASC');
    Params[0].Value :=  StrToInt(edit2.Text);
    open;
  end;

  reporte.variables['almacen']:=quotedstr(edit2.Text);
  reporte.PrepareReport(true);
  reporte.ShowPreparedReport;
end else begin
           ShowMessage(' Favor Seleccionar el Almacen ');
         end;
end;

end.
