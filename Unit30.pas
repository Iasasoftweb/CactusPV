unit Unit30;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, Vcl.Menus, cxContainer, cxTextEdit, cxGroupBox, Vcl.StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  ZAbstractRODataset, ZDataset, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmMantCombo = class(TForm)
    ZqCombos: TZReadOnlyQuery;
    ZqCombosCOMBOMASTER: TIntegerField;
    ZqCombosNOMBRECOMBO: TWideStringField;
    ZqCombosPRECIO1: TFloatField;
    ZqCombosPRECIO2: TFloatField;
    ZqCombosPRECIO3: TFloatField;
    ZqCombosCOSTOS1: TFloatField;
    ZqCombosCOSTOS2: TFloatField;
    ZqCombosESTADO: TIntegerField;
    ZqCombosCODTIENDA: TIntegerField;
    ZqCombosCODIGOTXT: TWideStringField;
    DsqCombos: TDataSource;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1COMBOMASTER: TcxGridDBColumn;
    cxGrid3DBTableView1NOMBRECOMBO: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO1: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    BtModiCombo: TcxButton;
    cxButton1: TcxButton;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosCOSTO: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure BtModiComboClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMantCombo: TfrmMantCombo;

implementation

uses tools, unit2, Unit23;
{$R *.dfm}

procedure TfrmMantCombo.BtModiComboClick(Sender: TObject);
begin

with datos.MantArt do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where cod_art =:pp');
  //  sql.Add('and politica =:oo');
    params[0].Value := IbqrArticuloscod_art.Value;
    open;
  end;




    //  FrmCombo.cxButton4.Enabled := false;
      FrmCombo.cxButton1.Enabled := false;
      FrmCombo.btguardar.Enabled := true;
      FrmCombo.btcancelar.Enabled := true;
      FrmCombo.opmaster.Enabled := false;
      FrmCombo.cxGroupBox2.Enabled := true;
      datos.MaCombo.Open;
      datos.ZCombo.Open;
      //BtModiCombo.Enabled := false;
  //    FrmCombo.Edit1.Text := 'MOD';
      FrmCombo.showmodal;

end;

procedure TfrmMantCombo.cxButton1Click(Sender: TObject);
begin
FrmCombo.showmodal;
end;

procedure TfrmMantCombo.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
//BtModiCombo.Enabled := true;
end;

procedure TfrmMantCombo.cxTextEdit1PropertiesChange(Sender: TObject);
begin

with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where articulo like '+#39+'%'+cxTextEdit1.Text+'%'+#39);
    sql.Add('and politica =:oo');
    params[0].Value := 'Combo';
    open;
  end;

end;

procedure TfrmMantCombo.FormShow(Sender: TObject);
begin
//Zqcombos.Params[0].Value := Asignatienda;

IbqRarticulos.close;
IbqRarticulos.Open;

end;

end.
