unit Uimpuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, tools;

type
  TfImpuestos = class(TForm)
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpuestos: TfImpuestos;

implementation

{$R *.dfm}

procedure TfImpuestos.FormShow(Sender: TObject);
begin
Panel1.Color := COLOR_BACKGROUND_TOP;
Panel1.Font.Color := FONT_COLOR;
end;

end.
