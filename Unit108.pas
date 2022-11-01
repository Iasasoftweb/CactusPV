unit Unit108;

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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFrmBProveedor = class(TForm)
    DsqProvee: TDataSource;
    Qproveedor: TZReadOnlyQuery;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    Edit2: TEdit;
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
    edit1: TEdit;
    QproveedorCOD_PROV: TIntegerField;
    QproveedorNOMBRE_PRO: TWideStringField;
    QproveedorNOM_CONTACTO: TWideStringField;
    QproveedorDIRECCION: TWideStringField;
    QproveedorTELF1: TWideStringField;
    QproveedorTELF2: TWideStringField;
    QproveedorEMAIL: TWideStringField;
    QproveedorWEBSITE: TWideStringField;
    QproveedorTEL_EXTENSION: TIntegerField;
    QproveedorFAX: TWideStringField;
    QproveedorRNC: TWideStringField;
    QproveedorV_CELULAR: TWideStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBProveedor: TFrmBProveedor;

implementation

{$R *.dfm}

uses Unit2, Unit63, Unit65, UFacturaProv, UCobroFactCxP, UEstadoCXP;

procedure TFrmBProveedor.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmBProveedor.cxGridDBTableView1DblClick(Sender: TObject);
begin
if EDIT2.Text ='COMPRA' then BEGIN

    FrmCompras.cxDBSpinEdit2.Value := QproveedorCOD_PROV.Value;
      FrmCompras.cxDBTextEdit2.Text := qproveedornombre_pro.Value;
    Close;
END;


if EDIT2.Text ='COMPRA2' then BEGIN

   FrmFactProveedores.cxDBSpinEdit2.Value := QproveedorCOD_PROV.Value;
      FrmFactProveedores.cxDBTextEdit2.Text := qproveedornombre_pro.Value;
    Close;
END;
if EDIT2.Text = 'CONSULTAFACT' then
  begin
    FrmFactProveedores.Edit2.Text := QproveedorCOD_PROV.Text;
    FrmFactProveedores.Edit1.Text := qproveedornombre_pro.Value;
    close;
  end;


  if EDIT2.Text = 'ESTADOCUENTA' then
  begin
    FrmEstadoCxp.Edit2.Text := QproveedorCOD_PROV.Text;
    FrmEstadoCxp.Edit1.Text := qproveedornombre_pro.Value;
    close;
  end;


if EDIT2.Text = 'COBROFACT' then
  begin
    FrmCobroCXP.cxDBSpinEdit1.Value := QproveedorCOD_PROV.Text;
    FrmCobroCXP.cxDBTextEdit1.Text  := qproveedornombre_pro.Value;
    FrmCobroCXP.cxDBTextEdit6.Text  := qproveedornombre_pro.Value;


    close;
  end;
end;

procedure TFrmBProveedor.edtBuscarChange(Sender: TObject);
begin
with qproveedor do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MAN_PROVEDORES');
    sql.Add('where nombre_pro like '+#39+'%'+Edit1.Text+'%'+#39);
    open;
  end;
end;

procedure TFrmBProveedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmBProveedor := nil;
Action := caFree;
end;

procedure TFrmBProveedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;

  end;
end;

procedure TFrmBProveedor.FormShow(Sender: TObject);
begin
edit1.SetFocus;
end;

end.
