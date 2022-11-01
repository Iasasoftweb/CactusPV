unit uMainScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Router4D, Vcl.Dialogs, Vcl.ExtCtrls, sPanel,
  acPNG, Vcl.Buttons, sSpeedButton, Vcl.StdCtrls, AdvShape;

type
  TFMainScreen = class(TForm)
    pnlMain: TsPanel;
    pnlMenu: TPanel;
    pnlFull: TPanel;
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    pnlLogo: TPanel;
    Image1: TImage;
    pnlMBotonera: TPanel;
    spFactura: TsSpeedButton;
    spArticulos: TsSpeedButton;
    spMInventario: TsSpeedButton;
    spAjusteInventario: TsSpeedButton;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    lblUserName: TLabel;
    Label3: TLabel;
    Image19: TImage;
    spCompras: TsSpeedButton;
    spControlCaja: TsSpeedButton;
    spEstadoCuenta: TsSpeedButton;
    spRetiroEfectivo: TsSpeedButton;
    Image18: TImage;
    AdvShape1: TAdvShape;
    procedure FormCreate(Sender: TObject);
  private
         Procedure AplicarEstilo;
    { Private declarations }


  public
    { Public declarations }
  end;

var
  FMainScreen: TFMainScreen;

implementation

uses
  uCentral, routers, tools, Unit1;

{$R *.dfm}

procedure TFMainScreen.AplicarEstilo;
begin
         pnlTop.Color := COLOR_BACKGROUND_TOP;
         self.font.Name := FONT_NAME;
         pnlLogo.Color  := COLOR_BACKGROUND_MENU;
         pnlMenu.Color  := COLOR_BACKGROUND_MENU;
         pnlMBotonera.Color  := COLOR_BACKGROUND_MENU;
        // pnlMicon.Color  := COLOR_BACKGROUND_MENU;
         //pnlDivide.Color := COLOR_BACKGROUND_DESTAK;

         spFactura.Font.Color := COLOR_FONT_MENU;
         spFactura.Font.Size  := FONT_H8;
         spFactura.font.name  := FONT_NAME;

         spArticulos.Font.Color := COLOR_FONT_MENU;
         spArticulos.Font.Size  := FONT_H8;
         spArticulos.font.name  := FONT_NAME;

         spMInventario.Font.Color   := COLOR_FONT_MENU;
         spMInventario.Font.Size  := FONT_H8;
         spMInventario.font.name  := FONT_NAME;

         spAjusteInventario.Font.Color   := COLOR_FONT_MENU;
         spAjusteInventario.Font.Size  := FONT_H8;
         spAjusteInventario.font.name  := FONT_NAME;

         spCompras.Font.Color   := COLOR_FONT_MENU;
         spCompras.Font.Size  := FONT_H8;
         spCompras.font.name  := FONT_NAME;

         spControlCaja.Font.Color   := COLOR_FONT_MENU;
         spControlCaja.Font.Size  := FONT_H8;
         spControlCaja.font.name  := FONT_NAME;

         spEstadoCuenta.Font.Color   := COLOR_FONT_MENU;
         spEstadoCuenta.Font.Size  := FONT_H8;
         spEstadoCuenta.font.name  := FONT_NAME;

         spRetiroEfectivo.Font.Color   := COLOR_FONT_MENU;
         spRetiroEfectivo.Font.Size  := FONT_H8;
         spRetiroEfectivo.font.name  := FONT_NAME;






end;

procedure TFMainScreen.FormCreate(Sender: TObject);
begin
  AplicarEstilo;
  if AsignaUsuario > 0 then
    begin
             TRouter4D.Switch.Router('FMainScreen', TfCentral);
              TRouter4D.Render<TfCentral>.SetElement(pnlPrincipal, pnlMain);

    end else begin

      TRouter4D.Switch.Router('FMainScreen', TfrmLogin);
              TRouter4D.Render<TfrmLogin>.SetElement(pnlPrincipal, pnlMain);


             end;


end;

end.
