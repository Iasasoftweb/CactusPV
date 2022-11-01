unit uVentanaAviso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, acPNG,
  Vcl.StdCtrls;

type
  TfMensages = class(TForm)
    pnlCentral: TPanel;
    shpFondo: TShape;
    Panel1: TPanel;
    lblTitulo: TLabel;
    img_Icon: TImage;
    lblAtencion: TLabel;
    lblMensage: TLabel;
    pnlBtnSi: TPanel;
    btnSi: TSpeedButton;
    pnlNO: TPanel;
    btnNo: TSpeedButton;
    procedure btnSiClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    sAtencion           : String;
    sTitulo             : string;
    sMSN                : string;
    sRutaIcon           : string;
    sTipo               : string;
    bResouestaMGN : Boolean;
  end;

var
  fMensages: TfMensages;

implementation

{$R *.dfm}

procedure TfMensages.btnSiClick(Sender: TObject);
begin
bResouestaMGN := true;
close;
end;

procedure TfMensages.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfMensages.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =  VK_RETURN then
   begin
    btnSiClick(self);
   end;

  if key = VK_ESCAPE then
    begin
      btnNoClick(self);
    end;

end;

procedure TfMensages.FormShow(Sender: TObject);
begin
    bResouestaMGN := false;

    lblAtencion.Caption         := sAtencion;
    lblTitulo.Caption           := sTitulo;
    lblMensage.Caption          := sMsn;

    img_Icon.Picture.LoadFromFile(sRutaIcon);


    if sTipo = 'OK' then
      begin
        pnlNO.Visible := false;
        btnSi.caption := 'OK';

      end;

      if sTipo = 'DELETE' then
      begin
        pnlNO.Visible := TRUE;
        btnNo.caption := 'CANCELAR';
        btnSi.Caption := 'ACEPTAR';

      end;

      if sTipo = 'CONFIRMAR' then
      begin
        pnlNO.Visible := TRUE;
        btnNo.caption := 'No';
        btnSi.Caption := 'Si';

      end;



end;

procedure TfMensages.btnNoClick(Sender: TObject);
begin
  bResouestaMGN := false;
  close;
end;

end.
