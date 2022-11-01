unit Unit124;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, ZAbstractRODataset, ZDataset;

type
  TFrmSeries = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    numero: TZReadOnlyQuery;
    Edit3: TEdit;
    DsConsulta: TDataSource;
    numeroGEN_ID: TLargeintField;
    consulta: TZReadOnlyQuery;
    consultaCOD_SERIES: TIntegerField;
    consultaCOD_ARTI: TIntegerField;
    consultaSERIES: TWideStringField;
    consultaESTADO: TIntegerField;
    consultaNO_FACT: TIntegerField;
    consultaIDDETALLE: TIntegerField;
    cxGrid1DBTableView1COD_SERIES: TcxGridDBColumn;
    cxGrid1DBTableView1SERIES: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeries: TFrmSeries;

implementation

{$R *.dfm}

uses Unit2, Unit63, UInicio;

procedure TFrmSeries.cxButton1Click(Sender: TObject);
begin

if cxTextEdit1.Text <> '' then begin

with numero do
  begin
      close;
     sql.Clear;
     sql.Add('select gen_id(GEN_MAN_SERIES_ID, 1) from RDB$DATABASE');
     open;
  end;

     datos.Series.Open;
     datos.Series.Append;
     datos.SeriesCOD_SERIES.Value := numeroGEN_ID.Value;

     datos.SeriesCOD_ARTI.Value := StrToInt(edit1.Text);

     datos.SeriesSERIES.Value := cxTextEdit1.Text;
     datos.SeriesESTADO.Value := 1;
     datos.SeriesNO_FACT.Value := StrToInt(edit3.Text);

    datos.series.post;
    cxTextEdit1.Clear;

   // consulta.Refresh;

end;


  end;


procedure TFrmSeries.cxButton2Click(Sender: TObject);
begin
if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]> 0 then
    begin
        datos.Series.ApplyUpdates;
        datos.Data.Commit;
        close;
    end;
end;

procedure TFrmSeries.cxButton3Click(Sender: TObject);
begin
datos.Series.CancelUpdates;
datos.Data.Rollback;
close;
end;

procedure TFrmSeries.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmSeries := nil;
Action := caFree;
end;

procedure TFrmSeries.FormShow(Sender: TObject);
begin
consulta.Open;
end;

end.
