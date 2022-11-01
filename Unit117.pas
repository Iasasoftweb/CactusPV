unit Unit117;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, dxSkinTheBezier, cHash,
  Vcl.Buttons;

type
  TFAutorizacion = class(TForm)
    pnlFondo: TPanel;
    pnlBarTop: TPanel;
    Label5: TLabel;
    Image2: TImage;
    Label52: TLabel;
    pnlClave: TPanel;
    EClaveAnular: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    pnlBtnSi: TPanel;
    btnSi: TSpeedButton;
    pnlNO: TPanel;
    btnNo: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnSiClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure EClaveAnularKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private

     Veces: byte;
    Cierro: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAutorizacion: TFAutorizacion;

implementation

{$R *.dfm}

uses Unit63, tools, UInicio;



procedure TFAutorizacion.btnNoClick(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

procedure TFAutorizacion.btnSiClick(Sender: TObject);
VAR
CPASS : STRING;
begin
  CPASS := MD5DigestToHex(CalcMD5(trim(EClaveAnular.Text)));


      if (cpass <> ClaveAnular) or (EClaveAnular.Text ='') then
   	begin
			EClaveAnular.Text := '';
		      //  EClaveAnular.SetFocus;
      	raise Exception.Create('Clave incorrecta!!!')
      end
   else begin
       // ShowMessage('');
   	ModalResult := mrOk;
   end;

end;

procedure TFAutorizacion.cxButton1Click(Sender: TObject);
VAR
CPASS : STRING;
begin
//  CPASS := MD5DigestToHex(CalcMD5(trim(EClaveAnular.Text)));
//
//
//      if (cpass <> ClaveAnular) or (EClaveAnular.Text ='') then
//   	begin
//			EClaveAnular.Text := '';
//		    //	EClaveAnular.SetFocus;
//      	raise Exception.Create('Clave incorrecta!!!')
//      end
//   else
//   	ModalResult := mrOk;
end;

procedure TFAutorizacion.EClaveAnularKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
   // btnSiClick(self);
  end;
end;

procedure TFAutorizacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  	begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  	end;
end;

procedure TFAutorizacion.FormShow(Sender: TObject);
begin

ModalResult := mrOk;
 EClaveAnular.Text := '';
   EClaveAnular.SetFocus;
end;

end.

