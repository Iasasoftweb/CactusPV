unit UInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.StdCtrls, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  dxRibbonRadialMenu, cxClasses, dxRibbon, dxRibbonMiniToolbar, cxTrackBar,
  cxBarEditItem, dxSparkline, Vcl.ImgList, dxBarApplicationMenu,
  dxRibbonBackstageView, dxStatusBar, dxRibbonStatusBar, Data.DB,
  ZAbstractRODataset, ZDataset, Vcl.Menus, AdvMenus, System.ImageList, cxButtons,
  dxSkinsdxStatusBarPainter, System.Notification, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, printers, cxLabel, cxDBLabel,
  cxRadioGroup, cxTextEdit, cxCheckBox, frxClass, dxSkinTheBezier, cxImageList,
  dxSkinsForm, WinInet, dxActivityIndicator, Vcl.WinXCtrls, Vcl.ComCtrls, TlHelp32,
  acPNG, Vcl.Buttons, dxNavBar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxflchrt;

type
  TFrmHome = class(TForm)
    RibbonImages32: TcxImageList;
    RibbonImages16: TcxImageList;
    ZqconsultaUS: TZReadOnlyQuery;
    ZqconsultaRD: TZReadOnlyQuery;
    Menu1: TAdvMainMenu;
    Repoortes1: TMenuItem;
    N1: TMenuItem;
    Dash: TMenuItem;
    N2: TMenuItem;
    ReporteInventarioManual1: TMenuItem;
    ComprobantesEmitidos1: TMenuItem;
    Utilidad1: TMenuItem;
    Analisis1: TMenuItem;
    UtilidadBruta1: TMenuItem;
    UnidadesdeMedida1: TMenuItem;
    CambiardeUsuario1: TMenuItem;
    tazadeCambio1: TMenuItem;
    Usuarios1: TMenuItem;
    N7: TMenuItem;
    Mantenimientos1: TMenuItem;
    Rutas1: TMenuItem;
    Clientes1: TMenuItem;
    Empleados1: TMenuItem;
    Proveedores1: TMenuItem;
    ConceptosdeGastos1: TMenuItem;
    Moneda1: TMenuItem;
    N9: TMenuItem;
    Notarios1: TMenuItem;
    Representante: TMenuItem;
    Inventarios1: TMenuItem;
    Almacenes1: TMenuItem;
    N4: TMenuItem;
    ProductosBajoInventario1: TMenuItem;
    ReportedeInventario1: TMenuItem;
    Contabilidad: TMenuItem;
    Bancos1: TMenuItem;
    ransaciones1: TMenuItem;
    Balances1: TMenuItem;
    MantdeBancos1: TMenuItem;
    Cxc1: TMenuItem;
    EstadodeCuenta1: TMenuItem;
    Realizarpagos1: TMenuItem;
    RelacindePagosxClientes1: TMenuItem;
    ConsultadePagosRealizados1: TMenuItem;
    N8: TMenuItem;
    ActualizarBalancesPendientes1: TMenuItem;
    CxP1: TMenuItem;
    CuentasxProveedor1: TMenuItem;
    RMA1: TMenuItem;
    MantenimientodeEquipos1: TMenuItem;
    ControldeEntrada1: TMenuItem;
    ActualizaBalancePendiente1: TMenuItem;
    C1: TMenuItem;
    C2: TMenuItem;
    N10: TMenuItem;
    C3: TMenuItem;
    A1: TMenuItem;
    cxButton16: TcxButton;
    ZqconsultaRDSUMA: TExtendedField;
    ZqconsultaUSSUMA: TExtendedField;
    Mod1: TMenuItem;
    C4: TMenuItem;
    ActualizarGeneradores1: TMenuItem;
    BarraStatus: TdxStatusBar;
    NotificationCenter1: TNotificationCenter;
    cxButton1: TcxButton;
    AManger: TActionManager;
    ACFactura: TAction;
    ReportedeDescomisos1: TMenuItem;
    Action1: TAction;
    N3: TMenuItem;
    Clasificaciones1: TMenuItem;
    ModificarNCF1: TMenuItem;
    N6: TMenuItem;
    ImportarExcel1: TMenuItem;
    Operaciones1: TMenuItem;
    Facturacin1: TMenuItem;
    NotasdeCrditos1: TMenuItem;
    RetirodeEfectivos1: TMenuItem;
    N11: TMenuItem;
    Caja1: TMenuItem;
    panel1: TcxGroupBox;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBLabel1: TcxDBLabel;
    DsConfig: TDataSource;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    ActualizaDiasLimitedeCrdito1: TMenuItem;
    ActulizarCostoPromedio1: TMenuItem;
    EstadodeCuentaporProveedor1: TMenuItem;
    PagosrelaizadosaProveedores1: TMenuItem;
    PackingList1: TMenuItem;
    ReportedeCXC1: TMenuItem;
    Vendedores1: TMenuItem;
    Vendedores2: TMenuItem;
    EntradasMovimientosCxc1: TMenuItem;
    N12: TMenuItem;
    ReiniciarInventario1: TMenuItem;
    ReinciaInventario: TZReadOnlyQuery;
    MovimientodeInvetario1: TMenuItem;
    Image3: TImage;
    dxSkinController1: TdxSkinController;
    InventarioalCortedeFecha1: TMenuItem;
    QcontrorCopia: TZReadOnlyQuery;
    QcontrorCopiaNO_FACT: TIntegerField;
    QcontrorCopiaFECHA_FAC: TDateField;
    QcontrorCopiaTIPO: TWideStringField;
    QcontrorCopiaCOD_CLIENT: TWideStringField;
    QcontrorCopiaCOD_EMP: TWideStringField;
    QcontrorCopiaNO_FACT1: TWideStringField;
    QcontrorCopiaMONTO: TExtendedField;
    QcontrorCopiaHORA: TTimeField;
    QcontrorCopiaPOGXITBS: TExtendedField;
    QcontrorCopiaTIPOPAGO: TWideStringField;
    QcontrorCopiaMONTOPAGO: TExtendedField;
    QcontrorCopiaCONDICION: TWideStringField;
    QcontrorCopiaRENTA: TWideStringField;
    QcontrorCopiaCODIGO: TIntegerField;
    QcontrorCopiaTIPOITBS: TWideStringField;
    QcontrorCopiaVENDEDOR: TWideStringField;
    QcontrorCopiaSITUACION: TWideStringField;
    QcontrorCopiaCAJERO: TWideStringField;
    QcontrorCopiaNCF: TWideStringField;
    QcontrorCopiaRNC_CLIENTE: TWideStringField;
    QcontrorCopiaNCF1: TFloatField;
    QcontrorCopiaNOM_CLIENTE: TWideStringField;
    QcontrorCopiaDESCUENTO: TFloatField;
    QcontrorCopiaROTULO: TWideStringField;
    QcontrorCopiaNO_AUTORIZA_NCF: TFloatField;
    QcontrorCopiaMONTOFINANCIADO: TFloatField;
    QcontrorCopiaCUOTAS: TIntegerField;
    QcontrorCopiaINTERES: TFloatField;
    QcontrorCopiaDIRECCION: TWideStringField;
    QcontrorCopiaPAGADO: TFloatField;
    QcontrorCopiaLEYPROPINA: TFloatField;
    QcontrorCopiaCOMPROBANTE: TWideStringField;
    QcontrorCopiaTERMINAL: TWideStringField;
    QcontrorCopiaEFECTIVO: TFloatField;
    QcontrorCopiaDEVOLUCION1: TFloatField;
    QcontrorCopiaRESTANTE: TFloatField;
    QcontrorCopiaABONO: TFloatField;
    QcontrorCopiaCHEK: TWideStringField;
    QcontrorCopiaNO_RECIBO: TIntegerField;
    QcontrorCopiaPAGADOCXC: TFloatField;
    QcontrorCopiaMESES: TIntegerField;
    QcontrorCopiaDIAS: TIntegerField;
    QcontrorCopiaPENDIENTE: TFloatField;
    QcontrorCopiaESTADOPAGO: TWideStringField;
    QcontrorCopiaDEVOLUCION: TFloatField;
    QcontrorCopiaCONDICION_PAGO: TIntegerField;
    QcontrorCopiaFECHAVENCIMIENTO: TWideStringField;
    QcontrorCopiaCOMBO: TWideStringField;
    QcontrorCopiaCOBRADO: TIntegerField;
    QcontrorCopiaQUEES: TWideStringField;
    cxButton2: TcxButton;
    N5: TMenuItem;
    S1: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    Mbackup: TMenuItem;
    I1: TMenuItem;
    Panel2: TPanel;
    pnlTop: TPanel;
    pnlBarTopDiv: TPanel;
    btnsalir: TSpeedButton;
    btnMaximizar: TSpeedButton;
    pnl_Menu_Lateral: TPanel;
    pnlBarra: TPanel;
    Panel7: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    Image4: TImage;
    Panel5: TPanel;
    sbConfiguracion: TSpeedButton;
    Image6: TImage;
    Panel6: TPanel;
    sbARM: TSpeedButton;
    Image7: TImage;
    Panel9: TPanel;
    sbContabilidad: TSpeedButton;
    Image9: TImage;
    Panel10: TPanel;
    sbCaja: TSpeedButton;
    Image10: TImage;
    Panel11: TPanel;
    spCuentasxCobrar: TSpeedButton;
    Image11: TImage;
    Panel12: TPanel;
    sbCompras: TSpeedButton;
    Image12: TImage;
    Panel13: TPanel;
    spInventario: TSpeedButton;
    Image13: TImage;
    Panel14: TPanel;
    spFacturacion: TSpeedButton;
    Image14: TImage;
    Panel4: TPanel;
    lblUsuario: TLabel;
    Image8: TImage;
    Panel8: TPanel;
    pnlCentral: TPanel;
    Image5: TImage;
    Mimpuesto: TMenuItem;
    M1: TMenuItem;
    M2: TMenuItem;
    M3: TMenuItem;
    M4: TMenuItem;
    M5: TMenuItem;
    N16: TMenuItem;
    M6: TMenuItem;
    M7: TMenuItem;
    N17: TMenuItem;
    A2: TMenuItem;
    C5: TMenuItem;
    Panel15: TPanel;
    abCobrosFacturas: TSpeedButton;
    Image15: TImage;
    Panel16: TPanel;
    pnlGraph: TPanel;
    Image16: TImage;
    pnlTopGraph: TPanel;
    SpeedButton3: TSpeedButton;
    Dsventasmensuales: TDataSource;
    Qventasmeses: TZReadOnlyQuery;
    QventasmesesFTCNOMBREMES: TWideStringField;
    QventasmesesFTNMONTO: TSingleField;
    Panel17: TPanel;
    Panel18: TPanel;
    Label5: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBChartView2: TcxGridDBChartView;
    cxGridDBChartView2DataGroup1: TcxGridDBChartDataGroup;
    cxGridDBChartView2Series1: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
    dxFlowChart1: TdxFlowChart;
    U1: TMenuItem;
    P1: TMenuItem;
    M8: TMenuItem;
    Image17: TImage;
    Label6: TLabel;
    Panel19: TPanel;
    spSalir: TSpeedButton;
    Image18: TImage;
    Label4: TLabel;
    procedure BtTurnosClick(Sender: TObject);
    procedure BTNESTADOCREDITOClick(Sender: TObject);
    procedure BTNREALIZARPAGOSClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtNCClick(Sender: TObject);
    procedure BtRetiroClick(Sender: TObject);
    procedure BTNREPORTEVENTAClick(Sender: TObject);
    procedure dxBarLargeButton23Click(Sender: TObject);
    procedure BTNCOMPRASClick(Sender: TObject);
    procedure BTPRODUCTOClick(Sender: TObject);
    procedure BTNMOVIMIENTOClick(Sender: TObject);
    procedure CambiardeUsuario1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure ComprobantesEmitidos1Click(Sender: TObject);
    procedure ConsultadePagosRealizados1Click(Sender: TObject);
    procedure ControldeEntrada1Click(Sender: TObject);
    procedure CuentasxProveedor1Click(Sender: TObject);
    procedure Empleados1Click(Sender: TObject);
    procedure EstadodeCuenta1Click(Sender: TObject);
    procedure Almacenes1Click(Sender: TObject);
    procedure Analisis1Click(Sender: TObject);
    procedure DashClick(Sender: TObject);
    procedure tazadeCambio1Click(Sender: TObject);
    procedure MantdeBancos1Click(Sender: TObject);
    procedure MantenimientodeEquipos1Click(Sender: TObject);
    procedure Moneda1Click(Sender: TObject);
    procedure Notarios1Click(Sender: TObject);
    procedure ReportedeComprasxClientes1Click(Sender: TObject);
    procedure ReporteInventarioManual1Click(Sender: TObject);
    procedure RepresentanteClick(Sender: TObject);
    procedure UnidadesdeMedida1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure UtilidadBruta1Click(Sender: TObject);
    procedure ransaciones1Click(Sender: TObject);
    procedure ActualizaBalancePendiente1Click(Sender: TObject);
    procedure RelacindePagosxClientes1Click(Sender: TObject);
    procedure Realizarpagos1Click(Sender: TObject);
    procedure ConceptosdeGastos1Click(Sender: TObject);
    procedure BTNPAGOSREALIZADOSClick(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure Mod1Click(Sender: TObject);
    procedure permisos;
    procedure ActualizarGeneradores1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ACFacturaExecute(Sender: TObject);
    procedure ReportedeDescomisos1Click(Sender: TObject);
    procedure ProductosBajoInventario1Click(Sender: TObject);
    procedure ReportedeInventario1Click(Sender: TObject);
    procedure Clasificaciones1Click(Sender: TObject);
    procedure ModificarNCF1Click(Sender: TObject);
    procedure ImportarExcel1Click(Sender: TObject);
    procedure Caja1Click(Sender: TObject);
    procedure BTCobroFacturaClick(Sender: TObject);
    procedure ActualizaDiasLimitedeCrdito1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Balances1Click(Sender: TObject);
    procedure EstadodeCuentaporProveedor1Click(Sender: TObject);
    procedure PackingList1Click(Sender: TObject);
    procedure Rutas1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Vendedores2Click(Sender: TObject);
    procedure EntradasMovimientosCxc1Click(Sender: TObject);
    procedure ReportedeCXC1Click(Sender: TObject);
    procedure MovimientodeInvetario1Click(Sender: TObject);
    procedure BRTCClick(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure IsConnected;
    procedure BtnCocinaClick(Sender: TObject);
    procedure InventarioalCortedeFecha1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ActualizarBalancesPendientes1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure SpeedButton1dddClick(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure spFacturacionClick(Sender: TObject);
    procedure spInventarioClick(Sender: TObject);
    procedure MimpuestoClick(Sender: TObject);
    procedure M4Click(Sender: TObject);
    procedure M5Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure M6Click(Sender: TObject);
    procedure M3Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure sbConfiguracionClick(Sender: TObject);
    procedure sbComprasClick(Sender: TObject);
    procedure sbCajaClick(Sender: TObject);
    procedure abCobrosFacturasClick(Sender: TObject);
    procedure btnMaximizarClick(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure M8Click(Sender: TObject);
    procedure spSalirClick(Sender: TObject);
    procedure Facturacin1Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure ReiniciarInventario1Click(Sender: TObject);
    procedure spCuentasxCobrarClick(Sender: TObject);
  private
    { Private declarations }

    procedure OffMenu;
    procedure Dashboard;
  public
    { Public declarations }
  end;

  const
        WH_KEYBOARD_LL = 13;
        LLKHF_ALTDOWN = $20;


        type
            KBDLLHOOKSTRUCT = record
            vkCode: DWORD;
            scanCode: DWORD;
            flags: DWORD;
            time: DWORD;
            dwExtraInfo: Longint ;
         end;

var
   FrmHome: TFrmHome;
   proc : PROCESSENTRY32;
   hSnap : HWND;
   Looper : BOOL;

   hhkLowLevelKybd : HHOOK;
   FoldProc : LongInt;
   hSASWnd : HWND;
   hThread : Cardinal;
   bExpandir : Boolean;

implementation

{$R *.dfm}

uses Unit59, tools, Unit18, Unit33, Unit16, Unit1, Unit36, Unit41, Unit39,
  Unit37, Unit43, Unit65, Unit34, Unit5, Unit32, Unit105, Unit89, Unit71,
  Unit60, Unit2, Unit64, Unit14, Unit3, Unit90, Unit92, Unit15, Unit111, Unit61,
  Unit12, Unit99, Unit110, Unit97, Unit29, Unit100, Unit45, Unit96, Unit78,
  Unit55, Unit58, Unit77, Unit72, Unit44, Unit25, Unit123, FactNo, Unit125,
  Unit126, Unit114, Unit121, Unit117, Unit88, Unit127, Unit128, Unit129,
  Pizeria, USabores, Unit135, Unit136, UopcionCaja, uCobroFact,
  UActualizaDiasCredito, UFacturaProv, Unit103, UEstadoCXP, touch,
  UAdminArticulos, UFactRapida, Unit75, Unit73, UentradaCredito,
  URCreditoxfechas, Unit81, Urtc, uCocina, Unit137, Ustart, Uimpuestos, uInventario_Master,
  UImpuesto, uSubCategoria, usustancia, Umarca, uindicacionez, uclasificacion, uinventario_lote, uPerfilUsuario, UReporteInvenario, uReinicioInventario;


Function LowLevelKeyboardProc(nCode : Integer; wParam : Longint; var LParam: KBDLLHOOKSTRUCT) : Longint; stdcall;
var
fEatKeystroke : Boolean;
dwThreadId : Cardinal;
begin

If (nCode = HC_ACTION) Then
begin
If (wParam = WM_KEYDOWN) Or
(wParam = WM_SYSKEYDOWN) Or
(wParam = WM_KEYUP) Or
(wParam = WM_SYSKEYUP) Then
begin
fEatKeystroke :=
//-----------
(((GetKeyState(VK_CONTROL) And $8000) <> 0) and
((((GetKeyState(VK_RMENU)) or (GetKeyState(VK_LMENU))) And $8000) <> 0) and
(LParam.vkCode = VK_DELETE)) or
//--------------
((LParam.vkCode = VK_LWIN)) or //tecla menu iniciar esquerdo
((LParam.vkCode = VK_RWIN)) or //tecla menu iniciar direito
((LParam.vkCode = VK_F4) And ((LParam.flags And LLKHF_ALTDOWN ) <> 0)) Or //ALT + F4
((LParam.vkCode = VK_TAB) And ((LParam.flags And LLKHF_ALTDOWN ) <> 0)) Or //ALT + TAB
((LParam.vkCode = VK_ESCAPE) And ((LParam.flags And LLKHF_ALTDOWN ) <> 0)) Or //ALT + ESC
((LParam.vkCode = VK_ESCAPE) And ((GetKeyState(VK_CONTROL) And $8000) <> 0)); //CONTROL + ESC
End;
End;

If fEatKeystroke Then
Result := -1
Else
Result := CallNextHookEx(0, nCode, wParam, LongInt(@LParam));
End;




procedure TFrmHome.IsConnected;
var
dwFlags: DWORD;
begin
if InternetGetConnectedState(@dwFlags, 0) then
begin
if (dwFlags and INTERNET_CONNECTION_MODEM) = INTERNET_CONNECTION_MODEM  then
ShowMessage('Modem Connection')
else
if (dwFlags and INTERNET_CONNECTION_LAN) = INTERNET_CONNECTION_LAN then
ShowMessage('LAN Connection')
else
if (dwFlags and INTERNET_CONNECTION_PROXY) = INTERNET_CONNECTION_PROXY then
ShowMessage('Connection thru Proxy')
else
if (dwFlags and INTERNET_CONNECTION_OFFLINE) = INTERNET_CONNECTION_OFFLINE then
ShowMessage('Local system in offline mode')
else
if (dwFlags and INTERNET_CONNECTION_CONFIGURED) = INTERNET_CONNECTION_CONFIGURED then
ShowMessage('Valid connection exists, but might or might not be connected')
end
else
ShowMessage('Not Connected. Try to connect and risk of being prompted to dial into another Internet Service Provider.');
end;

procedure TFrmHome.A1Click(Sender: TObject);
begin


              if FrmControlNCF = nil then
                 begin
                   FrmControlNCF := tFrmControlNCF.create(self);
                   FrmControlNCF.showmodal;
                 end;

end;

procedure TFrmHome.A2Click(Sender: TObject);
begin

with datos.qConsultarInvetarioLote do
   begin
     close;
     sql.Clear;
     sql.Add('select * from inventario_lote where estado = ''ABIERTO''');
     OPEN;
   end;

   if DATOS.qConsultarInvetarioLote.RecordCount > 0 then
     begin
             Crear_Mensages('Error',
                    'No es posible aperturar inventario..',
                    'Ya existe un inventario aperturado',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                    'OK') ;
     end ELSE BEGIN
         if FInventarioLote = nil then
           begin
             FInventarioLote := TFInventarioLote.Create(Self);
             FInventarioLote.ShowModal;
           end;
     END;

end;

procedure TFrmHome.ACFacturaExecute(Sender: TObject);
begin

with datos.ZUconfiguracion do
  begin
    close;
    open;
    first;
  end;

if datos.ZUconfiguracionTerminal.Value = 'Normal' then
   begin
     if FrmNFact_normal = nil then
      begin
         FrmNFact_normal := tFrmNFact_normal.Create(self);
         FrmNFact_normal.Showmodal;
       end;

   end;

 if datos.ZUconfiguracionTerminal.Value = 'Pizzeria' then begin
  if FrmPizeria = nil then
      begin
         FrmPizeria := tFrmPizeria.Create(self);
         FrmPizeria.Showmodal;
       end;
   end;

  if datos.ZUconfiguracionTerminal.Value = 'Touch' then begin
  if FrmPizeria = nil then
      begin
         Frmtouch := tFrmtouch.Create(self);
         Frmtouch.Showmodal;
       end;
   end;

  if datos.ZUconfiguracionTerminal.Value = 'Supermerca' then begin
      if FrmPizeria = nil then
          begin
             FrmFactRapida := tFrmFactRapida.Create(self);
             FrmFactRapida.Showmodal;
           end;
       end;
end;

procedure TFrmHome.ActualizaBalancePendiente1Click(Sender: TObject);
begin


if FrmActualizaBalanceCXC = nil then
  begin
    FrmActualizaBalanceCXC := tFrmActualizaBalanceCXC.Create(self);
    FrmActualizaBalanceCXC.ShowModal;
  end;

end;

procedure TFrmHome.ActualizaDiasLimitedeCrdito1Click(Sender: TObject);
begin
  if FrmActualizaDiasCredito = nil then
    begin
      FrmActualizaDiasCredito := TFrmActualizaDiasCredito.Create(self);
      FrmActualizaDiasCredito.ShowModal;
    end;

end;

procedure TFrmHome.ActualizarBalancesPendientes1Click(Sender: TObject);
begin
if FrmActualizaBalanceCXC = nil then
  begin
    FrmActualizaBalanceCXC := tFrmActualizaBalanceCXC.Create(self);
    FrmActualizaBalanceCXC.ShowModal;
  end;
end;

procedure TFrmHome.ActualizarGeneradores1Click(Sender: TObject);
begin

                if FrmUpSecuencia = nil then
                  begin
                    FrmUpSecuencia := TFrmUpSecuencia.create(self);
                    FrmUpSecuencia.showmodal;
                  end;


end;

procedure TFrmHome.Almacenes1Click(Sender: TObject);
begin
if FrmAlmacenes = nil then
  begin
    FrmAlmacenes := TFrmAlmacenes.Create(self);
    FrmAlmacenes.showmodal;
  end;
end;

procedure TFrmHome.Analisis1Click(Sender: TObject);
begin
  if FrmConsulta_Proveedor = nil then
    begin
      FrmConsulta_Proveedor := tFrmConsulta_Proveedor.Create(self);
       FrmConsulta_Proveedor.ShowModal;
    end;
end;

procedure TFrmHome.DashClick(Sender: TObject);
begin
if FStart = nil then
     begin
           FStart := tFStart.Create(self);
           FStart.ShowModal;
     end;

//if FrmRVFecha = nil then begin
//                           FrmRVFecha := tFrmRVFecha.Create(self);
//                           FrmRVFecha.Op_cat.visible := false;
//                                FrmRVFecha.showmodal;
//                         end;

end;

procedure TFrmHome.tazadeCambio1Click(Sender: TObject);
begin

datos.Configuracion.Open;
 if combiotaza = nil then
   begin
       combiotaza := tcombiotaza.Create(self);
       combiotaza.ShowModal;
   end;

end;

procedure TFrmHome.Timer1Timer(Sender: TObject);
var
   keyloop, KeyResult : Integer;
begin



end;

procedure TFrmHome.C1Click(Sender: TObject);
begin
if ComprobantesAnulados = nil then
  begin
    ComprobantesAnulados := TComprobantesAnulados.create(self);
    ComprobantesAnulados.showmodal;
  end;
end;

procedure TFrmHome.C3Click(Sender: TObject);
begin
if FrmConsultaFacturas = NIL THEN
  begin
    FrmConsultaFacturas := TFrmConsultaFacturas.create(self);
    FrmConsultaFacturas.showmodal;
  end;
end;

procedure TFrmHome.C5Click(Sender: TObject);
begin

with datos.QInventarioLote do
   begin
     close;
     sql.Clear;
     sql.Add('select * from inventario_lote where estado = ''ABIERTO''');
     OPEN;
   end;

   if DATOS.QInventarioLote.RecordCount > 0 then
     begin

       datos.QInventarioLote.edit;
      // datos.QInventarioLoteFECHA_INICIAL.Value := now();
       datos.QInventarioLoteESTADO.Value := 'CERRADO';
       DATOS.QInventarioLote.ApplyUpdates;
       datos.Data.Commit;


             Crear_Mensages('Aviso',
                    'Inventario Cerrardo',
                    'Inventario ha sido cerrado, para relaizar actividades debes aperturar invenario',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\aviso.png',
                    'OK') ;
     end ELSE BEGIN
           Crear_Mensages('Error',
                    'No es posible cerrar inventario..',
                    'No existe un inventario aperturado, favor aperturarlo',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                    'OK') ;
     END;

end;

procedure TFrmHome.Caja1Click(Sender: TObject);
begin
if FrmOpcionCaja = nil then
  begin
    FrmOpcionCaja := TFrmOpcionCaja.Create(self);
    FrmOpcionCaja.ShowModal;
  end;

end;

procedure TFrmHome.CambiardeUsuario1Click(Sender: TObject);
begin
if frmLogin = nil then
  begin
    frmLogin := tfrmLogin.Create(self);
    frmLogin.ShowModal;
  end;
  permisos;

end;

procedure TFrmHome.Clasificaciones1Click(Sender: TObject);
begin
if FrmClasificaciones = nil then
  begin
    FrmClasificaciones := TFrmClasificaciones.Create(Self);
    FrmClasificaciones.ShowModal;
  end;
end;

procedure TFrmHome.Clientes1Click(Sender: TObject);
begin
if FrmCliente = nil then begin
    FrmCliente := tFrmCliente.Create(self);
    FrmCliente.ShowModal;
end;
end;

procedure TFrmHome.ComprobantesEmitidos1Click(Sender: TObject);
begin
if FrmComprobanteEmitidos = nil then
     begin
           FrmComprobanteEmitidos := tFrmComprobanteEmitidos.Create(self);
           FrmComprobanteEmitidos.ShowModal;
     end;
end;

procedure TFrmHome.ConceptosdeGastos1Click(Sender: TObject);
begin
if FrmCGastos = nil then
  begin
    FrmCGastos := tFrmCGastos.Create(self);
    FrmCGastos.ShowModal;
  end;
end;

procedure TFrmHome.ConsultadePagosRealizados1Click(Sender: TObject);
begin
if FrmConsultaPagosxClientes = nil then
  begin
      FrmConsultaPagosxClientes := tFrmConsultaPagosxClientes.Create(Self);
      FrmConsultaPagosxClientes.ShowModal;
  end;
end;

procedure TFrmHome.ControldeEntrada1Click(Sender: TObject);
begin
if Rma = nil then
  begin
    Rma := tRma.Create(self);
    Rma.ShowModal;
  end;
end;

procedure TFrmHome.CuentasxProveedor1Click(Sender: TObject);
begin
if FrmConsultaSuplidores = nil then
  begin
    FrmConsultaSuplidores := tFrmConsultaSuplidores.Create(Self);
    FrmConsultaSuplidores.ShowModal;
  end;

end;

procedure TFrmHome.cxButton16Click(Sender: TObject);
var
ITB : Currency;
BN  : Currency;
begin
with datos.MantArt do
  begin
    open;
    first;
    while not eof do
      begin
          ITB := 0.00;
          Bn := 0.00;


                   datos.MantArt.Edit;
                   datos.mantArtITBIS.Value := 'Si';
                   datos.mantartTAZA_COMPRA.Value := 18;

                    ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
                    Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100));
                    datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
                    datos.MantArtPRECIO_Bruto1.Value := Round(Bn + datos.MantArtCOSTO.Value);


                    ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
                    Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value)/100));
                    datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
                    datos.MantArtPRECIO_Bruto2.Value := Round(Bn + datos.MantArtCOSTO.Value);


                    ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
                    Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value)/100));
                    datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
                    datos.MantArtPRECIO_Bruto3.Value := Round(Bn + datos.MantArtCOSTO.Value);




        next;
      end;
  end;

  datos.MantArt.ApplyUpdates;
  datos.data.Commit;
