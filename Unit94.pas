unit Unit94;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset, ZDataset;

type
  TDataUtil = class(TDataModule)
    QUpBalanceCredito: TZReadOnlyQuery;
    QBalanceCreditoCliente: TZReadOnlyQuery;
    QBalanceCreditoClienteBALANCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataUtil: TDataUtil;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit2;

{$R *.dfm}

end.
