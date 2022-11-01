unit uCentral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Router4d.Interfaces, Vcl.ExtCtrls, Router4d, tools,
  dxGDIPlusClasses;

type
  TfCentral = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
  private
    { Private declarations }
  public
  function Render : TForm;
  procedure UnRender;
    { Public declarations }
  end;

var
  fCentral: TfCentral;

implementation

{$R *.dfm}

{ TfCentral }

function TfCentral.Render: TForm;
begin
  Result := Self;
  Panel1.Color := COLOR_BACKGROUND;
end;

procedure TfCentral.UnRender;
begin

end;

end.