end;

procedure TFrmHome.cxButton1Click(Sender: TObject);
var
  MyNotification: TNotification; //Defines a TNotification variable

begin
  Printer.begindoc;
  printer.Canvas.font.size:=0;
  printer.Canvas.font.Name:='Control';
  printer.Canvas.TextOut(0,0,'A');
  printer.enddoc;

//  MyNotification := NotificationCenter1.CreateNotification; //Creates the notification
//  try
//    MyNotification.Name := 'Windows10Notification'; //Defines the name of the notification.
//    MyNotification.Title := 'Windows 10 Notification #1'; //Defines the name that appears when the notification is presented.
//    MyNotification.AlertBody := 'RAD Studio 10 Seattle'; //Defines the body of the notification that appears below the title.
//
//    NotificationCenter1.PresentNotification(MyNotification); //Presents the notification on the screen.
//  finally
//    MyNotification.Free; //Frees the variable
//  end;

end;

procedure TFrmHome.cxButton2Click(Sender: TObject);
var
numero: integer;
begin
SystemParametersInfo(97,Word(true),@numero,0);

end;

procedure TFrmHome.Dashboard;
var
nDias:tdate;
myYear, myMonth, myDay : Word;
begin

   DecodeDate(NOW(), myYear, myMonth, myDay);
  with qventasmeses do
    begin
      close;
      sql.clear;
      sql.Add('select compras_por_mes.ftcnombremes,  cast(compras_por_mes.ftnmonto as float) as ftnmonto from compras_por_mes(:ANNO,0)');
