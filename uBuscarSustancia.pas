unit uBuscarSustancia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset,
  ZDataset;

type
  TfBuscarSustancia = class(TForm)
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
    Panel1: TPanel;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    Cxgri1: TcxGrid;
    Cxgri1DBTableView1: TcxGridDBTableView;
    Cxgri1Level1: TcxGridLevel;
    qConsulta1: TZReadOnlyQuery;
    qConsulta1ID: TIntegerField;
    qConsulta1SUSTANCIA: TWideStringField;
    dsCons: TDataSource;
    Cxgri1DBTableView1SUSTANCIA: TcxGridDBColumn;
    Edit1: TEdit;
    procedure btnsalirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cxgri1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscarSustancia: TfBuscarSustancia;

implementation

uses
  Unit2, uBuscarFiltros;

{$R *.dfm}

procedure TfBuscarSustancia.btnsalirClick(Sender: TObject);
begin
Close;
end;

procedure TfBuscarSustancia.Cxgri1DBTableView1DblClick(Sender: TObject);
begin
if edit1.Text = '1' then begin
  datos.MantArt.Edit;
  datos.MantArtSUSTANCIA.Value := qConsulta1ID.Value;
  datos.MantArtSUST.Value      := qConsulta1SUSTANCIA.Value;
  close;
end;

if edit1.Text = '2' then
  begin
      FbuscarFiltro.edtSustancia.Text :=   qConsulta1SUSTANCIA.Value;
      close;
  end;
end;

procedure TfBuscarSustancia.edtBuscarChange(Sender: TObject);
begin
with qconsulta1 do
    begin
      close;
      sql.Clear;
      sql.Add('select a.* from PRODUCTOS_SUSTANCIA a');
      sql.Add('where a.sustancia like '+#39+'%'+edtbuscar.Text+'%'+#39);
      open;
    end;
end;

procedure TfBuscarSustancia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fBuscarSustancia := nil;
action := caFree;
end;

procedure TfBuscarSustancia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_escape then
   begin
     close;
   end;
end;

end.
