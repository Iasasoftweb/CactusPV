unit uBuscarSubCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  Vcl.StdCtrls, acPNG, Vcl.ExtCtrls, Vcl.Buttons, cxGraphics, cxControls,
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
  TfBuscarSubCategoria = class(TForm)
    qSubCategoria: TZReadOnlyQuery;
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
    Panel10: TPanel;
    SpeedButton2: TSpeedButton;
    qSubCategoriaID: TIntegerField;
    qSubCategoriaSUBCATEGORIA: TWideStringField;
    qSubCategoriaIDCATEGORIA: TIntegerField;
    dsSubCategoria: TDataSource;
    Cxgri1DBTableView1ID: TcxGridDBColumn;
    Cxgri1DBTableView1SUBCATEGORIA: TcxGridDBColumn;
    procedure btnsalirClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure Cxgri1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscarSubCategoria: TfBuscarSubCategoria;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TfBuscarSubCategoria.btnsalirClick(Sender: TObject);
begin
  close;
end;

procedure TfBuscarSubCategoria.Cxgri1DBTableView1DblClick(Sender: TObject);
begin


//  if edit1.Text = '3' then
//  begin
//    datos.MantArt.Edit;
//    datos.MantArtCOD_CAT.Value  := datos.FbCategoriasCODCAT.Value;
//    datos.MantArtCAT.Value      := datos.FbCategoriasCAT.Value;
//
//
//    close;
//  end;

end;

procedure TfBuscarSubCategoria.edtBuscarChange(Sender: TObject);
begin
with QSUBCATEGORIA do
  begin
    close;
    sql.Clear;
    sql.Add('select * from producto_subcategoria where subcategoria like '+#39+'%'+edtbuscar.Text+'%'+#39);
    open;
  end;
end;

end.