//      sql.Add('order by ftcnombremes asc ');
      PARAMS[0].Value := myYear;
      open;
  end;
end;

procedure TFrmHome.BtRetiroClick(Sender: TObject);
begin
if FrmGastos = nil then
  begin
    FrmGastos := tFrmGastos.Create(self);
    FrmGastos.ShowModal;
  end;
end;

procedure TFrmHome.BTNREPORTEVENTAClick(Sender: TObject);
begin
if FrmRVentas = nil then
   begin
     FrmRVentas := tFrmRVentas.Create(self);
      FrmRVentas.Caption := 'Reporte de Ventas x Fecha';
      FrmRVentas.Edit1.Text := 'VENTAS';
      FrmRVentas.showmodal;
   end;
end;

procedure TFrmHome.btnsalirClick(Sender: TObject);
var
CanClose: Boolean;
begin


if DATOS.ZUconfiguracionPERMISOSALIR.Value = 'SI' then
 begin
 if FAutorizacion.ShowModal = mrOk then
                         begin


               if  Crear_Mensages('CONFIRMACION',
                    'Estas al punto de cerrar el Sistema',
                    '¿De veras quieres salir?, por favor confirmar',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\aviso.png',
                    'CONFIRMAR') then
                   begin


                    ///    Action := Cafree;
                       datos.ibqempleados.Close;
                       Application.Terminate;
                   end;


        end;

  end else begin
               datos.ibqempleados.Close;
                       Application.Terminate;
           end;

