unit uBuscarSubCategorias;

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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, acPNG, Vcl.ExtCtrls, Vcl.Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, ZAbstractRODataset, ZDataset;

type
  TfuBuscarSubCategorias = class(TForm)
    Panel1: TPanel;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    Cxgri1: TcxGrid;
    Cxgri1DBTableView1: TcxGridDBTableView;
    Cxgri1Level1: TcxGridLevel;
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
    qConsulta1SUBCATEGORIA: TWideStringField;
    qConsulta1IDCATEGORIA: TIntegerField;
    qConsulta1CAT: TWideStringField;
    Cxgri1DBTableView1SUBCATEGORIA: TcxGridDBColumn;
    Cxgri1DBTableView1CAT: TcxGridDBColumn;
    Edit1: TEdit;
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
  fuBuscarSubCategorias: TfuBuscarSubCategorias;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TfuBuscarSubCategorias.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfuBuscarSubCategorias.Cxgri1DBTableView1DblClick(Sender: TObject);
begin
  datos.MantArt.Edit;
  datos.MantArtSUBCATEGORIA.Value := qConsulta1ID.Value;
  datos.MantArtSUBCAT.Value := qConsulta1SUBCATEGORIA.Value;
  close;

end;

procedure TfuBuscarSubCategorias.edtBuscarChange(Sender: TObject);
begin
with qconsulta1 do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.cat from producto_subcategoria a');
      sql.Add('left join mtcategoria b on a.idcategoria = b.codcat');
      sql.Add('where a.subcategoria like '+#39+'%'+edtbuscar.Text+'%'+#39);
      sql.Add('and a.idcategoria =:cat' );
      params[0].value := StrToInt(Edit1.Text);
      open;
    end;
end;

procedure TfuBuscarSubCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fuBuscarSubCategorias := nil;
  Action := caFree;
end;

procedure TfuBuscarSubCategorias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then
   begin
     close;
   end;
end;



end.
