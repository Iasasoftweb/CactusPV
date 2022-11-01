unit Unit63;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvToolBar, AdvOfficeStatusBar,
  AdvAppStyler, Vcl.ImgList, cxGraphics, AdvShapeButton, AdvToolBarStylers,
  AdvGlowButton, AdvPreviewMenu, AdvPreviewMenuStylers, AdvOfficeTabSet,
  AdvTabSet, AdvMenus, AdvMenuStylers, Vcl.StdCtrls, AdvOfficeSelectors,
  AdvSmoothPageSlider, AdvSmoothProgressBar, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxLabel, cxDBLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBEdit, Vcl.ExtCtrls, RxClock, cxCurrencyEdit,
  Data.DB, ZAbstractRODataset, ZDataset, Vcl.Menus, cxButtons, cxStyles,
   dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxGDIPlusClasses, vcl.fcimager, cxImage, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxGaugeControl, TypInfo;

type
  TInicioMDI = class (TForm)
//  TInicioMDI = class helper for TScreen
    barrastatus: TAdvOfficeStatusBar;
    RibbonImages32: TcxImageList;
    MenuAv: TAdvToolBarPager;
    AdvToolBarPager11: TAdvPage;
    AdvToolBarPager12: TAdvPage;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar4: TAdvToolBar;
    AdvGlowButton15: TAdvGlowButton;
    AdvShapeButton1: TAdvShapeButton;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvGlowButton21: TAdvGlowButton;
    AdvAppStyler1: TAdvAppStyler;
    ZqconsultaUS: TZReadOnlyQuery;
    ZqconsultaRD: TZReadOnlyQuery;
    DsConfiguracion: TDataSource;
    BtPVentas: TAdvGlowButton;
    ZqconsultaUSSUMA: TFloatField;
    ZqconsultaRDSUMA: TFloatField;
    RibbonImages16: TcxImageList;
    AdvAppStyler2: TAdvAppStyler;
    AdvFormStyler1: TAdvFormStyler;
    cxButton1: TcxButton;
    Button1: TButton;
    Menu1: TAdvMainMenu;
    Repoortes1: TMenuItem;
    ReportedeGastosEmitidos1: TMenuItem;
    ConsultarCierresAnteriores1: TMenuItem;
    N1: TMenuItem;
    ReportedeVentasxFecha1: TMenuItem;
    ArticulosVendidosxFecha1: TMenuItem;
    ReportexVendedor1: TMenuItem;
    ReportedeComprasxClientes1: TMenuItem;
    N2: TMenuItem;
    ReportedeCatalogos1: TMenuItem;
    ReporteInventarioManual1: TMenuItem;
    ReportePedidoProductos1: TMenuItem;
    Utilidad1: TMenuItem;
    Analisis1: TMenuItem;
    UtilidadBruta1: TMenuItem;
    AdvPage1: TAdvPage;
    AdvToolBar5: TAdvToolBar;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvToolBar7: TAdvToolBar;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    UnidadesdeMedida1: TMenuItem;
    CambiardeUsuario1: TMenuItem;
    Mantenimientos: TMenuItem;
    Clientes1: TMenuItem;
    Empleados1: TMenuItem;
    Proveedores1: TMenuItem;
    Inventarios1: TMenuItem;
    AdvToolBar8: TAdvToolBar;
    AdvGlowButton24: TAdvGlowButton;
    Almacenes1: TMenuItem;
    BtAlmacen: TAdvGlowButton;
    AdvPage2: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvGlowButton2: TAdvGlowButton;
    BtRetirarEfectivo: TAdvGlowButton;
    BTCerrarTurno: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    PBTInventario: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    PTPRoductos: TAdvGlowButton;
    N4: TMenuItem;
    ProductosBajoInventario1: TMenuItem;
    ConsultaMovimientos1: TMenuItem;
    ReportedeInventario1: TMenuItem;
    BTComproEmitidos: TAdvGlowButton;
    N5: TMenuItem;
    ComprobantesEmitidos1: TMenuItem;
    AdvToolBar6: TAdvToolBar;
    AdvGlowButton22: TAdvGlowButton;
    PtContailidad: TAdvGlowButton;
    PTEstadistica: TAdvGlowButton;
    PTPRocesos: TAdvGlowButton;
    Procesor1: TMenuItem;
    Pedido1: TMenuItem;
    NotadeCredito1: TMenuItem;
    Ventas1: TMenuItem;
    N6: TMenuItem;
    ConceptosdeGastos1: TMenuItem;
    Cxc1: TMenuItem;
    EstadodeCuenta1: TMenuItem;
    Realizarpagos1: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
    ReportedeComisinxServicios1: TMenuItem;
    Moneda1: TMenuItem;
    Contabilidad: TMenuItem;
    Bancos1: TMenuItem;
    ransaciones1: TMenuItem;
    Balances1: TMenuItem;
    MantdeBancos1: TMenuItem;
    CxP1: TMenuItem;
    CuentasxProveedor1: TMenuItem;
    azadeCambio1: TMenuItem;
    Usuarios1: TMenuItem;
    Paramatros1: TMenuItem;
    ConsultadePagosRealizados1: TMenuItem;
    N7: TMenuItem;
    ActualizarBalancesPendientes1: TMenuItem;
    N8: TMenuItem;
    cxImage1: TcxImage;
    RMA1: TMenuItem;
    MantenimientodeEquipos1: TMenuItem;
    ControldeEntrada1: TMenuItem;
    AdvGlowButton5: TAdvGlowButton;
    Notarios1: TMenuItem;
    Representante: TMenuItem;
    N9: TMenuItem;
    Categorias1: TMenuItem;
    procedure PTPRoductosClick(Sender: TObject);
     procedure AlCerrar( Sender: TObject; var Action: TCloseAction );
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton19Click(Sender: TObject);
    procedure AdvGlowButton20Click(Sender: TObject);
    procedure AdvPreviewMenu1MenuItems0SubItems1Click(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure AdvGlowButton15Click(Sender: TObject);
    procedure AdvGlowButton16Click(Sender: TObject);
    procedure AdvPreviewMenu1MenuItems1SubItems0Click(Sender: TObject);
    procedure AdvGlowButton21Click(Sender: TObject);
    procedure AdvGlowButton22Click(Sender: TObject);
    procedure AdvGlowButton24Click(Sender: TObject);
    procedure BtPVentasClick(Sender: TObject);
    procedure BtAlmacenClick(Sender: TObject);
    procedure BtRetirarEfectivoClick(Sender: TObject);
    procedure BTCerrarTurnoClick(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton12Click(Sender: TObject);
    procedure PBTInventarioClick(Sender: TObject);
    procedure DBAdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure cxCurrencyEdit1DblClick(Sender: TObject);
    procedure cxCurrencyEdit2DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvGlowButton25Click(Sender: TObject);
    procedure AdvGlowButton27Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AdvGlowButton28Click(Sender: TObject);
    procedure AdvGlowButton29Click(Sender: TObject);
    procedure ReportedeGastosEmitidos1Click(Sender: TObject);
    procedure ConsultarCierresAnteriores1Click(Sender: TObject);
    procedure ReportedeVentasxFecha1Click(Sender: TObject);
    procedure ArticulosVendidosxFecha1Click(Sender: TObject);
    procedure ReportedeCatalogos1Click(Sender: TObject);
    procedure ReporteInventarioManual1Click(Sender: TObject);
    procedure ReportePedidoProductos1Click(Sender: TObject);
    procedure Analisis1Click(Sender: TObject);
    procedure UtilidadBruta1Click(Sender: TObject);
    procedure ReportexVendedor1Click(Sender: TObject);
    procedure ReportedeComprasxClientes1Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure UnidadesdeMedida1Click(Sender: TObject);
    procedure CambiardeUsuario1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Empleados1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Almacenes1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton17Click(Sender: TObject);
    procedure PtContailidadClick(Sender: TObject);
    procedure ConceptosdeGastos1Click(Sender: TObject);
    procedure EstadodeCuenta1Click(Sender: TObject);
    procedure Realizarpagos1Click(Sender: TObject);
    procedure RelacindePagosxClientes1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure PTEstadisticaClick(Sender: TObject);
    procedure PTPRocesosClick(Sender: TObject);
    procedure BTComproEmitidosClick(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure NotadeCredito1Click(Sender: TObject);
    procedure ReportedeComisinxServicios1Click(Sender: TObject);
    procedure Moneda1Click(Sender: TObject);
    procedure ransaciones1Click(Sender: TObject);
    procedure MantdeBancos1Click(Sender: TObject);
    procedure Balances1Click(Sender: TObject);
    procedure CuentasxProveedor1Click(Sender: TObject);
    procedure azadeCambio1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Paramatros1Click(Sender: TObject);
    procedure ConsultadePagosRealizados1Click(Sender: TObject);
    procedure ActualizarBalancesPendientes1Click(Sender: TObject);
    procedure ComprobantesEmitidos1Click(Sender: TObject);
    procedure MantenimientodeEquipos1Click(Sender: TObject);
    procedure ControldeEntrada1Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure Notarios1Click(Sender: TObject);
    procedure RepresentanteClick(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
  private

   FChildCount: Integer;
    procedure ChildFormClose(Sender: TObject; var Action: TCloseAction);
    { Private declarations }



  public
 //    procedure SetPixelsPerInch(Value: integer);

    { Public declarations }
  end;

  TScreenEx = class(TScreen)
  published
    property PixelsPerInch;
  end;

var
  InicioMDI: TInicioMDI;
  vtestadocarga : integer;

implementation

{$R *.dfm}

uses Unit48, Unit5, Unit1, Unit14, Unit29, Unit43, Unit64, Unit65, Unit34,
  Unit28, Unit67, Unit32, Unit45, Unit55, Unit58, Unit61, Unit59, Unit31,
  Unit37, Unit38, Unit41, Unit60, Unit16, Unit18, Unit15, Unit3, Unit12, unit2,
  Unit39, tools, Unit70, Unit71, Unit72, Unit25, Unit73, Unit75, Unit77, Unit78,
  Unit79, Unit33, Unit88, Unit44, Unit89, Unit91, Unit36, Unit92, Unit93,
  Unit35, Unit95, Unit90, Unit96, Unit97, Unit99, Unit100, Unit103, Unit105,
  Unit40, Unit110, Unit111, Unit115, Unit117, Unit123;

procedure afi (nombreVentana : tform; tnombreVentana : TComponentClass;
    snombreventana : String);
var
  f : tform;
begin
  screen.cursor := crhourglass;
  lockwindowupdate(application.mainform.handle);  //quitar efecto maximizado
  try
    F := application.findcomponent(snombreventana) as tform;
    if Assigned(F) then
    begin
      if f.WindowState = wsminimized then
        if vtestadocarga = 1 then
          f.windowstate := wsmaximized
        else
          f.windowstate := wsnormal;
          f.Position := poMainFormCenter;
      f.bringtofront;
      screen.cursor := crdefault;
    end
    else
    begin
      application.createform (tnombreventana, nombreventana);
      if vtestadocarga = 1 then
        nombreventana.WindowState := wsmaximized;

    end;
  finally
    screen.Cursor := crDefault;
    lockwindowupdate(0);
  end;
end;

procedure TInicioMDI.CambiardeUsuario1Click(Sender: TObject);
begin

end;

procedure TInicioMDI.Categorias1Click(Sender: TObject);
begin

Showform(TFmrMant_Categoria, FmrMant_Categoria);
end;

procedure TInicioMDI.ChildFormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdvToolBar1.RemoveMDIChildMenu(TForm(Sender));
  Action   := caFree;
end;


 procedure TInicioMDI.Clientes1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.ComprobantesEmitidos1Click(Sender: TObject);
begin
if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN



END ELSE begin
           licencia.showmodal;
         end;
end;

procedure TInicioMDI.ConceptosdeGastos1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.ConsultadePagosRealizados1Click(Sender: TObject);
begin




end;

procedure TInicioMDI.ConsultarCierresAnteriores1Click(Sender: TObject);
begin


showform(tfrmcuadre_caja, frmcuadre_caja);
end;

procedure TInicioMDI.ControldeEntrada1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.CuentasxProveedor1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.cxButton1Click(Sender: TObject);
begin
 //Application.CreateForm(TFrmNFact_normal, FrmNFact_normal);
//AdvToolBar1.AddMDIChildMenu(FrmArticulos);
//FrmNFact_normal.OnClose := ChildFormClose;
//Inc(FChildCount);
FrmNFact_normal.Show;

end;

procedure TInicioMDI.cxButton2Click(Sender: TObject);
begin
Form88.showmodal;
end;

procedure TInicioMDI.cxCurrencyEdit1DblClick(Sender: TObject);
begin
with FrmConsultaSuplidores do
  begin
    with zqconsulta do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from master_ajuste a');
        sql.Add('where condicion =:op1');
        sql.Add('and moneda =:op2');
         sql.Add('and estado <>2');
        sql.add('AND FECHA_V < CURRENT_DATE');
        params[0].Value := 'Compra';
        params[1].Value := 'US';
        open;
      end;
      showmodal;
  end;
end;

procedure TInicioMDI.cxCurrencyEdit2DblClick(Sender: TObject);
begin
with FrmConsultaSuplidores do
  begin
    with zqconsulta do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from master_ajuste a');
        sql.Add('where condicion =:op1');
        sql.Add('and moneda =:op2');
         sql.Add('and estado <>2');
        sql.add('AND FECHA_V < CURRENT_DATE');
        params[0].Value := 'Compra';
        params[1].Value := 'RD';
        open;
      end;
      showmodal;
  end;
end;

procedure TInicioMDI.DBAdvGlowButton1Click(Sender: TObject);
begin
FrmRVentas.Caption := 'Reporte de Ventas Crédito x Fecha';
FrmRVentas.Edit1.Text := 'CREDITO';
FrmRVentas.showmodal;
end;

procedure TInicioMDI.Empleados1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.EstadodeCuenta1Click(Sender: TObject);
begin
if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN




END ELSE begin
           licencia.showmodal;
         end;

end;

procedure TInicioMDI.AdvGlowButton19Click(Sender: TObject);
begin

if FrmPedido = nil then
  begin
    FrmPedido := tFrmPedido.Create(self);
    Showform(tFrmPedido, FrmPedido);
  end;


end;

procedure TInicioMDI.AdvGlowButton1Click(Sender: TObject);
begin
if FrmConsultaPagosxClientes = nil then
   begin
     FrmConsultaPagosxClientes :=tFrmConsultaPagosxClientes.Create(self);
     FrmConsultaPagosxClientes.showmodal;
   end;

end;

procedure TInicioMDI.BtPVentasClick(Sender: TObject);
begin
//Application.CreateForm(TFrmNFact_normal, FrmNFact_normal);
//AdvToolBar1.AddMDIChildMenu(FrmArticulos);
//FrmNFact_normal.OnClose := ChildFormClose;
//Inc(FChildCount);

//
menuAv.ActivePageIndex := 3;
end;

procedure TInicioMDI.AdvGlowButton20Click(Sender: TObject);
begin
with menuAv do
 begin
  AdvPages[AdvPageCount - 1].TabVisible := false;
 ActivePage := AdvPages[AdvPageCount - 4];

// AdvPages[AdvPageCount - 1].AdvToolBars[0].Caption := 'New toolbar';
 end;
//menuAv.ActivePageIndex := 0;
end;

procedure TInicioMDI.AdvGlowButton21Click(Sender: TObject);
begin
//Application.CreateForm(TFrmAdmInventario, FrmAdmInventario);
//AdvToolBar1.AddMDIChildMenu(FrmArticulos);
//FrmAdmInventario.OnClose := ChildFormClose;
//Inc(FChildCount);





  //ShowForm(TFrmAdmInventario, FrmAdmInventario);

end;

procedure TInicioMDI.AdvGlowButton22Click(Sender: TObject);
begin

//Application.CreateForm(TFrmConsultaArticulos, FrmConsultaArticulos);
//AdvToolBar1.AddMDIChildMenu(FrmArticulos);
//FrmConsultaArticulos.OnClose := ChildFormClose;
//Inc(FChildCount);
 with menuAv do
 begin
  AdvPages[AdvPageCount - 1].TabVisible := false;
 ActivePage := AdvPages[AdvPageCount - 4];

// AdvPages[AdvPageCount - 1].AdvToolBars[0].Caption := 'New toolbar';
 end;
//menuAv.ActivePageIndex := 0;

end;


procedure TInicioMDI.PtContailidadClick(Sender: TObject);
begin

if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN

menuAv.ActivePageIndex := 2;
END ELSE begin
           licencia.showmodal;
         end;
end;

procedure TInicioMDI.AdvGlowButton24Click(Sender: TObject);
begin
if FrmConsultaSuplidores = nil then
  begin
    FrmConsultaSuplidores := tFrmConsultaSuplidores.Create(self);
    FrmConsultaSuplidores.ShowModal;
  end;


end;

procedure TInicioMDI.AdvGlowButton25Click(Sender: TObject);
begin
FrmRVentas.Caption := 'Reporte de BNB';
FrmRVentas.Edit1.Text := 'BNB';

FrmRVentas.showmodal;
end;

procedure TInicioMDI.AdvGlowButton27Click(Sender: TObject);
begin
FrmVendedores.showmodal;
end;

procedure TInicioMDI.AdvGlowButton28Click(Sender: TObject);
begin
frmrutas.showmodal;
end;

procedure TInicioMDI.AdvGlowButton29Click(Sender: TObject);
begin
//PackingList.showmodal;
end;

procedure TInicioMDI.AdvGlowButton2Click(Sender: TObject);
begin
//     FrmNFact_normal.Create(Self).Show;

    if FrmNFact_normal = nil then
      begin
         FrmNFact_normal := tFrmNFact_normal.Create(self);
         FrmNFact_normal.ShowModal;
       end;
end;

procedure TInicioMDI.Balances1Click(Sender: TObject);
begin
    if FrmBalanceBanco = nil then
      begin
        FrmBalanceBanco := TFrmBalanceBanco.Create(self);
         FrmBalanceBanco.showmodal;
       end;

end;

procedure TInicioMDI.BtAlmacenClick(Sender: TObject);
begin
if FrmAlmacenes = nil then
  begin
    FrmAlmacenes := TFrmAlmacenes.Create(self);
    FrmAlmacenes.showmodal;
  end;


end;

procedure TInicioMDI.AdvGlowButton4Click(Sender: TObject);
begin

if FrmRVentas = nil then
  begin
    FrmRVentas := tFrmRVentas.Create(self);
    FrmRVentas.Caption    := 'Reporte de Ventas x Fecha';
    FrmRVentas.Edit1.Text := 'VENTAS';
    FrmRVentas.showmodal;
  end;


end;

procedure TInicioMDI.AdvGlowButton5Click(Sender: TObject);
begin
//FrmConduceAdmin.showmodal;
end;

procedure TInicioMDI.BtRetirarEfectivoClick(Sender: TObject);
begin

              if FrmGastos = nil then
  begin
    FrmGastos := tFrmGastos.Create(self);
    FrmGastos.ShowModal;
  end;

end;

procedure TInicioMDI.BTCerrarTurnoClick(Sender: TObject);
begin

if FrmTurno = nil then
  begin
    FrmTurno := tFrmTurno.Create(self);
    FrmTurno.ShowModal;
  end;


end;

procedure TInicioMDI.BTComproEmitidosClick(Sender: TObject);
begin
if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN

   if FrmComprobanteEmitidos = nil then
     begin
           FrmComprobanteEmitidos := tFrmComprobanteEmitidos.Create(self);
           FrmComprobanteEmitidos.ShowModal;
     end;


END ELSE begin
           licencia.showmodal;
         end;

end;

procedure TInicioMDI.AdvGlowButton8Click(Sender: TObject);
begin

if FrmCxC = nil then
  begin
    FrmCxC := tFrmCxC.Create(self);
    FrmCxC.ShowModal;
  end;


end;

procedure TInicioMDI.AdvGlowButton9Click(Sender: TObject);
begin

if FrmGet_CXC = nil then
  begin
    FrmGet_CXC := tFrmGet_CXC.Create(self);
    FrmGet_CXC.showmodal;
  end;


end;

procedure TInicioMDI.AdvPreviewMenu1MenuItems0SubItems1Click(Sender: TObject);
begin
    ShowForm(TFrmConfig, FrmConfig);
end;

procedure TInicioMDI.AdvPreviewMenu1MenuItems1SubItems0Click(Sender: TObject);
begin

ShowForm(TFrmCambioPrecio, FrmCambioPrecio);

end;

procedure TInicioMDI.Alcerrar( Sender: TObject; var Action: TCloseAction );
begin
  Action := caFree;
end;


procedure TInicioMDI.Almacenes1Click(Sender: TObject);
begin

end;

procedure TInicioMDI.Analisis1Click(Sender: TObject);
begin

if datos.ConfiguracionTHEMS.Value = 'FULL' then BEGIN


END ELSE begin
           licencia.showmodal;
         end;


end;

procedure TInicioMDI.ArticulosVendidosxFecha1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.azadeCambio1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.Button1Click(Sender: TObject);
var
codd : integer;
begin
codd := 1000;
with datos.MantArt do
  begin
    open;
    first;
              datos.COPIA_ART.Open;

    while not eof do
       begin




          datos.COPIA_ART.Insert;
          codd := codd + 1;
          datos.COPIA_ARTCOD_ART.Value  := datos.COPIA_ARTCOD_ART.Value + codd;
          datos.COPIA_ARTCODIGOTXT.Value := '0'+IntTOstr(CODD +1);
          datos.COPIA_ARTCODIGOBARRA.Value := '0000'+IntTOstr(datos.COPIA_ARTCOD_ART.Value);
          datos.COPIA_ARTARTICULO.Value     := datos.MantArtARTICULO.Value;
          datos.COPIA_ARTMODELO.Value       := 'SI';
          datos.COPIA_ARTMARCA.Value        := datos.MantArtMARCA.Value;
          datos.COPIA_ARTCOLOR.Value        := datos.MantArtCOLOR.Value;
          datos.COPIA_ARTCOD_CAT.Value      := datos.MantArtCOD_CAT.Value;
          datos.COPIA_ARTCOD_SERIE.Value    := datos.MantArtCOD_SERIE.Value;
          datos.COPIA_ARTCOD_ALM.Value      := datos.MantArtCOD_ALM.Value;
          datos.COPIA_ARTCOSTO.Value        := 0.00;
          datos.COPIA_ARTCOD_PROV1.Value    := 1;
          datos.COPIA_ARTEXISTENCIA1.Value  := 0.00;
          datos.COPIA_ARTITBIS.Value        :='SI';
          datos.COPIA_ARTABREVIADO.Value    := '';
          datos.COPIA_ARTCOD_BARRA.Value    := '';
          datos.COPIA_ARTCOD_UV.Value       := datos.MantArtCOD_UV.Value;
          datos.COPIA_ARTUSUARIOMOD.Value   :=1;
          datos.COPIA_ARTFECHA_MOD.Value    :=NOW();
          datos.COPIA_ARTPOLITICA.Value     := 'Unitario';
          datos.COPIA_ARTCOSTO_PR.Value     := 0.00;
//          datos.COPIA_ARTIMAGEN.Value       :='';
          datos.COPIA_ARTCLA_COSTO.Value    := '';
          datos.COPIA_ARTCLA_PRECIO.Value   := '';
          datos.COPIA_ARTPRECIO_A.Value     := datos.MantArtPRECIO_A.Value;
          datos.COPIA_ARTPRECIO_B.Value     := datos.MantArtPRECIO_B.Value;
          datos.COPIA_ARTPRECIO_D.Value     := datos.MantArtPRECIO_D.Value;
          datos.COPIA_ARTESTADO.Value       := 1;
          DATOS.COPIA_ARTEXTFOTO.Value      :='JPG';
          DATOS.COPIA_ARTDESCRIPCIONWEB.Value :='';
          DATOS.COPIA_ARTPUBLICARWEB.Value    := 1;
          DATOS.COPIA_ARTCODIGOBARRA.Value    := DATOS.COPIA_ARTCODIGOTXT.Value;
          DATOS.COPIA_ARTEMPAQUE.Value        := 1;
          DATOS.COPIA_ARTCANT_EMPA.Value      := 0.00;
          DATOS.COPIA_ARTCOD_PROV2.Value      := 1;
          DATOS.COPIA_ARTCOD_PROV3.Value      := 1;
          DATOS.COPIA_ARTREFERENCIA.Value     :='';
          DATOS.COPIA_ARTCONDICION.Value      := 1;
          DATOS.COPIA_ARTOPCION_SABOR.Value   := 'NO';
          DATOS.COPIA_ARTSTOCK_MA.Value       := 0.00;
          DATOS.COPIA_ARTSTOCK_M.Value        := 0.00;
          DATOS.COPIA_ARTFACTOR.Value         := 0.00;
          DATOS.COPIA_ARTTIPO_PRODUCTOS.Value := '';
          DATOS.COPIA_ARTFACTURABLE.Value     := 1;
          DATOS.COPIA_ARTSTOCK.Value          := 0.00;
          DATOS.COPIA_ARTOPCIONES_BOLA.Value  :='NO';
          DATOS.COPIA_ARTPARTICIONADO.Value   := 'NO';
          DATOS.COPIA_ARTCOMPUESTO.Value      := 'NO';
          DATOS.COPIA_ARTBENEFICIOS.Value     := 0.00;
          DATOS.COPIA_ARTMONEDA.Value         := 'SI';
          DATOS.COPIA_ARTUNIDAD.Value         := 'UND';
          DATOS.COPIA_ARTTAZA_COMPRA.Value    := 0.00;
          DATOS.COPIA_ARTFECHA_COMPRA.Value   := NOW();
          DATOS.COPIA_ARTINTERES_ACUMULADO.Value := 0.00;
          DATOS.COPIA_ARTALMACEN.Value        :=1;






          BUTTON1.Caption := datos.COPIA_ARTCOD_ART.TEXT;
         next;
       end;
                 DATOS.COPIA_ART.ApplyUpdates;
       datos.Data.Commit;
  end;

end;

procedure TInicioMDI.FormClose(Sender: TObject; var Action: TCloseAction);
var
aa : integer;
begin
Application.HintHidePause := 1500000;
ShowMessage('Se va a cerrar el formulario y la aplicación...');
//For aa:= 0 to MDIChildCount-1 do
//MDIChildren[aa].Close;
end;

procedure TInicioMDI.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin


end;

procedure TInicioMDI.FormCreate(Sender: TObject);
var
Alto: integer;
Ancho:integer;
begin
//   if (screen.DesktopHeight <> 768) and (screen.DesktopHeight <> 600)
//   then
//     begin
//        Alto := 700;       // 768, ...
//        Ancho := 1200;  // 1366, ...
////     end
////   else
////     begin
////        Alto := 580;       // 768, ...
////        Ancho := 800;  // 1366, ...
////     end;
//   Height := Height * Screen.Height div Alto;
//   Width := Width * Screen.width div Ancho;
//   ScaleBy(Screen.Width,Ancho);
end;

procedure TInicioMDI.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f11 then
  begin
      fupdate.showmodal;
  end;

end;

procedure TInicioMDI.FormShow(Sender: TObject);
begin

//with zqconsultaUS do
//  begin
//    close;
//    sql.Clear;
//    sql.Add('select sum(montopend) suma from master_ajuste');
//    sql.Add('where condicion =:op1');
//    sql.Add('and moneda =:op2');
//    sql.Add('and estado <>2');
//    params[0].Value := 'Compra';
//    params[1].Value := 'US';
//    open;
//  end;
//
//with zqconsultaRD do
//  begin
//    close;
//    sql.Clear;
//    sql.Add('select sum(montopend) suma from master_ajuste');
//    sql.Add('where condicion =:op1');
//    sql.Add('and moneda =:op2');
//    sql.Add('and estado <>2');
//    params[0].Value := 'Compra';
//    params[1].Value := 'RD';
//    open;
//  end;

 // cxcurrencyedit1.Value := zqconsultaUSsuma.Value;
 // cxcurrencyedit2.Value := zqconsultaRDsuma.Value;
 //ShowForm(TFrmlogin, Frmlogin);
with menuAv do
 begin
  AdvPages[AdvPageCount - 1].TabVisible := false;
    AdvPages[AdvPageCount - 2].TabVisible := false;
      AdvPages[AdvPageCount - 3].TabVisible := false;
 ActivePage := AdvPages[AdvPageCount - 4];

// AdvPages[AdvPageCount - 1].AdvToolBars[0].Caption := 'New toolbar';
 end;

 if datos.ZUconfiguracionUSARRMA.Value = 1 then
     begin
       INICIOmdI.Menu1.Items[6].Enabled := true;
     end else begin
                INICIOmdI.Menu1.Items[6].Enabled := false;
              end;

  if frmLogin = nil then
    begin

      frmlogin := tfrmlogin.Create(self);
      frmLogin.Showmodal;
    end;
end;

procedure TInicioMDI.MantdeBancos1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.MantenimientodeEquipos1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.Moneda1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.NotadeCredito1Click(Sender: TObject);
begin
if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN


END ELSE begin
           licencia.showmodal;
         end;
end;

procedure TInicioMDI.Notarios1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.Proveedores1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.Realizarpagos1Click(Sender: TObject);
begin

if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN




END ELSE begin
           licencia.showmodal;
         end;

end;

procedure TInicioMDI.RelacindePagosxClientes1Click(Sender: TObject);
begin

if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN


END ELSE begin
           licencia.showmodal;
         end;


end;

procedure TInicioMDI.ReportedeCatalogos1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.ReportedeComisinxServicios1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.ReportedeComprasxClientes1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.ReportedeGastosEmitidos1Click(Sender: TObject);
begin

end;

procedure TInicioMDI.ReportedeVentasxFecha1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.ReporteInventarioManual1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.ReportePedidoProductos1Click(Sender: TObject);
begin




end;

procedure TInicioMDI.ReportexVendedor1Click(Sender: TObject);
begin




end;

procedure TInicioMDI.RepresentanteClick(Sender: TObject);
begin




end;

procedure TInicioMDI.UnidadesdeMedida1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.Usuarios1Click(Sender: TObject);
begin



end;

procedure TInicioMDI.UtilidadBruta1Click(Sender: TObject);
begin

if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN





END ELSE begin
           licencia.showmodal;
         end;


end;

procedure TInicioMDI.Vendedores1Click(Sender: TObject);
begin
FrmVendedores.showmodal;
end;

procedure TInicioMDI.ActualizarBalancesPendientes1Click(Sender: TObject);
begin


end;

procedure TInicioMDI.AdvGlowButton10Click(Sender: TObject);
begin

if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN
if frmNC = nil then
  begin
      frmNC := tfrmNC.Create(self);
      frmNC.ShowModal;
  end;

end;


end;

procedure TInicioMDI.AdvGlowButton11Click(Sender: TObject);
begin
if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN

if FrmRepInventario = nil then
  begin
    FrmRepInventario := tFrmRepInventario.Create(self);
    FrmRepInventario.ShowModal;
  end;

  end;

end;

procedure TInicioMDI.AdvGlowButton12Click(Sender: TObject);
begin
 with menuAv do
 begin
  AdvPages[AdvPageCount - 1].TabVisible := false;
 ActivePage := AdvPages[AdvPageCount - 4];

// AdvPages[AdvPageCount - 1].AdvToolBars[0].Caption := 'New toolbar';
 end;
//menuAv.ActivePageIndex := 0;

end;

procedure TInicioMDI.Paramatros1Click(Sender: TObject);
begin

	if FAutorizacion.ShowModal = mrOk then
      begin
           if FrmConfig = nil then
             begin
                 FrmConfig := tFrmConfig.Create(self);
                 FrmConfig.ShowModal;
             end;

       end;

end;

procedure TInicioMDI.PBTInventarioClick(Sender: TObject);
begin
menuAv.ActivePageIndex := 1;

end;

procedure TInicioMDI.Pedido1Click(Sender: TObject);
begin
if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN


END ELSE begin
           licencia.showmodal;
         end;
end;

procedure TInicioMDI.AdvGlowButton14Click(Sender: TObject);
begin
//Application.CreateForm(TFrmCompras, FrmCompras);
//FrmCompras.OnClose := ChildFormClose;
//Inc(FChildCount);
ShowForm(TFrmCompras, FrmCompras);
end;

procedure TInicioMDI.AdvGlowButton15Click(Sender: TObject);
begin
 if FrmDescarga = nil then
    begin
      FrmDescarga := tFrmDescarga.Create(self);
      ShowForm(TFrmDescarga, FrmDescarga);
    end;

end;

procedure TInicioMDI.AdvGlowButton16Click(Sender: TObject);
begin

//Application.CreateForm(TFrmajuste, Frmajuste);
//AdvToolBar1.AddMDIChildMenu(FrmArticulos);
//Frmajuste.OnClose := ChildFormClose;
//Inc(FChildCount);
ShowForm(TFrmajuste, Frmajuste);

end;

procedure TInicioMDI.AdvGlowButton17Click(Sender: TObject);
begin
if FrmCompras = nil then
  begin
    FrmCompras := TFrmCompras.Create(self);
    FrmCompras.ShowModal;
  end;


end;

procedure TInicioMDI.PTEstadisticaClick(Sender: TObject);
begin
if datos.zuConfiguracionTHEMS.Value = 'FULL' then BEGIN


END ELSE begin
           licencia.showmodal;
         end;
end;

procedure TInicioMDI.PTPRocesosClick(Sender: TObject);
begin
if datos.ConfiguracionTHEMS.Value = 'FULL' then BEGIN


END ELSE begin
           licencia.showmodal;
         end;
end;

procedure TInicioMDI.PTPRoductosClick(Sender: TObject);
  var
  rsChild: TFrmArticulos;
begin

//if not Assigned(FrmArticulos) then begin
//Application.CreateForm(TFrmArticulos, FrmArticulos);
//AdvToolBar1.AddMDIChildMenu(FrmArticulos);
//FrmArticulos.OnClose := ChildFormClose;
//Inc(FChildCount);

//FrmArticulos.ShowModal;
//ShowForm(TFrmArticulos, FrmArticulos);
 
//end else begin
  //Showmessage('');
//end;
//    AdvOfficeMDITabSet1.AddTab(FrmArticulos);

end;

procedure TInicioMDI.ransaciones1Click(Sender: TObject);
begin


end;

end.