end;

procedure TFrmHome.BTNREALIZARPAGOSClick(Sender: TObject);
begin


if FrmGet_CXC = nil then
  begin
    FrmGet_CXC := tFrmGet_CXC.Create(self);
    FrmGet_CXC.showmodal;
  end;

end;

procedure TFrmHome.BTNPAGOSREALIZADOSClick(Sender: TObject);
begin



if FrmConsultaPagosxClientes = nil then
  begin
    FrmConsultaPagosxClientes := tFrmConsultaPagosxClientes.Create(self);
    FrmConsultaPagosxClientes.showmodal;
  end;

end;

procedure TFrmHome.BtNCClick(Sender: TObject);
begin
if frmNC = nil then
  begin
      frmNC := tfrmNC.Create(self);
      frmNC.ShowModal;
  end;
end;

procedure TFrmHome.BtnCocinaClick(Sender: TObject);
begin

    if fPedidosCocina = nil then
             begin
                 fPedidosCocina := tfPedidosCocina.Create(self);
                 fPedidosCocina.ShowModal;
             end;

end;

procedure TFrmHome.dxBarButton7Click(Sender: TObject);
begin
IsConnected;
end;

procedure TFrmHome.dxBarLargeButton23Click(Sender: TObject);
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

procedure TFrmHome.Balances1Click(Sender: TObject);
begin
   if FrmBalanceBanco = nil  then
     begin
       FrmBalanceBanco := tFrmBalanceBanco.create(self);
       FrmBalanceBanco.show;
     end;

