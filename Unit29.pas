unit Unit29;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, Data.DB, ZAbstractRODataset, ZDataset,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, dxGDIPlusClasses,
  cxImage, Vcl.Menus, cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFrmProvee = class(TForm)
    cxGroupBox2: TcxGroupBox;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Edit2: TEdit;
    Qproveedor: TZReadOnlyQuery;
    DsqProvee: TDataSource;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    pnlTop: TPanel;
    cxButton5: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label8: TLabel;
    Panel6: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    pnlCentral: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel20: TPanel;
    cxButton2: TSpeedButton;
    Panel10: TPanel;
    cxButton3: TSpeedButton;
    Panel7: TPanel;
    cxButton4: TSpeedButton;
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
    cxDBTextEdit7: TcxDBTextEdit;
    Label11: TLabel;
    numeroProb: TZReadOnlyQuery;
    numeroProbGEN_ID: TLargeintField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProvee: TFrmProvee;

implementation

{$R *.dfm}
uses
unit2, Unit63, UInicio;
procedure TFrmProvee.BtnCanelarClick(Sender: TObject);
begin
datos.FbqFabricantes.CancelUpdates;
datos.Data.Rollback;
  datos.FbqFabricantes.close;
    datos.FbqFabricantes.open;

    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;
    QPROVEEDOR.Close;
    QPROVEEDOR.Open;
end;

procedure TFrmProvee.btnGuardarClick(Sender: TObject);
begin
if cxDBTextEdit1.Text ='' then
  begin
    Showmessage('**Regestro no puede ser guardado**');
  end else begin
    datos.FbqFabricantes.ApplyUpdates;
    datos.data.Commit;

    QPROVEEDOR.Close;
    QPROVEEDOR.Open;


    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;
end;
end;

procedure TFrmProvee.btnnuevoClick(Sender: TObject);
begin
datos.FbqFabricantes.Open;

   with NumeroProb do
        begin
          close;
          sql.Clear;
          sql.Add('select gen_id(GEN_MAN_PROVEDORES_ID, 1) from RDB$DATABASE');
          open;
        end;



datos.FbqFabricantes.Insert;
datos.FbqFabricantesCOD_PROV.Value := numeroProbGEN_ID.Value;
//datos.FbqFabricantesCOD_FAB.Value := '00'+INtToStr(datos.FbqFabricantesCOD.Value);

cxButton3.Enabled := true;
cxButton4.Enabled := true;
cxButton2.Enabled := false;
end;

procedure TFrmProvee.btnsalirClick(Sender: TObject);
begin
datos.ZProveedor.Close;

 datos.FbqFabricantes.close;
close;
end;

procedure TFrmProvee.cxButton2Click(Sender: TObject);
begin
datos.FbqFabricantes.Open;
with max do
  begin
    close;
    sql.Clear;
    sql.Add('select max(cod) from fabricantes');
    open;
  end;

datos.FbqFabricantes.Insert;
datos.FbqFabricantesCOD_PROV.Value := maxmax.Value + 1;
//datos.FbqFabricantesCOD_FAB.Value := '00'+INtToStr(datos.FbqFabricantesCOD.Value);

cxButton3.Enabled := true;
cxButton4.Enabled := true;
cxButton2.Enabled := false;

end;

procedure TFrmProvee.cxButton5Click(Sender: TObject);
begin
datos.ZProveedor.Close;

 datos.FbqFabricantes.close;


    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;

   close;
end;

procedure TFrmProvee.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

with datos.FbqFabricantes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MAN_PROVEDORES');
    sql.Add('where cod_prov =:ooo');
    params[0].Value := QproveedorCOD_PROV.Value;
    open;
  end;

 cxButton3.Enabled := true;
 cxButton4.Enabled := true;
 cxButton2.Enabled := false;
end;

procedure TFrmProvee.Edit2Change(Sender: TObject);
begin


with Qproveedor do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MAN_PROVEDORES');
    sql.Add('where nombre_pro like '+#39+'%'+Edit2.Text+'%'+#39);
    open;
  end;

end;

procedure TFrmProvee.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmProvee := nil;
Action := caFree;
end;

procedure TFrmProvee.FormShow(Sender: TObject);
begin
QPROVEEDOR.Close;
QPROVEEDOR.Open;
end;

end.
