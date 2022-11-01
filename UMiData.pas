unit UMiData;

interface

uses
  System.SysUtils,  Controls, Forms, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client;

type
  TMiData = class(TDataModule)
    FData: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MiData: TMiData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Tools;

{$R *.dfm}

end.