end;

procedure TFrmHome.BRTCClick(Sender: TObject);
begin
frtc.showmodal;
end;

procedure TFrmHome.BTCobroFacturaClick(Sender: TObject);
begin
if FrmCobroFact = nil then
  begin
    FrmCobroFact := TFrmCobroFact.Create(self);
    FrmCobroFact.ShowModal;
  end;
end;

procedure TFrmHome.BTPRODUCTOClick(Sender: TObject);
begin


if FrmAdminArticulos  = nil then
   begin
     FrmAdminArticulos  := TFrmAdminArticulos .Create(self);

     FrmAdminArticulos.ShowModal;
   end;


end;

procedure TFrmHome.BtTurnosClick(Sender: TObject);
begin

   if FrmOpcionCaja = nil then
  begin
    FrmOpcionCaja := TFrmOpcionCaja.Create(self);
    FrmOpcionCaja.ShowModal;
  end;
end;

procedure TFrmHome.Button1Click(Sender: TObject);
var
  Source, Target : string;

 begin
  Source := '12345678';
  Target := Copy(Source, 3, 4);
  ShowMessage('Target : '+Target);

end;

procedure TFrmHome.BTNCOMPRASClick(Sender: TObject);
begin


if FrmFactProveedores = nil then
  begin
    FrmFactProveedores := TFrmFactProveedores.Create(self);
    FrmFactProveedores.ShowModal;
  end;

end;

procedure TFrmHome.BTNMOVIMIENTOClick(Sender: TObject);
begin


if FrmAdmInventario = nil then
  begin
    FrmAdmInventario := tFrmAdmInventario.Create(self);
    FrmAdmInventario.ShowModal;
  end;


end;

procedure TFrmHome.BTNESTADOCREDITOClick(Sender: TObject);
begin

if FrmCxC = nil then
  begin
    FrmCxC := tFrmCxC.Create(self);
    FrmCxC.ShowModal;
  end;

end;

procedure TFrmHome.btnMaximizarClick(Sender: TObject);
begin
 if self.WindowState =wsMaximized then
   begin
     self.WindowState := wsMinimized;
   end else begin
              self.WindowState := wsMaximized;
            end;
end;

procedure TFrmHome.Empleados1Click(Sender: TObject);
begin
if FrmEmpleados = nil then
  begin
    FrmEmpleados := tFrmEmpleados.Create(self);
    FrmEmpleados.ShowModal;
  end;
end;

procedure TFrmHome.EntradasMovimientosCxc1Click(Sender: TObject);
begin
FrmEntradaCreditos.ShowModal;
end;

procedure TFrmHome.EstadodeCuenta1Click(Sender: TObject);
begin
if FrmCxC = nil then
  begin
      FrmCxC := tFrmCxC.Create(self);
      FrmCxC.ShowModal;
  end;
end;

procedure TFrmHome.EstadodeCuentaporProveedor1Click(Sender: TObject);
begin
   if FrmEstadoCxp = nil then
      begin
        FrmEstadoCxp := TFrmEstadoCxp.Create(self);
        FrmEstadoCxp.ShowModal;
      end;

end;

procedure TFrmHome.Facturacin1Click(Sender: TObject);
begin
s1.Enabled := false;
btnsalir.Enabled := false;
spSalir.Enabled := false;



with datos.ZUconfiguracion do
  begin
    close;
    open;
    first;
  end;




if datos.ZUconfiguracionTerminal.Value = 'Normal' then
   begin

     if FrmNFact_normal = nil then
      begin

          OffMenu;
         FrmNFact_normal := TFrmNFact_normal.Create(self);
         FrmNFact_normal.Parent := pnlCentral;
         FrmNFact_normal.Align  := alClient;
         FrmNFact_normal.BorderStyle := bsNone;
         FrmNFact_normal.Show;
       end;


   end;


   if datos.ZUconfiguracionTerminal.Value = 'Touch' then
   begin



     if FrmTouch = nil then
      begin

          OffMenu;
         FrmTouch := TFrmTouch.Create(self);
         FrmTouch.Parent := pnlCentral;
         FrmTouch.Align  := alClient;
         FrmTouch.BorderStyle := bsNone;
         FrmTouch.Show;
       end;


   end;

end;

procedure TFrmHome.FormClose(Sender: TObject; var Action: TCloseAction);
var
aa : integer;
begin






//For aa:= 0 to MDIChildCount-1 do
//MDIChildren[aa].Close;
end;

procedure TFrmHome.FormCreate(Sender: TObject);
var
numero: integer;
begin
//SystemParametersInfo(97,Word(true),@numero,0);
//Timer1.Enabled := true;


hhkLowLevelKybd := 0;
hhkLowLevelKybd := SetWindowsHookEx(WH_KEYBOARD_LL, @LowLevelKeyboardProc,
HInstance, 0);
application.title:='';


end;

procedure TFrmHome.FormShow(Sender: TObject);
var
cuantos : integer;
cuantos_P : double;
begin

with datos.QInventarioLote do
   begin
     close;
     sql.Clear;
     sql.Add('select * from inventario_lote where estado = ''ABIERTO''');
     OPEN;
   end;

   if DATOS.QInventarioLote.RecordCount > 0  then
      begin
        AsignaLote := datos.QInventarioLoteID.value;
      end else begin
                    AsignaLote := 0;
               end;




pnl_Menu_Lateral.Width := 41;
panel1.left:= (screen.width div 2) - panel1.width div 2;
panel1.top:= (screen.height div 2) - panel1.height div 2;
pnlGraph.Height := 1;
cuantos := 0;
QcontrorCopia.Open;
cuantos := qcontrorCopia.RecordCount;

cuantos_p := datos.zuconfiguracioncontrolcontadortotal.Value / 0.75;

if cuantos >= cuantos_p then
   begin

      MsgInformacion(' Aviso, El sistema requiere de mantenimiento, favor llamar a Soporte Técnico');

   end;


  if cuantos >= datos.zuconfiguracioncontrolcontadortotal.Value then
   begin
           MsgInformacion(' Aviso, El sistema se detuvo por  mantenimiento, favor llamar a Soporte Técnico');
           close;
   end;

   if frmLogin = nil then
    begin

      frmlogin := tfrmlogin.Create(self);
      frmLogin.Showmodal;
    end;

permisos;


end;

procedure TFrmHome.I1Click(Sender: TObject);
begin
if Fimpuestos = nil then
  begin
    fImpuestos := TfImpuestos.Create(Self);
    fImpuestos.ShowModal;
  end;

end;

procedure TFrmHome.MimpuestoClick(Sender: TObject);
begin
if form_01 = nil then
   begin
       form_01 := tform_01.Create(self);
       form_01.ShowModal;
   end;
end;

procedure TFrmHome.Image16Click(Sender: TObject);
begin
Dashboard;
pnlGraph.Height := 400;
pnlTopGraph.Visible := TRUE;
panel16.Visible := false;
end;

