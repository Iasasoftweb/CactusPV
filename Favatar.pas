unit Favatar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, Vcl.ExtCtrls, Vcl.DBCGrids;

type
  TFGetAvatar = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    Panel1: TPanel;
    Qavatar: TZReadOnlyQuery;
    DataSource1: TDataSource;
    DBImage1: TDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGetAvatar: TFGetAvatar;

implementation

{$R *.dfm}

uses Unit2;

end.
