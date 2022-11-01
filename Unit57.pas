unit Unit57;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.Menus, cxButtons,
  dxSkinTheBezier, acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmBuscarCategoria = class(TForm)
    dscategoria: TDataSource;
    Edit1: TEdit;
    Ebuscar: TEdit;
    Panel1: TPanel;
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
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    Cxgri1: TcxGrid;
    Cxgri1DBTableView1: TcxGridDBTableView;
    Cxgri1DBTableView1Column1: TcxGridDBColumn;
    Cxgri1Level1: TcxGridLevel;
    Panel10: TPanel;
    SpeedButton2: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Cxgri1DBTableView1DblClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscarCategoria: TFrmBuscarCategoria;

implementation

{$R *.dfm}

uses Unit55, Unit2, Unit60, Unit14, uBuscarFiltros;

procedure TFrmBuscarCategoria.btnsalirClick(Sender: TObject);
begin
CLOSE
end;

procedure TFrmBuscarCategoria.Cxgri1DBTableView1DblClick(Sender: TObject);
begin
if edit1.Text = '1' then
  begin
    FrmRMecanciaInvManual.catTXT.Text := datos.FbCategoriasCAT.Value;
    FrmRMecanciaInvManual.edit3.Text := INtToStr(datos.FbCategoriasCODCAT.Value);

    close;
  end;

if edit1.Text = '2' then
  begin
   // FrmRVFecha.catTXT.Text := datos.FbCategoriasCAT.Value;
   // FrmRVFecha.edit3.Text := INtToStr(datos.FbCategoriasCODCAT.Value);
   // close;
  end;


  if edit1.Text = '3' then
  begin
    datos.MantArt.Edit;
    datos.MantArtCOD_CAT.Value  := datos.FbCategoriasCODCAT.Value;
    datos.MantArtCAT.Value      := datos.FbCategoriasCAT.Value;


    close;
  end;


   if edit1.Text = '10' then
  begin
    FbuscarFiltro.edtCategorias.Text := datos.FbCategoriasCAT.Value;

    close;
  end;


    if edit1.Text = 'Sub' then
  begin
    datos.qSubCategorias.Open;
    datos.qSubCategorias.Edit;
    datos.qSubCategoriasIDCATEGORIA.Value := datos.FbCategoriasCODCAT.Value;
    datos.qSubCategoriasCAT.Value         := datos.FbCategoriasCAT.Value;



    close;
  end;




end;

procedure TFrmBuscarCategoria.edtBuscarChange(Sender: TObject);
begin
with datos.FbCategorias do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtcategoria where cat like '+#39+'%'+edtbuscar.Text+'%'+#39);
    open;
  end;
end;

procedure TFrmBuscarCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmBuscarCategoria := Nil;
  Action := caFree;
end;

procedure TFrmBuscarCategoria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then
   begin
     close;
   end;
end;

procedure TFrmBuscarCategoria.SpeedButton2Click(Sender: TObject);
begin
if FmrMant_Categoria = nil then
  begin
      FmrMant_Categoria := tFmrMant_Categoria.Create(self);
      FmrMant_Categoria.ShowModal;
  end;
end;

end.