procedure TFrmHome.Image8Click(Sender: TObject);
begin
 if bExpandir then
       pnl_Menu_Lateral.Width := 41
     else
       pnl_Menu_Lateral.Width := 217;

     bExpandir := not bExpandir;
end;

procedure TFrmHome.ImportarExcel1Click(Sender: TObject);
begin

   if FrmImportarExcel = nil then
     begin
        FrmImportarExcel := TFrmImportarExcel.Create(self);
        FrmImportarExcel.ShowModal;
     end;

end;

procedure TFrmHome.InventarioalCortedeFecha1Click(Sender: TObject);
begin


if  ReporteInventario = nil then
  begin
      ReporteInventario := tReporteInventario.Create(self);
      ReporteInventario.ShowModal;
  end;
end;

procedure TFrmHome.M1Click(Sender: TObject);
begin
  if fsustancia = nil then
  begin
    Fsustancia := tfsustancia.Create(self);
    Fsustancia.ShowModal;
  end;
end;

procedure TFrmHome.M2Click(Sender: TObject);
begin
if fMarca = nil then
  begin
    fmarca := TfMarca.Create(self);
    fMarca.qConsulta1.Close;
    fmarca.ShowModal;
  end;
end;

procedure TFrmHome.M3Click(Sender: TObject);
begin
  if fClasificacion = nil then
    begin
      fClasificacion := TfClasificacion.Create(self);
      fClasificacion.ShowModal;
    end;
end;

procedure TFrmHome.M4Click(Sender: TObject);
begin
if FmrMant_Categoria = nil then
  begin
    FmrMant_Categoria := tFmrMant_Categoria.Create(self);
    FmrMant_Categoria.ShowModal;
  end;
end;

procedure TFrmHome.M5Click(Sender: TObject);
begin


if FSubCategoria = nil then
  begin
    FSubCategoria := tFSubCategoria.Create(self);
     FSubCategoria.showmodal;
  end;

end;

procedure TFrmHome.M6Click(Sender: TObject);
begin
    if fIndicaciones = nil then
      begin
        fIndicaciones := TfIndicaciones.Create(self);
        fIndicaciones.ShowModal;
      end;
end;

procedure TFrmHome.M8Click(Sender: TObject);
begin
 if FrmModulos = nil then
   begin
     FrmModulos := TFrmModulos.Create(self);
     FrmModulos.ShowModal;
   end;

end;

procedure TFrmHome.MantdeBancos1Click(Sender: TObject);
begin
if FrmMantBancos = nil then
  begin
    FrmMantBancos := tFrmMantBancos.Create(self);
     FrmMantBancos.showmodal;
  end;
end;

procedure TFrmHome.MantenimientodeEquipos1Click(Sender: TObject);
begin
if FrmTiposEquipos = nil then
  begin
    FrmTiposEquipos := tFrmTiposEquipos.Create(self);
    FrmTiposEquipos.ShowModal;
  end;
end;

procedure TFrmHome.Mod1Click(Sender: TObject);
begin
if FrmModulos = nil then
   begin
     FrmModulos := TFrmModulos.create(self);
     FrmModulos.showmodal;
   end;
end;

procedure TFrmHome.ModificarNCF1Click(Sender: TObject);
begin
if FrmEditarNCF = nil then
  begin
   FrmEditarNCF := tFrmEditarNCF.Create(self);
    FrmEditarNCF.Edit1.Text := '2';
    FrmEditarNCF.ShowModal;
  end;

end;

procedure TFrmHome.Moneda1Click(Sender: TObject);
begin
if FrmMoneda = nil then
  begin
    FrmMoneda := tFrmMoneda.Create(self);
    FrmMoneda.showmodal;
  end;
end;

procedure TFrmHome.MovimientodeInvetario1Click(Sender: TObject);
begin
if FrmAdmInventario = nil then
  begin
    FrmAdmInventario := tFrmAdmInventario.Create(self);
    FrmAdmInventario.ShowModal;
  end;
end;

procedure TFrmHome.Notarios1Click(Sender: TObject);
begin
if frmnotario = nil then
begin
  frmnotario := tfrmnotario.Create(self);
  frmnotario.ShowModal;
end;
end;

procedure TFrmHome.OffMenu;
begin
  if bExpandir then
       pnl_Menu_Lateral.Width := 41
     else
       pnl_Menu_Lateral.Width := 217;

     bExpandir := not bExpandir;

     pnlTop.Visible := true;
     pnl_Menu_Lateral.Visible := false;
     btnsalir.Enabled := false;

end;

procedure TFrmHome.P1Click(Sender: TObject);
begin
     if fPerfirUsuario = nil then
       begin
         fPerfirUsuario := TfPerfirUsuario.Create(self);
         fPerfirUsuario.ShowModal;
       end;
end;

procedure TFrmHome.PackingList1Click(Sender: TObject);
begin
  if PackingList = nil then
    begin
      PackingList := tPackingList.create(self);
      PackingList.showmodal;
    end;
end;

procedure TFrmHome.permisos;
var
BTn : String;
Av : Boolean;
begin


  if Asignaperfil > 0 then BEGIN

  with datos.Qperfil
  do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where a.idnivel =:usuarioID');
          Params[0].Value := AsignaPerfil;
          open;
        end;
