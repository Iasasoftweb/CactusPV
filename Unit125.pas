unit Unit125;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxDBEdit,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, frxClass,
  frxDBSet, Vcl.ExtCtrls;

type
  TFrmComsionFactura = class(TForm)
    Consulta: TZReadOnlyQuery;
    ConsultaFECHA_FAC: TDateField;
    ConsultaMONTOPAGO: TFloatField;
    ConsultaNOMBRES_EMP: TWideStringField;
    ConsultaDESCUENTO: TIntegerField;
    ConsultaTCOMISION: TExtendedField;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    cxButton1: TcxButton;
    Tecnicos: TZReadOnlyQuery;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    TecnicosCOD_EMP1: TIntegerField;
    DsTecnico: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1TCOMISION: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxButton4: TcxButton;
    Reporte: TfrxReport;
    FXConsulta: TfrxDBDataset;
    FxConfig: TfrxDBDataset;
    Op1: TRadioGroup;
    Ticket: TfrxReport;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComsionFactura: TFrmComsionFactura;

implementation

{$R *.dfm}

uses Unit2, UInicio, Unit118;

procedure TFrmComsionFactura.cxButton1Click(Sender: TObject);
begin


WITH CONsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.fecha_fac, a.montopago, b.nombres_emp, b.descuento, ((a.montopago * b.descuento) / 100) Tcomision  from master_fact a');
    sql.Add('left join mtempleado b On a.codven = b.cod_emp1');
    sql.Add('where b.cod_emp1 =:op');
    sql.Add('and a.fecha_fac >=:fecha1');
    sql.Add('and a.fecha_fac  <=:fecha2');
    sql.Add('and a.situacion =''IMPRESA''');

    params[0].Value := tecnicoscod_emp1.Value;
    Params[1].Value := inicio.Date;
    Params[2].Value := fechafinal.Date;
    open;
  end;

end;

procedure TFrmComsionFactura.cxButton2Click(Sender: TObject);
begin
if FrmBuscarInstalador = nil then  begin
    FrmBuscarInstalador := tFrmBuscarInstalador.Create(self);
    FrmBuscarInstalador.Edit2.Text := 'COMF';
    FrmBuscarInstalador.showmodal;
end;
end;

procedure TFrmComsionFactura.cxButton4Click(Sender: TObject);
begin
   if op1.ItemIndex = 1 then begin

             reporte.variables['fecha1']:=quotedstr(inicio.Text);
             reporte.variables['Empleado']:=quotedstr(cxDBTextEdit2.Text);
             reporte.variables['fecha2']:=quotedstr(fechafinal.Text);
             reporte.PrepareReport(true);
             reporte.ShowPreparedReport;
   end;

    if op1.ItemIndex = 0 then begin

             Ticket.variables['fecha1']:=quotedstr(inicio.Text);
             Ticket.variables['Empleado']:=quotedstr(cxDBTextEdit2.Text);
             Ticket.variables['fecha2']:=quotedstr(fechafinal.Text);
             Ticket.PrepareReport(true);
             Ticket.print;
   end;

end;

procedure TFrmComsionFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmComsionFactura:= nil;
Action := caFree;
end;

end.
