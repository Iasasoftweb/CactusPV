unit Unit115;

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
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmConduceAdmin = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Op1: TcxGroupBox;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConduceAdmin: TFrmConduceAdmin;

implementation

{$R *.dfm}

uses Unit63, Tools, Unit2, Unit113;

procedure TFrmConduceAdmin.cxButton1Click(Sender: TObject);
begin
with FrmConduce.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_CONDUCEM_ID, 1) from RDB$DATABASE');
     open;
  end;


  datos.conducem.open;
  datos.ConduceM.Append;
  datos.ConduceMID.Value :=  FrmConduce.numeroGEN_ID.Value;
  datos.ConduceMIDCONDUCE.Value :=FrmConduce.numeroGEN_ID.Value;
  datos.ConduceMFECHA.Value := now();
  datos.ConduceMHORA.Value  := time();

  FrmConduce.GP1.Enabled := true;
  FrmConduce.gp2.Enabled := true;
  FrmConduce.ShowModal;
end;

end.
