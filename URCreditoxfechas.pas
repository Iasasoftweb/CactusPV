unit URCreditoxfechas;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,
  cxButtons, cxGroupBox, ZAbstractRODataset, ZDataset, frxClass, frxDBSet,
  dxBarBuiltInMenu, cxPC, dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmRCreditoxFechas = class(TForm)
    QConsulta: TZReadOnlyQuery;
    QConsultaCLIENTEID: TIntegerField;
    QConsultaTOTAL: TExtendedField;
    QConsultaEXTRACT: TSmallintField;
    QConsultaFECHA: TWideStringField;
    DsConsulta: TDataSource;
    QConsultaNOMBRES: TWideStringField;
    FxCuadre: TfrxReport;
    FxDetalle: TfrxDBDataset;
    Config: TfrxDBDataset;
    FxTarjetas: TfrxDBDataset;
    FxMaster: TfrxDBDataset;
    QConsultaCREDITO: TExtendedField;
    cxPageControl1: TcxPageControl;
    Tmes: TcxTabSheet;
    TFecha: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton17: TcxButton;
    inicio: TcxDateEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CLIENTEID: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxDateEdit1: TcxDateEdit;
    Label3: TLabel;
    FFininal: TcxDateEdit;
    QConsulta2: TZReadOnlyQuery;
    QConsulta2CLIENTEID: TIntegerField;
    QConsulta2NOMBRES: TWideStringField;
    QConsulta2MCREDITO: TExtendedField;
    QConsulta2MPENDIENTE: TExtendedField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    DsConsulta2: TDataSource;
    QConsulta2FECHA_FAC: TDateField;
    cxGrid2DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid2DBTableView1MCREDITO: TcxGridDBColumn;
    cxGrid2DBTableView1MPENDIENTE: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA_FAC: TcxGridDBColumn;
    FrReporte2: TfrxReport;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRCreditoxFechas: TFrmRCreditoxFechas;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmRCreditoxFechas.cxButton17Click(Sender: TObject);
begin
fxcuadre.variables['fecha1']:=quotedstr(inicio.Text);


  fxcuadre.PrepareReport(true);
  fxcuadre.ShowPreparedReport;
end;

procedure TFrmRCreditoxFechas.cxButton1Click(Sender: TObject);
begin
with qconsulta do
  begin
    close;
    sql.Clear;
    sql.add('SELECT a.clienteid, b.nombres, sum(a.pendiente) as total,  Sum(a.montopago) Credito, EXTRACT(MONTH FROM a.fecha_fac),');

    sql.add('CASE EXTRACT(MONTH FROM CAST(a.fecha_fac AS DATE))');
    sql.add('WHEN 1 THEN ''ENERO '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 2 THEN ''FEBRERO '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 3 THEN ''MARZO '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 4 THEN ''ABRIL '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 5 THEN ''MAYO '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 6 THEN ''JUNIO '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 7 THEN ''JULIO '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 8 THEN ''AGOSTO '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 9 THEN ''SEPTIEMBRE '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 10 THEN ''OCTUBRE '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 11 THEN ''NOVIEMBRE '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('WHEN 12 THEN ''DICIEMBRE '' || '' '' || EXTRACT(YEAR FROM a.fecha_fac)');
    sql.add('END AS Fecha');

    sql.add('FROM master_fact a');
    sql.add('left join cliente b On a.clienteid = b.codigo');
    sql.add('WHERE CAST(a.fecha_fac AS DATE) BETWEEN dateadd(MONTH,-4,CURRENT_DATE) AND dateadd(MONTH,1,CURRENT_DATE)');
    sql.add('and a.tipo = ''CREDITO''');
    sql.add('AND a.pendiente >0.00');
    sql.add('and a.situacion =''IMPRESA''');
    sql.add('and  EXTRACT(MONTH FROM a.fecha_fac) = EXTRACT(MONTH FROM cast(:fec as date))');
    sql.add('and  EXTRACT(YEAR FROM a.fecha_fac)  = EXTRACT(YEAR FROM cast(:aa as date))');
    sql.add('GROUP BY EXTRACT(MONTH FROM a.fecha_fac), EXTRACT(YEAR FROM a.fecha_fac ), a.clienteid, b.nombres');
    params[0].Value := inicio.Date;
    params[1].Value := inicio.Date;
    open;
  end;





























end;

procedure TFrmRCreditoxFechas.cxButton2Click(Sender: TObject);
begin

with qconsulta2 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.fecha_fac, a.clienteid, b.nombres, Sum(a.montopago) MCredito, Sum(a.pendiente) Mpendiente  from master_fact a');
    sql.Add('left join cliente b on a.clienteid = b.codigo');
    sql.Add('where a.tipo = ''CREDITO''');
    sql.Add('and a.situacion =''IMPRESA''');
    sql.Add('and a.fecha_fac >=:fecha1');
    sql.Add('and a.fecha_fac <=:fecha2');
    sql.Add('Group By a.fecha_fac, a.clienteid, b.nombres');
    params[0].Value := inicio.Date;
    params[1].Value := FFininal.Date;
    open;
  end;


end;

procedure TFrmRCreditoxFechas.cxButton3Click(Sender: TObject);
begin
frreporte2.variables['fecha1']:=quotedstr(inicio.Text);
frreporte2.variables['fecha2']:=quotedstr(inicio.Text);


  frreporte2.PrepareReport(true);
  frreporte2.ShowPreparedReport;
end;

end.
