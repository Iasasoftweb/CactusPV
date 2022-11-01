unit UbuscarClasificacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, Data.DB, ZAbstractRODataset, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfBuscarClasificacion = class(TForm)
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    dsCons: TDataSource;
    qConsulta1: TZReadOnlyQuery;
    qConsulta1ID: TIntegerField;
    qConsulta1CLASIFICACION: TWideStringField;
    Panel1: TPanel;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    Cxgri1: TcxGrid;
    Cxgri1DBTableView1: TcxGridDBTableView;
    Cxgri1DBTableView1SUSTANCIA: TcxGridDBColumn;
    Cxgri1Level1: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnsalirClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure Cxgri1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscarClasificacion: TfBuscarClasificacion;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TfBuscarClasificacion.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfBuscarClasificacion.Cxgri1DBTableView1DblClick(Sender: TObject);
begin
datos.MantArt.Edit;
datos.MantArtCLASIFICACION.Value := qConsulta1ID.Value;
datos.MantArtCLASI.Value         := qConsulta1CLASIFICACION.Value;
close;
end;

procedure TfBuscarClasificacion.edtBuscarChange(Sender: TObject);
begin
with qconsulta1 do
    begin
      close;
      sql.Clear;
      sql.Add('select a.* from PRODUCTOS_CLASIFICACION a');
      sql.Add('where a.clasificacion like '+#39+'%'+edtbuscar.Text+'%'+#39);
      open;
    end;
end;

procedure TfBuscarClasificacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fBuscarClasificacion := nil;
action := caFree;
end;

procedure TfBuscarClasificacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    Close;
  end;
end;

end.
