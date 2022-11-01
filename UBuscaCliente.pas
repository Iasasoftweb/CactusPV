unit UBuscaCliente;

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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxContainer, cxGroupBox, cxRadioGroup, dxSkinSharp,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmBuscaCliente = class(TForm)
    Edit1: TEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesCODIGO: TIntegerField;
    IbqClientesDIRECCION: TWideStringField;
    IbqClientesCEDULA: TWideStringField;
    IbqClientesTELEFONO: TWideStringField;
    IbqClientesCELULAR: TWideStringField;
    IbqClientesCOLOR: TWideStringField;
    IbqClientesCONTACTO: TWideStringField;
    IbqClientesRENGLONCNF: TWideStringField;
    IbqClientesTXTCNF: TWideStringField;
    IbqClientesCREDITOLIMITE: TFloatField;
    IbqClientesTIPO: TWideStringField;
    IbqClientesRNC: TWideStringField;
    IbqClientesCONDICION: TWideStringField;
    IbqClientesINICIO: TDateField;
    IbqClientesSUELDO: TFloatField;
    IbqClientesPAGOITB: TWideStringField;
    IbqClientesCREDITO: TWideStringField;
    IbqClientesBALANCE: TFloatField;
    IbqClientesESTADO: TWideStringField;
    IbqClientesMOVIL: TWideStringField;
    IbqClientesCOMISION: TFloatField;
    IbqClientesNUMEROPIN: TWideStringField;
    IbqClientesTELEFONO3: TWideStringField;
    IbqClientesEMAIL: TWideStringField;
    IbqClientesRUTA_ID: TIntegerField;
    IbqClientesREGIONID: TIntegerField;
    IbqClientesPROVINCIAID: TIntegerField;
    IbqClientesMUNICIPIOID: TIntegerField;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    IbqClientesNOMBRES: TWideStringField;
    DsqCliente: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    Opb: TcxRadioGroup;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2Change(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscaCliente: TFrmBuscaCliente;

implementation

{$R *.dfm}

uses Unit2, UActualizaDiasCredito, Unit78;

procedure TFrmBuscaCliente.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if edit1.Text ='ACTUALIZADIAS' then
     begin

       FrmActualizaDiasCredito.Edit1.Text := IbqClientesNOMBRES.Value;
       FrmActualizaDiasCredito.Edit2.Text := IbqClientesCODIGO.text;

     end;


     if edit1.Text ='CONSULTA1' then
     begin

       FrmRCompraXClientes.Edit1.Text := IbqClientesNOMBRES.Value;
       FrmRCompraXClientes.Edit2.Text := IbqClientesCODIGO.text;

     end;


     Close;
end;

procedure TFrmBuscaCliente.Edit2Change(Sender: TObject);
begin


if opb.ItemIndex = 0 then
 begin
with ibqclientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where nombres like '+#39+'%'+edit2.Text+'%'+#39);
    open;
  end;
 end;

if opb.ItemIndex = 1 then
 begin
with ibqclientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where cedula like '+#39+'%'+edit2.Text+'%'+#39);
    open;
  end;
 end;

end;

procedure TFrmBuscaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmBuscaCliente := nil;
Action := caFree;
end;

procedure TFrmBuscaCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

end.
