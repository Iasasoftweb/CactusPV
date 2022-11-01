unit Unit20;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPCdxBarPopupMenu, cxPC, ZAbstractRODataset, ZDataset, cxContainer,
  cxGroupBox, cxRadioGroup, cxTextEdit, cxLabel, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxSkinsdxBarPainter, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbon, dxBar, dxBarExtItems, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  dxRibbonCustomizationForm, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmCatProducto = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxPageControl1: TcxPageControl;
    Productos: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    IbqRArticulos: TZReadOnlyQuery;
    DsqArticulos: TDataSource;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosPRECIO_D: TFloatField;
    cxPageControl3: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    opBuscar: TcxGroupBox;
    op: TcxRadioGroup;
    edit1: TcxTextEdit;
    label1: TcxLabel;
    cxButton1: TcxButton;
    dxBarManager: TdxBarManager;
    BarMant: TdxBar;
    BarOperaciones: TdxBar;
    btnDiary: TdxBarLargeButton;
    btnPortfolio: TdxBarLargeButton;
    btnOfferBook: TdxBarLargeButton;
    btnOptions: TdxBarLargeButton;
    btnSMS: TdxBarButton;
    btnClientReview: TdxBarLargeButton;
    btnViewingsReview: TdxBarLargeButton;
    btnMatchesReview: TdxBarLargeButton;
    btnCustomReports: TdxBarLargeButton;
    btnActivityReport: TdxBarLargeButton;
    btnValuationReport: TdxBarLargeButton;
    btnMarketing: TdxBarLargeButton;
    btnLettings: TdxBarLargeButton;
    btnReports: TdxBarLargeButton;
    btnArchivedApps: TdxBarLargeButton;
    btnArchivedProperties: TdxBarLargeButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSeparator5: TdxBarSeparator;
    btnEmailMenu: TdxBarSubItem;
    btnBoardErector: TdxBarButton;
    btnChangePassword: TdxBarLargeButton;
    btnWhatsThis: TdxBarButton;
    btnActivePageHelp: TdxBarButton;
    btnSupport: TdxBarLargeButton;
    dxBarSeparator6: TdxBarSeparator;
    btnCascade: TdxBarButton;
    btnCarousel: TdxBarLargeButton;
    btnChildClose: TdxBarButton;
    btnChildRestore: TdxBarButton;
    btnForceError: TdxBarButton;
    btnViewingBook: TdxBarLargeButton;
    btnFAQ: TdxBarButton;
    btnTroubleshooting: TdxBarButton;
    btnPropertyReview: TdxBarLargeButton;
    btnFindEmailAddress: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarCombo1: TdxBarCombo;
    dxBarEdit1: TdxBarEdit;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarButton14: TdxBarButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    MainRibbon: TdxRibbon;
    TabInvetario1: TdxRibbonTab;
    ZqCombos: TZReadOnlyQuery;
    DsqCombos: TDataSource;
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
    cxGrid3DBTableView1COMBOMASTER: TcxGridDBColumn;
    cxGrid3DBTableView1NOMBRECOMBO: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO1: TcxGridDBColumn;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarButton18: TdxBarButton;
    ZExistencia: TZReadOnlyQuery;
    DsExistencia: TDataSource;
    ZExistenciaIDTIENDA: TIntegerField;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaDESCRIPCION: TWideStringField;
    ZExistenciaEXISTENCIA: TFloatField;
    cxGridDBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGridDBTableView1EXISTENCIA: TcxGridDBColumn;
    BtModiCombo: TcxButton;
    cxButton2: TcxButton;
    duplicacombo: TZReadOnlyQuery;
    duplicacomboCOD_MANCOMBO: TIntegerField;
    duplicacomboMACOMBOID: TIntegerField;
    duplicacomboCOD_ART: TIntegerField;
    duplicacomboPRECIO: TFloatField;
    duplicacomboPRECIO2: TFloatField;
    duplicacomboPRECIO3: TFloatField;
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    dxBarLargeButton17: TdxBarLargeButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1MODELO: TcxGridDBColumn;
    cxGrid2DBTableView1MARCA: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_A: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_B: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_D: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure opClick(Sender: TObject);
    procedure edit1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton16Click(Sender: TObject);
    procedure BtModiComboClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatProducto: TFrmCatProducto;

implementation

{$R *.dfm}
uses unit2, unit19, unit5, Unit23, tools, Unit24, Unit27, Unit28;
procedure TFrmCatProducto.BtModiComboClick(Sender: TObject);
begin

      with datos.MaCombo do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.descripcion from combomaster a');
          sql.Add('left join tienda b On a.codtienda = b.tiendaid');
          sql.Add('where a.COMBOMASTER =:oppp');
          params[0].Value := zqcombosCOMBOMASTER.Value;
          open;
        end;


     // FrmCombo.cxButton4.Enabled := true;
      FrmCombo.cxButton1.Enabled := false;
      FrmCombo.btguardar.Enabled := false;
      FrmCombo.btcancelar.Enabled := true;
      FrmCombo.opmaster.Enabled := false;
      FrmCombo.cxGroupBox2.Enabled := true;

      datos.ZCombo.Open;
      BtModiCombo.Enabled := false;

