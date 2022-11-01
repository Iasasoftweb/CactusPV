unit UBuscarImpuesto;

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
  TFbuscarImpuesto = class(TForm)
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
    qConsulta1DESCRIPCION: TWideStringField;
    qConsulta1ABREVIADO: TWideStringField;
    qConsulta1IMP: TExtendedField;
    qConsulta1ESTADO: TWideStringField;
    Panel1: TPanel;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    Cxgri1: TcxGrid;
    Cxgri1DBTableView1: TcxGridDBTableView;
    Cxgri1Level1: TcxGridLevel;
    Cxgri1DBTableView1DESCRIPCION: TcxGridDBColumn;
    Cxgri1DBTableView1ABREVIADO: TcxGridDBColumn;
    Cxgri1DBTableView1IMP: TcxGridDBColumn;
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
  FbuscarImpuesto: TFbuscarImpuesto;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFbuscarImpuesto.btnsalirClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFbuscarImpuesto.Cxgri1DBTableView1DblClick(Sender: TObject);
begin
datos.MantArt.Edit;
datos.MantArtIDIMPUESTO.Value := qConsulta1ID.Value;
datos.MantArtTAZA_COMPRA.Value := qConsulta1IMP.Value;
close;
end;

procedure TFbuscarImpuesto.edtBuscarChange(Sender: TObject);
begin
with qconsulta1 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from TB_IMPUESTO a');
      sql.Add('where a.descripcion like '+#39+'%'+edtbuscar.Text+'%'+#39);
      open;
    end;
end;

procedure TFbuscarImpuesto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FbuscarImpuesto := nil;
action := caFree;
end;

procedure TFbuscarImpuesto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

end.
