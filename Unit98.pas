unit Unit98;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ZAbstractRODataset, ZDataset, Vcl.StdCtrls,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier;

type
  TFrmBuscarMoneda = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Qmoneda: TZReadOnlyQuery;
    DsMoneda: TDataSource;
    QmonedaID: TIntegerField;
    QmonedaMONEDA: TWideStringField;
    QmonedaSIGNO: TWideStringField;
    cxGrid1DBTableView1MONEDA: TcxGridDBColumn;
    cxGrid1DBTableView1SIGNO: TcxGridDBColumn;
    Edit1: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscarMoneda: TFrmBuscarMoneda;

implementation

{$R *.dfm}

uses Unit2, Unit5;

procedure TFrmBuscarMoneda.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
if edit1.text = '1' then begin
    datos.MantArt.Edit;
    datos.MantArtIDMONEDA.Value := QmonedaID.Value;
//    datos.MantArtSIGNO.Value    := QmonedaSIGNO.Value;
    close;
end;

if edit1.text = '2' then begin
    datos.zbancos.Edit;
    datos.ZbancosMONEDA.Value := QmonedaID.Value;;
 //   datos.ZbancosSIGNO.Value  := QmonedaSIGNO.Value;
    close;
end;

end;

procedure TFrmBuscarMoneda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmbuscarmoneda := nil;
Action := caFree;
end;

procedure TFrmBuscarMoneda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_escape then
  begin
    close;

  end;

end;

procedure TFrmBuscarMoneda.FormShow(Sender: TObject);
begin
Qmoneda.Close;
Qmoneda.open;

end;

end.
