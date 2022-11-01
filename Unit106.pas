unit Unit106;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ZAbstractRODataset, ZDataset;

type
  TFrmConsultasFxPagar = class(TForm)
    DsMaster_Creditos: TDataSource;
    master_credito: TZReadOnlyQuery;
    master_creditoNO_FACT: TIntegerField;
    master_creditoFECHA_FAC: TDateField;
    master_creditoFECHAVENCIMIENTO: TDateField;
    master_creditoCLIENTENOMBRE: TWideStringField;
    master_creditoMONTO: TFloatField;
    master_creditoPENDIENTE: TFloatField;
    master_creditoNOMBRES_EMP: TWideStringField;
    master_creditoTELEFONO: TWideStringField;
    master_creditoDIAS: TIntegerField;
    master_creditoDIASATRASOS: TIntegerField;
    master_creditoESTADOCUENTA: TWideStringField;
    master_creditoCLIENTEID: TIntegerField;
    master_creditoABONO: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVENCIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1MONTO: TcxGridDBColumn;
    cxGrid1DBTableView1PENDIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1DIAS: TcxGridDBColumn;
    cxGrid1DBTableView1DIASATRASOS: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADOCUENTA: TcxGridDBColumn;
    cxGrid1DBTableView1ABONO: TcxGridDBColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  codigo2 :  Integer;
    { Public declarations }
  end;

var
  FrmConsultasFxPagar: TFrmConsultasFxPagar;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmConsultasFxPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmConsultasFxPagar := nil;
end;

procedure TFrmConsultasFxPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
     begin
        master_credito.Close;
       close;
     end;
end;

procedure TFrmConsultasFxPagar.FormShow(Sender: TObject);
begin
with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, A.fecha_fac, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
      end;
end;

end.
