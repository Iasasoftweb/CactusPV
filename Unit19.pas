unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, cxPC, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, dxSkinsdxBarPainter, dxSkinsForm, Vcl.ImgList, dxBar,
  dxBarExtItems, dxTabbedMDI, cxClasses, dxRibbon, dxStatusBar,
  dxRibbonStatusBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, cxContainer, cxGroupBox, dxLayoutContainer,
  dxLayoutControl, cxSplitter, dxDockControl, dxDockPanel, Vcl.Imaging.jpeg,
  cxImage, dxRibbonBackstageView, dxRibbonForm, dxGDIPlusClasses, Vcl.ExtCtrls,
  dxSkinsdxNavBarPainter, dxNavBar, dxNavBarGroupItems, dxNavBarCollns,
  dxNavBarBase, cxDBLookupComboBox, cxBarEditItem, cxDBExtLookupComboBox,
  dxBarExtDBItems, RxGIF, cxCalendar, Vcl.Menus, frxClass, frxDBSet, cxDBEdit,
  cxLabel, cxDBLabel, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinsdxNavBarAccordionViewPainter, dxRibbonCustomizationForm,
  dxBarBuiltInMenu, System.ImageList, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList;

type
  Tinicio = class(TdxRibbonForm)
    RibbonImages16: TcxImageList;
    RibbonImages32: TcxImageList;
    Toolbar32: TcxImageList;
    Toolbar16: TcxImageList;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    Master_cobro: TZReadOnlyQuery;
    dsMaster_cobro: TDataSource;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    dxNavBar1Item6: TdxNavBarItem;
    dxNavBar1Item7: TdxNavBarItem;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Group4: TdxNavBarGroup;
    dxNavBar1Item8: TdxNavBarItem;
    dxNavBar1Item9: TdxNavBarItem;
    dxNavBar1Item10: TdxNavBarItem;
    dxNavBar1Item11: TdxNavBarItem;
    dxNavBar1Item12: TdxNavBarItem;
    dxNavBar1Item13: TdxNavBarItem;
    dxNavBar1Item14: TdxNavBarItem;
    dxNavBar1Item15: TdxNavBarItem;
    dxNavBar1Item16: TdxNavBarItem;
    dxNavBar1Item17: TdxNavBarItem;
    dxNavBar1Item18: TdxNavBarItem;
    ZqTurno: TZReadOnlyQuery;
    ZqTurnoTURNOID: TIntegerField;
    ZqTurnoUSUARIOID: TIntegerField;
    ZqTurnoEFECTIVO_INICIAL: TFloatField;
    ZqTurnoESTADO: TIntegerField;
    ZqTurnoFECHA: TDateField;
    ZqTurnoHORA: TDateField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsTurno: TDataSource;
    qturnosactivos: TZReadOnlyQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    qturnosactivosNOMBRES_EMP: TWideStringField;
    cxGrid1DBTableView1TURNOID: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    MainMenu1: TMainMenu;
    Articulos1: TMenuItem;
    AgegrarModificar1: TMenuItem;
    SalidadeMercancia1: TMenuItem;
    ConsultarSalidadeMercancia1: TMenuItem;
    Clientes1: TMenuItem;
    AgregarModificarCliente1: TMenuItem;
    dxNavBar1Item19: TdxNavBarItem;
    dxNavBar1Item20: TdxNavBarItem;
    dxNavBar1Separator1: TdxNavBarSeparator;
    Ventas1: TMenuItem;
    Facturas1: TMenuItem;
    Cotizacin1: TMenuItem;
    NotadeCrdito1: TMenuItem;
    CobrarCxC1: TMenuItem;
    N1: TMenuItem;
    ConsultadeFacturas1: TMenuItem;
    ConsultadeCotizacin1: TMenuItem;
    ConsultadeNotadeCrdito1: TMenuItem;
    Proveedores1: TMenuItem;
    AgregarModificar1: TMenuItem;
    maxcaja: TZReadOnlyQuery;
    maxcajaMAX: TIntegerField;
    cajacuadre: TZReadOnlyQuery;
    cajacuadreCUADRE1: TIntegerField;
    cajacuadreFECHA: TDateField;
    cajacuadreUSAURIOID: TIntegerField;
    cajacuadreMONTOINICIAL: TFloatField;
    cajacuadreTOTAL_EFECTIVO: TFloatField;
    cajacuadreVENTAS: TFloatField;
    cajacuadreGASTOS: TFloatField;
    cajacuadreCOBRANZAS: TFloatField;
    cajacuadreNOTACREDITO: TFloatField;
    cajacuadreFECTIVO: TFloatField;
    cajacuadreTARJETA: TFloatField;
    cajacuadreCHEQUE: TFloatField;
    cajacuadreESTADO: TIntegerField;
    cajacuadreTOTAL_GASTOS: TFloatField;
    cajacuadreNOMBRES_EMP: TWideStringField;
    maxventa: TZReadOnlyQuery;
    maxventaVENTA: TFloatField;
    sumcobro: TZReadOnlyQuery;
    sumcobroCOBRO: TFloatField;
    SumGastos: TZReadOnlyQuery;
    SumNC: TZReadOnlyQuery;
    master_credito: TZReadOnlyQuery;
    master_creditoNO_FACT: TIntegerField;
    master_creditoFECHA_FAC: TDateField;
    master_creditoTIPO: TWideStringField;
    master_creditoCOD_CLIENT: TWideStringField;
    master_creditoCOD_EMP: TWideStringField;
    master_creditoNO_FACT1: TWideStringField;
    master_creditoMONTO: TFloatField;
    master_creditoHORA: TTimeField;
    master_creditoPOGXITBS: TFloatField;
    master_creditoMONTOPAGO: TFloatField;
    master_creditoTIPOPAGO: TWideStringField;
    master_creditoCONDICION: TWideStringField;
    master_creditoRENTA: TWideStringField;
    master_creditoCODIGO: TIntegerField;
    master_creditoTIPOITBS: TWideStringField;
    master_creditoVENDEDOR: TWideStringField;
    master_creditoSITUACION: TWideStringField;
    master_creditoCAJERO: TWideStringField;
    master_creditoNCF: TWideStringField;
    master_creditoRNC_CLIENTE: TWideStringField;
    master_creditoNCF1: TFloatField;
    master_creditoNOM_CLIENTE: TWideStringField;
    master_creditoDESCUENTO: TFloatField;
    master_creditoROTULO: TWideStringField;
    master_creditoNO_AUTORIZA_NCF: TFloatField;
    master_creditoMONTOFINANCIADO: TFloatField;
    master_creditoCUOTAS: TIntegerField;
    master_creditoINTERES: TFloatField;
    master_creditoDIRECCION: TWideStringField;
    master_creditoPAGADO: TFloatField;
    master_creditoLEYPROPINA: TFloatField;
    master_creditoCOMPROBANTE: TWideStringField;
    master_creditoTERMINAL: TWideStringField;
    master_creditoEFECTIVO: TFloatField;
    master_creditoDEVOLUCION1: TFloatField;
    master_creditoRESTANTE: TFloatField;
    master_creditoABONO: TFloatField;
    master_creditoCHEK: TWideStringField;
    master_creditoNO_RECIBO: TIntegerField;
    master_creditoPAGADOCXC: TFloatField;
    master_creditoMESES: TIntegerField;
    master_creditoDIAS: TIntegerField;
    master_creditoPENDIENTE: TFloatField;
    master_creditoESTADOPAGO: TWideStringField;
    master_creditoDEVOLUCION: TFloatField;
    master_creditoCONDICION_PAGO: TIntegerField;
    master_creditoFECHAVENCIMIENTO: TWideStringField;
    master_creditoCOMBO: TWideStringField;
    master_creditoCOBRADO: TIntegerField;
    master_creditoQUEES: TWideStringField;
    master_creditoUSUARIOID: TIntegerField;
    master_creditoCLIENTEID: TIntegerField;
    master_creditoCONDICIONVENTA: TWideStringField;
    master_creditoTIENDAID: TIntegerField;
    master_creditoPINREFERIDO: TWideStringField;
    master_creditoCLIENTENOMBRE: TWideStringField;
    master_creditoNOMBRES_EMP: TWideStringField;
    credito_print: TfrxDBDataset;
    print1: TfrxReport;
    gastos: TMenuItem;
    Reportes1: TMenuItem;
    RerpotesdeVentasporVecha1: TMenuItem;
    ReporteGeneraldeCXC1: TMenuItem;
    ReportedeGastosEmitidos1: TMenuItem;
    ReportedeCuadresdeCajaRealizada1: TMenuItem;
    PRINT0: TfrxReport;
    Master_cobroSUM: TFloatField;
    Master_cobroSUM_1: TFloatField;
    Master_cobroSUM_2: TFloatField;
    Master_cobroCLIENTEID: TIntegerField;
    Master_cobroCLIENTENOMBRE: TWideStringField;
    SumGastosSUMA: TFloatField;
    SumNCSUMA: TFloatField;
    Configuracin1: TMenuItem;
    cxDBImage1: TcxDBImage;
    DsConfiguracion: TDataSource;
    cxImage4: TcxImage;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxGroupBox1: TcxGroupBox;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    bfacturacion: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    Acesso1: TMenuItem;
    Herramientas1: TMenuItem;
    UnidaddeMedida1: TMenuItem;
    CategoriasdeArticulos1: TMenuItem;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton18: TdxBarLargeButton;
    CuentasxCobrar1: TMenuItem;
    ConsultarCXX1: TMenuItem;
    CrearRecibodePago1: TMenuItem;
    dxBarLargeButton23: TdxBarLargeButton;
    MantenimientodeGustos1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarSubItem2Click(Sender: TObject);
    procedure btnChildCloseClick(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLookupCombo1Change(Sender: TObject);
    procedure btnArchivedPropertiesClick(Sender: TObject);
    procedure dxBarLargeButton16Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnChangePasswordClick(Sender: TObject);
    procedure btnClientReviewClick(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxNavBar1Item4Click(Sender: TObject);
    procedure dxNavBar1Item6Click(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);
    procedure dxNavBar1Item12Click(Sender: TObject);
    procedure dxNavBar1Item14Click(Sender: TObject);
    procedure dxNavBar1Item15Click(Sender: TObject);
    procedure dxNavBar1Item16Click(Sender: TObject);
    procedure dxNavBar1Item10Click(Sender: TObject);
    procedure dxNavBar1Item18Click(Sender: TObject);
    procedure SalidadeMercancia1Click(Sender: TObject);
    procedure AgegrarModificar1Click(Sender: TObject);
    procedure AgregarModificarCliente1Click(Sender: TObject);
    procedure dxNavBar1Item19Click(Sender: TObject);
    procedure dxNavBar1Item20Click(Sender: TObject);
    procedure NotadeCrdito1Click(Sender: TObject);
    procedure CobrarCxC1Click(Sender: TObject);
    procedure gastosClick(Sender: TObject);
    procedure ReporteGeneraldeCXC1Click(Sender: TObject);
    procedure RerpotesdeVentasporVecha1Click(Sender: TObject);
    procedure ReportedeGastosEmitidos1Click(Sender: TObject);
    procedure ReportedeCuadresdeCajaRealizada1Click(Sender: TObject);
    procedure ConsultadeFacturas1Click(Sender: TObject);
    procedure AgregarModificar1Click(Sender: TObject);
    procedure Configuracin1Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure Acesso1Click(Sender: TObject);
    procedure UnidaddeMedida1Click(Sender: TObject);
    procedure CategoriasdeArticulos1Click(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure bfacturacionClick(Sender: TObject);
    procedure CrearRecibodePago1Click(Sender: TObject);
    procedure ConsultarCXX1Click(Sender: TObject);
    procedure Cotizacin1Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
    procedure dxBarLargeButton22Click(Sender: TObject);
    procedure dxBarLargeButton23Click(Sender: TObject);
    procedure MantenimientodeGustos1Click(Sender: TObject);

  private
    { Private declarations }
  public

     FActivated: Boolean;
    { Public declarations }
  end;

var
  inicio: Tinicio;

  W, H : integer;  //para coger resolución
  spCambioResolucion: string;

implementation

{$R *.dfm}

uses Unit20, Unit5, unit2, Unit3, tools, Unit12, Unit25, Unit1, Unit21, Unit18,
  Unit16, Unit23, Unit27, Unit28, Unit22, Unit30, Unit31, Unit15, Unit32,
  Unit29, Unit33, Unit34, Unit36, Unit37, Unit38, Unit39, Unit41, Unit43,
  Unit44, Unit14, Unit45, Unit48, Unit50, Unit51;

function NuevaRes(XRes, YRes: DWord): Integer;
var
  lpDevMode : TDeviceMode;
begin
  EnumDisplaySettings (nil, 0, lpDevMode);
  lpDevMode.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  lpDevMode.dmPelsWidth := XRes;
  lpDevMode.dmPelsHeight := YRes;
  NuevaRes := ChangeDisplaySettings (lpDevMode, 0)
end;


procedure Tinicio.Acesso1Click(Sender: TObject);
begin
frmusuario.showmodal;
end;

procedure Tinicio.AgegrarModificar1Click(Sender: TObject);
begin
FrmMAntArticulos.ShowModal;
end;

procedure Tinicio.AgregarModificar1Click(Sender: TObject);
begin
  FrmProvee.ShowModal;
end;

procedure Tinicio.AgregarModificarCliente1Click(Sender: TObject);
begin
FrmCliente.ShowModal;
end;

procedure Tinicio.bfacturacionClick(Sender: TObject);
begin
frmNC.ShowModal;
end;

procedure Tinicio.btnArchivedPropertiesClick(Sender: TObject);
begin
FrmEmpleados.showmodal;
end;

procedure Tinicio.btnChangePasswordClick(Sender: TObject);
begin
INICIO.Visible := FALSE;
DATOS.ZqUsuarios.Close;
DATOS.ZqUsuarios.OPEN;

Frmlogin.ShowModal;
end;

procedure Tinicio.btnChildCloseClick(Sender: TObject);
begin
SELF.Close;
end;

procedure Tinicio.btnClientReviewClick(Sender: TObject);
begin
FrmCliente.ShowModal;
end;

procedure Tinicio.CategoriasdeArticulos1Click(Sender: TObject);
begin
FmrMant_Categoria.showmodal;
end;

procedure Tinicio.CobrarCxC1Click(Sender: TObject);
begin
FrmGet_CXC.ShowModal;
end;

procedure Tinicio.Configuracin1Click(Sender: TObject);
begin
datos.Configuracion.Open;
FrmConfig.showmodal
end;

procedure Tinicio.ConsultadeFacturas1Click(Sender: TObject);
begin
frmConsultaFact.ShowModal;
end;

procedure Tinicio.ConsultarCXX1Click(Sender: TObject);
begin
FrmCxC.ShowModal;
end;

procedure Tinicio.Cotizacin1Click(Sender: TObject);
var
cero : string;
begin

with FrmNFact.numero1 do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(COTI_GEN, 1) from RDB$DATABASE');
     open;
  end;

 datos.FbqMaster_Fact.Open;
 FrmNFact.zqusuario.Open;
 FrmNFact.ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numero1gen_id.Value;


    if datos.FbqMaster_FactNO_FACT.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.FbqMaster_FactNO_FACT.Value >= 1000 then
        begin
           cero := '';
     end;

     datos.FbqMaster_FactNO_FACT1.Value := cero+intTostr(datos.FbqMaster_FactNO_FACT.Value);
     FrmNFact.RxDBComboBox1.ItemIndex := 0;

     FrmNFact.RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := false;
     FrmNFact.cxDBComboBox1.Enabled := false;

   //  FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact.cxDBComboBox1.ItemIndex := 1;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact.zqusuarionombres_emp.Value;
     datos.FbqMaster_FactROTULO.Value := 'COTIZACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;
    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Cotizacion';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Imprimir Cotizacion [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'NUEVO';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
   //  FrmNfact.cxButton5.Enabled := false;


FrmNFact.showmodal;


end;

procedure Tinicio.CrearRecibodePago1Click(Sender: TObject);
begin
FrmGet_CXC.ShowModal;
end;

procedure Tinicio.dxBarButton15Click(Sender: TObject);
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
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
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

//FrmArticulos.cxDBComboBox2.ItemIndex := 0;
FrmArticulos.ShowModal;

end;

procedure Tinicio.dxBarButton18Click(Sender: TObject);
begin
FrmGet_CXC.showmodal;
end;

procedure Tinicio.dxBarLargeButton10Click(Sender: TObject);
begin

frmConsultaFact.ShowModal;
end;

procedure Tinicio.dxBarLargeButton11Click(Sender: TObject);
 
begin
FrmGastos.ShowModal;
end;


procedure Tinicio.dxBarLargeButton12Click(Sender: TObject);
var
cero : string;
begin

with FrmNFact.numero1 do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(COTI_GEN, 1) from RDB$DATABASE');
     open;
  end;

 datos.FbqMaster_Fact.Open;
 FrmNFact.zqusuario.Open;
 FrmNFact.ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numero1gen_id.Value;


    if datos.FbqMaster_FactNO_FACT.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.FbqMaster_FactNO_FACT.Value >= 1000 then
        begin
           cero := '';
     end;

     datos.FbqMaster_FactNO_FACT1.Value := cero+intTostr(datos.FbqMaster_FactNO_FACT.Value);
     FrmNFact.RxDBComboBox1.ItemIndex := 0;

     FrmNFact.RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := false;
     FrmNFact.cxDBComboBox1.Enabled := false;

   //  FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact.cxDBComboBox1.ItemIndex := 1;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact.zqusuarionombres_emp.Value;
     DATOS.FbqMaster_FactCLIENTEID.Value := 3;
     datos.FbqMaster_FactCLIENTENOMBRE.Value := 'AL PORTADOR';
     datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
     datos.FbqMaster_FactROTULO.Value := 'COTIZACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;
    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Cotizacion';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Imprimir Cotizacion [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'NUEVO';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
   //  FrmNfact.cxButton5.Enabled := false;


FrmNFact.showmodal;


end;



procedure Tinicio.dxBarLargeButton13Click(Sender: TObject);
begin

  Frmcaja.showmodal;

end;


procedure Tinicio.dxBarLargeButton16Click(Sender: TObject);
begin
frmusuario.showmodal;
end;

procedure Tinicio.dxBarLargeButton18Click(Sender: TObject);
begin
FrmConsultaArticulos.showmodal;
end;

procedure Tinicio.dxBarLargeButton1Click(Sender: TObject);
begin
FrmMAntArticulos.ShowModal;
end;

procedure Tinicio.dxBarLargeButton22Click(Sender: TObject);
var
  h:THandle;
  r, r2: TRect;
  n: Integer;
begin
  // ejecutar la calc
  WinExec('Calc.exe', SW_SHOW);
  // buscar la ventana de la calculadora
  h := FindWindow('scicalc', nil );
  // Obtener parámetros de la ventana
  GetWindowRect(h, r);
  Systemparametersinfo(SPI_GETWORKAREA, 0, @r2, 0);
  // Moverla a la pos 5,5 y respetando las dimensiones que tenía
  MoveWindow(h,
              {Margen izquierdo} 100,
              {margen derecho} 100,
              r.Right - r.Left,
              r.Bottom - r.Top,
              true);

end;

procedure Tinicio.dxBarLargeButton23Click(Sender: TObject);
begin
FrmRxProveedor.showmodal;
end;

procedure Tinicio.dxBarLargeButton2Click(Sender: TObject);
begin
FrmEmpleados.showmodal;

{if Not Assigned(FrmCatProducto) then
  begin

  FrmCatProducto :=TFrmCatProducto.create(Self);

  //  frmCU.FormStyle := fsMDIForm;
  end;

  dxBarButton11.Visible := ivAlways;
  dxBarButton12.Visible := ivAlways;
  dxBarButton13.Visible := ivAlways;
  dxBarButton14.Visible := ivAlways;

  BarOperaciones.Visible := false;

 }

end;

procedure Tinicio.dxBarLargeButton3Click(Sender: TObject);
begin
FrmCliente.ShowModal;
end;

procedure Tinicio.dxBarLargeButton4Click(Sender: TObject);
begin
FrmProvee.showmodal;
end;

procedure Tinicio.dxBarLargeButton5Click(Sender: TObject);
begin
FrmCGastos.showmodaL;
end;

procedure Tinicio.dxBarLargeButton6Click(Sender: TObject);
begin
FrmCombo.showmodal;
end;

procedure Tinicio.dxBarLargeButton7Click(Sender: TObject);
begin
frmMantCombo.ShowModal;
end;

procedure Tinicio.dxBarLargeButton8Click(Sender: TObject);
begin
FrmAjuste.showmodal;
end;

procedure Tinicio.dxBarLargeButton9Click(Sender: TObject);
begin
FrmAdmInventario.showmodal;
end;

procedure Tinicio.dxBarLookupCombo1Change(Sender: TObject);
begin
//AsignaTienda :=  dxBarLookupCombo1.KeyValue;


with datos.tienda do
  begin
    close;
    sql.Clear;
    sql.Add('select * from tienda');
    sql.Add('where tiendaid =:pp');
    params[0].Value := AsignaTienda;
    open;
  end;
end;

procedure Tinicio.dxBarSubItem2Click(Sender: TObject);
begin
if Not Assigned(FrmCatProducto) then
 begin
//   FrmCatProducto.Create(self).Show;
     FrmCatProducto  :=TFrmCatProducto.create(Self);
     //frmCU.FormStyle := fsMDIForm;
 end;
end;

procedure Tinicio.dxNavBar1Item10Click(Sender: TObject);
var
cero : string;
begin

with FrmNFact.numero1 do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(COTI_GEN, 1) from RDB$DATABASE');
     open;
  end;

 datos.FbqMaster_Fact.Open;
 FrmNFact.zqusuario.Open;
 FrmNFact.ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numero1gen_id.Value;


    if datos.FbqMaster_FactNO_FACT.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.FbqMaster_FactNO_FACT.Value >= 1000 then
        begin
           cero := '';
     end;

     datos.FbqMaster_FactNO_FACT1.Value := cero+intTostr(datos.FbqMaster_FactNO_FACT.Value);
     FrmNFact.RxDBComboBox1.ItemIndex := 0;

     FrmNFact.RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := false;
     FrmNFact.cxDBComboBox1.Enabled := false;

   //  FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact.cxDBComboBox1.ItemIndex := 1;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact.zqusuarionombres_emp.Value;
     datos.FbqMaster_FactROTULO.Value := 'COTIZACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;
    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Cotizacion';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Imprimir Cotizacion [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'NUEVO';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
   //  FrmNfact.cxButton5.Enabled := false;


FrmNFact.showmodal;


end;

procedure Tinicio.dxNavBar1Item12Click(Sender: TObject);
begin
 frmConsultaFact.showmodal;
end;

procedure Tinicio.dxNavBar1Item14Click(Sender: TObject);
begin
FrmCxC.showmodal;
end;

procedure Tinicio.dxNavBar1Item15Click(Sender: TObject);
begin
FrmGet_CXC.showmodal;
end;

procedure Tinicio.dxNavBar1Item16Click(Sender: TObject);
begin
FrmAdmInventario.showmodal;
end;

procedure Tinicio.dxNavBar1Item18Click(Sender: TObject);
begin
    FrmTurno.showmodal;
end;

procedure Tinicio.dxNavBar1Item19Click(Sender: TObject);
begin
FrmCGastos.showmodaL;
end;

procedure Tinicio.dxNavBar1Item20Click(Sender: TObject);
begin
FrmGastos.showmodal;
end;

procedure Tinicio.dxNavBar1Item2Click(Sender: TObject);
begin
frmusuario.showmodal;
end;

procedure Tinicio.dxNavBar1Item4Click(Sender: TObject);
begin
FrmArticulos.ShowModal;
end;

procedure Tinicio.dxNavBar1Item6Click(Sender: TObject);
begin
frmCat.showmodal;
end;

procedure Tinicio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if spCambioResolucion = 'Si' then
    NuevaRes(Ancho, Alto);
action := cafree;
end;

procedure Tinicio.FormCreate(Sender: TObject);
begin

Ancho:= GetSystemMetrics(SM_CXSCREEN);
Alto:= GetSystemMetrics(SM_CYSCREEN);

 Application.HintHidePause := 1500000;
  W := Screen.Width;
  H := Screen.Height;
  //spCambioResolucion := 'No';
  //si es 800 por 600 se cambia a 1024 por 768 y se anota el cambio
//  if (W <> 1280) and (H = 720) then
//    begin
      NuevaRes(1280, 760);
      spCambioResolucion := 'Si';
  //  end;


end;

procedure Tinicio.FormShow(Sender: TObject);
begin
datos.ZUconfiguracion.Close;
datos.ZUconfiguracion.Open;
qturnosActivos.Open;
Frmlogin.ShowModal;
//MainRibbon.Contexts.ActiveContext;
//MainRibbon.Tabs.Items[0].Active := true;
 //if datos.ZUconfiguracionTIPO_FACTURACION.Value = 1 then
  //  begin
  ///      bfacturacion.Enabled := false;
 //   end else begin
 //       bfacturacion.Enabled  := true;
 ///   end;

end;

procedure Tinicio.gastosClick(Sender: TObject);
begin
frmGastos.showmodal;
end;

procedure Tinicio.MantenimientodeGustos1Click(Sender: TObject);
begin
frmgustos.showmodal;
end;

procedure Tinicio.NotadeCrdito1Click(Sender: TObject);
begin
frmNC.showmodal;
end;

procedure Tinicio.ReportedeCuadresdeCajaRealizada1Click(Sender: TObject);
begin
FrmRVentas.Caption := 'Reporte de Ventas Crédito x Fecha';
FrmRVentas.Edit1.Text := 'CREDITO';
FrmRVentas.showmodal;
end;

procedure Tinicio.ReportedeGastosEmitidos1Click(Sender: TObject);
begin
FrmRVentas.Caption := 'Reporte de Gastos x Fecha';
FrmRVentas.Edit1.Text := 'GASTOS';
FrmRVentas.showmodal;
end;

procedure Tinicio.ReporteGeneraldeCXC1Click(Sender: TObject);
begin

 with master_cobro do
      begin
        close;
        sql.clear;
        sql.add('select sum(a.montopago), sum(a.abono), sum(a.pendiente),a.clienteid,b.nombres ClienteNombre from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.tipo =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        sql.add('group by a.clienteid,b.nombres');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := 'CREDITO';
        open;
      end;

       print0.PrepareReport(true);
       print0.ShowPreparedReport;
end;

procedure Tinicio.RerpotesdeVentasporVecha1Click(Sender: TObject);
begin
FrmRVentas.Caption := 'Reporte de Ventas x Fecha';
FrmRVentas.Edit1.Text := 'VENTAS';
FrmRVentas.showmodal;
end;

procedure Tinicio.SalidadeMercancia1Click(Sender: TObject);
begin
FrmDescarga.showmodal;
end;
procedure Tinicio.UnidaddeMedida1Click(Sender: TObject);
begin
FrmUnidad.showmodal;
end;

end.