FrmCombo.showmodal;




end;

procedure TFrmCatProducto.cxButton1Click(Sender: TObject);
begin
opbuscar.Visible := false;
end;

procedure TFrmCatProducto.cxButton2Click(Sender: TObject);
var
cero : string;
begin

datos.MaCombo.Open;
datos.ZCombo.Open;
datos.MaCombo.Insert;



  with FrmCombo.numeromaster do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(arti_gen, 1) from RDB$DATABASE');
     open;
  end;

  datos.MaComboCOMBOMASTER.Value := FrmCombo.numeromastergen_id.Value;

    if datos.MaComboCOMBOMASTER.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.MaComboCOMBOMASTER.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.MaComboCOMBOMASTER.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.MaComboCOMBOMASTER.Value >= 1000 then
        begin
           cero := '';
     end;


     FrmCombo.opmaster.Enabled := true;

     datos.MaComboCODIGOTXT.Value := 'C'+cero+intTostr(datos.MaComboCOMBOMASTER.Value);
     datos.MaComboCODTIENDA.Value := Asignatienda;
     datos.MaComboESTADO.Value := 1;
    // FrmCombo.cxButton4.Enabled := true;
     FrmCombo.cxButton1.Enabled := false;
     FrmCombo.BTguardar.Enabled := TRUE;
     frmcombo.cxGroupBox2.Enabled := true;

    // FrmCombo.cxDBTextEdit1.SetFocus;


     with duplicacombo do
       begin
         close;
         sql.Clear;
         sql.Add('select * from mantcombo');
         sql.Add('where MACOMBOID =:oppp');
         params[0].Value := zqcombosCOMBOMASTER.Value;
         open;
       end;

      with duplicacombo do
        begin
          first;



          while not eof do
             begin

               with FrmCombo.numerocombo do
               begin
                 close;
                 open;
               end;

               datos.ZCombo.Insert;
               datos.ZComboCOD_MANCOMBO.Value := FrmCombo.numerocombomax.Value + 1;
               datos.ZComboCOD_ART.Value := duplicacombocod_art.Value;
               datos.ZComboPRECIO.Value  := duplicacomboprecio.Value;
               datos.ZComboPRECIO2.Value := duplicacomboprecio2.Value;
               datos.ZComboPRECIO3.Value := duplicacomboprecio3.Value;
               datos.ZCombo.Refresh;
               next;
             end;
        end;

   {
 with datos.MaCombo do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.descripcion from combomaster a');
          sql.Add('left join tienda b On a.codtienda = b.tiendaid');
          sql.Add('where a.COMBOMASTER =:oppp');
          params[0].Value := zqcombosCOMBOMASTER.Value;
          open;
     end;

    }


cxButton2.Enabled := false;
FrmCombo.showmodal;

end;

procedure TFrmCatProducto.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

    with zexistencia do
      begin
         close;
         sql.Clear;
         sql.Add('select a.idtienda,a.cod_art,b.descripcion,sum(a.entrada - a.salida) Existencia from minventario a');
         sql.Add('left join tienda b On a.idtienda = b.tiendaid');
         sql.Add('where a.cod_art =:op2');
         sql.Add('group by a.idtienda,a.cod_art,b.descripcion');
         params[0].Value := IbqRarticuloscod_art.Value;
         open;
      end;
end;

procedure TFrmCatProducto.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

with datos.MantArt do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MTARTUCULOS');
    sql.Add('where cod_art =:oo');
    params[0].Value :=  ibqRarticuloscod_art.value;
    open;
  end;

datos.FbCategorias.Open;
datos.MantArt.open;

FrmArticulos.op11.Enabled := false;
FrmArticulos.op11.Pages[0].Visible := true;
FrmArticulos.Edit1.Text := 'MOD';

FrmArticulos.btmodi.Visible := true;

FrmArticulos.ShowModal;


end;

procedure TFrmCatProducto.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 with zexistencia do
      begin
         close;
         sql.Clear;
         sql.Add('select a.idtienda,a.cod_art,b.descripcion,sum(a.entrada - a.salida) Existencia from minventario a');
         sql.Add('left join tienda b On a.idtienda = b.tiendaid');
         sql.Add('where a.cod_art =:op2');
         sql.Add('group by a.idtienda,a.cod_art,b.descripcion');
         params[0].Value := IbqRarticuloscod_art.Value;
         open;
      end;
end;

