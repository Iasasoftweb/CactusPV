unit UActualizaCosto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons;

type
  TFActualizaCosto = class(TForm)
    QActualiza: TZReadOnlyQuery;
    cxButton1: TcxButton;
    Label1: TLabel;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FActualizaCosto: TFActualizaCosto;

implementation

{$R *.dfm}

uses Unit2;

procedure TFActualizaCosto.cxButton1Click(Sender: TObject);
var
  x : double;
begin

with datos.MantArt do
   begin
       open;
       first;
       x := 0.00;
       while not eof do
       begin
            if datos.MantArtITBIS.Value = 'Si' then begin
                    edit;
                    datos.mantartCOSTO_DOLLARS.Value  := datos.MantArtCOSTO.Value;
                    datos.MantArtCOSTO.Value          := datos.MantArtCOSTO.Value / 1.18;
                    x := datos.mantartCOSTO_DOLLARS.Value - datos.MantArtCOSTO.Value;
                    datos.MantArtTAZA_COMPRA.Value := Round((x * 100)/datos.MantArtCOSTO.Value);

            end;
             label1.Caption  := datos.MantArtARTICULO.Value;
            next;
       end;
   end;
    datos.MantArt.ApplyUpdates;
    datos.data.Commit;
   ShowMessage(' Proceso terminado');

end;

end.
