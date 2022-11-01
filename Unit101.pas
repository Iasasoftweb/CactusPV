unit Unit101;

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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmBtransaciones = class(TForm)
    Consulta: TZReadOnlyQuery;
    ConsultaID: TIntegerField;
    ConsultaTRANSACION: TWideStringField;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1TRANSACION: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBtransaciones: TFrmBtransaciones;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmBtransaciones.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  datos.ZTBanco.Edit;
  datos.ZTBancoID_TIPOTRANS.Value := ConsultaID.Value;
  datos.ZTBancoTRANSACION.Value   := ConsultaTRANSACION.Value;
  Consulta.Close;
  close;

end;

procedure TFrmBtransaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FrmBtransaciones := nil;
   Action           := caFree;
end;

procedure TFrmBtransaciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
   begin
     Consulta.Close;
     close;
   end;
end;

procedure TFrmBtransaciones.FormShow(Sender: TObject);
begin
   Consulta.Open;
end;

end.
