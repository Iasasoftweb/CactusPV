unit uDetalleMesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfDetalleMesas = class(TForm)
    DSdetalle: TDataSource;
    Zdetalle: TZReadOnlyQuery;
    ZdetalleNO_FACT: TIntegerField;
    ZdetalleNO_FACT1: TWideStringField;
    ZdetalleMASTERID: TIntegerField;
    ZdetalleCANTIDAD: TFloatField;
    ZdetallePRECIO: TFloatField;
    ZdetalleIMPUESTO: TFloatField;
    ZdetalleITBS: TFloatField;
    ZdetalleITBIS2: TFloatField;
    ZdetalleTOTAL: TFloatField;
    ZdetalleCOD_ART: TWideStringField;
    ZdetalleUNID: TWideStringField;
    ZdetalleCOMBO: TWideStringField;
    ZdetalleARTICULOID: TIntegerField;
    ZdetalleANCHO: TFloatField;
    ZdetalleALTO: TFloatField;
    ZdetalleTITULOPRN: TWideStringField;
    ZdetalleUNIDADID: TIntegerField;
    ZdetalleITBS_ART: TWideStringField;
    ZdetalleEX: TWideStringField;
    ZdetalleIDALMACEN: TIntegerField;
    ZdetalleBARRA: TWideStringField;
    ZdetalleIDTECNICO: TIntegerField;
    ZdetalleARTICULO: TWideStringField;
    ZdetalleUNIDAD: TWideStringField;
    ZdetalleITBIS: TWideStringField;
    ZdetalleOP: TWideStringField;
    ZdetalleLINEA: TIntegerField;
    ZdetalleEXIST1: TSingleField;
    ZdetalleLEY: TFloatField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    ZdetalleDESC: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetalleMesas: TfDetalleMesas;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TfDetalleMesas.cxButton1Click(Sender: TObject);
begin
  Zdetalle.Close;
  close;
end;

procedure TfDetalleMesas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
   begin
     close;
   end;

end;

end.
