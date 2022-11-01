unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFrbBusqCliente = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    clientes: TZReadOnlyQuery;
    Dsclientes: TDataSource;
    clientesCODIGO: TIntegerField;
    clientesNOMBRES: TWideStringField;
    clientesDIRECCION: TWideStringField;
    clientesCEDULA: TWideStringField;
    clientesTELEFONO: TWideStringField;
    clientesCELULAR: TWideStringField;
    clientesCOLOR: TWideStringField;
    clientesCONTACTO: TWideStringField;
    clientesRENGLONCNF: TWideStringField;
    clientesTXTCNF: TWideStringField;
    clientesCREDITOLIMITE: TFloatField;
    clientesTIPO: TWideStringField;
    clientesRNC: TWideStringField;
    clientesCONDICION: TWideStringField;
    clientesINICIO: TDateField;
    clientesSUELDO: TFloatField;
    clientesPAGOITB: TWideStringField;
    clientesCREDITO: TWideStringField;
    clientesBALANCE: TFloatField;
    clientesESTADO: TWideStringField;
    clientesMOVIL: TWideStringField;
    clientesCODIGO_T: TWideStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrbBusqCliente: TFrbBusqCliente;

implementation

uses Unit2,tools, Unit8;

{$R *.dfm}

procedure TFrbBusqCliente.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

if clientesestado.Value = 'Activo' then
begin
datos.FbqMaster_Fact.Edit;
datos.FbqMaster_FactNOM_CLIENTE.Value := clientesnombres.Value;
DATOS.FbqMaster_FactCOD_CLIENT.Value := IntToStr(clientescodigo.Value);
close;
end else begin
  MsgError('Este cliente no esta activo'#13+
      	               'Favor consultar con el Administrador');
  close;

end;



end;



procedure TFrbBusqCliente.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_return then
begin
if clientesestado.Value = 'Activo' then
begin
datos.FbqMaster_Fact.Edit;
datos.FbqMaster_FactNOM_CLIENTE.Value := clientesnombres.Value;
DATOS.FbqMaster_FactCOD_CLIENT.Value := IntTOStr(clientescodigo.Value);
frmfacturacion.edit6.text := clientescreditolimite.Text;
frmfacturacion.edit7.text := clientesbalance.Text;

close;
end else begin
  MsgError('Este cliente no esta activo'#13+
      	               'Favor consultar con el Administrador');
  close;

end;
end;
end;

procedure TFrbBusqCliente.Edit1Change(Sender: TObject);
begin
with clientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where nombres like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;

end;

procedure TFrbBusqCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =vk_escape then
    begin
      close;
    end;
end;

procedure TFrbBusqCliente.FormShow(Sender: TObject);
begin
clientes.Open;
clientes.Refresh;
edit1.SetFocus;
end;

end.
