unit PymeFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, DBCtrls, StdCtrls, Menus, Buttons, ImgList, XPMan,
  dxDockControl, dxDockPanel, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls, System.ImageList;

type
  TFrmInicio = class(TForm)
    Image2: TImage;
    XPManifest1: TXPManifest;
    ImageList1: TImageList;
    dxDockPanel1: TdxDockPanel;
    dxFloatDockSite1: TdxFloatDockSite;
    MainMenu1: TMainMenu;
    Clientes1: TMenuItem;
    Mantenimientos1: TMenuItem;
    ReportedeClientes1: TMenuItem;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
//   procedure DataError(Sender: TObject; E: Exception);
//    procedure CargaConfigu;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInicio: TFrmInicio;

implementation

uses Unit1,tools, Unit3;

{$R *.dfm}

procedure TFrmInicio.FormShow(Sender: TObject);
begin

  // TopMenu := menu.Top;
//   nombreapp.Caption := ReadString_Ini(IniFile, 'SISTEMA', 'Nombre','');
     // version.Caption :=  readstring_ini(iniFile, 'SISTEMA', 'Version','');
  // Version.Caption := 'Ver. '+GetAppInfo('FileVersion');
  // BarraEstado.Panels[3].Text := Usuario;
  // CargaConfigu;


//edit1.SetFocus;
//edit1.Enabled := true;
//edit2.Enabled := true;

//ibqempleado.Open;
end;

end.
