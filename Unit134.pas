unit Unit134;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCGrids, Data.DB, ZAbstractRODataset, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxLabel, cxDBLabel;

type
  TFrmPedidosCocina = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DsCocina: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    SqlCocina: TZReadOnlyQuery;
    SqlCocinaID: TIntegerField;
    SqlCocinaFECHA: TDateField;
    SqlCocinaNO_ORDEN: TIntegerField;
    SqlCocinaHORA: TTimeField;
    SqlCocinaCLIENTE: TWideStringField;
    SqlCocinaORDEN: TWideMemoField;
    SqlCocinaTIEMPO: TIntegerField;
    SqlCocinaTIEMPO_RESTANTA: TTimeField;
    SqlCocinaESTADO: TIntegerField;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidosCocina: TFrmPedidosCocina;

implementation

{$R *.dfm}

uses Unit2, Pizeria;

procedure TFrmPedidosCocina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmPedidosCocina := nil;
Action := caFree;
end;

procedure TFrmPedidosCocina.FormShow(Sender: TObject);
begin
SqlCocina.Close;
SqlCocina.Open;
end;

end.