procedure TFrmCatProducto.cxGrid2DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 with zexistencia do
      begin
         close;
         sql.Clear;
         sql.Add('select a.idtienda,a.cod_art,b.descripcion,sum(a.entrada - a.salida) Existencia from minventario a');
         sql.Add('left join tienda b On a.idtienda = b.tiendaid');
         sql.Add('where a.cod_art =:op2');
         sql.Add('group by a.idtienda,a.cod_art,b.descripcion');
         params[0].Value := IbqRarticuloscod_art.Value;
         open;
      end;
end;

procedure TFrmCatProducto.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
BtModiCombo.Enabled := true;
//BtModiCombo.SetFocus;
cxButton2.Enabled := true;

end;

procedure TFrmCatProducto.cxTextEdit1PropertiesChange(Sender: TObject);
begin


with zqcombos do
  begin
    close;
    sql.clear;
    sql.Add('select * from Combomaster');
    sql.Add('where estado = 1');
    sql.Add('and nombrecombo like '+#39+'%'+cxTextEdit1.Text+'%'+#39);
    open;
  end;
end;

procedure TFrmCatProducto.dxBarButton15Click(Sender: TObject);
var
cero : string;
begin
datos.FbCategorias.Open;
datos.MantArt.open;
datos.MantArt.Insert;

with FrmArticulos.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(arti_gen, 1) from RDB$DATABASE');
     open;
  end;


datos.MantArtCOD_ART.Value := FrmArticulos.numerogen_id.Value;

    if datos.MantArtCOD_ART.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.MantArtCOD_ART.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.MantArtCOD_ART.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.MantArtCOD_ART.Value >= 1000 then
        begin
           cero := '';
     end;

     datos.MantArtCODIGOTXT.Value := cero+intTostr(datos.MantArtCOD_ART.Value);
 FrmArticulos.Edit1.Text := 'NUEVO';
//FrmArticulos.cxDBComboBox2.ItemIndex := 0;
FrmArticulos.ShowModal;

end;

procedure TFrmCatProducto.dxBarButton16Click(Sender: TObject);
begin
FrmCatProducto.opBuscar.Visible := true;
end;

procedure TFrmCatProducto.dxBarLargeButton16Click(Sender: TObject);
begin
close;
end;

procedure TFrmCatProducto.dxBarLargeButton17Click(Sender: TObject);
begin
FrmAjuste.showmodal;
end;

procedure TFrmCatProducto.dxBarLargeButton5Click(Sender: TObject);
begin
frmconduce1.showmodal;
end;

procedure TFrmCatProducto.dxBarLargeButton7Click(Sender: TObject);
begin
FrmCombo.showmodal;
end;

procedure TFrmCatProducto.dxBarLargeButton8Click(Sender: TObject);
begin
frmCat.showmodal;
end;

procedure TFrmCatProducto.edit1PropertiesChange(Sender: TObject);
begin
if op.ItemIndex = 0 then
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where cod_art like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;

if op.ItemIndex = 1 then
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where articulo like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;


if op.ItemIndex = 2 then
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where marca like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;



if op.ItemIndex = 3 then
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where modelo like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;

end;

procedure TFrmCatProducto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(FrmCatProducto);
end;

procedure TFrmCatProducto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F3 then
  begin
    cxGroupBox1.Visible := true;
    cxTextEdit1.SetFocus;
  end;

  if key= vk_escape then
    begin
       cxGroupBox1.Visible := false;
    end;

end;

procedure TFrmCatProducto.FormShow(Sender: TObject);
begin

IbqRArticulos.CLOSE;
IbqRArticulos.Open;
Zqcombos.Params[0].Value := Asignatienda;
zqcombos.Open;

  with zexistencia do
      begin
         close;
         sql.Clear;
         sql.Add('select a.idtienda,a.cod_art,b.descripcion,sum(a.entrada - a.salida) Existencia from minventario a');
         sql.Add('left join tienda b On a.idtienda = b.tiendaid');
         sql.Add('where a.cod_art =:op2');
         sql.Add('group by a.idtienda,a.cod_art,b.descripcion');
         params[0].Value := IbqRarticuloscod_art.Value;
         open;
      end;

end;

procedure TFrmCatProducto.opClick(Sender: TObject);
begin
if op.ItemIndex = 0 then
  begin
    label1.Caption := 'Introduce el Codido';
    edit1.SetFocus;
  end;

if op.ItemIndex = 1 then
  begin
    label1.Caption := 'Introduce el Nombre del Articulo';
    edit1.SetFocus;
  end;

if op.ItemIndex = 0 then
  begin
    label1.Caption := 'Introduce la Marca';
    edit1.SetFocus;
  end;

if op.ItemIndex = 0 then
  begin
    label1.Caption := 'Introduce el Modelo';
    edit1.SetFocus;
  end;


end;

end.
