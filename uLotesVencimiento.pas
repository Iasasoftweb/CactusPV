unit uLotesVencimiento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfLoteVencimiento = class(TForm)
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
    Panel1: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLoteVencimiento: TfLoteVencimiento;

implementation

uses
  Unit2, Tools;

{$R *.dfm}

procedure TfLoteVencimiento.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfLoteVencimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
fLoteVencimiento := nil;
end;

end.
