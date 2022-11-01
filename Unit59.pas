unit Unit59;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Data.DB,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit, Vcl.Menus, cxButtons,
  cxCalc, RxDBComb, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  Vcl.ExtCtrls, cxPCdxBarPopupMenu, cxPC, frxClass, frxDBSet, cxRadioGroup,
  Vcl.ImgList, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.Grids, Vcl.DBGrids, AdvPageControl, Vcl.ComCtrls, AdvOfficePager,
  dxGDIPlusClasses, cxImage, cxPropertiesStore, cxLabel, cxDBLabel, printers,
  WinSpool, StrUtilS,
  cxMemo, Vcl.Mask, Vcl.DBCtrls, RxToolEdit, RxCurrEdit, cxButtonEdit,
  Vcl.Imaging.jpeg, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  frxExportPDF, System.ImageList, CurvyControls, cxCheckBox,
  cxBlobEdit, dxLayoutContainer, dxLayoutControl, AdvGlassButton, ShellApi,
  Vcl.WinXCtrls, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog,
  cxImageList, cHash, acPNG, Vcl.Buttons;

function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
Function GetImpresora(Impre: String): Integer;
function MyTextReplace(Texto: String): String;
function CenterString(aStr: String; Len: Integer): String;

type
  TFrmNFact_normal = class(TForm)
    opmaster: TcxGroupBox;
    dsmasterFACT: TDataSource;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TLabel;
    cxButton2: TcxButton;
    Label6: TLabel;
    Label7: TLabel;
    IbqClientes: TZReadOnlyQuery;
    DsqCliente: TDataSource;
    OpBuscarEmpleado: TcxGroupBox;
    Edit2: TEdit;
    dsqusuario: TDataSource;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    numero_detalle: TZReadOnlyQuery;
    numero_detalleMAX: TIntegerField;
    Edit3: TEdit;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    Dcombo: TZReadOnlyQuery;
    DcomboCOD_MANCOMBO: TIntegerField;
    DcomboMACOMBOID: TIntegerField;
    DcomboCOD_ART: TIntegerField;
    DcomboPRECIO: TFloatField;
    DcomboPRECIO2: TFloatField;
    DcomboPRECIO3: TFloatField;
    DcomboARTICULO: TWideStringField;
    DcomboCOSTO: TFloatField;
    DcomboCOSTO_PR: TFloatField;
    Label12: TLabel;
    PRECIOS: TZReadOnlyQuery;
    PRECIOSCOD_ART: TIntegerField;
    PRECIOSCODIGOTXT: TWideStringField;
    PRECIOSARTICULO: TWideStringField;
    PRECIOSMODELO: TWideStringField;
    PRECIOSMARCA: TWideStringField;
    PRECIOSCOLOR: TWideStringField;
    PRECIOSCOD_CAT: TIntegerField;
    PRECIOSSTOCK_M: TFloatField;
    PRECIOSCOD_SERIE: TIntegerField;
    PRECIOSCOD_ALM: TIntegerField;
    PRECIOSCOSTO: TFloatField;
    PRECIOSCOD_PROV1: TIntegerField;
    PRECIOSEXISTENCIA1: TFloatField;
    PRECIOSITBIS: TWideStringField;
    PRECIOSABREVIADO: TWideStringField;
    PRECIOSCOD_BARRA: TWideStringField;
    PRECIOSCOD_UV: TIntegerField;
    PRECIOSUSUARIOMOD: TIntegerField;
    PRECIOSFECHA_MOD: TDateField;
    PRECIOSPOLITICA: TWideStringField;
    PRECIOSCOSTO_PR: TFloatField;
    PRECIOSIMAGEN: TBlobField;
    PRECIOSCLA_COSTO: TWideStringField;
    PRECIOSCLA_PRECIO: TWideStringField;
    PRECIOSPRECIO_A: TFloatField;
    PRECIOSPRECIO_B: TFloatField;
    PRECIOSPRECIO_D: TFloatField;
    PRECIOSESTADO: TIntegerField;
    PRECIOSEXTFOTO: TWideStringField;
    NUMERO1: TZQuery;
    NUMERO1GEN_ID: TLargeintField;
    ZqusuarioCARGO: TWideStringField;
    QEmpleados: TZReadOnlyQuery;
    QEmpleadosCOD_EMP: TWideStringField;
    QEmpleadosNOMBRES_EMP: TWideStringField;
    QEmpleadosDIRECCION: TWideStringField;
    QEmpleadosCEDULA: TWideStringField;
    QEmpleadosTELEFONO: TWideStringField;
    QEmpleadosCELULAR: TWideStringField;
    QEmpleadosTIPO: TWideStringField;
    QEmpleadosLOGIN: TWideStringField;
    QEmpleadosPIN: TWideStringField;
    QEmpleadosMODIFICAR_ARTICULOS: TWideStringField;
    QEmpleadosELIMINAR: TWideStringField;
    QEmpleadosIMPRIMIR: TWideStringField;
    QEmpleadosCONTABILIDAD: TWideStringField;
    QEmpleadosMODIFICAR_FACTURAS: TWideStringField;
    QEmpleadosMODIFICAR_UTILIDAD: TWideStringField;
    QEmpleadosIMPRIMIR_CUADRE: TWideStringField;
    QEmpleadosIMPRIMIR_FINACIERO: TWideStringField;
    QEmpleadosCOD_EMP1: TIntegerField;
    QEmpleadosINICIO: TDateField;
    QEmpleadosSUELDO: TFloatField;
    QEmpleadosCOD: TIntegerField;
    QEmpleadosCARGO: TWideStringField;
    QEmpleadosFECHA_ING: TDateField;
    QEmpleadosESTADOS: TIntegerField;
    QEmpleadosTIENDAID: TIntegerField;
    cxDBTextEdit6: TcxDBTextEdit;
    Edit5: TEdit;
    zDetallePrint: TZReadOnlyQuery;
    Panel1: TPanel;
    Edit6: TEdit;
    Label30: TLabel;
    cxButton6: TcxButton;
    HOLD: TZReadOnlyQuery;
    DsHold: TDataSource;
    HOLDNO_FACT: TIntegerField;
    HOLDFECHA_FAC: TDateField;
    HOLDTIPO: TWideStringField;
    HOLDCOD_CLIENT: TWideStringField;
    HOLDCOD_EMP: TWideStringField;
    HOLDNO_FACT1: TWideStringField;
    HOLDMONTO: TFloatField;
    HOLDHORA: TTimeField;
    HOLDPOGXITBS: TFloatField;
    HOLDTIPOPAGO: TWideStringField;
    HOLDMONTOPAGO: TFloatField;
    HOLDCONDICION: TWideStringField;
    HOLDRENTA: TWideStringField;
    HOLDCODIGO: TIntegerField;
    HOLDTIPOITBS: TWideStringField;
    HOLDVENDEDOR: TWideStringField;
    HOLDSITUACION: TWideStringField;
    HOLDCAJERO: TWideStringField;
    HOLDNCF: TWideStringField;
    HOLDRNC_CLIENTE: TWideStringField;
    HOLDNCF1: TFloatField;
    HOLDNOM_CLIENTE: TWideStringField;
    HOLDDESCUENTO: TFloatField;
    HOLDROTULO: TWideStringField;
    HOLDNO_AUTORIZA_NCF: TFloatField;
    HOLDMONTOFINANCIADO: TFloatField;
    HOLDCUOTAS: TIntegerField;
    HOLDINTERES: TFloatField;
    HOLDDIRECCION: TWideStringField;
    HOLDPAGADO: TFloatField;
    HOLDLEYPROPINA: TFloatField;
    HOLDCOMPROBANTE: TWideStringField;
    HOLDTERMINAL: TWideStringField;
    HOLDEFECTIVO: TFloatField;
    HOLDDEVOLUCION1: TFloatField;
    HOLDRESTANTE: TFloatField;
    HOLDABONO: TFloatField;
    HOLDCHEK: TWideStringField;
    HOLDNO_RECIBO: TIntegerField;
    HOLDPAGADOCXC: TFloatField;
    HOLDMESES: TIntegerField;
    HOLDDIAS: TIntegerField;
    HOLDPENDIENTE: TFloatField;
    HOLDESTADOPAGO: TWideStringField;
    HOLDDEVOLUCION: TFloatField;
    HOLDCONDICION_PAGO: TIntegerField;
    HOLDCOMBO: TWideStringField;
    HOLDCOBRADO: TIntegerField;
    HOLDQUEES: TWideStringField;
    HOLDUSUARIOID: TIntegerField;
    HOLDCLIENTEID: TIntegerField;
    HOLDCONDICIONVENTA: TWideStringField;
    HOLDTIENDAID: TIntegerField;
    HOLDPINREFERIDO: TWideStringField;
    HOLDNC: TIntegerField;
    HOLDCLIENTENOMBRE: TWideStringField;
    HOLDNOMBRES_EMP: TWideStringField;
    ncf: TZReadOnlyQuery;
    ncfNCFID: TIntegerField;
    ncfNUNTEXT: TWideStringField;
    ncfDESDE: TIntegerField;
    ncfHASTA: TIntegerField;
    ncfUSO: TIntegerField;
    ncfTIPO: TWideStringField;
    numero_cliente: TZQuery;
    numero_clienteNUMERO: TIntegerField;
    // Config: TfrxDBDataset;
    RibbonImages32: TcxImageList;
    RibbonImages16: TcxImageList;
    Opserial: TcxGroupBox;
    Edit7: TEdit;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    dsSerial: TDataSource;
    cxGrid5DBTableView1SERIES: TcxGridDBColumn;
    numeroSerie: TZReadOnlyQuery;
    numeroSerieMAX: TIntegerField;
    DsqArticulos: TDataSource;
    cxDBTextEdit5: TcxDBTextEdit;
    QUnidad: TZReadOnlyQuery;
    QUnidadCPID: TIntegerField;
    QUnidadNO_ART: TIntegerField;
    QUnidadUNIDAD_M: TIntegerField;
    QUnidadPRECIO1: TFloatField;
    QUnidadPRECIO2: TFloatField;
    QUnidadPRECIO3: TFloatField;
    DsQ_Unidad: TDataSource;
    QUnidadUNIDAD: TWideStringField;
    QUnidadPOS: TIntegerField;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    Ibqigual: TZReadOnlyQuery;
    IbqigualNO_FACT: TIntegerField;
    IbqigualNO_FACT1: TWideStringField;
    IbqigualMASTERID: TIntegerField;
    IbqigualCANTIDAD: TFloatField;
    IbqigualPRECIO: TFloatField;
    IbqigualIMPUESTO: TFloatField;
    IbqigualITBS: TFloatField;
    IbqigualITBIS2: TFloatField;
    IbqigualTOTAL: TFloatField;
    IbqigualCOD_ART: TWideStringField;
    IbqigualUNID: TWideStringField;
    IbqigualCOMBO: TWideStringField;
    IbqigualLINEA: TIntegerField;
    IbqigualARTICULOID: TIntegerField;
    IbqigualANCHO: TFloatField;
    IbqigualALTO: TFloatField;
    IbqigualTITULOPRN: TWideStringField;
    IbqigualUNIDADID: TIntegerField;
    IbqigualITBS_ART: TWideStringField;
    IbqigualARTICULO: TWideStringField;
    IbqigualUNIDAD: TWideStringField;
    cxButton7: TcxButton;
    Qunidad2: TZReadOnlyQuery;
    Qunidad2CPID: TIntegerField;
    Qunidad2NO_ART: TIntegerField;
    Qunidad2UNIDAD_M: TIntegerField;
    Qunidad2PRECIO1: TFloatField;
    Qunidad2PRECIO2: TFloatField;
    Qunidad2PRECIO3: TFloatField;
    Qunidad2UNIDAD: TWideStringField;
    Qunidad2POS: TIntegerField;
    IbqBusca: TZReadOnlyQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    FloatField1: TFloatField;
    WideStringField6: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosUNIDAD: TWideStringField;
    Fraccionado: TZReadOnlyQuery;
    FraccionadoID: TIntegerField;
    FraccionadoCOD_ARTI: TIntegerField;
    FraccionadoCANTI: TFloatField;
    FraccionadoUNIDAD: TWideStringField;
    FraccionadoCOD_PART: TFloatField;
    FraccionadoID_UNIDAD: TIntegerField;
    FraccionadoPRECIO1: TFloatField;
    FraccionadoPRECIO2: TFloatField;
    FraccionadoDESCRIPCION: TWideStringField;
    DsFracciona: TDataSource;
    FraccionadoUNIDAD_1: TWideStringField;
    PartiGrid: TcxGrid;
    PartiGridDBTableView1: TcxGridDBTableView;
    PartiGridDBTableView1DESCRIPCION: TcxGridDBColumn;
    PartiGridDBTableView1Column1: TcxGridDBColumn;
    PartiGridLevel1: TcxGridLevel;
    Edit10: TEdit;
    Edit11: TEdit;
    dscategoria: TDataSource;
    DataSource1: TDataSource;
    Label9: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxButton8: TcxButton;
    medico: TZReadOnlyQuery;
    medicoID: TIntegerField;
    medicoNOMBREMENDICO: TWideStringField;
    medicoTOTALXINTERNAMIENTO: TFloatField;
    medicoPORCIENTOANALISIS: TIntegerField;
    medicoTOTALPAPA: TFloatField;
    medicoTOTALRX: TFloatField;
    DsMedico: TDataSource;
    cxGrid7DBTableView1: TcxGridDBTableView;
    cxGrid7Level1: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGrid7DBTableView1Column1: TcxGridDBColumn;
    DsAlmacenes: TDataSource;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    MaxAlmacen: TZReadOnlyQuery;
    MaxAlmacenMAX: TIntegerField;
    cxGrid8: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    IbqRArticulosPRECIO_D: TFloatField;
    qprecios: TZReadOnlyQuery;
    qpreciosPRECIO_A: TFloatField;
    qpreciosPRECIO_B: TFloatField;
    qpreciosPRECIO_D: TFloatField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    qpreciosCOD_ART: TIntegerField;
    Panel2: TPanel;
    Label31: TLabel;
    DsFacturasImpresas: TDataSource;
    Impresas: TcxGroupBox;
    cxGrid20: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    DetalleFacturas: TZReadOnlyQuery;
    DetalleFacturasNO_FACT: TIntegerField;
    DetalleFacturasNO_FACT1: TWideStringField;
    DetalleFacturasMASTERID: TIntegerField;
    DetalleFacturasCANTIDAD: TFloatField;
    DetalleFacturasPRECIO: TFloatField;
    DetalleFacturasIMPUESTO: TFloatField;
    DetalleFacturasITBS: TFloatField;
    DetalleFacturasITBIS2: TFloatField;
    DetalleFacturasTOTAL: TFloatField;
    DetalleFacturasCOD_ART: TWideStringField;
    DetalleFacturasUNID: TWideStringField;
    DetalleFacturasCOMBO: TWideStringField;
    DetalleFacturasARTICULOID: TIntegerField;
    DetalleFacturasARTICULO: TWideStringField;
    DetalleFacturasUNIDAD: TWideStringField;
    DsDetalleFacturas: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    DsConfiguracion: TDataSource;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    CUANTOS: TZReadOnlyQuery;
    CUANTOSCOUNT: TIntegerField;
    numero_detallegen: TZQuery;
    numero_detallegenGEN_ID: TLargeintField;
    qpreciosCOSTO: TFloatField;
    Panel8: TPanel;
    memo: TcxDBMemo;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    Panel12: TPanel;
    cxButton19: TcxButton;
    Label42: TLabel;
    QRuta: TZReadOnlyQuery;
    QRutaID: TIntegerField;
    QRutaNOMBRE_RUTA: TWideStringField;
    QRutaIDVENDEDOR: TIntegerField;
    QRutaNOMBRE: TWideStringField;
    DsRuta: TDataSource;
    cxRadioGroup1: TcxRadioGroup;
    // IMPRIMEPEDIDO: TfrxReport;
    Label43: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    DBEdit1: TDBEdit;
    cxGroupBox1: TcxGroupBox;
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
    PanelPrecios: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label13: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxDBCalcEdit4: TcxDBCalcEdit;
    Button4: TButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Panel13: TPanel;
    Memo2: TMemo;
    Label35: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label36: TLabel;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosBENEFICIOS: TFloatField;
    Tecnicos: TZReadOnlyQuery;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    DsTecnico: TDataSource;
    cxGrid4DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    Edit17: TEdit;
    PanelOpenD: TPanel;
    Edit18: TEdit;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxButton26: TcxButton;
    cxButton27: TcxButton;
    Anular: TZReadOnlyQuery;
    PrnConduceTicket: TfrxReport;
    ConduceMC: TfrxReport;
    ConduceFull: TfrxReport;
    DetalleFacturasTITULOPRN: TWideStringField;
    PanelDesc: TcxGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    cxTextEdit1: TcxTextEdit;
    desc: TcxCurrencyEdit;
    PanelConduce: TPanel;
    OPConduce: TcxRadioGroup;
    cxButton31: TcxButton;
    PanelCantidad: TPanel;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    Edit21: TEdit;
    UpCredito: TZReadOnlyQuery;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    HOLDFECHAVENCIMIENTO: TDateField;
    BalloonHint1: TBalloonHint;
    PanelLeft: TPanel;
    ChkPrecio1: TCheckBox;
    Panelcenter: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    IbqRArticulosOBS: TIntegerField;
    imprimem: TfrxReport;
    ImprimEMC: TfrxReport;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    Label38: TLabel;
    CHK: TcxCheckBox;
    Dsconfig: TDataSource;
    Label47: TLabel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid3DBTableView1NO_FACT1: TcxGridDBColumn;
    cxGrid3DBTableView1MASTERID: TcxGridDBColumn;
    cxGrid3DBTableView1IMPUESTO: TcxGridDBColumn;
    cxGrid3DBTableView1ITBS: TcxGridDBColumn;
    cxGrid3DBTableView1ITBIS2: TcxGridDBColumn;
    cxGrid3DBTableView1UNID: TcxGridDBColumn;
    cxGrid3DBTableView1COMBO: TcxGridDBColumn;
    cxGrid3DBTableView1LINEA: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULOID: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    UpdateNC: TZReadOnlyQuery;
    DetalleFacturasANCHO: TFloatField;
    DetalleFacturasALTO: TFloatField;
    DetalleFacturasUNIDADID: TIntegerField;
    DetalleFacturasITBS_ART: TWideStringField;
    DetalleFacturasEX: TWideStringField;
    DetalleFacturasIDALMACEN: TIntegerField;
    DetalleFacturasBARRA: TWideStringField;
    DetalleFacturasIDTECNICO: TIntegerField;
    Almacenes1: TZReadOnlyQuery;
    DsAlmacenes01: TDataSource;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    FacturasImpresas: TZReadOnlyQuery;
    FacturasImpresasNO_FACT: TIntegerField;
    FacturasImpresasFECHA_FAC: TDateField;
    FacturasImpresasTIPO: TWideStringField;
    FacturasImpresasCOD_CLIENT: TWideStringField;
    FacturasImpresasCOD_EMP: TWideStringField;
    FacturasImpresasNO_FACT1: TWideStringField;
    FacturasImpresasMONTO: TFloatField;
    FacturasImpresasHORA: TTimeField;
    FacturasImpresasPOGXITBS: TFloatField;
    FacturasImpresasTIPOPAGO: TWideStringField;
    FacturasImpresasMONTOPAGO: TFloatField;
    FacturasImpresasCONDICION: TWideStringField;
    FacturasImpresasRENTA: TWideStringField;
    FacturasImpresasCODIGO: TIntegerField;
    FacturasImpresasTIPOITBS: TWideStringField;
    FacturasImpresasVENDEDOR: TWideStringField;
    FacturasImpresasSITUACION: TWideStringField;
    FacturasImpresasCAJERO: TWideStringField;
    FacturasImpresasNCF: TWideStringField;
    FacturasImpresasRNC_CLIENTE: TWideStringField;
    FacturasImpresasNCF1: TFloatField;
    FacturasImpresasNOM_CLIENTE: TWideStringField;
    FacturasImpresasDESCUENTO: TFloatField;
    FacturasImpresasROTULO: TWideStringField;
    FacturasImpresasNO_AUTORIZA_NCF: TFloatField;
    FacturasImpresasMONTOFINANCIADO: TFloatField;
    FacturasImpresasCUOTAS: TIntegerField;
    FacturasImpresasINTERES: TFloatField;
    FacturasImpresasDIRECCION: TWideStringField;
    FacturasImpresasPAGADO: TFloatField;
    FacturasImpresasLEYPROPINA: TFloatField;
    FacturasImpresasCOMPROBANTE: TWideStringField;
    FacturasImpresasTERMINAL: TWideStringField;
    FacturasImpresasEFECTIVO: TFloatField;
    FacturasImpresasDEVOLUCION1: TFloatField;
    FacturasImpresasRESTANTE: TFloatField;
    FacturasImpresasABONO: TFloatField;
    FacturasImpresasCHEK: TWideStringField;
    FacturasImpresasNO_RECIBO: TIntegerField;
    FacturasImpresasPAGADOCXC: TFloatField;
    FacturasImpresasMESES: TIntegerField;
    FacturasImpresasDIAS: TIntegerField;
    FacturasImpresasPENDIENTE: TFloatField;
    FacturasImpresasESTADOPAGO: TWideStringField;
    FacturasImpresasDEVOLUCION: TFloatField;
    FacturasImpresasCONDICION_PAGO: TIntegerField;
    FacturasImpresasFECHAVENCIMIENTO: TDateField;
    FacturasImpresasCOMBO: TWideStringField;
    FacturasImpresasCOBRADO: TIntegerField;
    FacturasImpresasQUEES: TWideStringField;
    FacturasImpresasUSUARIOID: TIntegerField;
    FacturasImpresasCLIENTEID: TIntegerField;
    FacturasImpresasCONDICIONVENTA: TWideStringField;
    FacturasImpresasTIENDAID: TIntegerField;
    FacturasImpresasPINREFERIDO: TWideStringField;
    FacturasImpresasNC: TIntegerField;
    FacturasImpresasCODVEN: TIntegerField;
    FacturasImpresasCAJEROID: TIntegerField;
    FacturasImpresasNOMBRECLIENTE_PRN: TWideStringField;
    FacturasImpresasFECHA_FINAL: TDateField;
    FacturasImpresasINTERES_DIARIO: TFloatField;
    FacturasImpresasINTERES_ACUM: TFloatField;
    FacturasImpresasDIAS_TRANS: TIntegerField;
    FacturasImpresasFECHA_ULTIMO_PAGO: TDateField;
    FacturasImpresasDIAS_ATRASO: TIntegerField;
    FacturasImpresasINTERES_PAGADO: TFloatField;
    FacturasImpresasCAPITAL_PAGADO: TFloatField;
    FacturasImpresasDESC_CAPITAL: TFloatField;
    FacturasImpresasIDDR: TIntegerField;
    FacturasImpresasNOMBREDELDR: TWideStringField;
    FacturasImpresasCAJA: TWideStringField;
    FacturasImpresasNCF_NOMBRE: TWideStringField;
    FacturasImpresasMORA: TFloatField;
    FacturasImpresasNUMERO_FACTURA: TFloatField;
    FacturasImpresasBONOS: TFloatField;
    FacturasImpresasOBSERVACIONES: TWideMemoField;
    FacturasImpresasIDRUTA: TIntegerField;
    FacturasImpresasCAJAID: TIntegerField;
    FacturasImpresasTCREDITO: TFloatField;
    FacturasImpresasVEFECTIVA: TFloatField;
    FacturasImpresasIDTECNICO: TIntegerField;
    FacturasImpresasUBICACION: TWideStringField;
    FacturasImpresasPAGOXEFECTIVO: TFloatField;
    FacturasImpresasPAGOXCHEQUE: TFloatField;
    FacturasImpresasPAGOXTARJETA: TFloatField;
    FacturasImpresasPAGOXBONO: TFloatField;
    FacturasImpresasCLIENTENOMBRE: TWideStringField;
    FacturasImpresasNOMBRES_EMP: TWideStringField;
    FacturasImpresasDIR: TWideStringField;
    QRMA: TZReadOnlyQuery;
    QRMAID: TIntegerField;
    QRMANOORDEN: TIntegerField;
    QRMAFECHA_ENTRADA: TDateField;
    QRMAIDCLIENTE: TIntegerField;
    QRMAIDTECNICO: TIntegerField;
    QRMAHORAENTRADA: TTimeField;
    QRMANO_SERIAL: TWideStringField;
    QRMAIDTIPOEQUIPO: TIntegerField;
    QRMAIDMARCA: TIntegerField;
    QRMAFALLAEQUIPO: TWideMemoField;
    QRMAOBSERVACIONEQUIPO: TWideMemoField;
    QRMAOBSERVACIONTECNICA: TWideMemoField;
    QRMAFECHA_PROMETIDA: TDateField;
    QRMAESTADO: TWideStringField;
    QRMAMONTO: TFloatField;
    QRMANOMBRES: TWideStringField;
    QRMADIRECCION: TWideStringField;
    QRMATELEFONO: TWideStringField;
    QRMANOMBRES_EMP: TWideStringField;
    QRMATIPOEQUIPO: TWideStringField;
    DsQrma: TDataSource;
    UpRma: TZReadOnlyQuery;
    cxButton41: TcxButton;
    MSN: TBalloonHint;
    CostoMSN: TCurvyPanel;
    Label48: TLabel;
    CurvyPanel1: TCurvyPanel;
    Label49: TLabel;
    comisionCancelar: TZReadOnlyQuery;
    comisionCancelarID: TIntegerField;
    comisionCancelarID_EMP: TIntegerField;
    comisionCancelarID_FACT: TIntegerField;
    comisionCancelarMONTOSERVICIO: TFloatField;
    comisionCancelarMONTOCOMISION: TFloatField;
    comisionCancelarESTADO: TIntegerField;
    comisionCancelarFECHA: TDateField;
    FAntiguedad: TfrxDBDataset;
    Antiguedad: TZReadOnlyQuery;
    PrnOrden: TfrxReport;
    Ibullet: TcxImageList;
    IbqRArticulosCOMISION: TFloatField;
    QBalanceCreditoCliente: TZReadOnlyQuery;
    Almacenes1EXISTENCIA: TExtendedField;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TExtendedField;
    AntiguedadV0_30: TExtendedField;
    AntiguedadV31_60: TExtendedField;
    AntiguedadV61_90: TExtendedField;
    AntiguedadV91_120: TExtendedField;
    AntiguedadV120: TExtendedField;
    AntiguedadACTUAL: TExtendedField;
    QBalanceCreditoClienteBALANCE: TExtendedField;
    DetalleFacturasOP: TWideStringField;
    DetalleFacturasLINEA: TIntegerField;
    DetalleFacturasEXIST1: TSingleField;
    DetalleFacturasLEY: TFloatField;
    Qfraccionado: TZReadOnlyQuery;
    QfraccionadoID: TIntegerField;
    QfraccionadoCOD_ARTI: TIntegerField;
    QfraccionadoCANTI: TFloatField;
    QfraccionadoUNIDAD: TWideStringField;
    QfraccionadoCOD_PART: TFloatField;
    QfraccionadoID_UNIDAD: TIntegerField;
    QfraccionadoPRECIO1: TFloatField;
    QfraccionadoPRECIO2: TFloatField;
    QfraccionadoDESCRIPCION: TWideStringField;
    DBGrid1: TDBGrid;
    QTotales: TZReadOnlyQuery;
    QTotalesTOTAL: TExtendedField;
    QTotalesIMPUESTO: TExtendedField;
    QTotalesITBS: TExtendedField;
    QTotalesLEY: TExtendedField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    NumeroCodigo: TZQuery;
    NumeroCodigoGEN_ID: TLargeintField;
    ActualizaLinea: TZReadOnlyQuery;
    PrnCocina: TfrxReport;
    frxReport1: TfrxReport;
    cxCurrencyEdit2: TcxCurrencyEdit;
    qpreciosITBIS: TWideStringField;
    qpreciosTAZA_COMPRA: TFloatField;
    qpreciosPRECIO_C: TFloatField;
    Label50: TLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxButton46: TcxButton;
    PRECIOSPRECIO_C: TFloatField;
    IbqRArticulosPRECIO_C: TFloatField;
    master: TfrxDBDataset;
    detalle1: TfrxDBDataset;
    panel: TPanel;
    Qconsultar: TZReadOnlyQuery;
    config: TfrxDBDataset;
    IMPRIMEPEDIDO: TfrxReport;
    PrnCopia: TfrxReport;
    FrxSeries: TfrxDBDataset;
    txtMayor: TEdit;
    PRECIOSMAYOREO1: TFloatField;
    PRECIOSMAYOREO2: TFloatField;
    PRECIOSMAYOREO3: TFloatField;
    PRECIOSPRE1: TFloatField;
    PRECIOSPRE2: TFloatField;
    PRECIOSPRE3: TFloatField;
    PRECIOSAPLICARPORMAYOR: TWideStringField;
    pnlSolidaridad: TPanel;
    cxButton34: TcxButton;
    cxButton47: TcxButton;
    ActualizaDetalle: TZReadOnlyQuery;
    UCambiarPrecio: TZReadOnlyQuery;
    ActualizaDetalleMASTERID: TIntegerField;
    ActualizaDetalleARTICULOID: TIntegerField;
    ActualizaDetalleCANTIDAD: TExtendedField;
    ActualizaDetallePRECIO: TExtendedField;
    ActualizaDetalleITBS: TExtendedField;
    ActualizaDetalleTOTAL: TExtendedField;
    ActualizaDetalleITBS_ART: TWideStringField;
    ActualizaDetalleDEDUCIBLE_T: TSingleField;
    ActualizaDetalleTBSSS: TIntegerField;
    cxButton48: TcxButton;
    ActualizaDetalleSolidaridad: TZReadOnlyQuery;
    ActualizaDetalleSolidaridadMASTERID: TIntegerField;
    ActualizaDetalleSolidaridadARTICULOID: TIntegerField;
    ActualizaDetalleSolidaridadCANTIDAD: TExtendedField;
    ActualizaDetalleSolidaridadPRECIO: TExtendedField;
    ActualizaDetalleSolidaridadITBS: TExtendedField;
    ActualizaDetalleSolidaridadTOTAL: TExtendedField;
    ActualizaDetalleSolidaridadITBS_ART: TWideStringField;
    ActualizaDetalleSolidaridadDEDUCIBLE_T: TSingleField;
    ActualizaDetalleSolidaridadTBSSS: TIntegerField;
    Edit19: TEdit;
    pnlTop: TPanel;
    pnlBarTopDiv: TPanel;
    Panel17: TPanel;
    Panel20: TPanel;
    imgLogoTop: TImage;
    Panel21: TPanel;
    Panel22: TPanel;
    Label52: TLabel;
    Panel23: TPanel;
    Label53: TLabel;
    Label54: TLabel;
    Image2: TImage;
    Panel24: TPanel;
    barra1: TcxTextEdit;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    cxDBTextEdit4: TcxDBTextEdit;
    Panel4: TPanel;
    cxButton10: TSpeedButton;
    Panel28: TPanel;
    BtnHelp: TSpeedButton;
    Panel25: TPanel;
    cxButton1: TSpeedButton;
    Panel26: TPanel;
    cxButton29: TSpeedButton;
    Panel27: TPanel;
    cxButton39: TSpeedButton;
    Panel29: TPanel;
    cxButton21: TSpeedButton;
    lunidad: TcxTextEdit;
    Panel18: TPanel;
    Panel39: TPanel;
    Label2: TLabel;
    Panel40: TPanel;
    Label22: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxButton32: TcxButton;
    cxButton36: TcxButton;
    Memo1: TMemo;
    Label20: TLabel;
    Edit4: TEdit;
    cxButton20: TcxButton;
    Panel7: TPanel;
    cxButton37: TcxButton;
    BTSerial: TcxButton;
    cxButton14: TcxButton;
    t1: TcxTextEdit;
    t2: TEdit;
    t4: TcxCurrencyEdit;
    topcion: TcxTextEdit;
    Edit14: TEdit;
    Descc_t: TEdit;
    NCnumero: TEdit;
    calcular: TcxButton;
    Edit8: TEdit;
    Edit9: TEdit;
    alto: TcxTextEdit;
    ancho: TcxTextEdit;
    Edit20: TEdit;
    Edit12: TEdit;
    Edit15: TEdit;
    pnlCodeBar: TPanel;
    Panel53: TPanel;
    ChkPrecio: TcxCheckBox;
    t3: TcxTextEdit;
    pnl_Menu_Lateral: TPanel;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    Image4: TImage;
    pnlBarra: TPanel;
    Panel55: TPanel;
    BtnPrintConduce: TSpeedButton;
    Image7: TImage;
    Panel57: TPanel;
    cxButton11: TSpeedButton;
    cxButton9: TcxButton;

    Image10: TImage;
    Panel58: TPanel;
    cxButton5: TSpeedButton;
    Image11: TImage;
    Panel59: TPanel;
    B4: TSpeedButton;
    Image12: TImage;
    Panel60: TPanel;
    cxButton4: TSpeedButton;
    Image13: TImage;
    Panel61: TPanel;
    B1: TSpeedButton;
    Image14: TImage;
    Panel62: TPanel;
    Edit16: TEdit;
    Edit1: TEdit;
    linea: TEdit;
    Panel63: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    BTpedido: TSpeedButton;
    Image3: TImage;
    Panel41: TPanel;
    BtnConduce: TSpeedButton;
    Image9: TImage;
    barra: TEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1ITBS: TcxGridDBColumn;
    cxGrid1DBTableView1UNID: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1EX: TcxGridDBColumn;
    cxGrid1DBTableView1LIN: TcxGridDBColumn;
    IbqRArticulosUNIDADVENTA: TWideStringField;
    IbqRArticulosSERIE: TWideStringField;
    IbqRArticulosLOTE: TWideStringField;
    IbqRArticulosPERMITIRDESC: TWideStringField;
    IbqRArticulosIDIMPUESTO: TIntegerField;
    IbqRArticulosDESCPERMITIDO: TIntegerField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    PnlFactLeft: TPanel;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    Panel42: TPanel;
    cxButton28: TSpeedButton;
    Panel43: TPanel;
    cxButton40: TSpeedButton;
    Panel44: TPanel;
    OpCuando: TcxRadioGroup;
    Panel45: TPanel;
    Label5: TLabel;
    Panel46: TPanel;
    cxTextEdit2: TEdit;
    op10: TcxRadioGroup;
    Panel47: TPanel;
    cxButton17: TSpeedButton;
    Chkorinal: TcxCheckBox;
    pnlTotales: TPanel;
    pnlSubTotal: TPanel;
    Panel54: TPanel;
    Panel56: TPanel;
    panelright: TPanel;
    Ppagos: TPanel;
    Panel49: TPanel;
    cxButton44: TSpeedButton;
    Panel50: TPanel;
    cxButton18: TSpeedButton;
    Panel51: TPanel;
    SpeedButton5: TSpeedButton;
    Panel52: TPanel;
    cxButtom102: TSpeedButton;
    Panel48: TPanel;
    B3: TSpeedButton;
    Panel19: TPanel;
    Panel64: TPanel;
    B2: TSpeedButton;
    Panel65: TPanel;
    cerrar: TSpeedButton;
    PanelLTOP: TPanel;
    Panel14: TPanel;
    BTArticulos: TSpeedButton;
    Panel30: TPanel;
    cxButton12: TSpeedButton;
    Panel31: TPanel;
    BTborrar: TSpeedButton;
    Panel32: TPanel;
    cxButton45: TSpeedButton;
    EditCat: TEdit;
    FormaPago: TEdit;
    Panel34: TPanel;
    SpeedButton3: TSpeedButton;
    Panel36: TPanel;
    BTMayor: TSpeedButton;
    Panel5: TPanel;
    cxButton30: TSpeedButton;
    Panel6: TPanel;
    cxButton13: TSpeedButton;
    Panel9: TPanel;
    B6: TSpeedButton;
    Panel66: TPanel;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    Panel33: TPanel;
    BtDelivery: TSpeedButton;
    Image8: TImage;
    Panel15: TPanel;
    Panel16: TPanel;
    Label46: TLabel;
    Label45: TLabel;
    cxDBComboBox3: TcxDBComboBox;
    cxButton38: TcxButton;
    DBComboBox1: TDBComboBox;
    Panel35: TPanel;
    cxDBComboBox1: TcxDBComboBox;
    Label3: TLabel;
    Label26: TLabel;
    cxDBComboBox2: TcxDBComboBox;
    SHPropina: TToggleSwitch;
    pnlDescuento: TPanel;
    Panel68: TPanel;
    Panel67: TPanel;
    Label10: TLabel;
    Panel69: TPanel;
    edtDesc: TEdit;
    edtPorcentDesc: TEdit;
    QTotalesDESC: TExtendedField;
    edtITBAplicado: TEdit;
    Label15: TLabel;
    Panel70: TPanel;
    cxButton3: TSpeedButton;
    Panel71: TPanel;
    btnsalir: TSpeedButton;
    Panel72: TPanel;
    Image5: TImage;
    Panel73: TPanel;
    Panel74: TPanel;
    Label21: TLabel;
    Panel75: TPanel;
    Label23: TLabel;
    lblEstado: TLabel;
    DetalleFacturasDESC: TFloatField;
    qMantArt: TZReadOnlyQuery;
    qMantArtCAT: TWideStringField;
    qMantArtCOD_ART: TIntegerField;
    qMantArtCODIGOTXT: TWideStringField;
    qMantArtARTICULO: TWideStringField;
    qMantArtMODELO: TWideStringField;
    qMantArtMARCA: TWideStringField;
    qMantArtCOLOR: TWideStringField;
    qMantArtCOD_CAT: TIntegerField;
    qMantArtCOD_SERIE: TIntegerField;
    qMantArtCOD_ALM: TIntegerField;
    qMantArtCOSTO: TFloatField;
    qMantArtCOD_PROV1: TIntegerField;
    qMantArtEXISTENCIA1: TFloatField;
    qMantArtITBIS: TWideStringField;
    qMantArtABREVIADO: TWideStringField;
    qMantArtCOD_BARRA: TWideStringField;
    qMantArtCOD_UV: TIntegerField;
    qMantArtUSUARIOMOD: TIntegerField;
    qMantArtFECHA_MOD: TDateField;
    qMantArtPOLITICA: TWideStringField;
    qMantArtCOSTO_PR: TFloatField;
    qMantArtIMAGEN: TBlobField;
    qMantArtCLA_COSTO: TWideStringField;
    qMantArtCLA_PRECIO: TWideStringField;
    qMantArtPRECIO_A: TFloatField;
    qMantArtPRECIO_B: TFloatField;
    qMantArtPRECIO_D: TFloatField;
    qMantArtESTADO: TIntegerField;
    qMantArtEXTFOTO: TWideStringField;
    qMantArtDESCRIPCIONWEB: TWideMemoField;
    qMantArtPUBLICARWEB: TIntegerField;
    qMantArtCODIGOBARRA: TWideStringField;
    qMantArtEMPAQUE: TIntegerField;
    qMantArtCANT_EMPA: TFloatField;
    qMantArtCOD_PROV2: TIntegerField;
    qMantArtCOD_PROV3: TIntegerField;
    qMantArtREFERENCIA: TWideStringField;
    qMantArtOPCION_SABOR: TWideStringField;
    qMantArtSTOCK_MA: TFloatField;
    qMantArtSTOCK_M: TFloatField;
    qMantArtFACTOR: TFloatField;
    qMantArtTIPO_PRODUCTOS: TWideStringField;
    qMantArtFACTURABLE: TIntegerField;
    qMantArtSTOCK: TFloatField;
    qMantArtOPCIONES_BOLA: TWideStringField;
    qMantArtPARTICIONADO: TWideStringField;
    qMantArtCOMPUESTO: TWideStringField;
    qMantArtBENEFICIOS: TFloatField;
    qMantArtMONEDA: TWideStringField;
    qMantArtUNIDAD: TWideStringField;
    qMantArtTAZA_COMPRA: TFloatField;
    qMantArtFECHA_COMPRA: TDateField;
    qMantArtINTERES_ACUMULADO: TFloatField;
    qMantArtALMACEN: TIntegerField;
    qMantArtPERCIO_COPA: TFloatField;
    qMantArtCOMISION: TFloatField;
    qMantArtARTICULOS_OMO: TWideStringField;
    qMantArtCODIGOUNICO: TWideStringField;
    qMantArtEMPRESA: TWideStringField;
    qMantArtCONDICION: TWideStringField;
    qMantArtUTILIDAD2: TFloatField;
    qMantArtUTILIDAD3: TFloatField;
    qMantArtPRECIO_BRUTO1: TFloatField;
    qMantArtPRECIO_BRUTO2: TFloatField;
    qMantArtPRECIO_BRUTO3: TFloatField;
    qMantArtMAYOREO1: TFloatField;
    qMantArtMAYOREO2: TFloatField;
    qMantArtMAYOREO3: TFloatField;
    qMantArtDESCRIPCION: TWideMemoField;
    qMantArtCOSTOPROMENO: TFloatField;
    qMantArtTIENECOMPACTIBILIDAD: TWideStringField;
    qMantArtCOMPACTIBLECON: TIntegerField;
    qMantArtUBICACION: TWideStringField;
    qMantArtOBS: TIntegerField;
    qMantArtTIPOB: TWideStringField;
    qMantArtESTADOCONDICION: TWideStringField;
    qMantArtIDMONEDA: TIntegerField;
    qMantArtCOSTO_DOLLARS: TFloatField;
    qMantArtCODEQUIVALENCIA: TWideStringField;
    qMantArtDESC_EQUIVALENCIA: TWideStringField;
    qMantArtCANTEQUIVALENCA: TFloatField;
    qMantArtPRE1: TFloatField;
    qMantArtPRE2: TFloatField;
    qMantArtPRE3: TFloatField;
    qMantArtCOSP: TFloatField;
    qMantArtCOST: TFloatField;
    qMantArtPRECIO_C: TFloatField;
    qMantArtUTILIDAD4: TFloatField;
    qMantArtMAYOREO4: TFloatField;
    qMantArtPRECIO_BRUTO4: TFloatField;
    qMantArtUTILIDADSOBREITBS: TWideStringField;
    qMantArtAPLICARPORMAYOR: TWideStringField;
    qMantArtNOMBREABREVIADO: TWideStringField;
    qMantArtPRESENTACION: TWideStringField;
    qMantArtCAPACIDAD: TIntegerField;
    qMantArtMODIUSO: TWideStringField;
    qMantArtIDMARCA: TIntegerField;
    qMantArtDESCPERMITIDO: TIntegerField;
    qMantArtSUBCATEGORIA: TIntegerField;
    qMantArtSUSTANCIA: TIntegerField;
    qMantArtCLASIFICACION: TIntegerField;
    qMantArtINDICACION: TIntegerField;
    qMantArtUNIDADVENTA: TWideStringField;
    qMantArtUNIDADCOMPRA: TWideStringField;
    qMantArtSERIE: TWideStringField;
    qMantArtLOTE: TWideStringField;
    qMantArtPERMITIRDESC: TWideStringField;
    qMantArtIDIMPUESTO: TIntegerField;
    pnlEstado: TPanel;
    Panel76: TPanel;
    BtDelivey02: TSpeedButton;
    Panel77: TPanel;
    total: TcxDBCurrencyEdit;
    Label11: TLabel;
    Label8: TLabel;
    SubTotal: TcxDBCurrencyEdit;
    Panel79: TPanel;
    Panel80: TPanel;
    Panel81: TPanel;
    Panel82: TPanel;
    Panel38: TPanel;
    Label37: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Panel37: TPanel;
    Label27: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Panel78: TPanel;
    procedure RxDBComboBox2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    // procedure vi(DataSet: TDataSet);

    procedure cxButton10Click(Sender: TObject);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure t4Exit(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure t3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure t4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure t1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ç(Sender: TObject);
    procedure cxDBTextEdit6PropertiesChange(Sender: TObject);
    procedure cerrarClick(Sender: TObject);
    procedure calcularClick(Sender: TObject);
    procedure anchoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure altoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton6Click(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox2PropertiesChange(Sender: TObject);
    procedure cxDBTextEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure barraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PartiGridDBTableView1DblClick(Sender: TObject);
    procedure PartiGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nofraccional;
    procedure nofraccional_varios;
    procedure fraccional;
    procedure BTborrarClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxGrid7DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
    procedure cxGridDBTableView4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit13KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton17Click(Sender: TObject);
    procedure descKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton13Click(Sender: TObject);
    procedure Precio_variosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button4Click(Sender: TObject);
    procedure cxDBCalcEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBCalcEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBCalcEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBCalcEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label41Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure BtCantidadxprecioClick(Sender: TObject);
    procedure BTpedidoClick(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure BtBuscarPedidoClick(Sender: TObject);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);

    procedure BTTecnicoClick(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure cxButton28Click(Sender: TObject);
    procedure cxButton31Click(Sender: TObject);
    procedure Edit18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OpCuandoClick(Sender: TObject);
    procedure ChkPrecio1Click(Sender: TObject);
    procedure ImprimeCopia;
    procedure imprimeconduce;
    procedure calcdescuento;
    procedure cobrando;
    procedure barra1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit19Change(Sender: TObject);
    procedure Edit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdClaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1Column2CustomDrawCell
      (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxButton32Click(Sender: TObject);
    procedure Edit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton33Click(Sender: TObject);
    procedure tDesc1Change(Sender: TObject);
    procedure cxGrid1DBTableView1TOTALGetDataText
      (Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: string);
    procedure imprimirtikectCredito;
    procedure ImprimeCotiza;
    procedure ChkPrecioClick(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Memo2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid4DBTableView1DblClick(Sender: TObject);
    procedure CHKPropertiesChange(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure cxButton37Click(Sender: TObject);
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton38Click(Sender: TObject);
    procedure PrintCopia;
    procedure enviohold;
    procedure cxButton39Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton40Click(Sender: TObject);
    procedure adddetalle;
    procedure cxGrid9DBTableView1DblClick(Sender: TObject);
    procedure cxButton41Click(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTSerialClick(Sender: TObject);
    procedure BTArticulosClick(Sender: TObject);
    procedure pago;
    procedure Tcantidad;
    procedure permisos;
    procedure RebajaInventario;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Totales;
    procedure addFact;
    procedure enviarfactura;
    procedure cxGrid2DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SHPropinaClick(Sender: TObject);

    procedure P_fraccion;
    procedure P_ofertas;
    procedure AnularInv;
    Procedure Pcancelar;
    procedure cxButton45Click(Sender: TObject);
    procedure cxButton46Click(Sender: TObject);
    procedure cxDBCalcEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cambiarprecio;
    procedure cxButton34Click(Sender: TObject);
    procedure cxButton47Click(Sender: TObject);
    procedure cxButton48Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure sdsdsd32323Click(Sender: TObject);
    procedure BtnHelpClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8dfsssClick(Sender: TObject);
    procedure spExportarClick(Sender: TObject);
    procedure spExportar2Click(Sender: TObject);
    procedure SpeedButton233Click(Sender: TObject);
    procedure BTNotaC325Click(Sender: TObject);
    procedure cxButton42998Click(Sender: TObject);
    procedure SPPClick(Sender: TObject);
    procedure cxButton30Click(Sender: TObject);
    procedure loquejdClick(Sender: TObject);
    procedure lodkfkClick(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure Sp155Click(Sender: TObject);
    procedure SpeedButton5pppppppClick(Sender: TObject);
    procedure EOOOE(Sender: TObject);
    procedure SpeedButton599Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButtom102Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8ddddddClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BtnConduceClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure offMenu;
    procedure EliminarRow;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6dddClick(Sender: TObject);
    procedure SpeedButton6dddddddClick(Sender: TObject);
    procedure cxTextEdit2Change(Sender: TObject);
    procedure SpeedButton6ffffClick(Sender: TObject);
    procedure SpeedButton7dfffClick(Sender: TObject);
    procedure SpeedButton68888Click(Sender: TObject);
    procedure SpeedButton6eerrClick(Sender: TObject);
    procedure BtDeliveryClick(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure BtDelivey02Click(Sender: TObject);

    { Private declarations }
  public
    suma, itbs, descc: Currency;
    Nregistro: Integer;

    no_factpedido: Integer;
    tecnico: Integer;
    { Public declarations }
  end;

var
  FrmNFact_normal: TFrmNFact_normal;
  bExpandir: Boolean;

  aPrinter: tprinter; // necessario
  x, y: Integer; // necessario
  Count, Xpos, Ypos: Integer;

const
  MAX_RECS = 3;
  TAB1 = 1000;
  TAB2 = 2000;
  TAB3 = 3000;
  LEFT_MARGIN = 200;
  TOP_MARGIN = 200;
  LINE_SPACING = 150;

implementation

uses
  unit2, unit19, tools, Unit26, Unit21, Unit3, Unit31, Unit22, Unit47, Unit48,
  unit68,
  Unit74, Unit76, Unit80, Unit86, Unit87, Unit94, Unit104, Unit18, Unit106,
  Unit107, Unit91, Unit117, Unit120, Unit124, Unit118, UFindArticulos,
  UPagoSolidaridad, uBuscarArticulosMayor, UInicio, Unit13;
{$R *.dfm}

function Token(Sub: string; var S: string): string;
begin
  Result := '';
  while Length(S) > 0 do
  begin
    if AnsiSameText(Copy(S, 1, Length(Sub)), Sub) then
    begin
      Delete(S, 1, Length(Sub));
      break;
    end;
    Result := Result + Copy(S, 1, 1);
    Delete(S, 1, 1);
  end;
end;

function Relleno(text, Rell: string; Cant, posi: Integer): string;
var
  valor, x: Integer;
  dev, con: string;
begin
  con := '';
  valor := Length(text);
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
          if Cant = (valor + Length(con) + Length(con)) then
            dev := con + text + con
          else
          begin
            if Cant > (valor + Length(con) + Length(con)) then
              dev := con + text + con + Rell
            else
              dev := con + text +
                Copy(con, 0,
                (Length(con) - (Cant - (valor + Length(con) + Length(con)))));
          end;
        end;
    end;
  end
  else
    dev := text;
  Result := dev;
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
  valor := Length(text);
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
  Result := dev;
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
  Result := FALSE;
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
              while Length(Str) > 0 do
              begin
                if Copy(Str, 1, 1) = '\' then
                begin
                  if Uppercase(Copy(Str, 2, 1)) = 'X' then
                    Str[2] := '$';
                  if not TryStrToInt(Copy(Str, 2, 3), i) then
                    Exit;
                  B := Byte(i);
                  Delete(Str, 1, 3);
                end
                else
                  B := Byte(Str[1]);
                Delete(Str, 1, 1);
                WritePrinter(PrinterHandle, @B, 1, Escritos);
              end;
              Result := TRUE;
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
      Result := nCont;
      break;
    end;
  end;
  if lSearch = FALSE then
  begin
    ShowMessage('Impresora no encontrada.' + Impre + cNewLIne +
      'Se utilizará la predeterminda.');
    Result := -1
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
    Result := Texto;
  end;
end;

function CenterString(aStr: String; Len: Integer): String;
var
  posStr: Integer;
begin
  if Length(aStr) > Len then
    Result := Copy(aStr, 1, Len)
  else
  begin
    posStr := (Len - Length(aStr)) div 2;
    Result := Format('%*s', [Len, aStr + Format('%-*s', [posStr, ''])]);
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
    Result := Cadena
  else
    Result := Copy(Cadena, 1, Posicion - Length(Separador));
end;

function GetToken(Cadena, Separador: String; Token: Integer): String;
overload
var
  Posicion: Integer;
begin
  while Token > 1 do
  begin
    Delete(Cadena, 1, Pos(Separador, Cadena) + Length(Separador) - 1);
    Dec(Token);
  end;
  Posicion := Pos(Separador, Cadena);
  if Posicion = 0 then
    Result := Cadena
  else
    Result := Copy(Cadena, 1, Posicion - 1);
end;

function GetTokenCount(Cadena: string; Separador: char): Integer; overload;
var
  Posicion: Integer;
begin
  Posicion := Pos(Separador, Cadena);
  Result := 1;

  if Cadena <> '' then
  begin
    if Posicion <> 0 then
    begin
      while Posicion <> 0 do
      begin
        Delete(Cadena, 1, Posicion);
        Posicion := Pos(Separador, Cadena);
        Inc(Result);
      end;
    end;
  end
  else
    Result := 0;
end;

function GetTokenCount(Cadena, Separador: String): Integer; overload;
var
  Posicion: Integer;
begin
  if Cadena <> '' then
  begin
    Posicion := Pos(Separador, Cadena);
    Result := 1;
    while Posicion <> 0 do
    begin
      Inc(Result);
      Delete(Cadena, 1, Posicion + Length(Separador) - 1);
      Posicion := Pos(Separador, Cadena);
    end;
  end
  else
    Result := 0;
end;

procedure TFrmNFact_normal.adddetalle;
VAR
  suma: Currency;
  itbs: Currency;
  Stexto: string;

  comision: double;
begin

  with numero_detallegen do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
    open;
  end;

  datos.Zdetalle.append;
  datos.ZdetalleNO_FACT.Value := numero_detallegenGEN_ID.Value;
  datos.ZdetalleCANTIDAD.Value := DetalleFacturasCANTIDAD.Value;
  datos.ZdetalleANCHO.Value := DetalleFacturasANCHO.Value;
  datos.ZdetalleALTO.Value := DetalleFacturasALTO.Value;
  datos.ZdetalleUNID.Value := DetalleFacturasUNID.Value;
  datos.ZdetalleIDTECNICO.Value := DetalleFacturasIDTECNICO.Value;
  datos.ZdetalleIDALMACEN.Value := DetalleFacturasIDALMACEN.Value;
  datos.ZdetalleITBS.Value := DetalleFacturasITBS.Value;
  datos.ZdetalleCOMBO.Value := DetalleFacturasCOMBO.Value;
  datos.ZdetalleTITULOPRN.Value := DetalleFacturasTITULOPRN.Value;
  datos.ZdetalleARTICULO.Value := DetalleFacturasARTICULO.Value;
  datos.ZdetalleNO_FACT1.Value := DetalleFacturasNO_FACT1.Value;
  datos.Zdetallecod_art.Value := DetalleFacturasCOD_ART.Value;
  datos.ZdetalleARTICULOID.Value := DetalleFacturasARTICULOID.Value;
  datos.ZdetalleITBS_ART.Value := DetalleFacturasITBS_ART.Value;
  datos.ZdetalleEX.Value := DetalleFacturasEX.Value;
  datos.ZdetallePRECIO.Value := DetalleFacturasPRECIO.Value;
  datos.ZdetalleIMPUESTO.Value := DetalleFacturasIMPUESTO.Value;
  datos.ZdetalleITBS.Value := DetalleFacturasITBS.Value;
  datos.ZdetalleTOTAL.Value := DetalleFacturasTOTAL.Value;
  // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

end;

procedure TFrmNFact_normal.imprimirtikectCredito;
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
  SIZEFONT, FONTBOLD, FONTNORMAL, pcant: string;

begin

  fechaFA := Now;
  horaFA := Time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  // VerificaCampos(Sender);

  // Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

  // Se nenhum campo está em branco, grava o cupom
  // GravaCupons(Sender);

  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try

      IniFile := ChangeFileExt(Application.ExeName, '.ini');

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
      pcant := ReadString_Ini(IniFile, 'IMPRESION', 'pcant', '');
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
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;


  // longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    INICIARPRINT);
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('EMPRESA').Value,
    StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('DIRECCION').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('TEL. :' + datos.ZUconfiguracion.FieldByName('TELEFONO').Value
    + '/  RNC:' + datos.ZUconfiguracion.FieldByName('RNC').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // --
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('FACTURA CREDITO', StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.FbqMaster_Fact.FieldByName('NCF_NOMBRE')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('NCF:' + datos.FbqMaster_Fact.FieldByName('NCF')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('VENTA A CREDITO'), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('---------------------------------------', StrToInt(longitud), 0));
  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '             ' +
      'HORA: ' + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '    ' + 'HORA: '
      + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('No Fact: ' + datos.FbqMaster_Fact.FieldByName
    ('numero_factura').asstring), StrToInt(longitud), 0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------------',
      StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));

  if datos.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('RNC CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
      ('RNC_CLIENTE').Value), StrToInt(longitud), 0));
  end;

  if datos.FbqMaster_Factdireccion.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('DIRECCION  :' + datos.FbqMaster_Fact.FieldByName
      ('DIRECCION').Value), StrToInt(longitud), 0));
  end;
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('---------------------------------------', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('PRODUCTO...............................', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('CANT', StrToInt(campol), 0) + espacios('PRECIO',
    StrToInt(campoC2), 0) + espacios('ITBIS', StrToInt(campoC2), 0) +
    espacios('TOTAL', StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------------',
      StrToInt(longitud), 0));
  end;

  with datos.Zdetalle do
  begin
    First;
    while not Eof do
    begin
      if datos.ZdetalleITBS.Value > 0.00 then
      begin
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName
          ('TITULOPRN').asstring), 0, 36), StrToInt(longitud), 0));

      end
      else
      begin
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(MyTextReplace(datos.Zdetalle.FieldByName('EX')
          .asstring), StrToInt(campol), 0) +
          espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName('TITULOPRN')
          .asstring), 0, 36), StrToInt(longitud), 0));

      end;
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if datos.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('Precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      END;

      Next;
    end;
  end;

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------------',
      StrToInt(longitud), 0));
  end;

  if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('MONTO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('descuento').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('POGXITBS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not datos.FbqMaster_Fact.FieldByName('ABONO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ABONO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('ABONO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ABONO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not datos.FbqMaster_Fact.FieldByName('PENDIENTE').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('PENDIENTE:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('PENDIENTE').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('PENDIENTE:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('ITEMS :   ' + CUANTOSCOUNT.text, StrToInt(longitud), 0));

  if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('BONOS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('BONOS')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),
      StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('Fecha de Vencimiento:' +
    datos.FbqMaster_Fact.FieldByName('fecha_final').asstring),
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.FbqMaster_Fact.FieldByName('observaciones').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('' + datos.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + datos.FbqMaster_Factcajero.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('----------------------------------', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
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
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    TEXTCORTE);

end;

procedure TFrmNFact_normal.addFact;
var
  cero: string;
  suma: Currency;
  itbs: Currency;
  Stexto: string;
begin

  FactExistencia := 0.00;
  FactExistencia2 := 0.00;
  NumeroFactura := 0;

  opmaster.Enabled := TRUE;

  with numero do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
    open;
  end;

  abrirfactura := 'SI';
  pnlCodeBar.Visible := TRUE;
  datos.FbqMaster_Fact.open;

  Zqusuario.open;

  IbqClientes.open;

  FrmNFact_normal.Panel7.Enabled := TRUE;
  FrmNFact_normal.PanelLTOP.Enabled := TRUE;
  datos.FbqMaster_Fact.Insert;
  datos.FbqMaster_FactNO_FACT.Value := numeroGEN_ID.Value;
  datos.FbqMaster_FactNC.Value := 1;
  datos.FbqMaster_FactNO_AUTORIZA_NCF.Value := 0;

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

  if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
  begin
    SHPropina.IsOn;
  end;

  NumeroFactura := datos.FbqMaster_FactNO_FACT.Value;

  datos.FbqMaster_FactNO_FACT1.Value := cero +
    intTostr(datos.FbqMaster_FactNO_FACT.Value);
  Edit5.text := datos.FbqMaster_FactNO_FACT1.Value;
  // RxDBComboBox1.ItemIndex := 0;
  // FrmNFact.RxDBComboBox2.ItemIndex := 1;
  cxDBComboBox1.ItemIndex := 1;

  // RxDBComboBox1.Enabled := false;
  // FrmNFact.RxDBComboBox2.Enabled := true;
  cxDBComboBox1.Enabled := TRUE;
  // edit12.Clear;
  // datos.FbqMaster_FactCODVEN.Value     := AsignaUsuario;

  with IbqClientes do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from cliente a');
    // sql.Add('inner join ruta b On a.ruta_id = b.id');
    // sql.Add('inner join vendedores c On b.idvendedor = c.id');
    sql.Add('where a.codigo = 1');
    open;
  end;

  datos.FbqMaster_FactCLIENTEID.Value := IbqClientesCODIGO.Value;
  datos.FbqMaster_FactCLIENTENOMBRE.Value := IbqClientesNOMBRES.Value;
  datos.FbqMaster_FactCONDICIONVENTA.Value := IbqClientesCONDICION.Value;
  datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value :=
    datos.FbqMaster_FactCLIENTENOMBRE.Value;
  datos.FbqMaster_FactCAJAID.Value := datos.ZUconfiguracionCAJAID.Value;
  datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
  datos.FbqMaster_FactCODVEN.Value := AsignaUsuario;

  with Zqusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.Add('where a.usuarioId =:pp');
    params[0].Value := AsignaUsuario;
    open;
  end;

  // showmessage(''+IntToStr(AsignaUsuario));

  datos.FbqMaster_FactNOMBRES_EMP.Value := ZqusuarioNOMBRES_EMP.Value;
  // LTipoUsuario.Caption := ZqusuarioCARGO.Value;
  datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
  datos.FbqMaster_FactFECHA_FAC.Value := Now();
  datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  // datos.FbqMaster_Factcaja.Value := datos.ConsultaCajaCAJA_NOMBRE.Value;

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


  // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
  // datos.FbqMaster_Factcomprobante.Value := 'NO';

  // opdetalle.Enabled := true;
  if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
    barra.SetFocus;
  end
  else
  begin
    barra1.SetFocus;

  end;

  FrmNFact_normal.pnlEstado.Color := clWhite;
  FrmNFact_normal.pnlEstado.Caption := 'Factura Estandar';
  FrmNFact_normal.pnlEstado.Font.Color := clblack;


  // FrmNFact_normal.Panel11.Color := clBtnFace;
  // FrmNFact_normal.LbModo.Font.Color := clBlack;
  // FrmNFact_normal.LbModo.Caption := 'Nueva Factura';
  //
  // FrmNFact_normal.lbRotulo.font.Color := clBlack;

  B1.Enabled := FALSE;
  B2.Enabled := TRUE;
  B2.Caption := 'Cancelar Factura';
  cxButton11.Enabled := TRUE;
  B4.Enabled := TRUE;

  permisos;

  cxButton4.Enabled := FALSE;
  cxButton5.Enabled := FALSE;
  cxButton14.Enabled := TRUE;
  BTpedido.Enabled := TRUE;

  if BtDelivery.Visible = TRUE then
  BEGIN
    BtDelivery.Enabled := TRUE;
    BtDelivey02.Enabled := TRUE;

  END;

  B6.Enabled := TRUE;
  Edit3.text := 'NUEVO';
  opmaster.Enabled := TRUE;
  // opdetalle.Enabled := true;
  BTborrar.Enabled := TRUE;
  B6.Enabled := TRUE;
  cxButton12.Enabled := TRUE;
  cxButton13.Enabled := TRUE;
  BTSerial.Enabled := TRUE;
  BTMayor.Enabled := TRUE;
  B3.Enabled := TRUE;
  if datos.ZUconfiguracionIMP_CANT.Value = 'Si' then
  begin
    BTMayor.Enabled := TRUE;
  end;

  BtnPrintConduce.Enabled := TRUE;

  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo, c.unidad, b.itbis, b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.no_fact =  0');
    open;
  end;

  // FrmNfact.cxButton5.Enabled := true;
  cerrar.Enabled := FALSE;

end;

procedure TFrmNFact_normal.altoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    calcular.SetFocus;
  end;

end;

procedure TFrmNFact_normal.anchoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    // alto.SetFocus;
  end;

end;

procedure TFrmNFact_normal.AnularInv;
begin

  datos.ZInventario.open;

  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
    sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with datos.Zdetalle do
  begin
    open;
    while not Eof do
    begin

      if datos.ZdetalleCOMBO.Value = 'UNI' then
      BEGIN

        with datos.MantArt do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
          sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
          sql.Add('left join tb_moneda c On a.idmoneda = c.id');
          sql.Add('where a.cod_art =:oo');
          params[0].Value := datos.ZdetalleARTICULOID.Value;
          open;
        end;

        if datos.MantArtOPCIONES_BOLA.Value = 'Si' then
        begin

          with numeroinventario do
          begin
            close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            open;
          end;

          datos.ZInventario.Insert;
          datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          datos.ZInventarioFECHA.Value := Now();
          datos.ZInventarioIDTIENDA.Value := AsignaTienda;
          datos.ZInventarioCOD_ART.Value :=
            StrToInt(datos.MantArtCODEQUIVALENCIA.Value);
          datos.ZInventarioCONCEPTOID.Value := 7;
          datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;

          if datos.ZdetalleIDALMACEN.Value = datos.ZUconfiguracionALMACENRMA.Value
          then
          begin
            datos.ZInventarioCOD_ALM.Value :=
              datos.ZUconfiguracionALMACENRMA.Value;
          end;

          datos.ZInventarioCOD_ALM.Value := 1;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZdetalleCANTIDAD.Value *
            datos.MantArtCANTEQUIVALENCA.Value;
        end
        else
        begin

          with numeroinventario do
          begin
            close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            open;
          end;

          datos.ZInventario.Insert;
          datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          datos.ZInventarioFECHA.Value := Now();
          datos.ZInventarioIDTIENDA.Value := AsignaTienda;
          datos.ZInventarioCOD_ART.Value :=
            StrToInt(datos.Zdetallecod_art.text);
          datos.ZInventarioCONCEPTOID.Value := 7;
          datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;

          if datos.ZdetalleIDALMACEN.Value = datos.ZUconfiguracionALMACENRMA.Value
          then
          begin
            datos.ZInventarioCOD_ALM.Value :=
              datos.ZUconfiguracionALMACENRMA.Value;

          end;

          datos.ZInventarioCOD_ALM.Value := 1;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZdetalleCANTIDAD.Value;
        end;
      END;

      if datos.ZdetalleCOMBO.Value = 'FRA' then
      BEGIN

        WITH Qfraccionado do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.descripcion from particionado a');
          sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
          sql.Add('where a.cod_arti =:pp');
          sql.Add('and a.unidad =:pp2');
          params[0].Value := datos.ZdetalleARTICULOID.Value;
          params[1].Value := datos.ZdetalleUNID.Value;
          open;
        end;

        with datos.MantArt do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
          sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
          sql.Add('left join tb_moneda c On a.idmoneda = c.id');
          sql.Add('where a.cod_art =:oo');
          params[0].Value := datos.ZdetalleARTICULOID.Value;
          open;
        end;

        with numeroinventario do
        begin
          close;
          sql.Clear;
          sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
          open;
        end;

        datos.ZInventario.Insert;
        datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
        datos.ZInventarioFECHA.Value := Now();
        datos.ZInventarioIDTIENDA.Value := AsignaTienda;
        datos.ZInventarioCOD_ART.Value := StrToInt(datos.Zdetallecod_art.text);
        datos.ZInventarioCONCEPTOID.Value := 7;
        datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;

        if datos.ZdetalleIDALMACEN.Value = datos.ZUconfiguracionALMACENRMA.Value
        then
        begin
          datos.ZInventarioCOD_ALM.Value :=
            datos.ZUconfiguracionALMACENRMA.Value;

        end;

        datos.ZInventarioCOD_ALM.Value := 1;
        datos.ZInventarioSALIDA.Value := 0.00;
        datos.ZInventarioENTRADA.Value :=
          (datos.ZdetalleCANTIDAD.Value * QfraccionadoCOD_PART.Value);
      end;

      if datos.ZdetalleCOMBO.Value = 'OFE' then
      BEGIN

        WITH datos.ZCombo do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
          sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
          sql.Add('where a.MACOMBODI =:pp');
          params[0].Value := datos.ZdetalleARTICULOID.Value;
          open;

          First;
          while not Eof do
          begin

            with numeroinventario do
            begin
              close;
              sql.Clear;
              sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
              open;
            end;

            datos.ZInventario.Insert;
            datos.ZInventarioMINVENTARIOID.Value :=
              numeroinventarioGEN_ID.Value;
            datos.ZInventarioFECHA.Value := Now();
            datos.ZInventarioIDTIENDA.Value := AsignaTienda;
            datos.ZInventarioCOD_ART.Value := datos.ZComboCOD_ART.Value;
            datos.ZInventarioCONCEPTOID.Value := 7;
            datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;

            if datos.ZdetalleIDALMACEN.Value = datos.ZUconfiguracionALMACENRMA.Value
            then
            begin
              datos.ZInventarioCOD_ALM.Value :=
                datos.ZUconfiguracionALMACENRMA.Value;

            end;

            datos.ZInventarioCOD_ALM.Value := 1;
            datos.ZInventarioSALIDA.Value := 0.00;
            datos.ZInventarioENTRADA.Value := datos.ZComboCANTIDAD.Value;

            Next;
          end;
        end;
      END;

      Next;
    end;

  end;

  with IbqClientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where codigo =:codigo');
    params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
    open;
  end;


  // ****** Actualiza Balance de Credito Cliente *-****

  with UpCredito do
  begin
    close;
    sql.Clear;
    sql.Add('update cliente set Musados =:Musado, balance =:balance ');
    sql.Add('where codigo =:codigo');
    params[0].Value := IbqClientesMUSADOS.Value -
      datos.FbqMaster_FactPENDIENTE.Value;
    params[1].Value := IbqClientesCREDITOLIMITE.Value -
      (IbqClientesMUSADOS.Value - datos.FbqMaster_FactPENDIENTE.Value);
    params[2].Value := IbqClientesCODIGO.Value;
    ExecSQL;
  end;

  // **************************************************

  with Anular do
  begin
    close;
    sql.Clear;
    sql.Add('update master_fact set condicion =:op, SITUACION =:OP2');
    sql.Add('where no_fact =:pp');
    params[0].Value := 'ANULADA';
    params[1].Value := 'ANULADA';
    params[2].Value := datos.FbqMaster_FactNO_FACT.Value;
    ExecSQL;
  end;

  datos.ZInventario.ApplyUpdates;

  datos.Data.Commit;

  datos.ZInventario.close;

end;

procedure TFrmNFact_normal.B2Click(Sender: TObject);
begin

  If datos.fbqMaster_factsituacion.text = 'HOLD' then
  BEGIN

    if FAutorizacion.ShowModal = mrOk then
    begin

      if datos.FbqMaster_Fact.Active = TRUE then
      begin

        if Application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          datos.FbqMaster_Fact.Edit;
          if datos.fbqMaster_factsituacion.text <> 'PEDIDO' then
          BEGIN
            datos.fbqMaster_factsituacion.text := 'CANCELADA';
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

          if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value = 1 then
          begin

            FSolidaridadPago.Edit1.Clear;
            FSolidaridadPago.Edit2.Clear;
            FSolidaridadPago.Edit3.Clear;

          end;

          with datos.Zdetalle do
          begin
            First;
            while not Eof do
            begin
              if datos.ZdetalleTOTAL.Value < 0.00 then
              begin

                with UpdateNC do
                begin
                  close;
                  sql.Clear;
                  sql.Add('update mnoc set afecta_inv = 1');
                  sql.Add('where mncid =:opp');
                  params[0].Value := StrToInt(datos.ZdetalleNO_FACT1.Value);
                  ExecSQL;
                end;

              end;

              if datos.ZdetalleBARRA.Value <> '' then
              begin
                with UpRma do
                begin
                  close;
                  sql.Clear;
                  sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                  params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                  ExecSQL;
                end;
              end;
              Next;
            end;
          end;

          Pcancelar;

        end;

      end;
    end;

  END
  ELSE
  begin
    if datos.FbqMaster_Fact.Active = TRUE then
    begin

      if Application.MessageBox('Esta seguro de cancelar este documento',
        'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin
        datos.FbqMaster_Fact.Edit;
        if datos.fbqMaster_factsituacion.text <> 'PEDIDO' then
        BEGIN
          datos.fbqMaster_factsituacion.text := 'CANCELADA';
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

        with datos.Zdetalle do
        begin
          First;
          while not Eof do
          begin
            if datos.ZdetalleTOTAL.Value < 0.00 then
            begin

              with UpdateNC do
              begin
                close;
                sql.Clear;
                sql.Add('update mnoc set afecta_inv = 1');
                sql.Add('where mncid =:opp');
                params[0].Value := StrToInt(datos.ZdetalleNO_FACT1.Value);
                ExecSQL;
              end;

            end;

            if datos.ZdetalleBARRA.Value <> '' then
            begin
              with UpRma do
              begin
                close;
                sql.Clear;
                sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                ExecSQL;
              end;
            end;
            Next;
          end;
        end;

        t1.Clear;
        // t2.Clear;
        t3.Clear;
        t4.Clear;
        opmaster.Enabled := FALSE;

        datos.FbqMaster_Fact.ApplyUpdates;
        datos.Zdetalle.ApplyUpdates;
        datos.Data.Commit;

        datos.ZInventario.close;
        datos.FbqMaster_Fact.close;
        datos.Zdetalle.close;

        // BtBuscarPedido.Enabled := true;
        BTpedido.Enabled := TRUE;

        cerrar.Enabled := TRUE;
        Edit5.Clear;
        cxButton14.Enabled := TRUE;
        cxButton4.Enabled := TRUE;
        cxButton37.Enabled := TRUE;

        B1.Enabled := TRUE;
        B2.Enabled := FALSE;
        B3.Enabled := FALSE;
        B6.Enabled := FALSE;
        B4.Enabled := FALSE;
        BTMayor.Enabled := FALSE;
        BtnPrintConduce.Enabled := FALSE;
        cxButton5.Enabled := TRUE;
        cxButton11.Enabled := FALSE;
        Panel12.Visible := FALSE;
        PanelDesc.Visible := FALSE;
        // OpBuscarCLiente.Visible := false;

        BTborrar.Enabled := FALSE;
        B6.Enabled := FALSE;
        cxButton12.Enabled := FALSE;
        cxButton13.Enabled := FALSE;
        // BuscarArticulos.Visible := false;
        IbqClientes.close;
        Panel16.Visible := FALSE;
        PanelLTOP.Enabled := FALSE;
        BTSerial.Enabled := FALSE;
        Descc_t.Clear;


        // FrmNFact_normal.Panel11.Color := clBtnFace;
        // FrmNFact_normal.LbModo.font.Color := clBlack;
        // FrmNFact_normal.LbModo.Caption := 'Nueva Factura';
        // FrmNFact_normal.lbRotulo.font.Color := clBlack;

        Edit4.Clear;
        if Panel13.Visible = TRUE then
        begin
          Memo2.Clear;
          CurrencyEdit1.Value := 0.00;
          Panel13.Visible := FALSE;
        end;

      end;

    end;

  end;

end;

procedure TFrmNFact_normal.barra1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  iResult: Integer;
  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;
  Cadenaleida: string;
begin

  SeparadaPorComas := barra1.text;

  //
  for n := 1 to GetTokenCount(SeparadaPorComas, '+') do
  begin
    if n = 1 then
    begin
      CANTV := GetToken(SeparadaPorComas, '+', n);
    end;

    if n = 2 then
    begin
      CODIGOV := GetToken(SeparadaPorComas, '+', n);
    end;

  end;

  if CODIGOV = '' then
  begin
    codoriginal := CANTV;
    cantoriginal := '1';
  end;

  if CODIGOV <> '' then
  begin
    codoriginal := CODIGOV;
    cantoriginal := CANTV;
  end;

  if CANTV = '' then
  begin
    cantoriginal := '1';
  end;


  // codoriginal := barra1.Text;
  // cantoriginal := '1';

  if Key = vk_return then
  begin

    if barra1.text <> '' then
    begin

      Cadenaleida := codoriginal;
      StringReplace(Cadenaleida, Chr(39), '-', [rfReplaceAll]);
      datos.FbCategorias.open;

      with IbqRArticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select a.unidad,a.precio_a,a.codigobarra, a.comision, a.precio_b, a.precio_d, precio_c, a.codigobarra, a.referencia,a.ubicacion,a.cod_art,a.articulo,a.cod_cat, a.OBS,');
        sql.Add('a.politica,a.modelo,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.Add('where a.codigobarra =:PPP');
        sql.Add('group by a.unidad,a.precio_a,a.codigobarra,a.comision, a.precio_b,a.precio_d, precio_c, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
        sql.Add('a.marca,a.codigotxt,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
        params[0].Value := StringReplace(Cadenaleida, Chr(39), '-',
          [rfReplaceAll]);
        open;
      end;

      with Almacenes1 do
      begin
        close;
        sql.Clear;
        sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
        sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
        sql.Add('left join almacenes c On a.cod_alm = c.id');
        sql.Add('and b.politica <> ''Servicio''');
        sql.Add('where a.cod_art =:opp');
        sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
        params[0].Value := IbqRArticulosCOD_ART.Value;
        open;
      end;

      if IbqRArticulos.RecordCount = 0 then
      begin
        ShowMessage('**Articulo no Existe**');
      end
      else
      begin

        if datos.ZUconfiguracionEXISTENCIAFACT.Value = 2 then
        begin

          if Almacenes1EXISTENCIA.Value > 0 then
          begin
            // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
            Edit11.text := '1.00';

            t1.text := IbqRArticulosCODIGOTXT.Value;
            t2.text := IbqRArticulosARTICULO.Value;

            Descc_t.text := IbqRArticulosCOMISION.text;

            Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);
            EditCat.text := IbqRArticulosCOD_CAT.text;
            if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value <> 1 then
            begin
              if IbqClientesCOLOR.Value = 'PRECIO 1' then
              BEGIN
                t4.Value := IbqRArticulosPRECIO_A.Value;
              END;

              if IbqClientesCOLOR.Value = 'PRECIO 2' then
              BEGIN
                t4.Value := IbqRArticulosPRECIO_B.Value;
              END;

              if IbqClientesCOLOR.Value = 'PRECIO 3' then
              BEGIN
                t4.Value := IbqRArticulosPRECIO_D.Value;
              END;
            end
            else
            begin
              t4.Value := IbqRArticulosPRECIO_C.Value;
            end;
            //

            lunidad.text := IbqRArticulosUNIDADVENTA.Value;

            t3.text := cantoriginal;

            linea.text := 'ART';

            if IbqRArticulosPOLITICA.Value = 'Unitario' then
            begin
              topcion.text := 'UNI';
            end;

            if IbqRArticulosPOLITICA.Value = 'servicio' then
            begin
              topcion.text := 'SER';
            end;

            if IbqRArticulosPOLITICA.Value = 'fraccional' then
            begin
              topcion.text := 'FRA';
            end;

            cxButton9.Click;
            datos.FbCategorias.close;
            // buscararticulos.Visible := false;

            if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
            begin
              barra.SetFocus;
              barra.Clear;
              // edit19.Clear;
            end
            else
            begin
              barra1.Clear;
              barra1.SetFocus;
              // edit19.Clear;
            end;
            IbqRArticulos.close;

          end
          else if Almacenes1EXISTENCIA.Value <= 0 then
          begin
            MsgInformacion(' Este producto no tiene existencia ')

          end;

        end
        else
        begin
          Edit11.text := '1.00';

          t1.text := IbqRArticulosCODIGOTXT.Value;
          t2.text := IbqRArticulosARTICULO.Value;

          Descc_t.text := IbqRArticulosCOMISION.text;

          Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);
          EditCat.text := IbqRArticulosCOD_CAT.text;

          if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value <> 1 then
          begin
            if IbqClientesCOLOR.Value = 'PRECIO 1' then
            BEGIN
              t4.Value := IbqRArticulosPRECIO_A.Value;
            END;

            if IbqClientesCOLOR.Value = 'PRECIO 2' then
            BEGIN
              t4.Value := IbqRArticulosPRECIO_B.Value;
            END;

            if IbqClientesCOLOR.Value = 'PRECIO 3' then
            BEGIN
              t4.Value := IbqRArticulosPRECIO_D.Value;
            END;
          end
          else
          begin
            t4.Value := IbqRArticulosPRECIO_C.Value;
          end;

          lunidad.text := IbqRArticulosUNIDADVENTA.Value;
          t3.text := cantoriginal;

          linea.text := 'ART';

          if IbqRArticulosPOLITICA.Value = 'Unitario' then
          begin
            topcion.text := 'UNI';
          end;

          if IbqRArticulosPOLITICA.Value = 'servicio' then
          begin
            topcion.text := 'SER';
          end;

          if IbqRArticulosPOLITICA.Value = 'fraccional' then
          begin
            topcion.text := 'FRA';
          end;

          cxButton9.Click;
          datos.FbCategorias.close;
          // buscararticulos.Visible := false;

          if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
          begin
            barra.SetFocus;
            barra.Clear;
            /// edit19.Clear;
          end
          else
          begin
            barra1.Clear;
            barra1.SetFocus;
            // edit19.Clear;
          end;
          IbqRArticulos.close;

        end;

        /// ////////////////////////////////////////////////////////////////
        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
        begin
          barra.SetFocus;
          barra.Clear;
          // edit19.Clear;
        end
        else
        begin
          barra1.Clear;
          barra1.SetFocus;
          // edit19.Clear;
        end;
        IbqRArticulos.close;
        barra1.Clear;
        barra1.SetFocus;
      end;

    end;
  end;

end;

procedure TFrmNFact_normal.barraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  iResult: Integer;

  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;

begin
  if Key = vk_return then
  begin

    SeparadaPorComas := barra.text;

    try
      for n := 1 to GetTokenCount(SeparadaPorComas, '+') do
      begin
        if n = 1 then
        begin
          CANTV := GetToken(SeparadaPorComas, '+', n);
        end;

        if n = 2 then
        begin
          CODIGOV := GetToken(SeparadaPorComas, '+', n);
        end;

      end;

      if CODIGOV = '' then
      begin
        codoriginal := CANTV;
        cantoriginal := '1';
      end;

      if CODIGOV <> '' then
      begin
        codoriginal := CODIGOV;
        cantoriginal := CANTV;
      end;

      if CANTV = '' then
      begin
        cantoriginal := '1';
      end;

    finally

    end;

    if TryStrToInt(codoriginal[1], iResult) then
    begin
      datos.FbCategorias.open;

      with IbqRArticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select a.unidad,a.precio_a, a.codigobarra,a.comision, precio_c, a.precio_b,precio_d,a.codigobarra, a.referencia,a.ubicacion,a.cod_art,upper(a.articulo) articulo,a.cod_cat, a.OBS,');
        sql.Add('a.politica,a.modelo,a.marca,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.Add('left join minventario b On a.cod_art = b.cod_art');
        sql.Add('where a.codigobarra like ' + #39 + '%' + codoriginal +
          '%' + #39);
        sql.Add('group by a.unidad,a.precio_a,a.codigobarra, a.precio_b, precio_c, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
        sql.Add('a.marca,a.codigotxt,a.itbis,a.taza_compra,   a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
        open;
      end;

      if IbqRArticulos.RecordCount = 0 then
      begin
        ShowMessage('**Articulo no Existe**');
      end
      else
      begin
        if datos.FbqMaster_FactROTULO.Value = 'FACTURACION' then
        begin

          // **** fACTURACION ****

          if IbqRArticulosPOLITICA.Value = 'Compuesto' then
          begin

            t1.text := IbqRArticulosCODIGOTXT.Value;
            t2.text := IbqRArticulosARTICULO.Value;
            t4.Value := IbqRArticulosPRECIO_A.Value;
            Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);

            topcion.text := 'COM';
            cxButton9.Enabled := TRUE;

          end
          ELSE if IbqRArticulosPOLITICA.Value <> 'Compuesto' then
          BEGIN

            if (datos.ZUconfiguracionEXISTENCIAFACT.Value = 2) then
            begin
              ShowMessage('** Este Articulo no tiene existencia **');

            end
            else
            begin

              if IbqRArticulosPOLITICA.Value = 'fraccional' then
              begin

                with Fraccionado do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
                  sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
                  sql.Add('where a.cod_arti =:pp');
                  params[0].Value := IbqRArticulosCOD_ART.Value;
                  open;
                end;

                Fraccionado.First;
                PartiGrid.Visible := TRUE;
                PartiGrid.SetFocus;
              end;

              t1.text := IbqRArticulosCODIGOTXT.Value;
              t2.text := IbqRArticulosARTICULO.Value;
              Edit8.text := IbqRArticulosITBIS.Value;
              t4.Value := IbqRArticulosPRECIO_A.Value;
              Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);
              // FrmNFact_normal.LUnid.ItemIndex := -1;
              // FrmNFact_normal.LUnid.ItemIndex := 0;
              t3.text := cantoriginal;
              if IbqRArticulosPOLITICA.Value = 'Unitario' then
              begin

                topcion.text := 'UNI';
              end;

              if IbqRArticulosPOLITICA.Value = 'servicio' then
              begin
                topcion.text := 'SER';
              end;
              // topcion.text := 'ART';
              cxButton9.Enabled := TRUE;

              if IbqRArticulosPOLITICA.Value <> 'fraccional' then
              begin
                cxButton9.Click;
              end;

            end;
          END;

          // **** fIN

        end;

      end;

      barra.Clear;

    end

    /// //////  Buscar sin codigo de Barra //////
    else
    begin

      FrmFindArticulos.Edit1.text := '';
      FrmFindArticulos.ShowModal;
      datos.FbCategorias.open;

      with IbqRArticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select a.unidad,a.precio_a, a.codigobarra,a.precio_b, precio_c, precio_d,a.codigobarra, a.comision, a.referencia,a.ubicacion,a.cod_art,a.articulo,a.cod_cat, a.OBS,');
        sql.Add('a.politica,a.modelo,a.marca,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.Add('left join minventario b On a.cod_art = b.cod_art');
        sql.Add('where a.articulo like ' + #39 + '%' + codoriginal + '%' + #39);
        sql.Add('group by a.unidad,a.precio_a, a.codigobarra,a.precio_b, precio_c, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
        sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');

        open;
      end;



      // cxgrid6.setfocus;

    end;
  end;
end;

procedure TFrmNFact_normal.cobrando;
begin
  if total.Value = 0.00 then
  begin
    ShowMessage('Este Conduce no Esta Completa');
  end
  else
  begin
    if datos.ZUconfiguracionTIPO_FACTURACION.Value = 2 then
    begin

      enviarfactura;

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

          enviarfactura;

        end;
      end;
    end;
  end;
end;

procedure TFrmNFact_normal.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    Panel13.Visible := FALSE;
  end;
end;

procedure TFrmNFact_normal.cxButton10Click(Sender: TObject);
begin
  if FrmConsultaCliente = nil then
  begin
    FrmConsultaCliente := tFrmConsultaCliente.create(self);
    FrmConsultaCliente.Edit2.text := 'FACT';
    FrmConsultaCliente.IbqClientes.open;
    FrmConsultaCliente.ShowModal;

  end;

end;

procedure TFrmNFact_normal.cxButton13Click(Sender: TObject);
begin

  cambiarprecio;

end;

procedure TFrmNFact_normal.cxButton14Click(Sender: TObject);
begin
  Panel8.Visible := TRUE;
  memo.SetFocus;
end;

procedure TFrmNFact_normal.cxButton16Click(Sender: TObject);
begin
  memo.Clear;
  Panel8.Visible := FALSE;

end;

procedure TFrmNFact_normal.cxButton17Click(Sender: TObject);
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
  // prueba
  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try
      IniFile := ChangeFileExt(Application.ExeName, '.ini');

      NombreImpresoraTicke := ReadString_Ini(IniFile, 'IMPRESION',
        'NombreImpresoraTicket', '');
      NombreImpresoraNormal := ReadString_Ini(IniFile, 'IMPRESION',
        'NombreImpresoraNormal', '');
      Tipoimpresion := ReadString_Ini(IniFile, 'IMPRESION',
        'TipoImpresion', '');
    except
      on E: Exception do
      begin
        MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13 +
          '**** ' + E.Message + '****'#13 +
          'Esto provoca que no se pueda iniciar,' +
          'Si el problema persiste, llamar al soporte');
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;

  fechaFA := Now;
  horaFA := Time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := FacturasImpresasNO_FACT.Value;
    open;
  end;

  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with datos.Series do
  begin
    close;
    sql.Clear;
    sql.Add('select * from man_series where IDDETALLE =:opp');
    params[0].Value := datos.ZdetalleNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    close;
    sql.Clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if op10.ItemIndex = 1 then
  BEGIN

    if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin

      cInf := datos.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeCopia' + '.fr3';
      imprimem.LoadFromFile(cInf);

    END;

    if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
    begin
      if Chkorinal.Checked = TRUE then
      begin
        imprimem.variables['titulos'] := quotedstr('FACTURA');
      end
      else
      begin
        imprimem.variables['titulos'] := quotedstr('COPIA FACTURA');
      end;

      imprimem.variables['cajero'] := quotedstr(Edit2.text);
      MEN_PIE := datos.ZUconfiguracionMensaje_pie1.Value;
      imprimem.variables['mensaje1'] := quotedstr(MEN_PIE);

      // ShowMessage(''+datos.FbqMaster_FactNOMBRECLIENTE_PRN.Text);
      imprimem.PrepareReport(TRUE);
      imprimem.ShowPreparedReport;

      datos.ZInventario.close;
      datos.FbqMaster_Fact.close;
      datos.Zdetalle.close;

      // panel11.Visible := false;
      cerrar.Enabled := TRUE;
      Edit5.Clear;

      B1.Enabled := TRUE;
      B2.Enabled := FALSE;
      B3.Enabled := FALSE;
      B6.Enabled := FALSE;
      B4.Enabled := FALSE;
      cxButton5.Enabled := TRUE;
      cxButton11.Enabled := FALSE;
    END;
    if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
    begin
      with Antiguedad do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT a.clienteid,');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date  )<0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,');
        sql.Add('sum(IIF( (DATEDIFF(DAY, a.fecha_fac, current_date )>=0 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=30) OR a.fecha_fac is null,(a.pendiente),0)) AS V0_30 ,');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=31 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=60, (a.pendiente),0)) AS V31_60,');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=61 AND DATEDIFF( DAY, a.fecha_fac,current_date )<=90, (a.pendiente),0)) AS V61_90, ');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=91 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=120, (a.pendiente),0)) AS V91_120,');
        sql.Add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120,');

        sql.Add('(sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) +');
        sql.Add('sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fechavencimiento is null,(a.pendiente),0)) +');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendiente),0)) +');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendiente),0))  +');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pendiente),0)) +');
        sql.Add('sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,(a.pendiente),0))');
        sql.Add(') as actual');

        sql.Add('from master_fact a');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        sql.Add('group by a.clienteid ');
        params[0].Value := 'IMPRESA';
        params[1].Value := 'ACTIVA';
        params[2].Value := 'FACTURACION';
        params[3].Value := datos.FbqMaster_FactCLIENTEID.Value;
        params[4].Value := 'CREDITO';
        open;
      end;

      if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
      begin
        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\FacturaGrandeCopia_c' + '.fr3';
        ImprimEMC.LoadFromFile(cInf);
      END;

      if Chkorinal.Checked = TRUE then
      begin
        ImprimEMC.variables['titulos'] := quotedstr('FACTURA');
      end
      else
      begin
        ImprimEMC.variables['titulos'] := quotedstr('COPIA FACTURA');
      end;
      ImprimEMC.variables['cajero'] := quotedstr(Edit2.text);
      MEN_PIE := datos.ZUconfiguracionMensaje_pie1.Value;
      ImprimEMC.variables['mensaje1'] := quotedstr(MEN_PIE);
      ImprimEMC.PrepareReport(TRUE);
      ImprimEMC.ShowPreparedReport;

      datos.ZInventario.close;
      datos.FbqMaster_Fact.close;
      datos.Zdetalle.close;

      // panel11.Visible := false;
      cerrar.Enabled := TRUE;
      Edit5.Clear;

      B1.Enabled := TRUE;
      B2.Enabled := FALSE;
      B3.Enabled := FALSE;
      B6.Enabled := FALSE;
      B4.Enabled := FALSE;
      cxButton5.Enabled := TRUE;
      cxButton11.Enabled := FALSE;

      MEN_PIE := datos.ZUconfiguracionMensaje_pie2.Value;
      ImprimEMC.variables['mensaje1'] := quotedstr(MEN_PIE);
    end;

  END;

  if op10.ItemIndex = 0 then
  BEGIN

    if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
    begin
      // ShowMessage(''+Tipoimpresion);
      if Tipoimpresion = 'D' then
      begin
        // ShowMessage('');
        PrintCopia;
      end
      else
      begin

        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\FacturaTicketCopia' + '.fr3';
        // Showmessage(''+CinF);
        PrnCopia.LoadFromFile(cInf);
        PrnCopia.variables['titulos'] := quotedstr('COPIA FACTURA');
        PrnCopia.variables['cajero'] := quotedstr(Edit2.text);
        MEN_PIE := datos.ZUconfiguracionMensaje_pie1.Value;
        PrnCopia.variables['mensaje1'] := quotedstr(MEN_PIE);
        PrnCopia.PrepareReport(TRUE);
        PrnCopia.print;
        // end;
      end;

      if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
      begin
        if Tipoimpresion = 'D' then
        begin
          PrintCopia;
        end
        else
        begin

          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicketCopia' + '.fr3';
          // Showmessage(''+CinF);
          PrnCopia.LoadFromFile(cInf);
          PrnCopia.variables['titulos'] := quotedstr('COPIA FACTURA');
          PrnCopia.variables['cajero'] := quotedstr(Edit2.text);
          MEN_PIE := datos.ZUconfiguracionMensaje_pie2.Value;
          PrnCopia.variables['mensaje1'] := quotedstr(MEN_PIE);
          PrnCopia.PrepareReport(TRUE);
          PrnCopia.print;
        end;
      end;

      // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

      datos.ZInventario.close;
      datos.FbqMaster_Fact.close;
      datos.Zdetalle.close;

      // panel11.Visible := false;
      cerrar.Enabled := TRUE;
      Edit5.Clear;

      B1.Enabled := TRUE;
      B2.Enabled := FALSE;
      B3.Enabled := FALSE;
      B6.Enabled := FALSE;
      B4.Enabled := FALSE;
      cxButton5.Enabled := TRUE;
      cxButton11.Enabled := FALSE;

    END;
  END;

end;

procedure TFrmNFact_normal.BtCantidadxprecioClick(Sender: TObject);
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
  datos.Zdetalle.Edit;
  if datos.ZdetalleITBS_ART.Value = 'S' then
  begin
    datos.ZdetalleCANTIDAD.Value :=
      (StrToFloat(t3.text) / ((datos.ZdetalleTOTAL.Value /
      datos.ZdetalleCANTIDAD.Value)));

    datos.ZdetallePRECIO.Value := t4.Value / 1.18;
    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;
    datos.ZdetalleITBS.Value :=
      ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value)) *
      (datos.ZUconfiguracionITBIS.Value / 100);
    datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
      datos.ZdetalleITBS.Value;
    datos.ZdetalleANCHO.Value :=
      (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
      datos.ZdetalleCANTIDAD.Value;

  end
  else
  begin

    datos.ZdetalleCANTIDAD.Value :=
      (StrToFloat(t3.text) / ((datos.ZdetalleTOTAL.Value /
      datos.ZdetalleCANTIDAD.Value)));
    datos.ZdetalleITBS_ART.Value := 'N';
    datos.ZdetalleEX.Value := 'E';
    /// datos.ZdetallePRECIO.Value   := precio_c;
    datos.ZdetalleITBS.Value := 0.00;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
      datos.ZdetallePRECIO.Value;
    datos.ZdetalleANCHO.Value :=
      (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
      datos.ZdetalleCANTIDAD.Value;

  end;

  datos.Zdetalle.Post;
  Totales;

  // datos.FbqMaster_Fact.Edit;
  // datos.FbqMaster_Factdescuento.Value := descc;
  // datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
  // begin
  // datos.FbqMaster_FactMONTO.Value := suma;
  //
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
  // end else begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
  // end;
  //
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
  // begin
  // datos.FbqMaster_FactMONTO.Value := suma - itbs;
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
  // end else begin
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
  // end;
  //
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
  // begin
  //
  // datos.FbqMaster_FactMONTO.Value := suma - itbs;
  // datos.FbqMaster_Factdescuento.Value := descc;
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  //
  // if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
  // begin
  //
  // if SHPropina.IsOn = TRUE then
  // begin
  // datos.FbqMaster_FactLEYPROPINA.Value := Round( datos.FbqMaster_FactMONTO.Value * 0.10);
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs + datos.fbqmaster_factleypropina.Value;
  // end else begin
  // datos.FbqMaster_FactLEYPROPINA.Value :=0.00;
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs + datos.fbqmaster_factleypropina.Value;
  // end;
  //
  // end else begin
  // datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
  // end;
  //
  //
  // end else begin
  // if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
  // begin
  // if SHPropina.IsOn = TRUE then
  // begin
  // datos.FbqMaster_FactLEYPROPINA.Value := Round((datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) * 0.10);
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs +datos.fbqmaster_factleypropina.Value;
  // end ELSE begin
  // datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs +datos.fbqmaster_factleypropina.Value;
  // end;
  // end else begin
  // datos.FbqMaster_FactLEYPROPINA.Value :=0.00;
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
  // end;
  // end;
  //
  //
  // end;

  t1.Clear;
  t2.Clear;
  t3.Clear;
  PanelCantidad.Visible := FALSE;
  t4.Clear;
  ancho.Clear;
  Edit9.Clear;
  alto.Clear;
  Edit8.Clear;
  topcion.Clear;
  cxButton9.Enabled := FALSE;
  ChkPrecio.Checked := FALSE;
  t3.Enabled := FALSE;
  if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
    barra.SetFocus;
  end
  else
  begin
    barra1.SetFocus;
  end;
  calcular.Enabled := FALSE;

  // if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
  // begin
  // try
  // IniFile := ChangeFileExt(Application.ExeName,'.ini');
  //
  // NombreImpresoraTicke := ReadString_Ini(IniFile,'IMPRESION', 'NombreImpresoraTicket','');
  // NombreImpresoraNormal := ReadString_Ini(IniFile,'IMPRESION', 'NombreImpresoraNormal','');
  // Tipoimpresion := ReadString_Ini(IniFile,'IMPRESION', 'TipoImpresion','');
  // except
  // on E: Exception do
  // begin
  // MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13+
  // '**** '+E.Message+'****'#13+
  // 'Esto provoca que no se pueda iniciar,'+
  // 'Si el problema persiste, llamar al soporte');
  // Application.Terminate;
  // end;
  // end;
  // end
  // else begin
  // MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13+
  // #9'La aplicacion cargara la base de datos local');
  // end;


  //
  // fechafa := Now;
  // horafa := Time;
  // Cursor:= crHourGlass;
  // cont:= 1;
  // numpag := 1;
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
  // sql.Add('where a.no_fact =:op1');
  // params[0].Value := facturasimpresasno_fact.Value;
  // open;
  // end;
  //
  // with datos.Zdetalle do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra from detailfact a');
  // sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
  // sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
  // sql.Add('where a.masterid =:ppp');
  // params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
  // open;
  // end;
  //
  // with CUANTOS do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select COUNT(NO_FACT)from detailfact');
  // sql.Add('where masterid =:ppp');
  // params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
  // open;
  // end;
  //
  //
  // if OP10.ItemIndex = 1 then BEGIN
  //
  // if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
  // begin
  // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeCopia'+'.fr3';
  // ///  Showmessage(''+CinF);
  // imprimeM.LoadFromFile(cInf);
  // END;
  // if datos.FbqMaster_Facttipo.Value ='Contado' then
  // begin
  // if Chkorinal.Checked = true then begin
  // imprimeM.variables['titulos']  :=quotedstr('FACTURA');
  // end else begin
  // imprimeM.variables['titulos']  :=quotedstr('COPIA FACTURA');
  // end;
  //
  //
  // imprimeM.variables['cajero']   :=quotedstr(edit2.text);
  // men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
  // imprimeM.variables['mensaje1'] :=quotedstr(men_pie);
  // imprimeM.PrepareReport(true);
  // imprimeM.ShowPreparedReport;
  //
  //
  // datos.ZInventario.Close;
  // DATOS.FbqMaster_Fact.Close;
  // DATOS.Zdetalle.Close;
  //
  // //  panel11.Visible := false;
  // cerrar.Enabled := true;
  // edit5.clear;
  //
  // b1.Enabled := true;
  // b2.Enabled := false;
  // b3.Enabled := false;
  // b6.Enabled := false;
  // b4.Enabled := false;
  // cxButton5.Enabled := true;
  // cxButton11.Enabled := false;
  // END;
  // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
  // begin
  // with Antiguedad do
  // begin
  // close;
  // SQL.Clear;
  // sql.Add('SELECT a.clienteid,');
  // sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date  )<0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,');
  // sql.add('sum(IIF( (DATEDIFF(DAY, a.fecha_fac, current_date )>=0 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=30) OR a.fecha_fac is null,(a.pendiente),0)) AS V0_30 ,');
  // sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=31 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=60, (a.pendiente),0)) AS V31_60,');
  // sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=61 AND DATEDIFF( DAY, a.fecha_fac,current_date )<=90, (a.pendiente),0)) AS V61_90, ');
  // sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=91 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=120, (a.pendiente),0)) AS V91_120,');
  // sql.add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120,');
  //
  // sql.Add('(sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) +');
  // sql.add('sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fechavencimiento is null,(a.pendiente),0)) +');
  // sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendiente),0)) +');
  // sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendiente),0))  +');
  // sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pendiente),0)) +');
  // sql.add('sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,(a.pendiente),0))');
  // sql.add(') as actual');
  //
  //
  // sql.add('from master_fact a');
  // sql.add('where a.situacion  =:opcion2');
  // sql.add('and a.condicion    =:OPCION4');
  // sql.Add('AND A.ROTULO       =:OPCION5');
  // sql.Add('and a.clienteid    =:opcion66');
  // sql.Add('and a.tipo         =:tipo1');
  // sql.Add('and a.quees <>''SALDADA''');
  // sql.add('group by a.clienteid ');
  // Params[0].Value := 'IMPRESA';
  // Params[1].Value := 'ACTIVA';
  // Params[2].Value := 'FACTURACION';
  // Params[3].Value := datos.FbqMaster_Factclienteid.Value;
  // Params[4].Value := 'CREDITO';
  // open;
  // end;
  //
  //
  // if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
  // begin
  // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeCopia_c'+'.fr3';
  // //  Showmessage(''+CinF);
  // imprimeMC.LoadFromFile(cInf);
  // END;
  //
  // if Chkorinal.Checked = true then begin
  // imprimeMC.variables['titulos']  :=quotedstr('FACTURA');
  // end else begin
  // imprimeMC.variables['titulos']  :=quotedstr('COPIA FACTURA');
  // end;
  // imprimeMC.variables['cajero']   :=quotedstr(edit2.text);
  // men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
  // imprimeMC.variables['mensaje1'] :=quotedstr(men_pie);
  // imprimeMC.PrepareReport(true);
  // imprimeMC.ShowPreparedReport;
  //
  //
  // datos.ZInventario.Close;
  // DATOS.FbqMaster_Fact.Close;
  // DATOS.Zdetalle.Close;
  //
  // //  panel11.Visible := false;
  // cerrar.Enabled := true;
  // edit5.clear;
  //
  // b1.Enabled := true;
  // b2.Enabled := false;
  // b3.Enabled := false;
  // b6.Enabled := false;
  // b4.Enabled := false;
  // cxButton5.Enabled := true;
  // cxButton11.Enabled := false;
  //
  // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
  // imprimeMC.variables['mensaje1'] :=quotedstr(men_pie);
  // end;
  //
  //
  //
  // END;
  //
  //
  // if OP10.ItemIndex = 0 then
  // BEGIN
  //
  //
  // if datos.FbqMaster_Facttipo.Value ='Contado' then
  // begin
  // // ShowMessage(''+Tipoimpresion);
  // if Tipoimpresion = 'D' then
  // begin
  // //     ShowMessage('');
  // PrintCopia;
  // end else begin
  //
  //
  // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketCopia'+'.fr3';
  // //  Showmessage(''+CinF);
  // PrnCopia.LoadFromFile(cInf);
  // PrnCopia.variables['titulos']  :=quotedstr('COPIA FACTURA');
  // PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
  // men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
  // PrnCopia.variables['mensaje1'] :=quotedstr(men_pie);
  // PrnCopia.PrepareReport(true);
  // PrnCopia.print;
  // end;
  // end;
  //
  // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
  // begin
  // if Tipoimpresion = 'D' then
  // begin
  // imprimirtikectCredito;
  // end else begin
  //
  // //  cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketCopia'+'.fr3';
  // //  Showmessage(''+CinF);
  // //     PrnCopia.LoadFromFile(cInf);
  // PrnCopia.variables['titulos']  :=quotedstr('COPIA FACTURA');
  // PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
  // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
  // PrnCopia.variables['mensaje1'] :=quotedstr(men_pie);
  // PrnCopia.PrepareReport(true);
  // PrnCopia.PRINT;
  // end;
  // end;
  //
  // //recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);
  //
  //
  //
  // datos.ZInventario.Close;
  // DATOS.FbqMaster_Fact.Close;
  // DATOS.Zdetalle.Close;
  //
  // /// panel11.Visible := false;
  // cerrar.Enabled := true;
  // edit5.clear;
  //
  // b1.Enabled := true;
  // b2.Enabled := false;
  // b3.Enabled := false;
  // b6.Enabled := false;
  // b4.Enabled := false;
  // cxButton5.Enabled := true;
  // cxButton11.Enabled := false;
  //
  // END;
  //
  //

end;

procedure TFrmNFact_normal.cxButton19Click(Sender: TObject);
var
  cont, numpag, i: Integer;
  arq: textfile;
  fechaFA: tdate;
  horaFA: ttime;
  canfra: double;
  cero1: string;
  nume: Integer;

  r: TRect;
  longitud, campoD, campoC1, campoC2, campol, campof: string;
  DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2: string;
  PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, MEN_PIE: string;
begin
  if total.Value = 0.00 then
  begin
    ShowMessage('Este Pedido no Esta Completo');
  end
  else
  begin

    datos.FbqMaster_Fact.Edit;
    datos.fbqMaster_factsituacion.text := 'PEDIDO';
    datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
    datos.FbqMaster_FactROTULO.text := 'PEDIDO';
    datos.FbqMaster_Factterminal.text := 'FACTURACION';
    datos.FbqMaster_FactABONO.Value := 0.00;
    datos.FbqMaster_FactPENDIENTE.Value := datos.FbqMaster_FactMONTOPAGO.Value;
    datos.FbqMaster_Factdireccion.Value := IbqClientesDIRECCION.Value;

    if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
    begin
      datos.FbqMaster_Factquees.Value := 'NO';
    end;

    if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
    begin
      datos.FbqMaster_Factquees.Value := 'PENDIENTE';
    end;

    if datos.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
    begin
      try
        datos.FbqMaster_Fact.Edit;
        datos.FbqMaster_FactRNC_CLIENTE.Value := IbqClientesCEDULA.Value;

        with datos.ncf do
        begin
          close;
          sql.Clear;
          sql.Add('select * from ncf');
          sql.Add('where tipo =:tipo');

          if datos.FbqMaster_FactNOMBREDELDR.Value = 'Fiscal' then
          begin
            params[0].Value := 'FISCAL';
            Edit3.text := 'VALIDO PARA CREDITO FINAL'
          end;

          if datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental' then
          begin
            params[0].Value := 'GOB';
            Edit3.text := 'VALIDO PARA CONSUMO GUBERNAMENTAL'
          end;

          if datos.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
          begin
            params[0].Value := 'FINAL';
            Edit3.text := 'VALIDO PARA CONSUMIDOR FINAL'
          end;

          open;
        end;

        nume := datos.ncfDESDE.Value + datos.ncfUSO.Value;

        if nume >= 1 then
        begin
          cero1 := '0000';
        end;

        if nume >= 10 then
        begin
          cero1 := '000';
        end;

        if nume >= 100 then
        begin
          cero1 := '00';
        end;

        if nume >= 1000 then
        begin
          cero1 := '0';
        end;

        if nume >= 10000 then
        begin
          cero1 := '0';
        end;

        datos.FbqMaster_Fact.Edit;
        datos.FbqMaster_FactNCF.Value := datos.ncfNUNTEXT.Value + cero1 +
          intTostr(nume);
        datos.FbqMaster_FactNCF_NOMBRE.Value := Edit3.text;
        datos.ncf.Edit;
        datos.ncfUSO.Value := datos.ncfUSO.Value + 1;
        datos.ncf.ApplyUpdates;

      finally

      end;
    end;
    //
    // datos.ZInventario.Open;
    //
    // with datos.Zdetalle do
    // begin
    // open;
    // while not eof do
    // begin
    // canfra := 0;
    //
    //
    // with datos.MantArt do
    // begin
    // close;
    // sql.Clear;
    // sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
    // sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    // sql.Add('inner join tb_moneda c On a.idmoneda = c.id');
    // sql.Add('where a.cod_art =:oo');
    // params[0].Value :=  datos.Zdetallearticuloid.value;
    // open;
    // end;
    //
    //
    // if datos.ZdetalleCOMBO.Value ='FRA' then
    // BEGIN
    /// /                         WITH qfraccionado do
    /// /                          begin
    /// /                               close;
    /// /                               sql.Clear;
    /// /                               sql.Add('select a.*, b.descripcion from particionado a');
    /// /                               sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
    /// /                               sql.Add('where a.cod_arti =:pp');
    /// /                               sql.Add('and a.unidad =:pp2');
    /// /                               params[0].Value := datos.ZdetalleARTICULOID.Value;
    /// /                               params[1].Value := datos.ZdetalleUNID.Value;
    /// /                               open;
    /// /                          end;
    /// /
    /// /                      canfra := (datos.ZdetalleCANTIDAD.Value/qfraccionadocod_part.Value);
    // datos.MantArt.Edit;
    // datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value - canfra;
    // datos.MantArt.ApplyUpdates;
    //
    // END else begin
    // datos.MantArt.Edit;
    // datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value - datos.ZdetalleCANTIDAD.Value;
    // datos.MantArt.ApplyUpdates;
    // end;
    //
    //
    // with numeroinventario do
    // begin
    // close;
    // sql.Clear;
    // sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
    // open;
    // end;
    //
    //
    // datos.ZInventario.Insert;
    // datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
    // datos.ZInventarioFECHA.Value          := now();
    // datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
    // datos.ZInventarioCOD_ART.Value        := StrToInt(datos.ZdetalleCOD_ART.text);
    // datos.ZInventarioCONCEPTOID.Value     := 9;
    // datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
    //
    // if datos.ZdetalleCOMBO.Value ='FRA' then
    // BEGIN
    // //    datos.ZInventarioSALIDA.Value         := (datos.ZdetalleCANTIDAD.Value/qfraccionadocod_part.Value);
    // END else begin
    // datos.ZInventarioSALIDA.Value         := datos.ZdetalleCANTIDAD.Value;
    // end;
    //
    // datos.ZInventarioENTRADA.Value        := 0.00;
    // next;
    // end;
    //
    //
    // datos.ZInventario.ApplyUpdates;
    //
    // end;

    datos.FbqMaster_Fact.ApplyUpdates;
    datos.Zdetalle.ApplyUpdates;
    datos.Data.Commit;

    datos.ZInventario.close;
    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;

    /// ////////////////////////////////// Impresion ///////////////////

    if cxRadioGroup1.ItemIndex = 0 then
    begin
      fechaFA := Now;
      horaFA := Time;
      Cursor := crHourGlass;
      cont := 1;
      numpag := 1;

      with datos.FbqMaster_Fact do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
        sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
        sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
        sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
        sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
        sql.Add('where a.no_fact =:op1');
        params[0].Value := no_factpedido;
        open;
      end;

      with datos.Zdetalle do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
        sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
        sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
        sql.Add('where a.masterid =:ppp');
        params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
        open;
      end;

      with CUANTOS do
      begin
        close;
        sql.Clear;
        sql.Add('select COUNT(NO_FACT)from detailfact');
        sql.Add('where masterid =:ppp');
        params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
        open;
      end;

      { with dcombo do
        begin
        close;
        sql.Clear;
        sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
        sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
        sql.Add('where a.macomboid =:ppl');
        params[0].Value := datos.ZdetalleARTICULOID.Value;
        open;
        end;
      }

      if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
      begin
        try
          IniFile := ChangeFileExt(Application.ExeName, '.ini');

          longitud := ReadString_Ini(IniFile, 'IMPRESION', 'longitud', '');
          campol := ReadString_Ini(IniFile, 'IMPRESION', 'campoL', '');
          campoC1 := ReadString_Ini(IniFile, 'IMPRESION', 'campoC1', '');
          campoC2 := ReadString_Ini(IniFile, 'IMPRESION', 'campoC2', '');
          campoD := ReadString_Ini(IniFile, 'IMPRESION', 'campoD', '');
          campof := ReadString_Ini(IniFile, 'IMPRESION', 'campoF', '');
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

        except
          on E: Exception do
          begin
            MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13
              + '**** ' + E.Message + '****'#13 +
              'Esto provoca que no se pueda iniciar,' +
              'Si el problema persiste, llamar al soporte');
            Application.Terminate;
          end;
        end;
      end
      else
      begin
        MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
          + #9'La aplicacion cargara la base de datos local');
      end;

      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        datos.ZUconfiguracion.FieldByName('TEXINICIAR').Value);
      // WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
      // WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        CenterString(datos.ZUconfiguracion.FieldByName('EMPRESA').Value,
        StrToInt(longitud)));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        CenterString(datos.ZUconfiguracion.FieldByName('DIRECCION').Value,
        StrToInt(longitud)));
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        CenterString('TEL. :' + datos.ZUconfiguracion.FieldByName('TELEFONO')
        .Value + '/  RNC:' + datos.ZUconfiguracion.FieldByName('RNC').Value,
        StrToInt(longitud)));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('', StrToInt(longitud), 0));

      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('C O P I A',StrToInt(longitud)));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        CenterString(MyTextReplace(datos.FbqMaster_Fact.FieldByName
        ('NCF_NOMBRE').asstring), StrToInt(longitud)));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        CenterString(MyTextReplace('NCF:' + datos.FbqMaster_Fact.FieldByName
        ('NCF').asstring), StrToInt(longitud)));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        CenterString(MyTextReplace('P E D I D O'), StrToInt(longitud)));

      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('', StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '    ' +
        'HORA: ' + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios(MyTextReplace('No Fact: ' + datos.FbqMaster_Fact.FieldByName
        ('numero_factura').asstring), StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('---------------------------------------',
        StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios(MyTextReplace('CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
        ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios(' ', StrToInt(longitud), 0));
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('DESCRIPCION', StrToInt(campol), 0) + espacios('CANT',
        StrToInt(campoC1), 0) + espacios('PRECIO', StrToInt(campoC2), 0) +
        espacios('VALOR', StrToInt(campoD), 0) + espacios('',
        StrToInt(campof), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('-------------------------------------',
        StrToInt(longitud), 0));

      with datos.Zdetalle do
      begin
        First;
        while not Eof do
        begin

          WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
            .Value, espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName
            ('ARTICULO').asstring), 1, StrToInt(longitud)),
            StrToInt(longitud), 0));
          // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
          // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

          if datos.ZdetalleCANTIDAD.Value > 1.00 then
          begin

            WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
              .Value, espacios(MyTextReplace(datos.Zdetalle.FieldByName('UNID')
              .asstring), StrToInt(Dcampol), 0) + '' +
              espacios(FormatFloat('#,##0.00',
              datos.Zdetalle.FieldByName('cantidad').Value) + ' @',
              StrToInt(DcampoC1), 0) + '' + espacios(FormatFloat('#,##0.00',
              datos.Zdetalle.FieldByName('precio').Value), StrToInt(DcampoC2),
              1) + '' + espacios(FormatFloat('#,##0.00',
              datos.Zdetalle.FieldByName('total').Value), StrToInt(DcampoD), 1)
              + '' + espacios('', StrToInt(Dcampof), 0));

          end
          else
          begin

            WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
              .Value, espacios(MyTextReplace(datos.Zdetalle.FieldByName('UNID')
              .asstring), StrToInt(Dcampol), 0) + '' +
              espacios(FormatFloat('#,##0.00',
              datos.Zdetalle.FieldByName('cantidad').Value) + ' @',
              StrToInt(DcampoC1), 0) + '' + espacios('', StrToInt(DcampoC2), 1)
              + '' + espacios(FormatFloat('#,##0.00',
              datos.Zdetalle.FieldByName('total').Value), StrToInt(DcampoD), 1)
              + '' + espacios('', StrToInt(Dcampof), 0));

          END;

          // +' '+
          // espacios(MyTextReplace(DATOS.ZDETALLE.FieldByName('ARTICULO').AsString),17,0)+' '+
          // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').Value),5,1)+' '+
          // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),20,1));
          Next;
        end;
      end;

      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('---------------------------------------',
        StrToInt(longitud), 0));

      if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('SUB-TOTAL:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00',
          datos.FbqMaster_Fact.FieldByName('MONTO').Value), StrToInt(PcampoD),
          1) + espacios('', StrToInt(Dcampof), 1))
      else
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('SUB-TOTAL:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) +
          espacios('', StrToInt(Dcampof), 1));
      if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('DESCUENTO:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00',
          datos.FbqMaster_Fact.FieldByName('descuento').Value),
          StrToInt(PcampoD), 1) + espacios('', StrToInt(Dcampof), 1))
      else
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('DESCUENTO:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00', 0), StrToInt(DcampoD), 1) +
          espacios('', StrToInt(Dcampof), 1));
      if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('ITBIS:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00',
          datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),
          StrToInt(PcampoD), 1) + espacios('', StrToInt(Dcampof), 1))
      else
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('ITBIS:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) +
          espacios('', StrToInt(Dcampof), 1));

      if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('TOTAL:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00',
          datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value),
          StrToInt(PcampoD), 1) + espacios('', StrToInt(Dcampof), 1))
      else
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('TOTAL:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) +
          espacios('', StrToInt(Dcampof), 1));

      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('ITEMS :   ' + CUANTOSCOUNT.text, StrToInt(longitud), 0));

      if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('EFECTIVO:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00',
          datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value),
          StrToInt(PcampoD), 1) + espacios('', StrToInt(Dcampof), 1))
      else
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('EFECTIVO:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) +
          espacios('', StrToInt(Dcampof), 1));
      if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('BONOS:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00',
          datos.FbqMaster_Fact.FieldByName('BONOS').Value), StrToInt(PcampoD),
          1) + espacios('', StrToInt(Dcampof), 1));
      if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('CAMBIO:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00',
          datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),
          StrToInt(PcampoD), 1) + espacios('', StrToInt(Dcampof), 1))
      else
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios('CAMBIO:', StrToInt(Pcampol), 1) +
          espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) +
          espacios('', StrToInt(Dcampof), 1));

      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('', StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios(MyTextReplace('' + datos.FbqMaster_FactCAJA.text + '      ' +
        'CAJERO: ' + datos.FbqMaster_FactNOMBRES_EMP.text),
        StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('---------------------------------------',
        StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,
        StrToInt(longitud)));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,
        StrToInt(longitud)));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('', StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('', StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('', StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('', StrToInt(longitud), 0));
      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios('', StrToInt(longitud), 0));

      with Printer do
      begin

        PrinterIndex :=
          GetImpresora(datos.ZUconfiguracion.FieldByName('CONTACTO').Value);
        r := Rect(100, 100, (Pagewidth - 100), (PageHeight - 100));
        BeginDoc;
        Canvas.Brush.Style := bsClear;
        for i := 0 to Memo1.Lines.Count do
          Canvas.TextOut(100,
            180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
            Memo1.Lines.Strings[i]);
        Canvas.Brush.Color := clblack;

        EndDoc;
      end;

    end;

    if cxRadioGroup1.ItemIndex = 1 then
    begin

      with datos.FbqMaster_Fact do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
        sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
        sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
        sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
        sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
        sql.Add('where a.no_fact =:op1');
        params[0].Value := no_factpedido;
        open;
      end;

      with datos.Zdetalle do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
        sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
        sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
        sql.Add('where a.masterid =:ppp');
        params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
        open;
      end;

      with CUANTOS do
      begin
        close;
        sql.Clear;
        sql.Add('select COUNT(NO_FACT)from detailfact');
        sql.Add('where masterid =:ppp');
        params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
        open;
      end;

      // IMPRIMEPEDIDO.variables['titulos']  :=quotedstr('COPIA FACTURA');
      IMPRIMEPEDIDO.variables['cajero'] := quotedstr(DBEdit1.text);
      IMPRIMEPEDIDO.variables['VENDEDOR'] := quotedstr(cxDBTextEdit11.text);

      if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
      begin
        MEN_PIE := datos.ZUconfiguracionMensaje_pie1.Value;
        IMPRIMEPEDIDO.variables['mensaje1'] := quotedstr(MEN_PIE);
      end;

      if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
      begin
        MEN_PIE := datos.ZUconfiguracionMensaje_pie2.Value;
        IMPRIMEPEDIDO.variables['mensaje1'] := quotedstr(MEN_PIE);
      end;

      // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);
      IMPRIMEPEDIDO.PrepareReport(TRUE);
      // recibo2.ShowPreparedReport;

      IMPRIMEPEDIDO.print;

    end;

    if cxRadioGroup1.ItemIndex = 2 then
    begin
      datos.ZInventario.close;
      datos.FbqMaster_Fact.close;
      datos.Zdetalle.close;

      // panel11.Visible := false;
      cerrar.Enabled := TRUE;
      Edit5.Clear;

      B1.Enabled := TRUE;
      B2.Enabled := FALSE;
      B3.Enabled := FALSE;
      B6.Enabled := FALSE;
      B4.Enabled := FALSE;
      cxButton5.Enabled := TRUE;
      cxButton11.Enabled := FALSE;

      cxButton4.Enabled := TRUE;

    end;
    /// ////////////////////////////// Fin de Impresion /////////////////////

    // PANELCOBRO.Visible := FALSE;

    t1.Clear;
    // t2.Clear;
    t3.Clear;
    t4.Clear;
    opmaster.Enabled := FALSE;


    // hold.Close;
    // hold.Params[0].Value := 'HOLD';
    // HOLD.open;

    cerrar.Enabled := TRUE;
    Edit5.Clear;
    B1.Enabled := TRUE;
    B2.Enabled := FALSE;
    B3.Enabled := FALSE;
    B6.Enabled := FALSE;
    B4.Enabled := FALSE;
    BTpedido.Enabled := FALSE;
    cxButton5.Enabled := TRUE;
    cxButton11.Enabled := FALSE;

    // BtBuscarPedido.Enabled := true;
    Panel12.Visible := FALSE;

    datos.ZInventario.close;
    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;

    // panel11.Visible := false;
    cerrar.Enabled := TRUE;
    Edit5.Clear;

    B1.Enabled := TRUE;
    B2.Enabled := FALSE;
    B3.Enabled := FALSE;
    B6.Enabled := FALSE;
    B4.Enabled := FALSE;
    cxButton5.Enabled := TRUE;
    cxButton11.Enabled := FALSE;

  end;
end;

procedure TFrmNFact_normal.cxButton1Click(Sender: TObject);
begin

  ShellExecute(Handle, 'open', 'Calc.exe', nil, nil, SW_SHOWNORMAL);
  // panel13.Visible := true;
  // memo2.Clear;
  // memo2.Top:=0;
  // memo2.Text := 'ARTICULOS VARIOS';

end;

procedure TFrmNFact_normal.cxButton20Click(Sender: TObject);
begin
  PanelOpenD.Visible := TRUE;
  Edit18.Visible := TRUE;
end;

procedure TFrmNFact_normal.cxButton21Click(Sender: TObject);
begin

  datos.FbCategorias.open;

  with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.unidad,a.precio_a,a.codigobarra,a.comision, precio_c, a.precio_b,a.referencia, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.OBS,');
    sql.Add(' a.costo_pr, a.beneficios,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.TIENECOMPACTIBILIDAD,  a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion from mtartuculos a ');
    sql.Add('where a.codigobarra =:PPP');
    sql.Add('group by a.unidad,a.precio_a,a.codigobarra, a.comision, precio_c, a.precio_b, a.precio_d, a.referencia, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, ');
    sql.Add('a.costo_pr, a.beneficios,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion,a.OBS');
    params[0].Value := 'SER001';
    open;
  end;

  // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
  Edit11.text := '1.00';
  //
  t1.text := IbqRArticulosCODIGOTXT.Value;
  t2.text := Memo2.text;
  if CHK.Checked = TRUE then
  begin

    tecnico := StrToInt(TecnicosCOD_EMP.Value);
  end;

  // Showmessage(''+ibqrArticulositbis.Value);
  // EITBIS.Text  := ibqrArticulositbis.Text;

  Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);
  t4.Value := CurrencyEdit1.Value;
  //

  lunidad.text := IbqRArticulosUNIDADVENTA.Value;
  // //FrmNFact_normal.LUnid.ItemIndex := -1;
  // // FrmNFact_normal.LUnid.ItemIndex := 0;
  t3.text := '1';

  linea.text := 'ART';
  // taza.Text := ibqrarticulostaza_compra.Text;

  if IbqRArticulosPOLITICA.Value = 'Unitario' then
  begin
    topcion.text := 'UNI';
  end;

  if IbqRArticulosPOLITICA.Value = 'servicio' then
  begin
    topcion.text := 'SER';
  end;

  // cxButton9.Enabled := true;

  try
    cxButton9.Click;
  except

  end;

  Memo2.Clear;
  CurrencyEdit1.Value := 0.00;
  Panel13.Visible := FALSE;
  Label38.Caption := 'No Hay Instalador Asignado';
end;

procedure TFrmNFact_normal.cxButton22Click(Sender: TObject);
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

  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try
      IniFile := ChangeFileExt(Application.ExeName, '.ini');

      NombreImpresoraTicke := ReadString_Ini(IniFile, 'IMPRESION',
        'NombreImpresoraTicket', '');
      NombreImpresoraNormal := ReadString_Ini(IniFile, 'IMPRESION',
        'NombreImpresoraNormal', '');
      Tipoimpresion := ReadString_Ini(IniFile, 'IMPRESION',
        'TipoImpresion', '');
    except
      on E: Exception do
      begin
        MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13 +
          '**** ' + E.Message + '****'#13 +
          'Esto provoca que no se pueda iniciar,' +
          'Si el problema persiste, llamar al soporte');
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;

  if total.Value = 0.00 then
  begin
    ShowMessage('Este Cotización no Esta Completa');
  end
  else
  begin

    // panelcobro.Visible := true;
    datos.FbqMaster_Fact.Edit;
    datos.fbqMaster_factsituacion.text := 'ENVIADA';
    datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
    datos.FbqMaster_FactROTULO.text := 'COTIZACION';
    datos.FbqMaster_Factterminal.text := 'COTIZACION';
    datos.FbqMaster_FactABONO.Value := 0.00;
    datos.FbqMaster_FactPENDIENTE.Value := 0.00;
    datos.FBQMASTER_FACTTIPO.Value := 'Contado';

    // FrmNFact.b5.Enabled := false;
    B6.Enabled := FALSE;
    opmaster.Enabled := FALSE;
    // opdetalle.Enabled := false;
    cxButton5.Enabled := TRUE;
    cxButton11.Enabled := FALSE;
    cerrar.Enabled := TRUE;
    BtnPrintConduce.Enabled := TRUE;
    Panel7.Enabled := FALSE;

    // datos.ZInventario.ApplyUpdates;
    datos.FbqMaster_Fact.ApplyUpdates;
    datos.Zdetalle.ApplyUpdates;

    datos.Data.Commit;

    // PANELCOBRO.Visible := FALSE;
    t1.Clear;

    cerrar.Enabled := TRUE;

    B1.Enabled := TRUE;
    B2.Enabled := FALSE;
    B3.Enabled := FALSE;
    B6.Enabled := FALSE;
    B4.Enabled := FALSE;
    cxButton14.Enabled := FALSE;
    BTpedido.Enabled := TRUE;
    // BtBuscarPedido.Enabled := true;
    cxButton5.Enabled := TRUE;
    cxButton11.Enabled := FALSE;
    BtnPrintConduce.Enabled := FALSE;

    BtnConduce.Enabled := TRUE;
    cxButton4.Enabled := TRUE;

    BTborrar.Enabled := FALSE;
    B6.Enabled := FALSE;
    cxButton12.Enabled := FALSE;
    cxButton13.Enabled := FALSE;
    BTSerial.Enabled := FALSE;

    // t2.Clear;
    t3.Clear;
    t4.Clear;

    with datos.FbqMaster_Fact do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
      sql.Add('left join cliente b On a.clienteid = b.codigo');
      sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
      sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
      sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
      sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
      sql.Add('where a.no_fact =:op1');
      params[0].Value := StrToInt(Edit5.text);
      open;
    end;

    with datos.Zdetalle do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
      sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
      sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
      sql.Add('where a.masterid =:ppp');
      params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
      open;
    end;
    //
    //
    //
    //

    if Application.MessageBox('Deseas Imprimir Esta Cotización', 'Precausion',
      Mb_YesNo + MB_ICONQUESTION) = Id_yes then
    begin

      if datos.ZUconfiguracionimprimecotiza.Value = 'Ticket' then
      begin

        if Tipoimpresion = 'D' then
        begin
          ImprimeCotiza;
        end
        else
        begin

          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\CotizacionTICKET' + '.fr3';

          IMPRIMEPEDIDO.LoadFromFile(cInf);

          IMPRIMEPEDIDO.variables['titulos'] := quotedstr('COTIZACION');
          IMPRIMEPEDIDO.variables['cajero'] := quotedstr(Edit2.text);

          IMPRIMEPEDIDO.PrepareReport(TRUE);
          IMPRIMEPEDIDO.print;

        end;
      end;

      if datos.ZUconfiguracionimprimecotiza.Value = 'Matrixial' then
      begin
        if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
        begin

          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\CotizacionGrande' + '.fr3';

          IMPRIMEPEDIDO.LoadFromFile(cInf);
        end;

        // imprimepedido.variables['titulos']  :=quotedstr('COTIZACION');
        IMPRIMEPEDIDO.variables['cajero'] := quotedstr(Edit2.text);

        IMPRIMEPEDIDO.PrepareReport(TRUE);
        IMPRIMEPEDIDO.ShowPreparedReport;

      end;

      if datos.ZUconfiguracionimprimecotiza.Value = 'Normal' then
      begin

        if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
        begin
          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\CotizacionGrande' + '.fr3';
          IMPRIMEPEDIDO.LoadFromFile(cInf);
        end;

        IMPRIMEPEDIDO.variables['titulos'] := quotedstr('COTIZACION');
        IMPRIMEPEDIDO.variables['cajero'] := quotedstr(Edit2.text);

        IMPRIMEPEDIDO.PrepareReport(TRUE);
        IMPRIMEPEDIDO.ShowPreparedReport;

      end;

    end;

    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;
    Edit5.Clear;
  end;

end;

procedure TFrmNFact_normal.enviarfactura;
begin

  datos.FbqMaster_Fact.Edit;
  datos.fbqMaster_factsituacion.text := 'ENVIADA';
  datos.FbqMaster_FactCONDICION.text := 'ACTIVA';

  if Edit19.text = '' then
  begin
    datos.FbqMaster_FactROTULO.text := 'FACTURACION';
  end;

  if Edit19.text = 'Delivery' then
  begin

    datos.FbqMaster_FactROTULO.text := 'DELIVERY';
  end;

  datos.FbqMaster_Factterminal.text := 'FACTURACION';
  datos.FbqMaster_FactABONO.Value := 0.00;
  datos.FbqMaster_FactPENDIENTE.Value := datos.FbqMaster_FactMONTOPAGO.Value;

  if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
  begin
    if SHPropina.IsOn = FALSE then
    begin
      datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
    end;
  end;

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

  // datos.ZInventario.ApplyUpdates;
  datos.FbqMaster_Fact.ApplyUpdates;
  datos.Zdetalle.ApplyUpdates;
  datos.Data.Commit;

  with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(Edit5.text);
    open;
  end;

  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
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

  Edit4.text := '0';

  if datos.ZUconfiguracionTIPO_FACTURACION.Value = 1 then
  begin

    if FrmCobro = nil then
    begin

      FrmCobro := tFrmCobro.create(self);

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
  end
  else
  begin
    t1.Clear;
    // t2.Clear;
    t3.Clear;
    t4.Clear;
    opmaster.Enabled := FALSE;

    datos.FbqMaster_Fact.ApplyUpdates;
    datos.Zdetalle.ApplyUpdates;
    datos.Data.Commit;

    datos.ZInventario.close;
    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;

    // BtBuscarPedido.Enabled := true;
    BTpedido.Enabled := TRUE;

    cerrar.Enabled := TRUE;
    Edit5.Clear;
    cxButton14.Enabled := TRUE;
    cxButton4.Enabled := TRUE;
    cxButton37.Enabled := TRUE;

    B1.Enabled := TRUE;
    B2.Enabled := FALSE;
    B3.Enabled := FALSE;
    B6.Enabled := FALSE;
    B4.Enabled := FALSE;
    BtnPrintConduce.Enabled := FALSE;
    cxButton5.Enabled := TRUE;
    cxButton11.Enabled := FALSE;
    Panel12.Visible := FALSE;
    PanelDesc.Visible := FALSE;

    abrirfactura := 'NO';

    if BtDelivery.Visible = TRUE then
    BEGIN
      BtDelivery.Enabled := FALSE;
      BtDelivey02.Enabled := FALSE;
    END;

    BTMayor.Enabled := FALSE;

    // OpBuscarCLiente.Visible := false;

    BTborrar.Enabled := FALSE;
    B6.Enabled := FALSE;
    cxButton12.Enabled := FALSE;
    cxButton13.Enabled := FALSE;
    // BuscarArticulos.Visible := false;
    IbqClientes.close;
    Panel16.Visible := FALSE;
    PanelLTOP.Enabled := FALSE;
    BTSerial.Enabled := FALSE;
    Descc_t.Clear;
    Edit19.text := '';
    Edit4.Clear;

    FactExistencia := 0.00;
    FactExistencia2 := 0.00;

    FrmNFact_normal.pnlEstado.Color := clWhite;
    FrmNFact_normal.pnlEstado.Caption := 'Factura Estandar';
    FrmNFact_normal.pnlEstado.Font.Color := clblack;

    if Panel13.Visible = TRUE then
    begin
      Memo2.Clear;
      CurrencyEdit1.Value := 0.00;
      Panel13.Visible := FALSE;
    end;
  end;

  // datos.ZInventario.Close;

  // frmConsultaFact.facturasEmitidas.Refresh;
  // showmessage('');

end;

procedure TFrmNFact_normal.enviohold;
begin

  if total.Value = 0.00 then
  begin
    ShowMessage('Este Factura no Esta Completa');
  end
  else
  begin
    if (datos.FbqMaster_FactROTULO.Value = 'FACTURACION') or
      (datos.FbqMaster_FactROTULO.Value = 'COTIZACION') then
    BEGIN

      datos.FbqMaster_Fact.Edit;
      datos.fbqMaster_factsituacion.text := 'HOLD';
      datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
      datos.FbqMaster_FactROTULO.text := 'FACTURACION';

      datos.FbqMaster_Factterminal.text := 'FACTURACION';
      datos.FbqMaster_FactABONO.Value := 0.00;
      datos.FbqMaster_FactPENDIENTE.Value :=
        datos.FbqMaster_FactMONTOPAGO.Value;
      datos.FbqMaster_FactIDDR.Value := 1;
      statushold := '';

      Panel7.Enabled := FALSE;

      PanelLTOP.Enabled := FALSE;

      if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
      begin
        datos.FbqMaster_Factquees.Value := 'NO';
      end;

      if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
      begin
        datos.FbqMaster_Factquees.Value := 'PENDIENTE';
      end;

      if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value = 1 then
      begin

        FSolidaridadPago.Edit1.Clear;
        FSolidaridadPago.Edit2.Clear;
        FSolidaridadPago.Edit3.Clear;

      end;

      {
        if RxDBComboBox1.ItemIndex = 0 then
        begin
        datos.FbqMaster_FactCONDICIONVENTA.Value := 1;
        end else IF RxDBComboBox1.ItemIndex = 1 THEN begin
        datos.FbqMaster_FactCONDICIONVENTA.Value := 2;
        end;

        if RxDBComboBox2.ItemIndex = 0 then
        begin
        datos.FbqMaster_FactCOMPROBANTE.Value    := 'SI';
        end ELSE IF RxDBComboBox2.ItemIndex = 1 THEN BEGIN
        datos.FbqMaster_FactCOMPROBANTE.Value    := 'NO';
        END;

      }

      if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
      begin
        datos.Series.ApplyUpdates;
      end;

      if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value = 1 then
      begin

        FSolidaridadPago.Edit1.Clear;
        FSolidaridadPago.Edit2.Clear;
        FSolidaridadPago.Edit3.Clear;

      end;

      // datos.ZInventario.ApplyUpdates;
      datos.FbqMaster_Fact.ApplyUpdates;
      datos.Zdetalle.ApplyUpdates;
      datos.Data.Commit;

      if datos.ZUconfiguracionFAX.Value = 'SI' then
      begin

        with datos.FbqMaster_Fact do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
          sql.Add('left join cliente b On a.clienteid = b.codigo');
          sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
          sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
          sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
          sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
          sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
          sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');
          sql.Add('where a.NO_FACT =:op1');
          params[0].Value := StrToInt(Edit5.text);
          open;
        end;
        // showmessage(''+datos.FbqMaster_FactCODIGO.Text);
        with datos.Zdetalle do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
          sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
          sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
          sql.Add('where a.masterid =:ppp');
          params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
          open;
        end;

        if datos.FbqMaster_FactCODIGO.Value < 1 then
        begin

          with NumeroCodigo do
          begin
            close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
            open;
          end;
          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_FactCODIGO.Value := NumeroCodigoGEN_ID.Value;
          Edit16.text := intTostr(datos.FbqMaster_FactCODIGO.Value);
        end;

        if Application.MessageBox('Deseas Imprimir El Ticket de Entrada ?',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          PrnOrden.PrepareReport(TRUE);
          PrnOrden.print;
        end;
      end;

      if datos.ZUconfiguracionabrircajon.Value = 1 then
      begin
        // ShowMessage(''+edit5.text);

        with datos.FbqMaster_Fact do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
          sql.Add('left join cliente b On a.clienteid = b.codigo');
          sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
          sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
          sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
          sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
          sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
          sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');
          sql.Add('where a.NO_FACT =:op1');
          params[0].Value := StrToInt(Edit5.text);
          open;
        end;

        with datos.Zdetalle do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
          sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
          sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
          sql.Add('where a.masterid =:ppp');
          sql.Add('and a.unid =:op2');
          sql.Add('and a.linea =:op3');
          params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
          params[1].Value := 100;
          params[2].Value := 1;
          open;
        end;

        if datos.FbqMaster_FactCODIGO.Value < 1 then
        begin

          with NumeroCodigo do
          begin
            close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
            open;
          end;
          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_FactCODIGO.Value := NumeroCodigoGEN_ID.Value;
          Edit16.text := intTostr(datos.FbqMaster_FactCODIGO.Value);
        end;

        if Application.MessageBox('Deseas Imprimir El Ticket de Entrada ?',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          PrnCocina.PrepareReport(TRUE);
          PrnCocina.ShowPreparedReport;

          PrnCocina.PrepareReport(TRUE);
          PrnCocina.print;

        end;
        // ShowMessage(''+datos.FbqMaster_FactNO_FACT.text);

        with ActualizaLinea do
        begin
          close;
          sql.Clear;
          sql.Add('update detailfact set  linea = 2 where masterid =:ppp');
          params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
          ExecSQL;
        end;

      end;

      t1.Clear;
      // t2.Clear;
      t3.Clear;
      t4.Clear;
      opmaster.Enabled := FALSE;

      datos.FbqMaster_Fact.ApplyUpdates;
      datos.Zdetalle.ApplyUpdates;
      datos.Data.Commit;

      datos.ZInventario.close;
      datos.FbqMaster_Fact.close;
      datos.Zdetalle.close;

      HOLD.close;
      HOLD.params[0].Value := 'HOLD';
      HOLD.open;
      BTSerial.Enabled := FALSE;
      cerrar.Enabled := TRUE;
      Edit5.Clear;
      B1.Enabled := TRUE;
      B2.Enabled := FALSE;
      B3.Enabled := FALSE;
      B6.Enabled := FALSE;
      B4.Enabled := FALSE;
      cxButton37.Enabled := TRUE;
      cxButton14.Enabled := FALSE;
      BTpedido.Enabled := TRUE;
      // BtBuscarPedido.Enabled := true;
      cxButton5.Enabled := TRUE;
      cxButton11.Enabled := FALSE;
      BtnPrintConduce.Enabled := FALSE;

      FrmNFact_normal.pnlEstado.Color := clWhite;
      FrmNFact_normal.pnlEstado.Caption := 'Factura Estandar';
      FrmNFact_normal.pnlEstado.Font.Color := clblack;


      // FrmNFact_normal.Panel11.Color := clBtnFace;
      // FrmNFact_normal.LbModo.Font.Color := clBlack;
      // FrmNFact_normal.LbModo.Caption := 'Nueva Factura';
      //
      // FrmNFact_normal.lbRotulo.font.Color := clBlack;

      BtnConduce.Enabled := TRUE;
      cxButton4.Enabled := TRUE;

      BTborrar.Enabled := FALSE;
      B6.Enabled := FALSE;
      cxButton12.Enabled := FALSE;
      cxButton13.Enabled := FALSE;
      if Panel13.Visible = TRUE then
      begin

        Memo2.Clear;
        CurrencyEdit1.Value := 0.00;
        Panel13.Visible := FALSE;
      end;

    end;

  END;
end;

procedure TFrmNFact_normal.B6Click(Sender: TObject);
begin
  if total.Value = 0.00 then
  begin
    ShowMessage('Esta hay total facturado para aplicar descuento');
  end
  else
  begin

    PanelDesc.Visible := TRUE;
    cxButton3.Enabled := FALSE;
    desc.SetFocus;
  end;
end;

procedure TFrmNFact_normal.cxButton23Click(Sender: TObject);
Var
  F: textfile;
begin
  datos.ZUconfiguracion.open;

  if Edit18.text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
  begin

    // drawer.PrepareReport(true);
    // drawer.print;
    Edit18.Clear;
    PanelOpenD.Visible := FALSE;

  end
  else
  begin
    MsgError('Usted no esta autorizado para relaizar esa operación'#13 +
      'Favor consultar con el Administrador');
    Edit18.Clear;
    PanelOpenD.Visible := FALSE;

  end;

end;

procedure TFrmNFact_normal.cxButton24Click(Sender: TObject);
var
  ITBArticulos: Integer;
  ITBDeducible: String;
  ITBDeducible1: double;

begin
  suma := 0.00;
  itbs := 0.00;
  descc := 0.00;
  if cxDBCalcEdit1.text <> '' then
  begin
    datos.Zdetalle.Edit;

    if datos.ZdetalleITBS_ART.Value = 'S' then
    begin

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
      begin

        if datos.ZdetalleCOMBO.Value <> 'FRA' then
        begin
          datos.ZdetallePRECIO.Value := qpreciosPRECIO_A.Value;
          datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
            datos.ZdetallePRECIO.Value;
          datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;

        end
        else
        begin
          datos.ZdetallePRECIO.Value := FraccionadoPRECIO1.Value;
          datos.ZdetalleIMPUESTO.Value := FraccionadoPRECIO1.Value;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
            datos.ZdetallePRECIO.Value;
          datos.ZdetalleITBIS2.Value := FraccionadoPRECIO1.Value;

        end;

      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      begin

        datos.ZdetallePRECIO.Value := qpreciosPRECIO_A.Value -
          (qpreciosPRECIO_A.Value * (qpreciosTAZA_COMPRA.Value / 100));
        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;
        datos.ZdetalleITBS.Value :=
          ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) *
          (qpreciosTAZA_COMPRA.Value / 100));
        datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
          datos.ZdetalleITBS.Value;
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

        datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      begin

        if datos.ZdetalleCOMBO.Value <> 'FRA' then
        begin

          ITBArticulos := Round(qpreciosTAZA_COMPRA.Value);
          ITBDeducible := '1.' + intTostr(ITBArticulos);

          datos.ZdetallePRECIO.Value := qpreciosPRECIO_A.Value /
            StrToFloat(ITBDeducible);

          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
          datos.ZdetalleITBS.Value :=
            ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
            (qpreciosTAZA_COMPRA.Value / 100));
          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
          datos.ZdetalleITB3.Value := qpreciosPRECIO_A.Value;
        end
        else
        begin

          ITBArticulos := Round(qpreciosTAZA_COMPRA.Value);
          ITBDeducible := '1.' + intTostr(ITBArticulos);

          datos.ZdetallePRECIO.Value := FraccionadoPRECIO1.Value /
            StrToFloat(ITBDeducible);
          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
          datos.ZdetalleITBS.Value :=
            ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
            (qpreciosTAZA_COMPRA.Value / 100));
          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleITBIS2.Value := FraccionadoPRECIO1.Value;
          datos.ZdetalleITB3.Value := FraccionadoPRECIO1.Value;

        end;
      end;

    end
    else
    begin

      /// showmessage('');
      // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
      if datos.ZdetalleCOMBO.Value <> 'FRA' then
      begin
        datos.ZdetalleITBS_ART.Value := 'N';
        datos.ZdetalleEX.Value := 'E';

        datos.ZdetallePRECIO.Value := qpreciosPRECIO_A.Value;
        datos.ZdetalleITB3.Value := qpreciosPRECIO_A.Value;
        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
          datos.ZdetallePRECIO.Value;
      end
      else
      begin
        datos.ZdetalleITBS_ART.Value := 'N';
        datos.ZdetalleEX.Value := 'E';

        datos.ZdetallePRECIO.Value := FraccionadoPRECIO1.Value;

        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
          datos.ZdetallePRECIO.Value;
      end;
    end;

    // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
    datos.Zdetalle.Post;
    Totales;

    //
    // datos.FbqMaster_Fact.Edit;
    // datos.FbqMaster_Factdescuento.Value := 0.00;
    // datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
    //
    // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
    // begin
    // datos.FbqMaster_FactMONTO.Value := suma;
    //
    // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
    // end else begin
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
    // end;
    //
    // end;
    //
    // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
    // begin
    // datos.FbqMaster_FactMONTO.Value := suma - itbs;
    // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
    // end else begin
    // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
    // end;
    //
    // end;
    //
    // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
    // begin
    // datos.FbqMaster_FactMONTO.Value := suma - itbs;
    // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
    // end else begin
    // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
    // end;
    //
    // end;

    PanelPrecios.Visible := FALSE;
    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
      barra.Clear;

    end
    else
    begin
      barra1.Clear;
      barra1.SetFocus;

    end;

  end;

end;

procedure TFrmNFact_normal.cxButton25Click(Sender: TObject);
var
  ITBArticulos: Integer;
  ITBDeducible: String;
begin
  suma := 0.00;
  itbs := 0.00;
  descc := 0.00;
  if cxDBCalcEdit2.text <> '' then
  begin
    datos.Zdetalle.Edit;
    if datos.ZdetalleITBS_ART.Value = 'S' then
    begin

      // PRECIO_C :=0.00;
      // PRECIO_C := (datos.ZdetalleITBS.Value  + DATOS.ZdetallePRECIO.Value) / datos.ZdetalleCANTIDAD.Value;
      // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
      // datos.ZdetalleITBS_ART.Value := 'S';
      // datos.ZdetalleEX.Value := '';

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
      begin

        datos.ZdetallePRECIO.Value := qpreciosPRECIO_B.Value;
        datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_B.Value;
        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
          datos.ZdetallePRECIO.Value;
        datos.ZdetalleITBIS2.Value := qpreciosPRECIO_B.Value;

      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      begin

        datos.ZdetallePRECIO.Value := qpreciosPRECIO_B.Value -
          (qpreciosPRECIO_B.Value * (qpreciosTAZA_COMPRA.Value / 100));
        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;
        datos.ZdetalleITBS.Value :=
          ((qpreciosPRECIO_B.Value * datos.ZdetalleCANTIDAD.Value) *
          (qpreciosTAZA_COMPRA.Value / 100));
        datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
          datos.ZdetalleITBS.Value;
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

        datos.ZdetalleITBIS2.Value := qpreciosPRECIO_B.Value;
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      begin
        if datos.ZdetalleCOMBO.Value <> 'FRA' then
        begin

          ITBArticulos := Round(qpreciosTAZA_COMPRA.Value);
          ITBDeducible := '1.' + intTostr(ITBArticulos);
          datos.ZdetallePRECIO.Value := qpreciosPRECIO_B.Value /
            StrToFloat(ITBDeducible);
          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
          datos.ZdetalleITBS.Value :=
            ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
            (qpreciosTAZA_COMPRA.Value / 100));

          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleITBIS2.Value := qpreciosPRECIO_B.Value;
          datos.ZdetalleITB3.Value := qpreciosPRECIO_B.Value;
        end
        else
        begin
          ITBArticulos := Round(qpreciosTAZA_COMPRA.Value);
          ITBDeducible := '1.' + intTostr(ITBArticulos);
          datos.ZdetallePRECIO.Value := FraccionadoPRECIO2.Value /
            StrToFloat(ITBDeducible);
          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
          datos.ZdetalleITBS.Value :=
            ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
            (qpreciosTAZA_COMPRA.Value / 100));

          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleITBIS2.Value := FraccionadoPRECIO2.Value;
          datos.ZdetalleITB3.Value := FraccionadoPRECIO2.Value;
        end;
      end;

    end
    else
    begin

      // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
      if datos.ZdetalleCOMBO.Value <> 'FRA' then
      begin
        datos.ZdetalleITBS_ART.Value := 'N';
        datos.ZdetalleEX.Value := 'E';
        datos.ZdetallePRECIO.Value := qpreciosPRECIO_B.Value;
        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
          datos.ZdetallePRECIO.Value;
        datos.ZdetalleITB3.Value := qpreciosPRECIO_B.Value;

      end
      else
      begin
        datos.ZdetalleITBS_ART.Value := 'N';
        datos.ZdetalleEX.Value := 'E';
        datos.ZdetallePRECIO.Value := QfraccionadoPRECIO2.Value;
        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
          datos.ZdetallePRECIO.Value;
        datos.ZdetalleITB3.Value := QfraccionadoPRECIO2.Value;
      end;
    end;

    // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;

    datos.Zdetalle.Post;
    Totales;
    // datos.zdetalle.First;
    //
    // while not datos.zdetalle.Eof do
    // begin
    // suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
    // itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
    // datos.zdetalle.Edit;
    // datos.zdetalletotal.Value := datos.zdetalletotal.Value;
    // datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
    //
    // // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
    // // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
    // datos.zdetalle.Next;
    //
    // end;

    Totales;
    // datos.FbqMaster_Fact.Edit;
    // datos.FbqMaster_Factdescuento.Value := 0.00;
    // datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
    //
    // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
    // begin
    // datos.FbqMaster_FactMONTO.Value := suma;
    //
    // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
    // end else begin
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
    // end;
    //
    // end;
    //
    // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
    // begin
    // datos.FbqMaster_FactMONTO.Value := suma - itbs;
    // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
    // end else begin
    // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
    // end;
    //
    // end;
    //
    // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
    // begin
    // datos.FbqMaster_FactMONTO.Value := suma - itbs;
    // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
    // end else begin
    // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
    // end;
    //
    // end;

    PanelPrecios.Visible := FALSE;
    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
      barra.Clear;

    end
    else
    begin
      barra1.Clear;
      barra1.SetFocus;

    end;

  end;

  PanelPrecios.Visible := FALSE;
  if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
    barra.SetFocus;
    barra.Clear;

  end
  else
  begin
    barra1.Clear;
    barra1.SetFocus;

  end;

end;

procedure TFrmNFact_normal.cxButton26Click(Sender: TObject);
var

  ITBArticulos: Integer;
  ITBDeducible: String;
begin
  suma := 0.00;
  itbs := 0.00;
  descc := 0.00;

  if datos.ZdetalleCOMBO.Value <> 'FRA' then
  begin
    if datos.ZqUsuariosIDSESSION.Value = 3 then
    begin
      if cxDBCalcEdit3.text <> '' then
      begin
        datos.Zdetalle.Edit;

        if datos.ZdetalleITBS_ART.Value = 'S' then
        begin

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
          begin

            datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value;
            datos.ZdetalleIMPUESTO.Value := PRECIOSPRECIO_D.Value;
            datos.ZdetalleITBS.Value := 0.00;
            datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
              datos.ZdetallePRECIO.Value;
            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_D.Value;

          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
          begin

            datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value -
              (qpreciosPRECIO_D.Value * (qpreciosTAZA_COMPRA.Value / 100));
            datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
              datos.ZdetalleCANTIDAD.Value;
            datos.ZdetalleITBS.Value :=
              ((qpreciosPRECIO_D.Value * datos.ZdetalleCANTIDAD.Value) *
              (qpreciosTAZA_COMPRA.Value / 100));
            datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
              datos.ZdetalleITBS.Value;
            // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

            datos.ZdetalleITBIS2.Value := PRECIOSPRECIO_D.Value;
          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
          begin

            ITBArticulos := Round(qpreciosTAZA_COMPRA.Value);
            ITBDeducible := '1.' + intTostr(ITBArticulos);
            datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value /
              StrToFloat(ITBDeducible);
            datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
              datos.ZdetalleCANTIDAD.Value;
            datos.ZdetalleITBS.Value :=
              ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
              ((qpreciosTAZA_COMPRA.Value / 100)));
            datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
              datos.ZdetalleITBS.Value;
            // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_D.Value;
          end;
          datos.ZdetalleITB3.Value := qpreciosPRECIO_D.Value;

        end
        else
        begin

          // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
          datos.ZdetalleITBS_ART.Value := 'N';
          datos.ZdetalleEX.Value := 'E';
          datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
            datos.ZdetallePRECIO.Value;
          datos.ZdetalleITB3.Value := qpreciosPRECIO_D.Value;
        end;



        datos.Zdetalle.Post;
        Totales;

        

        PanelPrecios.Visible := FALSE;
        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
        begin
          barra.SetFocus;
          barra.Clear;

        end
        else
        begin
          barra1.Clear;
          barra1.SetFocus;

        end;

      end;
      PanelPrecios.Visible := FALSE;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
        barra.Clear;

      end
      else
      begin
        barra1.Clear;
        barra1.SetFocus;

      end;
    end
    else
    begin

//      if FAutorizacion.ShowModal = mrOk then
//      begin
        if cxDBCalcEdit3.text <> '' then
        begin
          datos.Zdetalle.Edit;
          if datos.ZdetalleITBS_ART.Value = 'S' then
          begin

            if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
            begin

              datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value;
              datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
              datos.ZdetalleITBS.Value := 0.00;
              datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
                datos.ZdetallePRECIO.Value;
              datos.ZdetalleITBIS2.Value := qpreciosPRECIO_D.Value;

            end;

            if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
            begin

              datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value -
                (qpreciosPRECIO_D.Value * 0.18);
              datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
                datos.ZdetalleCANTIDAD.Value;
              datos.ZdetalleITBS.Value :=
                ((qpreciosPRECIO_D.Value *
                datos.ZdetalleCANTIDAD.Value) * 0.18);
              datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
                datos.ZdetalleITBS.Value;
              // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

              datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
            end;

            if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
            begin

              ITBArticulos := Round(qpreciosTAZA_COMPRA.Value);
              ITBDeducible := '1.' + intTostr(ITBArticulos);

              datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value /
                StrToFloat(ITBDeducible);
              datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
                datos.ZdetalleCANTIDAD.Value;
              datos.ZdetalleITBS.Value :=
                ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
                (qpreciosTAZA_COMPRA.Value / 100));

              datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
                datos.ZdetalleITBS.Value;
              // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
              datos.ZdetalleITBIS2.Value := qpreciosPRECIO_D.Value;
              datos.ZdetalleITB3.Value := qpreciosPRECIO_D.Value;

              // datos.ZdetallePRECIO.Value   := qpreciosPRECIO_d.Value - (qpreciosPRECIO_d.Value * 0.18);
              // datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
              // datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_d.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
              // datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
              // datos.ZdetalleITBIS2.Value := qpreciosPRECIO_d.Value;
              // datos.ZdetalleITB3.Value   := qpreciosPRECIO_d.Value;
            end;

          end
          else
          begin

            // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
            datos.ZdetalleITBS_ART.Value := 'N';
            datos.ZdetalleEX.Value := 'E';
            datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value;
            datos.ZdetalleITBS.Value := 0.00;
            datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
              datos.ZdetallePRECIO.Value;
            datos.ZdetalleITB3.Value := qpreciosPRECIO_D.Value;
          end;

          // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
          datos.Zdetalle.First;

          while not datos.Zdetalle.Eof do
          begin
            suma := (suma + datos.Zdetalle.FieldByName('total').Value);
            // * data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
            // * data.ibtdetallefactCANTIDAD.AsInteger;
            datos.Zdetalle.Edit;
            datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
            datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

            // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
            // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
            datos.Zdetalle.Next;

          end;

          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_Factdescuento.Value := 0.00;
          datos.FbqMaster_FactPOGXITBS.Value := itbs;
          // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
          begin
            datos.FbqMaster_FactMONTO.Value := suma;

            if datos.FbqMaster_Factdescuento.Value = 0.00 then
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                datos.FbqMaster_FactMONTO.Value;
            end
            else
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                datos.FbqMaster_FactMONTO.Value -
                datos.FbqMaster_Factdescuento.Value;
            end;

          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
          begin
            datos.FbqMaster_FactMONTO.Value := suma - itbs;
            if datos.FbqMaster_Factdescuento.Value = 0.00 then
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                datos.FbqMaster_FactMONTO.Value + itbs;
            end
            else
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                (datos.FbqMaster_FactMONTO.Value -
                datos.FbqMaster_Factdescuento.Value) + itbs;
            end;

          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
          begin
            datos.FbqMaster_FactMONTO.Value := suma - itbs;
            if datos.FbqMaster_Factdescuento.Value = 0.00 then
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                datos.FbqMaster_FactMONTO.Value + itbs;
            end
            else
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                (datos.FbqMaster_FactMONTO.Value -
                datos.FbqMaster_Factdescuento.Value) + itbs;
            end;

          end;

          PanelPrecios.Visible := FALSE;
          if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
          begin
            barra.SetFocus;
            barra.Clear;

          end
          else
          begin
            barra1.Clear;
            barra1.SetFocus;

          end;

//        end;

      end;
    end;
  end;
end;

procedure TFrmNFact_normal.cxButton27Click(Sender: TObject);
var
  ITBArticulos: Integer;
  ITBDeducible: String;
begin
  if datos.ZdetalleCOMBO.Value <> 'FRA' then
  begin
    suma := 0.00;
    itbs := 0.00;
    descc := 0.00;


      if FAutorizacion.ShowModal = mrOk then
      begin
        // CostoMSN.Visible := TRUE;
        if qpreciosITBIS.Value = 'Si' then
        begin

          cxCurrencyEdit2.Value := qpreciosCOSTO.Value +
            (qpreciosCOSTO.Value * (qpreciosTAZA_COMPRA.Value / 100));
        end
        else
        begin
          cxCurrencyEdit2.Value := qpreciosCOSTO.Value;
        end;



    if cxCurrencyEdit1.Value < cxCurrencyEdit2.Value then
    begin
      MsgInformacion('  El Monto es menor que el Costo ');
    end
    else
    begin


        datos.Zdetalle.Edit;
        if datos.ZdetalleITBS_ART.Value = 'S' then
        begin

          // PRECIO_C :=0.00;
          // PRECIO_C := (datos.ZdetalleITBS.Value  + DATOS.ZdetallePRECIO.Value) / datos.ZdetalleCANTIDAD.Value;
          // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
          // datos.ZdetalleITBS_ART.Value := 'S';
          // datos.ZdetalleEX.Value := '';

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
          begin

            datos.ZdetallePRECIO.Value := cxCurrencyEdit1.Value;
            datos.ZdetalleIMPUESTO.Value := cxCurrencyEdit1.Value;
            datos.ZdetalleITBS.Value := 0.00;
            datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
              datos.ZdetallePRECIO.Value;
            datos.ZdetalleITBIS2.Value := cxCurrencyEdit1.Value;

          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
          begin

            datos.ZdetallePRECIO.Value := cxCurrencyEdit1.Value -
              (cxCurrencyEdit1.Value * (qpreciosTAZA_COMPRA.Value / 100));
            datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
              datos.ZdetalleCANTIDAD.Value;
            datos.ZdetalleITBS.Value :=
              ((cxCurrencyEdit1.Value * datos.ZdetalleCANTIDAD.Value) *
              (qpreciosTAZA_COMPRA.Value / 100));
            datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
              datos.ZdetalleITBS.Value;
            // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

            datos.ZdetalleITBIS2.Value := cxCurrencyEdit1.Value;
          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
          begin

            ITBArticulos := Round(qpreciosTAZA_COMPRA.Value);
            ITBDeducible := '1.' + intTostr(ITBArticulos);
            datos.ZdetallePRECIO.Value := cxCurrencyEdit1.Value /
              StrToFloat(ITBDeducible);
            datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
              datos.ZdetalleCANTIDAD.Value;
            datos.ZdetalleITBS.Value :=
              ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
              (qpreciosTAZA_COMPRA.Value / 100));
            datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
              datos.ZdetalleITBS.Value;
            // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
            datos.ZdetalleITBIS2.Value := cxCurrencyEdit1.Value;
          end;
          datos.ZdetalleITB3.Value := cxCurrencyEdit1.Value;

        end
        else
        begin

          // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
          datos.ZdetalleITBS_ART.Value := 'N';
          datos.ZdetalleEX.Value := 'E';
          datos.ZdetallePRECIO.Value := cxCurrencyEdit1.Value;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
            datos.ZdetallePRECIO.Value;
          datos.ZdetalleITB3.Value := cxCurrencyEdit1.Value;
        end;

        // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
        // datos.zdetalle.First;
        //
        // while not datos.zdetalle.Eof do
        // begin
        // suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
        // itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
        // datos.zdetalle.Edit;
        // datos.zdetalletotal.Value := datos.zdetalletotal.Value;
        // datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
        //
        // // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
        // datos.zdetalle.Next;
        //
        // end;

        datos.Zdetalle.Post;
        Totales;


        PanelPrecios.Visible := FALSE;
        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
        begin
          barra.SetFocus;
          barra.Clear;

        end
        else
        begin
          barra1.Clear;
          barra1.SetFocus;

        end;

        // *****************
        PanelPrecios.Visible := FALSE;
        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
        begin
          barra.SetFocus;
          barra.Clear;

        end
        else
        begin
          barra1.Clear;
          barra1.SetFocus;

        end;

      end;
    end;

  end;
end;

procedure TFrmNFact_normal.cxButton28Click(Sender: TObject);
begin

  if FAutorizacion.ShowModal = mrOk then
  begin

    datos.ZInventario.open;

    with DetalleFacturas do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
      sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
      sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
      sql.Add('where a.masterid =:ppp');
      params[0].Value := FacturasImpresasNO_FACT.Value;
      open;
    end;

    with DetalleFacturas do
    begin

      First;
      while not Eof do
      begin

        with UpdateNC do
        begin
          close;
          sql.Clear;
          sql.Add('update mnoc set afecta_inv = 1');
          sql.Add('where mncid =:opp');
          params[0].Value := StrToInt(FacturasImpresasNO_FACT1.Value);
          ExecSQL;
        end;
        Next;
      end;
    end;

    if FacturasImpresasABONO.Value <= 0 then
    begin

      with DetalleFacturas do
      begin
        First;
        while not Eof do
        begin

          if datos.ZdetalleBARRA.Value <> '' then
          begin
            with UpRma do
            begin
              close;
              sql.Clear;
              sql.Add('update rmam set idmarca = 2 where noorden =:op1');
              params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
              ExecSQL;
            end;
          end;

          with comisionCancelar do
          begin
            close;
            sql.Clear;
            sql.Add('delete from COMISIONINSTALADOR where id_fact =:opcion1');
            params[0].Value := DetalleFacturasMASTERID.Value;
            ExecSQL;
          end;
          /// -- Inicio Inventario
          with datos.MantArt do
          begin
            close;
            sql.Clear;
            sql.Add('select a.*, b.signo, c.cat from mtartuculos a');
            sql.Add('left join tb_moneda b On a.idmoneda = b.id');
            sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
            sql.Add('where a.cod_Art =:oo');
            params[0].Value := DetalleFacturasARTICULOID.Value;
            open;
          end;

          if datos.MantArtOPCIONES_BOLA.Value = 'Si' then
          begin

            with datos.QCodMin do
            begin
              close;
              sql.Clear;
              sql.Add('select * from SP_EQMINIMO(:no)');
              params[0].Value := DetalleFacturasARTICULOID.Value;
              open;
            end;

            with numeroinventario do
            begin
              close;
              sql.Clear;
              sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
              open;
            end;

            datos.ZInventario.Insert;
            datos.ZInventarioMINVENTARIOID.Value :=
              numeroinventarioGEN_ID.Value;
            datos.ZInventarioFECHA.Value := Now();
            datos.ZInventarioIDTIENDA.Value := AsignaTienda;
            datos.ZInventarioCOD_ART.Value := datos.qCodMinCODIGOMINIMO.Value;
            datos.ZInventarioCONCEPTOID.Value := 7;
            datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
            datos.ZInventarioSALIDA.Value := 0.00;
            datos.ZInventarioENTRADA.Value := DetalleFacturasCANTIDAD.Value *
              (datos.qCodMinCANTEMP.Value);
            datos.ZInventarioCOD_ALM.Value := 1;

          end
          else
          begin
            with numeroinventario do
            begin
              close;
              sql.Clear;
              sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
              open;
            end;

            datos.ZInventario.Insert;
            datos.ZInventarioMINVENTARIOID.Value :=
              numeroinventarioGEN_ID.Value;
            datos.ZInventarioFECHA.Value := Now();
            datos.ZInventarioIDTIENDA.Value := AsignaTienda;
            datos.ZInventarioCOD_ART.Value := DetalleFacturasARTICULOID.Value;;
            datos.ZInventarioCONCEPTOID.Value := 7;
            datos.ZInventarioSALIDA.Value := 0.00;
            datos.ZInventarioENTRADA.Value := DetalleFacturasCANTIDAD.Value;
            datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
            datos.ZInventarioCOD_ALM.Value := 1;

          end;

          /// -- Fin Inventario

          // showmessage(''+IntToStr(datos.MantArtCOD_ART.Value));
          datos.MantArt.Edit;
          datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value +
            DetalleFacturasCANTIDAD.Value;
          datos.MantArt.ApplyUpdates;

          Next;
        end;
      end;

      with IbqClientes do
      begin
        close;
        sql.Clear;
        sql.Add('select * from cliente');
        sql.Add('where codigo =:codigo');
        params[0].Value := FacturasImpresasCLIENTEID.Value;
        open;
      end;


      // ****** Actualiza Balance de Credito Cliente *-****

      with UpCredito do
      begin
        close;
        sql.Clear;
        sql.Add('update cliente set Musados =:Musado, balance =:balance ');
        sql.Add('where codigo =:codigo');
        params[0].Value := IbqClientesMUSADOS.Value -
          FacturasImpresasPENDIENTE.Value;
        params[1].Value := IbqClientesCREDITOLIMITE.Value -
          (IbqClientesMUSADOS.Value - FacturasImpresasPENDIENTE.Value);
        params[2].Value := IbqClientesCODIGO.Value;
        ExecSQL;
      end;

      // **************************************************

      with Anular do
      begin
        close;
        sql.Clear;
        sql.Add('update master_fact set condicion =:op, SITUACION =:OP2');
        sql.Add('where no_fact =:pp');
        params[0].Value := 'ANULADA';
        params[1].Value := 'ANULADA';
        params[2].Value := FacturasImpresasNO_FACT.Value;
        ExecSQL;
      end;

      datos.ZInventario.ApplyUpdates;
      datos.Data.Commit;
      with FacturasImpresas do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        params[0].Value := 'IMPRESA';
        params[1].Value := 'ACTIVA';
        params[2].Value := 'FACTURACION';
        open;
      end;
      datos.ZInventario.close;
      // EdClave.Clear;
      // PanelAutorizacion.Visible := false;

    end
    else
    begin
      ShowMessage
        (' Esta Factura Tiene Abono(s) aplicado(s) no pude ser anulada ');
    end;

  end;

end;

procedure TFrmNFact_normal.BTNotaC325Click(Sender: TObject);
begin

  if B1.Enabled = FALSE then
  begin
    if FrmServicioInstalador = nil then
    begin
      FrmBuscarInstalador := tFrmBuscarInstalador.create(self);
      FrmBuscarInstalador.Edit2.text := 'LAVADERO';
      FrmBuscarInstalador.ShowModal;
    end;
  end;
end;

procedure TFrmNFact_normal.btnsalirClick(Sender: TObject);
begin
  Impresas.Visible := FALSE;
end;

procedure TFrmNFact_normal.cxButton31Click(Sender: TObject);
var
  cInf: String;
begin

  if total.Value = 0.00 then
  begin
    ShowMessage('Este Conduce no Esta Completa');
  end
  else
  begin

    // panelcobro.Visible := true;
    datos.FbqMaster_Fact.Edit;
    datos.fbqMaster_factsituacion.text := 'CONDUCE';
    datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
    datos.FbqMaster_FactROTULO.text := 'FACTURACION';
    datos.FbqMaster_Factterminal.text := 'FACTURACION';
    datos.FbqMaster_FactABONO.Value := 0.00;
    datos.FbqMaster_FactPENDIENTE.Value := 0.00;

    // BtBuscarPedido.Enabled := true;
    BTpedido.Enabled := TRUE;

    cerrar.Enabled := TRUE;

    cxButton14.Enabled := TRUE;
    cxButton4.Enabled := TRUE;

    B1.Enabled := TRUE;
    B2.Enabled := FALSE;
    B3.Enabled := FALSE;
    B6.Enabled := FALSE;
    B4.Enabled := FALSE;
    BtnPrintConduce.Enabled := FALSE;
    cxButton5.Enabled := TRUE;
    cxButton11.Enabled := FALSE;
    Panel12.Visible := FALSE;

    BTborrar.Enabled := FALSE;
    B6.Enabled := FALSE;
    cxButton12.Enabled := FALSE;
    cxButton13.Enabled := FALSE;

    // datos.ZInventario.ApplyUpdates;
    datos.FbqMaster_Fact.ApplyUpdates;
    datos.Zdetalle.ApplyUpdates;

    datos.Data.Commit;
    // PANELCOBRO.Visible := FALSE;
    t1.Clear;

    // t2.Clear;
    t3.Clear;
    t4.Clear;

    with datos.FbqMaster_Fact do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
      sql.Add('left join cliente b On a.clienteid = b.codigo');
      sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
      sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
      sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
      sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');
      sql.Add('where a.NO_FACT =:op1');
      params[0].Value := NumeroFactura;
      open;
    end;
    // showmessage(''+datos.FbqMaster_FactCODIGO.Text);
    with datos.Zdetalle do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
      sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
      sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
      sql.Add('where a.masterid =:ppp');
      params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
      open;
    end;


    //
    //
    //
    //
    // RebajaInventario;

    Edit5.Clear;
    if OPConduce.ItemIndex = 0 then
    begin

      if Application.MessageBox('Deseas Imprimir Este  Conduce', 'Precausion',
        Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        // if datos.ZUconfiguracionCONTACTO.Value <> '' then
        // begin
        // imprimeconduce;
        // end
        // else
        // begin
        cInf := datos.ZUconfiguracionROTULO_FC.Value + '\Conduceticket'
          + '.fr3';

        PrnConduceTicket.LoadFromFile(cInf);

        PrnConduceTicket.variables['titulos'] := quotedstr('CONDUCE');
        PrnConduceTicket.variables['cajero'] := quotedstr(Edit2.text);

        // ShowMEssage(' Favor prepara la Impresora '+datos.ZUconfiguracionIMPRIMECOTIZA.Value+' '+'y luego presione OK');

        // PrnConduceTicket.PrintOptions.Printer :=
        // trim(datos.ZUconfiguracionimprimecotiza.Value);
        PrnConduceTicket.PrepareReport();
        PrnConduceTicket.ShowReport;
        // end;
      end;
    end;

    if OPConduce.ItemIndex = 1 then
    begin

      if Application.MessageBox('Deseas Imprimir Este  Conduce', 'Precausion',
        Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin


        // cInf := datos.ZUconfiguracionROTULO_FC.value+'\ConduceMediaCarta'+'.fr3';
        // ConduceMC.LoadFromFile(cInf);

        ConduceMC.variables['titulos'] := quotedstr('CONDUCE');
        ConduceMC.variables['cajero'] := quotedstr(Edit2.text);

        // ShowMEssage(' Favor prepara la Impresora '+datos.ZUconfiguracionIMPRIMECOTIZA.Value+' '+'y luego presione OK');

        ConduceMC.PrintOptions.Printer :=
          trim(datos.ZUconfiguracionimprimecotiza.Value);
        ConduceMC.PrepareReport(TRUE);
        ConduceMC.ShowReport;

      end;
    end;

    if OPConduce.ItemIndex = 2 then
    begin

      if Application.MessageBox('Deseas Imprimir Este  Conduce', 'Precausion',
        Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        ConduceMC.variables['titulos'] := quotedstr('CONDUCE');
        ConduceMC.variables['cajero'] := quotedstr(Edit2.text);

        // ShowMEssage(' Favor prepara la Impresora '+datos.ZUconfiguracionIMPRIMECOTIZA.Value+' '+'y luego presione OK');

        ConduceMC.PrintOptions.Printer :=
          trim(datos.ZUconfiguracionimprimecotiza.Value);
        ConduceMC.PrepareReport(TRUE);
        ConduceMC.ShowReport;
      end;
    end;

    PanelConduce.Visible := FALSE;
    BtnConduce.Enabled := TRUE;
    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;
  end;

  datos.Data.Commit;
end;

procedure TFrmNFact_normal.cxButton32Click(Sender: TObject);
begin
  if B3.Enabled = TRUE then
  begin

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
      FrmFindArticulos.Edit1.text := '';
      FrmFindArticulos.ShowModal;
      datos.FbCategorias.open;

      // EDIT19.SetFocus;
    end
    else
    begin

      FrmFindArticulos.Edit1.text := '';
      FrmFindArticulos.ShowModal;
      datos.FbCategorias.open;

    end;
    FrmFindArticulos.Edit1.text := '';
    FrmFindArticulos.ShowModal;
    datos.FbCategorias.open;

    with IbqRArticulos do
    begin
      close;
      sql.Clear;
      sql.Add('select a.unidad,a.precio_a, a.codigobarra,precio_c, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
      sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
      sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
      sql.Add('left join minventario b On a.cod_art = b.cod_art');
      sql.Add('where a.COMPACTIBLECON =:opp');
      sql.Add('group by a.unidad,a.precio_a, a.codigobarra,precio_c, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
      sql.Add('a.codigotxt,a.itbis,a.taza_compra, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
      params[0].Value := datos.ZdetalleARTICULOID.Value;
      open;
    end;

    { if (cxDBTextEdit4.Text ='') and (cxDBTextEdit3.Text = '')then
      begin
      Showmessage('** Debes Introducir el Nombre del Cliente ***');
      end else begin
      if datos.FbqMaster_FactROTULO.Value = 'COTIZACION' then begin
      FrmBuscarArticulos.Edit2.Text := 'COTIZA';
      end;
      if datos.FbqMaster_FactROTULO.Value = 'FACTURACION' then begin
      FrmBuscarArticulos.Edit2.Text := 'FACTURA';
      end;
      FrmBuscarArticulos.showmodal;
      end;
    }
  end;
end;

procedure TFrmNFact_normal.cxButton33Click(Sender: TObject);
begin
  calcdescuento;
end;

procedure TFrmNFact_normal.cxButton34Click(Sender: TObject);
begin
  FSolidaridadPago.Edit4.text := datos.FbqMaster_FactNO_FACT.text;

  FSolidaridadPago.ShowModal;
  pnlSolidaridad.Visible := FALSE;
end;

procedure TFrmNFact_normal.cxButton37Click(Sender: TObject);
begin

  if FrmGet_CXC = nil then
  begin
    FrmGet_CXC := tFrmGet_CXC.create(self);
    FrmGet_CXC.ShowModal;
  end;
end;

procedure TFrmNFact_normal.cxButton38Click(Sender: TObject);
begin
  if FrmConsultasFxPagar = nil then
  begin
    FrmConsultasFxPagar := tFrmConsultasFxPagar.create(self);
    FrmConsultasFxPagar.codigo2 := IbqClientesCODIGO.Value;
    FrmConsultasFxPagar.ShowModal;
  end;

end;

procedure TFrmNFact_normal.cxButton39Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'Calc.exe', nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmNFact_normal.btnGuardarClick(Sender: TObject);
begin

  if FrmServicioInstalador = nil then
  begin
    FrmServicioInstalador := tFrmServicioInstalador.create(self);
    FrmServicioInstalador.Edit1.text := datos.FbqMaster_FactNO_FACT.text;
    FrmServicioInstalador.ShowModal;
  end;
end;

procedure TFrmNFact_normal.pago;
begin
  if (IbqClientesCODIGO.Value = 1) and
    (datos.FBQMASTER_FACTTIPO.Value = 'CREDITO') then
  begin
    ShowMessage(' Cliente no esta Autorizado para el Crédito ');
  end
  else
  begin

    if cxDBComboBox1.text = 'CREDITO' then
    begin

      with QBalanceCreditoCliente do
      begin
        close;
        sql.Clear;
        sql.Add('select balance from cliente');
        sql.Add('where codigo =:opp');
        params[0].Value := IbqClientesCODIGO.Value;
        open;
      end;
      // ShowMessage('Monto Factura :'+datos.FbqMaster_FactMONTOPAGO.Text+'<= Monto Balance :'+QBalanceCreditoClienteBALANCE.text);
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

    if cxDBComboBox1.text = 'Contado' then
    begin

      cobrando;
      // panel7.Enabled := false;
      // PanelLTOP.Enabled := false;
    end;
  end;
end;

procedure TFrmNFact_normal.cxButton40Click(Sender: TObject);
var
  cero: string;
  suma: Currency;
  itbs: Currency;
  Stexto: string;
begin

  opmaster.Enabled := TRUE;

  with numero do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
    open;
  end;

  datos.FbqMaster_Fact.open;

  Zqusuario.open;

  IbqClientes.open;

  FrmNFact_normal.Panel7.Enabled := TRUE;
  FrmNFact_normal.PanelLTOP.Enabled := TRUE;
  datos.FbqMaster_Fact.Insert;
  datos.FbqMaster_FactNO_FACT.Value := numeroGEN_ID.Value;
  datos.FbqMaster_FactNC.Value := 1;

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
    intTostr(datos.FbqMaster_FactNO_FACT.Value);
  Edit5.text := datos.FbqMaster_FactNO_FACT1.Value;
  // RxDBComboBox1.ItemIndex := 0;
  // FrmNFact.RxDBComboBox2.ItemIndex := 1;
  cxDBComboBox1.ItemIndex := 1;

  // RxDBComboBox1.Enabled := false;
  // FrmNFact.RxDBComboBox2.Enabled := true;
  cxDBComboBox1.Enabled := TRUE;
  // edit12.Clear;
  datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;

  with IbqClientes do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from cliente a');
    sql.Add('where a.codigo = 1');
    open;
  end;

  datos.FbqMaster_FactCLIENTEID.Value := IbqClientesCODIGO.Value;
  datos.FbqMaster_FactCLIENTENOMBRE.Value := IbqClientesNOMBRES.Value;
  datos.FbqMaster_FactCONDICIONVENTA.Value := IbqClientesCONDICION.Value;
  datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value :=
    datos.FbqMaster_FactCLIENTENOMBRE.Value;
  datos.FbqMaster_FactCAJAID.Value := datos.ZUconfiguracionCAJAID.Value;

  with Zqusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.Add('where a.usuarioId =:pp');
    params[0].Value := AsignaUsuario;
    open;
  end;

  datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
  datos.FbqMaster_FactNOMBRES_EMP.Value := ZqusuarioNOMBRES_EMP.Value;
  // datos.FbqMaster_FactCODVEN.Value       := ZqusuarioEMPLEADOID.Value;
  datos.FbqMaster_FactNOMBRES_EMP.Value := ZqusuarioNOMBRES_EMP.Value;
  datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
  datos.FbqMaster_FactFECHA_FAC.Value := Now();
  datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;

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

  // opdetalle.Enabled := true;
  if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
    barra.SetFocus;
  end
  else
  begin
    barra1.SetFocus;

  end;

  B1.Enabled := FALSE;
  B2.Enabled := TRUE;
  B2.Caption := 'Cancelar Factura';

  if datos.ZqUsuariosIDSESSION.Value = 1 then
  begin
    B3.Enabled := FALSE;
    B4.Enabled := TRUE;
    cxButton11.Enabled := TRUE;
    cxButton37.Enabled := FALSE;
  end;

  if datos.ZqUsuariosIDSESSION.Value = 3 then
  begin
    B3.Enabled := TRUE;
    B4.Enabled := TRUE;
    cxButton11.Enabled := TRUE;
    cxButton37.Enabled := TRUE;
  end;

  if datos.ZqUsuariosIDSESSION.Value = 2 then
  begin
    B3.Enabled := TRUE;
    B4.Enabled := TRUE;
    cxButton11.Enabled := TRUE;
    cxButton37.Enabled := TRUE;
  end;

  cxButton4.Enabled := FALSE;
  cxButton5.Enabled := FALSE;
  cxButton14.Enabled := TRUE;
  BTpedido.Enabled := TRUE;
  B6.Enabled := TRUE;
  Edit3.text := 'NUEVO';
  opmaster.Enabled := TRUE;
  // opdetalle.Enabled := true;
  BTborrar.Enabled := TRUE;
  B6.Enabled := TRUE;
  cxButton12.Enabled := TRUE;
  cxButton13.Enabled := TRUE;

  BtnPrintConduce.Enabled := TRUE;

  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo, c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.no_fact =  0');
    open;
  end;

  cerrar.Enabled := FALSE;

  with DetalleFacturas do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
    sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := FacturasImpresasNO_FACT.Value;
    open;
  end;

  with DetalleFacturas do
  begin
    First;
    while not Eof do
    begin

      adddetalle;
      Next;
    end;
  end;

  datos.Zdetalle.First;

  while not datos.Zdetalle.Eof do
  begin
    suma := (suma + datos.Zdetalle.FieldByName('total').Value);
    // * data.ibtdetallefactCANTIDAD.AsInteger;
    itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
    // * data.ibtdetallefactCANTIDAD.AsInteger;
    datos.Zdetalle.Edit;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
    datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

    datos.Zdetalle.Next;

  end;

  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_Factdescuento.Value := 0.00;
  datos.FbqMaster_FactPOGXITBS.Value := itbs;

  datos.FbqMaster_FactMONTO.Value := suma - itbs;
  if datos.FbqMaster_Factdescuento.Value = 0.00 then
  begin
    datos.FbqMaster_FactMONTOPAGO.Value :=
      datos.FbqMaster_FactMONTO.Value + itbs;
  end
  else
  begin
    datos.FbqMaster_FactMONTOPAGO.Value :=
      (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.
      Value) + itbs;
  end;

  calcular.Enabled := FALSE;
  t1.Clear;
  t2.Clear;
  t3.Clear;
  t4.Clear;
  ancho.Clear;
  Edit9.Clear;
  alto.Clear;
  Edit8.Clear;
  topcion.Clear;
  cxButton9.Enabled := FALSE;
  NCnumero.Clear;

  tecnico := 0;
  cxGrid2.Visible := FALSE;
  Impresas.Visible := FALSE;
  DetalleFacturas.close;

end;

procedure TFrmNFact_normal.cxButton41Click(Sender: TObject);
var
  ITBArticulos: Integer;
  ITBDeducible: String;
begin
  if datos.ZdetalleCOMBO.Value <> 'FRA' then
  begin
    if FAutorizacion.ShowModal = mrOk then
    begin
      CostoMSN.Visible := TRUE;
      if qpreciosITBIS.Value = 'Si' then
      begin

        cxCurrencyEdit2.Value := qpreciosCOSTO.Value +
          (qpreciosCOSTO.Value * (qpreciosTAZA_COMPRA.Value / 100));
      end
      else
      begin
        cxCurrencyEdit2.Value := qpreciosCOSTO.Value;
      end;
    end;
  end;
end;

procedure TFrmNFact_normal.cxButton42998Click(Sender: TObject);
begin
  if B1.Enabled = FALSE then
  begin
    if FFindArticulosMayor = nil then
    begin
      FFindArticulosMayor := tFFindArticulosMayor.create(self);
      FFindArticulosMayor.ShowModal;
    end;
  end;
end;

procedure TFrmNFact_normal.cxButton18Click(Sender: TObject);
begin

  Edit9.text := '';
  if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
  begin
    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      FormaPago.text := 'MIXTO';
      pago;
    end;
  end
  else
  begin
    FormaPago.text := 'MIXTO';
    pago;
  end;
end;

procedure TFrmNFact_normal.cxButton45Click(Sender: TObject);
begin

  if B1.Enabled = FALSE then
  begin

    if pnlSolidaridad.Visible = FALSE then
    begin
      pnlSolidaridad.Visible := TRUE;
    end
    else
    begin
      pnlSolidaridad.Visible := FALSE;
    end;
  end;

end;

procedure TFrmNFact_normal.cxButton46Click(Sender: TObject);
var

  ITBArticulos: Integer;
  ITBDeducible: String;
begin
  suma := 0.00;
  itbs := 0.00;
  descc := 0.00;
  if datos.ZdetalleCOMBO.Value <> 'FRA' then
  begin
    if datos.ZqUsuariosIDSESSION.Value = 3 then
    begin
      if cxDBCalcEdit3.text <> '' then
      begin
        datos.Zdetalle.Edit;

        if datos.ZdetalleITBS_ART.Value = 'S' then
        begin

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
          begin

            datos.ZdetallePRECIO.Value := qpreciosPRECIO_C.Value;
            datos.ZdetalleIMPUESTO.Value := PRECIOSPRECIO_C.Value;
            datos.ZdetalleITBS.Value := 0.00;
            datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
              datos.ZdetallePRECIO.Value;
            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_C.Value;

          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
          begin

            datos.ZdetallePRECIO.Value := qpreciosPRECIO_C.Value -
              (qpreciosPRECIO_C.Value * (qpreciosTAZA_COMPRA.Value / 100));
            datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
              datos.ZdetalleCANTIDAD.Value;
            datos.ZdetalleITBS.Value :=
              ((qpreciosPRECIO_C.Value * datos.ZdetalleCANTIDAD.Value) *
              (qpreciosTAZA_COMPRA.Value / 100));
            datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
              datos.ZdetalleITBS.Value;
            // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

            datos.ZdetalleITBIS2.Value := PRECIOSPRECIO_C.Value;
          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
          begin
            ITBArticulos := Round(qpreciosTAZA_COMPRA.Value);
            ITBDeducible := '1.' + intTostr(ITBArticulos);
            datos.ZdetallePRECIO.Value := qpreciosPRECIO_C.Value /
              StrToFloat(ITBDeducible);
            datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
              datos.ZdetalleCANTIDAD.Value;
            datos.ZdetalleITBS.Value :=
              ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
              ((qpreciosTAZA_COMPRA.Value / 100)));
            datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
              datos.ZdetalleITBS.Value;
            // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_C.Value;
          end;
          datos.ZdetalleITB3.Value := qpreciosPRECIO_C.Value;

        end
        else
        begin

          // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
          datos.ZdetalleITBS_ART.Value := 'N';
          datos.ZdetalleEX.Value := 'E';
          datos.ZdetallePRECIO.Value := qpreciosPRECIO_C.Value;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
            datos.ZdetallePRECIO.Value;
          datos.ZdetalleITB3.Value := qpreciosPRECIO_C.Value;
        end;

        // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
        // datos.zdetalle.First;
        //
        // while not datos.zdetalle.Eof do
        // begin
        // suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
        // itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
        // datos.zdetalle.Edit;
        // datos.zdetalletotal.Value := datos.zdetalletotal.Value;
        // datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
        //
        // // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
        // datos.zdetalle.Next;
        //
        // end;

        datos.Zdetalle.Post;
        Totales;

        // datos.FbqMaster_Fact.Edit;
        // datos.FbqMaster_Factdescuento.Value := 0.00;
        // datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
        //
        // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
        // begin
        // datos.FbqMaster_FactMONTO.Value := suma;
        //
        // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
        // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
        // end else begin
        // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
        // end;
        //
        // end;
        //
        // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
        // begin
        // datos.FbqMaster_FactMONTO.Value := suma - itbs;
        // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
        // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
        // end else begin
        // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
        // end;
        //
        // end;
        //
        // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
        // begin
        // datos.FbqMaster_FactMONTO.Value := suma - itbs;
        // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
        // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
        // end else begin
        // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
        // end;
        //
        // end;

        PanelPrecios.Visible := FALSE;
        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
        begin
          barra.SetFocus;
          barra.Clear;

        end
        else
        begin
          barra1.Clear;
          barra1.SetFocus;

        end;

      end;
      PanelPrecios.Visible := FALSE;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
        barra.Clear;

      end
      else
      begin
        barra1.Clear;
        barra1.SetFocus;

      end;
    end
    else
    begin
      if FAutorizacion.ShowModal = mrOk then
      begin
        if cxDBCalcEdit3.text <> '' then
        begin
          datos.Zdetalle.Edit;
          if datos.ZdetalleITBS_ART.Value = 'S' then
          begin

            if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
            begin

              datos.ZdetallePRECIO.Value := qpreciosPRECIO_C.Value;
              datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_C.Value;
              datos.ZdetalleITBS.Value := 0.00;
              datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
                datos.ZdetallePRECIO.Value;
              datos.ZdetalleITBIS2.Value := qpreciosPRECIO_C.Value;

            end;

            if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
            begin

              datos.ZdetallePRECIO.Value := qpreciosPRECIO_C.Value -
                (qpreciosPRECIO_C.Value * 0.18);
              datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
                datos.ZdetalleCANTIDAD.Value;
              datos.ZdetalleITBS.Value :=
                ((qpreciosPRECIO_C.Value *
                datos.ZdetalleCANTIDAD.Value) * 0.18);
              datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
                datos.ZdetalleITBS.Value;
              // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

              datos.ZdetalleITBIS2.Value := qpreciosPRECIO_C.Value;
            end;

            if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
            begin

              datos.ZdetallePRECIO.Value := qpreciosPRECIO_C.Value -
                (qpreciosPRECIO_C.Value * 0.18);
              datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
                datos.ZdetalleCANTIDAD.Value;
              datos.ZdetalleITBS.Value :=
                ((qpreciosPRECIO_C.Value *
                datos.ZdetalleCANTIDAD.Value) * 0.18);
              datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
                datos.ZdetalleITBS.Value;
              // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
              datos.ZdetalleITBIS2.Value := qpreciosPRECIO_C.Value;
              datos.ZdetalleITB3.Value := qpreciosPRECIO_C.Value;
            end;

          end
          else
          begin

            // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
            datos.ZdetalleITBS_ART.Value := 'N';
            datos.ZdetalleEX.Value := 'E';
            datos.ZdetallePRECIO.Value := qpreciosPRECIO_C.Value;
            datos.ZdetalleITBS.Value := 0.00;
            datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
              datos.ZdetallePRECIO.Value;
            datos.ZdetalleITB3.Value := qpreciosPRECIO_C.Value;
          end;

          // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
          datos.Zdetalle.First;

          while not datos.Zdetalle.Eof do
          begin
            suma := (suma + datos.Zdetalle.FieldByName('total').Value);
            // * data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
            // * data.ibtdetallefactCANTIDAD.AsInteger;
            datos.Zdetalle.Edit;
            datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
            datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

            // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
            // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
            datos.Zdetalle.Next;

          end;

          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_Factdescuento.Value := 0.00;
          datos.FbqMaster_FactPOGXITBS.Value := itbs;
          // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
          begin
            datos.FbqMaster_FactMONTO.Value := suma;

            if datos.FbqMaster_Factdescuento.Value = 0.00 then
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                datos.FbqMaster_FactMONTO.Value;
            end
            else
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                datos.FbqMaster_FactMONTO.Value -
                datos.FbqMaster_Factdescuento.Value;
            end;

          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
          begin
            datos.FbqMaster_FactMONTO.Value := suma - itbs;
            if datos.FbqMaster_Factdescuento.Value = 0.00 then
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                datos.FbqMaster_FactMONTO.Value + itbs;
            end
            else
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                (datos.FbqMaster_FactMONTO.Value -
                datos.FbqMaster_Factdescuento.Value) + itbs;
            end;

          end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
          begin
            datos.FbqMaster_FactMONTO.Value := suma - itbs;
            if datos.FbqMaster_Factdescuento.Value = 0.00 then
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                datos.FbqMaster_FactMONTO.Value + itbs;
            end
            else
            begin
              datos.FbqMaster_FactMONTOPAGO.Value :=
                (datos.FbqMaster_FactMONTO.Value -
                datos.FbqMaster_Factdescuento.Value) + itbs;
            end;

          end;

          PanelPrecios.Visible := FALSE;
          if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
          begin
            barra.SetFocus;
            barra.Clear;

          end
          else
          begin
            barra1.Clear;
            barra1.SetFocus;

          end;

        end;

      end;
    end;
  end;

end;

procedure TFrmNFact_normal.cxButton47Click(Sender: TObject);
begin

  if datos.FbqMaster_FactIDDR.Value = 2 then
  begin

    with ActualizaDetalle do
    begin
      close;
      sql.Clear;
      sql.Add('select * from actualizardetalle(:mastrid)');
      params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
      open;
    end;

    datos.Zdetalle.Refresh;

    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactNO_AUTORIZA_NCF.Value := 0;
    datos.FbqMaster_Factdireccion.Value := '';
    FrmNFact_normal.pnlEstado.Color := clWhite;
    FrmNFact_normal.pnlEstado.Caption := 'Factura Estandar';
    FrmNFact_normal.pnlEstado.Font.Color := clblack;

    pnlSolidaridad.Visible := FALSE;
    ShowMessage(' Factura actualizada');
  end
  else
  begin
    MsgInformacion
      ('Para aplicar esta función, esta factura debe ser enviada a HOLD y luego regresarla');
  end;

end;

procedure TFrmNFact_normal.cxButton48Click(Sender: TObject);
begin
  if datos.FbqMaster_Factdireccion.Value = 'SOLIDARIDAD' then
  begin

    if datos.FbqMaster_FactIDDR.Value = 2 then
    begin

      with ActualizaDetalleSolidaridad do
      begin
        close;
        sql.Clear;
        sql.Add('select * from ACTUALIZARSOLIDARIDAD(:mastrid)');
        params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
        open;
      end;

      datos.Zdetalle.Refresh;

      Totales;

      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactNO_AUTORIZA_NCF.Value := 1;
      datos.FbqMaster_Factdireccion.Value := 'SOLIDARIDAD';
      FrmNFact_normal.pnlEstado.Color := clTeal;
      FrmNFact_normal.pnlEstado.Caption := 'Factura Solidaridad';
      FrmNFact_normal.pnlEstado.Font.Color := clWhite;

      pnlSolidaridad.Visible := FALSE;
      ShowMessage(' Factura actualizada');
    end
    else
    begin
      MsgInformacion
        ('Para aplicar esta función, esta factura debe ser enviada a HOLD y luego regresarla');
    end;
  end
  else
  begin

    MsgInformacion(' Favor no olvidar llenar el formuluario de SOLIDADIRADAD');
  end;
end;

procedure TFrmNFact_normal.cxButton6Click(Sender: TObject);
var
  Cant: double;
  ancho1: double;
  alto1: double;
begin
  ancho1 := StrToFloat(ancho.text);
  alto1 := StrToFloat(alto.text);
  Cant := rounded(((ancho1 * alto1) / 144) * StrToInt(Edit6.text), 2);
  t3.text := floatToStr(Cant);
  Edit6.Clear;
  Panel1.Visible := FALSE;

end;

procedure TFrmNFact_normal.cxButton6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    t4.SetFocus;
  end;
end;

procedure TFrmNFact_normal.cxButton7Click(Sender: TObject);
var
  cero1: string;
  nume: Integer;
begin
  { if cxDBTextEdit4.Text = '' then
    BEGIN
    sHOWmeSSAGE('**Debes seleccionar el cliente**');
    END else begin
    if RxDBComboBox2.ItemIndex = 1 then
    begin
    cxDBTextEdit2.Clear;
    cxDBTextEdit7.Clear;
    end else begin
    try
    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactRNC_CLIENTE.Value := ibqclientescedula.Value;

    with ncf do
    begin
    close;
    sql.Clear;
    sql.Add('select * from ncf');
    sql.Add('where tipo =:tipo');

    if ibqclientesrengloncnf.Value ='Fiscal' then
    begin
    params[0].Value := 'FISCAL';
    end;

    if ibqclientesrengloncnf.Value ='Gubernamental' then
    begin
    params[0].Value := 'GOB';
    end;

    if ibqclientesrengloncnf.Value ='Consumido F.' then
    begin
    params[0].Value := 'FINAL';
    end;


    OPEN;
    end;

    nume := ncfdesde.Value + ncfuso.Value;

    if nume  >= 1 then
    begin
    cero1 := '000';
    end;

    if nume  >= 10 then
    begin
    cero1 := '00';
    end;

    if nume  >= 100 then
    begin
    cero1 := '0';
    end;

    if nume >= 1000 then
    begin
    cero1 := '';
    end;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactNCF.Value := ncfnuntext.Value +cero1+IntToStr(nume);
    finally

    end;

    end;

    end; }

end;

procedure TFrmNFact_normal.cxButton8Click(Sender: TObject);
begin
  medico.open;
  cxGrid7.Visible := TRUE;
  cxGrid7.SetFocus;
end;

procedure TFrmNFact_normal.BTArticulosClick(Sender: TObject);
begin
  if B1.Enabled = FALSE then
  begin

    FrmFindArticulos.PageArticulos.ActivePageIndex := 0;
    if datos.zuconfiguracionUSARRMA.Value = 1 then
    begin
      with QRMA do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo  from rmam a');
        sql.Add('left join cliente b on a.idcliente = b.codigo');
        sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =''INSTALADOR''');
        sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
        sql.Add('where a.estado =''Cerrado''');
        sql.Add('and a.monto > 0.00');
        sql.Add('and a.idmarca <> 1');
        open;

      end;
      FrmFindArticulos.PageArticulos.Pages[1].tabVisible := TRUE;
    end
    else if datos.zuconfiguracionUSARRMA.Value = 2 then
    begin

      FrmFindArticulos.PageArticulos.Pages[1].tabVisible := FALSE;
    end;

    // BuscarArticulos.Visible := true;

    FrmFindArticulos.Edit1.text := '';
    FrmFindArticulos.ShowModal;
    // datos.FbCategorias.open;

    with IbqRArticulos do
    begin
      close;
      sql.Clear;
      sql.Add('select FIRST 25 a.unidad,a.costo_pr, a.codigobarra,precio_c, a.comision,a.referencia, a.ubicacion, a.beneficios,a.precio_a, a.precio_b, a.precio_d, a.codigobarra, a.obs,');
      sql.Add('a.cod_art,upper(a.articulo) articulo,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.TIENECOMPACTIBILIDAD,');
      sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
      sql.Add('where a.condicion =:opp');

      sql.Add('group by a.unidad,a.precio_a, a.comision,a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,');
      sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.codigobarra, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3,  a.referencia,a.ubicacion, a.obs');
      params[0].Value := 'Productos';
      open;
    end;

  end;
end;

procedure TFrmNFact_normal.BTborrarClick(Sender: TObject);
begin

  if (datos.ZUconfiguracionGENERART.Value = 'SI') and
    (datos.fbqMaster_factsituacion.text = 'HOLD') then
  begin
    if FAutorizacion.ShowModal = mrOk then
    begin
      if datos.ZdetalleTOTAL.Value < 0.00 then
      begin

        with UpdateNC do
        begin
          close;
          sql.Clear;
          sql.Add('update mnoc set afecta_inv = 1');
          sql.Add('where mncid =:opp');
          params[0].Value := datos.ZdetalleMASTERID.Value;
          ExecSQL;
        end;

        with comisionCancelar do
        begin
          close;
          sql.Clear;
          sql.Add('delete from COMISIONINSTALADOR where id_fact =:opcion1');
          params[0].Value := datos.ZdetalleMASTERID.Value;
          ExecSQL;
        end;

      end;
      datos.Zdetalle.Delete;

      Totales;

      // datos.FbqMaster_Fact.Edit;
      // datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
      // datos.fbqmaster_factdescuento.Value := descc;
      // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
      // begin
      // datos.FbqMaster_FactMONTO.Value := suma;
      //
      // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
      // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
      // end else begin
      // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
      // end;
      //
      // end;
      //
      // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      // begin
      // datos.FbqMaster_FactMONTO.Value := suma - itbs;
      // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
      // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
      // end else begin
      // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
      // end;
      //
      // end;
      //
      // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      // begin
      // datos.FbqMaster_FactMONTO.Value := suma - itbs;
      // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
      // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
      // end else begin
      // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
      // end;
      //
      // end;

      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
      end
      else
      begin
        barra1.Clear;
      end;

      Nregistro := DBGrid1.Datasource.Dataset.RecordCount;
      Edit4.text := intTostr(Nregistro);
    end;

  end
  ELSE
  BEGIN

    if datos.ZdetalleTOTAL.Value < 0.00 then
    begin

      with UpdateNC do
      begin
        close;
        sql.Clear;
        sql.Add('update mnoc set afecta_inv = 1');
        sql.Add('where mncid =:opp');
        params[0].Value := datos.ZdetalleMASTERID.Value;
        ExecSQL;
      end;

      with comisionCancelar do
      begin
        close;
        sql.Clear;
        sql.Add('delete from COMISIONINSTALADOR where id_fact =:opcion1');
        params[0].Value := datos.ZdetalleMASTERID.Value;
        ExecSQL;
      end;

    end;
    datos.Zdetalle.Delete;

    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;
    // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
    datos.FbqMaster_Factdescuento.Value := descc;
    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma;

      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value;
      end;

    end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma - itbs;
      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;

    end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma - itbs;
      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;

    end;

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
    end
    else
    begin
      barra1.Clear;
    end;

    Nregistro := DBGrid1.Datasource.Dataset.RecordCount;
    Edit4.text := intTostr(Nregistro);
  END;

end;

procedure TFrmNFact_normal.BtBuscarPedidoClick(Sender: TObject);
begin
  FrmBuscarPedido.ShowModal;
end;

procedure TFrmNFact_normal.BTpedidoClick(Sender: TObject);
begin

  // no_factpedido := 0;
  // no_factpedido := datos.FbqMaster_FactNO_FACT.Value;
  // panel12.Visible := true;
  // QRUTA.Open;
end;

procedure TFrmNFact_normal.BTSerialClick(Sender: TObject);
begin

  if FrmSeries = nil then
  begin

    FrmSeries := tFrmSeries.create(self);
    FrmSeries.Edit1.text := datos.ZdetalleARTICULOID.text;
    FrmSeries.Edit2.text := datos.ZdetalleTITULOPRN.Value;
    FrmSeries.Edit3.text := datos.ZdetalleMASTERID.text;
    FrmSeries.ShowModal;
  end;
  datos.Series.open;

end;

procedure TFrmNFact_normal.BTTecnicoClick(Sender: TObject);
begin
  Panel13.Height := 276;
  Tecnicos.open;
end;

procedure TFrmNFact_normal.Button4Click(Sender: TObject);
var
  suma, itbs: Currency;
begin

  if cxDBCalcEdit3.text <> '' then
  begin
    datos.Zdetalle.Edit;
    if datos.ZdetalleITBS_ART.Value = 'S' then
    begin

      // PRECIO_C :=0.00;
      // PRECIO_C := (datos.ZdetalleITBS.Value  + DATOS.ZdetallePRECIO.Value) / datos.ZdetalleCANTIDAD.Value;
      // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
      // datos.ZdetalleITBS_ART.Value := 'S';
      // datos.ZdetalleEX.Value := '';

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
      begin
        datos.ZdetallePRECIO.Value := qpreciosPRECIO_D.Value;
        datos.ZdetalleITBS.Value := 0.00;
        // datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
          qpreciosCOSTO.Value;
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      begin
        datos.ZdetallePRECIO.Value := qpreciosCOSTO.Value *
          datos.ZdetalleCANTIDAD.Value;
        datos.ZdetalleITBS.Value := datos.ZdetallePRECIO.Value *
          (datos.ZUconfiguracionITBIS.Value / 100);
        datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value +
          datos.ZdetalleITBS.Value;
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      begin

        datos.ZdetallePRECIO.Value := qpreciosCOSTO.Value;
        datos.ZdetalleITBS.Value :=
          (qpreciosCOSTO.Value * datos.ZdetalleCANTIDAD.Value) *
          (StrToFloat(Edit14.text) / 100);
        datos.ZdetalleTOTAL.Value :=
          (qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) +
          datos.ZdetalleITBS.Value;
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
      end;

    end
    else
    begin

      // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
      datos.ZdetalleITBS_ART.Value := 'N';
      datos.ZdetalleEX.Value := 'E';
      datos.ZdetallePRECIO.Value := qpreciosCOSTO.Value;
      datos.ZdetalleITBS.Value := 0.00;
      datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
        datos.ZdetallePRECIO.Value;
    end;

    // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
    datos.Zdetalle.First;

    while not datos.Zdetalle.Eof do
    begin
      suma := (suma + datos.Zdetalle.FieldByName('total').Value);
      // * data.ibtdetallefactCANTIDAD.AsInteger;
      itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
      // * data.ibtdetallefactCANTIDAD.AsInteger;
      datos.Zdetalle.Edit;
      datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
      datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

      // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
      // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
      datos.Zdetalle.Next;

    end;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factdescuento.Value := 0.00;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;
    // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma;

      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value;
      end;

    end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma - itbs;
      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;

    end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma - itbs;
      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;

    end;

    PanelPrecios.Visible := FALSE;
    barra.SetFocus;

  end;
  PanelPrecios.Visible := FALSE;
  barra.SetFocus;

end;

procedure TFrmNFact_normal.fraccional;
VAR
  suma: Currency;
  itbs: Currency;
  Stexto: string;
begin

  IF (t4.Value < FraccionadoPRECIO1.Value) OR
    (t4.Value > FraccionadoPRECIO2.Value) then
  BEGIN
    ShowMessage('** No esta autorizado para este PRECIO **');
    t4.SetFocus;
  END
  ELSE
  BEGIN

    with Ibqigual do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.articulo, c.unidad from detailfact a');
      sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
      sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
      sql.Add('where a.masterid =:ppp');
      sql.Add('and a.cod_art =:ppp2');
      sql.Add('and a.precio =:ppp3');
      params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
      params[1].Value := t1.text;
      params[2].Value := t4.Value;
      open;
    end;

    if Ibqigual.RecordCount = 1 then
    begin

      datos.Zdetalle.locate('masterid;cod_art',
        varArrayof([datos.FbqMaster_FactNO_FACT.Value, t1.text]), []);
      datos.Zdetalle.Edit;

      if ChkPrecio.Checked = FALSE then
      begin
        datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value +
          StrToFloat(t3.text);
      end
      else if ChkPrecio.Checked = TRUE then
      begin
        datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value +
          Redondear_A((StrToFloat(t3.text) / t4.Value), 2);
      end;

      if Edit8.text = 'Si' then
      begin

        datos.ZdetalleITBS_ART.Value := 'S';
        datos.ZdetalleEX.Value := '';

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
        begin
          datos.ZdetallePRECIO.Value := (t4.Value);
          datos.ZdetalleITBS.Value := 0.00;
          // datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
          datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
        begin
          datos.ZdetallePRECIO.Value := (t4.Value);
          datos.ZdetalleITBS.Value := datos.ZdetallePRECIO.Value *
            (StrToFloat(Edit14.text) / 100);
          datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * t4.Value)
            + datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
        begin
          datos.ZdetallePRECIO.Value := (t4.Value) -
            (t4.Value * (StrToFloat(Edit14.text) / 100));
          datos.ZdetalleITBS.Value := t4.Value *
            (StrToFloat(Edit14.text) / 100);
          datos.ZdetalleTOTAL.Value :=
            (datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value) +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        end;

      end
      else
      begin

        datos.ZdetalleITBS_ART.Value := 'N';
        datos.ZdetalleEX.Value := 'E';
        datos.ZdetallePRECIO.Value := t4.Value;
        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
      // datos.zdetalle.First;

      // SHOWMESSAGE('NO EXPRESS');

      while not datos.Zdetalle.Eof do
      begin
        suma := (suma + datos.Zdetalle.FieldByName('total').Value);
        // * data.ibtdetallefactCANTIDAD.AsInteger;
        datos.Zdetalle.Edit;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
        datos.Zdetalle.Next;

      end;

      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_Factdescuento.Value := 0.00;
      datos.FbqMaster_FactPOGXITBS.Value := 0.00;
      // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
      datos.FbqMaster_FactMONTO.Value := suma;

      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value;
      end;

      t1.Clear;
      // t2.Clear;
      t3.Clear;
      t4.Clear;
      ancho.Clear;
      Edit9.Clear;
      alto.Clear;
      Edit8.Clear;
      topcion.Clear;
      cxButton9.Enabled := FALSE;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
      end
      else
      begin
        // cxButton10.SetFocus;
      end;
      calcular.Enabled := FALSE;

    end
    else
    begin
      // ****
      with numero_detalle do
      begin
        close;
        sql.Clear;
        sql.Add('select max(no_fact) from detailfact');
        open;
      end;

      datos.Zdetalle.Insert;
      datos.ZdetalleNO_FACT.Value := numero_detalleMAX.Value + 1;
      datos.ZdetalleCANTIDAD.Value := StrToFloat(t3.text);
      datos.ZdetalleALTO.Value := datos.ZdetalleCANTIDAD.Value;
      Stexto := t1.text;
      datos.ZdetalleUNID.Value := lunidad.text;

      // datos.ZdetalleUNIDADID.Value := StrToInt(edit9.Text);

      datos.ZdetalleITBS.Value := 0.00;
      datos.Zdetallecod_art.Value := t1.text;
      datos.ZdetalleBARRA.Value := barra.text;
      datos.ZdetalleCOMBO.Value := topcion.text;
      // datos.ZdetalleARTICULO.Value  := t2.Text;
      datos.ZdetalleARTICULO.Value := t2.text;
      datos.ZdetalleTITULOPRN.Value := t2.text;

      if linea.text = 'MOD' then
      BEGIN
        datos.Zdetallecod_art.Value := t1.text;
        datos.ZdetalleARTICULOID.Value := StrToInt(t1.text);
        linea.Clear;
      END
      ELSE
      BEGIN

        datos.Zdetallecod_art.Value := t1.text;
        datos.ZdetalleARTICULOID.Value := StrToInt(t1.text);
        linea.Clear;

        { if tOPCION.Text = 'COM' then BEGIN
          datos.Zdetallecod_art.Value := T1.Text;
          datos.ZdetalleARTICULOID.value :=StrToInt(COPY(stexto,2,5));
          LINEA.Clear;
          END; }

      end;
      if Edit8.text = 'Si' then
      begin
        datos.ZdetalleITBS_ART.Value := 'S';
        datos.ZdetalleEX.Value := '';

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
        begin
          datos.ZdetallePRECIO.Value := (t4.Value);
          datos.ZdetalleITBS.Value := 0.00;
          // datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
          datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
        begin
          datos.ZdetallePRECIO.Value := (t4.Value);
          datos.ZdetalleITBS.Value := datos.ZdetallePRECIO.Value *
            (StrToFloat(Edit14.text) / 100);
          datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * t4.Value)
            + datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
        begin
          datos.ZdetallePRECIO.Value := (t4.Value) -
            (t4.Value * (StrToFloat(Edit14.text) / 100));
          datos.ZdetalleITBS.Value := t4.Value *
            (StrToFloat(Edit14.text) / 100);
          datos.ZdetalleTOTAL.Value :=
            (datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value) +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        end;

      end
      else
      begin
        datos.ZdetalleITBS_ART.Value := 'N';
        datos.ZdetalleEX.Value := 'E';
        datos.ZdetallePRECIO.Value := t4.Value;
        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;
      end;

      // datos.Zdetalle.Refresh;
      datos.Zdetalle.First;

      // SHOWMESSAGE('NO EXPRESS');

      while not datos.Zdetalle.Eof do
      begin
        suma := (suma + datos.Zdetalle.FieldByName('total').Value);
        // * data.ibtdetallefactCANTIDAD.AsInteger;
        itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
        // * data.ibtdetallefactCANTIDAD.AsInteger;
        datos.Zdetalle.Edit;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
        datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
        datos.Zdetalle.Next;
      end;

      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_Factdescuento.Value := 0.00;
      datos.FbqMaster_FactPOGXITBS.Value := itbs;
      // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
      datos.FbqMaster_FactMONTO.Value := suma;

      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value;
      end;

      t1.Clear;
      t2.Clear;
      t3.Clear;
      t4.Clear;
      ancho.Clear;
      Edit9.Clear;
      alto.Clear;
      Edit8.Clear;
      topcion.Clear;
      cxButton9.Enabled := FALSE;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
      end
      else
      begin
        // cxButton10.SetFocus;
      end;
      calcular.Enabled := FALSE;

    end;
  END;

end;

procedure TFrmNFact_normal.Image10Click(Sender: TObject);
begin
  cxButton11.Click;
end;

procedure TFrmNFact_normal.Image11Click(Sender: TObject);
begin
  cxButton5.Click;
end;

procedure TFrmNFact_normal.Image12Click(Sender: TObject);
begin
  B4.Click;
end;

procedure TFrmNFact_normal.Image13Click(Sender: TObject);
begin
  cxButton4.Click;
end;

procedure TFrmNFact_normal.Image14Click(Sender: TObject);
begin
  B1.Click;
end;

procedure TFrmNFact_normal.Image1Click(Sender: TObject);
begin
  SpeedButton2.Click;
end;

procedure TFrmNFact_normal.Image3Click(Sender: TObject);
begin
  BTpedido.Click;
end;

procedure TFrmNFact_normal.Image4Click(Sender: TObject);
begin
  begin
    if bExpandir then
      pnl_Menu_Lateral.Width := 41
    else
      pnl_Menu_Lateral.Width := 217;

    bExpandir := not bExpandir;
  end;
end;

procedure TFrmNFact_normal.Image7Click(Sender: TObject);
begin
  BtnPrintConduce.Click;
end;

procedure TFrmNFact_normal.Image8Click(Sender: TObject);
begin
  BtDelivery.Click;
end;

procedure TFrmNFact_normal.Image9Click(Sender: TObject);
begin
  BtnConduce.Click;
end;

procedure TFrmNFact_normal.imprimeconduce;
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
  SIZEFONT, FONTBOLD, FONTNORMAL, SIZENORMAL, pcant: string;

begin

  fechaFA := Now;
  horaFA := Time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  // VerificaCampos(Sender);

  // Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

  // Se nenhum campo está em branco, grava o cupom
  // GravaCupons(Sender);

  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try

      IniFile := ChangeFileExt(Application.ExeName, '.ini');

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
      pcant := ReadString_Ini(IniFile, 'IMPRESION', 'pcant', '');
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
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;


  // longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    INICIARPRINT);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    SIZEFONT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.ZUconfiguracion.FieldByName('EMPRESA')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    FONTNORMAL);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.ZUconfiguracion.FieldByName('CALLE')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.ZUconfiguracion.FieldByName('SECTOR')
    .asstring + ', ' + datos.ZUconfiguracion.FieldByName('CIUDAD').asstring),
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('TEL. :' + datos.ZUconfiguracion.FieldByName
    ('TELEFONO').asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('RNC:' + datos.ZUconfiguracion.FieldByName('RNC')
    .asstring), StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    SIZEFONT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('C O N D U C E', StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    FONTNORMAL);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.FbqMaster_Fact.FieldByName('NCF_NOMBRE')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('NCF:' + datos.FbqMaster_Fact.FieldByName('NCF')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('VENTA DE CONTADO'), StrToInt(longitud)));
  if StrToInt(longitud) < 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('-----------------------------------', StrToInt(longitud), 0));
  end;

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '          ' +
      'HORA:' + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA :' + DATETOSTR(fechaFA) + ' ' + 'HORA:' +
      TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('No Fact: ' + datos.FbqMaster_Fact.FieldByName
    ('numero_factura').asstring), StrToInt(longitud), 0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));

  if datos.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('RNC CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
      ('RNC_CLIENTE').Value), StrToInt(longitud), 0));
  end;

  if datos.FbqMaster_Factdireccion.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('DIRECCION  :' + datos.FbqMaster_Fact.FieldByName
      ('DIRECCION').Value), StrToInt(longitud), 0));
  end;
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('PRODUCTO..........................', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('CANT', StrToInt(campol), 0) + espacios('PRECIO',
    StrToInt(campoC2), 0) + espacios('ITBIS', StrToInt(campoC2), 0) +
    espacios('TOTAL', StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  with datos.Zdetalle do
  begin
    First;
    while not Eof do
    begin
      if datos.ZdetalleITBS.Value > 0.00 then
      begin
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName
          ('TITULOPRN').asstring), 0, 35), StrToInt(longitud), 0));

      end
      else
      begin
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName('EX')
          .asstring + '  ' + datos.Zdetalle.FieldByName('TITULOPRN').asstring),
          0, StrToInt(longitud)), StrToInt(longitud), 0));

      end;
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if datos.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      END;

      Next;
    end;
  end;

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('MONTO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('descuento').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('POGXITBS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('ITEMS :   ' + CUANTOSCOUNT.text, StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.FbqMaster_Fact.FieldByName('observaciones').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('' + datos.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + datos.FbqMaster_Factcajero.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('----------------------------------', StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('.', StrToInt(longitud), 0));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    TEXTCORTE);


  // with printer do
  // begin
  //
  // PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
  // r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
  // BeginDoc;
  // Canvas.Brush.Style := bsClear;
  // for i := 0 to Memo1.Lines.Count do
  // Canvas.TextOut(100,100 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
  // Memo1.Lines.Strings[i]);
  // Canvas.Brush.Color := clBlack;
  //
  // EndDoc;
  // end;

end;

procedure TFrmNFact_normal.ImprimeCopia;
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
  horaFA := Time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  // VerificaCampos(Sender);

  // Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

  // Se nenhum campo está em branco, grava o cupom
  // GravaCupons(Sender);

  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try
      IniFile := ChangeFileExt(Application.ExeName, '.ini');

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
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;

  // longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    INICIARPRINT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    SIZEFONT);

  // WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
  // WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('EMPRESA').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    FONTNORMAL);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('DIRECCION').Value,
    StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('TEL. :' + datos.ZUconfiguracion.FieldByName('TELEFONO').Value
    + '/  RNC:' + datos.ZUconfiguracion.FieldByName('RNC').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('FACTURA', StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.FbqMaster_Fact.FieldByName('NCF_NOMBRE')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('NCF:' + datos.FbqMaster_Fact.FieldByName('NCF')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('VENTA DE CONTADO (C O P I A)'),
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '    ' + 'HORA: ' +
    TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('No Fact: ' + datos.FbqMaster_Fact.FieldByName
    ('numero_factura').asstring), StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('---------------------------------------', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));

  if datos.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('RNC CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
      ('RNC_CLIENTE').Value), StrToInt(longitud), 0));
  end;

  if datos.FbqMaster_Factdireccion.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('DIRECCION  :' + datos.FbqMaster_Fact.FieldByName
      ('DIRECCION').Value), StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('CANT', StrToInt(campol), 0) + espacios('PRODUCTO',
    StrToInt(campoC1), 0) + espacios('ITBIS', StrToInt(campoC2), 0) +
    espacios('PRECIO', StrToInt(campoC2), 0) + espacios('TOTAL',
    StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('------------------------------------------',
    StrToInt(longitud), 0));

  with datos.Zdetalle do
  begin
    First;
    while not Eof do
    begin

      WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('cantidad')
        .Value), StrToInt(campol), 0) +
        espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName('ARTICULO')
        .asstring), 0, 36), StrToInt(longitud), 0));

      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if datos.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(MyTextReplace(datos.Zdetalle.FieldByName('EX')
          .asstring), StrToInt(EX), 0) + espacios(MyTextReplace(''),
          StrToInt(ESPACIOA), 0) + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 0) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('total').Value), StrToInt(PTOTAL), 1) + ''
          + espacios('', StrToInt(Dcampof), 0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(MyTextReplace(datos.Zdetalle.FieldByName('EX')
          .asstring), StrToInt(EX), 0) + espacios(MyTextReplace(''),
          StrToInt(ESPACIOA), 0) + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 0) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('total').Value), StrToInt(PTOTAL), 1) + ''
          + espacios('', StrToInt(Dcampof), 0));

      END;

      Next;
    end;
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('------------------------------------------',
    StrToInt(longitud), 0));

  if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('MONTO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('descuento').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('POGXITBS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('ITEMS :   ' + CUANTOSCOUNT.text, StrToInt(longitud), 0));

  if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('BONOS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('BONOS')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),
      StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.FbqMaster_Fact.FieldByName('observaciones').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('' + datos.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + datos.FbqMaster_FactNOMBRES_EMP.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('----------------------------------', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  with Printer do
  begin

    PrinterIndex := GetImpresora(datos.ZUconfiguracion.FieldByName
      ('CONTACTO').Value);
    r := Rect(100, 100, (Pagewidth - 100), (PageHeight - 100));
    BeginDoc;
    Canvas.Brush.Style := bsClear;
    for i := 0 to Memo1.Lines.Count do
      Canvas.TextOut(100, 180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
        Memo1.Lines.Strings[i]);
    Canvas.Brush.Color := clblack;

    EndDoc;
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    INICIARPRINT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    TEXTCORTE);

end;

procedure TFrmNFact_normal.ImprimeCotiza;
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
  SIZEFONT, FONTBOLD, FONTNORMAL, SIZENORMAL, pcant: string;

begin

  fechaFA := Now;
  horaFA := Time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  // VerificaCampos(Sender);

  // Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

  // Se nenhum campo está em branco, grava o cupom
  // GravaCupons(Sender);

  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try

      IniFile := ChangeFileExt(Application.ExeName, '.ini');

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
      pcant := ReadString_Ini(IniFile, 'IMPRESION', 'pcant', '');
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
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;


  // longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    INICIARPRINT);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    SIZEFONT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.ZUconfiguracion.FieldByName('EMPRESA')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    FONTNORMAL);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.ZUconfiguracion.FieldByName('CALLE')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.ZUconfiguracion.FieldByName('SECTOR')
    .asstring + ', ' + datos.ZUconfiguracion.FieldByName('CIUDAD').asstring),
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('TEL. :' + datos.ZUconfiguracion.FieldByName
    ('TELEFONO').asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('RNC:' + datos.ZUconfiguracion.FieldByName('RNC')
    .asstring), StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    SIZEFONT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('C O T I Z A C I O N', StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    FONTNORMAL);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('VENTA DE CONTADO'), StrToInt(longitud)));
  if StrToInt(longitud) < 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('-----------------------------------', StrToInt(longitud), 0));
  end;

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '          ' +
      'HORA:' + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA :' + DATETOSTR(fechaFA) + ' ' + 'HORA:' +
      TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('No Cotizacion: ' + datos.FbqMaster_Fact.FieldByName
    ('numero_factura').asstring), StrToInt(longitud), 0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));

  if datos.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('RNC CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
      ('RNC_CLIENTE').Value), StrToInt(longitud), 0));
  end;

  if datos.FbqMaster_Factdireccion.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('DIRECCION  :' + datos.FbqMaster_Fact.FieldByName
      ('DIRECCION').Value), StrToInt(longitud), 0));
  end;
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('PRODUCTO..........................', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('CANT', StrToInt(campol), 0) + espacios('PRECIO',
    StrToInt(campoC2), 0) + espacios('ITBIS', StrToInt(campoC2), 0) +
    espacios('TOTAL', StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  with datos.Zdetalle do
  begin
    First;
    while not Eof do
    begin
      if datos.ZdetalleITBS.Value > 0.00 then
      begin
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName
          ('TITULOPRN').asstring), 0, 35), StrToInt(longitud), 0));

      end
      else
      begin
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName('EX')
          .asstring + '  ' + datos.Zdetalle.FieldByName('TITULOPRN').asstring),
          0, StrToInt(longitud)), StrToInt(longitud), 0));

      end;
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if datos.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      END;

      Next;
    end;
  end;

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('MONTO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('descuento').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('POGXITBS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('ITEMS :   ' + CUANTOSCOUNT.text, StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.FbqMaster_Fact.FieldByName('observaciones').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('' + datos.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + datos.FbqMaster_Factcajero.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('----------------------------------', StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('.', StrToInt(longitud), 0));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    TEXTCORTE);


  // with printer do
  // begin
  //
  // PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
  // r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
  // BeginDoc;
  // Canvas.Brush.Style := bsClear;
  // for i := 0 to Memo1.Lines.Count do
  // Canvas.TextOut(100,100 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
  // Memo1.Lines.Strings[i]);
  // Canvas.Brush.Color := clBlack;
  //
  // EndDoc;
  // end;

end;

procedure TFrmNFact_normal.nofraccional_varios;
VAR
  suma: Currency;
  itbs: Currency;
  Stexto: string;
begin

  //
  // IF (precio_varios.Value <  0.00) THEN//ibqrARticulosprecio_d.Value) OR (T4.Value > ibqrARticulosprecio_A.Value)  then
  // BEGIN
  // ShowMEssage('** No esta autorizado para este PRECIO **');
  // precio_varios.SetFocus;
  // END ELSE BEGIN
  //
  //
  /// /datos.Zdetalle.Open;
  //
  // with ibqigual do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.*, b.articulo, c.unidad from detailfact a');
  // sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
  // sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
  // sql.Add('where a.masterid =:ppp');
  // sql.Add('and a.cod_art =:ppp2');
  // sql.Add('and a.precio =:ppp3');
  // params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
  // params[1].Value := cod_varios.Text;
  // params[2].Value := precio_varios.text;
  // open;
  // end;
  //
  //
  // if ibqigual.RecordCount = 1 then
  // begin
  //
  // datos.Zdetalle.locate('masterid;cod_art',varArrayof([datos.FbqMaster_FactNO_FACT.Value,cod_varios.text]),[]);
  //
  // datos.Zdetalle.Edit;
  //
  // if ChkPrecio.Checked = false then
  // begin
  // datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + StrToFloat(cantidad_varios.Text);
  // end else if chkprecio.Checked = true then
  // begin
  // datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + Redondear_A((StrToFloat(cantidad_varios.Text) / precio_varios.Value),2);
  // end;
  //
  // if edit8.Text ='Si' then
  // begin
  //
  // datos.ZdetalleITBS_ART.Value := 'S';
  // datos.ZdetalleEX.Value := '';
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
  // begin
  //
  // datos.ZdetallePRECIO.Value :=(precio_varios.Value);
  // datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
  // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * precio_varios.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
  // begin
  // datos.ZdetallePRECIO.Value :=(precio_varios.Value);
  // datos.ZdetalleITBS.Value  := datos.ZdetallePRECIO.Value * (strtofloat(edit14.Text)/100);
  // datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * precio_varios.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
  // begin
  // datos.ZdetallePRECIO.Value :=(precio_varios.Value )-(precio_varios.Value*(strtofloat(edit14.Text)/100));
  // datos.ZdetalleITBS.Value  := precio_varios.Value * (strtofloat(edit14.Text)/100);
  // datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value) + (datos.ZdetalleITBS.Value * datos.ZdetalleCANTIDAD.Value);//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
  // end;
  //
  // end else begin
  // datos.ZdetalleITBS_ART.Value := 'N';
  // datos.ZdetalleEX.Value := 'E';
  // datos.ZdetallePRECIO.Value    := precio_varios.Value;
  // datos.ZdetalleITBS.Value      := 0.00;
  // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * precio_varios.Value;
  // end;
  //
  // // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
  // datos.zdetalle.First;
  //
  // while not datos.zdetalle.Eof do
  // begin
  // suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
  // datos.zdetalle.Edit;
  // datos.zdetalletotal.Value := datos.zdetalletotal.Value;
  //
  // // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
  // // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
  // datos.zdetalle.Next;
  //
  // end;
  //
  //
  // datos.FbqMaster_Fact.Edit;
  // datos.FbqMaster_Factdescuento.Value := 0.00;
  // datos.FbqMaster_FactPOGXITBS.Value := 0.00;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  // datos.FbqMaster_FactMONTO.Value := suma;
  //
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
  // end else begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
  // end;
  // t1.clear;
  // t2.Clear;
  // t3.Clear;
  // t4.Clear;
  // ancho.Clear;
  // edit9.Clear;
  // alto.Clear;
  // edit8.Clear;
  // Topcion.Clear;
  // cantidad_varios.Clear;
  // precio_varios.Clear;
  // cxButton9.Enabled := false;
  // panel_varios.Visible := false;
  //
  // if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  // begin
  // barra.SetFocus;
  // end else begin
  // cxButton10.SetFocus;
  // end;
  // calcular.Enabled := false;
  //
  // end else begin
  //
  //
  // with numero_detallegen do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
  // open;
  // end;
  //
  // //Showmessage(''+IntTostr(numero_detallegengen_id.Value));
  //
  // datos.Zdetalle.insert;
  // datos.ZdetalleNO_FACT.Value := numero_detallegengen_id.Value;
  //
  //
  // datos.ZdetalleCANTIDAD.Value := StrToFloat(t3.Text);
  // datos.Zdetallealto.Value :=  datos.ZdetalleCANTIDAD.Value;
  // stexto := cod_varios.text;
  // datos.ZdetalleUNID.Value := lunidad.Text;
  // datos.ZdetalleUNIDADID.Value := StrToInt(edit9.Text);
  //
  /// /if ibqrArticuloscod_cat.Value = 1 then begin
  /// /   if edit12.Text ='' then begin
  /// /    almacenes.Open;
  /// /    cxgrid8.Visible := true;
  /// /    cxgrid8.SetFocus;
  /// /   end else begin
  /// /     datos.ZdetalleIDALMACEN.Value := almacenesid.Value;
  /// /   end;
  /// /end;
  //
  /// / datos.ZdetalleCANTIDAD.Value := StrToFloat(cantidad_varios.Text);
  /// /
  /// /
  /// /    datos.ZdetalleITBS.Value      := 0.00;
  /// /    datos.ZdetalleCOD_ART.Value   := cod_Varios.text;
  /// /
  /// /    datos.ZdetalleCOMBO.Value     := Topcion.Text;
  /// /    datos.ZdetalleARTICULO.Value  := articulo_varios.text;
  /// /    datos.ZdetalleTITULOPRN.Value := articulo_varios.text;
  /// /    datos.ZdetalleBARRA.Value     := barra.Text;
  //
  /// /
  /// /
  /// /if LINEA.Text = 'MOD' then
  /// /  BEGIN
  /// /
  /// /    datos.Zdetallecod_art.Value := cod_varios.text;
  /// /    datos.ZdetalleARTICULOID.value :=StrToINt(cod_varios.text);
  /// /    LINEA.Clear;
  /// /
  /// /  END ELSE BEGIN
  /// /
  /// / datos.Zdetallecod_art.Value    :=  cod_varios.text;
  /// / datos.ZdetalleARTICULOID.value :=  StrToINt(cod_varios.Text);
  /// / LINEA.Clear;
  /// /
  /// /
  /// /{if tOPCION.Text = 'COM' then BEGIN
  /// /  datos.Zdetallecod_art.Value := T1.Text;
  /// /  datos.ZdetalleARTICULOID.value :=StrToInt(COPY(stexto,2,5));
  /// /  LINEA.Clear;
  /// /END;}
  /// /end;
  /// /
  /// /
  /// /    if edit8.Text ='Si' then
  /// /      begin
  /// /
  /// /         datos.ZdetalleITBS_ART.Value := 'S';
  /// /         datos.ZdetalleEX.Value := '';
  /// /
  /// /
  /// /         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
  /// /           begin
  /// /
  /// /             datos.ZdetallePRECIO.Value :=(precio_varios.Value);
  /// /             datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
  /// /              datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * precio_varios.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
  /// /           end;
  /// /
  /// /          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
  /// /           begin
  /// /
  /// /             datos.ZdetallePRECIO.Value :=(precio_varios.Value);
  /// /             datos.ZdetalleITBS.Value   := datos.ZdetallePRECIO.Value * (strtofloat(edit14.Text)/100);
  /// /             datos.ZdetalleTOTAL.Value  := (datos.ZdetalleCANTIDAD.Value * precio_varios.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
  /// /           end;
  /// /
  /// /        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
  /// /           begin
  /// /
  /// /
  /// /             datos.ZdetallePRECIO.Value :=(precio_varios.Value * datos.ZdetalleCANTIDAD.Value )-((precio_varios.Value * datos.ZdetalleCANTIDAD.Value)*(strtofloat(edit14.Text)/100));
  /// /             datos.ZdetalleITBS.Value  := (precio_varios.Value * datos.ZdetalleCANTIDAD.Value) * (strtofloat(edit14.Text)/100);
  /// /             datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
  /// /           end;
  /// /
  /// /      end else begin
  /// /
  /// /         datos.ZdetalleITBS_ART.Value  := 'N';
  /// /         datos.ZdetalleEX.Value        := 'E';
  /// /         datos.ZdetallePRECIO.Value    := precio_varios.Value;
  /// /         datos.ZdetalleITBS.Value      := 0.00;
  /// /         datos.ZdetalleTOTAL.Value     := datos.ZdetalleCANTIDAD.Value * precio_varios.Value;
  /// /      end;
  /// /
  /// /
  /// /
  /// ///datos.Zdetalle.Refresh;
  /// /datos.zdetalle.First;
  /// /
  /// /    while not datos.zdetalle.Eof do
  /// /         begin
  /// /            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
  /// /            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
  /// /            datos.zdetalle.Edit;
  /// /            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
  /// /            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
  /// /
  /// /        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
  /// /        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
  /// /         datos.zdetalle.Next;
  /// /
  /// /   end;
  /// /
  /// /
  /// /datos.FbqMaster_Fact.Edit;
  /// /datos.FbqMaster_Factdescuento.Value := 0.00;
  /// /datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  /// /
  /// /if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
  /// /           begin
  /// /               datos.FbqMaster_FactMONTO.Value := suma;
  /// /
  /// /               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  /// /                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
  /// /               end else begin
  /// /                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
  /// /               end;
  /// /
  /// /           end;
  /// /
  /// /if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
  /// /           begin
  /// /               datos.FbqMaster_FactMONTO.Value := suma - itbs;
  /// /               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  /// /                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
  /// /                  end else begin
  /// /                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
  /// /                  end;
  /// /
  /// /           end;
  /// /
  /// /if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
  /// /           begin
  /// /               datos.FbqMaster_FactMONTO.Value := suma - itbs;
  /// /               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  /// /                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
  /// /                  end else begin
  /// /                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
  /// /                  end;
  /// /
  /// /           end;
  /// /
  //
  //
  //
  //
  // t1.clear;
  // t2.Clear;
  // t3.Clear;
  // t4.Clear;
  // ancho.Clear;
  // edit9.Clear;
  // alto.Clear;
  // edit8.Clear;
  // Topcion.Clear;
  // precio_varios.Clear;
  // cantidad_varios.Clear;
  // panel_varios.Visible := false;
  //
  // cxButton9.Enabled := false;
  //
  // if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  // begin
  // barra.SetFocus;
  // end else begin
  // cxButton10.SetFocus;
  // end;
  // calcular.Enabled := false;
  // end;
  // END;
end;

procedure TFrmNFact_normal.offMenu;
begin
  if bExpandir then
    pnl_Menu_Lateral.Width := 41
  else
    pnl_Menu_Lateral.Width := 217;

  bExpandir := not bExpandir;

end;

procedure TFrmNFact_normal.OpCuandoClick(Sender: TObject);
begin

  if OpCuando.ItemIndex = 0 then
  begin

    with FacturasImpresas do
    begin
      // Close;
      // sql.Clear;
      // sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
      // sql.Add('left join cliente b On a.clienteid = b.codigo');
      // sql.Add('left join musuario c On a.codven = c.usuarioid');
      // sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
      // sql.Add('where a.situacion  =:opcion2');
      // sql.Add('and a.condicion =:OPCION4');
      // sql.Add('AND A.ROTULO =:OPCION5');
      // // sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
      // sql.Add('and a.fecha_fac >=:fechas');
      //
      //
      // Params[0].Value := 'IMPRESA';
      // Params[1].Value := 'ACTIVA';
      // Params[2].Value := 'FACTURACION';
      //
      // params[3].Value := now();
      //
      // open;

    end;
  end;

  if OpCuando.ItemIndex = 1 then
  begin
    // with facturasIMPRESAS do
    // begin
    // Close;
    // sql.Clear;
    // sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    // sql.Add('left join cliente b On a.clienteid = b.codigo');
    // sql.Add('left join musuario c On a.codven = c.usuarioid');
    // sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    // sql.Add('where a.situacion  =:opcion2');
    // sql.Add('and a.condicion =:OPCION4');
    // sql.Add('AND A.ROTULO =:OPCION5');
    // //   sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
    //
    // Params[0].Value := 'IMPRESA';
    // Params[1].Value := 'ACTIVA';
    // Params[2].Value := 'FACTURACION';
    //
    // open;

    // end;
  end;
end;

procedure TFrmNFact_normal.nofraccional;
VAR

  Stexto: string;

  comision: double;
  Nregistro: Integer;
  ITBArticulos: Integer;
  ITBDeducible: String;
  IDD: double;
begin

  IF (t4.Value < 0.00) and (Edit1.text <> 'NC001') THEN
  // ibqrARticulosprecio_d.Value) OR (T4.Value > ibqrARticulosprecio_A.Value)  then
  BEGIN
    ShowMessage('** No esta autorizado para este PRECIO **');
    t4.SetFocus;
  END
  ELSE
  BEGIN

    try

      with numero_detallegen do
      begin
        close;
        sql.Clear;
        sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
        open;
      end;

      datos.Zdetalle.append;
      datos.ZdetalleNO_FACT.Value := numero_detallegenGEN_ID.Value;

      datos.ZdetalleCANTIDAD.Value := StrToFloat(t3.text);
      datos.ZdetalleALTO.Value := StrToFloat(t3.text);

      Stexto := t1.text;
      datos.ZdetalleUNID.Value := lunidad.text;

      if Edit17.text <> '' then
      begin
        datos.ZdetalleIDTECNICO.Value := tecnico;
        Edit17.Clear;
      end;

      datos.ZdetalleITBS.Value := 0.00;
      datos.ZdetalleCOMBO.Value := topcion.text;
      datos.ZdetalleTITULOPRN.Value := t2.text;
      datos.ZdetalleARTICULO.Value := t2.text;
      datos.zdetalledesc.Value := 0.00;
      datos.ZdetalleNO_FACT1.Value := NCnumero.text;

      if edtPorcentDesc.text = '' then
      begin
        datos.ZdetallePORCENTDESC.Value := 0.00;
      end
      else
      begin
        datos.ZdetallePORCENTDESC.Value := StrToFloat(edtPorcentDesc.text);
      end;

      if (FactExistencia > 0) and (FactExistencia > 0) then
      begin
        datos.Zdetalleexist1.Value := FactExistencia;
      end;

      if (FactExistencia > 0) and (FactExistencia <= 0) then
      begin
        datos.Zdetalleexist1.Value := FactExistencia;
      end;

      if (FactExistencia <= 0) and (FactExistencia2 > 0) then
      begin
        datos.Zdetalleexist1.Value := FactExistencia2;
      end;

      datos.ZdetalleLINEA.Value := 1;

      if linea.text = 'MOD' then
      BEGIN
        datos.Zdetallecod_art.Value := t1.text;
        datos.ZdetalleARTICULOID.Value := StrToInt(t1.text);
        linea.Clear;
      END;

      if linea.text = 'ART' THEN
      BEGIN

        datos.Zdetallecod_art.Value := t1.text;
        datos.ZdetalleARTICULOID.Value := StrToInt(t1.text);
      END;

      if linea.text = 'RMA' THEN
      BEGIN

        datos.Zdetallecod_art.Value := t1.text;
        datos.ZdetalleARTICULOID.Value := StrToInt(t1.text);
        datos.ZdetalleBARRA.Value := intTostr(QRMANOORDEN.Value);
      END;

      if txtMayor.text = 'SI' then
      begin
        datos.ZdetalleOP.Value := 'SI';
      end;

      /// ////  *****************************   Inicio Politica FRACCIONAL *********************************

      if IbqRArticulosPOLITICA.Value = 'fraccional' then
      begin
        Edit20.text := IbqRArticulosITBIS.Value;

        with Fraccionado do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
          sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
          sql.Add('where a.cod_arti =:pp');
          params[0].Value := IbqRArticulosCOD_ART.Value;
          open;
        end;

        PartiGrid.Visible := TRUE;
        // panel2.SetFocus;
        Fraccionado.First;
        PartiGrid.SetFocus;


        //

        t1.Clear;
        t2.Clear;
        t3.Clear;
        // t4.Clear;
        ancho.Clear;
        Edit9.Clear;
        alto.Clear;
        Edit8.Clear;
        topcion.Clear;
        cxButton9.Enabled := FALSE;

        Edit1.Clear;
        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
        begin
          if PartiGrid.Visible = TRUE then
          begin
            PartiGrid.SetFocus;
          end
          else
          begin
            barra.SetFocus;
          end;
        end
        else
        begin
          // cxButton10.SetFocus;
        end;

        calcular.Enabled := FALSE;

      end;

      // ****************************  Ofertas   -
      if IbqRArticulosPOLITICA.Value = 'oferta' then
      begin
        P_ofertas;
      end;

      /// ////  *****************************   Inicio Politica UNITARIO *********************************
      ///

      if IbqRArticulosPOLITICA.Value = 'Unitario' then
      begin

        if IbqRArticulosITBIS.Value = 'Si' then
        begin

          datos.ZdetalleITBiS.Value := 'Si';
          datos.ZdetalleITBS_ART.Value := 'S';
          datos.ZdetalleEX.Value := '';

          ITBArticulos := Round(IbqRArticulosTAZA_COMPRA.Value);
          ITBDeducible := '1.' + intTostr(ITBArticulos);

          IDD := StrToFloat(ITBDeducible);
          datos.ZdetallePRECIO.Value := (t4.Value * datos.ZdetalleCANTIDAD.Value) / IDD;
          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
//             ShowMessage(''+ t4.Text);
          datos.ZdetalleITBS.Value := (t4.Value * datos.ZdetalleCANTIDAD.Value) - datos.ZdetalleIMPUESTO.Value;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          datos.ZdetalleITB3.Value := (t4.Value * datos.ZdetalleCANTIDAD.Value);
          datos.ZdetalleIBSAPLICADO.Value := StrToFloat(edtITBAplicado.text);



          if Descc_t.text <> '' then
          begin

            datos.ZdetalleANCHO.Value :=
              (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
              StrToFloat(t3.text);
          end
          else
          begin
            datos.ZdetalleANCHO.Value := (datos.ZdetallePRECIO.Value) *
              StrToFloat(t3.text);
          end;

          if linea.text = 'RMA' then
          begin

            datos.ZdetalleIDALMACEN.Value :=
              datos.ZUconfiguracionALMACENRMA.Value;

          end;

          datos.Zdetalle.Post;

          Totales;

        end;

        if IbqRArticulosITBIS.Value = 'No' then
        begin

          datos.ZdetalleITBiS.Value := 'No';
          datos.ZdetalleITBS_ART.Value := 'N';
          datos.ZdetalleEX.Value := 'E';

          if IbqClientesCOMISION.Value > 0 then
          begin

            comision := (IbqRArticulosBENEFICIOS.Value *
              (IbqClientesCOMISION.Value / 100));
            datos.ZdetallePRECIO.Value :=
              ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
              (IbqClientesCOMISION.Value / 100)) / 100))) +
              IbqRArticulosCOSTO_PR.Value;
          end
          else
          begin

            datos.ZdetallePRECIO.Value := t4.Value;

          end;

          datos.ZdetalleIDTECNICO.Value := tecnico;
          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
            (IbqRArticulosCOMISION.Value / 100);
          datos.ZdetalleITB3.Value := t4.Value;
          if linea.text = 'RMA' then
          begin

            datos.ZdetalleIDALMACEN.Value :=
              datos.ZUconfiguracionALMACENRMA.Value;
          end;
          //
          // datos.zdetalle.First;
          //
          // while not datos.zdetalle.Eof do
          // begin
          // suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
          // itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;       .
          // descc := (descc + datos.zdetalle.FieldByName('ancho').Value);
          // datos.zdetalle.Edit;
          // datos.zdetalletotal.Value := datos.zdetalletotal.Value;
          // datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
          // datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;
          //
          // datos.zdetalle.Next;
          //
          // end;
          datos.Zdetalle.Post;
          Totales;


          // datos.FbqMaster_Fact.Edit;
          // datos.FbqMaster_Factdescuento.Value :=descc;
          // datos.FbqMaster_FactPOGXITBS.Value := itbs;
          //
          //
          //
          //
          // datos.FbqMaster_FactMONTO.Value := suma - itbs;
          //
          //
          //
          // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
          //
          // if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
          // begin
          //
          // if SHPropina.IsOn = TRUE then
          // begin
          // datos.FbqMaster_FactLEYPROPINA.Value := Round(datos.FbqMaster_FactMONTO.Value * 0.10);
          // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs + datos.fbqmaster_factleypropina.Value;
          // end else begin
          // datos.FbqMaster_FactLEYPROPINA.Value :=0.00;
          // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs + datos.fbqmaster_factleypropina.Value;
          // end;
          //
          // end else begin
          // datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
          // end;

        end;

      end;

      Nregistro := DBGrid1.Datasource.Dataset.RecordCount;
      Edit4.text := intTostr(Nregistro);
      calcular.Enabled := FALSE;
      t1.Clear;
      t2.Clear;
      t3.Clear;
      t4.Clear;
      ancho.Clear;
      Edit9.Clear;
      alto.Clear;
      Edit8.Clear;
      topcion.Clear;
      cxButton9.Enabled := FALSE;
      NCnumero.Clear;
      linea.Clear;
      tecnico := 0;

      /// ////  *****************************   Fin Politica UNITARIO *********************************

    except

    end;

  end;

END;

procedure TFrmNFact_normal.calcdescuento;
var
  suma, itbs: Currency;
begin

  datos.Zdetalle.Edit;
  if datos.ZdetalleITBS_ART.Value = 'S' then
  begin


    // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
    // begin
    //
    // datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value ;
    // datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
    // datos.ZdetalleITBS.Value     := 0.00;
    // datos.ZdetalleTOTAL.Value    := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
    // datos.ZdetalleITBIS2.Value   := qpreciosPRECIO_A.Value;
    //
    // end;
    //
    // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
    // begin
    //
    //
    // datos.ZdetallePRECIO.Value   := datos.ZdetallePRECIO.Value  - (qpreciosPRECIO_A.Value * (datos.ZUconfiguracionITBIS.Value/100));
    // datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
    // datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
    // datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
    //
    // datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
    // end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
    begin

      datos.ZdetallePRECIO.Value := datos.ZdetallePRECIO.Value -
        (datos.ZdetallePRECIO.Value * (datos.zdetalledesc.Value / 100));
      datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
        datos.ZdetalleCANTIDAD.Value;
      datos.ZdetalleITBS.Value :=
        ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
        (datos.ZUconfiguracionITBIS.Value / 100));
      datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
        datos.ZdetalleITBS.Value;
      // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
      datos.ZdetalleITBIS2.Value := datos.ZdetallePRECIO.Value;
    end;

  end
  else
  begin

    /// showmessage('');
    // datos.Zdetallecantidad.Value := strtofloat(t3.Text);

    datos.ZdetalleITBS_ART.Value := 'N';
    datos.ZdetalleEX.Value := 'E';

    datos.ZdetallePRECIO.Value := datos.ZdetallePRECIO.Value -
      (datos.ZdetallePRECIO.Value * (datos.zdetalledesc.Value / 100));

    datos.ZdetalleITBS.Value := 0.00;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
      datos.ZdetallePRECIO.Value;
  end;

  // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
  datos.Zdetalle.First;

  while not datos.Zdetalle.Eof do
  begin
    suma := (suma + datos.Zdetalle.FieldByName('total').Value);
    // * data.ibtdetallefactCANTIDAD.AsInteger;
    itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
    // * data.ibtdetallefactCANTIDAD.AsInteger;
    datos.Zdetalle.Edit;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
    datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

    // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
    // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
    datos.Zdetalle.Next;

  end;

  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_Factdescuento.Value := 0.00;
  datos.FbqMaster_FactPOGXITBS.Value := itbs;
  // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
  // begin
  // datos.FbqMaster_FactMONTO.Value := suma;
  //
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
  // end else begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
  // end;
  //
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
  // begin
  // datos.FbqMaster_FactMONTO.Value := suma - itbs;
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
  // end else begin
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
  // end;
  //
  // end;

  if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
  begin
    datos.FbqMaster_FactMONTO.Value := suma - itbs;
    if datos.FbqMaster_Factdescuento.Value = 0.00 then
    begin
      datos.FbqMaster_FactMONTOPAGO.Value :=
        datos.FbqMaster_FactMONTO.Value + itbs;
    end
    else
    begin
      datos.FbqMaster_FactMONTOPAGO.Value :=
        (datos.FbqMaster_FactMONTO.Value -
        datos.FbqMaster_Factdescuento.Value) + itbs;
    end;

  end;

end;

procedure TFrmNFact_normal.calcularClick(Sender: TObject);
begin
  Panel1.Visible := TRUE;
  Edit6.text := '1';
  Edit6.SetFocus;

end;

procedure TFrmNFact_normal.cambiarprecio;

var
  cero: string;
begin
  if datos.ZdetalleTOTAL.Value >= 0.00 then
  begin

    if datos.ZdetalleCOMBO.Value = 'FRA' then
    begin

      with Fraccionado do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
        sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
        sql.Add('where a.cod_arti =:pp');
        sql.Add('and b.unidad =:ppp');

        params[0].Value := datos.ZdetalleARTICULOID.Value;
        params[1].Value := datos.ZdetalleUNID.Value;

        open;
      end;

      PanelPrecios.Visible := TRUE;
      // panelprecios.SetFocus;

      // ShowMessage(''+fraccionadoprecio1.text);
      cxDBCalcEdit1.DataBinding.Datasource := DsFracciona;
      cxDBCalcEdit1.DataBinding.DataField := 'PRECIO1';

      cxDBCalcEdit2.DataBinding.Datasource := DsFracciona;
      cxDBCalcEdit2.DataBinding.DataField := 'PRECIO2';

      cxDBCalcEdit3.DataBinding.Datasource := DsFracciona;
      cxDBCalcEdit3.DataBinding.DataField := 'PRECIO2';

      cxDBCalcEdit1.SetFocus;

      PanelPrecios.Height := 217;
      Label13.Visible := TRUE;
      cxDBCalcEdit4.Visible := TRUE;
      Button4.Visible := TRUE;
      PanelPrecios.Width := 376;
      cxCurrencyEdit1.Value := 0.00;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      begin
        Edit14.text :=
          floatToStr
          (Round((datos.ZdetalleITBS.Value / ((datos.ZdetallePRECIO.Value +
          datos.ZdetalleITBS.Value) / 100))));
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      begin
        Edit14.text :=
          floatToStr
          (Round((datos.ZdetalleITBS.Value / ((datos.ZdetallePRECIO.Value)
          / 100))));
      end;

    end
    else
    begin

      with qprecios do
      begin
        close;
        sql.Clear;
        sql.Add('select cod_art,precio_a,precio_b,precio_d, precio_c, costo, itbis, taza_compra, mayoreo1, mayoreo2, mayoreo3, pre1, pre2, pre3, aplicarpormayor  from mtartuculos');
        sql.Add('where cod_art =:ww');
        params[0].Value := datos.ZdetalleARTICULOID.Value;
        open;
      end;

      PanelPrecios.Visible := TRUE;
      // panelprecios.SetFocus;

      cxDBCalcEdit1.DataBinding.Datasource := DataSource3;
      cxDBCalcEdit1.DataBinding.DataField := 'PRECIO_A';

      cxDBCalcEdit2.DataBinding.Datasource := DataSource3;
      cxDBCalcEdit2.DataBinding.DataField := 'PRECIO_B';

      cxDBCalcEdit3.DataBinding.Datasource := DataSource3;
      cxDBCalcEdit3.DataBinding.DataField := 'PRECIO_D';

      if datos.ZUconfiguracionACTIVARSOLIDARIDAD.Value = 'SI' then
      begin

        if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value = 1 then
        begin

          cxDBCalcEdit5.Enabled := TRUE;
          cxButton46.Enabled := TRUE;
          cxDBCalcEdit5.DataBinding.Datasource := DataSource3;
          cxDBCalcEdit5.DataBinding.DataField := 'PRECIO_C';
        end
        else
        begin
          cxDBCalcEdit5.Enabled := FALSE;
          cxButton46.Enabled := FALSE;
        end;

      end
      else
      begin
        cxDBCalcEdit5.Visible := FALSE;
        cxButton46.Visible := FALSE;
      end;

      cxDBCalcEdit1.SetFocus;



      // if datos.ZqUsuariosIDSESSION.Value = 3 then
      // begin

      PanelPrecios.Height := 217;
      Label13.Visible := TRUE;
      cxDBCalcEdit4.Visible := TRUE;
      Button4.Visible := TRUE;
      PanelPrecios.Width := 376;
      cxCurrencyEdit1.Value := 0.00;

      // end else begin
      // label13.Visible := false;
      // cxDBCalcEdit4.Visible := false;
      // Button4.Visible := false;
      // panelprecios.Height := 138;
      // PanelPrecios.Width := 376;
      // cxCurrencyEdit1.Value := 0.00;
      // end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      begin
        Edit14.text :=
          floatToStr
          (Round((datos.ZdetalleITBS.Value / ((datos.ZdetallePRECIO.Value +
          datos.ZdetalleITBS.Value) / 100))));
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      begin
        Edit14.text :=
          floatToStr
          (Round((datos.ZdetalleITBS.Value / ((datos.ZdetallePRECIO.Value)
          / 100))));
      end;
      // edit16.text := 'ACTIVO';
      PanelPrecios.Visible := TRUE;
      // panelprecios.SetFocus;
      cxDBCalcEdit1.SetFocus;


      // if datos.ZqUsuariosIDSESSION.Value = 3 then
      // begin

      PanelPrecios.Height := 217;
      Label13.Visible := TRUE;
      cxDBCalcEdit4.Visible := TRUE;
      Button4.Visible := TRUE;
      PanelPrecios.Width := 376;
      cxCurrencyEdit1.Value := 0.00;

      // end else begin
      // label13.Visible := false;
      // cxDBCalcEdit4.Visible := false;
      // Button4.Visible := false;
      // panelprecios.Height := 138;
      // PanelPrecios.Width := 376;
      // cxCurrencyEdit1.Value := 0.00;
      // end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      begin
        Edit14.text :=
          floatToStr
          (Round((datos.ZdetalleITBS.Value / ((datos.ZdetallePRECIO.Value +
          datos.ZdetalleITBS.Value) / 100))));
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      begin
        Edit14.text :=
          floatToStr
          (Round((datos.ZdetalleITBS.Value / ((datos.ZdetallePRECIO.Value)
          / 100))));
      end;
    end;
  end;

end;

procedure TFrmNFact_normal.ç(Sender: TObject);
begin
  IbqClientes.close;
  IbqClientes.open;
  OpBuscarEmpleado.Visible := TRUE;
  Edit2.SetFocus;
  // edit4.Text := '2';

  with QEmpleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where cargo =:oo');
    params[0].Value := 'DESIGN';
    open;
  end;

end;

procedure TFrmNFact_normal.cerrarClick(Sender: TObject);
begin
  datos.FbqMaster_Fact.close;
  datos.Zdetalle.close;
  IbqClientes.close;
  FacturasImpresas.close;

  IbqRArticulos.close;

  datos.Data.Rollback;

  close;
end;

procedure TFrmNFact_normal.ChkPrecio1Click(Sender: TObject);
begin
  t3.SetFocus;
end;

procedure TFrmNFact_normal.cxButton9Click(Sender: TObject);
var
  Stexto: string;
begin

  if datos.ZUconfiguracionARTICULOREPETIDO.Value = 'SI' then
  begin

    with Qconsultar do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*  from detailfact a');
      sql.Add('where ARTICULOID =:opp');
      sql.Add('and masterid =:master');
      params[0].Value := FrmFindArticulos.IbqRArticulosCODIGOTXT.Value;
      params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
      open;
    end;

    if Qconsultar.RecordCount > 0 then
    begin

      if Application.MessageBox
        ('Este producto ya ha sido agredo, deseas continuar? ', 'Precausion',
        Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        if linea.text = 'COM' then
        BEGIN

          with IbqRArticulos do
          begin
            close;
            sql.Clear;
            sql.Add('select a.unidad,a.precio_a, precio_c,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.codigobarra,a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,');
            sql.Add('a.marca,a.codigotxt,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.itbis,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios');
            sql.Add('from mtartuculos a');
            sql.Add('left join minventario b On a.cod_art = b.cod_art');
            sql.Add('where a.cod_art =:op12');
            sql.Add('group by a.unidad,a.precio_a, precio_c,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.codigobarra,a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo_pr, a.beneficios,');
            sql.Add(' a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,');
            params[0].Value := StrToInt(t1.text);
            open;
          end;
          // showmessage(''+CurrToStr(ibqrARticulosprecio_B.Value));
        END;

        with IbqRArticulos do
        begin
          close;
          sql.Clear;
          sql.Add('select a.unidad,a.precio_a, a.codigobarra,a.comision, precio_c, a.precio_b,precio_d,a.codigobarra, a.referencia,a.ubicacion,a.cod_art,upper(a.articulo) articulo,a.cod_cat, a.OBS,');
          sql.Add('a.politica,a.modelo,a.marca,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
          sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
          sql.Add('left join minventario b On a.cod_art = b.cod_art');
          sql.Add('where a.cod_art =:op12');
          sql.Add('group by a.unidad,a.precio_a,a.codigobarra, a.precio_b, precio_c, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
          sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
          params[0].Value := StrToInt(t1.text);
          open;
        end;


        // with IbqRArticulos do
        // begin
        // close;
        // sql.Clear;
        // sql.Add('select a.unidad,a.precio_a, precio_C,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.codigobarra,a.comision, a.precio_b,precio_d,a.codigobarra,');
        // sql.Add(' a.referencia,a.ubicacion,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.cod_art,upper(a.articulo) articulo,a.cod_cat, a.OBS,');
        // sql.Add('a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        // sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        // sql.Add('left join minventario b On a.cod_art = b.cod_art');
        // sql.Add('where a.cod_art =:op12');
        // sql.Add('group by a.unidad,a.precio_a, precio_c,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,');
        // sql.Add('a.codigobarra, a.precio_b, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
        // sql.Add('a.marca,a.codigotxt,a.itbis,a.taza_compra,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
        // params[0].Value := StrToInt(t1.text);
        // open;
        // end;

        nofraccional;
        ChkPrecio.Checked := FALSE;
        Edit10.text := '0.00';
        Edit11.text := '0.00';

      end
      else
      begin

      end;

    end
    else
    begin

      if linea.text = 'COM' then
      BEGIN

        with IbqRArticulos do
        begin
          close;
          sql.Clear;
          sql.Add('select a.unidad,a.precio_a, precio_c, a.codigobarra,a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios,');
          sql.Add(' a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,');
          sql.Add('from mtartuculos a');
          sql.Add('left join minventario b On a.cod_art = b.cod_art');
          sql.Add('where a.cod_art =:op12');
          sql.Add('group by a.unidad,a.precio_a, precio_c, a.codigobarra,a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo_pr, a.beneficios,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido');
          params[0].Value := StrToInt(t1.text);
          open;
        end;
        // showmessage(''+CurrToStr(ibqrARticulosprecio_B.Value));
      END;

      with IbqRArticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select a.unidad,a.precio_a, a.codigobarra,a.comision, precio_c, a.precio_b,precio_d,a.codigobarra, a.referencia,a.ubicacion,a.cod_art,upper(a.articulo) articulo,a.cod_cat, a.OBS,');
        sql.Add('a.politica,a.modelo,a.marca,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.Add('left join minventario b On a.cod_art = b.cod_art');
        sql.Add('where a.cod_art =:op12');
        sql.Add('group by a.unidad,a.precio_a,a.codigobarra, a.precio_b, precio_c, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
        sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
        params[0].Value := StrToInt(t1.text);
        open;
      end;

      nofraccional;
      ChkPrecio.Checked := FALSE;
      Edit10.text := '0.00';
      Edit11.text := '0.00';
    end;

  end
  else
  begin

    if linea.text = 'COM' then
    BEGIN

      with IbqRArticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select a.unidad,a.precio_a, precio_c, a.codigobarra,a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios,');
        sql.Add(' a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido');
        sql.Add('from mtartuculos a');
        sql.Add('left join minventario b On a.cod_art = b.cod_art');
        sql.Add('where a.cod_art =:op12');
        sql.Add('group by a.unidad,a.precio_a, precio_c, a.codigobarra,a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo_pr, a.beneficios,');
        sql.Add(' a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido');
        params[0].Value := StrToInt(t1.text);
        open;
      end;
      // showmessage(''+CurrToStr(ibqrARticulosprecio_B.Value));
    END;

    with IbqRArticulos do
    begin
      close;
      sql.Clear;
      sql.Add('select a.unidad,a.precio_a, precio_C, a.codigobarra,a.comision, a.precio_b,precio_d,a.codigobarra, a.referencia,a.ubicacion,a.cod_art,upper(a.articulo) articulo,a.cod_cat, a.OBS,');
      sql.Add('a.politica,a.modelo,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
      sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
      sql.Add('left join minventario b On a.cod_art = b.cod_art');
      sql.Add('where a.cod_art =:op12');
      sql.Add('group by a.unidad,a.precio_a, precio_c, a.codigobarra, a.precio_b, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
      sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
      params[0].Value := StrToInt(t1.text);
      open;
    end;

    nofraccional;
    ChkPrecio.Checked := FALSE;
    Edit10.text := '0.00';
    Edit11.text := '0.00';

  end;






  // *****

end;

procedure TFrmNFact_normal.ChkPrecioClick(Sender: TObject);
begin
  if t3.Enabled = FALSE then
  begin
    t3.SetFocus;
  end;
end;

procedure TFrmNFact_normal.CHKPropertiesChange(Sender: TObject);
begin
  if CHK.Checked = TRUE then
  begin
    Panel13.Width := 657;
    cxGrid4.Visible := TRUE;
  end
  else
  begin
    Panel13.Width := 392;
    cxGrid4.Visible := FALSE;
  end;
end;

procedure TFrmNFact_normal.cxComboBox1PropertiesChange(Sender: TObject);
begin
  {
    if (cxcombobox1.ItemIndex = 0) then
    begin
    with precios do
    begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where codigotxt =:opp');
    params[0].Value := t1.Text;
    open;
    end;

    t4.Value := preciosprecio_a.Value;
    cxcombobox1.ItemIndex := 0;
    end;



    if (cxcombobox1.ItemIndex = 1) then
    begin
    with precios do
    begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where codigotxt =:opp');
    params[0].Value := t1.Text;
    open;
    end;

    t4.Value := preciosprecio_b.Value;
    //  cxcombobox1.ItemIndex := 1;
    end;


    if (cxcombobox1.ItemIndex = 2) then
    begin
    with precios do
    begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where codigotxt =:opp');
    params[0].Value := t1.Text;
    open;
    end;

    t4.Value := preciosprecio_d.Value;
    //  cxcombobox1.ItemIndex := 1;
    end; }
end;

procedure TFrmNFact_normal.cxDBCalcEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    PanelPrecios.Visible := FALSE;
    qprecios.close;
  end;
end;

procedure TFrmNFact_normal.cxDBCalcEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    PanelPrecios.Visible := FALSE;
    qprecios.close;
  end;
end;

procedure TFrmNFact_normal.cxDBCalcEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    PanelPrecios.Visible := FALSE;
    qprecios.close;
  end;
end;

procedure TFrmNFact_normal.cxDBCalcEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    PanelPrecios.Visible := FALSE;
    qprecios.close;
  end;
end;

procedure TFrmNFact_normal.cxDBCalcEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    PanelPrecios.Visible := FALSE;
    qprecios.close;
  end;
end;

procedure TFrmNFact_normal.cxDBComboBox1PropertiesChange(Sender: TObject);
begin
  if cxDBComboBox1.ItemIndex = 1 then
  begin
    Panel16.Visible := FALSE;
  end;
  if cxDBComboBox1.ItemIndex = 0 then
  begin
    Panel16.Visible := TRUE;
    cxDBComboBox3.ItemIndex := 0;
  end;
end;

procedure TFrmNFact_normal.cxDBTextEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    with numero_cliente do
    begin
      close;
      open;
    end;
    datos.FbtClientes.open;
    datos.FbtClientes.Insert;
    datos.FbtClientescodigo.Value := numero_clienteNUMERO.Value + 1;
    datos.FbtClientesNOMBRES.Value := cxDBTextEdit4.text;
    datos.FbtClientescodigo_t.Value := '000' +
      intTostr(datos.FbtClientescodigo.Value);
    datos.FbtClientesCREDITOLIMITE.Value := 0.00;
    datos.FbtClientesESTADO.Value := 'Activo';
    datos.FbtClientesRENGLONCNF.Value := 'Ninguno';
    datos.FbtClientesPAGOITB.Value := 'No';
    datos.FbtClientesBALANCE.Value := 0.00;
    datos.FbtClientesCONDICION.Value := 'Precio A';
    // edit4.Text := '1';

    // SHOWMESSAGE(''+iNTtosTR(ibqclientescodigo.Value));
    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactCLIENTEID.Value := datos.FbtClientescodigo.Value;
    datos.FbqMaster_FactCLIENTENOMBRE.Value := datos.FbtClientesNOMBRES.Value;
    datos.FbqMaster_FactCONDICIONVENTA.Value := 'Precio A';
    // opBuscarCliente.Visible := false;

    // RxDBComboBox1.Enabled := FALSE;

    { if ibqclientescondicion.Value = 'POR MAYOR' then
      BEGIN
      RxDBComboBox1.ItemIndex := 1;
      END;

      if ibqclientescondicion.Value = 'DETALLE' then
      BEGIN
      RxDBComboBox1.ItemIndex := 0;
      END;
    }

    if Application.MessageBox('Deseas Actualizar Datos al Cliente',
      'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
    begin
      frmcliente.cxButton1.Enabled := FALSE;
      frmcliente.g_cambios.Enabled := TRUE;
      frmcliente.btcancelar.Enabled := TRUE;
      // frmcliente.cxButton5.Enabled := false;
      frmcliente.ShowModal;
    end;

    datos.FbtClientes.ApplyUpdates;
    // EDIT4.Clear;

  end;
end;

procedure TFrmNFact_normal.cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    with QEmpleados do
    begin
      close;
      sql.Clear;
      sql.Add('select * from mtempleado');
      sql.Add('where cod_emp =:op4'); // '+#39+'%'+Edit2.Text+'%'+#39);
      params[0].Value := cxDBTextEdit5.text;
      // params[1].Value := 'DESIGN';
      open;
    end;

    if QEmpleados.RecordCount = 0 then
    begin
      ShowMessage('** Empleado no existe **');
    end
    else
    begin
      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactNOMBRES_EMP.Value := QEmpleadosNOMBRES_EMP.Value;
      // opdetalle.Enabled := true;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
      end
      else
      begin
        // cxButton10.SetFocus;
      end;

    end;
  end;

end;

procedure TFrmNFact_normal.cxDBTextEdit6PropertiesChange(Sender: TObject);
begin
  if datos.FbqMaster_FactCONDICIONVENTA.Value = 'Precio A' then
  begin
    // cxcombobox1.ItemIndex := 0;
  end;

  if datos.FbqMaster_FactCONDICIONVENTA.Value = 'Precio B' then
  begin
    // cxcombobox1.ItemIndex := 1;
  end;

  if datos.FbqMaster_FactCONDICIONVENTA.Value = 'Precio C' then
  begin
    // cxcombobox1.ItemIndex := 2;
  end;

end;

procedure TFrmNFact_normal.cxGrid1DBTableView1Column2PropertiesButtonClick
  (Sender: TObject; AButtonIndex: Integer);
begin

  EliminarRow;
  // if datos.Zdetalledesc.Value > datos.ZqUsuariosDESCUENTO.Value  then
  // begin
  // Showmessage(' ** No esta autorizado para aplicar este descuento **');
  //
  // end else begin
  // panel5.Visible := true;
  // //   tDesc1.Clear;
  // //   tdesc1.setfocus;
  //
  // end;
end;

procedure TFrmNFact_normal.cxGrid1DBTableView1Column3PropertiesButtonClick
  (Sender: TObject; AButtonIndex: Integer);
begin
  if datos.ZdetallePORCENTDESC.Value > 0 then
  begin
    pnlDescuento.Visible := TRUE;
    edtDesc.SetFocus;
  end
  else
  begin
    Crear_Mensages('Aviso', 'Descuento no puedo ser aplicado',
      'este articulo no tiene descuento activado',
      ExtractFilePath(Application.ExeName) + '\imagenes\aviso\aviso.png', 'OK');
  end;
end;

procedure TFrmNFact_normal.cxGrid1DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  NADA: string;
  Len: Integer;
  val, ValEstado, IsNulo, pRESTAMOS, SAN, ALQUILER, COMPRAVENTA: Boolean;
begin
  // if AViewInfo.Item.ID = 0 then

  ARec := AViewInfo.Bounds;

  ValEstado := AViewInfo.GridRecord.Values[6] < 0.00;

  if ValEstado then
  begin
    ACanvas.Canvas.Font.Style := [fsBold];
    ACanvas.Canvas.Font.Color := clRED;
  end;

end;

procedure TFrmNFact_normal.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

  with qMantArt do
  begin
    close;
    sql.Clear;
    sql.Add('select b.cat, A.* from mtartuculos  A');
    sql.Add('Left join mtcategoria b On a.cod_cat = b.codcat');
    sql.Add('where a.COD_art =:oo');
    params[0].Value := datos.ZdetalleARTICULOID.Value;
    open;
  end;

  if datos.ZdetalleTOTAL.Value >= 0.00 then
  begin
    PanelLTOP.Enabled := TRUE;

    t4.Value := datos.ZdetallePRECIO.Value +
      (datos.ZdetalleITBS.Value / datos.ZdetalleCANTIDAD.Value);
    Descc_t.text :=
      floatToStr(((datos.ZdetalleANCHO.Value / datos.ZdetallePRECIO.Value) *
      100) / datos.ZdetalleCANTIDAD.Value);

    // PanelCantidad.Visible := true;
    Edit15.text := 'cant';
    t3.Enabled := TRUE;
    t3.text := datos.ZdetalleCANTIDAD.text;

    t3.SetFocus;

    BTSerial.Enabled := TRUE;
  end;
end;

procedure TFrmNFact_normal.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    if datos.ZdetalleTOTAL.Value >= 0.00 then
    begin
      PanelLTOP.Enabled := TRUE;
      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      begin

        // edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value + datos.Zdetalleitbs.Value) /100))));
        t4.Value := datos.ZdetallePRECIO.Value +
          (datos.ZdetalleITBS.Value / datos.ZdetalleCANTIDAD.Value);
        Descc_t.text :=
          floatToStr(((datos.ZdetalleANCHO.Value / datos.ZdetallePRECIO.Value) *
          100) / datos.ZdetalleCANTIDAD.Value);
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      begin

        Edit14.text :=
          floatToStr
          (Round((datos.ZdetalleITBS.Value / ((datos.ZdetallePRECIO.Value)
          / 100))));
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
      begin

        Edit14.text := floatToStr(datos.ZdetallePRECIO.Value);
      end;

      // PanelCantidad.Visible := true;
      Edit15.text := 'cant';
      t3.Enabled := TRUE;
      t3.text := datos.ZdetalleCANTIDAD.text;

      t3.SetFocus;



      BTSerial.Enabled := TRUE;

    end;
  end;
end;

procedure TFrmNFact_normal.cxGrid1DBTableView1TOTALGetDataText
  (Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  // with TcxGridDBTableView(Sender.GridView).DataController do
  // AText := VarToStr(Values[ARecordIndex, cxGrid1DBTableView1A.Index] - Values[ARecordIndex, cxGrid1DBTableView1B.Index])
  //
  //
  // if datos.ZdetalleITBS_ART.Value = 'S' then
  // begin
  //
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
  // begin
  //
  // datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value ;
  // datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
  // datos.ZdetalleITBS.Value   := 0.00;
  // datos.ZdetalleTOTAL.Value  := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
  // datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
  //
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
  // begin
  //
  //
  // datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value - (qpreciosPRECIO_A.Value * (datos.ZUconfiguracionITBIS.Value/100));
  // datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  // datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
  // datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
  //
  // datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
  // begin
  //
  //
  // datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value - (qpreciosPRECIO_A.Value * (datos.ZUconfiguracionITBIS.Value/100));
  // datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  // datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
  // datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
  // datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
  // end;
  //
  //
  // end else begin
  //
  // /// showmessage('');
  // //datos.Zdetallecantidad.Value := strtofloat(t3.Text);
  //
  // datos.ZdetalleITBS_ART.Value := 'N';
  // datos.ZdetalleEX.Value := 'E';
  //
  // datos.ZdetallePRECIO.Value    := qpreciosprecio_a.Value;
  //
  // datos.ZdetalleITBS.Value      := 0.00;
  // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
  // end;
  //
  // // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
  // datos.zdetalle.First;
  //
  // while not datos.zdetalle.Eof do
  // begin
  // suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
  // itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
  // datos.zdetalle.Edit;
  // datos.zdetalletotal.Value := datos.zdetalletotal.Value;
  // datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
  //
  // // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
  // // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
  // datos.zdetalle.Next;
  //
  // end;
  //
  //
  // datos.FbqMaster_Fact.Edit;
  // datos.FbqMaster_Factdescuento.Value := 0.00;
  // datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
  // begin
  // datos.FbqMaster_FactMONTO.Value := suma;
  //
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
  // end else begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
  // end;
  //
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
  // begin
  // datos.FbqMaster_FactMONTO.Value := suma - itbs;
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
  // end else begin
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
  // end;
  //
  // end;
  //
  // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
  // begin
  // datos.FbqMaster_FactMONTO.Value := suma - itbs;
  // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
  // end else begin
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
  // end;
  //
  // end;
  //
  // panelprecios.Visible := false;
  // if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  // begin
  // barra.SetFocus;
  // BARRA.Clear;
  //
  // end else begin
  // barra1.clear;
  // BARRA1.SetFocus;
  //
  // end;

end;

procedure TFrmNFact_normal.cxGrid2DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  with Almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;
end;

procedure TFrmNFact_normal.cxGrid2DBTableView1Column2CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  BM: TBitMap;
  ARect: TRect;
  i: Integer;
begin
  // ARect := AViewInfo.Bounds;
  //
  // //  In the next line, 2 is the index of my integer column which
  // //  contains the value which deterimnes the image to display.
  //
  // I := AViewInfo.GridRecord.Values[5];
  //
  // if I = 0 then begin
  // BM := GetCurrentDir+'Imagenes\Iconos\BMP\68'+'.bmp';
  // end;
  //
  // ACanvas.Draw(ARect.Left, ARect.Top, BM);
  // ADone := True;
end;

procedure TFrmNFact_normal.cxGrid2DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  NADA: string;
  Len: Integer;
  val, ValEstado, IsNulo, pRESTAMOS, SAN, ALQUILER, COMPRAVENTA: Boolean;
begin
  // if AViewInfo.Item.ID = 0 then

  // ARec := AViewInfo.Bounds;
  //
  //
  //
  // ValEstado := AViewInfo.GridRecord.Values[7] = 2;
  //
  //
  // if  ValEstado then
  // begin
  // ACanvas.Canvas.Font.Style := [fsBold];
  // ACanvas.Canvas.Font.Color := clGreen;
  // end;

end;

procedure TFrmNFact_normal.cxGrid2DBTableView1DblClick(Sender: TObject);
var
  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;
begin
  SeparadaPorComas := barra.text;

  PanelLTOP.Enabled := TRUE;
  //
  for n := 1 to GetTokenCount(SeparadaPorComas, '+') do
  begin
    if n = 1 then
    begin
      CANTV := GetToken(SeparadaPorComas, '+', n);
    end;

    if n = 2 then
    begin
      CODIGOV := GetToken(SeparadaPorComas, '+', n);
    end;

  end;

  if CODIGOV = '' then
  begin
    codoriginal := CANTV;
    cantoriginal := '1';
  end;

  if CODIGOV <> '' then
  begin
    codoriginal := CODIGOV;
    cantoriginal := CANTV;
  end;

  if CANTV = '' then
  begin
    cantoriginal := '1';
  end;

  if datos.ZUconfiguracionEXISTENCIAFACT.Value = 2 then
  begin
    if Almacenes1EXISTENCIA.Value > 0 then
    begin
      // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
      Edit11.text := '1.00';

      t1.text := IbqRArticulosCODIGOTXT.Value;
      t2.text := IbqRArticulosARTICULO.Value;
      EditCat.text := IbqRArticulosCOD_CAT.text;
      Descc_t.text := IbqRArticulosCOMISION.text;

      Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);

      if IbqClientesCOLOR.Value = 'PRECIO 1' then
      BEGIN
        t4.Value := IbqRArticulosPRECIO_A.Value;
      END;

      if IbqClientesCOLOR.Value = 'PRECIO 2' then
      BEGIN
        t4.Value := IbqRArticulosPRECIO_B.Value;
      END;

      if IbqClientesCOLOR.Value = 'PRECIO 3' then
      BEGIN
        t4.Value := IbqRArticulosPRECIO_D.Value;
      END;
      //
      lunidad.text := IbqRArticulosUNIDADVENTA.Value;
      t3.text := cantoriginal;

      linea.text := 'ART';

      if IbqRArticulosPOLITICA.Value = 'Unitario' then
      begin
        topcion.text := 'UNI';
      end;

      if IbqRArticulosPOLITICA.Value = 'oferta' then
      begin
        topcion.text := 'OFE';
      end;

      if IbqRArticulosPOLITICA.Value = 'servicio' then
      begin
        topcion.text := 'SER';
      end;

      if IbqRArticulosPOLITICA.Value = 'fraccional' then
      begin

        topcion.text := 'FRA';
      end;

      cxButton9.Click;
      datos.FbCategorias.close;

      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
        barra.Clear;

      end
      else
      begin
        barra1.Clear;
        barra1.SetFocus;
        // edit19.Clear;
      end;
      IbqRArticulos.close;

    end
    else if Almacenes1EXISTENCIA.Value <= 0 then
    begin
      MsgInformacion(' Este producto no tiene existencia ')

    end;

  end
  else
  begin
    Edit11.text := '1.00';

    t1.text := IbqRArticulosCODIGOTXT.Value;
    t2.text := IbqRArticulosARTICULO.Value;

    Descc_t.text := IbqRArticulosCOMISION.text;
    EditCat.text := IbqRArticulosCOD_CAT.text;
    Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);

    if IbqClientesCOLOR.Value = 'PRECIO 1' then
    BEGIN
      t4.Value := IbqRArticulosPRECIO_A.Value;
    END;

    if IbqClientesCOLOR.Value = 'PRECIO 2' then
    BEGIN
      t4.Value := IbqRArticulosPRECIO_B.Value;
    END;

    if IbqClientesCOLOR.Value = 'PRECIO 3' then
    BEGIN
      t4.Value := IbqRArticulosPRECIO_D.Value;
    END;
    //
    lunidad.text := IbqRArticulosUNIDADVENTA.Value;
    t3.text := cantoriginal;

    linea.text := 'ART';

    if IbqRArticulosPOLITICA.Value = 'Unitario' then
    begin
      topcion.text := 'UNI';
    end;

    if IbqRArticulosPOLITICA.Value = 'servicio' then
    begin
      topcion.text := 'SER';
    end;

    if IbqRArticulosPOLITICA.Value = 'oferta' then
    begin
      topcion.text := 'OFE';
    end;

    if IbqRArticulosPOLITICA.Value = 'fraccional' then
    begin

      topcion.text := 'FRA';
    end;

    cxButton9.Click;
    datos.FbCategorias.close;

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
      barra.Clear;

    end
    else
    begin
      barra1.Clear;
      barra1.SetFocus;
      // edit19.Clear;
    end;
    IbqRArticulos.close;

  end;

end;

procedure TFrmNFact_normal.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;
begin

  with Almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;

  if Key = vk_escape then
  begin

    IbqRArticulos.close;

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
      barra.Clear;
    end
    else
    begin
      barra1.SetFocus;
      barra1.Clear;
    end;

  end;

  if Key = vk_return then
  begin

    SeparadaPorComas := barra.text;

    PanelLTOP.Enabled := TRUE;
    //
    for n := 1 to GetTokenCount(SeparadaPorComas, '+') do
    begin
      if n = 1 then
      begin
        CANTV := GetToken(SeparadaPorComas, '+', n);
      end;

      if n = 2 then
      begin
        CODIGOV := GetToken(SeparadaPorComas, '+', n);
      end;

    end;

    if CODIGOV = '' then
    begin
      codoriginal := CANTV;
      cantoriginal := '1';
    end;

    if CODIGOV <> '' then
    begin
      codoriginal := CODIGOV;
      cantoriginal := CANTV;
    end;

    if CANTV = '' then
    begin
      cantoriginal := '1';
    end;
    //
    if datos.ZUconfiguracionEXISTENCIAFACT.Value = 2 then
    begin

      if Almacenes1EXISTENCIA.Value > 0 then
      begin
        // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
        Edit11.text := '1.00';

        t1.text := IbqRArticulosCODIGOTXT.Value;
        t2.text := IbqRArticulosARTICULO.Value;

        Descc_t.text := IbqRArticulosCOMISION.text;
        EditCat.text := IbqRArticulosCOD_CAT.text;
        Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);

        if IbqClientesCOLOR.Value = 'PRECIO 1' then
        BEGIN
          t4.Value := IbqRArticulosPRECIO_A.Value;
        END;

        if IbqClientesCOLOR.Value = 'PRECIO 2' then
        BEGIN
          t4.Value := IbqRArticulosPRECIO_B.Value;
        END;

        if IbqClientesCOLOR.Value = 'PRECIO 3' then
        BEGIN
          t4.Value := IbqRArticulosPRECIO_D.Value;
        END;
        //
        lunidad.text := IbqRArticulosUNIDADVENTA.Value;
        t3.text := cantoriginal;

        linea.text := 'ART';

        if IbqRArticulosPOLITICA.Value = 'Unitario' then
        begin
          topcion.text := 'UNI';
        end;

        if IbqRArticulosPOLITICA.Value = 'servicio' then
        begin
          topcion.text := 'SER';
        end;

        if IbqRArticulosPOLITICA.Value = 'fraccional' then
        begin
          topcion.text := 'FRA';
        end;

        if IbqRArticulosPOLITICA.Value = 'oferta' then
        begin
          topcion.text := 'OFE';
        end;
        cxButton9.Click;
        datos.FbCategorias.close;

        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
        begin
          barra.SetFocus;
          barra.Clear;

        end
        else
        begin
          barra1.Clear;
          barra1.SetFocus;

        end;
        IbqRArticulos.close;

      end
      else if Almacenes1EXISTENCIA.Value <= 0 then
      begin
        MsgInformacion(' Este producto no tiene existencia ')

      end;

    end
    else
    begin
      Edit11.text := '1.00';

      t1.text := IbqRArticulosCODIGOTXT.Value;
      t2.text := IbqRArticulosARTICULO.Value;

      Descc_t.text := IbqRArticulosCOMISION.text;

      Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);
      EditCat.text := IbqRArticulosCOD_CAT.text;
      if IbqClientesCOLOR.Value = 'PRECIO 1' then
      BEGIN
        t4.Value := IbqRArticulosPRECIO_A.Value;
      END;

      if IbqClientesCOLOR.Value = 'PRECIO 2' then
      BEGIN
        t4.Value := IbqRArticulosPRECIO_B.Value;
      END;

      if IbqClientesCOLOR.Value = 'PRECIO 3' then
      BEGIN
        t4.Value := IbqRArticulosPRECIO_D.Value;
      END;
      //
      lunidad.text := IbqRArticulosUNIDADVENTA.Value;
      t3.text := cantoriginal;

      linea.text := 'ART';

      if IbqRArticulosPOLITICA.Value = 'Unitario' then
      begin
        topcion.text := 'UNI';
      end;

      if IbqRArticulosPOLITICA.Value = 'servicio' then
      begin
        topcion.text := 'SER';
      end;

      if IbqRArticulosPOLITICA.Value = 'fraccional' then
      begin
        topcion.text := 'FRA';
      end;
      if IbqRArticulosPOLITICA.Value = 'oferta' then
      begin
        topcion.text := 'OFE';
      end;

      cxButton9.Click;
      datos.FbCategorias.close;

      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
        barra.Clear;

      end
      else
      begin
        barra1.Clear;
        barra1.SetFocus;

      end;
      IbqRArticulos.close;

    end;
  end;
end;

procedure TFrmNFact_normal.cxGrid2DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  with Almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;
end;

procedure TFrmNFact_normal.cxGrid4DBTableView1DblClick(Sender: TObject);
begin
  tecnico := StrToInt(TecnicosCOD_EMP.Value);

  Label38.Caption := 'Ya hay Instalador Asignado';
end;

procedure TFrmNFact_normal.cxGrid7DBTableView1DblClick(Sender: TObject);
begin
  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_FactIDDR.Value := medicoID.Value;
  datos.FbqMaster_FactNOMBREDELDR.Value := medicoNOMBREMENDICO.Value;
  cxGrid7.Visible := FALSE;
  medico.close;

end;

procedure TFrmNFact_normal.cxGrid9DBTableView1DblClick(Sender: TObject);
begin

  with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.unidad,a.precio_a, precio_c, a.codigobarra,a.comision, a.precio_b,a.referencia, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.OBS,');
    sql.Add(' a.costo_pr, a.beneficios,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.TIENECOMPACTIBILIDAD,  a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion from mtartuculos a ');
    sql.Add('where a.codigobarra =:PPP');
    sql.Add('group by a.unidad,a.precio_a, a.precio_b, precio_c, a.comision, a.precio_d, a.referencia, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, ');
    sql.Add('a.costo_pr, a.beneficios, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.codigobarra,a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion,a.OBS');
    params[0].Value := 'RMA001';
    open;
  end;

  // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
  Edit11.text := '1.00';
  //
  t1.text := IbqRArticulosCODIGOTXT.Value;
  t2.text := 'SERVICIO R.M.A AL EQUIPO ' + QRMATIPOEQUIPO.text + ' ' +
    QRMANO_SERIAL.text + ' ' + trim(QRMAOBSERVACIONEQUIPO.asstring);
  if CHK.Checked = TRUE then
  begin

    tecnico := StrToInt(TecnicosCOD_EMP.Value);
  end;

  // Showmessage(''+ibqrArticulositbis.Value);
  // EITBIS.Text  := ibqrArticulositbis.Text;

  Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);
  t4.Value := QRMAMONTO.Value;
  //

  lunidad.text := IbqRArticulosUNIDADVENTA.Value;
  // //FrmNFact_normal.LUnid.ItemIndex := -1;
  // // FrmNFact_normal.LUnid.ItemIndex := 0;
  t3.text := '1';

  linea.text := 'RMA';
  // taza.Text := ibqrarticulostaza_compra.Text;

  if IbqRArticulosPOLITICA.Value = 'Unitario' then
  begin
    topcion.text := 'UNI';
  end;

  if IbqRArticulosPOLITICA.Value = 'Servicio' then
  begin
    topcion.text := 'SER';
  end;



  // cxButton9.Enabled := true;

  try

    with UpRma do
    begin
      close;
      sql.Clear;
      sql.Add('update rmam set idmarca = 1 where noorden =:op1');
      params[0].Value := QRMANOORDEN.Value;
      ExecSQL;
    end;
    cxButton9.Click;

    datos.FbCategorias.close;

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
      barra.Clear;

    end
    else
    begin
      barra1.Clear;
      barra1.SetFocus;

    end;
    IbqRArticulos.close;
  except

  end;

end;

procedure TFrmNFact_normal.PartiGridDBTableView1DblClick(Sender: TObject);

begin

  Edit11.text := floatToStr(FraccionadoCOD_PART.Value);
  // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);

  if Edit20.text = 'Si' then
  begin

    datos.Zdetalle.Edit;
    datos.ZdetallePRECIO.Value := FraccionadoPRECIO1.Value / 1.18;
    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;

    datos.ZdetalleITBS.Value :=
      ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) *
      (datos.ZUconfiguracionITBIS.Value / 100));

    datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
      datos.ZdetalleITBS.Value;
    // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

    if Descc_t.text = '' then
    begin
      datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value;
    end
    else
    begin

      datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
        (StrToInt(Descc_t.text) / 100);

    end;

    datos.ZdetalleITBS_ART.Value := 'S';
    datos.ZdetalleUNID.Value := FraccionadoUNIDAD.Value;
    datos.Zdetalle.Post;

    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factdescuento.Value := descc;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;

    datos.FbqMaster_FactMONTO.Value := suma - itbs;
    datos.FbqMaster_FactMONTOPAGO.Value :=
      datos.FbqMaster_FactMONTO.Value + itbs;

    Edit20.Clear;

  end;
  if Edit20.text = 'No' then
  begin

    datos.Zdetalle.Edit;
    datos.ZdetallePRECIO.Value := FraccionadoPRECIO1.Value;
    // - (fraccionadoprecio1.Value * (datos.ZUconfiguracionITBIS.Value/100));
    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;
    datos.ZdetalleITBS.Value := 0.00;
    // ((fraccionadoprecio1.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
    datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value;
    // + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

    if Descc_t.text = '' then
    begin
      datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value;
    end
    else
    begin

      datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
        (StrToInt(Descc_t.text) / 100);

    end;

    datos.ZdetalleITBS_ART.Value := 'N';
    datos.ZdetalleUNID.Value := FraccionadoUNIDAD.Value;
    datos.Zdetalle.Post;
    //
    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factdescuento.Value := descc;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;

    datos.FbqMaster_FactMONTO.Value := suma - itbs;
    datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;

  end;

  lunidad.text := FraccionadoUNIDAD_1.Value;
  PartiGrid.Visible := FALSE;


  // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

  t1.Clear;
  t2.Clear;
  t3.Clear;
  t4.Clear;
  ancho.Clear;
  Edit9.Clear;
  alto.Clear;
  Edit8.Clear;
  topcion.Clear;
  cxButton9.Enabled := FALSE;
  Edit20.Clear;

  // T3.setfocus;

  if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
    barra.SetFocus;
    barra.Clear;

  end
  else
  begin
    barra1.Clear;
    barra1.SetFocus;

  end;

end;

procedure TFrmNFact_normal.PartiGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  suma, itbs: Currency;
begin
  if Key = vk_return then
  begin

    Edit11.text := floatToStr(FraccionadoCOD_PART.Value);
    // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);

    if IbqRArticulosITBIS.Value = 'Si' then
    begin

      datos.Zdetalle.Edit;
      datos.ZdetallePRECIO.Value := FraccionadoPRECIO1.Value -
        (FraccionadoPRECIO1.Value * (datos.ZUconfiguracionITBIS.Value / 100));
      datos.ZdetalleIMPUESTO.Value := FraccionadoPRECIO1.Value *
        datos.ZdetalleCANTIDAD.Value;
      datos.ZdetalleITBS.Value :=
        ((FraccionadoPRECIO1.Value * datos.ZdetalleCANTIDAD.Value) *
        (datos.ZUconfiguracionITBIS.Value / 100));
      datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value;
      // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

      datos.Zdetalle.First;
      //
      while not datos.Zdetalle.Eof do
      begin
        suma := (suma + datos.Zdetalle.FieldByName('total').Value);
        // * data.ibtdetallefactCANTIDAD.AsInteger;
        itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
        // * data.ibtdetallefactCANTIDAD.AsInteger;
        datos.Zdetalle.Edit;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
        datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
        datos.Zdetalle.Next;

      end;

      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_Factdescuento.Value := 0.00;
      datos.FbqMaster_FactPOGXITBS.Value := itbs;

      datos.FbqMaster_Factdescuento.Value := 0.00;
      datos.FbqMaster_FactPOGXITBS.Value := itbs;
      datos.FbqMaster_FactMONTO.Value := suma - itbs;
      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
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

      datos.Zdetalle.Edit;
      datos.ZdetallePRECIO.Value := FraccionadoPRECIO1.Value;
      // - (fraccionadoprecio1.Value * (datos.ZUconfiguracionITBIS.Value/100));
      datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
        datos.ZdetalleCANTIDAD.Value;
      datos.ZdetalleITBS.Value := 0.00;
      // ((fraccionadoprecio1.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
      datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value;
      // + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

      datos.Zdetalle.First;
      //
      while not datos.Zdetalle.Eof do
      begin
        suma := (suma + datos.Zdetalle.FieldByName('total').Value);
        // * data.ibtdetallefactCANTIDAD.AsInteger;
        itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
        // * data.ibtdetallefactCANTIDAD.AsInteger;
        datos.Zdetalle.Edit;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
        datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

        datos.Zdetalle.Next;

      end;

      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_Factdescuento.Value := 0.00;
      datos.FbqMaster_FactPOGXITBS.Value := itbs;
      datos.FbqMaster_FactMONTO.Value := suma - itbs;
      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;
    end;

    lunidad.text := FraccionadoUNIDAD_1.Value;
    PartiGrid.Visible := FALSE;


    // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

    t1.Clear;
    t2.Clear;
    t3.Clear;
    t4.Clear;
    ancho.Clear;
    Edit9.Clear;
    alto.Clear;
    Edit8.Clear;
    topcion.Clear;
    cxButton9.Enabled := FALSE;

    if BtDelivery.Visible = TRUE then
    BEGIN
      BtDelivery.Enabled := FALSE;
    END;
    BTMayor.Enabled := TRUE;

    // T3.setfocus;

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
      barra.Clear;

    end
    else
    begin
      barra1.Clear;
      barra1.SetFocus;

    end;

  end;

end;

procedure TFrmNFact_normal.Pcancelar;
begin
  t1.Clear;
  // t2.Clear;
  t3.Clear;
  t4.Clear;

  opmaster.Enabled := FALSE;

  FrmNFact_normal.pnlEstado.Color := clWhite;
  FrmNFact_normal.pnlEstado.Caption := 'Factura Estandar';
  FrmNFact_normal.pnlEstado.Font.Color := clblack;

  // FrmNFact_normal.Panel11.Color := clBtnFace;
  // FrmNFact_normal.LbModo.font.Color := clBlack;
  // FrmNFact_normal.LbModo.Caption := 'Nueva Factura';
  // FrmNFact_normal.lbRotulo.font.Color := clBlack;

  datos.FbqMaster_Fact.ApplyUpdates;
  datos.Zdetalle.ApplyUpdates;
  datos.Data.Commit;

  datos.ZInventario.close;
  datos.FbqMaster_Fact.close;
  datos.Zdetalle.close;

  // BtBuscarPedido.Enabled := true;
  BTpedido.Enabled := TRUE;

  cerrar.Enabled := TRUE;
  Edit5.Clear;
  cxButton14.Enabled := TRUE;
  cxButton4.Enabled := TRUE;
  cxButton37.Enabled := TRUE;

  B1.Enabled := TRUE;
  B2.Enabled := FALSE;
  B3.Enabled := FALSE;
  B6.Enabled := FALSE;
  B4.Enabled := FALSE;

  if datos.ZUconfiguracionIMP_CANT.Value = 'Si' then
  begin
    BTMayor.Enabled := FALSE;
  end;

  BtnPrintConduce.Enabled := FALSE;
  cxButton5.Enabled := TRUE;
  cxButton11.Enabled := FALSE;
  Panel12.Visible := FALSE;
  PanelDesc.Visible := FALSE;
  BtDelivey02.Enabled := FALSE;
  // OpBuscarCLiente.Visible := false;

  BTborrar.Enabled := FALSE;
  B6.Enabled := FALSE;
  cxButton12.Enabled := FALSE;
  cxButton13.Enabled := FALSE;
  // BuscarArticulos.Visible := false;
  IbqClientes.close;
  Panel16.Visible := FALSE;
  PanelLTOP.Enabled := FALSE;
  BTSerial.Enabled := FALSE;
  Descc_t.Clear;
  // LTipoUsuario.Caption :='';

  Edit4.Clear;
  FSolidaridadPago.Edit1.Clear;
  FSolidaridadPago.Edit2.Clear;
  FSolidaridadPago.Edit3.Clear;

  FactExistencia := 0.00;
  FactExistencia2 := 0.00;

  if Panel13.Visible = TRUE then
  begin
    Memo2.Clear;
    CurrencyEdit1.Value := 0.00;
    Panel13.Visible := FALSE;
  end;
end;

procedure TFrmNFact_normal.permisos;
var
  BTn: String;
  Av: Boolean;
begin
  with datos.Qperfil do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.seccion from TB_PERFIL a');
    sql.Add('left join tb_modulos b On a.idmodulo = b.id');
    sql.Add('where a.idnivel =:usuarioID');
    params[0].Value := AsignaUsuario;
    open;
  end;
  //
  if datos.Qperfil.RecordCount > 0 then
  begin
    datos.Qperfil.First;

    while not datos.Qperfil.Eof do
    begin

      BTn := datos.QperfilNOMBRE_FORM.text;
      // ShowMessage(''+Btn);
      if BTn = 'CXBUTTON37' then
      begin
        if datos.QperfilESTADO.Value = 'True' then
        begin
          cxButton37.Enabled := TRUE;
        end
        else
        begin
          cxButton37.Enabled := FALSE;
        end;
      end;

      if BTn = 'B2' then
      begin
        if datos.QperfilESTADO.Value = 'True' then
        begin
          B2.Enabled := TRUE;
        end
        else
        begin
          B2.Enabled := FALSE;
        end;
      end;

      if BTn = 'CXBUTTON1' then
      begin
        if datos.QperfilESTADO.Value = 'True' then
        begin
          cxButton1.Enabled := TRUE;
        end
        else
        begin
          cxButton1.Enabled := FALSE;
        end;
      end;

      if BTn = 'CXBUTTON29' then
      begin
        if datos.QperfilESTADO.Value = 'True' then
        begin
          cxButton29.Enabled := TRUE;
        end
        else
        begin
          cxButton29.Enabled := FALSE;
        end;
      end;

      if BTn = 'BTSERIAL' then
      begin
        if datos.QperfilESTADO.Value = 'True' then
        begin
          BTSerial.Enabled := TRUE;
        end
        else
        begin
          BTSerial.Enabled := FALSE;
        end;
      end;

      if BTn = 'B3' then
      begin
        if datos.QperfilESTADO.Value = 'True' then
        begin
          B3.Enabled := TRUE;
        end
        else
        begin
          B3.Enabled := FALSE;
        end;
      end;

      if BTn = 'CXBUTTON42' then
      begin
        if datos.QperfilESTADO.Value = 'True' then
        begin
          // CXBUTTON42.Enabled := true;
        end
        else
        begin
          // CXBUTTON42.Enabled := false;
        end;
      end;

      // Btn.Tag := 2;
      // btn.Enabled := true;
      datos.Qperfil.Next;
    end;

  end;
end;

procedure TFrmNFact_normal.Precio_variosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAR
  suma: Currency;
  itbs: Currency;
  Stexto: string;
begin

  if Key = vk_return then
  begin

    try

      //
      // if precio_varios.Value =0.00 then
      // begin
      // ShowMEssage('** El precio es en 0.00 **');
      // end else begin
      //
      // if linea.Text ='COM' then
      // BEGIN
      // with ibqrARticulos do
      // begin
      // close;
      // sql.Clear;
      // sql.Add('select a.unidad,a.precio_a, precio_c, a.codigobarra,a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,sum(b.entrada - b.salida) Existencia');
      // sql.Add('from mtartuculos a');
      // sql.Add('left join minventario b On a.cod_art = b.cod_art');
      // sql.Add('where a.cod_art =:op12');
      // sql.Add('group by a.unidad,a.precio_a, precio_c, a.codigobarra,a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis');
      // params[0].Value := sTRtOiNT(cod_varios.text);
      // open;
      // end;
      // //   showmessage(''+CurrToStr(ibqrARticulosprecio_B.Value));
      // END;
      //
      // if ibqrarticulospolitica.Value <> 'fraccional' then
      // begin
      //
      //
      // nofraccional_varios;
      // chkprecio.Checked := false;
      // edit10.Text := '0.00';
      // edit11.Text := '0.00';
      //
      // if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      // begin
      // barra.SetFocus;
      // BARRA.Clear;
      // end else begin
      // barra1.SetFocus;
      // BARRA1.Clear;
      // end;
      //
      //
      // edit15.Clear;
      // end;
      //
      //
      //
      // end;

      // *****
    FINALLY

    END;

  end;
end;

procedure TFrmNFact_normal.PrintCopia;
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
  SIZEFONT, FONTBOLD, FONTNORMAL, SIZENORMAL, pcant: string;

begin

  fechaFA := Now;
  horaFA := Time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  // VerificaCampos(Sender);

  // Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

  // Se nenhum campo está em branco, grava o cupom
  // GravaCupons(Sender);

  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try

      IniFile := ChangeFileExt(Application.ExeName, '.ini');

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
      pcant := ReadString_Ini(IniFile, 'IMPRESION', 'pcant', '');
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
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;


  // longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    INICIARPRINT);

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.ZUconfiguracion.FieldByName('EMPRESA')
    .asstring), StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(trim(datos.ZUconfiguracion.FieldByName('CALLE')
    .asstring)), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.ZUconfiguracion.FieldByName('SECTOR')
    .asstring + ', ' + datos.ZUconfiguracion.FieldByName('CIUDAD').asstring),
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('TEL. :' + datos.ZUconfiguracion.FieldByName
    ('TELEFONO').asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('RNC:' + datos.ZUconfiguracion.FieldByName('RNC')
    .asstring), StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('FACTURA COPIA', StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(datos.FbqMaster_Fact.FieldByName('NCF_NOMBRE')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('NCF:' + datos.FbqMaster_Fact.FieldByName('NCF')
    .asstring), StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('VENTA DE CONTADO'), StrToInt(longitud)));
  if StrToInt(longitud) < 40 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('-----------------------------------', StrToInt(longitud), 0));
  end;

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '          ' +
      'HORA:' + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA :' + DATETOSTR(fechaFA) + ' ' + 'HORA:' +
      TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('No Fact: ' + datos.FbqMaster_Fact.FieldByName
    ('numero_factura').asstring), StrToInt(longitud), 0));

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));

  if datos.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('RNC CLIENTE  :' + datos.FbqMaster_Fact.FieldByName
      ('RNC_CLIENTE').Value), StrToInt(longitud), 0));
  end;

  if datos.FbqMaster_Factdireccion.Value <> '' then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('DIRECCION  :' + datos.FbqMaster_Fact.FieldByName
      ('DIRECCION').Value), StrToInt(longitud), 0));
  end;
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('PRODUCTO..........................', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('CANT', StrToInt(campol), 0) + espacios('PRECIO',
    StrToInt(campoC2), 0) + espacios('ITBIS', StrToInt(campoC2), 0) +
    espacios('TOTAL', StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------', StrToInt(longitud), 0));
  end;

  with datos.Zdetalle do
  begin
    First;
    while not Eof do
    begin
      if datos.ZdetalleITBS.Value > 0.00 then
      begin
        // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString+'  '+DATOS.Zdetalle.FieldByName('TITULOPRN').AsString),0,StrToInt(longitud)),StrToInt(longitud),0));
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName
          ('TITULOPRN').asstring), 0, 40), StrToInt(longitud), 0));

      end
      else
      begin
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(Copy(MyTextReplace(datos.Zdetalle.FieldByName('EX')
          .asstring + '  ' + datos.Zdetalle.FieldByName('TITULOPRN').asstring),
          0, StrToInt(longitud)), StrToInt(longitud), 0));

      end;
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if datos.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          // espacios(MyTextReplace(''),StrToInt(espacioA),0)+
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          datos.Zdetalle.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', datos.Zdetalle.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      END;

      Next;
    end;
  end;

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('MONTO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('descuento').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('POGXITBS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('ITEMS :   ' + CUANTOSCOUNT.text, StrToInt(longitud), 0));

  if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('BONOS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', datos.FbqMaster_Fact.FieldByName('BONOS')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1));
  if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),
      StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('Fecha de Vencimiento:' +
    datos.FbqMaster_Fact.FieldByName('fecha_final').asstring),
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.FbqMaster_Fact.FieldByName('observaciones').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('' + datos.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + datos.FbqMaster_Factcajero.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('----------------------------------', StrToInt(longitud), 0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(datos.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('.', StrToInt(longitud), 0));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
  WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO').Value,
    TEXTCORTE);


  // with printer do
  // begin
  //
  // PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
  // r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
  // BeginDoc;
  // Canvas.Brush.Style := bsClear;
  // for i := 0 to Memo1.Lines.Count do
  // Canvas.TextOut(100,100 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
  // Memo1.Lines.Strings[i]);
  // Canvas.Brush.Color := clBlack;
  //
  // EndDoc;
  // end;

end;

procedure TFrmNFact_normal.P_fraccion;
var
  Stexto: string;

  comision: double;
  Nregistro: Integer;
begin

  if IbqRArticulosITBIS.Value = 'Si' then
  begin

    datos.ZdetalleITBiS.Value := 'Si';
    datos.ZdetalleITBS_ART.Value := 'S';
    datos.ZdetalleEX.Value := '';

    datos.ZdetallePRECIO.Value := t4.Value / 1.18;
    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;
    datos.ZdetalleITBS.Value :=
      ((datos.ZdetallePRECIO.Value * StrToFloat(t3.text)) *
      (datos.ZUconfiguracionITBIS.Value / 100));
    datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
      datos.ZdetalleITBS.Value;

    if Descc_t.text <> '' then
    begin

      datos.ZdetalleANCHO.Value :=
        (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
        StrToFloat(t3.text);
    end
    else
    begin
      datos.ZdetalleANCHO.Value := (datos.ZdetallePRECIO.Value) *
        StrToFloat(t3.text);
    end;

    if linea.text = 'RMA' then
    begin

      datos.ZdetalleIDALMACEN.Value := datos.ZUconfiguracionALMACENRMA.Value;

    end;

    datos.Zdetalle.Post;
    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factdescuento.Value := descc;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;

    datos.FbqMaster_FactMONTO.Value := suma - itbs;
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs + datos.fbqmaster_factleypropina.Value;
    if datos.FbqMaster_Factdescuento.Value = 0.00 then
    begin

      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin

        if SHPropina.IsOn = TRUE then
        begin
          datos.FbqMaster_FactLEYPROPINA.Value :=
            Round(datos.FbqMaster_FactMONTO.Value * 0.10);
          datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value
            + itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        end
        else
        begin
          datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value
            + itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        end;

      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end;

    end
    else
    begin
      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin
        if SHPropina.IsOn = TRUE then
        begin
          datos.FbqMaster_FactLEYPROPINA.Value :=
            Round((datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) * 0.10);
          datos.FbqMaster_FactMONTOPAGO.Value :=
            (datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) + itbs +
            datos.FbqMaster_FactLEYPROPINA.Value;
        end
        ELSE
        begin
          datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          datos.FbqMaster_FactMONTOPAGO.Value :=
            (datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) + itbs +
            datos.FbqMaster_FactLEYPROPINA.Value;
        end;
      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;
    end;

  end;

  if IbqRArticulosITBIS.Value = 'No' then
  begin

    datos.ZdetalleITBiS.Value := 'No';
    datos.ZdetalleITBS_ART.Value := 'N';
    datos.ZdetalleEX.Value := 'E';

    if IbqClientesCOMISION.Value > 0 then
    begin

      comision := (IbqRArticulosBENEFICIOS.Value *
        (IbqClientesCOMISION.Value / 100));
      datos.ZdetallePRECIO.Value :=
        ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
        (IbqClientesCOMISION.Value / 100)) / 100))) +
        IbqRArticulosCOSTO_PR.Value;
    end
    else
    begin

      datos.ZdetallePRECIO.Value := t4.Value;

    end;

    datos.ZdetalleIDTECNICO.Value := tecnico;
    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;
    datos.ZdetalleITBS.Value := 0.00;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
      datos.ZdetalleITBS.Value;
    // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
    datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
      (IbqRArticulosCOMISION.Value / 100);

    if linea.text = 'RMA' then
    begin

      datos.ZdetalleIDALMACEN.Value := datos.ZUconfiguracionALMACENRMA.Value;
    end;
    //
    // datos.zdetalle.First;
    //
    // while not datos.zdetalle.Eof do
    // begin
    // suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
    // itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;       .
    // descc := (descc + datos.zdetalle.FieldByName('ancho').Value);
    // datos.zdetalle.Edit;
    // datos.zdetalletotal.Value := datos.zdetalletotal.Value;
    // datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
    // datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;
    //
    // datos.zdetalle.Next;
    //
    // end;
    datos.Zdetalle.Post;
    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factdescuento.Value := descc;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;

    datos.FbqMaster_FactMONTO.Value := suma - itbs;

    if datos.FbqMaster_Factdescuento.Value = 0.00 then
    begin

      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin

        if SHPropina.IsOn = TRUE then
        begin
          datos.FbqMaster_FactLEYPROPINA.Value :=
            Round(datos.FbqMaster_FactMONTO.Value * 0.10);
          datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value
            + itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        end
        else
        begin
          datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value
            + itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        end;

      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end;

    end
    else
    begin

      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin
        if SHPropina.IsOn = TRUE then
        begin
          datos.FbqMaster_FactLEYPROPINA.Value :=
            Round((datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) * 0.10);
          datos.FbqMaster_FactMONTOPAGO.Value :=
            (datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) + itbs +
            datos.FbqMaster_FactLEYPROPINA.Value;
        end
        ELSE
        begin
          datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          datos.FbqMaster_FactMONTOPAGO.Value :=
            (datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) + itbs +
            datos.FbqMaster_FactLEYPROPINA.Value;
        end;
      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;
      // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
    end;

  end;

  Nregistro := DBGrid1.Datasource.Dataset.RecordCount;
  Edit4.text := intTostr(Nregistro);
  calcular.Enabled := FALSE;
  t1.Clear;
  t2.Clear;
  t3.Clear;
  t4.Clear;
  ancho.Clear;
  Edit9.Clear;
  alto.Clear;
  Edit8.Clear;
  topcion.Clear;
  cxButton9.Enabled := FALSE;
  NCnumero.Clear;
  linea.Clear;
  tecnico := 0;

end;

procedure TFrmNFact_normal.P_ofertas;
var
  Stexto: string;

  comision: double;
  Nregistro: Integer;
begin

  if IbqRArticulosITBIS.Value = 'Si' then
  begin

    datos.ZdetalleITBiS.Value := 'Si';
    datos.ZdetalleITBS_ART.Value := 'S';
    datos.ZdetalleEX.Value := '';

    datos.ZdetallePRECIO.Value := t4.Value / 1.18;
    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;
    datos.ZdetalleITBS.Value :=
      ((datos.ZdetallePRECIO.Value * StrToFloat(t3.text)) *
      (datos.ZUconfiguracionITBIS.Value / 100));
    datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
      datos.ZdetalleITBS.Value;
    datos.ZdetalleITB3.Value := t4.Value;
    if Descc_t.text <> '' then
    begin

      datos.ZdetalleANCHO.Value :=
        (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
        StrToFloat(t3.text);
    end
    else
    begin
      datos.ZdetalleANCHO.Value := (datos.ZdetallePRECIO.Value) *
        StrToFloat(t3.text);
    end;

    if linea.text = 'RMA' then
    begin

      datos.ZdetalleIDALMACEN.Value := datos.ZUconfiguracionALMACENRMA.Value;

    end;

    datos.Zdetalle.Post;
    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factdescuento.Value := descc;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;

    datos.FbqMaster_FactMONTO.Value := suma - itbs;
    // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs + datos.fbqmaster_factleypropina.Value;
    if datos.FbqMaster_Factdescuento.Value = 0.00 then
    begin

      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin

        if SHPropina.IsOn = TRUE then
        begin
          datos.FbqMaster_FactLEYPROPINA.Value :=
            Round(datos.FbqMaster_FactMONTO.Value * 0.10);
          datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value
            + itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        end
        else
        begin
          datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value
            + itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        end;

      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end;

    end
    else
    begin
      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin
        if SHPropina.IsOn = TRUE then
        begin
          datos.FbqMaster_FactLEYPROPINA.Value :=
            Round((datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) * 0.10);
          datos.FbqMaster_FactMONTOPAGO.Value :=
            (datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) + itbs +
            datos.FbqMaster_FactLEYPROPINA.Value;
        end
        ELSE
        begin
          datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          datos.FbqMaster_FactMONTOPAGO.Value :=
            (datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) + itbs +
            datos.FbqMaster_FactLEYPROPINA.Value;
        end;
      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;
    end;

  end;

  if IbqRArticulosITBIS.Value = 'No' then
  begin

    datos.ZdetalleITBiS.Value := 'No';
    datos.ZdetalleITBS_ART.Value := 'N';
    datos.ZdetalleEX.Value := 'E';

    if IbqClientesCOMISION.Value > 0 then
    begin

      comision := (IbqRArticulosBENEFICIOS.Value *
        (IbqClientesCOMISION.Value / 100));
      datos.ZdetallePRECIO.Value :=
        ((IbqRArticulosCOSTO_PR.Value * ((IbqRArticulosBENEFICIOS.Value *
        (IbqClientesCOMISION.Value / 100)) / 100))) +
        IbqRArticulosCOSTO_PR.Value;
    end
    else
    begin

      datos.ZdetallePRECIO.Value := t4.Value;

    end;

    datos.ZdetalleIDTECNICO.Value := tecnico;
    datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
      datos.ZdetalleCANTIDAD.Value;
    datos.ZdetalleITBS.Value := 0.00;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
      datos.ZdetalleITBS.Value;
    // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
    datos.ZdetalleANCHO.Value := datos.ZdetalleIMPUESTO.Value *
      (IbqRArticulosCOMISION.Value / 100);
    datos.ZdetalleITB3.Value := t4.Value;
    if linea.text = 'RMA' then
    begin

      datos.ZdetalleIDALMACEN.Value := datos.ZUconfiguracionALMACENRMA.Value;
    end;
    //
    // datos.zdetalle.First;
    //
    // while not datos.zdetalle.Eof do
    // begin
    // suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
    // itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;       .
    // descc := (descc + datos.zdetalle.FieldByName('ancho').Value);
    // datos.zdetalle.Edit;
    // datos.zdetalletotal.Value := datos.zdetalletotal.Value;
    // datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
    // datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;
    //
    // datos.zdetalle.Next;
    //
    // end;
    datos.Zdetalle.Post;
    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factdescuento.Value := descc;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;

    datos.FbqMaster_FactMONTO.Value := suma - itbs;

    if datos.FbqMaster_Factdescuento.Value = 0.00 then
    begin

      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin

        if SHPropina.IsOn = TRUE then
        begin
          datos.FbqMaster_FactLEYPROPINA.Value :=
            Round(datos.FbqMaster_FactMONTO.Value * 0.10);
          datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value
            + itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        end
        else
        begin
          datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value
            + itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        end;

      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end;

    end
    else
    begin

      if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
      begin
        if SHPropina.IsOn = TRUE then
        begin
          datos.FbqMaster_FactLEYPROPINA.Value :=
            Round((datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) * 0.10);
          datos.FbqMaster_FactMONTOPAGO.Value :=
            (datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) + itbs +
            datos.FbqMaster_FactLEYPROPINA.Value;
        end
        ELSE
        begin
          datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
          datos.FbqMaster_FactMONTOPAGO.Value :=
            (datos.FbqMaster_FactMONTO.Value -
            datos.FbqMaster_Factdescuento.Value) + itbs +
            datos.FbqMaster_FactLEYPROPINA.Value;
        end;
      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;
      // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
    end;

  end;

  Nregistro := DBGrid1.Datasource.Dataset.RecordCount;
  Edit4.text := intTostr(Nregistro);
  calcular.Enabled := FALSE;
  t1.Clear;
  t2.Clear;
  t3.Clear;
  t4.Clear;
  ancho.Clear;
  Edit9.Clear;
  alto.Clear;
  Edit8.Clear;
  topcion.Clear;
  cxButton9.Enabled := FALSE;
  NCnumero.Clear;
  linea.Clear;
  tecnico := 0;

end;

procedure TFrmNFact_normal.cxGridDBTableView1DblClick(Sender: TObject);
begin
  // if EDIT4.Text = '1' then BEGIN
  //
  // datos.FbqMaster_Fact.Edit;
  // datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
  // datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
  // datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
  // datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
  // datos.FbqMaster_FactIDRUTA.Value := ibqclientesruta_id.Value;
  // datos.FbqMaster_FactNOMBREDELDR.Value := ibqclientesRENGLONCNF.Value;
  //
  //
  // opBuscarCliente.Visible := false;
  //
  // with qruta do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.*, b.nombre from ruta a');
  // sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
  // sql.Add('where a.id =:ppp');
  // params[0].Value := ibqclientesruta_id.Value;
  // open;
  // end;
  //
  //
  //
  // RxDBComboBox1.Enabled := FALSE;
  //
  //
  // EDIT4.Clear;
  // END;

end;

procedure TFrmNFact_normal.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  // if key = vk_return then
  // begin
  // if EDIT4.Text = '1' then BEGIN
  // datos.FbqMaster_Fact.Edit;
  // datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
  // datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
  // datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
  // datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
  // datos.FbqMaster_FactNOMBREDELDR.Value := ibqclientesRENGLONCNF.Value;
  // opBuscarCliente.Visible := false;
  //
  // RxDBComboBox1.Enabled := FALSE;
  //
  // {if ibqclientescondicion.Value = 'POR MAYOR' then
  // BEGIN
  // RxDBComboBox1.ItemIndex := 1;
  // END;
  //
  // if ibqclientescondicion.Value = 'DETALLE' then
  // BEGIN
  // RxDBComboBox1.ItemIndex := 0;
  // END;
  // }
  // EDIT4.Clear;
  // end;
  // end;
end;

procedure TFrmNFact_normal.cxGridDBTableView2DblClick(Sender: TObject);
begin

  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_FactPINREFERIDO.Value := QEmpleadosNOMBRES_EMP.Value;
  OpBuscarEmpleado.Visible := FALSE;
  // EDIT4.Clear;
end;

procedure TFrmNFact_normal.cxGridDBTableView3DblClick(Sender: TObject);
begin
  DetalleFacturas.close;
  DetalleFacturas.params[0].Value := FacturasImpresasNO_FACT.Value;
  DetalleFacturas.open;
  cxGrid2.Visible := TRUE;

  { with ibqrarticulos do

    begin
    close;
    sql.Clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,sum(b.entrada - b.salida) Existencia');
    sql.Add('from mtartuculos a');
    sql.Add('left join minventario b On a.cod_art = b.cod_art');
    sql.Add('where a.cod_cat =:politica');
    sql.Add('group by a.unidad,a.precio_a, a.precio_b,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis');
    params[0].Value := datos.FbCategoriasCODCAT.Value;
    open;
    end;
  }
end;

procedure TFrmNFact_normal.cxGridDBTableView4DblClick(Sender: TObject);
begin
  datos.Zdetalle.Edit;
  datos.ZdetalleIDALMACEN.Value := almacenesID.Value;
  Edit12.text := intTostr(almacenesID.Value);
  cxGrid8.Visible := FALSE;
  almacenes.close;

end;

procedure TFrmNFact_normal.cxGridDBTableView4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    datos.Zdetalle.Edit;
    datos.ZdetalleIDALMACEN.Value := almacenesID.Value;
    Edit12.text := intTostr(almacenesID.Value);
    cxGrid8.Visible := FALSE;
    almacenes.close;
  end;

end;

procedure TFrmNFact_normal.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAR
  CPASS: STRING;
begin

  if Key = vk_return then
  begin
    datos.ZUconfiguracion.open;
    CPASS := MD5DigestToHex(CalcMD5(trim(cxTextEdit1.text)));

    if CPASS = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
    begin
      cxButton3.Enabled := TRUE;
      cxButton3.Click;;
    end
    else
    begin
      MsgError('Usted no esta autorizado para relaizar esa operación'#13 +
        'Favor consultar con el Administrador');
      cxTextEdit1.Clear;
      cxButton3.Enabled := FALSE;
      PanelDesc.Visible := FALSE;

    end;

  end;

  if Key = vk_escape then
  begin
    PanelDesc.Visible := FALSE;
  end;
end;

procedure TFrmNFact_normal.cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  numero: String;
  valor: Extended;
  codoriginal: string;
  iResult: Integer;
begin
  // if TryStrToInt( codoriginal[1], iResult) then
  // begin
  // ShowMessage('Numerico');
  // end;

end;

procedure TFrmNFact_normal.cxTextEdit2PropertiesChange(Sender: TObject);
var
  numero: String;
  valor: Extended;
  codoriginal: string;
  iResult: Integer;
begin

  with FacturasImpresas do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.codven = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    sql.Add('and a.NOMBRECLIENTE_PRN like ' + #39 + '%' + cxTextEdit2.text +
      '%' + #39);

    if OpCuando.ItemIndex = 0 then
    begin
      sql.Add('and a.fecha_fac >=:fechas');
    end
    else
    begin
      sql.Add('and a.fecha_fac <:fechas');
    end;
    // open;

    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    params[3].Value := Now();

    open;

  end;

end;

procedure TFrmNFact_normal.DBGrid1ColEnter(Sender: TObject);
begin
  t4.Value := datos.ZdetallePRECIO.Value +
    (datos.ZdetalleITBS.Value / datos.ZdetalleCANTIDAD.Value);
end;

procedure TFrmNFact_normal.DBGrid1ColExit(Sender: TObject);
var
  suma, itbs, PRECIO_C: Currency;
  comision: double;
begin

end;

procedure TFrmNFact_normal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  r: TRect;
  SCapt: string;

begin

  if datos.Zdetalle.FieldByName('Total').Value < 0.00 then
  begin
    // Change the line to be bold for lines with above ^^
    DBGrid1.Canvas.Font.Style := [fsBold];
    DBGrid1.Canvas.Font.Color := clRED;
  end;

  // Call the default drawing now as all we have done is changed
  // the color of thins.  If we wanted to draw in different
  // styles like 3D tehn we would have to handle that aswell
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmNFact_normal.descKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    cxTextEdit1.SetFocus;
  end;

  if Key = vk_escape then
  begin
    PanelDesc.Visible := FALSE;
  end;
end;

procedure TFrmNFact_normal.EdClaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // if KEY = VK_ESCAPE then
  // BEGIN
  // PanelCantidad.Visible := false;
  // EdClave.Clear;
  // END;
end;

procedure TFrmNFact_normal.cxTextEdit2Change(Sender: TObject);
var
  numero: String;
  valor: Extended;
  codoriginal: string;
  iResult: Integer;
begin

  with FacturasImpresas do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.codven = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    sql.Add('and a.NOMBRECLIENTE_PRN like ' + #39 + '%' + cxTextEdit2.text +
      '%' + #39);

    if OpCuando.ItemIndex = 0 then
    begin
      sql.Add('and a.fecha_fac >=:fechas');
    end
    else
    begin
      sql.Add('and a.fecha_fac <:fechas');
    end;
    // open;

    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    params[3].Value := Now();

    open;

  end;

end;

procedure TFrmNFact_normal.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  iResult: Integer;

  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;

begin
  if Key = vk_return then
  begin
    if barra.text <> '' then
    begin

      SeparadaPorComas := barra.text;

      try
        for n := 1 to GetTokenCount(SeparadaPorComas, '+') do
        begin
          if n = 1 then
          begin
            CANTV := GetToken(SeparadaPorComas, '+', n);
          end;

          if n = 2 then
          begin
            CODIGOV := GetToken(SeparadaPorComas, '+', n);
          end;

        end;

        if CODIGOV = '' then
        begin
          codoriginal := CANTV;
          cantoriginal := '1';
        end;

        if CODIGOV <> '' then
        begin
          codoriginal := CODIGOV;
          cantoriginal := CANTV;
        end;

        if CANTV = '' then
        begin
          cantoriginal := '1';
        end;

      finally

      end;

      if TryStrToInt(codoriginal[1], iResult) then
      begin
        datos.FbCategorias.open;

        with IbqRArticulos do
        begin
          close;
          sql.Clear;
          sql.Add('select a.unidad,a.precio_a, a.codigobarra,a.comision, precio_c, a.precio_b,precio_d,a.codigobarra, a.referencia,a.ubicacion,a.cod_art,upper(a.articulo) articulo,a.cod_cat, a.OBS,');
          sql.Add('a.politica,a.modelo,a.marca,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
          sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
          sql.Add('left join minventario b On a.cod_art = b.cod_art');
          sql.Add('where a.codigobarra =:codd');
          sql.Add('group by a.unidad,a.precio_a,a.codigobarra, a.precio_b, precio_c, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
          sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
          params[0].Value := codoriginal;
          open;
        end;

        if IbqRArticulos.RecordCount = 0 then
        begin

          ShowMessage('**Articulo no Existe**');
        end
        else
        begin
          if datos.FbqMaster_FactROTULO.Value = 'FACTURACION' then
          begin

             FactExistencia := 0.00;
             FactExistencia2 := 0.00;
            with Almacenes1 do
                begin
                  CLOSE;
                  sql.Clear;
                  sql.add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
                  sql.add('left join mtartuculos b  On a.cod_art = b.cod_art');
                  sql.add('left join almacenes c On a.cod_alm = c.id');
                  sql.add('and b.politica <> ''Servicio''');
                  sql.add('where a.cod_art =:opp');
                  sql.add('and a.cod_alm =1');
                  sql.add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');

                  params[0].Value := IbqRArticulosCOD_ART.Value;

                  open;

                end;

                with datos.QInventarioEQ do
                begin
                  CLOSE;
                  sql.Clear;
                  sql.add('select * from sp_inventario(:op, :op2, 1)');
                  params[0].Value := IbqRArticulosCOD_ART.Text;
                  params[1].Value := IbqRArticulosCOD_ART.Value;
                  open;
                end;


                     if (Almacenes1EXISTENCIA.Value > 0) then
                      begin
                        FactExistencia := Almacenes1EXISTENCIA.Value;

                      end;

                      if datos.QInventarioEQEXISTENCIA.Value > 0 then
                      begin
                        FactExistencia2 := datos.QInventarioEQEXISTENCIA.Value;
                      end;

                      if datos.ZUconfiguracionEXISTENCIAFACT.Value = 1 then
                      begin

                        if (FactExistencia > 0) or (FactExistencia2 > 0) then
                        begin


                          if (FactExistencia > 0) and (FactExistencia <= 1.00) then
                             begin
                                   cantoriginal := FloatTOStr(FactExistencia2);
                             end else begin
                                          cantoriginal := '1';
                                      end;

                          if (FactExistencia2 > 0) and (FactExistencia2 <=1) then
                             begin
                                   cantoriginal := FloatTOStr(FactExistencia2);
                            end else begin
                                          cantoriginal := '1';
                                      end;

                          FrmNFact_normal.edit11.Text := '1';
                          FrmNFact_normal.edtPorcentDesc.Text :=
                            FloatToStr(IbqRArticulosDESCPERMITIDO.Value);
                          FrmNFact_normal.t1.Text := IbqRArticulosCODIGOTXT.Value;
                          FrmNFact_normal.t2.Text := IbqRArticulosARTICULO.Value;
                          FrmNFact_normal.EditCat.Text := IbqRArticulosCOD_CAT.Text;
                          FrmNFact_normal.Descc_t.Text := IbqRArticulosCOMISION.Text;

                          FrmNFact_normal.edit14.Text := FloatToStr(IbqRArticulosTAZA_COMPRA.Value);

                          FrmNFact_normal.edtPorcentDesc.Text :=
                            FloatToStr(IbqRArticulosDESCPERMITIDO.Value);
                          FrmNFact_normal.edtITBAplicado.Text :=
                            FloatToStr(IbqRArticulosTAZA_COMPRA.Value);

                          if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value <> 1 then
                          begin
                            if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 1' then
                            BEGIN
                              FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_A.Value;
                            END;

                            if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 2' then
                            BEGIN
                              FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_B.Value;
                            END;

                            if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 3' then
                            BEGIN
                              FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_D.Value;
                            END;
                          end
                          else
                          begin
                            FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_C.Value;
                          end;
                          //

                          FrmNFact_normal.lunidad.Text := IbqRArticulosUNIDADVENTA.Value;
                          FrmNFact_normal.t3.Text := cantoriginal;

                          FrmNFact_normal.linea.Text := 'ART';

                          if IbqRArticulosPOLITICA.Value = 'Unitario' then
                          begin

                            FrmNFact_normal.topcion.Text := 'UNI';
                          end;

                          if IbqRArticulosPOLITICA.Value = 'oferta' then
                          begin
                            FrmNFact_normal.topcion.Text := 'OFE';
                          end;

                          if IbqRArticulosPOLITICA.Value = 'servicio' then
                          begin
                            FrmNFact_normal.topcion.Text := 'SER';
                          end;

                          if IbqRArticulosPOLITICA.Value = 'fraccional' then
                          begin

                            FrmNFact_normal.topcion.Text := 'FRA';
                          end;

                          cxbutton9.Click;
                          datos.FbCategorias.CLOSE;
                          // FrmNFact_normal.buscararticulos.Visible := false;

                          if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                          begin
                            FrmNFact_normal.BARRA.SetFocus;
                            FrmNFact_normal.BARRA.Clear;
                            Edit19.Clear;
                          end
                          else
                          begin
                            FrmNFact_normal.barra1.Clear;
                            FrmNFact_normal.barra1.SetFocus;
                            // edit19.Clear;
                          end;
                          IbqRArticulos.CLOSE;

                        end
                        else if datos.QInventarioEQEXISTENCIA.Value <= 0 then
                        begin
                          MsgInformacion(' Este producto no tiene existencia ')

                        end;

                      end
                      else
                      begin

                        FrmNFact_normal.edit11.Text := '1.00';

                        FrmNFact_normal.t1.Text := IbqRArticulosCODIGOTXT.Value;
                        FrmNFact_normal.t2.Text := IbqRArticulosARTICULO.Value;
                        FrmNFact_normal.edtPorcentDesc.Text :=
                          FloatToStr(IbqRArticulosDESCPERMITIDO.Value);
                        FrmNFact_normal.Descc_t.Text := IbqRArticulosCOMISION.Text;
                        FrmNFact_normal.EditCat.Text := IbqRArticulosCOD_CAT.Text;
                        FrmNFact_normal.edit14.Text := FloatToStr(IbqRArticulosTAZA_COMPRA.Value);
                        FrmNFact_normal.edtPorcentDesc.Text :=
                          FloatToStr(IbqRArticulosDESCPERMITIDO.Value);
                        FrmNFact_normal.edtITBAplicado.Text :=
                          FloatToStr(IbqRArticulosTAZA_COMPRA.Value);

                        if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value <> 1 then
                        begin

                          if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 1' then
                          BEGIN
                            FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_A.Value;
                          END;

                          if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 2' then
                          BEGIN
                            FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_B.Value;
                          END;

                          if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 3' then
                          BEGIN
                            FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_D.Value;
                          END;
                        end
                        else
                        begin
                          FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_C.Value;
                        end;
                        //

                        FrmNFact_normal.lunidad.Text := IbqRArticulosUNIDADVENTA.Value;
                        FrmNFact_normal.t3.Text := cantoriginal;

                        FrmNFact_normal.linea.Text := 'ART';

                        if IbqRArticulosPOLITICA.Value = 'Unitario' then
                        begin
                          FrmNFact_normal.topcion.Text := 'UNI';
                        end;

                        if IbqRArticulosPOLITICA.Value = 'servicio' then
                        begin
                          FrmNFact_normal.topcion.Text := 'SER';
                        end;

                        if IbqRArticulosPOLITICA.Value = 'oferta' then
                        begin
                          FrmNFact_normal.topcion.Text := 'OFE';
                        end;

                        if IbqRArticulosPOLITICA.Value = 'fraccional' then
                        begin

                          FrmNFact_normal.topcion.Text := 'FRA';
                        end;

                        FrmNFact_normal.cxbutton9.Click;
                        datos.FbCategorias.CLOSE;
                        // FrmNFact_normal.buscararticulos.Visible := false;

                        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                        begin
                          FrmNFact_normal.BARRA.SetFocus;
                          FrmNFact_normal.BARRA.Clear;
                          Edit19.Clear;
                        end
                        else
                        begin
                          FrmNFact_normal.barra1.Clear;
                          FrmNFact_normal.barra1.SetFocus;
                          // edit19.Clear;
                        end;

                        IbqRArticulos.CLOSE;
                      end;




          end;

        end;

        barra.Clear;

      end

      /// //////  Buscar sin codigo de Barra //////
      else
      begin

        FrmFindArticulos.Edit1.text := '';

        datos.FbCategorias.open;

        with FrmFindArticulos.IbqRArticulos do
        begin
          close;
          sql.Clear;
          sql.Add('select a.unidad,a.precio_a, a.codigobarra,a.precio_b, precio_c, precio_d,a.codigobarra, a.comision, a.referencia,a.ubicacion,a.cod_art,a.articulo,a.cod_cat, a.OBS,');
          sql.Add('a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
          sql.Add('a.mayoreo1,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.mayoreo2, a.mayoreo3 from mtartuculos a');
          sql.Add('left join minventario b On a.cod_art = b.cod_art');
          sql.Add('where a.articulo like ' + #39 + '%' + codoriginal +
            '%' + #39);
          sql.Add('group by a.unidad,a.precio_a, a.codigobarra,a.precio_b, precio_c, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
          sql.Add('a.marca,a.codigotxt,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');

          open;
        end;

        barra.Clear;
        FrmFindArticulos.ShowModal;

        // cxgrid6.setfocus;

      end;
    end;
  end;
end;

procedure TFrmNFact_normal.Edit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    cxButton23.Click;
  end;

end;

procedure TFrmNFact_normal.Edit19Change(Sender: TObject);
VAR
  codoriginal: string;
  BuscarSerie: String;
  CANTV: String;
  n: Integer;
  T, ST, p1, p2, p3, p4: string;
begin

end;

procedure TFrmNFact_normal.Edit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  T: String;
  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;
begin

end;

procedure TFrmNFact_normal.Edit1Change(Sender: TObject);
begin

  // if opb.ItemIndex = 0 then
  // begin
  //
  // with ibqclientes do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.* from cliente a');
  // sql.Add('where a.nombres like '+#39+'%'+edit1.Text+'%'+#39);
  // open;
  // end;
  //
  // end;
  //
  // if opb.ItemIndex = 1 then
  // begin
  //
  //
  // with ibqclientes do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.* from cliente a');
  //
  // sql.Add('where a.numeropin like '+#39+'%'+edit1.Text+'%'+#39);
  // open;
  // end;
  // end;

end;

procedure TFrmNFact_normal.Edit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  suma, itbs: Currency;
begin
  if Key = vk_return then
  begin
    if Edit21.text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
    begin
      PanelPrecios.Visible := FALSE;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
        barra.Clear;

      end
      else
      begin
        barra1.Clear;
        barra1.SetFocus;

      end;
      Edit21.Clear;
      PanelPrecios.Width := 376;
      cxButton26.Enabled := TRUE;
    end
    else
    begin
      ShowMessage(' Clave Incorrecta');
      Edit21.Clear;
      PanelPrecios.Width := 376;
      cxButton26.Enabled := TRUE;
    end;

  end;
end;

procedure TFrmNFact_normal.Edit2Change(Sender: TObject);
begin

  with QEmpleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where nombres_emp like ' + #39 + '%' + Edit2.text + '%' + #39);
    sql.Add('and cargo =:oo');
    params[0].Value := 'DESIGN';
    open;
  end;
end;

procedure TFrmNFact_normal.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    cxButton6.SetFocus;
  end;
end;

procedure TFrmNFact_normal.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin

    with numeroSerie do
    begin
      close;
      open;
    end;

    datos.Series.Insert;
    datos.SeriesCOD_SERIES.Value := numeroSerieMAX.Value + 1;
    datos.SeriesCOD_ARTI.Value := datos.ZdetalleARTICULOID.Value;
    datos.SeriesESTADO.Value := 1;
    datos.SeriesNO_FACT.Value := datos.FbqMaster_FactNO_FACT.Value;
    datos.SeriesSERIES.Value := Edit7.text;
    datos.Series.Post;
    Edit7.Clear;

  end;

end;

procedure TFrmNFact_normal.edtDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var

  ITBArticulos: Integer;
  ITBDeducible: String;
  IDD: double;

begin
  if Key = vk_return then
  begin

    if StrToFloat(edtDesc.text) <= datos.ZdetallePORCENTDESC.Value then
    begin

      ITBArticulos := Round(datos.ZdetalleIBSAPLICADO.Value);
      ITBDeducible := '1.' + intTostr(ITBArticulos);
      IDD := StrToFloat(ITBDeducible);

      if datos.ZdetalleITBS_ART.Value = 'S' then
      begin
        datos.Zdetalle.Edit;
        datos.zdetalledesc.Value := (datos.ZdetalleTOTAL.Value) *
          (StrToFloat(edtDesc.text) / 100);
        datos.ZdetalleITBS.Value :=
          ((datos.ZdetalleTOTAL.Value - datos.zdetalledesc.Value) / IDD) *
          (datos.ZdetalleIBSAPLICADO.Value / 100);
        datos.ZdetallePORCDESCUENTO.Value := StrToFloat(edtDesc.text);
        datos.Zdetalle.Post;
      end;

      if datos.ZdetalleITBS_ART.Value = 'N' then
      begin
        datos.Zdetalle.Edit;
        datos.zdetalledesc.Value := (datos.ZdetalleTOTAL.Value) *
          (StrToFloat(edtDesc.text) / 100);
        datos.ZdetallePORCDESCUENTO.Value := StrToFloat(edtDesc.text);
        datos.Zdetalle.Post;
      end;

      edtDesc.text := '%%';
      pnlDescuento.Visible := FALSE;
    end
    else
    begin
      datos.Zdetalle.Edit;
      datos.zdetalledesc.Value := 0.00;
      edtDesc.text := '%%';
      pnlDescuento.Visible := FALSE;
    end;
    Totales;
  end;
end;

procedure TFrmNFact_normal.EliminarRow;
begin

  if (datos.ZUconfiguracionGENERART.Value = 'SI') and
    (datos.fbqMaster_factsituacion.text = 'HOLD') then
  begin
    if FAutorizacion.ShowModal = mrOk then
    begin
      if datos.ZdetalleTOTAL.Value < 0.00 then
      begin

        with UpdateNC do
        begin
          close;
          sql.Clear;
          sql.Add('update mnoc set afecta_inv = 1');
          sql.Add('where mncid =:opp');
          params[0].Value := datos.ZdetalleMASTERID.Value;
          ExecSQL;
        end;

        with comisionCancelar do
        begin
          close;
          sql.Clear;
          sql.Add('delete from COMISIONINSTALADOR where id_fact =:opcion1');
          params[0].Value := datos.ZdetalleMASTERID.Value;
          ExecSQL;
        end;

      end;
      datos.Zdetalle.Delete;

      Totales;

      // datos.FbqMaster_Fact.Edit;
      // datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
      // datos.fbqmaster_factdescuento.Value := descc;
      // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
      // begin
      // datos.FbqMaster_FactMONTO.Value := suma;
      //
      // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
      // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
      // end else begin
      // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
      // end;
      //
      // end;
      //
      // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      // begin
      // datos.FbqMaster_FactMONTO.Value := suma - itbs;
      // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
      // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
      // end else begin
      // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
      // end;
      //
      // end;
      //
      // if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      // begin
      // datos.FbqMaster_FactMONTO.Value := suma - itbs;
      // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
      // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
      // end else begin
      // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
      // end;
      //
      // end;

      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        barra.SetFocus;
      end
      else
      begin
        barra1.Clear;
      end;

      Nregistro := DBGrid1.Datasource.Dataset.RecordCount;
      Edit4.text := intTostr(Nregistro);
    end;

  end
  ELSE
  BEGIN

    if datos.ZdetalleTOTAL.Value < 0.00 then
    begin

      with UpdateNC do
      begin
        close;
        sql.Clear;
        sql.Add('update mnoc set afecta_inv = 1');
        sql.Add('where mncid =:opp');
        params[0].Value := datos.ZdetalleMASTERID.Value;
        ExecSQL;
      end;

      with comisionCancelar do
      begin
        close;
        sql.Clear;
        sql.Add('delete from COMISIONINSTALADOR where id_fact =:opcion1');
        params[0].Value := datos.ZdetalleMASTERID.Value;
        ExecSQL;
      end;

    end;
    datos.Zdetalle.Delete;

    Totales;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactPOGXITBS.Value := itbs;
    // cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
    datos.FbqMaster_Factdescuento.Value := descc;
    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma;

      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value;
      end;

    end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma - itbs;
      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;

    end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
    begin
      datos.FbqMaster_FactMONTO.Value := suma - itbs;
      if datos.FbqMaster_Factdescuento.Value = 0.00 then
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          datos.FbqMaster_FactMONTO.Value + itbs;
      end
      else
      begin
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs;
      end;

    end;

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
    end
    else
    begin
      barra1.Clear;
    end;

    Nregistro := DBGrid1.Datasource.Dataset.RecordCount;
    Edit4.text := intTostr(Nregistro);
  END;

end;

procedure TFrmNFact_normal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmNFact_normal := nil;
  Action := Cafree;
  FrmHome.pnl_Menu_Lateral.Visible := TRUE;
  FrmHome.pnlTop.Visible := TRUE;
  FrmHome.btnsalir.Enabled := TRUE;
  FrmHome.s1.Enabled := TRUE;
  FrmHome.spSalir.Enabled := TRUE;

end;

procedure TFrmNFact_normal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cero: string;
  ST, p1, p2, p3, p4: string;
begin
  if ((ssAlt in Shift) and (Key = VK_F4)) then
    Key := 0;

  if Key = vk_f5 then
  begin

    cambiarprecio;

  end;

  if Key = VK_F6 then
  begin

    if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
      (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
    begin
      if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '')
      then
      begin
        MsgInformacion
          (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
      end
      else
      begin
        enviohold;

      end;
    end
    else
    begin
      enviohold;
    end;

    offMenu;
  end;

  if Key = vk_f9 then
  begin
    if datos.ZdetalleTOTAL.Value >= 0.00 then
    begin
      PanelLTOP.Enabled := TRUE;
      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
      begin

        // edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value + datos.Zdetalleitbs.Value) /100))));
        t4.Value := datos.ZdetallePRECIO.Value +
          (datos.ZdetalleITBS.Value / datos.ZdetalleCANTIDAD.Value);
        Descc_t.text :=
          floatToStr(((datos.ZdetalleANCHO.Value / datos.ZdetallePRECIO.Value) *
          100) / datos.ZdetalleCANTIDAD.Value);
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
      begin

        Edit14.text :=
          floatToStr
          (Round((datos.ZdetalleITBS.Value / ((datos.ZdetallePRECIO.Value)
          / 100))));
      end;

      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
      begin

        Edit14.text := floatToStr(datos.ZdetallePRECIO.Value);
      end;

      // PanelCantidad.Visible := true;
      Edit15.text := 'cant';
      t3.Enabled := TRUE;
      t3.text := datos.ZdetalleCANTIDAD.text;

      t3.SetFocus;



      BTSerial.Enabled := TRUE;
    end;


  end;
  if Key = VK_F11 then
  begin
    if FrmCunsulta_Precio = nil then
    begin
      FrmCunsulta_Precio := TFrmCunsulta_Precio.create(self);
      FrmCunsulta_Precio.ShowModal;
    end;
  end;

  if Key = VK_f7 then
  begin
    if total.Value = 0.00 then
    begin
      ShowMessage('Esta hay total facturado para aplicar descuento');
    end
    else
    begin

      PanelDesc.Visible := TRUE;
      cxTextEdit1.SetFocus;
    end;
  end;

  if Key = VK_F6 then
  begin
    if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
    begin
      if total.Value = 0.00 then
      begin
        ShowMessage('Esta Factura no Esta Completa');
      end
      else
      begin

        with datos.Series do
        begin
          close;
          // params[0].Value := datos.ZdetalleARTICULOID.Value;
          // params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
          open;
        end;
        Opserial.Visible := TRUE;
        Edit7.SetFocus;
      end;
    end
    else
    begin
      ShowMessage('** Esta opción no esta activada por el Administrador **');
    end;
  end;

  if Key = vk_F10 then
  begin
    if FrmHold = nil then
    begin
      FrmHold := tFrmHold.create(self);
      FrmHold.ShowModal;
    end;
  end;

  if Key = vk_f8 then
  begin
    if B1.Enabled = FALSE then
    begin
      FrmConsultaCliente.Edit2.text := 'FACT';
      FrmConsultaCliente.IbqClientes.open;
      FrmConsultaCliente.ShowModal;
    end;
  end;

  if Key = VK_F4 then
  begin

    if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
      (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
    begin
      if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '')
      then
      begin

        MsgInformacion
          (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
      end
      else
      begin

        pago;
      end;
    end
    else
    begin

      pago;
    end;
  end;

  if Key = vk_f2 then
  begin

    if B1.Enabled = FALSE then
    begin

      FrmFindArticulos.PageArticulos.ActivePageIndex := 0;
      if datos.zuconfiguracionUSARRMA.Value = 1 then
      begin
        with QRMA do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo  from rmam a');
          sql.Add('left join cliente b on a.idcliente = b.codigo');
          sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =''INSTALADOR''');
          sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
          sql.Add('where a.estado =''Cerrado''');
          sql.Add('and a.monto > 0.00');
          sql.Add('and a.idmarca <> 1');
          open;

        end;
        FrmFindArticulos.PageArticulos.Pages[1].tabVisible := TRUE;
      end
      else if datos.zuconfiguracionUSARRMA.Value = 2 then
      begin

        FrmFindArticulos.PageArticulos.Pages[1].tabVisible := FALSE;
      end;

      FrmFindArticulos.ShowModal;

      // datos.FbCategorias.open;
      if barra1.text = '' then
      begin

        with IbqRArticulos do
        begin
          close;
          sql.Clear;
          sql.Add('select FIRST 25 a.unidad,a.costo_pr, precio_c, a.comision,a.referencia, a.ubicacion, a.beneficios,a.precio_a, a.precio_b, a.precio_d, a.codigobarra, a.obs,');
          sql.Add('a.cod_art,upper(a.articulo) articulo,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.TIENECOMPACTIBILIDAD,');
          sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
          sql.Add('where a.condicion =''Productos''');
          if FrmFindArticulos.Edit19.text <> '' then
          begin
            sql.Add('and upper(a.articulo) CONTAINING :buscar');
          end;

          sql.Add('group by a.unidad,a.precio_a, precio_c, a.comision,a.precio_b, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,');
          sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3,  a.referencia,a.ubicacion, a.obs');

          if FrmFindArticulos.Edit19.text <> '' then
          begin
            params[0].Value := FrmFindArticulos.Edit19.text;
          end;

          open;
        end;

      end
      else if barra1.text <> '' then
      begin
        with IbqRArticulos do
        begin
          close;
          sql.Clear;
          sql.Add('select a.unidad,a.precio_a, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
          sql.Add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
          sql.Add('a.mayoreo1, a.mayoreo2,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.mayoreo3 from mtartuculos a');
          sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo containing :PALABRA2 AND ARTICULO CONTAINING :PALABRA3 AND ARTICULO CONTAINING :PALABRA4');
          // sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
          sql.Add('group by a.unidad,a.precio_a, precio_c, a.precio_b, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
          sql.Add('a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.comision, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');

          ST := barra1.text;

          while Length(ST) > 0 do
          BEGIN
            p1 := Token(' ', ST);
            p2 := Token(' ', ST);
            p3 := Token(' ', ST);
            p4 := Token(' ', ST);

          END;

          params[0].Value := p1;
          params[1].Value := p2;
          params[2].Value := p3;
          params[3].Value := p4;

          open;
        end;

      end;

    end;
  end;

  if B1.Enabled = TRUE then
  begin

    if Key = vk_f3 then
    begin

      addFact;

    end;

    if Key = vk_escape then
    begin
      if CostoMSN.Visible = TRUE then
      begin
        CostoMSN.Visible := FALSE;
      end;
      if Panel13.Visible = TRUE then
      begin
        Panel13.Visible := FALSE;
      end;

      if pnlDescuento.Visible = TRUE then
      begin
        ShowMessage('');
        pnlDescuento.Visible := FALSE;
      end;

      if Panel13.Visible = TRUE then
      begin
        Panel13.Visible := FALSE;
      end;

      if (Impresas.Visible = FALSE) and (cxGrid2.Visible = TRUE) then
      begin
        cxGrid2.Visible := FALSE;
        DetalleFacturas.close;

      end
      else if (Impresas.Visible = TRUE) and (cxGrid2.Visible = TRUE) then
      begin
        cxGrid2.Visible := FALSE;
        Impresas.Visible := TRUE;
        DetalleFacturas.close;
      end
      else if (Impresas.Visible = TRUE) and (cxGrid2.Visible = FALSE) then
      begin
        Impresas.Visible := FALSE;
        FacturasImpresas.close;

      end;






      // OpBuscarCLiente.Visible := false;

      if PartiGrid.Visible = TRUE then
      begin
        PartiGrid.Visible := FALSE;
        Fraccionado.close;
      end;

      if Opserial.Visible = TRUE then
      begin
        Edit7.Clear;
        Opserial.Visible := FALSE;

      end;

      if Panel1.Visible = TRUE then
      begin
        Edit6.text := '1';
        Panel1.Visible := FALSE;
      end;

      if PanelDesc.Visible = TRUE then
      begin
        PanelDesc.Visible := FALSE;
      end;

      if PanelConduce.Visible = TRUE then
      begin
        PanelConduce.Visible := FALSE;
      end;

    end;
  end;
end;

procedure TFrmNFact_normal.FormShow(Sender: TObject);
begin
  datos.Zdetalle.close;
  datos.FbqMaster_Fact.close;

  pnl_Menu_Lateral.Width := 41;
  if datos.ZUconfiguracionUSARCASHDRAWER.Value = 'SI' then
  BEGIN
    cxButton20.Enabled := TRUE;

  END
  ELSE
  BEGIN
    cxButton20.Enabled := FALSE;
  END;

  if datos.ZUconfiguracionACTIVARSOLIDARIDAD.Value = 'SI' then
  begin
    Panel32.Visible := TRUE;
    cxButton45.Visible := TRUE;
  end
  else
  begin
    Panel32.Visible := FALSE;
    cxButton45.Visible := FALSE;
  end;

  if TRUE then

    if datos.ZUconfiguracionIMP_CANT.Value = 'Si' then
    begin
      BTMayor.Visible := TRUE;

    end
    else
    begin
      BTMayor.Visible := FALSE;
    end;

  if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin

    barra.Visible := TRUE;
    barra1.Visible := FALSE;
  end
  else
  begin

    barra.Visible := FALSE;
    barra1.Visible := TRUE;
  end;
  if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
  begin
    SHPropina.Visible := TRUE;
  end
  ELSE
  begin
    SHPropina.Visible := FALSE;
  end;

  if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    // label34.Visible := true;
    datos.Series.open;
  end
  else
  begin
    // label34.Visible := false;
    datos.Series.close;
  end;

  // RxDBComboBox1.Enabled := false;
  // cerrar.Enabled := false;
  // frmNfact.Left := 241;
  // frmNfact.Top := 30;

  // cxDBTextEdit5.SetFocus;
  HOLD.close;
  HOLD.params[0].Value := 'HOLD';
  HOLD.open;
  // opdetalle.Enabled := false;

  // BtBuscarPedido.Enabled := true;
  BTpedido.Enabled := TRUE;

  cerrar.Enabled := TRUE;
  Edit5.Clear;
  cxButton14.Enabled := TRUE;
  cxButton4.Enabled := TRUE;

  B1.Enabled := TRUE;
  B2.Enabled := FALSE;

  B3.Enabled := FALSE;

  B6.Enabled := FALSE;
  B4.Enabled := FALSE;
  BtnPrintConduce.Enabled := FALSE;
  cxButton5.Enabled := TRUE;
  cxButton11.Enabled := FALSE;
  Panel12.Visible := FALSE;

  BTborrar.Enabled := FALSE;
  B6.Enabled := FALSE;
  cxButton12.Enabled := FALSE;
  cxGrid1.SetFocus;
  permisos;

  if datos.ZUconfiguracionTIPO_FACTURACION.Value = 1 then
  begin

    Panel48.Visible := FALSE;
    B3.Enabled := FALSE;
    Ppagos.Visible := TRUE;
    Panel33.Visible := FALSE;

  end
  else
  begin
    Panel48.Visible := TRUE;
    B3.Enabled := TRUE;
    Ppagos.Visible := FALSE;
    Panel33.Visible := TRUE;
  end;

  // cerrar.Enabled := true;
end;

procedure TFrmNFact_normal.Label41Click(Sender: TObject);
begin

  PanelPrecios.Visible := FALSE;
  qprecios.close;
  // edit16.Clear;

end;

procedure TFrmNFact_normal.Label49Click(Sender: TObject);
begin
  CostoMSN.Visible := FALSE;
end;

procedure TFrmNFact_normal.Memo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    Panel13.Visible := FALSE;
  end;
end;

procedure TFrmNFact_normal.RebajaInventario;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  MEN_PIE: string;
  cInf: String;
  diascondicioncredito: Integer;
  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion: String;
begin
  datos.ZInventario.open;

  with datos.Zdetalle do
  begin

    open;
    while not Eof do
    begin
      canfra := 0;

      with datos.MantArt do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
        sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
        sql.Add('left join tb_moneda c On a.idmoneda = c.id');
        sql.Add('where a.cod_art =:oo');
        params[0].Value := datos.ZdetalleARTICULOID.Value;
        open;
      end;

      if datos.ZdetalleCOMBO.Value = 'FRA' then
      BEGIN

        WITH Qfraccionado do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.descripcion from particionado a');
          sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
          sql.Add('where a.cod_arti =:pp');
          sql.Add('and a.unidad =:pp2');
          params[0].Value := datos.ZdetalleARTICULOID.Value;
          params[1].Value := datos.ZdetalleUNID.Value;
          open;
        end;

        // Showmessage(''+ QfraccionadoUNIDAD.text+' '+QfraccionadoCOD_PART.Text);
        canfra := (datos.ZdetalleCANTIDAD.Value * QfraccionadoCOD_PART.Value);
        datos.MantArt.Edit;
        datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value - canfra;
        datos.MantArt.ApplyUpdates;

      END
      else
      begin
        datos.MantArt.Edit;
        datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value -
          datos.ZdetalleCANTIDAD.Value;
        datos.MantArt.ApplyUpdates;
      end;

      with numeroinventario do
      begin
        close;
        sql.Clear;
        sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
        open;
      end;

      datos.ZInventario.Insert;
      datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
      datos.ZInventarioFECHA.Value := Now();
      datos.ZInventarioIDTIENDA.Value := AsignaTienda;
      datos.ZInventarioCOD_ART.Value := StrToInt(datos.Zdetallecod_art.text);
      datos.ZInventarioCONCEPTOID.Value := 11;
      datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;

      if datos.ZdetalleIDALMACEN.Value = datos.ZUconfiguracionALMACENRMA.Value
      then
      begin
        datos.ZInventarioCOD_ALM.Value := datos.ZUconfiguracionALMACENRMA.Value;

      end;

      datos.ZInventarioCOD_ALM.Value := 1;

      if datos.ZdetalleCOMBO.Value = 'FRA' then
      BEGIN
        // ShowMessage('');
        datos.ZInventarioSALIDA.Value :=
          (datos.ZdetalleCANTIDAD.Value * QfraccionadoCOD_PART.Value);
      END
      else
      begin
        datos.ZInventarioSALIDA.Value := datos.ZdetalleCANTIDAD.Value;
      end;

      datos.ZInventarioENTRADA.Value := 0.00;
      Next;
    end;

    datos.ZInventario.ApplyUpdates;

  end;

end;

procedure TFrmNFact_normal.RxDBComboBox1Change(Sender: TObject);
begin
  if cxDBTextEdit4.text = '' then
  begin
    ShowMessage('** Seleccione el Cliente **');
  end
  else
  begin
    // if (ibqclientescondicion.Value = 'DETALLE') AND (RxDBComboBox1.ItemIndex = 1) then
    // BEGIN
    // Showmessage('** Este Cliente No Tiene Autorizacion Para Ventas al Por Mayor **');
    // RxDBComboBox1.ItemIndex := 0;
    // END;

  end;
end;

procedure TFrmNFact_normal.RxDBComboBox2Change(Sender: TObject);
begin

  if cxDBTextEdit4.text = '' then
  begin
    ShowMessage('** Seleccione el Cliente **');
  end
  else
  begin
    { if RxDBComboBox2.ItemIndex = 0 then
      begin
      WITH ibqclientes do
      begin
      close;
      sql.Clear;
      sql.Add('select * from cliente');
      sql.Add('where codigo =:pp');
      params[0].Value := cxDBSpinEdit1.Value;
      open;
      end;
      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactRNC_CLIENTE.Value := ibqclientescedula.Value;
      // opmaster1.Enabled := true;
      cxDBTextEdit2.SetFocus;
    }

    /// ******************* Proceso General Comprobante
    ///
    ///
    ///
    /// ***********************************************

  end;

end;

procedure TFrmNFact_normal.RxDBComboBox2PropertiesChange(Sender: TObject);
var
  cero1: string;
  nume: Integer;
begin
  {
    if RxDBComboBox2.ItemIndex = 1 then
    begin
    cxDBTextEdit2.Clear;
    cxDBTextEdit7.Clear;
    end else begin
    try
    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactRNC_CLIENTE.Value := ibqclientescedula.Value;

    with ncf do
    begin
    close;
    sql.Clear;
    sql.Add('select * from ncf');
    sql.Add('where tipo =:tipo');
    params[0].Value := 'FISCAL';
    OPEN;
    end;

    nume := ncfdesde.Value + ncfuso.Value;

    if nume  >= 1 then
    begin
    cero1 := '000';
    end;

    if nume  >= 10 then
    begin
    cero1 := '00';
    end;

    if nume  >= 100 then
    begin
    cero1 := '0';
    end;

    if nume >= 1000 then
    begin
    cero1 := '';
    end;

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactNCF.Value := ncfnuntext.Value +cero1+IntToStr(nume);
    finally

    end;

    end;

  }
end;

procedure TFrmNFact_normal.SHPropinaClick(Sender: TObject);
begin
  datos.FbqMaster_Fact.Edit;
  if datos.FbqMaster_Factdescuento.Value = 0.00 then
  begin

    if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
    begin

      if SHPropina.IsOn = TRUE then
      begin
        datos.FbqMaster_FactLEYPROPINA.Value :=
          Round(datos.FbqMaster_FactMONTO.Value * 0.10);
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value +
          itbs + datos.FbqMaster_FactLEYPROPINA.Value;
      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value +
          itbs + datos.FbqMaster_FactLEYPROPINA.Value;
      end;

    end
    else
    begin
      datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
      datos.FbqMaster_FactMONTOPAGO.Value :=
        datos.FbqMaster_FactMONTO.Value + itbs;
    end;

  end
  else
  begin
    if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
    begin
      if SHPropina.IsOn = TRUE then
      begin
        datos.FbqMaster_FactLEYPROPINA.Value :=
          Round((datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) * 0.10);
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs +
          datos.FbqMaster_FactLEYPROPINA.Value;
      end
      ELSE
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs +
          datos.FbqMaster_FactLEYPROPINA.Value;
      end;
    end
    else
    begin
      datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
      datos.FbqMaster_FactMONTOPAGO.Value :=
        (datos.FbqMaster_FactMONTO.Value -
        datos.FbqMaster_Factdescuento.Value) + itbs;
    end;
  end;

end;

procedure TFrmNFact_normal.sdsdsd32323Click(Sender: TObject);
begin

  if FrmConsultaCliente = nil then
  begin
    FrmConsultaCliente := tFrmConsultaCliente.create(self);
    FrmConsultaCliente.Edit2.text := 'FACT';
    FrmConsultaCliente.IbqClientes.open;
    FrmConsultaCliente.ShowModal;

  end;
end;

procedure TFrmNFact_normal.Sp155Click(Sender: TObject);
begin
  addFact;
end;

procedure TFrmNFact_normal.B1Click(Sender: TObject);
begin
  offMenu;
  addFact;
end;

procedure TFrmNFact_normal.cxButton4Click(Sender: TObject);
begin

  with FacturasImpresas do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');

    if OpCuando.ItemIndex = 0 then
    begin
      sql.Add('and a.fecha_fac >=:fechas');
    end
    else
    begin
      sql.Add('and a.fecha_fac <:fechas');
    end;
    // open;

    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    params[3].Value := Now();
  end;

  Impresas.Visible := TRUE;

  cxTextEdit2.SetFocus;

  cxButton6.Enabled := FALSE;
  cxButton7.Enabled := FALSE;
  cxButton5.Enabled := TRUE;
  cxButton9.Enabled := FALSE;
  // cxButton1.Enabled := true;
  cxButton4.Enabled := TRUE;

  offMenu;

  // frmFact.facturasEmitidas.Close;
  // frmFact.facturasEmitidas.open;
  // CLOSE;

end;

procedure TFrmNFact_normal.B4Click(Sender: TObject);
begin

  if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
  begin
    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin
      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      enviohold;

    end;
  end
  else
  begin
    enviohold;
  end;

  offMenu;
end;

procedure TFrmNFact_normal.cxButton5Click(Sender: TObject);
begin
  if FrmHold = nil then
  begin
    FrmHold := tFrmHold.create(self);
    FrmHold.ShowModal;
  end;

  offMenu;
end;

procedure TFrmNFact_normal.SpeedButton1Click(Sender: TObject);
begin
  offMenu;
end;

procedure TFrmNFact_normal.SpeedButton233Click(Sender: TObject);
begin

  // FrmConsultaNotaC.showmodal;

end;

procedure TFrmNFact_normal.SpeedButton2Click(Sender: TObject);
begin

  datos.FbCategorias.open;

  with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.unidad,a.precio_a,a.codigobarra,a.comision, precio_c, a.precio_b,a.referencia, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.OBS,');
    sql.Add(' a.costo_pr, a.beneficios,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.TIENECOMPACTIBILIDAD,  a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion from mtartuculos a ');
    sql.Add('where a.codigobarra =:PPP');
    sql.Add('group by a.unidad,a.precio_a,a.codigobarra, a.comision, precio_c, a.precio_b, a.precio_d, a.referencia, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, ');
    sql.Add('a.costo_pr, a.beneficios,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,  a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion,a.OBS');
    params[0].Value := 'SER001';
    open;
  end;

  // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
  Edit11.text := '1.00';
  //
  t1.text := IbqRArticulosCODIGOTXT.Value;
  t2.text := Memo2.text;
  if CHK.Checked = TRUE then
  begin

    tecnico := StrToInt(TecnicosCOD_EMP.Value);
  end;

  // Showmessage(''+ibqrArticulositbis.Value);
  // EITBIS.Text  := ibqrArticulositbis.Text;

  Edit14.text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);
  t4.Value := CurrencyEdit1.Value;
  //

  lunidad.text := IbqRArticulosUNIDADVENTA.Value;
  // //FrmNFact_normal.LUnid.ItemIndex := -1;
  // // FrmNFact_normal.LUnid.ItemIndex := 0;
  t3.text := '1';

  linea.text := 'ART';
  // taza.Text := ibqrarticulostaza_compra.Text;

  if IbqRArticulosPOLITICA.Value = 'Unitario' then
  begin
    topcion.text := 'UNI';
  end;

  if IbqRArticulosPOLITICA.Value = 'servicio' then
  begin
    topcion.text := 'SER';
  end;

  // cxButton9.Enabled := true;

  try
    cxButton9.Click;
  except

  end;

  Memo2.Clear;
  CurrencyEdit1.Value := 0.00;
  Panel13.Visible := FALSE;
  Label38.Caption := 'No Hay Instalador Asignado';
end;

procedure TFrmNFact_normal.SpeedButton3Click(Sender: TObject);
begin

  if datos.ZUconfiguracionUSAR_ESP.Value = 'SI' then
  begin
    if FAutorizacion.ShowModal = mrOk then
    begin
      Panel13.Visible := TRUE;
      Memo2.Clear;
      Memo2.Top := 0;
      Memo2.text := 'ARTICULOS VARIOS';
      Tecnicos.close;
      Tecnicos.open;
      Label38.Caption := 'No Hay Instalador Asignado';
    end;
  end
  else
  begin
    Panel13.Visible := TRUE;
    Memo2.Clear;
    Memo2.Top := 0;
    Memo2.text := 'ARTICULOS VARIOS';
    Tecnicos.close;
    Tecnicos.open;
    Label38.Caption := 'No Hay Instalador Asignado';
  end;
end;

procedure TFrmNFact_normal.SpeedButton4Click(Sender: TObject);
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
  CantR: double;

  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion: String;
begin

  if qMantArtCOD_SERIE.Value = 2 then
  begin
    Crear_Mensages('Error', 'Ventas al Graner',
      'La venta al graner no esta activida para este producto',
      ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png', 'OK');
  end
  else
  begin

    datos.Zdetalle.Edit;
    if datos.ZdetalleITBS_ART.Value = 'S' then
    begin

      CantR := (StrToFloat(t3.text) /
        ((datos.ZdetalleTOTAL.Value / datos.ZdetalleCANTIDAD.Value)));

      if qMantArtEXISTENCIA1.Value > 0 then
      begin

        if CantR >= qMantArtEXISTENCIA1.Value then
        begin

          datos.ZdetalleCANTIDAD.Value := CantR;

          datos.ZdetallePRECIO.Value := t4.Value / 1.18;
          datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
            datos.ZdetalleCANTIDAD.Value;
          datos.ZdetalleITBS.Value :=
            ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value)) *
            (datos.ZUconfiguracionITBIS.Value / 100);
          datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
            datos.ZdetalleITBS.Value;
          datos.ZdetalleANCHO.Value :=
            (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
            datos.ZdetalleCANTIDAD.Value;
        end
        else
        begin
          Crear_Mensages('Error', 'Cantidad no Permitida',
            'La cantidad introducida es menor a la cantidad de venta permitida en este producto',
            ExtractFilePath(Application.ExeName) +
            '\imagenes\aviso\error.png', 'OK');
        end;
      end
      else
      begin

        datos.ZdetalleCANTIDAD.Value := CantR;

        datos.ZdetallePRECIO.Value := t4.Value / 1.18;
        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;
        datos.ZdetalleITBS.Value :=
          ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value)) *
          (datos.ZUconfiguracionITBIS.Value / 100);
        datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
          datos.ZdetalleITBS.Value;
        datos.ZdetalleANCHO.Value :=
          (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
          datos.ZdetalleCANTIDAD.Value;

      end;

    end
    else
    begin
      CantR := (StrToFloat(t3.text) /
        ((datos.ZdetalleTOTAL.Value / datos.ZdetalleCANTIDAD.Value)));

      if qMantArtEXISTENCIA1.Value > 0 then
      begin

        if CantR >= qMantArtEXISTENCIA1.Value then
        begin
          datos.ZdetalleCANTIDAD.Value := CantR;

          datos.ZdetalleITBS_ART.Value := 'N';
          datos.ZdetalleEX.Value := 'E';
          /// datos.ZdetallePRECIO.Value   := precio_c;
          datos.ZdetalleITBS.Value := 0.00;
          datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
            datos.ZdetallePRECIO.Value;
          datos.ZdetalleANCHO.Value :=
            (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
            datos.ZdetalleCANTIDAD.Value;
        end
        else
        begin
          Crear_Mensages('Error', 'Cantidad no Permitida',
            'La cantidad introducida es menor a la cantidad de venta permitida en este producto',
            ExtractFilePath(Application.ExeName) +
            '\imagenes\aviso\error.png', 'OK');
        end;
      end
      else
      begin
        datos.ZdetalleCANTIDAD.Value := CantR;

        datos.ZdetalleITBS_ART.Value := 'N';
        datos.ZdetalleEX.Value := 'E';
        /// datos.ZdetallePRECIO.Value   := precio_c;
        datos.ZdetalleITBS.Value := 0.00;
        datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
          datos.ZdetallePRECIO.Value;
        datos.ZdetalleANCHO.Value :=
          (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
          datos.ZdetalleCANTIDAD.Value;
      end;

    end;

    datos.Zdetalle.Post;
    Totales;

    t1.Clear;
    t2.Clear;
    t3.Clear;
    PanelCantidad.Visible := FALSE;
    t4.Clear;
    ancho.Clear;
    Edit9.Clear;
    alto.Clear;
    Edit8.Clear;
    topcion.Clear;
    cxButton9.Enabled := FALSE;
    ChkPrecio.Checked := FALSE;
    t3.Enabled := FALSE;
    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
    end
    else
    begin
      barra1.SetFocus;
    end;
    calcular.Enabled := FALSE;

  end;

end;

procedure TFrmNFact_normal.lodkfkClick(Sender: TObject);
begin
  if total.Value = 0.00 then
  begin
    ShowMessage('Esta hay total facturado para aplicar descuento');
  end
  else
  begin

    PanelDesc.Visible := TRUE;
    cxButton3.Enabled := FALSE;
    desc.SetFocus;
  end;
end;

procedure TFrmNFact_normal.loquejdClick(Sender: TObject);
begin
  cambiarprecio; // Panel8.Visible := FALSE;
end;

procedure TFrmNFact_normal.SpeedButton599Click(Sender: TObject);
begin

  Edit9.text := '';
  if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
  begin
    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      FormaPago.text := 'TARJETA';
      pago;
    end;
  end
  else
  begin
    FormaPago.text := 'TARJETA';
    pago;
  end;
end;

procedure TFrmNFact_normal.SPPClick(Sender: TObject);
begin
  if abrirfactura = 'SI' then
  begin
    if FFindArticulosMayor = nil then
    begin
      FFindArticulosMayor := tFFindArticulosMayor.create(self);
      FFindArticulosMayor.ShowModal;
    end;
  end;
end;

procedure TFrmNFact_normal.EOOOE(Sender: TObject);
begin
  Edit9.text := '';
  if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
  begin

    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      FormaPago.text := 'EFECTIVO';
      pago;
    end;
  end
  else
  begin
    FormaPago.text := 'EFECTIVO';

    pago;
  end;
end;

procedure TFrmNFact_normal.SpeedButton5pppppppClick(Sender: TObject);
begin

  if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
  begin

    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      FormaPago.text := 'EFECTIVO';
      pago;
    end;
  end
  else
  begin
    FormaPago.text := 'EFECTIVO';

    pago;
  end;
end;

procedure TFrmNFact_normal.SpeedButton68888Click(Sender: TObject);
begin
statushold := '';
  If datos.fbqMaster_factsituacion.text = 'HOLD' then
  BEGIN

    if FAutorizacion.ShowModal = mrOk then
    begin

      if datos.FbqMaster_Fact.Active = TRUE then
      begin

        if Application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          datos.FbqMaster_Fact.Edit;
          if datos.fbqMaster_factsituacion.text <> 'PEDIDO' then
          BEGIN
            datos.fbqMaster_factsituacion.text := 'CANCELADA';
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

          if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value = 1 then
          begin

            FSolidaridadPago.Edit1.Clear;
            FSolidaridadPago.Edit2.Clear;
            FSolidaridadPago.Edit3.Clear;

          end;

          with datos.Zdetalle do
          begin
            First;
            while not Eof do
            begin
              if datos.ZdetalleTOTAL.Value < 0.00 then
              begin

                with UpdateNC do
                begin
                  close;
                  sql.Clear;
                  sql.Add('update mnoc set afecta_inv = 1');
                  sql.Add('where mncid =:opp');
                  params[0].Value := StrToInt(datos.ZdetalleNO_FACT1.Value);
                  ExecSQL;
                end;

              end;

              if datos.ZdetalleBARRA.Value <> '' then
              begin
                with UpRma do
                begin
                  close;
                  sql.Clear;
                  sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                  params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                  ExecSQL;
                end;
              end;
              Next;
            end;
          end;

          Pcancelar;

        end;

      end;
    end;

  END
  ELSE
  begin
    if datos.FbqMaster_Fact.Active = TRUE then
    begin

      if Application.MessageBox('Esta seguro de cancelar este documento',
        'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin
        datos.FbqMaster_Fact.Edit;
        if datos.fbqMaster_factsituacion.text <> 'PEDIDO' then
        BEGIN
          datos.fbqMaster_factsituacion.text := 'CANCELADA';
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

        with datos.Zdetalle do
        begin
          First;
          while not Eof do
          begin
            if datos.ZdetalleTOTAL.Value < 0.00 then
            begin

              with UpdateNC do
              begin
                close;
                sql.Clear;
                sql.Add('update mnoc set afecta_inv = 1');
                sql.Add('where mncid =:opp');
                params[0].Value := StrToInt(datos.ZdetalleNO_FACT1.Value);
                ExecSQL;
              end;

            end;

            if datos.ZdetalleBARRA.Value <> '' then
            begin
              with UpRma do
              begin
                close;
                sql.Clear;
                sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                ExecSQL;
              end;
            end;
            Next;
          end;
        end;

        t1.Clear;
        // t2.Clear;
        t3.Clear;
        t4.Clear;
        opmaster.Enabled := FALSE;

        datos.FbqMaster_Fact.ApplyUpdates;
        datos.Zdetalle.ApplyUpdates;
        datos.Data.Commit;

        datos.ZInventario.close;
        datos.FbqMaster_Fact.close;
        datos.Zdetalle.close;

        // BtBuscarPedido.Enabled := true;
        BTpedido.Enabled := TRUE;

        cerrar.Enabled := TRUE;
        Edit5.Clear;
        cxButton14.Enabled := TRUE;
        cxButton4.Enabled := TRUE;
        cxButton37.Enabled := TRUE;

        B1.Enabled := TRUE;
        B2.Enabled := FALSE;
        B3.Enabled := FALSE;
        B6.Enabled := FALSE;
        B4.Enabled := FALSE;
        BTMayor.Enabled := FALSE;
        BtnPrintConduce.Enabled := FALSE;
        cxButton5.Enabled := TRUE;
        cxButton11.Enabled := FALSE;
        Panel12.Visible := FALSE;
        PanelDesc.Visible := FALSE;
        // OpBuscarCLiente.Visible := false;

        BTborrar.Enabled := FALSE;
        B6.Enabled := FALSE;
        cxButton12.Enabled := FALSE;
        cxButton13.Enabled := FALSE;
        // BuscarArticulos.Visible := false;
        IbqClientes.close;
        Panel16.Visible := FALSE;
        PanelLTOP.Enabled := FALSE;
        BTSerial.Enabled := FALSE;
        Descc_t.Clear;

        FrmNFact_normal.pnlEstado.Color := clWhite;
        FrmNFact_normal.pnlEstado.Caption := 'Factura Estandar';
        FrmNFact_normal.pnlEstado.Font.Color := clblack;

        // FrmNFact_normal.Panel11.Color := clBtnFace;
        // FrmNFact_normal.LbModo.font.Color := clBlack;
        // FrmNFact_normal.LbModo.Caption := 'Nueva Factura';
        // FrmNFact_normal.lbRotulo.font.Color := clBlack;

        Edit4.Clear;
        if Panel13.Visible = TRUE then
        begin
          Memo2.Clear;
          CurrencyEdit1.Value := 0.00;
          Panel13.Visible := FALSE;
        end;

      end;

    end;

  end;

end;

procedure TFrmNFact_normal.SpeedButton6dddClick(Sender: TObject);
begin

  if FAutorizacion.ShowModal = mrOk then
  begin

    datos.ZInventario.open;

    with DetalleFacturas do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
      sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
      sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
      sql.Add('where a.masterid =:ppp');
      params[0].Value := FacturasImpresasNO_FACT.Value;
      open;
    end;

    with DetalleFacturas do
    begin

      First;
      while not Eof do
      begin

        with UpdateNC do
        begin
          close;
          sql.Clear;
          sql.Add('update mnoc set afecta_inv = 1');
          sql.Add('where mncid =:opp');
          params[0].Value := StrToInt(FacturasImpresasNO_FACT1.Value);
          ExecSQL;
        end;
        Next;
      end;
    end;

    if FacturasImpresasABONO.Value <= 0 then
    begin

      with DetalleFacturas do
      begin
        First;
        while not Eof do
        begin

          if datos.ZdetalleBARRA.Value <> '' then
          begin
            with UpRma do
            begin
              close;
              sql.Clear;
              sql.Add('update rmam set idmarca = 2 where noorden =:op1');
              params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
              ExecSQL;
            end;
          end;

          with comisionCancelar do
          begin
            close;
            sql.Clear;
            sql.Add('delete from COMISIONINSTALADOR where id_fact =:opcion1');
            params[0].Value := DetalleFacturasMASTERID.Value;
            ExecSQL;
          end;
          /// -- Inicio Inventario

          with datos.MantArt do
          begin
            close;
            sql.Clear;
            sql.Add('select b.nom_indicacion, i.signo, c. sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
            sql.Add('left join producto_indicaciones b on a.indicacion = b.id');
            sql.Add('left join productos_sustancia c On a.sustancia =c.id');
            sql.Add('left join productos_marca d On a.idmarca = d.id');
            sql.Add('left join man_provedores e On a.cod_prov1 = e.cod_prov');
            sql.Add('Left Join productos_clasificacion f on a.clasificacion = f.id');
            sql.Add('Left join mtcategoria g On a.cod_cat = g.codcat');
            sql.Add('Left join producto_subcategoria h on a.subcategoria = h.id');
            sql.Add('left join tb_moneda i On a.idmoneda = i.id');
            sql.Add('left join man_provedores j On a.cod_prov2 = J.cod_prov');
            sql.Add('where a.cod_Art =:oo');
            params[0].Value := DetalleFacturasARTICULOID.Value;
            open;
          end;

          if datos.MantArtOPCIONES_BOLA.Value = 'Si' then
          begin

            with datos.QCodMin do
            begin
              close;
              sql.Clear;
              sql.Add('select * from SP_EQMINIMO(:no)');
              params[0].Value := DetalleFacturasARTICULOID.Value;
              open;
            end;

            with numeroinventario do
            begin
              close;
              sql.Clear;
              sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
              open;
            end;

            datos.ZInventario.Insert;
            datos.ZInventarioMINVENTARIOID.Value :=
              numeroinventarioGEN_ID.Value;
            datos.ZInventarioFECHA.Value := Now();
            datos.ZInventarioIDTIENDA.Value := AsignaTienda;
            datos.ZInventarioCOD_ART.Value := datos.qCodMinCODIGOMINIMO.Value;
            datos.ZInventarioCONCEPTOID.Value := 7;
            datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
            datos.ZInventarioSALIDA.Value := 0.00;
            datos.ZInventarioENTRADA.Value := DetalleFacturasCANTIDAD.Value *
              (datos.qCodMinCANTEMP.Value);
            datos.ZInventarioCOD_ALM.Value := 1;

          end
          else
          begin
            with numeroinventario do
            begin
              close;
              sql.Clear;
              sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
              open;
            end;

            datos.ZInventario.Insert;
            datos.ZInventarioMINVENTARIOID.Value :=
              numeroinventarioGEN_ID.Value;
            datos.ZInventarioFECHA.Value := Now();
            datos.ZInventarioIDTIENDA.Value := AsignaTienda;
            datos.ZInventarioCOD_ART.Value := DetalleFacturasARTICULOID.Value;;
            datos.ZInventarioCONCEPTOID.Value := 7;
            datos.ZInventarioSALIDA.Value := 0.00;
            datos.ZInventarioENTRADA.Value := DetalleFacturasCANTIDAD.Value;
            datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
            datos.ZInventarioCOD_ALM.Value := 1;

          end;

          /// -- Fin Inventario

          // showmessage(''+IntToStr(datos.MantArtCOD_ART.Value));
          datos.MantArt.Edit;
          datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value +
            DetalleFacturasCANTIDAD.Value;
          datos.MantArt.ApplyUpdates;

          Next;
        end;
      end;

      with IbqClientes do
      begin
        close;
        sql.Clear;
        sql.Add('select * from cliente');
        sql.Add('where codigo =:codigo');
        params[0].Value := FacturasImpresasCLIENTEID.Value;
        open;
      end;


      // ****** Actualiza Balance de Credito Cliente *-****

      with UpCredito do
      begin
        close;
        sql.Clear;
        sql.Add('update cliente set Musados =:Musado, balance =:balance ');
        sql.Add('where codigo =:codigo');
        params[0].Value := IbqClientesMUSADOS.Value -
          FacturasImpresasPENDIENTE.Value;
        params[1].Value := IbqClientesCREDITOLIMITE.Value -
          (IbqClientesMUSADOS.Value - FacturasImpresasPENDIENTE.Value);
        params[2].Value := IbqClientesCODIGO.Value;
        ExecSQL;
      end;

      // **************************************************

      with Anular do
      begin
        close;
        sql.Clear;
        sql.Add('update master_fact set condicion =:op, SITUACION =:OP2');
        sql.Add('where no_fact =:pp');
        params[0].Value := 'ANULADA';
        params[1].Value := 'ANULADA';
        params[2].Value := FacturasImpresasNO_FACT.Value;
        ExecSQL;
      end;

      datos.ZInventario.ApplyUpdates;
      datos.Data.Commit;
      with FacturasImpresas do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        params[0].Value := 'IMPRESA';
        params[1].Value := 'ACTIVA';
        params[2].Value := 'FACTURACION';
        open;
      end;
      datos.ZInventario.close;
      // EdClave.Clear;
      // PanelAutorizacion.Visible := false;

    end
    else
    begin
      ShowMessage
        (' Esta Factura Tiene Abono(s) aplicado(s) no pude ser anulada ');
    end;

  end;

end;

procedure TFrmNFact_normal.SpeedButton6dddddddClick(Sender: TObject);
var
  cero: string;
  suma: Currency;
  itbs: Currency;
  Stexto: string;
begin

  opmaster.Enabled := TRUE;

  with numero do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
    open;
  end;

  datos.FbqMaster_Fact.open;

  Zqusuario.open;

  IbqClientes.open;

  FrmNFact_normal.Panel7.Enabled := TRUE;
  FrmNFact_normal.PanelLTOP.Enabled := TRUE;
  datos.FbqMaster_Fact.Insert;
  datos.FbqMaster_FactNO_FACT.Value := numeroGEN_ID.Value;
  datos.FbqMaster_FactNC.Value := 1;

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
    intTostr(datos.FbqMaster_FactNO_FACT.Value);
  Edit5.text := datos.FbqMaster_FactNO_FACT1.Value;
  // RxDBComboBox1.ItemIndex := 0;
  // FrmNFact.RxDBComboBox2.ItemIndex := 1;
  cxDBComboBox1.ItemIndex := 1;

  // RxDBComboBox1.Enabled := false;
  // FrmNFact.RxDBComboBox2.Enabled := true;
  cxDBComboBox1.Enabled := TRUE;
  // edit12.Clear;
  datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;

  with IbqClientes do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from cliente a');
    sql.Add('where a.codigo = 1');
    open;
  end;

  datos.FbqMaster_FactCLIENTEID.Value := IbqClientesCODIGO.Value;
  datos.FbqMaster_FactCLIENTENOMBRE.Value := IbqClientesNOMBRES.Value;
  datos.FbqMaster_FactCONDICIONVENTA.Value := IbqClientesCONDICION.Value;
  datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value :=
    datos.FbqMaster_FactCLIENTENOMBRE.Value;
  datos.FbqMaster_FactCAJAID.Value := datos.ZUconfiguracionCAJAID.Value;

  with Zqusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.Add('where a.usuarioId =:pp');
    params[0].Value := AsignaUsuario;
    open;
  end;

  datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
  datos.FbqMaster_FactNOMBRES_EMP.Value := ZqusuarioNOMBRES_EMP.Value;
  // datos.FbqMaster_FactCODVEN.Value       := ZqusuarioEMPLEADOID.Value;
  datos.FbqMaster_FactNOMBRES_EMP.Value := ZqusuarioNOMBRES_EMP.Value;
  datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
  datos.FbqMaster_FactFECHA_FAC.Value := Now();
  datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;

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

  // opdetalle.Enabled := true;
  if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
    barra.SetFocus;
  end
  else
  begin
    barra1.SetFocus;

  end;

  B1.Enabled := FALSE;
  B2.Enabled := TRUE;
  B2.Caption := 'Cancelar Factura';

  if datos.ZqUsuariosIDSESSION.Value = 1 then
  begin
    B3.Enabled := FALSE;
    B4.Enabled := TRUE;
    cxButton11.Enabled := TRUE;
    cxButton37.Enabled := FALSE;
  end;

  if datos.ZqUsuariosIDSESSION.Value = 3 then
  begin
    B3.Enabled := TRUE;
    B4.Enabled := TRUE;
    cxButton11.Enabled := TRUE;
    cxButton37.Enabled := TRUE;
  end;

  if datos.ZqUsuariosIDSESSION.Value = 2 then
  begin
    B3.Enabled := TRUE;
    B4.Enabled := TRUE;
    cxButton11.Enabled := TRUE;
    cxButton37.Enabled := TRUE;
  end;

  cxButton4.Enabled := FALSE;
  cxButton5.Enabled := FALSE;
  cxButton14.Enabled := TRUE;
  BTpedido.Enabled := TRUE;
  B6.Enabled := TRUE;
  Edit3.text := 'NUEVO';
  opmaster.Enabled := TRUE;
  // opdetalle.Enabled := true;
  BTborrar.Enabled := TRUE;
  B6.Enabled := TRUE;
  cxButton12.Enabled := TRUE;
  cxButton13.Enabled := TRUE;

  BtnPrintConduce.Enabled := TRUE;

  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo, c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.no_fact =  0');
    open;
  end;

  cerrar.Enabled := FALSE;

  with DetalleFacturas do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
    sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := FacturasImpresasNO_FACT.Value;
    open;
  end;

  with DetalleFacturas do
  begin
    First;
    while not Eof do
    begin

      adddetalle;
      Next;
    end;
  end;

  datos.Zdetalle.First;

  while not datos.Zdetalle.Eof do
  begin
    suma := (suma + datos.Zdetalle.FieldByName('total').Value);
    // * data.ibtdetallefactCANTIDAD.AsInteger;
    itbs := (itbs + datos.Zdetalle.FieldByName('itbs').Value);
    // * data.ibtdetallefactCANTIDAD.AsInteger;
    datos.Zdetalle.Edit;
    datos.ZdetalleTOTAL.Value := datos.ZdetalleTOTAL.Value;
    datos.ZdetalleITBS.Value := datos.ZdetalleITBS.Value;

    datos.Zdetalle.Next;

  end;

  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_Factdescuento.Value := 0.00;
  datos.FbqMaster_FactPOGXITBS.Value := itbs;

  datos.FbqMaster_FactMONTO.Value := suma - itbs;
  if datos.FbqMaster_Factdescuento.Value = 0.00 then
  begin
    datos.FbqMaster_FactMONTOPAGO.Value :=
      datos.FbqMaster_FactMONTO.Value + itbs;
  end
  else
  begin
    datos.FbqMaster_FactMONTOPAGO.Value :=
      (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.
      Value) + itbs;
  end;

  calcular.Enabled := FALSE;
  t1.Clear;
  t2.Clear;
  t3.Clear;
  t4.Clear;
  ancho.Clear;
  Edit9.Clear;
  alto.Clear;
  Edit8.Clear;
  topcion.Clear;
  cxButton9.Enabled := FALSE;
  NCnumero.Clear;

  tecnico := 0;
  cxGrid2.Visible := FALSE;
  Impresas.Visible := FALSE;
  DetalleFacturas.close;

end;

procedure TFrmNFact_normal.SpeedButton6eerrClick(Sender: TObject);
begin
  offMenu;

  if FrmNotaCF = nil then
  begin
    FrmNotaCF := tFrmNotaCF.create(self);
    with FrmNotaCF.mc do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, c.nombres_emp, d.nombres from mnoc a');
      sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
      sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
      sql.Add('left join cliente d On a.clienteid = d.codigo');
      sql.Add('where a.AFECTA_INV = 1');
      sql.Add('and a.clienteid =:opp');
      params[0].Value := IbqClientesCODIGO.Value;
      open;
    end;

    FrmNotaCF.ShowModal;
  end;
end;

procedure TFrmNFact_normal.SpeedButton6ffffClick(Sender: TObject);
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
  // prueba
  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try
      IniFile := ChangeFileExt(Application.ExeName, '.ini');

      NombreImpresoraTicke := ReadString_Ini(IniFile, 'IMPRESION',
        'NombreImpresoraTicket', '');
      NombreImpresoraNormal := ReadString_Ini(IniFile, 'IMPRESION',
        'NombreImpresoraNormal', '');
      Tipoimpresion := ReadString_Ini(IniFile, 'IMPRESION',
        'TipoImpresion', '');
    except
      on E: Exception do
      begin
        MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13 +
          '**** ' + E.Message + '****'#13 +
          'Esto provoca que no se pueda iniciar,' +
          'Si el problema persiste, llamar al soporte');
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;

  fechaFA := Now;
  horaFA := Time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := FacturasImpresasNO_FACT.Value;
    open;
  end;

  with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with datos.Series do
  begin
    close;
    sql.Clear;
    sql.Add('select * from man_series where IDDETALLE =:opp');
    params[0].Value := datos.ZdetalleNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    close;
    sql.Clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if op10.ItemIndex = 1 then
  BEGIN

    if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin

      cInf := datos.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeCopia' + '.fr3';
      imprimem.LoadFromFile(cInf);

    END;

    if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
    begin
      if Chkorinal.Checked = TRUE then
      begin
        imprimem.variables['titulos'] := quotedstr('FACTURA');
      end
      else
      begin
        imprimem.variables['titulos'] := quotedstr('COPIA FACTURA');
      end;

      imprimem.variables['cajero'] := quotedstr(Edit2.text);
      MEN_PIE := datos.ZUconfiguracionMensaje_pie1.Value;
      imprimem.variables['mensaje1'] := quotedstr(MEN_PIE);

      // ShowMessage(''+datos.FbqMaster_FactNOMBRECLIENTE_PRN.Text);
      imprimem.PrepareReport(TRUE);
      imprimem.ShowPreparedReport;

      datos.ZInventario.close;
      datos.FbqMaster_Fact.close;
      datos.Zdetalle.close;

      // panel11.Visible := false;
      cerrar.Enabled := TRUE;
      Edit5.Clear;

      B1.Enabled := TRUE;
      B2.Enabled := FALSE;
      B3.Enabled := FALSE;
      B6.Enabled := FALSE;
      B4.Enabled := FALSE;
      cxButton5.Enabled := TRUE;
      cxButton11.Enabled := FALSE;
    END;
    if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
    begin
      with Antiguedad do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT a.clienteid,');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date  )<0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,');
        sql.Add('sum(IIF( (DATEDIFF(DAY, a.fecha_fac, current_date )>=0 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=30) OR a.fecha_fac is null,(a.pendiente),0)) AS V0_30 ,');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=31 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=60, (a.pendiente),0)) AS V31_60,');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=61 AND DATEDIFF( DAY, a.fecha_fac,current_date )<=90, (a.pendiente),0)) AS V61_90, ');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=91 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=120, (a.pendiente),0)) AS V91_120,');
        sql.Add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120,');

        sql.Add('(sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) +');
        sql.Add('sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fechavencimiento is null,(a.pendiente),0)) +');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendiente),0)) +');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendiente),0))  +');
        sql.Add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pendiente),0)) +');
        sql.Add('sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,(a.pendiente),0))');
        sql.Add(') as actual');

        sql.Add('from master_fact a');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        sql.Add('group by a.clienteid ');
        params[0].Value := 'IMPRESA';
        params[1].Value := 'ACTIVA';
        params[2].Value := 'FACTURACION';
        params[3].Value := datos.FbqMaster_FactCLIENTEID.Value;
        params[4].Value := 'CREDITO';
        open;
      end;

      if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
      begin
        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\FacturaGrandeCopia_c' + '.fr3';
        ImprimEMC.LoadFromFile(cInf);
      END;

      if Chkorinal.Checked = TRUE then
      begin
        ImprimEMC.variables['titulos'] := quotedstr('FACTURA');
      end
      else
      begin
        ImprimEMC.variables['titulos'] := quotedstr('COPIA FACTURA');
      end;
      ImprimEMC.variables['cajero'] := quotedstr(Edit2.text);
      MEN_PIE := datos.ZUconfiguracionMensaje_pie1.Value;
      ImprimEMC.variables['mensaje1'] := quotedstr(MEN_PIE);
      ImprimEMC.PrepareReport(TRUE);
      ImprimEMC.ShowPreparedReport;

      datos.ZInventario.close;
      datos.FbqMaster_Fact.close;
      datos.Zdetalle.close;

      // panel11.Visible := false;
      cerrar.Enabled := TRUE;
      Edit5.Clear;

      B1.Enabled := TRUE;
      B2.Enabled := FALSE;
      B3.Enabled := FALSE;
      B6.Enabled := FALSE;
      B4.Enabled := FALSE;
      cxButton5.Enabled := TRUE;
      cxButton11.Enabled := FALSE;

      MEN_PIE := datos.ZUconfiguracionMensaje_pie2.Value;
      ImprimEMC.variables['mensaje1'] := quotedstr(MEN_PIE);
    end;

  END;

  if op10.ItemIndex = 0 then
  BEGIN

    if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
    begin
      // ShowMessage(''+Tipoimpresion);
      if Tipoimpresion = 'D' then
      begin
        // ShowMessage('');
        PrintCopia;
      end
      else
      begin

        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\FacturaTicketCopia' + '.fr3';
        // Showmessage(''+CinF);
        PrnCopia.LoadFromFile(cInf);
        PrnCopia.variables['titulos'] := quotedstr('COPIA FACTURA');
        PrnCopia.variables['cajero'] := quotedstr(Edit2.text);
        MEN_PIE := datos.ZUconfiguracionMensaje_pie1.Value;
        PrnCopia.variables['mensaje1'] := quotedstr(MEN_PIE);
        PrnCopia.PrepareReport(TRUE);
        PrnCopia.print;
        // end;
      end;

      if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
      begin
        if Tipoimpresion = 'D' then
        begin
          PrintCopia;
        end
        else
        begin

          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicketCopia' + '.fr3';
          // Showmessage(''+CinF);
          PrnCopia.LoadFromFile(cInf);
          PrnCopia.variables['titulos'] := quotedstr('COPIA FACTURA');
          PrnCopia.variables['cajero'] := quotedstr(Edit2.text);
          MEN_PIE := datos.ZUconfiguracionMensaje_pie2.Value;
          PrnCopia.variables['mensaje1'] := quotedstr(MEN_PIE);
          PrnCopia.PrepareReport(TRUE);
          PrnCopia.print;
        end;
      end;

      // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

      datos.ZInventario.close;
      datos.FbqMaster_Fact.close;
      datos.Zdetalle.close;

      // panel11.Visible := false;
      cerrar.Enabled := TRUE;
      Edit5.Clear;

      B1.Enabled := TRUE;
      B2.Enabled := FALSE;
      B3.Enabled := FALSE;
      B6.Enabled := FALSE;
      B4.Enabled := FALSE;
      cxButton5.Enabled := TRUE;
      cxButton11.Enabled := FALSE;

    END;
  END;

end;

procedure TFrmNFact_normal.cxButton3Click(Sender: TObject);
begin

  datos.Zdetalle.Edit;
  datos.Zdetalle.Post;
  Totales;

  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_Factdescuento.Value := datos.FbqMaster_FactMONTOPAGO.Value *
    (desc.Value / 100);

  datos.FbqMaster_FactPOGXITBS.Value := itbs;

  if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
  begin

    datos.FbqMaster_FactMONTO.Value := suma - itbs;
    if datos.FbqMaster_Factdescuento.Value = 0.00 then
    begin
      datos.FbqMaster_FactMONTOPAGO.Value :=
        datos.FbqMaster_FactMONTO.Value + itbs;
    end
    else
    begin
      datos.FbqMaster_FactMONTOPAGO.Value :=
        (datos.FbqMaster_FactMONTO.Value -
        datos.FbqMaster_Factdescuento.Value) + itbs;
    end;

  end;

  {
    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactDESCUENTO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] * (desc.Value / 100);
    datos.FbqMaster_FactPOGXITBS.Value := 0.00;
    datos.FbqMaster_FactMONTO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
    datos.FbqMaster_FactMONTOPAGO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] - datos.FbqMaster_Factdescuento.Value;
  }

  // datos.FbqMaster_FactMONTO.Value     := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
  // datos.FbqMaster_FactPOGXITBS.Value  := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value + datos.FbqMaster_FactPOGXITBS.Value) - datos.FbqMaster_Factdescuento.Value;

  desc.Clear;
  cxTextEdit1.Clear;
  cxButton3.Enabled := FALSE;
  PanelDesc.Visible := FALSE;

end;

procedure TFrmNFact_normal.BtDeliveryClick(Sender: TObject);
begin
  offMenu;
  Edit19.text := 'Delivery';
  if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
  begin

    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      FormaPago.text := 'EFECTIVO';
      pago;
    end;
  end
  else
  begin
    FormaPago.text := 'EFECTIVO';

    pago;
  end;
end;

procedure TFrmNFact_normal.BtDelivey02Click(Sender: TObject);
begin
  Edit19.text := 'Delivery';
  if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
  begin

    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      FormaPago.text := 'EFECTIVO';
      pago;
    end;
  end
  else
  begin
    FormaPago.text := 'EFECTIVO';

    pago;
  end;
end;

procedure TFrmNFact_normal.SpeedButton7Click(Sender: TObject);
begin
  offMenu;
  if PanelConduce.Visible = TRUE then
  begin
    PanelConduce.Visible := FALSE;
  end
  else
  begin
    PanelConduce.Visible := TRUE;
  end;
end;

procedure TFrmNFact_normal.SpeedButton7dfffClick(Sender: TObject);
begin
  datos.FbqMaster_Fact.close;
  datos.Zdetalle.close;
  IbqClientes.close;
  FacturasImpresas.close;

  IbqRArticulos.close;

  datos.Data.Rollback;

  close;
end;

procedure TFrmNFact_normal.BtnConduceClick(Sender: TObject);
begin
  if FrmConsultaConduce = nil then
  begin
    FrmConsultaConduce := tFrmConsultaConduce.create(self);
    FrmConsultaConduce.ShowModal;
  end;

  offMenu;
end;

procedure TFrmNFact_normal.cxButtom102Click(Sender: TObject);
begin

  Edit9.text := '';
  if (datos.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental') then
  begin
    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      FormaPago.text := 'TRANSFERENCIA';
      pago;
    end;
  end
  else
  begin
    FormaPago.text := 'TRANSFERENCIA';
    pago;
  end;
end;

procedure TFrmNFact_normal.cxButton30Click(Sender: TObject);
begin
  if B3.Enabled = TRUE then
  begin

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
      FrmFindArticulos.Edit1.text := '';
      FrmFindArticulos.ShowModal;
      datos.FbCategorias.open;

      // EDIT19.SetFocus;
    end
    else
    begin

      FrmFindArticulos.Edit1.text := '';
      FrmFindArticulos.ShowModal;
      datos.FbCategorias.open;

    end;
    FrmFindArticulos.Edit1.text := '';
    FrmFindArticulos.ShowModal;
    datos.FbCategorias.open;

    with IbqRArticulos do
    begin
      close;
      sql.Clear;
      sql.Add('select a.unidad,a.precio_a, a.codigobarra,precio_c, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
      sql.Add('a.marca,a.codigotxt,a.itbis,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
      sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
      sql.Add('left join minventario b On a.cod_art = b.cod_art');
      sql.Add('where a.COMPACTIBLECON =:opp');
      sql.Add('group by a.unidad,a.precio_a, a.codigobarra,precio_c, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
      sql.Add('a.codigotxt,a.itbis,a.taza_compra,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
      params[0].Value := datos.ZdetalleARTICULOID.Value;
      open;
    end;

    { if (cxDBTextEdit4.Text ='') and (cxDBTextEdit3.Text = '')then
      begin
      Showmessage('** Debes Introducir el Nombre del Cliente ***');
      end else begin
      if datos.FbqMaster_FactROTULO.Value = 'COTIZACION' then begin
      FrmBuscarArticulos.Edit2.Text := 'COTIZA';
      end;
      if datos.FbqMaster_FactROTULO.Value = 'FACTURACION' then begin
      FrmBuscarArticulos.Edit2.Text := 'FACTURA';
      end;
      FrmBuscarArticulos.showmodal;
      end;
    }
  end;
end;

procedure TFrmNFact_normal.SpeedButton8ddddddClick(Sender: TObject);
begin

  offMenu;
  if FrmCotiza = nil then
  begin
    FrmCotiza := tFrmCotiza.create(self);
    FrmCotiza.Edit2.text := 'FACT';
    FrmCotiza.ShowModal;
  end;

end;

procedure TFrmNFact_normal.SpeedButton8dfsssClick(Sender: TObject);
begin
  if B1.Enabled = FALSE then
  begin

    FrmFindArticulos.PageArticulos.ActivePageIndex := 0;
    if datos.zuconfiguracionUSARRMA.Value = 1 then
    begin
      with QRMA do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo  from rmam a');
        sql.Add('left join cliente b on a.idcliente = b.codigo');
        sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =''INSTALADOR''');
        sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
        sql.Add('where a.estado =''Cerrado''');
        sql.Add('and a.monto > 0.00');
        sql.Add('and a.idmarca <> 1');
        open;

      end;
      FrmFindArticulos.PageArticulos.Pages[1].tabVisible := TRUE;
    end
    else if datos.zuconfiguracionUSARRMA.Value = 2 then
    begin

      FrmFindArticulos.PageArticulos.Pages[1].tabVisible := FALSE;
    end;

    // BuscarArticulos.Visible := true;

    FrmFindArticulos.Edit1.text := '';
    FrmFindArticulos.ShowModal;
    // datos.FbCategorias.open;

    with IbqRArticulos do
    begin
      close;
      sql.Clear;
      sql.Add('select FIRST 25 a.unidad,a.costo_pr, a.codigobarra,precio_c, a.comision,a.referencia, a.ubicacion, a.beneficios,a.precio_a, a.precio_b, a.precio_d, a.codigobarra, a.obs,');
      sql.Add('a.cod_art,upper(a.articulo) articulo,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.TIENECOMPACTIBILIDAD,');
      sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
      sql.Add('where a.condicion =:opp');

      sql.Add('group by a.unidad,a.precio_a, a.comision,a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,');
      sql.Add('a.marca,a.codigotxt,a.itbis,a.codigobarra,  a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3,  a.referencia,a.ubicacion, a.obs');
      params[0].Value := 'Productos';
      open;
    end;

  end;
end;

procedure TFrmNFact_normal.SpeedButton9Click(Sender: TObject);
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
  offMenu;

  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    try
      IniFile := ChangeFileExt(Application.ExeName, '.ini');

      NombreImpresoraTicke := ReadString_Ini(IniFile, 'IMPRESION',
        'NombreImpresoraTicket', '');
      NombreImpresoraNormal := ReadString_Ini(IniFile, 'IMPRESION',
        'NombreImpresoraNormal', '');
      Tipoimpresion := ReadString_Ini(IniFile, 'IMPRESION',
        'TipoImpresion', '');
    except
      on E: Exception do
      begin
        MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13 +
          '**** ' + E.Message + '****'#13 +
          'Esto provoca que no se pueda iniciar,' +
          'Si el problema persiste, llamar al soporte');
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13
      + #9'La aplicacion cargara la base de datos local');
  end;

  if total.Value = 0.00 then
  begin
    ShowMessage('Este Cotización no Esta Completa');
  end
  else
  begin

    // panelcobro.Visible := true;
    datos.FbqMaster_Fact.Edit;
    datos.fbqMaster_factsituacion.text := 'ENVIADA';
    datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
    datos.FbqMaster_FactROTULO.text := 'COTIZACION';
    datos.FbqMaster_Factterminal.text := 'COTIZACION';
    datos.FbqMaster_FactABONO.Value := 0.00;
    datos.FbqMaster_FactPENDIENTE.Value := 0.00;
    datos.FBQMASTER_FACTTIPO.Value := 'Contado';

    // FrmNFact.b5.Enabled := false;
    B6.Enabled := FALSE;
    opmaster.Enabled := FALSE;
    // opdetalle.Enabled := false;
    cxButton5.Enabled := TRUE;
    cxButton11.Enabled := FALSE;
    cerrar.Enabled := TRUE;
    BtnPrintConduce.Enabled := TRUE;
    Panel7.Enabled := FALSE;

    // datos.ZInventario.ApplyUpdates;
    datos.FbqMaster_Fact.ApplyUpdates;
    datos.Zdetalle.ApplyUpdates;

    datos.Data.Commit;

    // PANELCOBRO.Visible := FALSE;
    t1.Clear;

    cerrar.Enabled := TRUE;

    B1.Enabled := TRUE;
    B2.Enabled := FALSE;
    B3.Enabled := FALSE;
    B6.Enabled := FALSE;
    B4.Enabled := FALSE;
    cxButton14.Enabled := FALSE;
    BTpedido.Enabled := TRUE;
    // BtBuscarPedido.Enabled := true;
    cxButton5.Enabled := TRUE;
    cxButton11.Enabled := FALSE;
    BtnPrintConduce.Enabled := FALSE;

    BtnConduce.Enabled := TRUE;
    cxButton4.Enabled := TRUE;

    BTborrar.Enabled := FALSE;
    B6.Enabled := FALSE;
    cxButton12.Enabled := FALSE;
    cxButton13.Enabled := FALSE;
    BTSerial.Enabled := FALSE;

    // t2.Clear;
    t3.Clear;
    t4.Clear;

    with datos.FbqMaster_Fact do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
      sql.Add('left join cliente b On a.clienteid = b.codigo');
      sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
      sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
      sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
      sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
      sql.Add('where a.no_fact =:op1');
      params[0].Value := StrToInt(Edit5.text);
      open;
    end;

    with datos.Zdetalle do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
      sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
      sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
      sql.Add('where a.masterid =:ppp');
      params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
      open;
    end;
    //
    //
    //
    //

    if Application.MessageBox('Deseas Imprimir Esta Cotización', 'Precausion',
      Mb_YesNo + MB_ICONQUESTION) = Id_yes then
    begin

      if datos.ZUconfiguracionimprimecotiza.Value = 'Ticket' then
      begin

        if Tipoimpresion = 'D' then
        begin
          ImprimeCotiza;
        end
        else
        begin

          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\CotizacionTICKET' + '.fr3';

          IMPRIMEPEDIDO.LoadFromFile(cInf);

          IMPRIMEPEDIDO.variables['titulos'] := quotedstr('COTIZACION');
          IMPRIMEPEDIDO.variables['cajero'] := quotedstr(Edit2.text);

          IMPRIMEPEDIDO.PrepareReport(TRUE);
          IMPRIMEPEDIDO.print;

        end;
      end;

      if datos.ZUconfiguracionimprimecotiza.Value = 'Matrixial' then
      begin
        if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
        begin

          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\CotizacionGrande' + '.fr3';

          IMPRIMEPEDIDO.LoadFromFile(cInf);
        end;

        // imprimepedido.variables['titulos']  :=quotedstr('COTIZACION');
        IMPRIMEPEDIDO.variables['cajero'] := quotedstr(Edit2.text);

        IMPRIMEPEDIDO.PrepareReport(TRUE);
        IMPRIMEPEDIDO.ShowPreparedReport;

      end;

      if datos.ZUconfiguracionimprimecotiza.Value = 'Normal' then
      begin

        if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
        begin
          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\CotizacionGrande' + '.fr3';
          IMPRIMEPEDIDO.LoadFromFile(cInf);
        end;

        IMPRIMEPEDIDO.variables['titulos'] := quotedstr('COTIZACION');
        IMPRIMEPEDIDO.variables['cajero'] := quotedstr(Edit2.text);

        IMPRIMEPEDIDO.PrepareReport(TRUE);
        IMPRIMEPEDIDO.ShowPreparedReport;

      end;

    end;

    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;
    Edit5.Clear;
  end;

end;

procedure TFrmNFact_normal.spExportar2Click(Sender: TObject);
begin
  EliminarRow;
end;

procedure TFrmNFact_normal.spExportarClick(Sender: TObject);
begin
  with qMantArt do
  begin
    close;
    sql.Clear;
    sql.Add('select b.cat, A.* from mtartuculos  A');
    sql.Add('Left join mtcategoria b On a.cod_cat = b.codcat');
    sql.Add('where a.COD_art =:oo');
    params[0].Value := datos.ZdetalleARTICULOID.Value;
    open;
  end;

  if datos.ZdetalleTOTAL.Value >= 0.00 then
  begin
    PanelLTOP.Enabled := TRUE;
    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
    begin

      // edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value + datos.Zdetalleitbs.Value) /100))));
      t4.Value := datos.ZdetallePRECIO.Value +
        (datos.ZdetalleITBS.Value / datos.ZdetalleCANTIDAD.Value);
      Descc_t.text :=
        floatToStr(((datos.ZdetalleANCHO.Value / datos.ZdetallePRECIO.Value) *
        100) / datos.ZdetalleCANTIDAD.Value);
    end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
    begin

      Edit14.text :=
        floatToStr(Round((datos.ZdetalleITBS.Value /
        ((datos.ZdetallePRECIO.Value) / 100))));
    end;

    if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
    begin

      Edit14.text := floatToStr(datos.ZdetallePRECIO.Value);
    end;

    // PanelCantidad.Visible := true;
    Edit15.text := 'cant';
    t3.Enabled := TRUE;
    t3.text := datos.ZdetalleCANTIDAD.text;

    t3.SetFocus;
  end;
end;

procedure TFrmNFact_normal.BtnHelpClick(Sender: TObject);
begin
  if frmDGII = nil then
  begin
    frmDGII := tfrmDGII.create(self);
    frmDGII.ShowModal;
  end;
end;

procedure TFrmNFact_normal.t1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = vk_escape then
  begin
    t1.Clear;
    t2.Clear;
    t3.Clear;
    t4.Clear;
  end;
end;

procedure TFrmNFact_normal.t3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  suma, itbs, PRECIO_C, descc: Currency;
  comision: double;
begin

  if Key = vk_escape then
  begin
    PanelCantidad.Visible := FALSE;
    t3.Clear;
  end;
  if Key = vk_return then
  begin

    if (datos.ZUconfiguracionGENERART.Value = 'SI') and
      (datos.fbqMaster_factsituacion.text = 'HOLD') then
    begin

      if (StrToFloat(t3.text) < datos.ZdetalleCANTIDAD.Value) then
      begin

        if FAutorizacion.ShowModal = mrOk then
        begin

          if datos.ZUconfiguracionEXISTENCIAFACT.Value = 1 then
          begin

            if StrToFloat(t3.text) > datos.Zdetalleexist1.Value then
            begin

              MsgInformacion(' La Cantidad Superea la Existencia ');
              t3.Clear;
            end
            else
            begin

              Tcantidad;
            end;
          end
          else
          begin
            Tcantidad;
          end;
        end;
      END
      ELSE
      begin

        if datos.ZUconfiguracionEXISTENCIAFACT.Value = 1 then
        begin

          if StrToFloat(t3.text) > datos.Zdetalleexist1.Value then
          begin

            MsgInformacion(' La Cantidad Superea la Existencia ');
            t3.Clear;
          end
          else
          begin

            Tcantidad;
          end;
        end
        else
        begin
          Tcantidad;
        end;

      end;

    end
    ELSE
    BEGIN

      if datos.ZUconfiguracionEXISTENCIAFACT.Value = 1 then
      begin

        if StrToFloat(t3.text) > datos.Zdetalleexist1.Value then
        begin

          MsgInformacion(' La Cantidad Superea la Existencia ');
          t3.Clear;
        end
        else
        begin

          Tcantidad;
        end;
      end
      else
      begin
        Tcantidad;
      end;
    end;

    cxGrid1.SetFocus;
  end;

end;

procedure TFrmNFact_normal.Tcantidad;
var
  PRECIO_C: Currency;
  comision: double;
begin

  if StrToFloat(t3.text) < qMantArtEXISTENCIA1.Value then
  begin
    Crear_Mensages('Error', 'Cantidad no Permitida',
      'La cantidad introducida es menor a la cantidad de venta permitida en este producto',
      ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png', 'OK');
  end
  else
  begin

    datos.Zdetalle.Edit;
    datos.ZdetalleALTO.Value := StrToFloat(t3.text);

    if datos.ZdetalleITBS_ART.Value = 'S' then
    begin

      if ChkPrecio.Checked = TRUE then
      begin

        // showmessage(''+floattostr(DATOS.Zdetalletotal.Value /t4.Value)+'  total:'+FloatTostr(DATOS.Zdetalletotal.Value)+'   '+FloatTostr(datos.zdetallecantidad.Value));
        datos.ZdetalleCANTIDAD.Value :=
          (StrToFloat(t3.text) /
          ((datos.ZdetalleTOTAL.Value / datos.ZdetalleCANTIDAD.Value)));
      end
      else
      begin
        // PRECIO_C := DATOS.ZdetallePRECIO.Value / (datos.ZdetalleCANTIDAD.Value);
        datos.ZdetalleCANTIDAD.Value := StrToFloat(t3.text);
      end;

      datos.ZdetalleITBS_ART.Value := 'S';
      datos.ZdetalleEX.Value := '';

      if IbqRArticulosPOLITICA.Value = 'fraccional' then
      begin

        with Fraccionado do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
          sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
          sql.Add('where a.cod_arti =:pp');
          params[0].Value := IbqRArticulosCOD_ART.Value;
          open;
        end;

        datos.ZdetallePRECIO.Value := t4.Value / 1.18;
        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;
        datos.ZdetalleITBS.Value :=
          ((datos.ZdetallePRECIO.Value * StrToFloat(t3.text)) *
          (datos.ZUconfiguracionITBIS.Value / 100));
        datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
          datos.ZdetalleITBS.Value;
        if datos.ZdetallePORCDESCUENTO.Value > 0 then
        begin

          datos.ZdetalleANCHO.Value :=
            (datos.ZdetallePRECIO.Value * (datos.ZdetallePORCDESCUENTO.Value /
            100)) * StrToFloat(t3.text);

          datos.zdetalledesc.Value :=
            (datos.ZdetalleTOTAL.Value *
            (datos.ZdetallePORCDESCUENTO.Value / 100));

        end
        else
        begin

          datos.ZdetalleANCHO.Value :=
            (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
            StrToFloat(t3.text);
          datos.zdetalledesc.Value := 0.00;
        end;

      end
      else
      begin
        datos.ZdetallePRECIO.Value := t4.Value / 1.18;
        datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value *
          datos.ZdetalleCANTIDAD.Value;
        datos.ZdetalleITBS.Value :=
          ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value)) *
          (datos.ZUconfiguracionITBIS.Value / 100);
        datos.ZdetalleTOTAL.Value := datos.ZdetalleIMPUESTO.Value +
          datos.ZdetalleITBS.Value;

        if datos.ZdetallePORCDESCUENTO.Value > 0 then
        begin

          datos.ZdetalleANCHO.Value :=
            (datos.ZdetallePRECIO.Value * (datos.ZdetallePORCDESCUENTO.Value /
            100)) * StrToFloat(t3.text);

          datos.zdetalledesc.Value :=
            (datos.ZdetalleTOTAL.Value *
            (datos.ZdetallePORCDESCUENTO.Value / 100));

        end
        else
        begin

          datos.ZdetalleANCHO.Value :=
            (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
            StrToFloat(t3.text);
          datos.zdetalledesc.Value := 0.00;
        end;

      end;

    end
    else

    begin

      if ChkPrecio.Checked = TRUE then
      begin

        // PRECIO_C := DATOS.ZdetallePRECIO.Value / (datos.ZdetalleCANTIDAD.Value / DATOS.ZdetallePRECIO.Value );
        datos.ZdetalleCANTIDAD.Value :=
          (StrToFloat(t3.text) / datos.ZdetallePRECIO.Value);

      end
      else
      begin

        datos.ZdetalleCANTIDAD.Value := StrToFloat(t3.text);
        // PRECIO_C := DATOS.ZdetallePRECIO.Value / (datos.ZdetalleCANTIDAD.Value);
      end;

      datos.ZdetalleITBS_ART.Value := 'N';
      datos.ZdetalleEX.Value := 'E';
      /// datos.ZdetallePRECIO.Value   := precio_c;
      datos.ZdetalleITBS.Value := 0.00;
      datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value *
        datos.ZdetallePRECIO.Value;

      if datos.ZdetallePORCDESCUENTO.Value > 0 then
      begin

        datos.ZdetalleANCHO.Value :=
          (datos.ZdetallePRECIO.Value * (datos.ZdetallePORCDESCUENTO.Value /
          100)) * StrToFloat(t3.text);

        datos.zdetalledesc.Value :=
          (datos.ZdetalleTOTAL.Value *
          (datos.ZdetallePORCDESCUENTO.Value / 100));

      end
      else
      begin

        datos.ZdetalleANCHO.Value :=
          (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.text) / 100)) *
          StrToFloat(t3.text);
        datos.zdetalledesc.Value := 0.00;
      end;

    end;

    datos.Zdetalle.Post;
    Totales;

    t1.Clear;
    t2.Clear;
    t3.Clear;
    PanelCantidad.Visible := FALSE;
    t4.Clear;
    ancho.Clear;
    Edit9.Clear;
    alto.Clear;
    Edit8.Clear;
    topcion.Clear;
    cxButton9.Enabled := FALSE;
    ChkPrecio.Checked := FALSE;
    t3.Enabled := FALSE;
    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      barra.SetFocus;
    end
    else
    begin
      barra1.SetFocus;
    end;
    calcular.Enabled := FALSE;
  end;

end;

procedure TFrmNFact_normal.t4Exit(Sender: TObject);
begin
  {
    if RxDBComboBox1.ItemIndex = 1 then
    begin

    if topcion.Text ='ART' then
    begin
    if t4.Value < FrmBuscarArticulos.IbqRArticulosPRECIO_A.Value then
    begin
    ShowMessage('** El Monto Introducir es Menor que lo Determinado **');
    t4.SetFocus;
    end;
    END;

    if topcion.Text ='COM' then
    begin
    if t4.Value < FrmBuscarArticulos.IbqRArticulosPRECIO_A.Value then
    begin
    ShowMessage('** El Monto Introducir es Menor que lo Determinado **');
    t4.SetFocus;
    end;
    end;


    end;



    if RxDBComboBox1.ItemIndex = 0 then
    begin
    if topcion.Text ='ART' then
    begin
    if t4.Value < FrmBuscarArticulos.IbqRArticulosPRECIO_B.Value then
    begin
    ShowMessage('** El Monto Introducir es Menor que lo Determinado **');
    t4.SetFocus;
    end;
    end;


    if topcion.Text ='COM' then
    begin
    if t4.Value < FrmBuscarArticulos.IbqRArticulosPRECIO_B.Value then
    begin
    ShowMessage('** El Monto Introducir es Menor que lo Determinado **');
    t4.SetFocus;
    end;
    end;


    end;
  }
end;

procedure TFrmNFact_normal.t4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    cxButton9.SetFocus;
  end;

  if Key = VK_LEFT then
  begin
    t3.SetFocus;
  end;
end;

procedure TFrmNFact_normal.tDesc1Change(Sender: TObject);
begin
  // cxButton33.SetFocus;
end;

procedure TFrmNFact_normal.Totales;
var
  ITBArticulos: Integer;
  ITBDeducible: String;
  IDD: double;
begin

  suma := 0.00;
  itbs := 0.00;
  descc := 0.00;

  with QTotales do
  begin
    close;
    sql.Clear;
    sql.Add('select Sum(a.total) Total, sum(a.impuesto) Impuesto, sum(a.itbs) ITBS, sum(a.ley) Ley,  sum(a.desc) desc from detailfact a');
    sql.Add('where a.masterid =:opp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  suma := QTotalesTOTAL.Value;
  itbs := QTotalesITBS.Value;
  descc := QTotalesDESC.Value;

  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_Factdescuento.Value := descc;
  datos.FbqMaster_FactPOGXITBS.Value := itbs;


  // ITBArticulos := Round(ibqrArticulosTaza_Compra.Value);
  // ITBDeducible := '1.'+IntToStr(ITBArticulos);
  // datos.ZdetallePRECIO.Value   := t4.Value;
  // IDD := StrToFloat(ITBDeducible);

  datos.FbqMaster_FactMONTO.Value := suma - itbs;
  // datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs + datos.fbqmaster_factleypropina.Value;

  if QTotalesDESC.Value = 0.00 then
  begin

    if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
    begin

      if SHPropina.IsOn = TRUE then
      begin
        datos.FbqMaster_FactLEYPROPINA.Value :=
          Round(datos.FbqMaster_FactMONTO.Value * 0.10);
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value +
          itbs + datos.FbqMaster_FactLEYPROPINA.Value;
        datos.FbqMaster_Factdescuento.Value := 0.00;
      end
      else
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value +
          itbs + datos.FbqMaster_FactLEYPROPINA.Value;

      end;

    end
    else
    begin
      datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
      datos.FbqMaster_FactMONTOPAGO.Value :=
        datos.FbqMaster_FactMONTO.Value + itbs;

    end;

    datos.FbqMaster_FactSUBTOTAL.Value :=
      datos.FbqMaster_FactMONTOPAGO.Value - itbs;
    datos.FbqMaster_Factdescuento.Value := 0.00;

  end
  else
  begin
    if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then
    begin
      if SHPropina.IsOn = TRUE then
      begin
        datos.FbqMaster_FactLEYPROPINA.Value :=
          Round((datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) * 0.10);
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs +
          datos.FbqMaster_FactLEYPROPINA.Value;
      end
      ELSE
      begin
        datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
        datos.FbqMaster_FactMONTOPAGO.Value :=
          (datos.FbqMaster_FactMONTO.Value -
          datos.FbqMaster_Factdescuento.Value) + itbs +
          datos.FbqMaster_FactLEYPROPINA.Value;
      end;
    end
    else
    begin
      datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
      datos.FbqMaster_FactMONTOPAGO.Value :=
        (datos.FbqMaster_FactMONTO.Value -
        datos.FbqMaster_Factdescuento.Value) + itbs;
    end;

    datos.FbqMaster_FactSUBTOTAL.Value := datos.FbqMaster_FactMONTOPAGO.Value -
      datos.FbqMaster_FactPOGXITBS.Value;

  end;

  // ShowMessage(''+FloatTOstr(suma)+' '+datos.FbqMaster_FactNO_FACT.Text);
  // descc := QTotalesDESC.Value;
end;

end.