//
       if datos.Qperfil.RecordCount > 0 then
          begin

            datos.qperfil.first;


            while not datos.Qperfil.eof do
               begin

               BTn := datos.QperfilNOMBRE_FORM.Text;

               if Btn = 'Spfacturacion'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin

                         spFacturacion.Enabled := true;
                         Facturacin1.Enabled := true;
                       end else begin
                                  spFacturacion.Enabled := false;
                                  Facturacin1.Enabled := false;
                                end;
                 end;


               if Btn = 'spInventario'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         spInventario.Enabled := true;
                      end else begin
                              spInventario.Enabled := false;
                         end;
                 end;

                if Btn = 'Almacenes1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         Almacenes1.Enabled := true;
                       end else begin
                                  Almacenes1.Enabled := false;
                                end;
                 end;

              if Btn = 'InventarioalCortedeFecha1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         InventarioalCortedeFecha1.Enabled := true;
                        // NotasdeCrditos1.Enabled := true;
                       end else begin
                                  InventarioalCortedeFecha1.Enabled := false;
                                end;
                 end;



                if Btn = 'MovimientodeInvetario1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         MovimientodeInvetario1.Enabled := true;

                       end else begin
                                 MovimientodeInvetario1.Enabled := false;
                                end;
                 end;


                if Btn = 'ProductosBajoInventario1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         ProductosBajoInventario1.Enabled := true;
                       end else begin
                                 ProductosBajoInventario1.Enabled := false;
                                end;
                 end;


               if Btn = 'ReportedeInventario1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         ReportedeInventario1.Enabled := true;
                       end else begin
                                 ReportedeInventario1.Enabled := false;
                                end;
                 end;



         if Btn = 'ReportedeDescomisos1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         ReportedeDescomisos1.Enabled := true;
                       end else begin
                                 ReportedeDescomisos1.Enabled := false;
                                end;
                 end;

             if Btn = 'ActulizarCostoPromedio1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         ActulizarCostoPromedio1.Enabled := true;
                       end else begin
                                 ActulizarCostoPromedio1.Enabled := false;
                                end;
                 end;


               if Btn = 'ReporteInventarioManual1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         ReporteInventarioManual1.Enabled := true;
                       end else begin
                                 ReporteInventarioManual1.Enabled := false;
                                end;
                 end;



               if Btn = 'Proveedores1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         Proveedores1.Enabled := true;
                       end else begin
                                 Proveedores1.Enabled := false;
                                end;
                 end;


               if Btn = 'M2'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         M2.Enabled := true;
                       end else begin
                                 M2.Enabled := false;
                                end;
                 end;


              if Btn = 'M1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         M1.Enabled := true;
                       end else begin
                                 M1.Enabled := false;
                                end;
                 end;


            ///  Menu Principal

              if Btn = ' M3'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                          M3.Enabled := true;
                       end else begin
                                 M3.Enabled := false;
                                end;
                 end;



                  if Btn = 'M4'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         M4.Enabled := true;
                       end else begin
                                  M4.Enabled := false;
                                end;
                 end;


                  if Btn = 'M5'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         M5.Enabled := true;
                       end else begin
                           M5.Enabled := false;
                                end;
                 end;


                   if Btn = 'M6'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         M6.Enabled := true;
                       end else begin
                           M6.Enabled := false;
                                end;
                 end;


                  if Btn = 'A2'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                        A2.Enabled := true;
                       end else begin
                                 A2.Enabled := false;
                                end;
                 end;

                  if Btn = 'C5'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                    C5.Enabled := true;
                       end else begin
                      C5.Enabled := false;
                                end;
                 end;

                 if Btn = 'ReiniciarInventario1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                    ReiniciarInventario1.Enabled := true;
                       end else begin
                       ReiniciarInventario1.Enabled := false;
                                end;
                 end;

                 if Btn = 'sbContabilidad'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                      Contabilidad.Enabled := true;
                      sbContabilidad.Enabled := true;
                       end else begin
                       Contabilidad.Enabled := false;
                       sbContabilidad.Enabled := false;
                                end;
                 end;


                 if Btn = 'sbCompras'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                     sbCompras.Enabled := true;
                       end else begin
                      sbCompras.Enabled := false;
                                end;
                 end;

                  if Btn = 'spCuentasxCobrar'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                      spCuentasxCobrar.Enabled := true;
                       end else begin
                       spCuentasxCobrar.Enabled := false;
                                end;
                 end;


                  if Btn = 'sbCaja'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                            sbCaja.Enabled := true;
                            Caja1.Enabled  :=true;
                       end else begin
                            sbCaja.Enabled := false;
                            Caja1.Enabled  := false;
                                end;
                 end;


                  if Btn = 'sbARM'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                        sbARM.Enabled := true;
                        RMA1.Enabled  := true;
                       end else begin
                              sbARM.Enabled := false;
                              RMA1.Enabled  := false;
                                end;
                 end;

                  if Btn = 'sbConfiguracion'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                      sbConfiguracion.Enabled := true;
                       end else begin
                       sbConfiguracion.Enabled := false;
                                end;
                 end;


                 if Btn = 'abCobrosFacturas'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       abCobrosFacturas.Enabled := true;
                       end else begin
                        abCobrosFacturas.Enabled := false;
                                end;
                 end;


                 if Btn = 'ImportarExcel1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                      ImportarExcel1.Enabled := true;
                       end else begin
                       ImportarExcel1.Enabled := false;
                                end;
                 end;

                 if Btn = 'tazadeCambio1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                        tazadeCambio1.Enabled := true;
                       end else begin
                              tazadeCambio1.Enabled := false;
                                end;
                 end;

                  if Btn = 'Mimpuesto'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       Mimpuesto.Enabled := true;
                       end else begin
                              Mimpuesto.Enabled := false;
                                end;
                 end;

                 if Btn = 'Mbackup'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       Mbackup.Enabled := true;
                       end else begin
                              Mbackup.Enabled := false;
                                end;
                 end;

                  if Btn = 'PackingList1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       PackingList1.Enabled := true;
                       end else begin
                              PackingList1.Enabled := false;
                                end;
                 end;


                  if Btn = 'PackingList1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       PackingList1.Enabled := true;
                       end else begin
                              PackingList1.Enabled := false;
                                end;
                 end;

                 if Btn = 'C2'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       C2.Enabled := true;
                       end else begin
                              C2.Enabled := false;
                                end;
                 end;

                  if Btn = 'C3'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       C3.Enabled := true;
                       end else begin
                              C3.Enabled := false;
                                end;
                 end;

                 if Btn = 'Almacenes1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       Almacenes1.Enabled := true;
                       end else begin
                              Almacenes1.Enabled := false;
                                end;
                 end;


                  if Btn = 'Utilidad1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       Utilidad1.Enabled := true;
                       end else begin
                              Utilidad1.Enabled := false;
                                end;
                 end;

                   if Btn = 'Mantenimientos1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       Mantenimientos1.Enabled := true;
                       end else begin
                              Mantenimientos1.Enabled := false;
                                end;
                 end;
                   if Btn = 'NotasdeCrditos1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       NotasdeCrditos1.Enabled := true;
                       end else begin
                              NotasdeCrditos1.Enabled := false;
                                end;
                 end;
                   if Btn = 'RetirodeEfectivos1'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                       RetirodeEfectivos1.Enabled := true;
                       end else begin
                              RetirodeEfectivos1.Enabled := false;
                                end;
                 end;
//

               if Btn = 'Dash'  then
                  begin
                      if datos.QperfilESTADO.Value = 'True' then
                        begin
                        Dash.Enabled := true;
                        end else begin
                               Dash.Enabled := false;
                                end;
                  end;
//                   if Btn = 'Mod1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Mod1.Enabled := true;
//                       end else begin
//                              Mod1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'Usuarios1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Usuarios1.Enabled := true;
//                       end else begin
//                              Usuarios1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'ActualizaBalancePendiente1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       ActualizaBalancePendiente1.Enabled := true;
//                       end else begin
//                              ActualizaBalancePendiente1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'ActualizarGeneradores1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       ActualizarGeneradores1.Enabled := true;
//                       end else begin
//                              ActualizarGeneradores1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'CategoriasFamilias1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       m4.Enabled := true;
//                       end else begin
//                              m4.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'Rutas1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Rutas1.Enabled := true;
//                       end else begin
//                              Rutas1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'Clientes1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Clientes1.Enabled := true;
//                       end else begin
//                              Clientes1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'Empleados1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Empleados1.Enabled := true;
//                       end else begin
//                              Empleados1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'Proveedores1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Proveedores1.Enabled := true;
//                       end else begin
//                              Proveedores1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'ConceptosdeGastos1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       ConceptosdeGastos1.Enabled := true;
//                       end else begin
//                              ConceptosdeGastos1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'Moneda1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Moneda1.Enabled := true;
//                       end else begin
//                              Moneda1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'Notarios1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Notarios1.Enabled := true;
//                       end else begin
//                              Notarios1.Enabled := false;
//                                end;
//                 end;
//                   if Btn = 'Representante'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Representante.Enabled := true;
//                       end else begin
//                              Representante.Enabled := false;
//                                end;
//                 end;
//
//                   if Btn = 'Clasificaciones1'  then
//                 begin
//                     if datos.QperfilESTADO.Value = 'True' then
//                       begin
//                       Clasificaciones1.Enabled := true;
//                       end else begin
//                              Clasificaciones1.Enabled := false;
//                                end;
//                 end;
            //   Btn.Tag := 2;
//                btn.Enabled := true;
               datos.Qperfil.Next;
               end;




          end;
  END;

end;

procedure TFrmHome.ProductosBajoInventario1Click(Sender: TObject);
begin
if FrmPedido = nil then
  begin
    FrmPedido  := tFrmPedido.Create(Self);
    FrmPedido.ShowModal;
  end;
end;

procedure TFrmHome.Proveedores1Click(Sender: TObject);
begin
if FrmProvee = nil then
  begin
    FrmProvee := tFrmProvee.Create(self);
    FrmProvee.showmodal;
  end;
end;

procedure TFrmHome.ransaciones1Click(Sender: TObject);
begin
if FrmTransaciones = nil then
  begin
    FrmTransaciones := tFrmTransaciones.Create(self);
    FrmTransaciones.showmodal;
  end;
end;

procedure TFrmHome.Realizarpagos1Click(Sender: TObject);
begin
if FrmGet_CXC = nil then
  begin
    FrmGet_CXC := tFrmGet_CXC.Create(self);
    FrmGet_CXC.ShowModal;
  end;
end;

procedure TFrmHome.ReiniciarInventario1Click(Sender: TObject);
begin
     if fReinicioInventario = nil then
       begin
         fReinicioInventario := TfReinicioInventario.Create(self);
         fReinicioInventario.ShowModal;
       end;
end;

procedure TFrmHome.RelacindePagosxClientes1Click(Sender: TObject);
begin

if FrmConsultaPagosxClientes = nil then
  begin
    FrmConsultaPagosxClientes := tFrmConsultaPagosxClientes.create(self);
    FrmConsultaPagosxClientes.showmodal;
  end;


end;

procedure TFrmHome.ReportedeComprasxClientes1Click(Sender: TObject);
begin
if FrmRCompraXClientes = nil then
  begin
    FrmRCompraXClientes := tFrmRCompraXClientes.Create(self);
     FrmRCompraXClientes.showmodal;
  end;

