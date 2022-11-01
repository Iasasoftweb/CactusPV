unit uReporteConsulidadoCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset;

type
  TFrmReporteConsolidadoCredito = class(TForm)
    QReporte: TZReadOnlyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReporteConsolidadoCredito: TFrmReporteConsolidadoCredito;

implementation

{$R *.dfm}

uses Unit2;

end.
