unit UPagoSolidaridad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  dxGDIPlusClasses, cxImage, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFSolidaridadPago = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    BTprocesar: TcxButton;
    Edit4: TEdit;
    img1: TcxImage;
    img2: TcxImage;
    img3: TcxImage;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BTprocesarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure actulizasolidaridad;
    { Public declarations }
  end;

var
  FSolidaridadPago: TFSolidaridadPago;

implementation

{$R *.dfm}

uses Unit2, Unit59, tools;

procedure TFSolidaridadPago.actulizasolidaridad;
begin

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_MSOLIDARIDAD_ID, 1) from RDB$DATABASE');
     open;
  end;

  datos.Zsolidaridad.Open;
  datos.zsolidaridad.Append;
  datos.ZsolidaridadID.Value            := numeroGEN_ID.Value;
  datos.ZsolidaridadFECHA.Value         := Now();
  datos.ZsolidaridadIDFACTURA.Value     := datos.FbqMaster_FactNO_FACT.Value;
  datos.ZsolidaridadCEDULA.Value        := edit1.Text;
  datos.ZsolidaridadNBAUCHE.Value       := edit2.Text;
  datos.ZsolidaridadTARJETA.Value       := edit3.Text;
  datos.ZsolidaridadMFACTURA.Value      := datos.FbqMaster_FactMONTOPAGO.Value;
  datos.ZsolidaridadMITBS.Value         := datos.FbqMaster_FactPOGXITBS.Value;
  datos.ZsolidaridadESTADO.Value        := 1;
  datos.ZsolidaridadIDTURNO.Value       := AsignaTurno;
  datos.Zsolidaridad.ApplyUpdates;
  datos.data.Commit;

   FSolidaridadPago.Edit1.Clear;
   FSolidaridadPago.Edit2.Clear;
   FSolidaridadPago.Edit3.Clear;
end;

procedure TFSolidaridadPago.BTprocesarClick(Sender: TObject);
var
 suma, itbs, descc : Currency;
begin

datos.FbqMaster_Fact.Edit;
datos.FbqMaster_FactNO_AUTORIZA_NCF.Value := 1;
datos.FbqMaster_FactDIRECCION.Value := 'SOLIDARIDAD';
FrmNFact_normal.pnlEstado.Color := clTeal;
FrmNFact_normal.pnlEstado.Caption := 'Factura Solidaridad';
FrmNFact_normal.pnlEstado.Font.Color := clWhite;
//FrmNFact_normal.LbModo.Font.Color := clWhite;
//FrmNFact_normal.lbRotulo.Font.Color := clWhite;
//FrmNFact_normal.LbModo.Caption := 'Modo Solidaridad';
close;

end;

procedure TFSolidaridadPago.Edit1Exit(Sender: TObject);
begin
    img2.Visible := true;
end;

procedure TFSolidaridadPago.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    edit2.SetFocus;
  end;
end;

procedure TFSolidaridadPago.Edit2Exit(Sender: TObject);
begin
    img3.Visible := true;

end;

procedure TFSolidaridadPago.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    BTprocesar.SetFocus;
  end;
end;

procedure TFSolidaridadPago.Edit3Exit(Sender: TObject);
begin


    img1.Visible := true;
// SHOWMESSAGE(''+ IntTOStr(StrLen(PChar(Edit3.Text))));
end;

procedure TFSolidaridadPago.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    edit1.SetFocus;
  end;
end;

procedure TFSolidaridadPago.FormShow(Sender: TObject);
begin
edit3.SetFocus;

img1.Visible := false;
img2.Visible := false;
img3.Visible := false;

end;

end.