end;

procedure TFrmHome.ReportedeCXC1Click(Sender: TObject);
begin
 FrmRCreditoxFechas.ShowModal;
end;

procedure TFrmHome.ReportedeDescomisos1Click(Sender: TObject);
begin
   if FrmDecomisos = nil then
     begin
       FrmDecomisos := tFrmDecomisos.create(self);
       FrmDecomisos.showmodal;
     end;
end;


procedure TFrmHome.ReportedeInventario1Click(Sender: TObject);
begin
if FrmReporte_Inventario = nil then
  begin
    FrmReporte_Inventario := TFrmReporte_Inventario.create(self);
    FrmReporte_Inventario.showmodal;
  end;
end;

procedure TFrmHome.ReporteInventarioManual1Click(Sender: TObject);
begin
if FrmRMecanciaInvManual = nil then
  begin
      FrmRMecanciaInvManual := tFrmRMecanciaInvManual.Create(self);
      FrmRMecanciaInvManual.ShowModal;
  end;

end;

procedure TFrmHome.RepresentanteClick(Sender: TObject);
begin
if FrmVendedores = nil then
  begin
    FrmVendedores := tFrmVendedores.Create(self);
    FrmVendedores.ShowModal;
  end;
end;

procedure TFrmHome.Rutas1Click(Sender: TObject);
begin
    FrmRutas.showmodal;
end;

procedure TFrmHome.S1Click(Sender: TObject);
var
CanClose: Boolean;
begin


if DATOS.ZUconfiguracionPERMISOSALIR.Value = 'SI' then
 begin
 if FAutorizacion.ShowModal = mrOk then
                         begin


               if  Crear_Mensages('CONFIRMACION',
                    'Estas al punto de cerrar el Sistema',
                    '¿De veras quieres salir?, por favor confirmar',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\aviso.png',
                    'CONFIRMAR') then
                   begin


                    ///    Action := Cafree;
                       datos.ibqempleados.Close;
                       Application.Terminate;
                   end;


        end;

  end else begin
               datos.ibqempleados.Close;
                       Application.Terminate;
           end;

end;

procedure TFrmHome.spInventarioClick(Sender: TObject);
begin
   if fInventario_Master = nil then
      begin

          OffMenu;
         fInventario_Master := tfInventario_Master.Create(self);
         fInventario_Master.Parent := pnlCentral;
         fInventario_Master.Align  := alClient;
         fInventario_Master.BorderStyle := bsNone;



         fInventario_Master.Show;
       end;
end;

procedure TFrmHome.spFacturacionClick(Sender: TObject);
begin

s1.Enabled := false;
btnsalir.Enabled := false;
spSalir.Enabled := false;

with datos.ZUconfiguracion do
  begin
    close;
    open;
    first;
  end;

  if datos.ZUconfiguracionTerminal.Value = 'Pizzeria' then begin

  if FrmPizeria = nil then
      begin
         FrmPizeria := tFrmPizeria.Create(self);
//         FrmPizeria.Parent := pnlCentral;
//         FrmPizeria.Align  := alClient;
//         FrmPizeria.BorderStyle := bsNone;
         FrmPizeria.Showmodal;
       end;
   end;


if datos.ZUconfiguracionTerminal.Value = 'Normal' then
   begin

     if FrmNFact_normal = nil then
      begin

          OffMenu;
         FrmNFact_normal := TFrmNFact_normal.Create(self);
         FrmNFact_normal.Parent := pnlCentral;
         FrmNFact_normal.Align  := alClient;
         FrmNFact_normal.BorderStyle := bsNone;
         FrmNFact_normal.Show;
       end;


   end;


   if datos.ZUconfiguracionTerminal.Value = 'Touch' then
   begin



     if FrmTouch = nil then
      begin

          OffMenu;
         FrmTouch := TFrmTouch.Create(self);
         FrmTouch.Parent := pnlCentral;
         FrmTouch.Align  := alClient;
         FrmTouch.BorderStyle := bsNone;
         FrmTouch.Show;
       end;


   end;


end;

procedure TFrmHome.abCobrosFacturasClick(Sender: TObject);
begin
if FrmCobroFact = nil then
  begin
    OffMenu;
    FrmCobroFact := TFrmCobroFact.Create(self);
    FrmCobroFact.Parent := pnlCentral;
    FrmCobroFact.Align  := alClient;
    FrmCobroFact.BorderStyle := bsNone;
    FrmCobroFact.Show;
  end;
end;

procedure TFrmHome.spSalirClick(Sender: TObject);
var
CanClose: Boolean;
begin
if DATOS.ZUconfiguracionPERMISOSALIR.Value = 'SI' then
 begin
 if FAutorizacion.ShowModal = mrOk then
                         begin


               if  Crear_Mensages('CONFIRMACION',
                    'Estas al punto de cerrar el Sistema',
                    '¿De veras quieres salir?, por favor confirmar',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\aviso.png',
                    'CONFIRMAR') then
                   begin


                    ///    Action := Cafree;
                       datos.ibqempleados.Close;
                       Application.Terminate;
                   end;


        end;
 end else begin
     datos.ibqempleados.Close;
     Application.Terminate;
 end;


end;

procedure TFrmHome.SpeedButton1dddClick(Sender: TObject);
begin
//   if  Crear_Mensages('CONFIRMACION',
//                    'Estas al punto de guardar los registros',
//                    'Estas seguro de guardar todos los registros?',
//                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso.png',
//                    'CONFIRMAR') then
//
//        ShowMessage('SI')
//        else
//
//        ShowMessage('NO')

    if bExpandir then
       pnl_Menu_Lateral.Width := 41
     else
       pnl_Menu_Lateral.Width := 217;

     bExpandir := not bExpandir;
end;

procedure TFrmHome.SpeedButton3Click(Sender: TObject);
begin
pnlTopGraph.Visible := FALSE;
panel16.Visible := true;
pnlGraph.Height := 1;
end;

procedure TFrmHome.sbConfiguracionClick(Sender: TObject);
begin
if FAutorizacion.ShowModal = mrOk then
           begin



   if FrmConfig = nil then
             begin
                 FrmConfig := tFrmConfig.Create(self);
                 FrmConfig.Parent := pnlCentral;
                 FrmConfig.Align  := alClient;
                 FrmConfig.BorderStyle := bsNone;
                 FrmConfig.Show;
             end;
           end;

end;

procedure TFrmHome.spCuentasxCobrarClick(Sender: TObject);
begin
  if FrmCxC = nil then
  begin
      FrmCxC := tFrmCxC.Create(self);
      FrmCxC.ShowModal;
  end;
end;

procedure TFrmHome.sbCajaClick(Sender: TObject);
begin

   if FrmOpcionCaja = nil then
  begin
    FrmOpcionCaja := TFrmOpcionCaja.Create(self);
    FrmOpcionCaja.ShowModal;
  end;
end;

procedure TFrmHome.sbComprasClick(Sender: TObject);
begin
   if FrmFactProveedores = nil then
          begin
            OffMenu;
            FrmFactProveedores                  := TFrmFactProveedores.Create(self);
            FrmFactProveedores.Parent           := pnlCentral;
            FrmFactProveedores.Align            := alClient;
            FrmFactProveedores.BorderStyle      := bsNone;
            FrmFactProveedores.Show;
          end;
    

end;

procedure TFrmHome.UnidadesdeMedida1Click(Sender: TObject);
begin
if FrmUnidad = nil then
  begin
     FrmUnidad := tFrmUnidad.Create(self);
     FrmUnidad.ShowModal;

  end;
end;

procedure TFrmHome.Usuarios1Click(Sender: TObject);
begin


if FrmUsuario = nil then
  begin
       FrmUsuario := tFrmUsuario.Create(self);
       FrmUsuario.ShowModal;
  end;

end;

procedure TFrmHome.UtilidadBruta1Click(Sender: TObject);
begin


if FrmUsuario = nil then
  begin
       FrmUsuario := tFrmUsuario.Create(self);
       FrmUsuario.ShowModal;
  end;

end;

procedure TFrmHome.Vendedores1Click(Sender: TObject);
begin
    FrmVendedores.showmodal;
end;

procedure TFrmHome.Vendedores2Click(Sender: TObject);
begin
       FrmVendedores.ShowModal;
end;

end.
