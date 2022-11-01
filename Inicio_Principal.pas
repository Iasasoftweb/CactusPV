unit Inicio_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, vcl.fclabel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxStatusBar, dxRibbonStatusBar, Data.DB,
  ZAbstractRODataset, ZDataset, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ImgList,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, tools, unit2, vcl.fcpanel,
  cxContainer, cxEdit, dxGDIPlusClasses, cxImage, cxLabel, cxGroupBox, RxClock,
  AdvSmoothButton, AdvSmoothToggleButton, AdvAppStyler, AdvShapeButton,
  AdvToolBar, AdvGlowButton, AdvMenus, AdvToolBarStylers, frxClass, frxDBSet,
  cxDBEdit, AdvSmoothDock, cxCalendar, cxDBLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  dxSkinTheBezier, cxImageList;

type
  TFrmInicioHeladeria = class(TForm)
    Panel1: TPanel;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    ZqTurno: TZReadOnlyQuery;
    ZqTurnoTURNOID: TIntegerField;
    ZqTurnoUSUARIOID: TIntegerField;
    ZqTurnoEFECTIVO_INICIAL: TFloatField;
    ZqTurnoESTADO: TIntegerField;
    ZqTurnoFECHA: TDateField;
    SumNC: TZReadOnlyQuery;
    SumNCSUMA: TFloatField;
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
    maxcaja: TZReadOnlyQuery;
    maxcajaMAX: TIntegerField;
    maxventa: TZReadOnlyQuery;
    maxventaVENTA: TFloatField;
    sumcobro: TZReadOnlyQuery;
    sumcobroCOBRO: TFloatField;
    SumGastos: TZReadOnlyQuery;
    SumGastosSUMA: TFloatField;
    RibbonImages32: TcxImageList;
    RibbonImages16: TcxImageList;
    Toolbar16: TcxImageList;
    Toolbar32: TcxImageList;
    Label1: TLabel;
    ZqTurnoIDTURNO: TIntegerField;
    ZqTurnoCAJA: TWideStringField;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    cxButton2: TcxButton;
    DsEmpleados: TDataSource;
    menu: TAdvToolBarPager;
    AdvToolBarPager11: TAdvPage;
    AdvToolBarPager12: TAdvPage;
    AdvToolBar1: TAdvToolBar;
    Btfactura: TAdvGlowButton;
    AdvToolBar2: TAdvToolBar;
    AdvShapeButton1: TAdvShapeButton;
    cxButton5: TAdvGlowButton;
    cxButton8: TAdvGlowButton;
    AdvToolBar3: TAdvToolBar;
    AdvMainMenu1: TAdvMainMenu;
    Ventas1: TMenuItem;
    icketVentaporMostrador1: TMenuItem;
    Factura1: TMenuItem;
    AdvMenuStyler1: TAdvMenuStyler;
    AdvToolBar4: TAdvToolBar;
    AdvFormStyler1: TAdvFormStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Herramientas: TMenuItem;
    Opciones: TMenuItem;
    Mantenimiento1: TMenuItem;
    Proveedor1: TMenuItem;
    AdvToolBar5: TAdvToolBar;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowMenuButton1: TAdvGlowMenuButton;
    AdvPopupMenu1: TAdvPopupMenu;
    ImpresondeArticulosInventarioManual1: TMenuItem;
    ArticulosparaPedidos1: TMenuItem;
    Reportes1: TMenuItem;
    MercanciaxProveedor1: TMenuItem;
    ReportedeVentasCrditoporFecha1: TMenuItem;
    credito_print: TfrxDBDataset;
    print1: TfrxReport;
    PRINT0: TfrxReport;
    Master_cobro: TZReadOnlyQuery;
    Master_cobroSUM: TFloatField;
    Master_cobroSUM_1: TFloatField;
    Master_cobroSUM_2: TFloatField;
    Master_cobroCLIENTEID: TIntegerField;
    Master_cobroCLIENTENOMBRE: TWideStringField;
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
    ReportedeGastosEmitidos1: TMenuItem;
    ReportedeMercanciaInvManual1: TMenuItem;
    AdvGlowMenuButton2: TAdvGlowMenuButton;
    AdvGlowMenuButton3: TAdvGlowMenuButton;
    imagen_frontal: TcxDBImage;
    AdvGlowButton2: TAdvGlowButton;
    UnidadesdeMedidas1: TMenuItem;
    DsConfiguracion: TDataSource;
    AdvGlowMenuButton4: TAdvGlowMenuButton;
    AdvGlowMenuButton5: TAdvGlowMenuButton;
    ConceptosdeGastos1: TMenuItem;
    AdvGlowMenuButton6: TAdvGlowMenuButton;
    AdvGlowMenuButton7: TAdvGlowMenuButton;
    AdvGlowMenuButton8: TAdvGlowMenuButton;
    UsuariodelSistema1: TMenuItem;
    Articulos1: TMenuItem;
    AgregarModificarArticulos1: TMenuItem;
    DescargarArticulodelInventario1: TMenuItem;
    Clientes1: TMenuItem;
    Empleados1: TMenuItem;
    Proveedores1: TMenuItem;
    Ventas2: TMenuItem;
    Inventario1: TMenuItem;
    ReportedeArticulosVendidoporFecha1: TMenuItem;
    ZqTurnoHORA: TTimeField;
    AdvSmoothDock1: TAdvSmoothDock;
    RxClock1: TRxClock;
    cxDBLabel1: TcxDBLabel;
    AdvGlowMenuButton10: TAdvGlowMenuButton;
    fecha: TcxTextEdit;
    AdvGlowMenuButton9: TAdvGlowMenuButton;
    ReportedeArticulosVendidoporFecha2: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    procedure FormShow(Sender: TObject);
    procedure ç(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTfacturaClick(Sender: TObject);
    procedure BtVentasClick(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButtons4Click(Sender: TObject);
    procedure icketVentaporMostrador1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure OpcionesClick(Sender: TObject);
    procedure Proveedor1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowMenuButton1Click(Sender: TObject);
    procedure AdvToolBarButton1Click(Sender: TObject);
    procedure MercanciaxProveedor1Click(Sender: TObject);
    procedure ReportedeVentasCrditoporFecha1Click(Sender: TObject);
    procedure ReporteGeneraldeCXC1Click(Sender: TObject);
    procedure ReportedeGastosEmitidos1Click(Sender: TObject);
    procedure ReportedeMercanciaInvManual1Click(Sender: TObject);
    procedure AdvGlowMenuButton2Click(Sender: TObject);
    procedure AdvGlowMenuButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure UnidadesdeMedidas1Click(Sender: TObject);
    procedure AdvGlowMenuButton4Click(Sender: TObject);
    procedure AdvGlowMenuButton5Click(Sender: TObject);
    procedure ConceptosdeGastos1Click(Sender: TObject);
    procedure AdvGlowMenuButton6Click(Sender: TObject);
    procedure AdvGlowMenuButton7Click(Sender: TObject);
    procedure AdvGlowMenuButton8Click(Sender: TObject);
    procedure UsuariodelSistema1Click(Sender: TObject);
    procedure DescargarArticulodelInventario1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Empleados1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure ReportedeArticulosVendidoporFecha1Click(Sender: TObject);
    procedure AdvSmoothDock1ItemClick(Sender: TObject; ItemIndex: Integer);
    procedure AdvGlowMenuButton9Click(Sender: TObject);
    procedure AdvGlowMenuButton10Click(Sender: TObject);
    procedure AgregarModificarArticulos1Click(Sender: TObject);
    procedure ReportedeArticulosVendidoporFecha2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInicioHeladeria: TFrmInicioHeladeria;
   W, H : integer;  //para coger resolución
  spCambioResolucion: string;

implementation

{$R *.dfm}

uses Unit12, Unit52, Unit33, Unit1, Unit38, Unit22, Unit5, Unit48, Unit30,
  Unit14, Unit43, Unit29, Unit28, Unit32, Unit45, Unit50, Unit41, Unit55,
  Unit58, Unit59, Unit31, Unit44, Unit39, Unit37, Unit36, Unit16, Unit18,
  Unit34, Unit25, Unit3, Unit60, Unit61, Unit62;

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

procedure TFrmInicioHeladeria.ç(Sender: TObject);
begin
FrmEmpleados.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowButton1Click(Sender: TObject);
begin
FrmMAntArticulos.ShowModal;
end;

procedure TFrmInicioHeladeria.AdvGlowButton2Click(Sender: TObject);
begin
frmConsultaFact.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowButton3Click(Sender: TObject);
begin

FrmNFact.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowButton4Click(Sender: TObject);
begin
frmMantCombo.ShowModal;
end;

procedure TFrmInicioHeladeria.AdvGlowButtons4Click(Sender: TObject);
begin

             with zqturno do
                 begin
                   close;
                   sql.Clear;
                   sql.Add('select * from turnos');
                   sql.Add('where estado =:Est');
                   sql.Add('and usuarioId =:Usua');
                   params[0].Value := 1;
                   params[1].Value := datos.ZqUsuariosUSUARIOID.Value;
                   open;
                end;

               //;

with cajacuadre do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,c.nombres_emp from cuadre_caja a');
    sql.Add('left join musuario b On a.usaurioid = b.usuarioid');
    sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
    sql.Add('where a.fecha=:fecha');
    sql.Add('and a.USAURIOID =:usaurio');
    params[0].Value := zqturnofecha.Value;
    params[1].Value := datos.ZqUsuariosUSUARIOID.Value;
    open;
  end;

  if cajacuadre.RecordCount = 0 then begin
  with maxcaja do
  begin
    close;
    open;
  end;

  datos.zcaja.Open;
  datos.zcaja.Insert;
  datos.zcajaCUADRE1.Value := maxcajamax.Value + 1;
  datos.zcajaFECHA.Value := zqturnofecha.Value;
  datos.zcajaUSAURIOID.Value := zqturnoUSUARIOID.Value;
  datos.zcaja.Edit;
  datos.zcajaMONTOINICIAL.Value := zqturnoefectivo_inicial.Value;
  datos.zcajaTOTAL_EFECTIVO.Value := (datos.zcajaMONTOINICIAL.Value + (datos.zcajaFECTIVO.Value - datos.zcajaTOTAL_GASTOS.Value));
  datos.zcajaESTADO.Value := 1;
  datos.zcajaESTADO_1.Value := 'NO';
 // datos.zcajaMONTOINICIAL.Value := zqturnoefectivo_inicial.Value;

  ///*********************** Incio de Resultados

with maxventa do
  begin
    close;
    params[0].Value := zqturnoUSUARIOID.Value;
    open;
  end;

 with sumcobro do
   begin
     close;
     open;
   end;


    with sumGastos do
   begin
     close;
     open;
   end;

   with sumnc do
   begin
     close;
     open;
   end;


  datos.zcajaVENTAS.Value     := maxventaventa.Value;
  datos.zcajaCOBRANZAS.Value  := sumcobrocobro.Value;
  datos.zcajaFECTIVO.Value    := datos.zcajaVENTAS.Value + datos.zcajaCOBRANZAS.Value;
  datos.zcajaTARJETA.Value    := 0.00;
  datos.zcajaCHEQUE.Value     := 0.00;
  datos.zcajaNOTACREDITO.Value := 0.00;
  datos.zcajaGASTOS.Value     := sumgastossuma.Value;
  datos.zcajaTOTAL_GASTOS.Value := datos.zcajaGASTOS.Value + datos.zcajaNOTACREDITO.Value;
  datos.zcajaTOTAL_EFECTIVO.Value := (datos.zcajaMONTOINICIAL.Value + (datos.zcajaFECTIVO.Value - datos.zcajaTOTAL_GASTOS.Value));
  datos.zcajaNOTACREDITO.Value := sumncsuma.Value;
  // datos.zcaja.Refresh;
  /// **************************** FIN
  ///

FrmCaja.showmodal;

end else begin

with datos.zcaja do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,c.nombres_emp from cuadre_caja a');
    sql.Add('left join musuario b On a.usaurioid = b.usuarioid');
    sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
    sql.Add('where a.fecha=:fecha');
    sql.Add('and a.USAURIOID =:usuario');
    params[0].Value := zqturnofecha.Value;
   params[1].Value := datos.ZqUsuariosUSUARIOID.Value;
    open;
  end;

   ///*********************** Incio de Resultados

with maxventa do
  begin
    close;
    params[0].Value := datos.ZqUsuariosUSUARIOID.Value;
    open;
  end;

 with sumcobro do
   begin
     close;
     open;
   end;

    with sumGastos do
   begin
     close;
     open;
   end;
  datos.zcaja.Edit;
    datos.zcajaVENTAS.Value     := maxventaventa.Value;
  datos.zcajaCOBRANZAS.Value  := sumcobrocobro.Value;
  datos.zcajaFECTIVO.Value    := datos.zcajaVENTAS.Value + datos.zcajaCOBRANZAS.Value;
  datos.zcajaTARJETA.Value    := 0.00;
  datos.zcajaCHEQUE.Value     := 0.00;
  datos.zcajaNOTACREDITO.Value := 0.00;
  datos.zcajaGASTOS.Value     := sumgastossuma.Value;
  datos.zcajaTOTAL_GASTOS.Value := datos.zcajaGASTOS.Value + datos.zcajaNOTACREDITO.Value;
  datos.zcajaTOTAL_EFECTIVO.Value := (datos.zcajaMONTOINICIAL.Value + (datos.zcajaFECTIVO.Value - datos.zcajaTOTAL_GASTOS.Value));

 FrmCaja.showmodal;
end;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton10Click(Sender: TObject);
begin
FrmDescarga.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton1Click(Sender: TObject);
begin
FrmConsultaArticulos.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton2Click(Sender: TObject);
begin
FrmRMecanciaInvManual.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton3Click(Sender: TObject);
begin
FrmPedido.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton4Click(Sender: TObject);
begin
frmNC.ShowModal;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton5Click(Sender: TObject);
begin
FrmGastos.ShowModal;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton6Click(Sender: TObject);
var
cero : string;
begin

with FrmNFact_normal.numero1 do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(COTI_GEN, 1) from RDB$DATABASE');
     open;
  end;

 datos.FbqMaster_Fact.Open;
 FrmNFact_normal.zqusuario.Open;
 FrmNFact_normal.ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := FrmNFact_normal.numero1gen_id.Value;


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
   //  FrmNFact_normal.RxDBComboBox1.ItemIndex := 0;

   //  FrmNFact_normal.RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := false;
     FrmNFact_normal.cxDBComboBox1.Enabled := false;

   //  FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact_normal.cxDBComboBox1.ItemIndex := 1;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact_normal.zqusuarionombres_emp.Value;
     DATOS.FbqMaster_FactCLIENTEID.Value := 3;
     datos.FbqMaster_FactCLIENTENOMBRE.Value := 'AL PORTADOR';
     datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
     datos.FbqMaster_FactROTULO.Value := 'COTIZACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;
    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact_normal.b1.Enabled := false;
     FrmNFact_normal.b2.Enabled := true;
     FrmNFact_normal.b2.Caption := 'Cancelar Cotizacion';
     FrmNFact_normal.b3.Enabled := true;
     FrmNFact_normal.b3.Caption := 'Imprimir Cotizacion [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact_normal.b6.Enabled := FALSE;
     FrmNFact_normal.Edit3.Text := 'NUEVO';
     FrmNFact_normal.opmaster.Enabled := true;
   //  FrmNFact_normal.opdetalle.Enabled := true;
   //  FrmNfact.cxButton5.Enabled := false;


FrmNFact_normal.showmodal;



end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton7Click(Sender: TObject);
begin
FrmCxC.ShowModal;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton8Click(Sender: TObject);
begin
FrmGet_CXC.ShowModal;
end;

procedure TFrmInicioHeladeria.AdvGlowMenuButton9Click(Sender: TObject);
begin
FrmConsultaSuplidores.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowButton5Click(Sender: TObject);
begin
//frmturno.showmodal;
FmrMant_Categoria.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowButton6Click(Sender: TObject);
begin
FrmAjuste.showmodal;
end;

procedure TFrmInicioHeladeria.AdvGlowButton8Click(Sender: TObject);
begin
FrmAdmInventario.showmodal;
end;

procedure TFrmInicioHeladeria.AdvSmoothButton1Click(Sender: TObject);
begin
FrmArticulos.showmodal;
end;

procedure TFrmInicioHeladeria.AdvSmoothDock1ItemClick(Sender: TObject;
  ItemIndex: Integer);
  var
  time, clickeditem: integer;
  h:THandle;
  r, r2: TRect;
  n: Integer;
begin

clickeditem := 0 ;


if advsmoothdock1.SelectedItemIndex = 0 then
      begin
            FrmNFact_normal.showmodal;
      end;

if advsmoothdock1.SelectedItemIndex = 1 then
      begin
           FrmDescarga.showmodal;
      end;


if advsmoothdock1.SelectedItemIndex = 2 then
      begin
          FrmRVentas.Caption := 'Reporte de Ventas x Fecha';
          FrmRVentas.Edit1.Text := 'VENTAS';
          FrmRVentas.showmodal;
      end;

if advsmoothdock1.SelectedItemIndex = 3 then
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



end;

procedure TFrmInicioHeladeria.AdvToolBarButton1Click(Sender: TObject);
begin
FrmConsultaArticulos.showmodal;
end;

procedure TFrmInicioHeladeria.AgregarModificarArticulos1Click(Sender: TObject);
begin
FrmMAntArticulos.ShowModal;
end;

procedure TFrmInicioHeladeria.BTfacturaClick(Sender: TObject);
begin
FrmNFact_normal.showmodal;
end;

procedure TFrmInicioHeladeria.BtVentasClick(Sender: TObject);
begin
FrmNFact.showmodal;
end;

procedure TFrmInicioHeladeria.Clientes1Click(Sender: TObject);
begin
FrmCliente.ShowModal;
end;

procedure TFrmInicioHeladeria.ConceptosdeGastos1Click(Sender: TObject);
begin
FrmCGastos.showmodal;
end;

procedure TFrmInicioHeladeria.cxButton19Click(Sender: TObject);
begin
FrmMturnos.showmodal;
end;

procedure TFrmInicioHeladeria.cxButton8Click(Sender: TObject);
begin
FrmTurno.ShowModal;
end;

procedure TFrmInicioHeladeria.DescargarArticulodelInventario1Click(
  Sender: TObject);
begin
FrmDescarga.showmodal;
end;

procedure TFrmInicioHeladeria.Empleados1Click(Sender: TObject);
begin
FrmEmpleados.showmodal;
end;

procedure TFrmInicioHeladeria.FormCreate(Sender: TObject);
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



procedure TFrmInicioHeladeria.FormShow(Sender: TObject);
var
fecha1 : string;
begin

fecha1:= FormatDateTime('dddddd', Now);


datos.ZUconfiguracion.Close;
datos.ZUconfiguracion.Open;
menu.AdvPages[0].Show;
//qturnosActivos.Open;
frmLogin.ShowModal;

  FrmInicioHeladeria.imagen_frontal.Left := datos.ZUconfiguracionLEFT_IMAGEN.Value;
  FrmInicioHeladeria.imagen_frontal.Top := datos.ZUconfiguracionRIGHT_IMAGEN.Value;
  FrmInicioHeladeria.imagen_frontal.Width := datos.ZUconfiguracionANCHO_IMG_FRONTAL.Value;
  FrmInicioHeladeria.imagen_frontal.Height := datos.ZUconfiguracionALTO_IMG_FRONTAL.Value;
  fecha.Text := fecha1;


//MainRibbon.Contexts.A
end;

procedure TFrmInicioHeladeria.icketVentaporMostrador1Click(Sender: TObject);
begin
FrmNFact.showmodal;
end;

procedure TFrmInicioHeladeria.MercanciaxProveedor1Click(Sender: TObject);
begin
FrmRVentas.Caption := 'Reporte de Ventas x Fecha';
FrmRVentas.Edit1.Text := 'VENTAS';
FrmRVentas.showmodal;
end;

procedure TFrmInicioHeladeria.OpcionesClick(Sender: TObject);
begin
FrmConfig.showmodal;
end;

procedure TFrmInicioHeladeria.Proveedor1Click(Sender: TObject);
begin
  FrmProvee.showmodal;
end;

procedure TFrmInicioHeladeria.Proveedores1Click(Sender: TObject);
begin
FrmProvee.showmodal;
end;

procedure TFrmInicioHeladeria.ReportedeArticulosVendidoporFecha1Click(
  Sender: TObject);
begin

//FrmRVFecha.Op_cat.visible := false;
FrmRVFecha.showmodal;
end;

procedure TFrmInicioHeladeria.ReportedeArticulosVendidoporFecha2Click(
  Sender: TObject);
begin
//FrmRVFecha.Op_cat.visible := true;
FrmRVFecha.showmodal;

end;

procedure TFrmInicioHeladeria.ReportedeGastosEmitidos1Click(Sender: TObject);
begin
FrmRVentas.Caption := 'Reporte de Gastos x Fecha';
FrmRVentas.Edit1.Text := 'GASTOS';
FrmRVentas.showmodal;
end;

procedure TFrmInicioHeladeria.ReportedeMercanciaInvManual1Click(
  Sender: TObject);
begin
FrmRMecanciaInvManual.showmodal;
end;

procedure TFrmInicioHeladeria.ReportedeVentasCrditoporFecha1Click(
  Sender: TObject);
begin
FrmRVentas.Caption := 'Reporte de Ventas Crédito x Fecha';
FrmRVentas.Edit1.Text := 'CREDITO';
FrmRVentas.showmodal;
end;

procedure TFrmInicioHeladeria.ReporteGeneraldeCXC1Click(Sender: TObject);
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

procedure TFrmInicioHeladeria.UnidadesdeMedidas1Click(Sender: TObject);
begin
     FrmUnidad.showmodal;
end;

procedure TFrmInicioHeladeria.UsuariodelSistema1Click(Sender: TObject);
begin
   frmusuario.showmodal;
end;

end.
