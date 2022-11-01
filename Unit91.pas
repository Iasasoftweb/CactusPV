unit Unit91;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, ZAbstractRODataset, ZDataset;

type
  TFrmConsultaNotaC = class(TForm)
    MC: TZReadOnlyQuery;
    DataSource1: TDataSource;
    DsMC: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1MNCID: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid1DBTableView1MONTO: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACION: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    MCMNCID: TIntegerField;
    MCFECHA: TDateField;
    MCUSUARIOID: TIntegerField;
    MCNO_FACT: TIntegerField;
    MCCLIENTEID: TIntegerField;
    MCESTADO: TIntegerField;
    MCAFECTA_INV: TIntegerField;
    MCAFECTA_CAJA: TIntegerField;
    MCMONTO: TFloatField;
    MCOBSERVACION: TWideMemoField;
    MCCONIDICIONFACT: TWideStringField;
    MCIDTURNO: TIntegerField;
    MCNOTA: TWideStringField;
    MCNOMBRES_EMP: TWideStringField;
    MCNOMBRES: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaNotaC: TFrmConsultaNotaC;

implementation

{$R *.dfm}

uses Unit2, Unit63;

procedure TFrmConsultaNotaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmConsultaNotaC   := nil;
end;

end.
