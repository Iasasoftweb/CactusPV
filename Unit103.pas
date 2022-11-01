unit Unit103;

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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, Data.DB,
  ZAbstractRODataset, ZDataset, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxDBEdit, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar,
  frxClass, frxDBSet, cxCurrencyEdit;

type
  TFrmBalanceBanco = class(TForm)
    Consulta: TZReadOnlyQuery;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    Edit1: TEdit;
    Edit2: TEdit;
    cxButton2: TcxButton;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ConsultaID: TIntegerField;
    ConsultaFECHA: TDateField;
    ConsultaID_CTA: TIntegerField;
    ConsultaENTRADA: TFloatField;
    ConsultaSALIDA: TFloatField;
    ConsultaTIPO_TRANSACION: TIntegerField;
    ConsultaESTADO: TIntegerField;
    ConsultaNO_CTA: TWideStringField;
    ConsultaTRANSACION: TWideStringField;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    ConsultaULTIMO: TFloatField;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Edit3: TEdit;
    Balance: TZReadOnlyQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxButton3: TcxButton;
    Panel1: TPanel;
    inicio: TcxDateEdit;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    Label3: TLabel;
    cxButton4: TcxButton;
    RxData: TfrxDBDataset;
    Imprime: TfrxReport;
    Config: TfrxDBDataset;
    BalanceBALANCE: TExtendedField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBalanceBanco: TFrmBalanceBanco;

implementation

{$R *.dfm}

uses Unit2, Unit102, Unit63, UInicio;

procedure TFrmBalanceBanco.cxButton1Click(Sender: TObject);
begin
if FrmBCtasBancos = nil then
   begin
     FrmBCtasBancos := tFrmBCtasBancos.Create(Self);
     FrmBCtasBancos.Edit2.Text := '2';
     FrmBCtasBancos.showmodal;
   end;


end;

procedure TFrmBalanceBanco.cxButton2Click(Sender: TObject);
begin

with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.no_cta, c.transacion from tb_transaciones a');
    sql.Add('left join tb_bancos b on a.id_cta = b.id');
    sql.Add('left join tb_tipotrans c On a.tipo_transacion = c.id');
    sql.Add('where a.id_cta =:op1');
     sql.Add('ORDER BY a.id');

    params[0].Value := StrToInt(edit3.text);
    open;
   end;

  with balance do
  begin
    close;
    sql.Clear;
    sql.Add('select (sum(a.entrada) - Sum(a.salida)) Balance from tb_transaciones a');
    sql.Add('left join tb_bancos b on a.id_cta = b.id');
    sql.Add('left join tb_tipotrans c On a.tipo_transacion = c.id');
    sql.Add('where a.id_cta =:op1');

    params[0].Value := StrToInt(edit3.text);
    open;

  end;

end;

procedure TFrmBalanceBanco.cxButton3Click(Sender: TObject);
begin
panel1.Visible := true;
end;

procedure TFrmBalanceBanco.cxButton4Click(Sender: TObject);
begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.no_cta, c.transacion from tb_transaciones a');
    sql.Add('left join tb_bancos b on a.id_cta = b.id');
    sql.Add('left join tb_tipotrans c On a.tipo_transacion = c.id');
    sql.Add('where a.id_cta =:op1');
    sql.Add('and A.fecha >=:fecha1');
    sql.Add('and a.fecha <=:fecha2');
    sql.Add('ORDER BY a.id');
    params[0].Value := StrToInt(edit3.text);
    params[1].Value := inicio.Date;
    params[2].Value := fechafinal.Date;
    open;
   end;


   imprime.variables['fecha1']:=quotedstr(inicio.Text);
   imprime.variables['fecha2']:=quotedstr(fechafinal.Text);
   imprime.variables['banco']:=quotedstr(edit1.Text);
   imprime.variables['cta']:=quotedstr(edit2.Text);

             imprime.PrepareReport(true);
             imprime.ShowPreparedReport;

             Panel1.Visible := false;
end;

procedure TFrmBalanceBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FrmBalanceBanco := nil;
    Action := caFree;
end;

procedure TFrmBalanceBanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    panel1.Visible := true;
  end;
end;

end.
