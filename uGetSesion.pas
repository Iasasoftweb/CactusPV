unit uGetSesion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, Data.DB, ZAbstractRODataset, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFGetSession = class(TForm)
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
    QConsulta: TZReadOnlyQuery;
    QConsultaID: TIntegerField;
    QConsultaNOMBRE_SESSION: TWideStringField;
    QConsultaESTADO: TWideStringField;
    QConsultaFACTURACION: TWideStringField;
    QConsultaCOBRAR: TWideStringField;
    QConsultaREPORTES: TWideStringField;
    QConsultaCONSULTAS: TWideStringField;
    DsConsulta: TDataSource;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Edit1: TEdit;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGetSession: TFGetSession;

implementation

uses
  Unit2, uPerfilUsuario;

{$R *.dfm}

procedure TFGetSession.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFGetSession.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
if edit1.Text = 'USUARIO' then
  BEGIN
     datos.ZUsaurios.Edit;
     datos.ZUsauriosIDSESSION.Value := QConsultaID.Value;
     datos.ZUsauriosNOMBRE_SESSION.Value := QConsultaNOMBRE_SESSION.Value;
     close;
  END;

if edit1.Text = 'PERFIL' then
  BEGIN
     fPerfirUsuario.edtNombrePerfil.Text := QConsultaNOMBRE_SESSION.Value;
     fPerfirUsuario.edtCod.Text := QConsultaID.text;
     close;
  END;


end;

procedure TFGetSession.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FGetSession := nil;
end;

procedure TFGetSession.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_ESCAPE then
   begin
     close;
   end;
end;

end.
