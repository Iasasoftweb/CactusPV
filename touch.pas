unit Touch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Vcl.DBCGrids, Data.DB,
  ZAbstractRODataset, ZDataset, cxLabel, cxDBLabel, cxImage, cxDBEdit,
  Vcl.StdCtrls, Vcl.Menus, cxButtons, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxPC,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractDataset, Vcl.Mask, RxToolEdit, RxCurrEdit, cxGridCustomLayoutView,
  cxGridCardView, cxCurrencyEdit, Vcl.ExtCtrls, cxEditRepositoryItems,
  cxButtonEdit, dxGDIPlusClasses, printers, WinSpool, StrUtilS, frxClass,
  frxDBSet, dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.WinXCtrls,
  cxDBNavigator, ShellApi, acPNG, Vcl.Buttons, Vcl.DBCtrls;

type
  TFrmTouch = class(TForm)
    op1: TcxGroupBox;
    DsqArticulos: TDataSource;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosUNIDAD: TWideStringField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosBENEFICIOS: TFloatField;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosOBS: TIntegerField;
    IbqRArticulosCOMISION: TFloatField;
    IbqRArticulosIMAGEN: TBlobField;
    IbqRArticulosCAT: TWideStringField;
    QClasificaciones: TZReadOnlyQuery;
    QClasificacionesID_SABOR: TIntegerField;
    QClasificacionesDESCRIPCION: TWideStringField;
    DsClasificaciones: TDataSource;
    DBLClasificacion: TcxLookupComboBox;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO: TIntegerField;
    IbqClientesNOMBRES: TWideStringField;
    IbqClientesDIRECCION: TWideStringField;
    IbqClientesCEDULA: TWideStringField;
    IbqClientesTELEFONO: TWideStringField;
    IbqClientesCELULAR: TWideStringField;
    IbqClientesCOLOR: TWideStringField;
    IbqClientesCONTACTO: TWideStringField;
    IbqClientesRENGLONCNF: TWideStringField;
    IbqClientesTXTCNF: TWideStringField;
    IbqClientesCREDITOLIMITE: TFloatField;
    IbqClientesTIPO: TWideStringField;
    IbqClientesRNC: TWideStringField;
    IbqClientesCONDICION: TWideStringField;
    IbqClientesINICIO: TDateField;
    IbqClientesSUELDO: TFloatField;
    IbqClientesPAGOITB: TWideStringField;
    IbqClientesCREDITO: TWideStringField;
    IbqClientesBALANCE: TFloatField;
    IbqClientesESTADO: TWideStringField;
    IbqClientesMOVIL: TWideStringField;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesCOMISION: TFloatField;
    IbqClientesNUMEROPIN: TWideStringField;
    IbqClientesTELEFONO3: TWideStringField;
    IbqClientesEMAIL: TWideStringField;
    IbqClientesRUTA_ID: TIntegerField;
    IbqClientesREGIONID: TIntegerField;
    IbqClientesPROVINCIAID: TIntegerField;
    IbqClientesMUNICIPIOID: TIntegerField;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZqusuarioCARGO: TWideStringField;
    numero_detalle: TZReadOnlyQuery;
    numero_detalleMAX: TIntegerField;
    numero_detallegen: TZQuery;
    numero_detallegenGEN_ID: TLargeintField;
    t3: TcxTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dsmasterFACT: TDataSource;
    DsIngredientes: TDataSource;
    cxStyle2: TcxStyle;
    Image1: TImage;
    Image2: TImage;
    Borrar: TZReadOnlyQuery;
    SQLCategoria: TZReadOnlyQuery;
    SQLCategoriaCODCAT: TIntegerField;
    SQLCategoriaCAT: TWideStringField;
    SQLCategoriaIMAGEN: TBlobField;
    SQLCategoriaEXTFOTO: TWideStringField;
    SQLCategoriaOPCION: TWideStringField;
    DsCategorias: TDataSource;
    BtIngredientes: TcxButton;
    SqlParaCocina: TZReadOnlyQuery;
    SQLNumeroCocina: TZReadOnlyQuery;
    SQLNumeroCocinaGEN_ID: TLargeintField;
    SqlNumeroDCocina: TZReadOnlyQuery;
    SqlNumeroDCocinaGEN_ID: TLargeintField;
    SqlBIngredientes: TZReadOnlyQuery;
    SqlBIngredientesCOD_SERIES: TIntegerField;
    SqlBIngredientesCOD_ARTI: TIntegerField;
    SqlBIngredientesSERIES: TWideStringField;
    SqlBIngredientesESTADO: TIntegerField;
    SqlBIngredientesNO_FACT: TIntegerField;
    SqlBIngredientesIDDETALLE: TIntegerField;
    SqlBIngredientesPRECIO: TFloatField;
    SqlBIngredientesITBS: TFloatField;
    SqlBIngredientesTOTAL: TFloatField;
    SqlBuscarCocina: TZReadOnlyQuery;
    SqlBuscarCocinaID: TIntegerField;
    SqlBuscarCocinaFECHA: TDateField;
    SqlBuscarCocinaNO_ORDEN: TIntegerField;
    SqlBuscarCocinaHORA: TTimeField;
    SqlBuscarCocinaCLIENTE: TWideStringField;
    SqlBuscarCocinaORDEN: TWideMemoField;
    SqlBuscarCocinaTIEMPO: TIntegerField;
    SqlBuscarCocinaTIEMPO_RESTANTA: TTimeField;
    SqlBuscarCocinaESTADO: TIntegerField;
    SqlBuscarDcocina: TZReadOnlyQuery;
    SqlBorrarDCocina: TZReadOnlyQuery;
    cxDBTextEdit2: TcxDBTextEdit;
    Label1: TLabel;
    SqlBuscarCocinaMESERO: TWideStringField;
    NumeroCodigo: TZQuery;
    NumeroCodigoGEN_ID: TLargeintField;
    Edit1: TEdit;
    QBalanceCreditoCliente: TZReadOnlyQuery;
    QBalanceCreditoClienteBALANCE: TExtendedField;
    Antiguedad: TZReadOnlyQuery;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TExtendedField;
    AntiguedadV0_30: TExtendedField;
    AntiguedadV31_60: TExtendedField;
    AntiguedadV61_90: TExtendedField;
    AntiguedadV91_120: TExtendedField;
    AntiguedadV120: TExtendedField;
    AntiguedadACTUAL: TExtendedField;
    IbqArticulosBar: TZReadOnlyQuery;
    IbqArticulosBarUNIDAD: TWideStringField;
    IbqArticulosBarPRECIO_A: TFloatField;
    IbqArticulosBarPRECIO_B: TFloatField;
    IbqArticulosBarPRECIO_D: TFloatField;
    IbqArticulosBarIMAGEN: TBlobField;
    IbqArticulosBarCAT: TWideStringField;
    IbqArticulosBarCOMISION: TFloatField;
    IbqArticulosBarCOD_ART: TIntegerField;
    IbqArticulosBarARTICULO: TWideStringField;
    IbqArticulosBarCOD_CAT: TIntegerField;
    IbqArticulosBarPOLITICA: TWideStringField;
    IbqArticulosBarREFERENCIA: TWideStringField;
    IbqArticulosBarUBICACION: TWideStringField;
    IbqArticulosBarMODELO: TWideStringField;
    IbqArticulosBarMARCA: TWideStringField;
    IbqArticulosBarCODIGOTXT: TWideStringField;
    IbqArticulosBarITBIS: TWideStringField;
    IbqArticulosBarTAZA_COMPRA: TFloatField;
    IbqArticulosBarCOSTO_PR: TFloatField;
    IbqArticulosBarBENEFICIOS: TFloatField;
    IbqArticulosBarTIENECOMPACTIBILIDAD: TWideStringField;
    IbqArticulosBarMAYOREO1: TFloatField;
    IbqArticulosBarMAYOREO2: TFloatField;
    IbqArticulosBarMAYOREO3: TFloatField;
    IbqArticulosBarOBS: TIntegerField;
    IbqArticulosBarCODIGOUNICO: TWideStringField;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    Almacenes1: TZReadOnlyQuery;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    ActualizaLinea: TZReadOnlyQuery;
    Edit16: TEdit;
    QIngredientes: TZReadOnlyQuery;
    QIngredientesID: TIntegerField;
    QIngredientesIDARTI: TIntegerField;
    QIngredientesINGREDIENTES: TWideStringField;
    QIngredientesESTADO: TIntegerField;
    QNumIngredientes: TZReadOnlyQuery;
    QNumIngredientesGEN_ID: TLargeintField;
    QhayIngredientes: TZReadOnlyQuery;
    QhayIngredientesID: TIntegerField;
    QhayIngredientesIDARTICULOS: TIntegerField;
    QhayIngredientesIDDETALLE: TIntegerField;
    QhayIngredientesIDMASTER: TIntegerField;
    QhayIngredientesSELECCION: TWideStringField;
    QhayIngredientesOP: TIntegerField;
    // MCocina: TfrxDBDataset;
    // DCocina: TfrxDBDataset;
    detalle: TfrxDBDataset;
    Config: TfrxDBDataset;
    master: TfrxDBDataset;
    PrintCocina: TfrxReport;
    DCocina: TfrxDBDataset;
    MCocina: TfrxDBDataset;
    cxButton2: TcxButton;
    tbley: TcxButton;
    pnlDecimal: TPanel;
    Label3: TLabel;
    edtFraccion: TEdit;
    btOkFraccion: TcxButton;
    BTImpuesto: TcxButton;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel1: TPanel;
    imgLogoTop: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Panel9: TPanel;
    pnlBtnAddProductos: TPanel;
    SpeedButton1: TSpeedButton;
    Panel10: TPanel;
    BTordenDelibery: TSpeedButton;
    Panel11: TPanel;
    BtCliente: TSpeedButton;
    Panel12: TPanel;
    BTFactHold: TSpeedButton;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    BtnDGII: TSpeedButton;
    Panel21: TPanel;
    cxButton1: TSpeedButton;
    Panel22: TPanel;
    TbMesas: TSpeedButton;
    Panel23: TPanel;
    BTMEsero: TSpeedButton;
    cxButton9: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    Panel5: TPanel;
    cxGroupBox3: TcxGroupBox;
    t4: TCurrencyEdit;
    t1: TEdit;
    t2: TcxTextEdit;
    edit11: TcxTextEdit;
    PanelRt: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label40: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    total: TcxDBCurrencyEdit;
    Txtecnico: TEdit;
    NCnumero: TEdit;
    Descc_t: TEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Panel6: TPanel;
    Image4: TImage;
    Edit4: TEdit;
    Panel16: TPanel;
    btDescuento: TSpeedButton;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1UNID: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Edit3: TEdit;
    Edit2: TEdit;
    FormaPago: TEdit;
    Panel25: TPanel;
    cxGroupBox2: TcxGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    cxDBLabel5: TcxDBLabel;
    cxDBNavigator1: TcxDBNavigator;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    DbCtrlGrid_Pizza: TDBCtrlGrid;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    Edit5: TEdit;
    cxTabSheet2: TcxTabSheet;
    DBCtrlGrid2: TDBCtrlGrid;
    cxDBImage2: TcxDBImage;
    cxDBLabel4: TcxDBLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    cxTabSheet3: TcxTabSheet;
    DBCtrlGrid3: TDBCtrlGrid;
    Image3: TImage;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxGroupBox4: TcxGroupBox;
    BtNuevo: TcxButton;
    BtAbajo: TcxButton;
    Btarriba: TcxButton;
    BTBuscar: TcxButton;
    BTEnviarHold: TcxButton;
    BtDelivery: TcxButton;
    BTOrdenCocina: TcxButton;
    BtFacturaImpresas: TcxButton;
    Panel26: TPanel;
    Panel27: TPanel;
    edtBuscar: TEdit;
    Image5: TImage;
    Panel28: TPanel;
    edtHabitaciones: TEdit;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel49: TPanel;
    BTCobrar: TSpeedButton;
    Panel51: TPanel;
    BTCobroTarjeta: TSpeedButton;
    Panel50: TPanel;
    BTCobroMixto: TSpeedButton;
    Panel24: TPanel;
    Panel18: TPanel;
    BtEliminarArticulo: TSpeedButton;
    Panel19: TPanel;
    BTCanelar: TSpeedButton;
    Panel20: TPanel;
    cxButton3: TSpeedButton;
    pnlCambioPrecio: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    cxCambioPrecio: TcxCurrencyEdit;
    Panel17: TPanel;
    SpeedButton2: TSpeedButton;
    lblNombreProducto: TLabel;
    cxDBImage1: TcxDBImage;
    cxDBComboBox2: TcxDBComboBox;
    cxDBComboBox1: TcxDBComboBox;
    Label9: TLabel;
    Label2: TLabel;
    SHPropina: TToggleSwitch;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtNuevoClick(Sender: TObject);
    procedure DBLClasificacionPropertiesChange(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure nofraccional;
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BtAbajoClick(Sender: TObject);
    procedure BtarribaClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView2Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView2Column2CustomDrawCell
      (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView2Column3CustomDrawCell
      (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure BTBuscarClick(Sender: TObject);
    procedure cxGrid1DBTableView1Column3CustomDrawCell
      (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1Column3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtEliminarArticuloClick(Sender: TObject);
    procedure cxGrid1DBTableView1Column4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BTFactHoldClick(Sender: TObject);
    procedure Printcopia;
    procedure BTEnviarHoldClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Click(Sender: TObject);
    procedure BTCatNEXTClick(Sender: TObject);
    procedure addcat;
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure cxDBImage4Click(Sender: TObject);
    procedure cxDBLabel5Click(Sender: TObject);
    procedure addpizza;
    procedure DbCtrlGrid_PizzaClick(Sender: TObject);
    procedure cxDBImage1Click(Sender: TObject);
    procedure cxDBImage2Click(Sender: TObject);
    procedure cxDBLabel10Click(Sender: TObject);
    procedure cxDBLabel4Click(Sender: TObject);
    procedure BtDeliveryClick(Sender: TObject);
    procedure BTCanelarClick(Sender: TObject);
    procedure Cancelar;
    procedure nuevo;
    procedure BTOrdenCocinaClick(Sender: TObject);
    procedure BTMEseroClick(Sender: TObject);
    procedure pago;
    procedure cobrando;
    procedure totales;
    procedure recalcula;
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtFacturaImpresasClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure cxDBLabel9Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure add;
    procedure insertarbarra;
    procedure EnvioCocina;
    procedure cxDBLabel1Click(Sender: TObject);
    procedure InsertarIngredientes;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BTCobroTarjetaClick(Sender: TObject);
    procedure tbleyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btOkFraccionClick(Sender: TObject);
    procedure BTImpuestoClick(Sender: TObject);
    procedure BTordenDeliberyClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure TbMesasClick(Sender: TObject);
    procedure BtClienteClick(Sender: TObject);
    procedure BtnDGIIClick(Sender: TObject);
    procedure SpeedButton2dddddClick(Sender: TObject);
    procedure SpeedButton2sssssClick(Sender: TObject);
    procedure BtIngredientesClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure cxButton44Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cxCambioPrecioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure cargarlogo;
    procedure LimpiarTotales;
    { Private declarations }
  public
    suma, itbs, descc: Currency;
    { Public declarations }
  end;

var
  FrmTouch: TFrmTouch;

implementation

{$R *.dfm}

uses Unit2, tools, Unit131, Unit132, UFinder, Unit107, UMesas, Unit68, Unit133,
  Unit134, Unit117, Unit120, Unit87, Unit47, UfraccionPiza, UFacturasImpresas,
  UIngredientes, uDIngredientes, Unit118, Udescuento, UInicio;

function Relleno(text, Rell: string; Cant, posi: Integer): string;
var
  valor, x: Integer;
  dev, con: string;
begin
  con := '';
  valor := length(text);
  if valor < Cant then
  begin
    case posi of
      0 .. 1:
        begin
          for x := 1 to (Cant - valor) do
          begin
            con := con + Rell;
          end;
        end;
      2:
        begin
          for x := 1 to ((Cant - valor) div 2) do
          begin
            con := con + Rell;
          end;
        end;
    end;
    case posi of
      0:
        dev := con + text;
      1:
        dev := text + con;
      2:
        begin
          if Cant = (valor + length(con) + length(con)) then
            dev := con + text + con
          else
          begin
            if Cant > (valor + length(con) + length(con)) then
              dev := con + text + con + Rell
            else
              dev := con + text +
                copy(con, 0,
                (length(con) - (Cant - (valor + length(con) + length(con)))));
          end;
        end;
    end;
  end
  else
    dev := text;
  result := dev;
end;

// ------------------------------------------------------------------------------
// ***********************************************************[ ESPACIOS ]*******
// Delvuelve unacadena reyena de espacios al fondo o al frente
// Bajada de internet
// Ejemplo
// espacios(texto,30,1)=  '                        texto'
// espacios(texto,30,0)=    'texto                        '
// ------------------------------------------------------------------------------
function espacios(text: string; Cant: Integer; posi: Integer): string;
var
  valor, x: Integer;
  dev, con: string;
begin
  con := '';
  valor := length(text);
  if valor < Cant then
  begin
    for x := 1 to (Cant - valor) do
    begin
      con := con + ' ';
    end;
    if posi = 1 then
      dev := con + text
    else
      dev := text + con;
  end
  else
    dev := text;
  result := dev;
  // +'('+IntToStr(valor)+')('+IntToStr(Cant)+')('+IntToStr(Cant-valor)+')';
end;

function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
var
  PrinterHandle: THandle;
  DocInfo: TDocInfo1;
  i: Integer;
  B: Byte;
  Escritos: DWORD;
begin
  result := FALSE;
  if OpenPrinter(PChar(PrinterName), PrinterHandle, nil) then
    try
      FillChar(DocInfo, Sizeof(DocInfo), #0);
      with DocInfo do
      begin
        pDocName := PChar('Printer Test');
        pOutputFile := nil;
        pDataType := 'RAW';
      end;
      if StartDocPrinter(PrinterHandle, 1, @DocInfo) <> 0 then
        try
          if StartPagePrinter(PrinterHandle) then
            try
              while length(Str) > 0 do
              begin
                if copy(Str, 1, 1) = '\' then
                begin
                  if Uppercase(copy(Str, 2, 1)) = 'X' then
                    Str[2] := '$';
                  if not TryStrToInt(copy(Str, 2, 3), i) then
                    Exit;
                  B := Byte(i);
                  Delete(Str, 1, 3);
                end
                else
                  B := Byte(Str[1]);
                Delete(Str, 1, 1);
                WritePrinter(PrinterHandle, @B, 1, Escritos);
              end;
              result := TRUE;
            finally
              EndPagePrinter(PrinterHandle);
            end;
        finally
          EndDocPrinter(PrinterHandle);
        end;
    finally
      ClosePrinter(PrinterHandle);
    end;
end;

Function GetImpresora(Impre: String): Integer;
// ------------------------------------------------------------------------------
// **********************************************************[ GetImpresora ]****
// de Marcos Zorilla bajada de http://www.clubdelph...ead.php?t=68519
// ------------------------------------------------------------------------------
Var
  nCont: Integer;
  lSearch: Boolean;
  cNewLIne: String;
begin
  lSearch := FALSE;
  cNewLIne := Chr(10) + Chr(13);
  For nCont := 0 to Printer.printers.Count - 1 do
  // buscamos la impresora en la lista del sistema
  begin
    if Pos(Impre, Printer.printers[nCont]) <> 0 then
    begin
      lSearch := TRUE;
      result := nCont;
      Break;
    end;
  end;
  if lSearch = FALSE then
  begin
    ShowMessage('Impresora no encontrada.' + Impre + cNewLIne +
      'Se utilizará la predeterminda.');
    result := -1
  end;
end;

function MyTextReplace(Texto: String): String;
begin
  if Texto <> '' then
  begin
    Texto := AnsiReplaceStr(Texto, 'Ñ', #165);
    Texto := AnsiReplaceStr(Texto, 'ñ', #164);
    Texto := AnsiReplaceStr(Texto, 'á', #160);
    Texto := AnsiReplaceStr(Texto, 'é', #101); // #130);
    Texto := AnsiReplaceStr(Texto, 'í', #161);
    Texto := AnsiReplaceStr(Texto, 'ó', #162);
    Texto := AnsiReplaceStr(Texto, 'ú', #163);
    Texto := AnsiReplaceStr(Texto, 'Á', #65);
    Texto := AnsiReplaceStr(Texto, 'É', #144);
    Texto := AnsiReplaceStr(Texto, 'Í', #73);
    Texto := AnsiReplaceStr(Texto, 'Ó', #79);
    Texto := AnsiReplaceStr(Texto, 'Ú', #85);
    Texto := AnsiReplaceStr(Texto, 'Ü', #85);
    Texto := AnsiReplaceStr(Texto, 'Ü', #129);
    result := Texto;
  end;
end;

function CenterString(aStr: String; Len: Integer): String;
var
  posStr: Integer;
begin
  if length(aStr) > Len then
    result := copy(aStr, 1, Len)
  else
  begin
    posStr := (Len - length(aStr)) div 2;
    result := Format('%*s', [Len, aStr + Format('%-*s', [posStr, ''])]);
  end;
end;

function GetToken(Cadena: string; Separador: char; Token: Integer): string;
overload
{
  Cadena     es la string en la que buscar el token
  Separador  es la string que separa cada token
  Token      es el número de token que buscamos

  Cadena     is the string in that look for the token
  Separador  is the token separator
  Token      is the desired token number
}
var
  Posicion: Integer;
begin
  while Token > 1 do
  begin
    Delete(Cadena, 1, Pos(Separador, Cadena));
    Dec(Token);
  end;
  Posicion := Pos(Separador, Cadena);
  if Posicion = 0 then
    result := Cadena
  else
    result := copy(Cadena, 1, Posicion - length(Separador));
end;

function GetToken(Cadena, Separador: String; Token: Integer): String;
overload
var
  Posicion: Integer;
begin
  while Token > 1 do
  begin
    Delete(Cadena, 1, Pos(Separador, Cadena) + length(Separador) - 1);
    Dec(Token);
  end;
  Posicion := Pos(Separador, Cadena);
  if Posicion = 0 then
    result := Cadena
  else
    result := copy(Cadena, 1, Posicion - 1);
end;

function GetTokenCount(Cadena: string; Separador: char): Integer; overload;
var
  Posicion: Integer;
begin
  Posicion := Pos(Separador, Cadena);
  result := 1;

  if Cadena <> '' then
  begin
    if Posicion <> 0 then
    begin
      while Posicion <> 0 do
      begin
        Delete(Cadena, 1, Posicion);
        Posicion := Pos(Separador, Cadena);
        Inc(result);
      end;
    end;
  end
  else
    result := 0;
end;

function GetTokenCount(Cadena, Separador: String): Integer; overload;
var
  Posicion: Integer;
begin
  if Cadena <> '' then
  begin
    Posicion := Pos(Separador, Cadena);
    result := 1;
    while Posicion <> 0 do
    begin
      Inc(result);
      Delete(Cadena, 1, Posicion + length(Separador) - 1);
      Posicion := Pos(Separador, Cadena);
    end;
  end
  else
    result := 0;
end;

procedure TFrmTouch.BtarribaClick(Sender: TObject);
begin
  IbqRArticulos.prior;
end;

procedure TFrmTouch.BtEliminarArticuloClick(Sender: TObject);
var
  suma: Currency;
  itbs: Currency;
  descc: Currency;
begin

  if (datos.FbqMaster_FactSITUACION.text = '') THEN
  BEGIN
    datos.Zdetalle.Delete;
    totales;
  END
  ELSE
  BEGIN

    if FAutorizacion.ShowModal = mrOk then
    begin

      with Borrar do
      begin
        close;
        sql.Clear;
        sql.add('delete from man_series where cod_arti =:codarti and no_fact =:numerofactura');
        params[0].Value := datos.ZdetalleARTICULOID.Value;
        params[1].Value := datos.ZdetalleMASTERID.Value;
        ExecSQL;
      end;

      datos.Zdetalle.Delete;
      // showmessage('');

      totales;
    end
    else
    begin
      MsgPrecaucion(' Operación No permitida, Favor llamar al Administrador');
    end;

  END;

end;

procedure TFrmTouch.BTCanelarClick(Sender: TObject);
begin

  if (datos.FbqMaster_FactSITUACION.text = '') THEN
  BEGIN

    if datos.FbqMaster_Fact.Active = TRUE then
    begin

      if datos.FbqMaster_Fact.Active = TRUE then
      begin

        if application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          datos.FbqMaster_Fact.Edit;
          if datos.FbqMaster_FactSITUACION.text <> 'PEDIDO' then
          BEGIN
            datos.FbqMaster_FactSITUACION.text := 'CANCELADA';
          END;
          datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
          // DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
          // datos.FbqMaster_Factterminal.Text := 'FACTURACION';
          datos.FbqMaster_FactABONO.Value := 0.00;
          datos.FbqMaster_FactPENDIENTE.Value :=
            datos.FbqMaster_FactMONTOPAGO.Value;

          if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
          begin
            datos.FbqMaster_Factquees.Value := 'NO';
          end;

          if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
          begin
            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
          end;

          t1.Clear;
          // t2.Clear;
          t3.Clear;
          t4.Clear;

          datos.FbqMaster_Fact.ApplyUpdates;
          datos.Zdetalle.ApplyUpdates;
          datos.Data.Commit;

          datos.ZInventario.close;
          datos.FbqMaster_Fact.close;
          datos.Zdetalle.close;

          Cancelar;
          // close;
        end;
      end;

    END;

  end
  else
  begin

    if FAutorizacion.ShowModal = mrOk then
    begin

      if datos.FbqMaster_Fact.Active = TRUE then
      begin

        if application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          datos.FbqMaster_Fact.Edit;
          if datos.FbqMaster_FactSITUACION.text <> 'PEDIDO' then
          BEGIN
            datos.FbqMaster_FactSITUACION.text := 'CANCELADA';
          END;
          datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
          // DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
          // datos.FbqMaster_Factterminal.Text := 'FACTURACION';
          datos.FbqMaster_FactABONO.Value := 0.00;
          datos.FbqMaster_FactPENDIENTE.Value :=
            datos.FbqMaster_FactMONTOPAGO.Value;

          if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
          begin
            datos.FbqMaster_Factquees.Value := 'NO';
          end;

          if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
          begin
            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
          end;

          t1.Clear;
          // t2.Clear;
          t3.Clear;
          t4.Clear;

          datos.FbqMaster_Fact.ApplyUpdates;
          datos.Zdetalle.ApplyUpdates;
          datos.Data.Commit;

          datos.ZInventario.close;
          datos.FbqMaster_Fact.close;
          datos.Zdetalle.close;

          Cancelar;
          // close;
        end;

      end;
    end
    else
    begin
      MsgPrecaucion(' Operación No permitida, Favor llamr al Administrador');
    end;

  end;

end;

procedure TFrmTouch.add;
var
  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;

  codb, codentero, coddecimal: string;

begin

  /// //******* Detectar Codigo Balanza ******************
  codb := copy(Edit4.text, 2, 5);

  with IbqArticulosBar do
  begin
    close;
    sql.Clear;
    sql.add('select a.unidad,a.precio_a, a.codigounico,a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    // sql.add('where a.marca =:marca');

    sql.add('WHERE a.codigobarra = :opp');
    sql.add('group by a.unidad,a.precio_a, a.codigounico, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := Edit4.text;
    // params[0].Value := SQLCategoriaCAT.Value;
    open;
  end;

  if IbqArticulosBarCODIGOUNICO.Value = 'Si' then
  begin

   // ShowMessage('' + codb);
    with IbqArticulosBar do
    begin
      close;
      sql.Clear;
      sql.add('select a.unidad,a.precio_a, a.codigounico,a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
      sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
      sql.add('from mtartuculos a');
      sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
      // sql.add('where a.marca =:marca');

      sql.add('WHERE a.codigobarra = :opp');
      sql.add('group by a.unidad,a.precio_a, a.codigounico, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
      sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
      params[0].Value := codb;
      // params[0].Value := SQLCategoriaCAT.Value;
      open;
    end;
  end;

  if TRUE then

    if CANTV = '' then
    begin
      cantoriginal := '1';
    end;

  // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
  edit11.text := '1.00';

  t1.text := IbqArticulosBarCODIGOTXT.Value;
  t2.text := IbqArticulosBarARTICULO.Value;

  // Descc_t.Text := IbqRArticulosCOMISION.text;

  // edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

  if IbqClientesCOLOR.Value = 'PRECIO 1' then
  BEGIN
    t4.Value := IbqArticulosBarPRECIO_A.Value;
  END;

  if IbqClientesCOLOR.Value = 'PRECIO 2' then
  BEGIN
    t4.Value := IbqArticulosBarPRECIO_B.Value;
  END;

  if IbqClientesCOLOR.Value = 'PRECIO 3' then
  BEGIN
    t4.Value := IbqArticulosBarPRECIO_D.Value;
  END;
  //
  // lunidad.Text := ibqrarticulosunidad.Value;
  t3.text := cantoriginal;

  insertarbarra;
  datos.FbCategorias.close;

end;

procedure TFrmTouch.addcat;
begin
if SQLCategoriaCAT.Value = 'HABITACIONES' then
 begin
    with IbqRArticulos do
      begin
        close;
        sql.Clear;
        sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
        sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
        sql.add('from mtartuculos a');
        sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
        // sql.add('where a.marca =:marca');
        sql.add('WHERE b.cat =:categoria');
        sql.add('and a.marca <>''MATERIA PRIMA''');
        sql.add('and a.ARTICULO CONTAINING :HAB');
        sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
        sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs, a.facturable');
        sql.add('order by a.facturable asc');
        // params[0].Value := 'Personal';
        params[0].Value := SQLCategoriaCAT.Value;

        if edtHabitaciones.Text = 'HAB. A' then
          begin
            params[1].Value := 'EJECU';
          end;

         if edtHabitaciones.Text = 'HAB. B' then
          begin
            params[1].Value := 'HAB. PRESIDENCIAL';
          end;

         if edtHabitaciones.Text = 'HAB. C' then
          begin
            params[1].Value := 'SENC';
          end;


        open;
      end;
 end ELSE BEGIN
  with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    // sql.add('where a.marca =:marca');
    sql.add('WHERE b.cat =:categoria');
    sql.add('and a.marca <>''MATERIA PRIMA''');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs, a.facturable');
    sql.add('order by a.facturable asc');
    // params[0].Value := 'Personal';
    params[0].Value := SQLCategoriaCAT.Value;
    open;
  end;
 END;

  cxPageControl1.ActivePageIndex := 0;

end;

procedure TFrmTouch.addpizza;
var
  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;
begin

  if CANTV = '' then
  begin
    cantoriginal := '1';
  end;

  if datos.ZUconfiguracionEXISTENCIAFACT.Value = 2 then
  begin

    with Almacenes1 do
    begin
      close;
      sql.Clear;
      sql.add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
      sql.add('left join mtartuculos b  On a.cod_art = b.cod_art');
      sql.add('left join almacenes c On a.cod_alm = c.id');
      sql.add('and b.politica <> ''Servicio''');
      sql.add('where a.cod_art =:opp');
      sql.add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
      params[0].Value := IbqRArticulosCOD_ART.Value;
      open;
    end;

    if Almacenes1EXISTENCIA.Value > 0 then
    begin

      // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
      edit11.text := '1.00';

      t1.text := IbqRArticulosCODIGOTXT.Value;
      t2.text := IbqRArticulosARTICULO.Value;
      Edit5.text := datos.FbqMaster_FactNO_FACT1.Value;
      // Descc_t.Text := IbqRArticulosCOMISION.text;

      // edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);
      t4.Value := IbqRArticulosPRECIO_A.Value;
//      if IbqClientesCOLOR.Value = 'PRECIO 1' then
//      BEGIN
//
//      END;
//
//      if IbqClientesCOLOR.Value = 'PRECIO 2' then
//      BEGIN
//        t4.Value := IbqRArticulosPRECIO_B.Value;
//      END;
//
//      if IbqClientesCOLOR.Value = 'PRECIO 3' then
//      BEGIN
//        t4.Value := IbqRArticulosPRECIO_D.Value;
//      END;
      //
      // lunidad.Text := ibqrarticulosunidad.Value;
      t3.text := cantoriginal;

      cxButton9.Click;
      datos.FbCategorias.close;
    end
    else
    begin
      MsgInformacion(' * Este producto no tiene existencia * ');
    end;
  end
  else
  begin

    edit11.text := '1.00';

    t1.text := IbqRArticulosCODIGOTXT.Value;
    t2.text := IbqRArticulosARTICULO.Value;
    Edit5.text := datos.FbqMaster_FactNO_FACT1.Value;
    // Descc_t.Text := IbqRArticulosCOMISION.text;

    // edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

    t4.Value := IbqRArticulosPRECIO_A.Value;
//    if IbqClientesCOLOR.Value = 'PRECIO 1' then
//    BEGIN
//
//    END;
//
//    if IbqClientesCOLOR.Value = 'PRECIO 2' then
//    BEGIN
//      t4.Value := IbqRArticulosPRECIO_B.Value;
//    END;
//
//    if IbqClientesCOLOR.Value = 'PRECIO 3' then
//    BEGIN
//      t4.Value := IbqRArticulosPRECIO_D.Value;
//    END;
    //
    // lunidad.Text := ibqrarticulosunidad.Value;
    t3.text := cantoriginal;


    // ShowMessage(''+FloatTOStr(t4.Value));

    cxButton9.Click;
    datos.FbCategorias.close;

  end;

end;

procedure TFrmTouch.BTCatNEXTClick(Sender: TObject);
begin

  SQLCategoria.next;

end;

procedure TFrmTouch.BTOrdenCocinaClick(Sender: TObject);
begin
  if FrmPedidosCocina = Nil then
  begin
    FrmPedidosCocina := tFrmPedidosCocina.create(self);
    FrmPedidosCocina.ShowModal;
  end;
end;

procedure TFrmTouch.BTEnviarHoldClick(Sender: TObject);
var
  SerieTXT: String;
begin

  if total.Value = 0.00 then
  begin
    ShowMessage('Este no orden no está completa');
  end
  else
  begin


      if (datos.FbqMaster_FactROTULO.Value = 'FACTURACION') or
        (datos.FbqMaster_FactROTULO.Value = 'COTIZACION') then
      BEGIN
        Edit2.text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);

          if datos.FbqMaster_FactCODIGO.Value < 1 then
          begin

            with NumeroCodigo do
            begin
              close;
              sql.Clear;
              sql.add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
              open;
            end;
            datos.FbqMaster_Fact.Edit;
            datos.FbqMaster_FactCODIGO.Value := NumeroCodigoGEN_ID.Value;
            Edit1.text := IntToStr(datos.FbqMaster_FactCODIGO.Value);

          end;

          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_FactSITUACION.text := 'HOLD';
          datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
          datos.FbqMaster_FactROTULO.text := 'FACTURACION';
          datos.FbqMaster_Factterminal.text := 'FACTURACION';
          datos.FbqMaster_FactABONO.Value := 0.00;
          datos.FbqMaster_FactPENDIENTE.Value :=
            datos.FbqMaster_FactMONTOPAGO.Value;
          datos.FbqMaster_FactIDDR.Value := 1;

          if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
          begin
            datos.FbqMaster_Factquees.Value := 'NO';
          end;

          if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
          begin
            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
          end;

          if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
          begin
            datos.Series.ApplyUpdates;
          end;

          //
          totales;

          datos.FbqMaster_Fact.ApplyUpdates;
          datos.Zdetalle.ApplyUpdates;
          datos.Series.ApplyUpdates;

          datos.Data.Commit;

          with datos.FbqMaster_Fact do
          begin
            close;
            sql.Clear;
            sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
            sql.add('left join cliente b On a.clienteid = b.codigo');
            sql.add('left join musuario c On a.usuarioid = c.usuarioid');
            sql.add('left join mtempleado d On c.empleadoid = d.cod_emp1');
            sql.add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
            sql.add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
            sql.add('left JOIN mtempleado h On a.codven = h.cod_emp1');
            sql.add('where a.NO_FACT =:op1');
            params[0].Value := StrToInt(Edit2.text);
            open;
          end;
          // showmessage(''+datos.FbqMaster_FactCODIGO.Text);
          with datos.Zdetalle do
          begin
            close;
            sql.Clear;
            sql.add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
            sql.add('left join mtartuculos b On a.cod_art = b.codigoTXT');
            sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
            sql.add('where a.masterid =:ppp');
            params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
            open;
          end;

          with datos.Zdetalle do
          begin

            with SqlBuscarCocina do
            begin
              close;
              sql.Clear;
              sql.add('select * from ENVIOCOCINA');
              sql.add('where no_orden =:orden');
              sql.add('and estado = 1');

              params[0].Value := datos.FbqMaster_FactCODIGO.Value;
              open;
            end;

            if SqlBuscarCocina.RecordCount = 0 then
            begin

              with SQLNumeroCocina do
              begin
                close;
                sql.Clear;
                sql.add('select gen_id(GEN_ENVIOCOCINA_ID, 1) from RDB$DATABASE');
                open;
              end;

              datos.SQLCocina.open;
              datos.SQLCocina.Append;
              datos.SQLCocinaID.Value := SQLNumeroCocinaGEN_ID.Value;
              datos.SQLCocinaFECHA.Value := Now();
              datos.SQLCocinaHORA.Value := time();
              datos.SQLCocinaCLIENTE.Value :=
                datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value;
              datos.SQLCocinaTIEMPO.Value := 12;
              datos.SQLCocinaESTADO.Value := 1;
              datos.SQLCocinaMESERO.Value := datos.FbqMaster_Facttecnico.Value;
              datos.SQLCocinaNO_ORDEN.Value := datos.FbqMaster_FactCODIGO.Value;
              datos.Sqlcocinamasterid.Value :=
                datos.FbqMaster_FactNO_FACT.Value;

            end;

            first;

            with SqlBuscarDcocina do
            begin
              close;
              sql.Clear;
              sql.add('select * from D_ENVIOCOCINA');
              sql.add('where no_orden =:no_orden');
              params[0].Value := datos.FbqMaster_FactCODIGO.Value;
              open;
            end;

            if SqlBuscarDcocina.RecordCount > 0 then
            begin

              with SqlBorrarDCocina do
              begin
                close;
                sql.Clear;
                sql.add('delete from D_ENVIOCOCINA where no_orden =:no_orden');
                params[0].Value := datos.FbqMaster_FactCODIGO.Value;
                ExecSQL;
              end;

            end;

            while not eof do
            begin

              if datos.ZdetalleBARRA.Value = 'COCINA' then
              begin

                SerieTXT := '';

                with SqlNumeroDCocina do
                begin
                  close;
                  sql.Clear;
                  sql.add('select gen_id(GEN_D_ENVIOCOCINA_ID, 1) from RDB$DATABASE');
                  open;
                end;

                datos.SqlDCocina.open;
                datos.SqlDCocina.Append;
                datos.SQLDCocinaID.Value := SqlNumeroDCocinaGEN_ID.Value;
                datos.SqlDCocinaCANT.Value := datos.ZdetalleCANTIDAD.AsInteger;
                datos.SqlDCocinaESTADO.Value := 1;
                datos.SqlDCocinaIDMASTER.Value := datos.ZdetalleNO_FACT.Value;

                with SqlBIngredientes do
                begin
                  close;
                  sql.Clear;
                  sql.add('select * from man_series');
                  sql.add('where iddetalle =:codarti and no_fact =:numerofactura');
                  params[0].Value := datos.ZdetalleNO_FACT.Value;
                  params[1].Value := datos.FbqMaster_FactNO_FACT.Value;

                  open;

                  if RecordCount > 0 then
                  begin

                    SqlBIngredientes.first;

                    while not eof do
                    begin

                      SerieTXT := SerieTXT + ', ' +
                        SqlBIngredientesSERIES.Value;

                      next;
                    end;

                  end;

                end;

                datos.SqlDCocinaPRODUCTOS.Value :=
                  datos.ZdetalleTITULOPRN.Value;
                // +'  '+datos.ZdetalleBARRA.Value+'  ('+SerieTXT+') ';

              end;

              next;
            end;

          end;

          t1.Clear;
          // t2.Clear;
          t3.Clear;
          t4.Clear;
          if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
            begin
              FrmTouch.SHPropina.State := tssoff;
            end;

          datos.SQLCocina.ApplyUpdates;
          datos.SqlDCocina.ApplyUpdates;
          datos.Data.Commit;

          datos.ZInventario.close;
          datos.FbqMaster_Fact.close;
          datos.Zdetalle.close;

          if datos.zuconfiguracionABRIRCAJON.Value = 1 then
          begin

            if application.MessageBox('Desea Imprimir Ticket para Cocina....',
              'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
            begin

              with SqlBuscarCocina do
              begin
                close;
                sql.Clear;
                sql.add('select * from ENVIOCOCINA');
                sql.add('where no_orden =:orden');
                params[0].Value := StrToInt(Edit1.text);
                open;
              end;

              // ShowMessage(''+edit1.Text);
              with datos.SqlDCocina do
              begin
                close;
                sql.Clear;

                sql.add('select * from D_ENVIOCOCINA');
                sql.add('where no_orden =:orden');
                params[0].Value := SqlBuscarCocinaNO_ORDEN.Value;
                open;
              end;

              PrintCocina.PrepareReport(TRUE);
              PrintCocina.print;

            end;
          end;

          // cxButton5.Enabled := true;

          if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
            begin
              FrmTouch.SHPropina.Enabled := TRUE;
              tbley.Visible := FALSE;
            end;

          Cancelar;


      END
      ELSE
      begin
        MsgInformacion
          (' Este es un Cliente Express, Favor enviarlo a Delivery ');
      end;



  end;


  //
  //
  // if total.Value = 0.00 then
  // begin
  // Showmessage('Este no orden no está completa');
  // end else begin
  //
  // if (DATOS.FbqMaster_FactROTULO.Value ='FACTURACION') or (DATOS.FbqMaster_FactROTULO.Value ='COTIZACION') then
  // BEGIN
  // edit2.Text                               := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
  //
  // if IbqClientesNUMEROPIN.Value ='MESAS' then
  // BEGIN
  //
  // if datos.FbqMaster_FactCODIGO.Value < 1 then begin
  //
  // with numerocodigo do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
  // open;
  // end;
  //
  // datos.FbqMaster_Fact.Edit;
  // datos.FbqMaster_FactCODIGO.Value         := NumeroCodigoGEN_ID.Value;
  // edit1.Text                               := IntToStr(datos.FbqMaster_Factcodigo.Value);
  //
  // end;
  //
  // datos.FbqMaster_Fact.Edit;
  // datos.fbqMaster_factsituacion.text       := 'HOLD';
  // datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
  // DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
  // datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
  // datos.FbqMaster_FactABONO.Value          := 0.00;
  // datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
  // //datos.FbqMaster_FactIDDR.Value           := 1;
  //
  //
  // if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
  // begin
  // datos.FbqMaster_Factquees.Value := 'NO';
  // end;
  //
  //
  // if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
  // begin
  // datos.FbqMaster_Factquees.Value := 'PENDIENTE';
  // end;
  //
  //
  // if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  // begin
  // datos.Series.ApplyUpdates;
  // end;
  //
  /// /
  // totales;
  //
  // DATOS.FbqMaster_Fact.ApplyUpdates;
  // DATOS.Zdetalle.ApplyUpdates;
  // datos.Series.ApplyUpdates;
  //
  //
  //
  //
  // T1.ClEAR;
  // //t2.Clear;
  // t3.Clear;
  // t4.Clear;
  //
  //
  //
  // //     datos.SQLCocina.ApplyUpdates;
  // //    datos.SqlDCocina.ApplyUpdates;
  // datos.data.Commit;
  //
  // datos.ZInventario.Close;
  // DATOS.FbqMaster_Fact.Close;
  // DATOS.Zdetalle.Close;
  //
  //
  // EnvioCocina;
  //
  // //cxButton5.Enabled := true;
  //
  // cancelar;
  //
  //
  // end;
  // END ELSE begin
  // MsgInformacion(' Este es un Cliente Express, Favor enviarlo a Delivery ');
  // end;
  //
  //
  // end;

end;

procedure TFrmTouch.BtFacturaImpresasClick(Sender: TObject);
begin
  if FrmFacturasImpresas = nil then
  begin
    FrmFacturasImpresas := tFrmFacturasImpresas.create(self);

    with FrmFacturasImpresas.facturasIMPRESAS do
    begin
      close;
      sql.Clear;
      sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
      sql.add('left join cliente b On a.clienteid = b.codigo');
      sql.add('left join musuario c On a.codven = c.usuarioid');
      sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
      sql.add('where a.situacion  =:opcion2');
      sql.add('and a.condicion =:OPCION4');
      sql.add('AND A.ROTULO =:OPCION5');
      sql.add('and a.fecha_fac >=:fechas');

      params[0].Value := 'IMPRESA';
      params[1].Value := 'ACTIVA';
      params[2].Value := 'FACTURACION';

      if FrmFacturasImpresas.OpCuando.ItemIndex = 0 then
      begin
        params[3].Value := Now();
      end
      else
      begin
        params[3].Value := Now() - 1;
      end;
      open;
    end;

    FrmFacturasImpresas.ShowModal;
  end;

end;

procedure TFrmTouch.BTMEseroClick(Sender: TObject);
begin
 if FrmBuscarInstalador = nil then
  begin
    FrmBuscarInstalador := tFrmBuscarInstalador.create(self);
    FrmBuscarInstalador.Edit2.text := 'Touch';
    FrmBuscarInstalador.ShowModal;
  end;

  // if FrmServicioInstalador = nil then
  // begin
  // FrmServicioInstalador := tFrmServicioInstalador.create(self);
  // FrmServicioInstalador.Edit1.Text := '';
  // FrmServicioInstalador.showmodal;
  // end;
end;

procedure TFrmTouch.BtNuevoClick(Sender: TObject);
var
  cero: string;
  suma: Currency;
  itbs: Currency;
  Stexto: string;
begin


  with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    // sql.add('where a.marca =:marca');
    sql.add('where a.cOD_serie =:codserie');
    sql.add('and a.marca <>''MATERIA PRIMA''');
    sql.add('group by a.unidad,a.precio_a, a.precio_b, precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs, A.FACTURABLE');
    sql.add('order by a.FACTURABLE asc');
    params[0].Value := 1;
    // params[1].Value := 'PIZZAS';
    open;
  end;

  // opmaster.Enabled := true;

  with numero do
  begin
    close;
    sql.Clear;
    sql.add('select gen_id(g_nofact, 1) from RDB$DATABASE');
    open;
  end;

  with NumeroCodigo do
  begin
    close;
    sql.Clear;
    sql.add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
    open;
  end;

  cxPageControl1.ActivePageIndex := 0;

  datos.FbqMaster_Fact.open;

  datos.FbqMaster_Fact.Insert;
   LimpiarTOtales;
  datos.FbqMaster_FactNO_FACT.Value := numeroGEN_ID.Value;
  datos.FbqMaster_FactCODIGO.Value := NumeroCodigoGEN_ID.Value;
  datos.FbqMaster_FactNC.Value := 1;
  datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
  datos.FbqMaster_FactCODVEN.Value := AsignaUsuario;

  Edit3.text := IntToStr(numeroGEN_ID.Value);
  Edit1.text := IntToStr(NumeroCodigoGEN_ID.Value);


  if datos.FbqMaster_FactNO_FACT.Value >= 1 then
  begin
    cero := '000';
  end;

  if datos.FbqMaster_FactNO_FACT.Value >= 10 then
  begin
    cero := '00';
  end;

  if datos.FbqMaster_FactNO_FACT.Value >= 100 then
  begin
    cero := '0';
  end;

  if datos.FbqMaster_FactNO_FACT.Value >= 1000 then
  begin
    cero := '';
  end;

  datos.FbqMaster_FactNO_FACT1.Value := cero +
    IntToStr(datos.FbqMaster_FactNO_FACT.Value);

  with IbqClientes do
  begin
    close;
    sql.Clear;
    sql.add('select a.* from cliente a');
    sql.add('where a.codigo = 1');
    open;
  end;

  datos.FbqMaster_FactCLIENTEID.Value           := IbqClientesCODIGO.Value;
  datos.FbqMaster_FactCLIENTENOMBRE.Value       := IbqClientesNOMBRES.Value;
  datos.FbqMaster_FactCONDICIONVENTA.Value      := IbqClientesCONDICION.Value;
  datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value   := datos.FbqMaster_FactCLIENTENOMBRE.Value;
  datos.FbqMaster_FactCAJAID.Value              := datos.ZUconfiguracionCAJAID.Value;
  datos.FBQMASTER_FACTTIPO.Value                := 'Contado';

  with Zqusuario do
  begin
    close;
    sql.Clear;
    sql.add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
    sql.add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.add('where a.usuarioId =:pp');
    params[0].Value := AsignaUsuario;
    open;
  end;

  if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value = 'Ninguno' then
  begin
    cxDBComboBox2.ItemIndex := 0;
  end;

  if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value = 'Cons. Final' then
  begin
    cxDBComboBox2.ItemIndex := 1;
  end;

  if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value = 'Fiscal' then
  begin
    cxDBComboBox2.ItemIndex := 2;
  end;

  if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value = 'Gubernamental' then
  begin
    cxDBComboBox2.ItemIndex := 3;
  end;


  datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
  datos.FbqMaster_FactFECHA_FAC.Value := Now();
  datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;

  if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
  begin
    FrmTouch.SHPropina.Enabled := TRUE;
    tbley.Visible := FALSE;
  end;

  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.add('select a.*, b.articulo, c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.add('left join mtartuculos b On a.cod_art = b.codigotxt');
    sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.add('where a.no_fact =  0');
    open;
  end;

  with SQLCategoria do
  begin
    close;
    sql.Clear;
    sql.add('select * from MTCATEGORIA where opcion = ''SI''');
    open;
  end;

  QClasificaciones.open;
  IbqRArticulos.open;

  // DBLClasificacion.ItemIndex := 0;

  BTEnviarHold.Enabled := TRUE;
  TbMesas.Enabled := TRUE;
  BTFactHold.Enabled := FALSE;
  // FrmTouch.SHPropina.State := tssoff;

  nuevo;

end;

procedure TFrmTouch.btOkFraccionClick(Sender: TObject);
begin
  datos.Zdetalle.Edit;
  if datos.ZdetalleCANTIDAD.Value >= 1 then
  begin

    datos.ZdetalleCANTIDAD.Value := StrToFloat(edtFraccion.text);
  end;
  if datos.ZdetalleITBS_ART.Value = 'S' then
  begin

    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;

    datos.ZdetalleITBS.Value :=
      (datos.ZdetalleIMPUESTO.Value * (datos.ZUconfiguracionITBIS.Value / 100));
    datos.Zdetalleley.Value := (datos.ZdetallePRECIO.Value * 0.10);

    datos.ZdetalleTOTAL.Value :=
      round(datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value);
    // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
    datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
      (IbqRArticulosCOMISION.Value / 100);

    totales;

  end;

  if datos.ZdetalleITBS_ART.Value = 'N' then
  begin

    if IbqClientesCOMISION.Value > 0 then
    begin

      // comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
      datos.ZdetallePRECIO.Value :=
        ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
        (IbqClientesCOMISION.Value / 100)) / 100))) +
        IbqRArticulosCOSTO_PR.Value;
    end
    else
    begin

      // datos.ZdetallePRECIO.Value   := t4.Value;

    end;

    // datos.ZdetalleIDTECNICO.Value := tecnico;
    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;
    datos.ZdetalleITBS.Value := 0.00;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
      datos.ZdetalleITBS.Value;
    // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
    datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
      (IbqRArticulosCOMISION.Value / 100);
    /// datos.Zdetalleley.Value   := (datos.ZdetallePRECIO.Value * 0.10);

    totales;
  end;

  pnlDecimal.Visible := FALSE;
end;

procedure TFrmTouch.BtDeliveryClick(Sender: TObject);
var
  SerieTXT: string;
begin
  if total.Value = 0.00 then
  begin
    ShowMessage('Este no orden no está completa');
  end
  else
  begin
    if (datos.FbqMaster_FactROTULO.Value = 'FACTURACION') or
      (datos.FbqMaster_FactROTULO.Value = 'COTIZACION') then
    BEGIN
      Edit2.text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
      if IbqClientesNUMEROPIN.Value <> 'MESAS' then
      begin

        if datos.FbqMaster_FactCODIGO.Value < 1 then
        begin

          with NumeroCodigo do
          begin
            close;
            sql.Clear;
            sql.add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
            open;
          end;
          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_FactCODIGO.Value := NumeroCodigoGEN_ID.Value;
          Edit1.text := IntToStr(datos.FbqMaster_FactCODIGO.Value);

        end;

        datos.FbqMaster_Fact.Edit;
        datos.FbqMaster_FactSITUACION.text := 'DELIVERY';
        datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
        datos.FbqMaster_FactROTULO.text := 'FACTURACION';
        datos.FbqMaster_Factterminal.text := 'FACTURACION';
        datos.FbqMaster_FactABONO.Value := 0.00;
        datos.FbqMaster_FactPENDIENTE.Value :=
          datos.FbqMaster_FactMONTOPAGO.Value;
        datos.FbqMaster_FactIDDR.Value := 1;

        if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
        begin
          datos.FbqMaster_Factquees.Value := 'NO';
        end;

        if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
        begin
          datos.FbqMaster_Factquees.Value := 'PENDIENTE';
        end;

        if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
        begin
          datos.Series.ApplyUpdates;
        end;

        datos.FbqMaster_Fact.ApplyUpdates;
        datos.Zdetalle.ApplyUpdates;
        datos.Series.ApplyUpdates;

        datos.Data.Commit;


        // EnvioCocina;

        t1.Clear;
        // t2.Clear;
        t3.Clear;
        t4.Clear;

        datos.ZInventario.close;
        datos.FbqMaster_Fact.close;
        datos.Zdetalle.close;





        // cxButton5.Enabled := true;

        Cancelar;

      end;

    END
    else
    begin
      MsgInformacion(' Este es una MESA, debes enviarlo a Hold ')
    end;
  END;
end;

procedure TFrmTouch.BTFactHoldClick(Sender: TObject);
var
  cont, numpag, i: Integer;
  arq: textfile;
  fechaFA: tdate;
  horaFA: ttime;
  r: TRect;
  longitud, campoD, campoC1, campoC2, campol, campof: string;
  DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2: string;
  PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, MEN_PIE: string;
  cInf: String;

  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion: String;
begin

  if FrmHold = nil then
  begin

    FrmHold := tFrmHold.create(self);
    FrmHold.HOLD.close;
    FrmHold.HOLD.open;
    FrmHold.ShowModal;
  end;

end;

procedure TFrmTouch.Cancelar;
begin
  TbMesas.Enabled := FALSE;
  BtCliente.Enabled := FALSE;
 // BtUnirCuenta.Enabled := FALSE;
  BTordenDelibery.Enabled := TRUE;
  BTFactHold.Enabled := TRUE;
  DBLClasificacion.Enabled := FALSE;
  op1.Enabled := TRUE;
  BtNuevo.Enabled := TRUE;
  BTEnviarHold.Enabled := FALSE;
  BtDelivery.Enabled := FALSE;
  BtEliminarArticulo.Enabled := FALSE;
  BtIngredientes.Enabled := FALSE;
  BTCobrar.Enabled := FALSE;
  BTBuscar.Enabled := FALSE;
  Btarriba.Enabled := FALSE;
  BtAbajo.Enabled := FALSE;
  BTCanelar.Enabled := FALSE;
  BTMEsero.Enabled := FALSE;
  BtnDGII.Enabled := FALSE;
  BtFacturaImpresas.Enabled := TRUE;
  // BTPreFactura.Enabled          := false;
  Edit4.Enabled := FALSE;

  IbqRArticulos.close;
  SQLCategoria.close;
  IbqClientes.close;
  datos.FbqMaster_Fact.close;
  datos.Zdetalle.close;
 // pnlStop.Visible := TRUE;

  BTCobroTarjeta.Enabled := FALSE;
  BTCobroMixto.Enabled := FALSE;
  BTImpuesto.Enabled := false;

end;

procedure TFrmTouch.cargarlogo;
var
  BitmapOriginal, BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
  ruta: string;
begin

  inherited;
  BitmapNew := TBitmap.create;
  BitmapOriginal := TBitmap.create;

  try

    ruta := ExtractFilePath(application.ExeName) + '\imagenes\logotouch.jpg';
   // imgLogo.Picture.LoadFromFile(ruta);
   // TBlobField(datos.MantArt.FieldByName('Imagen')).LoadFromFile(ruta);

  finally
    FreeAndNil(BitmapOriginal);
  end;

end;

procedure TFrmTouch.Click(Sender: TObject);
begin

  SQLCategoria.prior;

end;

procedure TFrmTouch.cobrando;
begin
  if total.Value = 0.00 then
  begin
    ShowMessage('Este Conduce no Esta Completa');
  end
  else
  begin
    if AsignaTurno = 0 then
    begin
      ShowMessage(' ** No Hay Turno Abierto Disponible **');
    end
    else
    begin
      if (datos.FbqMaster_FactROTULO.Value = 'FACTURACION') or
        (datos.FbqMaster_FactROTULO.Value = 'COTIZACION') then
      BEGIN

        datos.FbqMaster_Fact.Edit;
        datos.FbqMaster_FactSITUACION.text := 'ENVIADA';
        datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
        datos.FbqMaster_FactROTULO.text := 'FACTURACION';

        datos.FbqMaster_Factterminal.text := 'FACTURACION';
        datos.FbqMaster_FactABONO.Value := 0.00;
        datos.FbqMaster_FactPENDIENTE.Value :=
          datos.FbqMaster_FactMONTOPAGO.Value;

        if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
        begin
          datos.FbqMaster_Factquees.Value := 'NO';
        end;

        if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
        begin
          datos.FbqMaster_Factquees.Value := 'PENDIENTE';
        end;

        totales;

        // datos.ZInventario.ApplyUpdates;
        datos.FbqMaster_Fact.ApplyUpdates;
        datos.Zdetalle.ApplyUpdates;
        datos.Data.Commit;

        with datos.FbqMaster_Fact do
        begin
          close;
          sql.Clear;
          sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
          sql.add('left join cliente b On a.clienteid = b.codigo');
          sql.add('left join musuario c On a.usuarioid = c.usuarioid');
          sql.add('left join mtempleado d On c.empleadoid = d.cod_emp1');
          sql.add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
          sql.add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
          sql.add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
          sql.add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
          sql.add('where a.no_fact =:op1');
          params[0].Value := StrToInt(Edit3.text);
          open;
        end;

        with datos.Zdetalle do
        begin
          close;
          sql.Clear;
          sql.add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
          sql.add('left join mtartuculos b On  a.articuloid =  b.cod_art');
          sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
          sql.add('where a.masterid =:ppp');
          params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
          open;
        end;

        with datos.Series do
        begin
          close;
          // params[0].Value := datos.ZdetalleARTICULOID.Value;
          // params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
          open;
        end;

        t1.Clear;
        // t2.Clear;
        t3.Clear;
        t4.Clear;
        Edit4.Enabled := FALSE;

        if FrmCobro = nil then
        begin
          FrmCobro := tFrmCobro.create(self);
          if FormaPago.text = 'EFECTIVO' then
          begin
            FrmCobro.Edit6.text := 'EFECTIVO'
          end;

          if FormaPago.text = 'TARJETA' then
          begin
            FrmCobro.Edit6.text := 'TARJETA'
          end;

          if FormaPago.text = 'MIXTO' then
          begin
            FrmCobro.Edit6.text := 'MIXTO'
          end;

          if FormaPago.text = 'CREDITO' then
          begin
            FrmCobro.Edit6.text := 'CREDITO'
          end;

          if FormaPago.text = 'CHEQUE' then
          begin
            FrmCobro.Edit6.text := 'CHEQUE'
          end;

          FrmCobro.ShowModal;
        end;


        // datos.ZInventario.Close;

        // frmConsultaFact.facturasEmitidas.Refresh;
        // showmessage('');

      end;
    end;

  end;
end;

procedure TFrmTouch.cxButton2Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'c:\PrintSoft PV\SYNC\AppServidor.exe', nil, nil,
    SW_SHOWNORMAL);
end;

procedure TFrmTouch.cxButton3Click(Sender: TObject);
begin
  if (datos.FbqMaster_FactSITUACION.text = '') THEN
  BEGIN

    if datos.FbqMaster_Fact.Active = TRUE then
    begin

      if application.MessageBox('Esta seguro de cancelar este documento',
        'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin
        datos.FbqMaster_Fact.Edit;
        if datos.FbqMaster_FactSITUACION.text <> 'PEDIDO' then
        BEGIN
          datos.FbqMaster_FactSITUACION.text := 'CANCELADA';
        END;
        datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
        // DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
        // datos.FbqMaster_Factterminal.Text := 'FACTURACION';
        datos.FbqMaster_FactABONO.Value := 0.00;
        datos.FbqMaster_FactPENDIENTE.Value :=
          datos.FbqMaster_FactMONTOPAGO.Value;

        if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
        begin
          datos.FbqMaster_Factquees.Value := 'NO';
        end;

        if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
        begin
          datos.FbqMaster_Factquees.Value := 'PENDIENTE';
        end;

        t1.Clear;
        // t2.Clear;
        t3.Clear;
        t4.Clear;

        datos.FbqMaster_Fact.ApplyUpdates;
        datos.Zdetalle.ApplyUpdates;
        datos.Data.Commit;

        datos.ZInventario.close;
        datos.FbqMaster_Fact.close;
        datos.Zdetalle.close;

        Cancelar;

      end;

    end;

    close;

  END
  else
  begin

    if FAutorizacion.ShowModal = mrOk then
    begin

      if datos.FbqMaster_Fact.Active = TRUE then
      begin

        if application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          datos.FbqMaster_Fact.Edit;
          if datos.FbqMaster_FactSITUACION.text <> 'PEDIDO' then
          BEGIN
            datos.FbqMaster_FactSITUACION.text := 'CANCELADA';
          END;
          datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
          // DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
          // datos.FbqMaster_Factterminal.Text := 'FACTURACION';
          datos.FbqMaster_FactABONO.Value := 0.00;
          datos.FbqMaster_FactPENDIENTE.Value :=
            datos.FbqMaster_FactMONTOPAGO.Value;

          if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
          begin
            datos.FbqMaster_Factquees.Value := 'NO';
          end;

          if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
          begin
            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
          end;

          t1.Clear;
          // t2.Clear;
          t3.Clear;
          t4.Clear;

          datos.FbqMaster_Fact.ApplyUpdates;
          datos.Zdetalle.ApplyUpdates;
          datos.Data.Commit;

          datos.ZInventario.close;
          datos.FbqMaster_Fact.close;
          datos.Zdetalle.close;

          Cancelar;

        end;

      end;

      close;
    end
    else
    begin
      MsgPrecaucion(' Operación No permitida, Favor llamr al Administrador');
    end;
  end;
end;

procedure TFrmTouch.cxButton44Click(Sender: TObject);
begin

  FormaPago.text := 'EFECTIVO';
  pago;
end;

procedure TFrmTouch.BTImpuestoClick(Sender: TObject);
begin
 if FAutorizacion.ShowModal = mrOk then
  begin

    with datos.Zdetalle do
    begin
      first;

      while not eof do
      begin

        datos.Zdetalle.Edit;


        if datos.ZdetalleITBS_ART.Value = 'S' then
        begin

          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;

          datos.ZdetalleITBS.Value :=  0.00;

          datos.ZdetalleTOTAL.Value :=
            round(datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
            (IbqRArticulosCOMISION.Value / 100);


          // recalcula;
        end;

        if datos.ZdetalleITBS_ART.Value = 'N' then
        begin

          if IbqClientesCOMISION.Value > 0 then
          begin

            // comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
            datos.ZdetallePRECIO.Value :=
              ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
              (IbqClientesCOMISION.Value / 100)) / 100))) +
              IbqRArticulosCOSTO_PR.Value;
          end
          else
          begin

            // datos.ZdetallePRECIO.Value   := t4.Value;

          end;

          // datos.ZdetalleIDTECNICO.Value := tecnico;
          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
            (IbqRArticulosCOMISION.Value / 100);
          /// datos.Zdetalleley.Value   := (datos.ZdetallePRECIO.Value * 0.10);



        end;

        next;
      end;
    end;

    totales;
  end
  else
  begin
    MsgPrecaucion(' Operación No permitida, Favor llamar al Administrador');
  end;
end;

procedure TFrmTouch.BtIngredientesClick(Sender: TObject);
begin
  if FIngredientes = nil then
  begin
    FIngredientes := TFIngredientes.create(self);

    with QIngredientes do
    begin
      close;
      sql.Clear;
      sql.add('select * from INGREDIENTES');
      sql.add('where idarti =:arti');
      params[0].Value := datos.ZdetalleARTICULOID.Value;
      open;
    end;

    if QIngredientes.RecordCount > 0 then
    begin
      QIngredientes.first;

      with QhayIngredientes do
      begin
        close;
        sql.Clear;
        sql.add('select * from D_INGREDIENTES');
        sql.add('where idmaster =:arti');
        params[0].Value := datos.ZdetalleNO_FACT.Value;
        open;
      end;

      if QhayIngredientes.RecordCount <= 0 then
      begin

        while NOT QIngredientes.eof do
        begin

          with QNumIngredientes do
          begin
            close;
            sql.Clear;
            sql.add('select gen_id(GEN_D_INGREDIENTES_ID, 1) from RDB$DATABASE');
            open;
          end;
          with datos.rbDIngredientes do
          begin

            open;
            Append;
            datos.rbDIngredientesID.Value := QNumIngredientesGEN_ID.Value;
            datos.rbDIngredientesIDARTICULOS.Value := QIngredientesIDARTI.Value;
            datos.rbDIngredientesingredientes.Value :=
              QIngredientesINGREDIENTES.Value;
            datos.rbDIngredientesSELECCION.Value := 'True';
            datos.rbDIngredientesIDDETALLE.Value := QIngredientesID.Value;
            datos.rbDIngredientesOP.Value := 1;
            // datos.rbDIngredientesNO_ORDEN.Value       :=

            POST;

          end;

          QIngredientes.next;
        end;

        datos.rbDIngredientes.ApplyUpdates;
      end;
    end;

    // FIngredientes.QClasificaciones.Open;
    FIngredientes.ShowModal;
  end;
end;

procedure TFrmTouch.BTCobroTarjetaClick(Sender: TObject);
begin
  FormaPago.text := 'TARJETA';
  pago;
end;

procedure TFrmTouch.cxButton5Click(Sender: TObject);
begin

  with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.add('where b.cat =:categoria');
    sql.add('and a.marca <>''MATERIA PRIMA''');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := 'BEBIDAS';
    open;
  end;

end;

procedure TFrmTouch.cxButton6Click(Sender: TObject);
begin

  with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.add('where a.marca =:marca');
    sql.add('and b.cat =:categoria');
    sql.add('and a.marca <>''MATERIA PRIMA''');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := 'Personal';
    params[1].Value := 'PIZZAS';
    open;
  end;

  cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmTouch.BTBuscarClick(Sender: TObject);
var
  itbs: Currency;
  suma: Currency;
  descc: Currency;
begin

  //
  if FrmFinder = nil then
  begin
    FrmFinder := tFrmFinder.create(self);
    FrmFinder.Edit2.text := DBLClasificacion.text;
    FrmFinder.ShowModal;
  end;

end;

procedure TFrmTouch.BtAbajoClick(Sender: TObject);
begin
  IbqRArticulos.next;
end;

procedure TFrmTouch.cxButton9Click(Sender: TObject);
VAR
  Stexto: string;
begin

  nofraccional;


  // *****

end;

procedure TFrmTouch.cxCambioPrecioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    SpeedButton2.Click;
  end;
end;

procedure TFrmTouch.cxDBImage1Click(Sender: TObject);
begin
  addpizza;
end;

procedure TFrmTouch.cxDBImage2Click(Sender: TObject);
begin
  addpizza;
end;

procedure TFrmTouch.cxDBImage4Click(Sender: TObject);
begin
  addcat;
end;

procedure TFrmTouch.cxDBLabel10Click(Sender: TObject);
begin
  addpizza;
end;

procedure TFrmTouch.cxDBLabel1Click(Sender: TObject);
begin
  addpizza;
end;

procedure TFrmTouch.cxDBLabel4Click(Sender: TObject);
begin
  addpizza;
end;

procedure TFrmTouch.cxDBLabel5Click(Sender: TObject);
begin
  addcat;
end;

procedure TFrmTouch.cxDBLabel9Click(Sender: TObject);
begin
  addpizza;
end;

procedure TFrmTouch.cxGrid1DBTableView1Column2PropertiesButtonClick
  (Sender: TObject; AButtonIndex: Integer);
begin

  if FrmFraccionPiza = NIL then
  begin
    FrmFraccionPiza := tFrmFraccionPiza.create(self);
    with FrmFraccionPiza.IbqRArticulos do
    begin
      close;
      sql.Clear;
      sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
      sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
      sql.add('from mtartuculos a');
      sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
      sql.add('where a.marca =:marca');
      sql.add('and b.cat =:categoria');
      sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
      sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
      params[0].Value := datos.ZdetalleBARRA.Value;
      params[1].Value := 'PIZZAS';
      open;
    end;
    FrmFraccionPiza.Edit2.text := datos.ZdetalleBARRA.text;
    FrmFraccionPiza.ShowModal;
  end;

end;

procedure TFrmTouch.cxGrid1DBTableView1Column3CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  x, y: Integer;
  Rect: TRect;
begin
  // Rect := AViewInfo.Bounds;
  // ACanvas.FillRect(Rect,clWhite);
  // SetBkMode(ACanvas.Handle, TRANSPARENT);
  // x := Rect.Left + ((Rect.Right - Rect.Left) div 2) - (Image1.Picture.Width div 2);
  // y := Rect.Top + ((Rect.Bottom - Rect.Top) div 2) - (Image1.Picture.Height div 2);
  // ACanvas.Draw(x,y,Image1.Picture.Graphic);
  // ADone := true;

end;

procedure TFrmTouch.cxGrid1DBTableView1Column3PropertiesButtonClick
  (Sender: TObject; AButtonIndex: Integer);
begin
  if FrmGetIngredientes = nil then
  begin

    FrmGetIngredientes := TFrmGetIngredientes.create(self);
    FrmGetIngredientes.ShowModal;
  end;
end;

procedure TFrmTouch.cxGrid1DBTableView1Column4PropertiesButtonClick
  (Sender: TObject; AButtonIndex: Integer);
var
  suma, itbs, descc: Currency;
begin

  if AButtonIndex = 0 then
  begin

    datos.Zdetalle.Edit;

    datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + 1;

    // ShowMessage(''+datos.ZdetalleTITULOPRN.Value);
    if datos.ZdetalleITBS_ART.Value = 'S' then
    begin
      // datos.ZdetalleITBS_ART.Value := 'S';
      /// datos.ZdetalleEX.Value := '';

      // datos.ZdetallePRECIO.Value   := t4.Value / 1.18;

        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;

        datos.ZdetalleITBS.Value :=
          (datos.ZdetalleIMPUESTO.Value *
          (datos.ZUconfiguracionITBIS.Value / 100));
        datos.Zdetalleley.Value := (datos.ZdetallePRECIO.Value * 0.10);

        datos.ZdetalleTOTAL.Value :=
          round(datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value);
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
          (IbqRArticulosCOMISION.Value / 100);


      totales;

      // recalcula;
    end;

    if datos.ZdetalleITBS_ART.Value = 'N' then
    begin

      if IbqClientesCOMISION.Value > 0 then
      begin

        // comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
        datos.ZdetallePRECIO.Value :=
          ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
          (IbqClientesCOMISION.Value / 100)) / 100))) +
          IbqRArticulosCOSTO_PR.Value;
      end
      else
      begin

        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;

//        datos.ZdetalleITBS.Value :=
//          (datos.ZdetalleIMPUESTO.Value *
//          (datos.ZUconfiguracionITBIS.Value / 100));
//        datos.Zdetalleley.Value := (datos.ZdetallePRECIO.Value * 0.10);

        datos.ZdetalleTOTAL.Value :=  round(datos.ZdetalleIMPUESTO.Value);
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
          (IbqRArticulosCOMISION.Value / 100);


           totales;
        // datos.ZdetallePRECIO.Value   := t4.Value;

      end;

      // datos.ZdetalleIDTECNICO.Value := tecnico;

      datos.zdetalle.Edit;
      datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
        datos.ZdetalleCANTIDAD.Value;
      datos.ZdetalleITBS.Value := 0.00;
      datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
        datos.ZdetalleITBS.Value;
      // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
      datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
        (IbqRArticulosCOMISION.Value / 100);
      /// datos.Zdetalleley.Value   := (datos.ZdetallePRECIO.Value * 0.10);

      totales;

    end;

  end;

  if AButtonIndex = 1 then
  begin
    if (datos.FbqMaster_FactSITUACION.text = '') THEN
    BEGIN

      datos.Zdetalle.Edit;
      if datos.ZdetalleCANTIDAD.Value > 1 then
      begin

        datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value - 1;
      end;
      if datos.ZdetalleITBS_ART.Value = 'S' then
      begin

        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;

        datos.ZdetalleITBS.Value :=
          (datos.ZdetalleIMPUESTO.Value *
          (datos.ZUconfiguracionITBIS.Value / 100));
        datos.Zdetalleley.Value := (datos.ZdetallePRECIO.Value * 0.10);

        datos.ZdetalleTOTAL.Value :=
          round(datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value);
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
          (IbqRArticulosCOMISION.Value / 100);

        totales;

      end;

      if datos.ZdetalleITBS_ART.Value = 'N' then
      begin

        if IbqClientesCOMISION.Value > 0 then
        begin

          // comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
          datos.ZdetallePRECIO.Value :=
            ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
            (IbqClientesCOMISION.Value / 100)) / 100))) +
            IbqRArticulosCOSTO_PR.Value;
        end
        else
        begin

          // datos.ZdetallePRECIO.Value   := t4.Value;

        end;

        // datos.ZdetalleIDTECNICO.Value := tecnico;
        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;
        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
          datos.ZdetalleITBS.Value;
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
          (IbqRArticulosCOMISION.Value / 100);
        /// datos.Zdetalleley.Value   := (datos.ZdetallePRECIO.Value * 0.10);

        totales;

      end;
    END
    ELSE
    BEGIN

      if FAutorizacion.ShowModal = mrOk then
      begin

        datos.Zdetalle.Edit;
        if datos.ZdetalleCANTIDAD.Value > 1 then
        begin

          datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value - 1;
        end;
        if datos.ZdetalleITBS_ART.Value = 'S' then
        begin

          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;

          datos.ZdetalleITBS.Value :=
            (datos.ZdetalleIMPUESTO.Value *
            (datos.ZUconfiguracionITBIS.Value / 100));
          datos.Zdetalleley.Value := (datos.ZdetallePRECIO.Value * 0.10);

          datos.ZdetalleTOTAL.Value :=
            round(datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value);
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
            (IbqRArticulosCOMISION.Value / 100);

          totales;

        end;

        if datos.ZdetalleITBS_ART.Value = 'N' then
        begin

          datos.ZdetalleITBiS.Value := 'No';
          datos.ZdetalleITBS_ART.Value := 'N';
          datos.ZdetalleEX.Value := 'E';

          if IbqClientesCOMISION.Value > 0 then
          begin

            // comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
            datos.ZdetallePRECIO.Value :=
              ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
              (IbqClientesCOMISION.Value / 100)) / 100))) +
              IbqRArticulosCOSTO_PR.Value;
          end
          else
          begin

            // datos.ZdetallePRECIO.Value   := t4.Value;

          end;

          // datos.ZdetalleIDTECNICO.Value := tecnico;
          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
            (IbqRArticulosCOMISION.Value / 100);
          /// datos.Zdetalleley.Value   := (datos.ZdetallePRECIO.Value * 0.10);

          totales;

        end;
      end
      else
      begin
        MsgPrecaucion(' Operación No permitida, Favor llamar al Administrador');
      end;
    END;
  end;

  if AButtonIndex = 2 then
  begin
    pnlDecimal.Visible := TRUE;
    edtFraccion.Clear;
    edtFraccion.SetFocus;
  end;
end;

procedure TFrmTouch.cxGrid1DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  NADA: string;
  Len: Integer;
  val, ValEstado, IsNulo, dias, SAN, ALQUILER, COMPRAVENTA: Boolean;
begin

  // ARec := AViewInfo.Bounds;
  //
  // ValEstado := AViewInfo.GridRecord.Values[6] = 'Personal';
  // if  ValEstado then
  // begin
  // //	ACanvas.Canvas.Font.Style := [fsBold];
  // ACanvas.Canvas.Font.Color := clblack;
  // end;
  //
  // ValEstado := AViewInfo.GridRecord.Values[6] = 'Mediana';
  // if  ValEstado then
  // begin
  // //		ACanvas.Canvas.Font.Style := [fsBold];
  // ACanvas.Canvas.Font.Color := clNavy;
  // end;
  //
  //
  // ValEstado := AViewInfo.GridRecord.Values[6] = 'Grande';
  // if  ValEstado then
  // begin
  // //		ACanvas.Canvas.Font.Style := [fsBold];
  // ACanvas.Canvas.Font.Color := clMaroon;
  // end;
  //
  // ValEstado := AViewInfo.GridRecord.Values[6] = 'Super Grande';
  // if  ValEstado then
  // begin
  // //		ACanvas.Canvas.Font.Style := [fsBold];
  // ACanvas.Canvas.Font.Color := clGreen;
  // end;

  if (AViewInfo.GridRecord.Values[5] < 0.00) then
  BEGIN
    ACanvas.Brush.Color := $00FFEBDF;
    ACanvas.Canvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TFrmTouch.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
pnlCambioPrecio.Visible := true;
lblNombreProducto.Caption := datos.ZdetalleARTICULO.Value;
cxCambioPrecio.Value := datos.ZdetallePRECIO.Value;
cxCambioPrecio.SetFocus;
end;

procedure TFrmTouch.cxGrid1DBTableView2Column2CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  x, y: Integer;
  Rect: TRect;
begin
  Rect := AViewInfo.Bounds;
  ACanvas.FillRect(Rect, clWhite);
  SetBkMode(ACanvas.Handle, TRANSPARENT);
  x := Rect.Left + ((Rect.Right - Rect.Left) div 2) -
    (Image1.Picture.Width div 2);
  y := Rect.Top + ((Rect.Bottom - Rect.Top) div 2) -
    (Image1.Picture.Height div 2);
  ACanvas.Draw(x, y, Image1.Picture.Graphic);
  ADone := TRUE;

end;

procedure TFrmTouch.cxGrid1DBTableView2Column2PropertiesButtonClick
  (Sender: TObject; AButtonIndex: Integer);
var
  cValue: string;
begin

end;

procedure TFrmTouch.cxGrid1DBTableView2Column3CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  x, y: Integer;
  Rect: TRect;
begin
  Rect := AViewInfo.Bounds;
  ACanvas.FillRect(Rect, clWhite);
  SetBkMode(ACanvas.Handle, TRANSPARENT);
  x := Rect.Left + ((Rect.Right - Rect.Left) div 2) -
    (Image1.Picture.Width div 2);
  y := Rect.Top + ((Rect.Bottom - Rect.Top) div 2) -
    (Image1.Picture.Height div 2);
  ACanvas.Draw(x, y, Image1.Picture.Graphic);
  ADone := TRUE;

end;

procedure TFrmTouch.DBCtrlGrid1Click(Sender: TObject);
begin
  addcat;
end;

procedure TFrmTouch.DbCtrlGrid_PizzaClick(Sender: TObject);
begin
  addpizza;
end;

procedure TFrmTouch.DBImage1Click(Sender: TObject);
begin
 addpizza;
end;

procedure TFrmTouch.DBLClasificacionPropertiesChange(Sender: TObject);
begin

  with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.add('where a.marca =:marca');
    sql.add('and b.cat =:categoria');
    sql.add('and a.marca <>''MATERIA PRIMA''');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := DBLClasificacion.text;
    params[1].Value := 'PIZZAS';
    open;
  end;
end;

procedure TFrmTouch.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    add;
    Edit4.Clear;
  end;
end;

procedure TFrmTouch.edtBuscarChange(Sender: TObject);
begin

with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.Add('WHERE a.articulo like '+#39+'%'+edtbuscar.Text+'%'+#39);
    sql.Add('and a.marca <>''MATERIA PRIMA''');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
 //   sql.add('order by a.FACTURABLE asc');


    OPEN;
  end;

// with IbqRArticulos do
//  begin
//    close;
//    sql.Clear;
//    sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
//    sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
//    sql.add('from mtartuculos a');
//    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
//    // sql.add('where a.marca =:marca');
//    sql.add('where a.cOD_serie =:codserie');
//    sql.add('and a.marca <>''MATERIA PRIMA''');
//    sql.add('group by a.unidad,a.precio_a, a.precio_b, precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
//    sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs, A.FACTURABLE');
//    sql.add('order by a.FACTURABLE asc');
//    params[0].Value := 1;
//    // params[1].Value := 'PIZZAS';
//    open;
//  end;
end;

procedure TFrmTouch.EnvioCocina;
begin

  with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.add('left join cliente b On a.clienteid = b.codigo');
    sql.add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.add('where a.NO_FACT =:op1');
    params[0].Value := StrToInt(Edit2.text);
    open;
  end;
  // showmessage(''+datos.FbqMaster_FactCODIGO.Text);
  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.add('left join mtartuculos b On a.cod_art = b.codigoTXT');
    sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with datos.Zdetalle do
  begin

    with SqlBuscarCocina do
    begin
      close;
      sql.Clear;
      sql.add('select * from ENVIOCOCINA');
      sql.add('where no_orden =:orden');
      params[0].Value := datos.FbqMaster_FactCODIGO.Value;
      open;
    end;

    if SqlBuscarCocina.RecordCount = 0 then
    begin

      with SQLNumeroCocina do
      begin
        close;
        sql.Clear;
        sql.add('select gen_id(GEN_ENVIOCOCINA_ID, 1) from RDB$DATABASE');
        open;
      end;

      datos.SQLCocina.open;
      datos.SQLCocina.Append;
      datos.SQLCocinaID.Value := SQLNumeroCocinaGEN_ID.Value;
      datos.SQLCocinaFECHA.Value := Now();
      datos.SQLCocinaHORA.Value := time();
      datos.SQLCocinaCLIENTE.Value :=
        datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value;
      datos.SQLCocinaTIEMPO.Value := 12;
      datos.SQLCocinaESTADO.Value := 1;
      datos.SQLCocinaMESERO.Value := datos.FbqMaster_FactNOMBRES_EMP.Value;
      datos.SQLCocinaNO_ORDEN.Value := datos.FbqMaster_FactCODIGO.Value;
      datos.Sqlcocinamasterid.Value := datos.FbqMaster_FactNO_FACT.Value;
    end;

    first;

    with SqlBuscarDcocina do
    begin
      close;
      sql.Clear;
      sql.add('select * from D_ENVIOCOCINA');
      sql.add('where no_orden =:no_orden');
      params[0].Value := datos.FbqMaster_FactCODIGO.Value;
      open;
    end;

    if SqlBuscarDcocina.RecordCount > 0 then
    begin
      with SqlBorrarDCocina do
      begin
        close;
        sql.Clear;
        sql.add('delete from D_ENVIOCOCINA where no_orden =:no_orden');
        params[0].Value := datos.FbqMaster_FactCODIGO.Value;
        ExecSQL;
      end;

    end;

    while not eof do
    begin
      if datos.ZdetalleBARRA.Value <> '' then
      begin
        // SerieTXT := '';

        with SqlNumeroDCocina do
        begin
          close;
          sql.Clear;
          sql.add('select gen_id(GEN_D_ENVIOCOCINA_ID, 1) from RDB$DATABASE');
          open;
        end;

        datos.SqlDCocina.open;
        datos.SqlDCocina.Append;
        datos.SQLDCocinaID.Value := SqlNumeroDCocinaGEN_ID.Value;
        datos.SqlDCocinaCANT.Value := datos.ZdetalleCANTIDAD.AsInteger;
        datos.SqlDCocinaESTADO.Value := 1;

        // with SqlBIngredientes do
        // begin
        // close;
        // sql.Clear;
        // sql.Add('select * from man_series');
        // sql.Add('where iddetalle =:codarti and no_fact =:numerofactura');
        // params[0].Value := datos.ZdetalleNO_FACT.Value;
        // params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
        //
        // open;
        //
        // if RecordCount > 0 then
        // begin
        //
        // SqlBIngredientes.first;
        //
        // while not eof do
        // begin
        //
        // SerieTXT := SerieTXT +', '+SqlBIngredientesSERIES.Value;
        //
        // next;
        // end;
        //
        // end;
        //
        // end;

        datos.SqlDCocinaPRODUCTOS.Value := datos.ZdetalleTITULOPRN.Value;
        // +'  '+datos.ZdetalleBARRA.Value+'  ('+SerieTXT+') ';

      end;

      next;
    end;

  end;

  If application.MessageBox('Deseas Imprimir El Ticket de Entrada ?',
    'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
  begin
    // Prncocina.PrepareReport(true);
    // PrnCocina.ShowReport;

    // Prncocina.PrepareReport(true);
    // PrnCocina.print;

  end;

  with ActualizaLinea do
  begin
    close;
    sql.Clear;
    sql.add('update detailfact set  linea = 2 where masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    ExecSQL;
  end;
  //


  // if  datos.ZUconfiguracionabrircajon.Value = 1 then
  // begin
  //
  //
  // with datos.FbqMaster_Fact do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
  // sql.Add('left join cliente b On a.clienteid = b.codigo');
  // sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
  // sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
  // sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
  // sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
  // sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
  // sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');
  // sql.Add('where a.NO_FACT =:op1');
  // params[0].Value := StrToInt(edit5.Text);
  // open;
  // end;
  //
  // with datos.Zdetalle do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
  // sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
  // sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
  // sql.Add('where a.masterid =:ppp');
  // sql.Add('and a.unid =:op2');
  // sql.Add('and a.linea =:op3');
  // params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
  // params[1].Value := 100;
  // params[2].Value := 1;
  // open;
  // end;
  //
  // if datos.FbqMaster_FactCODIGO.Value < 1 then begin
  //
  // with numerocodigo do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
  // open;
  // end;
  //
  // datos.FbqMaster_Fact.Edit;
  // datos.FbqMaster_FactCODIGO.Value         := NumeroCodigoGEN_ID.Value;
  // edit16.Text                              := IntToStr(datos.FbqMaster_Factcodigo.Value);
  //
  // end;
  //
  // If application.MessageBox ('Deseas Imprimir El Ticket de Entrada ?','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
  // begin
  // Prncocina.PrepareReport(true);
  // PrnCocina.ShowReport;
  //
  /// /                                                 Prncocina.PrepareReport(true);
  /// /                                                 PrnCocina.print;
  //
  // end;
  // //  ShowMessage(''+datos.FbqMaster_FactNO_FACT.text);
  //
  //
  // with ActualizaLinea do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('update detailfact set  linea = 2 where masterid =:ppp');
  // params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
  // ExecSQL;
  // end;
  //
  // end;

end;

procedure TFrmTouch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmTouch := nil;
  Action := caFree;
   FrmHome.pnl_Menu_Lateral.Visible := TRUE;
  FrmHome.pnlTop.Visible := TRUE;
  FrmHome.btnsalir.Enabled := TRUE;
  FrmHome.s1.Enabled := true;
  FrmHome.spSalir.Enabled := true;

  if datos.FbqMaster_Fact.Active = TRUE then
  begin

    datos.FbqMaster_Fact.Edit;
    // if datos.fbqMaster_factsituacion.text <>'PEDIDO' then BEGIN
    // datos.fbqMaster_factsituacion.text :='CANCELADA';
    // END;
    datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
    // //DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
    // //datos.FbqMaster_Factterminal.Text := 'FACTURACION';
    // datos.FbqMaster_FactABONO.Value          := 0.00;
    // datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
    //
    //
    // if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
    // begin
    // datos.FbqMaster_Factquees.Value := 'NO';
    // end;
    //
    // if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
    // begin
    // datos.FbqMaster_Factquees.Value := 'PENDIENTE';
    // end;

    t1.Clear;
    // t2.Clear;
    t3.Clear;
    t4.Clear;

    datos.FbqMaster_Fact.ApplyUpdates;
    datos.Zdetalle.ApplyUpdates;
    datos.Data.Commit;

    datos.ZInventario.close;
    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;

    Cancelar;

  end;
end;

procedure TFrmTouch.FormCreate(Sender: TObject);
const
  Enable: Array [Boolean] of Byte = (ESB_ENABLE_BOTH, ESB_DISABLE_BOTH);
begin
  EnableScrollBar(DBCtrlGrid1.Handle, SB_VERT,
    Enable[Abs(VertScrollBar.Range - Height) < 3]);
  ShowScrollbar(DBCtrlGrid1.Handle, SB_BOTH, FALSE);
end;

procedure TFrmTouch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    if pnlDecimal.Visible = TRUE then
    begin
      pnlDecimal.Visible := FALSE;
    end;


    if pnlCambioPrecio.Visible = true then
      begin
        cxCambioPrecio.Value := 0.00;
        pnlCambioPrecio.Visible := false;
      end;
  end;

  if ((ssAlt in Shift) and (Key = VK_F4)) then
    Key := 0;
end;

procedure TFrmTouch.FormShow(Sender: TObject);
begin
  cargarlogo;

  if DATOS.ZUconfiguracionUSAR_VF.Value = 'SI' then
  begin
    SHPropina.Visible := TRUE;
    tbley.Visible := false;
  end
  else
  begin
    SHPropina.Visible := FALSE;
    tbley.Visible := FALSE;
  end;

end;

procedure TFrmTouch.Image3Click(Sender: TObject);
begin
  addpizza;
end;

procedure TFrmTouch.Image4Click(Sender: TObject);
begin

  if FrmFinder = nil then
  begin
    FrmFinder := tFrmFinder.create(self);
    FrmFinder.Edit2.text := DBLClasificacion.text;
    FrmFinder.Edit3.text := IbqRArticulosCAT.text;
    FrmFinder.ShowModal;
  end;

end;

procedure TFrmTouch.insertarbarra;
VAR
  suma: Currency;
  itbs: Currency;
  Stexto: string;
  descc: Currency;
  comision: double;
begin

  try
    with numero_detallegen do
    begin
      close;
      sql.Clear;
      sql.add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
      open;
    end;

    datos.Zdetalle.Append;
    datos.ZdetalleNO_FACT.Value := numero_detallegenGEN_ID.Value;

    datos.ZdetalleCANTIDAD.Value := 1.00;
    // Redondear_A((StrToFloat(t3.Text) / t4.Value),2);

    datos.ZdetalleTITULOPRN.Value := IbqArticulosBarARTICULO.Value;
    datos.ZdetalleARTICULO.Value := IbqArticulosBarARTICULO.Value;
    datos.ZdetalleBARRA.Value := IbqArticulosBarMARCA.Value;
    datos.ZdetalleNO_FACT1.Value := 'NORMAL';
    datos.ZdetalleCOMBO.Value :='UNI';

    // datos.ZdetalleNO_FACT1.Value  := NCnumero.text;
    datos.Zdetallecod_art.Value := IntToStr(IbqArticulosBarCOD_ART.Value);
    datos.ZdetalleARTICULOID.Value := IbqArticulosBarCOD_ART.Value;

    /// ////  *****************************   Inicio Politica UNITARIO *********************************
    //
    if IbqRArticulosPOLITICA.Value = 'Unitario' then
    begin
      //

      if IbqRArticulosITBIS.Value = 'Si' then
      begin
        recalcula;


        // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin

        // end else begin
        // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
        // end;

      end;

      if IbqArticulosBarITBIS.Value = 'No' then
      begin

        datos.ZdetalleITBiS.Value := 'No';
        datos.ZdetalleITBS_ART.Value := 'N';
        datos.ZdetalleEX.Value := 'E';

        datos.ZdetallePRECIO.Value := t4.Value;
        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;
        datos.ZdetalleITBS.Value := 0.00;
        datos.Zdetalleley.Value := datos.ZdetallePRECIO.Value;

        datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
          datos.ZdetalleITBS.Value;
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
          (IbqArticulosBarCOMISION.Value / 100);

        datos.Zdetalle.first;

        while not datos.Zdetalle.eof do
        begin
          suma := (suma + datos.Zdetalle.FieldByname('total').Value);
          // * data.ibtdetallefactCANTIDAD.AsInteger;
          itbs := (itbs + datos.Zdetalle.FieldByname('itbs').Value);
          // * data.ibtdetallefactCANTIDAD.AsInteger;
          // descc := (descc + datos.zdetalle.FieldByName('ley').Value);
          datos.Zdetalle.Edit;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
          datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;
          datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;
          /// datos.ZdetalleITBIS2.Value  := datos.ZdetalleITBIS2.Value;

          datos.Zdetalle.next;

        end;

        datos.FbqMaster_Fact.Edit;
        datos.FbqMaster_Factdescuento.Value := (suma - itbs) * 0.10;
        datos.FbqMaster_FactPOGXITBS.Value := itbs;
        datos.FbqMaster_FactMONTO.Value := suma - itbs;

        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;

      end;

    end;
    /// ////  *****************************   Fin Politica UNITARIO *********************************

  except

  end;

end;

procedure TFrmTouch.InsertarIngredientes;
begin

  with QIngredientes do
  begin
    close;
    sql.Clear;
    sql.add('select * from INGREDIENTES');
    sql.add('where idarti =:arti');
    params[0].Value := datos.ZdetalleARTICULOID.Value;
    open;
  end;

  if QIngredientes.RecordCount > 0 then
  begin
    QIngredientes.first;

    with QhayIngredientes do
    begin
      close;
      sql.Clear;
      sql.add('select * from D_INGREDIENTES');
      sql.add('where idmaster =:arti');
      params[0].Value := datos.ZdetalleNO_FACT.Value;
      open;
    end;

    if QhayIngredientes.RecordCount <= 0 then
    begin

      while NOT QIngredientes.eof do
      begin
        with QNumIngredientes do
        begin
          close;
          sql.Clear;
          sql.add('select gen_id(GEN_D_INGREDIENTES_ID, 1) from RDB$DATABASE');
          open;
        end;

        with datos.rbDIngredientes do
        begin
          open;
          Append;
          datos.rbDIngredientesID.Value := QNumIngredientesGEN_ID.Value;
          datos.rbDIngredientesIDARTICULOS.Value := QIngredientesIDARTI.Value;
          datos.rbDIngredientesingredientes.Value :=
            QIngredientesINGREDIENTES.Value;
          datos.rbDIngredientesSELECCION.Value := 'True';
          datos.rbDIngredientesIDDETALLE.Value := QIngredientesID.Value;
          datos.rbDIngredientesOP.Value := 1;
          // datos.rbDIngredientesNO_ORDEN.Value       :=

          POST;

        end;

        QIngredientes.next;
      end;

    end;

  end;

  // FIngredientes.QClasificaciones.Open;
  FIngredientes.ShowModal;
end;

procedure TFrmTouch.LimpiarTotales;
begin
datos.FbqMaster_Fact.Edit;
datos.FbqMaster_FactMONTO.Value := 0.00;
datos.FbqMaster_FactMONTOPAGO.Value := 0.00;
datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
datos.FbqMaster_FactSUBTOTAL.Value := 0.00;

end;

procedure TFrmTouch.totales;
var

  Stexto: string;

  comision: double;

begin
  suma := 0.00;
  itbs := 0.00;
  descc := 0.00;

  datos.Zdetalle.first;

  while not datos.Zdetalle.eof do
  begin
    suma := (suma + datos.Zdetalle.FieldByname('total').Value);
    // * data.ibtdetallefactCANTIDAD.AsInteger;
    itbs := (itbs + datos.Zdetalle.FieldByname('itbs').Value);
    // * data.ibtdetallefactCANTIDAD.AsInteger;
    // descc := (descc + datos.zdetalle.FieldByName('ley').Value);
    datos.Zdetalle.Edit;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
    datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;
    datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;
    /// datos.ZdetalleITBIS2.Value  := datos.ZdetalleITBIS2.Value;

    datos.Zdetalle.next;

  end;

  datos.FbqMaster_Fact.Edit;
  // itbs := 0.00;
  datos.FbqMaster_FactPOGXITBS.Value := itbs;
  datos.FbqMaster_FactMONTO.Value := suma - itbs;

  if IbqClientesNUMEROPIN.Value = edtHabitaciones.Text then
  begin

    if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
    begin
      if SHPropina.IsOn = TRUE then
      begin

        datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.10;
      end
      else
      begin
        datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.00;
      end;
    end
    else
    begin
      datos.FbqMaster_Factleypropina.Value := 0.00;
    end;

    datos.FbqMaster_FactMONTOPAGO.Value :=
      round(datos.FbqMaster_FactMONTO.Value + itbs +
      datos.FbqMaster_Factleypropina.Value);
  end;

  IF IbqClientesNUMEROPIN.Value = 'NORMAL' THEN
  begin

    if SHPropina.IsOn = TRUE then
    begin
      datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.10;
      datos.FbqMaster_FactMONTOPAGO.Value :=
        round(datos.FbqMaster_FactMONTO.Value + itbs);
    end
    else
    begin
      datos.FbqMaster_Factleypropina.Value := 0.00;
      datos.FbqMaster_FactMONTOPAGO.Value :=
        round(datos.FbqMaster_FactMONTO.Value + itbs);
    end;

  end;

  if IbqClientesNUMEROPIN.Value = 'NCF' then
  begin

   if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
    begin
      if SHPropina.IsOn = TRUE then
      begin

        datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.10;
      end
      else
      begin
        datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.00;
      end;
    end
    else
    begin
      datos.FbqMaster_Factleypropina.Value := 0.00;
    end;

    datos.FbqMaster_FactMONTOPAGO.Value :=
      round(datos.FbqMaster_FactMONTO.Value + itbs +
      datos.FbqMaster_Factleypropina.Value);
  end;

end;

procedure TFrmTouch.nofraccional;
VAR

  Stexto: string;
  comision: double;
begin

  try

    with numero_detallegen do
    begin
      close;
      sql.Clear;
      sql.add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
      open;
    end;

    datos.Zdetalle.Append;
    datos.ZdetalleNO_FACT.Value := numero_detallegenGEN_ID.Value;

    datos.ZdetalleCANTIDAD.Value := 1.00;
    // Redondear_A((StrToFloat(t3.Text) / t4.Value),2);

    if IbqRArticulosPOLITICA.Value = 'Unitario' then
    begin
      datos.ZdetalleCOMBO.Value := 'UNI';
    end;

    if IbqRArticulosPOLITICA.Value = 'oferta' then
    begin
      datos.ZdetalleCOMBO.Value := 'OFE';
    end;

    if IbqRArticulosPOLITICA.Value = 'servicio' then
    begin
      datos.ZdetalleCOMBO.Value := 'SER';
    end;

    if IbqRArticulosPOLITICA.Value = 'fraccional' then
    begin
      datos.ZdetalleCOMBO.Value := 'FRA';
    end;

    datos.ZdetalleTITULOPRN.Value := IbqRArticulosARTICULO.Value;
    datos.ZdetalleARTICULO.Value := IbqRArticulosARTICULO.Value;
    datos.ZdetalleBARRA.Value := IbqRArticulosMARCA.Value;
    datos.ZdetalleNO_FACT1.Value := 'NORMAL';
    datos.ZdetalleLINEA.Value := 1;
    // datos.ZdetalleNO_FACT1.Value  := NCnumero.text;
    datos.Zdetallecod_art.Value := IntToStr(IbqRArticulosCOD_ART.Value);
    datos.ZdetalleARTICULOID.Value := IbqRArticulosCOD_ART.Value;

    /// ////  *****************************   Inicio Politica UNITARIO *********************************
    //

    if IbqRArticulosITBIS.Value = 'Si' then
    begin

      recalcula;

      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_Factdescuento.Value := 0.00;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;

    end;

    if IbqRArticulosITBIS.Value = 'No' then
    begin



      datos.ZdetalleITBiS.Value := 'No';
      datos.ZdetalleITBS_ART.Value := 'N';
      datos.ZdetalleEX.Value := 'E';

      datos.ZdetallePRECIO.Value := t4.Value;
      datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
        datos.ZdetalleCANTIDAD.Value;
      datos.ZdetalleITBS.Value := 0.00;
      datos.Zdetalleley.Value := datos.ZdetallePRECIO.Value;

      datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
        datos.ZdetalleITBS.Value;
      // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
      datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
        (IbqRArticulosCOMISION.Value / 100);

     // datos.Zdetalle.first;

    totales;

    end;

    /// ////  *****************************   Fin Politica UNITARIO *********************************

    InsertarIngredientes;

  except

  end;

end;

procedure TFrmTouch.nuevo;
begin

  TbMesas.Enabled := TRUE;
  BtCliente.Enabled := TRUE;
 // BtUnirCuenta.Enabled := TRUE;
  BTordenDelibery.Enabled := FALSE;
  BTFactHold.Enabled := FALSE;
  DBLClasificacion.Enabled := TRUE;
  op1.Enabled := TRUE;
  BtNuevo.Enabled := FALSE;
  BTEnviarHold.Enabled := TRUE;
  BtDelivery.Enabled := TRUE;
  BtEliminarArticulo.Enabled := TRUE;
  BtIngredientes.Enabled := TRUE;
  BTCobrar.Enabled := TRUE;
  BTBuscar.Enabled := TRUE;
  Btarriba.Enabled := TRUE;
  BtAbajo.Enabled := TRUE;
  BTCanelar.Enabled := TRUE;
  BTMEsero.Enabled := TRUE;
  BtnDGII.Enabled := TRUE;
  BtFacturaImpresas.Enabled := FALSE;
  Edit4.Enabled := TRUE;
  // BTPreFactura.Enabled          := true;
  //pnlStop.Visible := FALSE;
  BTCobroTarjeta.Enabled := TRUE;
  BTCobroMixto.Enabled := TRUE;
  BTImpuesto.Enabled := TRUE;

end;

procedure TFrmTouch.pago;
begin
  if (IbqClientesCODIGO.Value = 1) and
    (datos.FBQMASTER_FACTTIPO.Value = 'CREDITO') then
  begin
    ShowMessage(' Cliente no esta Autorizado para el Crédito ');
  end
  else
  begin

    if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
    begin

      with QBalanceCreditoCliente do
      begin
        close;
        sql.Clear;
        sql.add('select balance from cliente');
        sql.add('where codigo =:opp');
        params[0].Value := IbqClientesCODIGO.Value;
        open;
      end;

      if datos.FbqMaster_FactMONTOPAGO.Value <= QBalanceCreditoClienteBALANCE.Value
      then
      begin
        cobrando;
        // panel7.Enabled := false;
        // PanelLTOP.Enabled := false;
      end
      else
      begin
        ShowMessage
          (' El monto de esta factura aumenta el Limete de credito asignado ');
      end;
    end;

    if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
    begin

      cobrando;
      // panel7.Enabled := false;
      // PanelLTOP.Enabled := false;
    end;
  end;
end;

procedure TFrmTouch.Printcopia;
var
  cont, numpag, i: Integer;
  arq: textfile;
  fechaFA: tdate;
  horaFA: ttime;
  r: TRect;

  longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE,
    EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL: string;
  DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2: string;
  PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1,
    TPcampoF: string;
  SIZEFONT, FONTBOLD, FONTNORMAL: string;

begin

  fechaFA := Now;
  horaFA := time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  // VerificaCampos(Sender);

  // Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

  // Se nenhum campo está em branco, grava o cupom
  // GravaCupons(Sender);

  if FileExists(ChangeFileExt(application.ExeName, '.ini')) then
  begin
    try
      IniFile := ChangeFileExt(application.ExeName, '.ini');

      longitud := ReadString_Ini(IniFile, 'IMPRESION', 'longitud', '');
      campol := ReadString_Ini(IniFile, 'IMPRESION', 'campoL', '');
      campoC1 := ReadString_Ini(IniFile, 'IMPRESION', 'campoC1', '');
      campoC2 := ReadString_Ini(IniFile, 'IMPRESION', 'campoC2', '');
      campoD := ReadString_Ini(IniFile, 'IMPRESION', 'campoD', '');
      campof := ReadString_Ini(IniFile, 'IMPRESION', 'campoF', '');

      EX := ReadString_Ini(IniFile, 'IMPRESION', 'ex', '');
      ESPACIOA := ReadString_Ini(IniFile, 'IMPRESION', 'espacioA', '');
      PITBIS := ReadString_Ini(IniFile, 'IMPRESION', 'pitbis', '');
      PPRECIO := ReadString_Ini(IniFile, 'IMPRESION', 'pprecio', '');
      PTOTAL := ReadString_Ini(IniFile, 'IMPRESION', 'ptotal', '');

      Dcampol := ReadString_Ini(IniFile, 'IMPRESION', 'DcampoL', '');
      DcampoC1 := ReadString_Ini(IniFile, 'IMPRESION', 'DcampoC1', '');
      DcampoC2 := ReadString_Ini(IniFile, 'IMPRESION', 'DcampoC2', '');
      DcampoD := ReadString_Ini(IniFile, 'IMPRESION', 'DcampoD', '');
      DcampoD2 := ReadString_Ini(IniFile, 'IMPRESION', 'DcampoD2', '');
      Dcampof := ReadString_Ini(IniFile, 'IMPRESION', 'DcampoF', '');
      Pcampol := ReadString_Ini(IniFile, 'IMPRESION', 'PcampoL', '');
      PcampoC1 := ReadString_Ini(IniFile, 'IMPRESION', 'PcampoC1', '');
      PcampoC2 := ReadString_Ini(IniFile, 'IMPRESION', 'PcampoC2', '');
      PcampoD := ReadString_Ini(IniFile, 'IMPRESION', 'PcampoD', '');
      PcampoD2 := ReadString_Ini(IniFile, 'IMPRESION', 'PcampoD2', '');
      Pcampof := ReadString_Ini(IniFile, 'IMPRESION', 'PcampoF', '');
      INICIARPRINT := ReadString_Ini(IniFile, 'IMPRESION', 'INICIARPRINT', '');
      TEXTCORTE := ReadString_Ini(IniFile, 'IMPRESION', 'TEXTCORTE', '');
      TPcampoL := ReadString_Ini(IniFile, 'IMPRESION', 'TPcampoL', '');
      TPcampoC1 := ReadString_Ini(IniFile, 'IMPRESION', 'TPcampoC1', '');
      TPcampoF := ReadString_Ini(IniFile, 'IMPRESION', 'TPcampoF', '');

      SIZEFONT := ReadString_Ini(IniFile, 'IMPRESION', 'SIZEFONT', '');
      FONTBOLD := ReadString_Ini(IniFile, 'IMPRESION', 'FONTBOLD', '');
      FONTNORMAL := ReadString_Ini(IniFile, 'IMPRESION', 'FONTNORMAL', '');

    except
      on E: Exception do
      begin
        MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13 +
          '**** ' + E.Message + '****'#13 +
          'Esto provoca que no se pueda iniciar,' +
          'Si el problema persiste, llamar al soporte');
        application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;

  // longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    INICIARPRINT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    SIZEFONT);

  // WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
  // WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByname('EMPRESA').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    FONTNORMAL);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByname('DIRECCION').Value,
    StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString('TEL. :' + datos.ZUconfiguracion.FieldByname('TELEFONO').Value
    + '/  RNC:' + datos.ZUconfiguracion.FieldByname('RNC').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString('PEDIDO A COCINA', StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString(MyTextReplace(datos.FbqMaster_Fact.FieldByname('NCF_NOMBRE')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString(MyTextReplace('NCF:' + datos.FbqMaster_Fact.FieldByname('NCF')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString(MyTextReplace('VENTA DE CONTADO'), StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '             ' +
      'HORA: ' + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '    ' + 'HORA: '
      + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios(MyTextReplace('No Fact: ' + datos.FbqMaster_Fact.FieldByname
    ('numero_factura').asstring), StrToInt(longitud), 0));
  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('---------------------------------------',
      StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + datos.FbqMaster_Fact.FieldByname
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));

  if datos.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios(MyTextReplace('RNC CLIENTE  :' + datos.FbqMaster_Fact.FieldByname
      ('RNC_CLIENTE').Value), StrToInt(longitud), 0));
  end;

  if datos.FbqMaster_Factdireccion.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios(MyTextReplace('DIRECCION  :' + datos.FbqMaster_Fact.FieldByname
      ('DIRECCION').Value), StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('CANT', StrToInt(campol), 0) + espacios('PRODUCTO',
    StrToInt(campoC1), 0) + espacios('ITBIS', StrToInt(campoC2), 0) +
    espacios('PRECIO', StrToInt(campoC2), 0) + espacios('TOTAL',
    StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));
  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('---------------------------------------',
      StrToInt(longitud), 0));
  end;

  with datos.Zdetalle do
  begin
    first;
    while not eof do
    begin

      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
        espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByname('cantidad')
        .Value), StrToInt(campol), 0) +
        espacios(copy(MyTextReplace(datos.Zdetalle.FieldByname('TITULOPRN')
        .asstring), 0, 36), StrToInt(longitud), 0));

      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if datos.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO')
          .Value, espacios(MyTextReplace(datos.Zdetalle.FieldByname('EX')
          .asstring), StrToInt(EX), 0) + espacios(MyTextReplace(''),
          StrToInt(ESPACIOA), 0) + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByname('itbs').Value), StrToInt(PITBIS), 0) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByname('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByname('total').Value), StrToInt(PTOTAL), 1) + ''
          + espacios('', StrToInt(Dcampof), 0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO')
          .Value, espacios(MyTextReplace(datos.Zdetalle.FieldByname('EX')
          .asstring), StrToInt(EX), 0) + espacios(MyTextReplace(''),
          StrToInt(ESPACIOA), 0) + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByname('itbs').Value), StrToInt(PITBIS), 0) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByname('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByname('total').Value), StrToInt(PTOTAL), 1) + ''
          + espacios('', StrToInt(Dcampof), 0));

      END;

      next;
    end;
  end;

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('---------------------------------------',
      StrToInt(longitud), 0));
  end;

  if not datos.FbqMaster_Fact.FieldByname('MONTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByname('MONTO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByname('DESCUENTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByname('descuento').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByname('POGXITBS').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByname('POGXITBS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not datos.FbqMaster_Fact.FieldByname('MONTOPAGO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByname('MONTOPAGO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

  if not datos.FbqMaster_Fact.FieldByname('EFECTIVO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByname('EFECTIVO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByname('bonos').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('BONOS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByname('BONOS')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByname('DEVOLUCION').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByname('DEVOLUCION').Value),
      StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString(MyTextReplace('Fecha de Vencimiento:' +
    datos.FbqMaster_Fact.FieldByname('fecha_final').asstring),
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    CenterString(datos.FbqMaster_Fact.FieldByname('observaciones').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios(MyTextReplace('' + datos.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + datos.FbqMaster_Factcajero.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('----------------------------------', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  // with printer do
  // begin
  //
  // PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
  // r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
  // BeginDoc;
  // Canvas.Brush.Style := bsClear;
  // for i := 0 to Memo1.Lines.Count do
  // Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
  // Memo1.Lines.Strings[i]);
  // Canvas.Brush.Color := clBlack;
  //
  // EndDoc;
  // end;

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByname('CONTACTO').Value,
    TEXTCORTE);

end;

procedure TFrmTouch.recalcula;
begin


 if DATOS.ZUconfiguracionIMPRESION_RAPIDA.Value = 'Si' then
         begin
                DATOS.ZdetalleITBiS.Value := 'Si';
                DATOS.ZdetalleITBS_ART.Value := 'S';
                DATOS.ZdetalleEX.Value := '';

                DATOS.ZdetallePRECIO.Value := Frmtouch.t4.Value / 1.18;
                DATOS.ZdetalleIMPUESTO.Value := DATOS.ZdetallePRECIO.Value *
                  DATOS.ZdetalleCANTIDAD.Value;
                DATOS.ZdetalleITBS.Value :=
                  (DATOS.ZdetallePRECIO.Value *
                  (DATOS.ZUconfiguracionITBIS.Value / 100));
                DATOS.Zdetalleley.Value := (DATOS.ZdetallePRECIO.Value * 0.10);

                DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleIMPUESTO.Value +
                  DATOS.ZdetalleITBS.Value;
                // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleIMPUESTO.Value *
                  (IbqRArticulosCOMISION.Value / 100);

                Frmtouch.totales;

                if DATOS.FbqMaster_Factdescuento.Value = 0.00 then
                begin
                  DATOS.FbqMaster_Factdescuento.Value := 0.00;
                end
                else
                begin
                  DATOS.FbqMaster_FactMONTOPAGO.Value :=
                    (DATOS.FbqMaster_FactMONTO.Value -
                    DATOS.FbqMaster_Factdescuento.Value) + itbs;
                end;
         end else begin

                        DATOS.ZdetalleITBiS.Value := 'Si';
                        DATOS.ZdetalleITBS_ART.Value := 'S';
                        DATOS.ZdetalleEX.Value := '';

                        DATOS.ZdetallePRECIO.Value := Frmtouch.t4.Value;
                        DATOS.ZdetalleIMPUESTO.Value := DATOS.ZdetallePRECIO.Value *
                          DATOS.ZdetalleCANTIDAD.Value;
                        DATOS.ZdetalleITBS.Value :=
                          (DATOS.ZdetallePRECIO.Value *
                          (DATOS.ZUconfiguracionITBIS.Value / 100));

                        DATOS.Zdetalleley.Value := (DATOS.ZdetallePRECIO.Value * 0.10);

                        DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleIMPUESTO.Value +
                          DATOS.ZdetalleITBS.Value;
                        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                        DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleIMPUESTO.Value *
                          (IbqRArticulosCOMISION.Value / 100);

                        Frmtouch.totales;

                        if DATOS.FbqMaster_Factdescuento.Value = 0.00 then
                        begin
                          DATOS.FbqMaster_Factdescuento.Value := 0.00;
                        end
                        else
                        begin
                          DATOS.FbqMaster_FactMONTOPAGO.Value :=
                            (DATOS.FbqMaster_FactMONTO.Value -
                            DATOS.FbqMaster_Factdescuento.Value) + itbs;
                        end;







         end;




end;

procedure TFrmTouch.BTordenDeliberyClick(Sender: TObject);
begin
 if FrmDelivery = nil then
  begin
    FrmDelivery := TFrmDelivery.create(self);
    FrmDelivery.HOLD.close;
    FrmDelivery.HOLD.open;
    FrmDelivery.ShowModal;
  end;
end;

procedure TFrmTouch.BtClienteClick(Sender: TObject);
begin
 if FrmConsultaCliente = nil then
  begin
    FrmConsultaCliente := tFrmConsultaCliente.create(self);
    FrmConsultaCliente.Edit2.text := 'FACT';
    FrmConsultaCliente.IbqClientes.open;
    FrmConsultaCliente.ShowModal;

  end;
end;

procedure TFrmTouch.SpeedButton2sssssClick(Sender: TObject);
var
  suma: Currency;
  itbs: Currency;
  descc: Currency;
begin

  if (datos.FbqMaster_FactSITUACION.text = '') THEN
  BEGIN
    datos.Zdetalle.Delete;
    totales;
  END
  ELSE
  BEGIN

    if FAutorizacion.ShowModal = mrOk then
    begin

      with Borrar do
      begin
        close;
        sql.Clear;
        sql.add('delete from man_series where cod_arti =:codarti and no_fact =:numerofactura');
        params[0].Value := datos.ZdetalleARTICULOID.Value;
        params[1].Value := datos.ZdetalleMASTERID.Value;
        ExecSQL;
      end;

      datos.Zdetalle.Delete;
      // showmessage('');

      totales;
    end
    else
    begin
      MsgPrecaucion(' Operación No permitida, Favor llamar al Administrador');
    end;

  END;


end;

procedure TFrmTouch.SpeedButton4Click(Sender: TObject);
begin
 if (datos.FbqMaster_FactSITUACION.text = '') THEN
  BEGIN

    if datos.FbqMaster_Fact.Active = TRUE then
    begin

      if application.MessageBox('Esta seguro de cancelar este documento',
        'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin
        datos.FbqMaster_Fact.Edit;
        if datos.FbqMaster_FactSITUACION.text <> 'PEDIDO' then
        BEGIN
          datos.FbqMaster_FactSITUACION.text := 'CANCELADA';
        END;
        datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
        // DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
        // datos.FbqMaster_Factterminal.Text := 'FACTURACION';
        datos.FbqMaster_FactABONO.Value := 0.00;
        datos.FbqMaster_FactPENDIENTE.Value :=
          datos.FbqMaster_FactMONTOPAGO.Value;

        if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
        begin
          datos.FbqMaster_Factquees.Value := 'NO';
        end;

        if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
        begin
          datos.FbqMaster_Factquees.Value := 'PENDIENTE';
        end;

        t1.Clear;
        // t2.Clear;
        t3.Clear;
        t4.Clear;

        datos.FbqMaster_Fact.ApplyUpdates;
        datos.Zdetalle.ApplyUpdates;
        datos.Data.Commit;

        datos.ZInventario.close;
        datos.FbqMaster_Fact.close;
        datos.Zdetalle.close;

        Cancelar;

      end;

    end;

    close;

  END
  else
  begin

    if FAutorizacion.ShowModal = mrOk then
    begin

      if datos.FbqMaster_Fact.Active = TRUE then
      begin

        if application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          datos.FbqMaster_Fact.Edit;
          if datos.FbqMaster_FactSITUACION.text <> 'PEDIDO' then
          BEGIN
            datos.FbqMaster_FactSITUACION.text := 'CANCELADA';
          END;
          datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
          // DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
          // datos.FbqMaster_Factterminal.Text := 'FACTURACION';
          datos.FbqMaster_FactABONO.Value := 0.00;
          datos.FbqMaster_FactPENDIENTE.Value :=
            datos.FbqMaster_FactMONTOPAGO.Value;

          if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
          begin
            datos.FbqMaster_Factquees.Value := 'NO';
          end;

          if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
          begin
            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
          end;

          t1.Clear;
          // t2.Clear;
          t3.Clear;
          t4.Clear;

          datos.FbqMaster_Fact.ApplyUpdates;
          datos.Zdetalle.ApplyUpdates;
          datos.Data.Commit;

          datos.ZInventario.close;
          datos.FbqMaster_Fact.close;
          datos.Zdetalle.close;

          Cancelar;

        end;

      end;

      close;
    end
    else
    begin
      MsgPrecaucion(' Operación No permitida, Favor llamr al Administrador');
    end;
  end;
end;

procedure TFrmTouch.SpeedButton5Click(Sender: TObject);
begin
FormaPago.text := 'TARJETA';
  pago;
end;

procedure TFrmTouch.SpeedButton7Click(Sender: TObject);
begin

  if (datos.FbqMaster_FactSITUACION.text = '') THEN
  BEGIN

    if datos.FbqMaster_Fact.Active = TRUE then
    begin

      if datos.FbqMaster_Fact.Active = TRUE then
      begin

        if application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          datos.FbqMaster_Fact.Edit;
          if datos.FbqMaster_FactSITUACION.text <> 'PEDIDO' then
          BEGIN
            datos.FbqMaster_FactSITUACION.text := 'CANCELADA';
          END;
          datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
          // DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
          // datos.FbqMaster_Factterminal.Text := 'FACTURACION';
          datos.FbqMaster_FactABONO.Value := 0.00;
          datos.FbqMaster_FactPENDIENTE.Value :=
            datos.FbqMaster_FactMONTOPAGO.Value;

          if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
          begin
            datos.FbqMaster_Factquees.Value := 'NO';
          end;

          if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
          begin
            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
          end;

          t1.Clear;
          // t2.Clear;
          t3.Clear;
          t4.Clear;

          datos.FbqMaster_Fact.ApplyUpdates;
          datos.Zdetalle.ApplyUpdates;
          datos.Data.Commit;

          datos.ZInventario.close;
          datos.FbqMaster_Fact.close;
          datos.Zdetalle.close;

          Cancelar;
          // close;
        end;
      end;

    END;

  end
  else
  begin

    if FAutorizacion.ShowModal = mrOk then
    begin

      if datos.FbqMaster_Fact.Active = TRUE then
      begin

        if application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          datos.FbqMaster_Fact.Edit;
          if datos.FbqMaster_FactSITUACION.text <> 'PEDIDO' then
          BEGIN
            datos.FbqMaster_FactSITUACION.text := 'CANCELADA';
          END;
          datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
          // DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
          // datos.FbqMaster_Factterminal.Text := 'FACTURACION';
          datos.FbqMaster_FactABONO.Value := 0.00;
          datos.FbqMaster_FactPENDIENTE.Value :=
            datos.FbqMaster_FactMONTOPAGO.Value;

          if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
          begin
            datos.FbqMaster_Factquees.Value := 'NO';
          end;

          if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
          begin
            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
          end;

          t1.Clear;
          // t2.Clear;
          t3.Clear;
          t4.Clear;

          datos.FbqMaster_Fact.ApplyUpdates;
          datos.Zdetalle.ApplyUpdates;
          datos.Data.Commit;

          datos.ZInventario.close;
          datos.FbqMaster_Fact.close;
          datos.Zdetalle.close;

          Cancelar;
          // close;
        end;

      end;
    end
    else
    begin
      MsgPrecaucion(' Operación No permitida, Favor llamr al Administrador');
    end;

  end;

end;

procedure TFrmTouch.SpeedButton2Click(Sender: TObject);
begin

    datos.Zdetalle.Edit;
    if datos.ZdetalleITBS_ART.Value = 'S' then
    begin

        datos.ZdetallePRECIO.Value   := cxCambioPrecio.Value;
        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
        datos.ZdetalleCANTIDAD.Value;

        datos.ZdetalleITBS.Value :=
          (datos.ZdetalleIMPUESTO.Value *
          (datos.ZUconfiguracionITBIS.Value / 100));
        datos.Zdetalleley.Value := (datos.ZdetallePRECIO.Value * 0.10);

        datos.ZdetalleTOTAL.Value :=
          round(datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value);
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
          (IbqRArticulosCOMISION.Value / 100);


      totales;

      // recalcula;
    end;

    if datos.ZdetalleITBS_ART.Value = 'N' then
    begin

//      if IbqClientesCOMISION.Value > 0 then
//      begin
//
//        // comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
//        datos.ZdetallePRECIO.Value   := cxCambioPrecio.Value;
//        datos.ZdetallePRECIO.Value :=
//          ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
//          (IbqClientesCOMISION.Value / 100)) / 100))) +
//          IbqRArticulosCOSTO_PR.Value;
//      end
//      else
//      begin
//        datos.ZdetallePRECIO.Value   := cxCambioPrecio.Value;
//        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
//          datos.ZdetalleCANTIDAD.Value;
//
////        datos.ZdetalleITBS.Value :=
////          (datos.ZdetalleIMPUESTO.Value *
////          (datos.ZUconfiguracionITBIS.Value / 100));
////        datos.Zdetalleley.Value := (datos.ZdetallePRECIO.Value * 0.10);
//
//        datos.ZdetalleTOTAL.Value :=  round(datos.ZdetalleIMPUESTO.Value);
//        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//        datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
//          (IbqRArticulosCOMISION.Value / 100);
//
//
//           totales;
//        // datos.ZdetallePRECIO.Value   := t4.Value;
//
//      end;

      // datos.ZdetalleIDTECNICO.Value := tecnico;

      datos.zdetalle.Edit;
      datos.ZdetallePRECIO.Value   := cxCambioPrecio.Value;
      datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
        datos.ZdetalleCANTIDAD.Value;
      datos.ZdetalleITBS.Value := 0.00;
      datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
        datos.ZdetalleITBS.Value;
      // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
      datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
        (IbqRArticulosCOMISION.Value / 100);
      /// datos.Zdetalleley.Value   := (datos.ZdetallePRECIO.Value * 0.10);

      totales;

    end;
      cxCambioPrecio.Value :=  0.00;
      pnlCambioPrecio.Visible := false;
end;

procedure TFrmTouch.SpeedButton2dddddClick(Sender: TObject);
begin
 FDescuento.ShowModal;
end;

procedure TFrmTouch.BtnDGIIClick(Sender: TObject);
begin
  with datos.ncf do
  begin
    close;
    sql.Clear;
    sql.add('select * from ncf');
    sql.add('where (nuNtext =:tipo)');
    sql.add('or (nuNtext =:tipo2)');
    params[0].Value := 'B01';
    params[1].Value := 'B15';
    open;
  end;

  if datos.ncf.RecordCount > 0 then
  begin
    if frmDGII = nil then
    begin
      frmDGII := tfrmDGII.create(self);
      frmDGII.ShowModal;
    end;
  end
  else
  begin
    MsgInformacion('Debes Configurar la Designacion de NCF')
  end;

end;

procedure TFrmTouch.cxButton18Click(Sender: TObject);
begin
 FormaPago.text := 'MIXTO';
  pago;
end;

procedure TFrmTouch.cxButton1Click(Sender: TObject);
begin
 with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    // sql.add('where a.marca =:marca');
    sql.add('where a.cOD_serie =:codserie');
    sql.add('and a.marca <>''MATERIA PRIMA''');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs, A.FACTURABLE');
    sql.add('order by a.FACTURABLE asc');
    params[0].Value := 1;
    // params[1].Value := 'PIZZAS';
    open;
  end;
end;

procedure TFrmTouch.TbMesasClick(Sender: TObject);
begin

  if FrmMesas = nil then
  begin
    FrmMesas := tFrmMesas.create(self);
    /// FrmMesas.edit2.text := 'FACT';
    FrmMesas.IbqClientes.open;
    FrmMesas.ShowModal;

  end;
end;

procedure TFrmTouch.tbleyClick(Sender: TObject);
begin

    if FAutorizacion.ShowModal = mrOk then
    begin
      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin
        if SHPropina.State = tssoff then
        begin
          SHPropina.State := tssOn;
          totales;
        end
        else
        begin
          SHPropina.State := tssoff;
          totales;

        end;
      end;

    end;

  end;

  end.
