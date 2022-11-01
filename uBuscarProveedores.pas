unit uBuscarProveedores;

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
  TfBuscarProveedores = class(TForm)
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
    Panel1: TPanel;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    Cxgri1: TcxGrid;
    Cxgri1DBTableView1: TcxGridDBTableView;
    Cxgri1DBTableView1SUSTANCIA: TcxGridDBColumn;
    Cxgri1Level1: TcxGridLevel;
    Edit1: TEdit;
    qConsulta1COD_PROV: TIntegerField;
    qConsulta1NOMBRE_PRO: TWideStringField;
    qConsulta1NOM_CONTACTO: TWideStringField;
    qConsulta1DIRECCION: TWideStringField;
    qConsulta1TELF1: TWideStringField;
    qConsulta1TELF2: TWideStringField;
    qConsulta1EMAIL: TWideStringField;
    qConsulta1WEBSITE: TWideStringField;
    qConsulta1TEL_EXTENSION: TIntegerField;
    qConsulta1FAX: TWideStringField;
    qConsulta1RNC: TWideStringField;
    qConsulta1V_CELULAR: TWideStringField;
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
  fBuscarProveedores: TfBuscarProveedores;

implementation

uses
  Unit2, uBuscarFiltros;

{$R *.dfm}

procedure TfBuscarProveedores.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfBuscarProveedores.Cxgri1DBTableView1DblClick(Sender: TObject);
begin
if edit1.Text ='1' then
  begin
    datos.MantArt.Edit;
    datos.MantArtCOD_PROV1.Value  := qConsulta1COD_PROV.Value;
    datos.MantArtNOMBRE_PRO.Value := qConsulta1NOMBRE_PRO.Value;
    CLOSE;
  end;

  if edit1.Text ='2' then
  begin
    datos.MantArt.Edit;
    datos.MantArtCOD_PROV2.Value := qConsulta1COD_PROV.Value;
    datos.MantArtpro2.Value :=   qConsulta1NOMBRE_PRO.Value;
    CLOSE;
  end;

   if edit1.Text ='3' then
  begin
    FbuscarFiltro.edtProveedor.Text :=    qConsulta1NOMBRE_PRO.Value;
    CLOSE;
  end;
end;

procedure TfBuscarProveedores.edtBuscarChange(Sender: TObject);
begin

with qconsulta1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MAN_PROVEDORES');
    sql.Add('where nombre_pro like '+#39+'%'+edtbuscar.Text+'%'+#39);
    open;
  end;
end;

procedure TfBuscarProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fBuscarProveedores := nil;
action := caFree;
end;

procedure TfBuscarProveedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

end.
