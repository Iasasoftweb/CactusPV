unit udataprint;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF;

type
  TDataPrint = class(TDataModule)
    PrnCorte01_ticket: TfrxReport;
    detalle: TfrxDBDataset;
    master: TfrxDBDataset;
    config: TfrxDBDataset;
    FDqcortes: TfrxDBDataset;
    PrnCorte01_Normal: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    FdCortes2: TfrxDBDataset;
    PrnCorte02_Normal: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataPrint: TDataPrint;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit137;

{$R *.dfm}

end.
