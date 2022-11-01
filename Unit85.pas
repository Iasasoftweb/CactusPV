unit Unit85;

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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  Data.DB, ZAbstractRODataset, ZDataset, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmPagosRealizados = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cod: TcxTextEdit;
    cxButton2: TcxButton;
    caj: TcxTextEdit;
    Label23: TLabel;
    Label22: TLabel;
    cxButton1: TcxButton;
    DsqCliente: TDataSource;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesNOMBRES: TWideStringField;
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
    OpBuscarCLiente: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Edit1: TEdit;
    Opb: TcxRadioGroup;
    Edit4: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagosRealizados: TFrmPagosRealizados;

implementation

{$R *.dfm}

uses Unit2, Tools, Unit63;

procedure TFrmPagosRealizados.cxButton2Click(Sender: TObject);
begin
ibqclientes.Close;
ibqclientes.Open;
Opbuscarcliente.Visible := true;
edit1.SetFocus;
end;

procedure TFrmPagosRealizados.Edit1Change(Sender: TObject);
begin
if opb.ItemIndex = 0 then
 begin
with ibqclientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where nombres like '+#39+'%'+edit1.Text+'%'+#39);
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
    sql.Add('where numeropin like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
 end;

end;

end.
