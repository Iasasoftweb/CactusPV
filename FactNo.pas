unit FactNo;

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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Data.DB,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit, Vcl.Menus, cxButtons,
  cxCalc, RxDBComb, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  Vcl.ExtCtrls, cxPCdxBarPopupMenu, cxPC, frxClass, frxDBSet, cxRadioGroup,
  Vcl.ImgList, cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.Grids, Vcl.DBGrids, AdvPageControl, Vcl.ComCtrls, AdvOfficePager,
  dxGDIPlusClasses, cxImage, cxPropertiesStore, cxLabel, cxDBLabel, printers, WinSpool, StrUtilS,
  cxMemo, Vcl.Mask, Vcl.DBCtrls, RxToolEdit, RxCurrEdit, cxButtonEdit,
  Vcl.Imaging.jpeg, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxBlobEdit, dxLayoutContainer, dxLayoutControl, cxCheckBox, AdvGlassButton,ShellApi,
  dxBarBuiltInMenu, CurvyControls, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  dxSkinTheBezier;

   function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
    Function GetImpresora(Impre:String):Integer;
    function MyTextReplace(Texto:String):String;
    function CenterString(aStr: String; Len: Integer): String;
type
  TFrmNFact_normal1 = class(TForm)
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
    detalle: TfrxDBDataset;
    Recibo1: TfrxReport;
    combo: TfrxDBDataset;
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
    Config: TfrxDBDataset;
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
    series: TfrxDBDataset;
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
    Label15: TLabel;
    Qunidad2: TZReadOnlyQuery;
    Qunidad2CPID: TIntegerField;
    Qunidad2NO_ART: TIntegerField;
    Qunidad2UNIDAD_M: TIntegerField;
    Qunidad2PRECIO1: TFloatField;
    Qunidad2PRECIO2: TFloatField;
    Qunidad2PRECIO3: TFloatField;
    Qunidad2UNIDAD: TWideStringField;
    Qunidad2POS: TIntegerField;
    BuscarArticulos: TcxGroupBox;
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
    cxTextEdit2: TcxTextEdit;
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
    DetalleFacturasLINEA: TIntegerField;
    DetalleFacturasARTICULOID: TIntegerField;
    DetalleFacturasARTICULO: TWideStringField;
    DetalleFacturasUNIDAD: TWideStringField;
    DsDetalleFacturas: TDataSource;
    prncopia: TfrxReport;
    prcOTIZA: TfrxReport;
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
    Imprime_grande: TfrxReport;
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
    IMPRIMEPEDIDO: TfrxReport;
    Label43: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    DBEdit1: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    cxButton17: TcxButton;
    cxRadioGroup2: TcxRadioGroup;
    eITBIS: TcxTextEdit;
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
    drawer: TfrxReport;
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
    cxButton21: TcxButton;
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
    PrintDelivery: TfrxReport;
    cxButton28: TcxButton;
    Anular: TZReadOnlyQuery;
    OpCuando: TcxRadioGroup;
    PrnConduceTicket: TfrxReport;
    ConduceMC: TfrxReport;
    ConduceFull: TfrxReport;
    DetalleFacturasTITULOPRN: TWideStringField;
    PanelDesc: TcxGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    cxTextEdit1: TcxTextEdit;
    desc: TcxCurrencyEdit;
    cxButton3: TcxButton;
    Image5: TImage;
    Image6: TImage;
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
    PanelLTOP: TPanel;
    opdetalle: TcxGroupBox;
    Label23: TLabel;
    Label8: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label5: TLabel;
    topcion: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    ancho: TcxTextEdit;
    alto: TcxTextEdit;
    calcular: TcxButton;
    cat: TcxTextEdit;
    Edit9: TEdit;
    lunidad: TcxTextEdit;
    Edit12: TEdit;
    cambiocantidad: TPanel;
    Label10: TLabel;
    Edit13: TEdit;
    Panel6: TPanel;
    Label28: TLabel;
    Label21: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    panel_varios: TPanel;
    Panel9: TPanel;
    Label29: TLabel;
    cantidad_varios: TcxTextEdit;
    Precio_varios: TcxCurrencyEdit;
    Panel10: TPanel;
    Label32: TLabel;
    cod_varios: TEdit;
    articulo_varios: TEdit;
    Edit15: TEdit;
    t1: TcxTextEdit;
    t2: TEdit;
    Edit8: TEdit;
    Edit20: TEdit;
    Panel5: TPanel;
    tDesc1: TEdit;
    cxButton33: TcxButton;
    Edit14: TEdit;
    t4: TcxCurrencyEdit;
    Panel3: TPanel;
    Label27: TLabel;
    barra1: TcxTextEdit;
    barra: TcxTextEdit;
    Panel4: TPanel;
    Label11: TLabel;
    t3: TcxTextEdit;
    ChkPrecio1: TCheckBox;
    Panelcenter: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ARTICULOID: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    panelright: TPanel;
    PanelRt: TPanel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label22: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label33: TLabel;
    Label34: TLabel;
    total: TcxDBCurrencyEdit;
    cxButton9: TcxButton;
    cxDBImage1: TcxDBImage;
    Panel7: TPanel;
    Panel14: TPanel;
    Label37: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxButton10: TcxButton;
    Panel15: TPanel;
    Label3: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label26: TLabel;
    cxDBComboBox2: TcxDBComboBox;
    Memo1: TMemo;
    cxButton30: TcxButton;
    B6: TcxButton;
    BtnPrintConduce: TcxButton;
    cxButton14: TcxButton;
    b2: TcxButton;
    cerrar: TcxButton;
    B1: TcxButton;
    cxButton34: TcxButton;
    B4: TcxButton;
    cxButton5: TcxButton;
    cxButton11: TcxButton;
    BTpedido: TcxButton;
    cxButton22: TcxButton;
    cxButton35: TcxButton;
    cxButton4: TcxButton;
    BtnConduce: TcxButton;
    BtnHelp: TcxButton;
    cxButton1: TcxButton;
    Image1: TImage;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    IbqRArticulosOBS: TIntegerField;
    cxGroupBox2: TcxGroupBox;
    Edit19: TEdit;
    cxRadioGroup3: TcxRadioGroup;
    optipo: TcxRadioGroup;
    ChkPrecio: TcxCheckBox;
    imprimem: TfrxReport;
    ImprimEMC: TfrxReport;
    cxButton20: TcxButton;
    Panel11: TPanel;
    op10: TcxRadioGroup;
    cxButton18: TcxButton;
    Txtecnico: TEdit;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    Label38: TLabel;
    CHK: TcxCheckBox;
    Panel16: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Dsconfig: TDataSource;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxButton32: TcxButton;
    cxButton36: TcxButton;
    cxButton37: TcxButton;
    cxDBComboBox3: TcxDBComboBox;
    Label46: TLabel;
    cxButton38: TcxButton;
    Label45: TLabel;
    DBComboBox1: TDBComboBox;
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
    cxButton39: TcxButton;
    Image4: TImage;
    b3: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    BTborrar: TcxButton;
    BTNotaC: TcxButton;
    Edit1: TEdit;
    NCnumero: TEdit;
    UpdateNC: TZReadOnlyQuery;
    cxButton40: TcxButton;
    DetalleFacturasANCHO: TFloatField;
    DetalleFacturasALTO: TFloatField;
    DetalleFacturasUNIDADID: TIntegerField;
    DetalleFacturasITBS_ART: TWideStringField;
    DetalleFacturasEX: TWideStringField;
    DetalleFacturasIDALMACEN: TIntegerField;
    DetalleFacturasBARRA: TWideStringField;
    DetalleFacturasIDTECNICO: TIntegerField;
    DetalleFacturasDESC: TIntegerField;
    cxGrid6DBTableView1: TcxGridDBTableView;
    cxGrid6Level1: TcxGridLevel;
    cxGrid6: TcxGrid;
    Almacenes1: TZReadOnlyQuery;
    DsAlmacenes01: TDataSource;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    cxGrid6DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid6DBTableView1EXISTENCIA: TcxGridDBColumn;
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
    PageArticulos: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    s: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1MODELO: TcxGridDBColumn;
    cxGrid2DBTableView1MARCA: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
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
    cxGrid9DBTableView1: TcxGridDBTableView;
    cxGrid9Level1: TcxGridLevel;
    cxGrid9: TcxGrid;
    DsQrma: TDataSource;
    cxGrid9DBTableView1NOORDEN: TcxGridDBColumn;
    cxGrid9DBTableView1FECHA_ENTRADA: TcxGridDBColumn;
    cxGrid9DBTableView1NO_SERIAL: TcxGridDBColumn;
    cxGrid9DBTableView1OBSERVACIONEQUIPO: TcxGridDBColumn;
    cxGrid9DBTableView1MONTO: TcxGridDBColumn;
    cxGrid9DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid9DBTableView1TIPOEQUIPO: TcxGridDBColumn;
    linea: TEdit;
    UpRma: TZReadOnlyQuery;
    cxButton41: TcxButton;
    MSN: TBalloonHint;
    CostoMSN: TCurvyPanel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    Label48: TLabel;
    CurvyPanel1: TCurvyPanel;
    Label49: TLabel;
    cxButton29: TcxButton;
    comisionCancelar: TZReadOnlyQuery;
    comisionCancelarID: TIntegerField;
    comisionCancelarID_EMP: TIntegerField;
    comisionCancelarID_FACT: TIntegerField;
    comisionCancelarMONTOSERVICIO: TFloatField;
    comisionCancelarMONTOCOMISION: TFloatField;
    comisionCancelarESTADO: TIntegerField;
    comisionCancelarFECHA: TDateField;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    FAntiguedad: TfrxDBDataset;
    Antiguedad: TZReadOnlyQuery;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TFloatField;
    AntiguedadV0_30: TFloatField;
    AntiguedadV31_60: TFloatField;
    AntiguedadV61_90: TFloatField;
    AntiguedadV91_120: TFloatField;
    AntiguedadV120: TFloatField;
    AntiguedadACTUAL: TFloatField;
    Chkorinal: TcxCheckBox;
    frxReport1: TfrxReport;
    BTSerial: TcxButton;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Ibullet: TcxImageList;
    IbqRArticulosCOMISION: TFloatField;
    Descc_t: TEdit;
    BTArticulos: TcxButton;
    QBalanceCreditoCliente: TZReadOnlyQuery;
    QBalanceCreditoClienteBALANCE: TFloatField;
    Almacenes1EXISTENCIA: TExtendedField;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
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
    procedure B6Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
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
    procedure cxButton12Click(Sender: TObject);
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
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure BTpedidoClick(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure BtBuscarPedidoClick(Sender: TObject);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure BTNotaCClick(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);

    procedure BTTecnicoClick(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure cxButton28Click(Sender: TObject);
    procedure BtnPrintConduceClick(Sender: TObject);
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
    procedure cxGrid2DBTableView1Column2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxButton32Click(Sender: TObject);
    procedure Edit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton33Click(Sender: TObject);
    procedure tDesc1Change(Sender: TObject);
    procedure cxGrid1DBTableView1TOTALGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure imprimirtikectCredito;
    procedure ImprimeCotiza;
    procedure ChkPrecioClick(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton35Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure BtnConduceClick(Sender: TObject);
    procedure xxxxxxClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton36Click(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Memo2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid4DBTableView1DblClick(Sender: TObject);
    procedure CHKPropertiesChange(Sender: TObject);
    procedure optipoClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure cxButton37Click(Sender: TObject);
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton38Click(Sender: TObject);
    procedure PrintCopia;
    procedure cxButton39Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton40Click(Sender: TObject);
    procedure adddetalle;
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid9DBTableView1DblClick(Sender: TObject);
    procedure cxButton41Click(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure cxButton29Click(Sender: TObject);
    procedure cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTSerialClick(Sender: TObject);
    procedure BTArticulosClick(Sender: TObject);

    { Private declarations }
  public

      no_factpedido : integer;
      tecnico : integer;
    { Public declarations }
  end;

var
  FrmNFact_normal1: TFrmNFact_normal1;


   aPrinter: tprinter; // necessario
     x, y: integer; // necessario
     Count, Xpos, Ypos : integer;
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
 unit2, unit19, tools, Unit26, Unit21, Unit3, Unit31, Unit22, Unit47, Unit48, unit68,
  Unit74, Unit76, Unit80, Unit86, Unit87, Unit94, Unit104, Unit18, Unit106,
  Unit107, Unit91, Unit117, Unit120, Unit124;
{$R *.dfm}

function Relleno(text,Rell:string;Cant,posi:integer):string;
var
   valor,x:integer;
   dev,con:string;
begin
   con:='';
   valor:=length(text);
   if valor < Cant then
   begin
        case posi of
          0..1: begin
                   for x:=1 to (cant-valor) do
                   begin
                      con:=con+Rell;
                   end;
                end;
          2:    begin
                   for x:=1 to ((cant-valor) div 2) do
                   begin
                      con:=con+Rell;
                   end;
                end;
        end;
        case posi of
          0: dev:=con+text;
          1: dev:=text+con;
          2: begin
                if Cant=(Valor+length(Con)+length(Con)) then dev:=con+text+con
                                        else
                begin
                     if Cant>(Valor+length(Con)+length(Con)) then  dev:=con+text+Con+Rell
                                                             else  dev:=con+text+copy(con,0,(length(con)-(Cant-(Valor+length(Con)+length(Con)))));
                end;
              end;
        end;
   end
   else
   dev:=text;
   result:=dev;
end;

//------------------------------------------------------------------------------
//***********************************************************[ ESPACIOS ]*******
//  Delvuelve unacadena reyena de espacios al fondo o al frente
//  Bajada de internet
//              Ejemplo
//              espacios(texto,30,1)=  '                        texto'
//              espacios(texto,30,0)=    'texto                        '
//------------------------------------------------------------------------------
function espacios(text:string;Cant:integer;posi:integer):string;
var
   valor,x:integer;
   dev,con:string;
begin
   con:='';
   valor:=length(text);
   if valor < Cant then
   begin
        for x:=1 to (cant-valor) do
        begin
            con:=con+' ';
        end;
        if posi=1 then dev:=con+text
        else dev:=text+con;
   end
   else
   dev:=text;
   result:=dev;
   //+'('+IntToStr(valor)+')('+IntToStr(Cant)+')('+IntToStr(Cant-valor)+')';
end;

function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
var
  PrinterHandle: THandle;
  DocInfo: TDocInfo1;
  i: Integer;
  B: Byte;
  Escritos: DWORD;
begin
  Result:= FALSE;
  if OpenPrinter(PChar(PrinterName), PrinterHandle, nil) then
  try
    FillChar(DocInfo,Sizeof(DocInfo),#0);
    with DocInfo do
    begin
      pDocName:= PChar('Printer Test');
      pOutputFile:= nil;
      pDataType:= 'RAW';
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
              Str[2]:= '$';
            if not TryStrToInt(Copy(Str, 2, 3),i) then
              Exit;
            B:= Byte(i);
            Delete(Str, 1, 3);
          end else B:= Byte(Str[1]);
          Delete(Str,1,1);
          WritePrinter(PrinterHandle, @B, 1, Escritos);
        end;
        Result:= TRUE;
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

Function GetImpresora(Impre:String):Integer;
//------------------------------------------------------------------------------
//**********************************************************[ GetImpresora ]****
// de Marcos Zorilla bajada de http://www.clubdelph...ead.php?t=68519
//------------------------------------------------------------------------------
Var
nCont:Integer;
lSearch:Boolean;
cNewLIne:String;
begin
  lSearch:=False;
  cNewLine:=Chr(10)+Chr(13);
  For nCont:=0 to Printer.Printers.Count - 1 do  //buscamos la impresora en la lista del sistema
  begin
      if Pos(impre, Printer.Printers[nCont]) <> 0 then
      begin
      lSearch:=True;
      Result:=nCont;
      Break;
      end;
  end;
  if lSearch = False then
  begin
  ShowMessage('Impresora no encontrada.'+impre+cNewLine+'Se utilizará la predeterminda.');
  Result:=-1
  end;
end;

function MyTextReplace(Texto:String):String;
begin
    if Texto<>'' then begin
    Texto:= AnsiReplaceStr(Texto,'Ñ', #165);
    Texto:= AnsiReplaceStr(Texto,'ñ', #164);
    Texto:= AnsiReplaceStr(Texto,'á', #160);
    Texto:= AnsiReplaceStr(Texto,'é', #101);//#130);
    Texto:= AnsiReplaceStr(Texto,'í', #161);
    Texto:= AnsiReplaceStr(Texto,'ó', #162);
    Texto:= AnsiReplaceStr(Texto,'ú', #163);
    Texto:= AnsiReplaceStr(Texto,'Á', #65);
    Texto:= AnsiReplaceStr(Texto,'É', #144);
    Texto:= AnsiReplaceStr(Texto,'Í', #73);
    Texto:= AnsiReplaceStr(Texto,'Ó', #79);
    Texto:= AnsiReplaceStr(Texto,'Ú', #85);
    Texto:= AnsiReplaceStr(Texto,'Ü', #85);
    Texto:= AnsiReplaceStr(Texto,'Ü', #129);
    Result:=Texto;
  end;
end;

function CenterString(aStr: String; Len: Integer): String;
var
  posStr : integer;
begin
  if Length(aStr)>Len then
    Result := Copy(aStr, 1, Len)
  else
  begin
    posStr := (len - Length(aStr)) div 2;
    Result := Format('%*s', [len, aStr + Format('%-*s', [posStr, ''])]);
  end;
end;



function GetToken(Cadena:string; Separador:char; Token:integer):string; overload
  {
  Cadena     es la string en la que buscar el token
  Separador  es la string que separa cada token
  Token      es el número de token que buscamos

  Cadena     is the string in that look for the token
  Separador  is the token separator
  Token      is the desired token number
  }
  var
    Posicion:integer;
  begin
     while Token > 1 do begin
       Delete(Cadena,1,Pos(Separador,Cadena));
       Dec(Token);
     end;
     Posicion:=Pos(Separador,Cadena);
     if Posicion=0
     then result:=cadena
     else Result:=Copy(Cadena,1,Posicion-Length(Separador));
  end;

  function GetToken(Cadena, Separador: String; Token: Integer): String; overload
  var
    Posicion: Integer;
  begin
     while Token > 1 do begin
       Delete(Cadena, 1, Pos(Separador,Cadena)+Length(Separador)-1);
       Dec(Token);
     end;
     Posicion:= Pos(Separador, Cadena);
     if Posicion = 0
     then  Result:= Cadena
     else  Result:= Copy(Cadena, 1, Posicion-1);
  end;

  function GetTokenCount(Cadena:string; Separador:char):integer; overload;
  var
     Posicion:integer;
  begin
    Posicion:=Pos(Separador,Cadena);
    Result:=1;

    if Cadena <> '' then begin
      if Posicion <> 0 then begin
        while Posicion <> 0 do
        begin
          Delete(Cadena,1,Posicion);
          Posicion:=Pos(Separador,Cadena);
          Inc (Result);
        end;
      end;
    end else Result:=0;
  end;

  function GetTokenCount(Cadena, Separador: String): Integer; overload;
  var
     Posicion: Integer;
  begin
    if Cadena <> '' then begin
      Posicion:= Pos(Separador, Cadena);
      Result:= 1;
      while Posicion <> 0 do begin
        Inc(Result);
        Delete(Cadena, 1, Posicion+Length(Separador)-1);
        Posicion:= Pos(Separador, Cadena);
      end;
    end else
      Result:=0;
  end;



procedure TFrmNFact_normal1.adddetalle;
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;

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
datos.ZdetalleNO_FACT.Value := numero_detallegengen_id.Value;
datos.ZdetalleCANTIDAD.Value := DetalleFacturasCANTIDAD.Value;
datos.ZdetalleANCHO.Value := detallefacturasancho.Value;
datos.ZdetalleUNID.Value := DetalleFacturasUNID.Value;
datos.ZdetalleIDTECNICO.Value := DetalleFacturasIDTECNICO.Value;
datos.ZdetalleIDALMACEN.Value := DetalleFacturasIDALMACEN.Value;
datos.ZdetalleITBS.Value      := detallefacturasitbs.Value;
datos.ZdetalleCOMBO.Value     := DetalleFacturasCOMBO.Value;
datos.ZdetalleTITULOPRN.Value := DetalleFacturasTITULOPRN.Value;
datos.ZdetalleARTICULO.Value  := DetalleFacturasARTICULO.Value;
datos.ZdetalleNO_FACT1.Value  := DetalleFacturasNO_FACT1.Value;
datos.Zdetallecod_art.Value    := DetalleFacturasCOD_ART.Value;
datos.ZdetalleARTICULOID.value :=DetalleFacturasARTICULOID.Value;
datos.ZdetalleITBS_ART.Value   := DetalleFacturasITBS_ART.Value;
datos.ZdetalleEX.Value         := DetalleFacturasEX.Value;
datos.ZdetallePRECIO.Value     := detalleFacturasPRECIO.Value;
datos.ZdetalleIMPUESTO.Value   := DetalleFacturasIMPUESTO.Value;
datos.ZdetalleITBS.Value       := DetalleFacturasITBS.Value;
datos.ZdetalleTOTAL.Value      := detallefacturastotal.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);


end;


procedure TFrmNFact_normal1.imprimirtikectCredito;
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE, EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL : string;

      begin

fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

//VerificaCampos(Sender);

//Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

//Se nenhum campo está em branco, grava o cupom
//GravaCupons(Sender);




          if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
      begin
         try
             IniFile := ChangeFileExt(Application.ExeName,'.ini');

             longitud := ReadString_Ini(IniFile,'IMPRESION', 'longitud','');
             campoL := ReadString_Ini(IniFile,'IMPRESION', 'campoL','');
             campoC1 := ReadString_Ini(IniFile,'IMPRESION', 'campoC1','');
             campoC2 := ReadString_Ini(IniFile,'IMPRESION', 'campoC2','');
             campoD := ReadString_Ini(IniFile,'IMPRESION', 'campoD','');
             campoF := ReadString_Ini(IniFile,'IMPRESION', 'campoF','');



             EX       := ReadString_Ini(IniFile,'IMPRESION', 'ex','');
             espacioA := ReadString_Ini(IniFile,'IMPRESION', 'espacioA','');
             Pitbis   := ReadString_Ini(IniFile,'IMPRESION', 'pitbis','');
             pprecio  := ReadString_Ini(IniFile,'IMPRESION', 'pprecio','');
             ptotal   := ReadString_Ini(IniFile,'IMPRESION', 'ptotal','');


             DcampoL := ReadString_Ini(IniFile,'IMPRESION', 'DcampoL','');
             DcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC1','');
             DcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC2','');
             DcampoD := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD','');
             DcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD2','');
             DcampoF := ReadString_Ini(IniFile,'IMPRESION', 'DcampoF','');
             PcampoL := ReadString_Ini(IniFile,'IMPRESION', 'PcampoL','');
             PcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC1','');
             PcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC2','');
             PcampoD := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD','');
             PcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD2','');
             PcampoF := ReadString_Ini(IniFile,'IMPRESION', 'PcampoF','');
             INICIARPRINT := ReadString_Ini(IniFile,'IMPRESION', 'INICIARPRINT','');
             TEXTCORTE := ReadString_Ini(IniFile,'IMPRESION', 'TEXTCORTE','');
             TPcampoL  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoL','');
             TPcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoC1','');
             TPcampoF  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoF','');

             SIZEFONT := ReadString_Ini(IniFile,'IMPRESION', 'SIZEFONT','');
             FONTBOLD := ReadString_Ini(IniFile,'IMPRESION', 'FONTBOLD','');
             FONTNORMAL  := ReadString_Ini(IniFile,'IMPRESION', 'FONTNORMAL','');


         except
             on E: Exception do
      	    begin
               MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13+
      	               '**** '+E.Message+'****'#13+
                        'Esto provoca que no se pueda iniciar,'+
                        'Si el problema persiste, llamar al soporte');
               Application.Terminate;
             end;
         end;
       end
    else begin
      MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13+
               #9'La aplicacion cargara la base de datos local');
end;


//longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);

//      WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
 //     WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('FACTURA',StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE').asstring),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('NCF:'+DATOS.FBQMASTER_FACT.FieldByName('NCF').AsString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('VENTA CREDITO (C O P I A)'),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Fact: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));

      if DATOS.FbqMaster_FactRNC_CLIENTE.Value <>'' then  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RNC CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('RNC_CLIENTE').Value),StrToInt(longitud),0));
      end;

      if DATOS.FbqMaster_Factdireccion.Value <>'' then  begin
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('DIRECCION  :'+DATOS.FbqMaster_Fact.FieldByName('DIRECCION').Value),StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CANT',StrToInt(campoL),0)+espacios('PRODUCTO',StrToInt(campoC1),0)+espacios('ITBIS',StrToInt(campoC2),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('TOTAL',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));

    with DATOS.ZDETALLE do
      begin
          First;
          while not Eof do
          begin

           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),0,36),StrToInt(longitud),0));

//            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
//                                                                                   +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
  //                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

            if datos.ZdetalleCANTIDAD.Value > 1.00 then begin

            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));

            end else begin

//             if datos.ZdetalleTOTAL.value > 9999.00 then
//               begin
//                  ShowMessage('');

               WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));


            END;

           Next;
          end;
      end;



     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));


      if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(TpcampoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
          if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('descuento').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tpcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));


        if not datos.FbqMaster_Fact.FieldByName('ABONO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ABONO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('ABONO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                             else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ABONO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));


        if not datos.FbqMaster_Fact.FieldByName('PENDIENTE').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('PENDIENTE:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('PENDIENTE').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                             else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('PENDIENTE:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));


        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

        if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('BONOS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('BONOS').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));


         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('Fecha de Vencimiento:'+DATOS.FBQMASTER_FACT.FieldByName('fecha_final').AsString),StrToInt(longitud)));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,StrToInt(longitud)));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_FactNOMBRES_EMP.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

//with printer do
//begin
//
//        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
//        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
//        BeginDoc;
//        Canvas.Brush.Style := bsClear;
//        for i := 0 to Memo1.Lines.Count do
//          Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
//        Memo1.Lines.Strings[i]);
//        Canvas.Brush.Color := clBlack;
//
//        EndDoc;
//end;

//WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,TEXTCORTE);


end;
procedure TFrmNFact_normal1.altoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    begin
     calcular.SetFocus;
    end;

end;

procedure TFrmNFact_normal1.anchoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = vk_return then
    begin
      alto.SetFocus;
    end;

end;

procedure TFrmNFact_normal1.B2Click(Sender: TObject);
begin
 if application.MessageBox ('Esta seguro de cancelar este documento','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
datos.FbqMaster_Fact.Edit;
if datos.fbqMaster_factsituacion.text <>'PEDIDO' then BEGIN
  datos.fbqMaster_factsituacion.text :='CANCELADA';
END;
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
//DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
//datos.FbqMaster_Factterminal.Text := 'FACTURACION';
datos.FbqMaster_FactABONO.Value          := 0.00;
datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;


if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
  begin
    datos.FbqMaster_Factquees.Value := 'NO';
  end;

if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
  begin
    datos.FbqMaster_Factquees.Value := 'PENDIENTE';
  end;


 with datos.zdetalle do
   begin
   first;
  while not eof do begin
   if datos.ZdetalleTOTAL.Value <0.00 then  begin

   with updateNC do
     begin
        close;
        sql.Clear;
        sql.Add('update mnoc set afecta_inv = 1');
        sql.Add('where mncid =:opp');
        params[0].Value := StrToInt(datos.ZdetalleNO_FACT1.Value);
        ExecSQL;
      end;



      end;

      if datos.ZdetalleBARRA.Value <>'' then
         begin
       with Uprma do
          begin
           close;
           sql.Clear;
           sql.Add('update rmam set idmarca = 2 where noorden =:op1');
           params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
           ExecSQL;
         end;
         end;
      next;
  end;
   end;

T1.ClEAR;
//t2.Clear;
t3.Clear;
t4.Clear;
opmaster.Enabled := false;

DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;
datos.data.Commit;

 datos.ZInventario.Close;
DATOS.FbqMaster_Fact.Close;
DATOS.Zdetalle.Close;


//BtBuscarPedido.Enabled := true;
BTPedido.Enabled := true;

cerrar.Enabled := true;
edit5.clear;
cxButton14.Enabled := true;
cxButton4.Enabled := true;
 cxButton37.Enabled := true;

b1.Enabled := true;
b2.Enabled := false;
b3.Enabled := false;
b6.Enabled := false;
b4.Enabled := false;
 BtnPrintConduce.Enabled := false;
cxButton5.Enabled := true;
cxButton11.Enabled := false;
PANEL12.Visible := FALSE;
paneldesc.Visible := false;
//OpBuscarCLiente.Visible := false;

   BtBorrar.Enabled := false;
     b6.Enabled := false;
     cxButton12.Enabled := false;
     cxButton13.Enabled := false;
   BuscarArticulos.Visible := false;
   IbqClientes.Close;
   panel16.Visible := false;
   PanelLTOP.Enabled := false;
   btserial.Enabled := false;
   Descc_t.Clear;
   if panel13.Visible = true then begin
       memo2.Clear;
       currencyedit1.Value := 0.00;
       panel13.Visible := false;
   end;

 end;


end;





procedure TFrmNFact_normal1.B6Click(Sender: TObject);
begin
if total.Value = 0.00 then
  begin
    Showmessage('Esta hay total facturado para aplicar descuento');
  end else begin

paneldesc.Visible := true;
cxButton3.Enabled := false;
desc.SetFocus;
  end;
end;



procedure TFrmNFact_normal1.barra1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  iResult : integer;
   SeparadaPorComas :string;
   n                :integer;
   CANTV : STRING;
   CODIGOV : STRING;
   codoriginal : string;
   cantoriginal :string;
begin


SeparadaPorComas := BARRA1.Text;


//
   for n:=1 to GetTokenCount(SeparadaPorComas,'+') do
     begin
      if n=1 then
        begin
          cantv := GetToken(SeparadaPorComas,'+',n);
        end;

         if n=2 then
        begin
          codigov := GetToken(SeparadaPorComas,'+',n);
        end;

     end;

   if codigov ='' then
     begin
         codoriginal := cantv;
         cantoriginal := '1';
     end;

     if codigov <>'' then
     begin
         codoriginal := codigov;
         cantoriginal := cantv;
     end;

    if cantv ='' then
       begin
           cantoriginal := '1';
       end;


// codoriginal := barra1.Text;
  //       cantoriginal := '1';




    if key = VK_RETURN then
      begin

      if barra1.Text <>'' then begin

            datos.FbCategorias.Open;


            with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.comision, a.precio_b,a.precio_d,a.codigobarra, a.referencia,a.ubicacion,a.cod_art,a.articulo,a.cod_cat, a.OBS,');
                sql.add('a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('where a.codigobarra =:PPP');
                sql.Add('group by a.unidad,a.precio_a,a.comision, a.precio_b,a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
                params[0].Value := codoriginal;
                open;
              end;



              if IbqRArticulos.RecordCount = 0 then
                begin
                  showmessage('**Articulo no Existe**');
                end else begin


                                           //  edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
                                             edit11.Text := '1.00';

                                             t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             t2.Text     := ibqrArticulosarticulo.Value;

                                             edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);
                                             t4.value    := ibqrArticulosprecio_A.value;
//
                                            lunidad.Text := ibqrarticulosunidad.Value;
                                            t3.Text := cantoriginal;

                                              linea.Text := 'ART';


                                            if IbqRArticulosPOLITICA.value = 'Unitario' then
                                            begin
                                              topcion.Text := 'UNI';
                                            end;

                                            if IbqRArticulosPOLITICA.value = 'servicio' then
                                            begin
                                              topcion.Text := 'SER';
                                            end;



                                cxbutton9.Click;
                               datos.FbCategorias.CLOSE;
                               buscararticulos.Visible := false;



                ///////////////////////////////////////////////////////////////////
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;
                  edit19.Clear;
                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;
                          edit19.Clear;
                         end;
           IbqRArticulos.Close;
           barra1.Clear;
barra1.SetFocus;
  end;


                end;
     end;


end;


procedure TFrmNFact_normal1.barraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  iResult : integer;

   SeparadaPorComas :string;
   n                :integer;
   CANTV : STRING;
   CODIGOV : STRING;
   codoriginal : string;
   cantoriginal :string;


begin
if key = vk_return then
  begin

      SeparadaPorComas := BARRA.Text;


try
   for n:=1 to GetTokenCount(SeparadaPorComas,'+') do
     begin
      if n=1 then
        begin
          cantv := GetToken(SeparadaPorComas,'+',n);
        end;

         if n=2 then
        begin
          codigov := GetToken(SeparadaPorComas,'+',n);
        end;

     end;

   if codigov ='' then
     begin
         codoriginal := cantv;
         cantoriginal := '1';
     end;

     if codigov <>'' then
     begin
         codoriginal := codigov;
         cantoriginal := cantv;
     end;

     if cantv ='' then
       begin
           cantoriginal := '1';
       end;

finally

end;


  if TryStrToInt( codoriginal[1], iResult) then
    begin
    datos.FbCategorias.Open;


     with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.comision, a.precio_b,precio_d,a.codigobarra, a.referencia,a.ubicacion,a.cod_art,upper(a.articulo) articulo,a.cod_cat, a.OBS,');
                sql.add('a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                 sql.Add('where a.codigobarra like '+#39+'%'+codoriginal+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.precio_b, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
                open;
              end;




              if IbqRArticulos.RecordCount = 0 then
                begin
                  showmessage('**Articulo no Existe**');
                end else begin
                if datos.FbqMaster_FactROTULO.Value = 'FACTURACION' then
                  begin

                   //**** fACTURACION ****

                      if ibqRarticulospolitica.Value = 'Compuesto' then
                          begin

                              t1.Text  := ibqrArticuloscodigoTXT.Value;
                              t2.Text  := ibqrArticulosarticulo.Value;
                              t4.Value := ibqrArticulosprecio_a.Value;
                              edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

                              topcion.Text := 'COM';
                              cxButton9.Enabled := true;

                       end ELSE if ibqrarticulospolitica.value <> 'Compuesto' then
                              BEGIN

                                    if (datos.ZUconfiguracionEXISTENCIAFACT.Value = 2)then
                                        begin
                                            Showmessage('** Este Articulo no tiene existencia **');

                                        end else begin

                                              if IbqRArticulosPOLITICA.value = 'fraccional' then
                                            begin

                                               with fraccionado do
                                                    begin
                                                      close;
                                                      sql.Clear;
                                                      sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
                                                      sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
                                                      sql.Add('where a.cod_arti =:pp');
                                                      params[0].Value := ibqrArticuloscod_art.Value;
                                                      open;
                                                    end;

                                                   fraccionado.First;
                                                   partigrid.visible := true;
                                                   partigrid.SetFocus;
                                            end;

                                              t1.Text := ibqrArticuloscodigoTXT.Value;
                                              t2.Text := ibqrArticulosarticulo.Value;
                                              Edit8.Text := ibqrArticulositbis.Value;
                                              t4.Value := ibqrArticulosprecio_a.Value;
                                              edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);
                                           //   FrmNFact_normal.LUnid.ItemIndex := -1;
                                            //  FrmNFact_normal.LUnid.ItemIndex := 0;
                                              t3.Text := cantoriginal;


                                              topcion.Text := 'ART';
                                              cxButton9.Enabled := true;

                                              if IbqRArticulosPOLITICA.value <> 'fraccional' then begin
                                                   cxButton9.Click;
                                              end;




                                          end;
                        END;

                   //**** fIN





                  end;

                end;


            BARRA.Clear;

    end

   /////////  Buscar sin codigo de Barra //////
  else
    begin
    buscararticulos.Visible := true;
     datos.FbCategorias.Open;


       with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.comision, a.referencia,a.ubicacion,a.cod_art,a.articulo,a.cod_cat, a.OBS,');
                sql.add('a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                 sql.Add('where a.articulo like '+#39+'%'+codoriginal+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');

                open;
              end;



             // cxgrid6.setfocus;

    end;
     end;
     end;





procedure TFrmNFact_normal1.cobrando;
begin
if total.Value = 0.00 then
  begin
    Showmessage('Este Conduce no Esta Completa');
  end else begin
if asignaTurno = 0 then
  begin
      Showmessage(' ** No Hay Turno Abierto Disponible **');
  end else begin
if (DATOS.FbqMaster_FactROTULO.Value ='FACTURACION') or (DATOS.FbqMaster_FactROTULO.Value ='COTIZACION') then
 BEGIN



datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text       := 'ENVIADA';
datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';

datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
datos.FbqMaster_FactABONO.Value          := 0.00;
datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;

if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
  begin
    datos.FbqMaster_Factquees.Value := 'NO';
  end;


if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
  begin
    datos.FbqMaster_Factquees.Value := 'PENDIENTE';
  end;



if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    datos.Series.ApplyUpdates;
  end;


//datos.ZInventario.ApplyUpdates;
DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;
datos.data.Commit;


with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(edit5.Text);
    open;
  end;


with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;



 with datos.Series do
                 begin
                   close;
             //      params[0].Value := datos.ZdetalleARTICULOID.Value;
              //     params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
                   open;
                 end;

T1.ClEAR;
//t2.Clear;
t3.Clear;
t4.Clear;
  if FrmCobro = nil  then
     begin
       FrmCobro :=tFrmCobro.create(self);
       FrmCobro.showmodal;
     end;


// datos.ZInventario.Close;

//frmConsultaFact.facturasEmitidas.Refresh;
//showmessage('');


  end;
end;




end;
end;

procedure TFrmNFact_normal1.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    panel13.Visible := false;
  end;
end;

procedure TFrmNFact_normal1.cxButton10Click(Sender: TObject);
begin
if FrmConsultaCliente = nil then
  begin
      FrmConsultaCliente :=tFrmConsultaCliente.create(self);
      FrmConsultaCliente.edit2.text := 'FACT';
FrmConsultaCliente.ibqclientes.Open;
FrmConsultaCliente.showmodal;

  end;



end;

procedure TFrmNFact_normal1.cxButton12Click(Sender: TObject);
begin
if datos.ZdetalleTOTAL.Value >= 0.00 then begin
    PanelLTOP.Enabled := true;
if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin

               //  edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value + datos.Zdetalleitbs.Value) /100))));
                 t4.Value := datos.ZdetallePRECIO.Value + (datos.ZdetalleITBS.Value / datos.ZdetalleCANTIDAD.Value);
                 Descc_t.Text := FloatToStr( ((datos.ZdetalleANCHO.Value / datos.ZdetallePRECIO.Value) *100)/datos.ZdetalleCANTIDAD.Value ) ;
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin

                 edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value) /100))));
           end;


           if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

                 edit14.text := FloattoSTR(datos.ZdetallePRECIO.Value);
           end;

PanelCantidad.Visible := true;
edit15.Text := 'cant';
t3.Enabled := true;
t3.Text     := datos.zdetalleCANTIDAD.Text;

t3.SetFocus;

end;


end;

procedure TFrmNFact_normal1.cxButton13Click(Sender: TObject);

     var
cero : string;
begin
if datos.ZdetalleTOTAL.Value >= 0.00 then begin
if datos.ZdetalleCOMBO.Value='FRA' then
  begin

  end else begin

   with qprecios do
     begin
       close;
       sql.Clear;
       sql.Add('select cod_art,precio_a,precio_b,precio_d, costo from mtartuculos');
       sql.Add('where cod_art =:ww');
       params[0].Value := datos.zdetallearticuloid.Value;
       open;
     end;
  //   edit16.text := 'ACTIVO';
     panelprecios.Visible := true;
    // panelprecios.SetFocus;
    cxDBCalcEdit1.SetFocus;



         panelprecios.Height := 182;
         label13.Visible := true;
         cxDBCalcEdit4.Visible := true;
         Button4.Visible := true;
            PanelPrecios.Width := 376;
          cxCurrencyEdit1.Value := 0.00;





     if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
                 edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value + datos.Zdetalleitbs.Value) /100))));
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
                 edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value) /100))));
           end;
  end;
end;

end;


procedure TFrmNFact_normal1.cxButton14Click(Sender: TObject);
begin
panel8.Visible := true;
memo.SetFocus;
end;

procedure TFrmNFact_normal1.cxButton15Click(Sender: TObject);
begin
panel8.Visible := false;
end;

procedure TFrmNFact_normal1.cxButton16Click(Sender: TObject);
begin
memo.Clear;
panel8.Visible := false;


end;

procedure TFrmNFact_normal1.cxButton17Click(Sender: TObject);
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;
         longitud, campoD, campoC1, campoC2, campol, campof : string;
         DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
          PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2 : string;
begin
if cxRadioGroup2.ItemIndex = 0 then begin
panel11.Visible := true;
OP10.ItemIndex := 0;
cxButton18.SetFocus;
end;

if cxRadioGroup2.ItemIndex = 1 then begin
panel11.Visible := true;
OP10.ItemIndex := 1;
cxButton18.SetFocus;
end;

if cxRadioGroup2.ItemIndex = 2 then begin
panel11.Visible := true;
OP10.ItemIndex := 0;
cxButton18.SetFocus;
end;




end;



procedure TFrmNFact_normal1.cxButton18Click(Sender: TObject);
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;
         longitud, campoD, campoC1, campoC2, campol, campof : string;
         DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
          PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, MEN_PIE : string;
          cInf : String;

          NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion : String;
begin

       if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
      begin
         try
             IniFile := ChangeFileExt(Application.ExeName,'.ini');

             NombreImpresoraTicke := ReadString_Ini(IniFile,'IMPRESION', 'NombreImpresoraTicket','');
             NombreImpresoraNormal := ReadString_Ini(IniFile,'IMPRESION', 'NombreImpresoraNormal','');
             Tipoimpresion := ReadString_Ini(IniFile,'IMPRESION', 'TipoImpresion','');
         except
             on E: Exception do
      	    begin
               MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13+
      	               '**** '+E.Message+'****'#13+
                        'Esto provoca que no se pueda iniciar,'+
                        'Si el problema persiste, llamar al soporte');
               Application.Terminate;
             end;
         end;
       end
    else begin
      MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13+
               #9'La aplicacion cargara la base de datos local');
end;



      fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

  with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := facturasimpresasno_fact.Value;
    open;
  end;

with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
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


                if OP10.ItemIndex = 1 then BEGIN

                  if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
                         begin
                         cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeCopia'+'.fr3';
                //  Showmessage(''+CinF);
                   imprimeM.LoadFromFile(cInf);
                   END;
                  if datos.FbqMaster_Facttipo.Value ='Contado' then
                       begin
                   if Chkorinal.Checked = true then begin
                                imprimeM.variables['titulos']  :=quotedstr('FACTURA');
                    end else begin
                                imprimeM.variables['titulos']  :=quotedstr('COPIA FACTURA');
                             end;
                    imprimeM.variables['cajero']   :=quotedstr(edit2.text);
                    men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                    imprimeM.variables['mensaje1'] :=quotedstr(men_pie);
                    imprimeM.PrepareReport(true);
                    imprimeM.ShowPreparedReport;


                    datos.ZInventario.Close;
                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;

                    panel11.Visible := false;
                    cerrar.Enabled := true;
                    edit5.clear;

                    b1.Enabled := true;
                    b2.Enabled := false;
                    b3.Enabled := false;
                    b6.Enabled := false;
                    b4.Enabled := false;
                    cxButton5.Enabled := true;
                    cxButton11.Enabled := false;
                END;
               if datos.FbqMaster_Facttipo.Value ='CREDITO' then
                       begin
    with Antiguedad do
    begin
        close;
        SQL.Clear;
        sql.Add('SELECT a.clienteid,');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date  )<0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,');
        sql.add('sum(IIF( (DATEDIFF(DAY, a.fecha_fac, current_date )>=0 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=30) OR a.fecha_fac is null,(a.pendiente),0)) AS V0_30 ,');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=31 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=60, (a.pendiente),0)) AS V31_60,');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=61 AND DATEDIFF( DAY, a.fecha_fac,current_date )<=90, (a.pendiente),0)) AS V61_90, ');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=91 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=120, (a.pendiente),0)) AS V91_120,');
        sql.add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120,');

        sql.Add('(sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) +');
        sql.add('sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fechavencimiento is null,(a.pendiente),0)) +');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendiente),0)) +');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendiente),0))  +');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pendiente),0)) +');
        sql.add('sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,(a.pendiente),0))');
        sql.add(') as actual');


        sql.add('from master_fact a');
         sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
         sql.add('group by a.clienteid ');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := datos.FbqMaster_Factclienteid.Value;
        Params[4].Value := 'CREDITO';
        open;
  end;


                  if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
                         begin
                         cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeCopia_c'+'.fr3';
                //  Showmessage(''+CinF);
                   imprimeMC.LoadFromFile(cInf);
                   END;

                   if Chkorinal.Checked = true then begin
                                imprimeMC.variables['titulos']  :=quotedstr('FACTURA');
                    end else begin
                                imprimeMC.variables['titulos']  :=quotedstr('COPIA FACTURA');
                             end;
                    imprimeMC.variables['cajero']   :=quotedstr(edit2.text);
                    men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                    imprimeMC.variables['mensaje1'] :=quotedstr(men_pie);
                    imprimeMC.PrepareReport(true);
                    imprimeMC.ShowPreparedReport;


                    datos.ZInventario.Close;
                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;

                    panel11.Visible := false;
                    cerrar.Enabled := true;
                    edit5.clear;

                    b1.Enabled := true;
                    b2.Enabled := false;
                    b3.Enabled := false;
                    b6.Enabled := false;
                    b4.Enabled := false;
                    cxButton5.Enabled := true;
                    cxButton11.Enabled := false;

                          men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
                         imprimeMC.variables['mensaje1'] :=quotedstr(men_pie);
                       end;



            END;


                if OP10.ItemIndex = 0 then
                  BEGIN


                    if datos.FbqMaster_Facttipo.Value ='Contado' then
                       begin

                         if Tipoimpresion = 'D' then
                        begin
                                PrintCopia;
                        end else begin


                  //  cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketCopia'+'.fr3';
                //  Showmessage(''+CinF);
                     //  PrnCopia.LoadFromFile(cInf);
                       PrnCopia.variables['titulos']  :=quotedstr('COPIA FACTURA');
                       PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
                          men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                          PrnCopia.variables['mensaje1'] :=quotedstr(men_pie);
                          end;
                       end;

                   if datos.FbqMaster_Facttipo.Value ='CREDITO' then
                       begin
                       if Tipoimpresion = 'D' then
                        begin
                               imprimirtikectCredito;
                        end else begin

                  //  cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketCopia'+'.fr3';
                //  Showmessage(''+CinF);
                  //     PrnCopia.LoadFromFile(cInf);
                       PrnCopia.variables['titulos']  :=quotedstr('COPIA FACTURA');
                       PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
                          men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
                          PrnCopia.variables['mensaje1'] :=quotedstr(men_pie);
                          PrnCopia.PrepareReport(true);
                   PrnCopia.print;
                         end;
                       end;

                    //recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);



                    datos.ZInventario.Close;
                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;

                    panel11.Visible := false;
                    cerrar.Enabled := true;
                    edit5.clear;

                    b1.Enabled := true;
                    b2.Enabled := false;
                    b3.Enabled := false;
                    b6.Enabled := false;
                    b4.Enabled := false;
                    cxButton5.Enabled := true;
                    cxButton11.Enabled := false;

                  END;




end;

procedure TFrmNFact_normal1.cxButton19Click(Sender: TObject);
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      canfra : double;
      cero1 : string;
        nume : integer;

      r: TRect;
         longitud, campoD, campoC1, campoC2, campol, campof : string;
         DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
          PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, MEN_PIE : string;
begin
if total.Value = 0.00 then
  begin
    Showmessage('Este Pedido no Esta Completo');
  end else begin

datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text :='PEDIDO';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
DATOS.FbqMaster_FactROTULO.text := 'PEDIDO';
datos.FbqMaster_Factterminal.Text := 'FACTURACION';
datos.FbqMaster_FactABONO.Value          := 0.00;
datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
datos.FbqMaster_Factdireccion.Value      :=ibqclientesdireccion.Value;




if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
  begin
    datos.FbqMaster_Factquees.Value := 'NO';
  end;

if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
  begin
    datos.FbqMaster_Factquees.Value := 'PENDIENTE';
  end;


  if datos.FbqMaster_FactNOMBREDELDR.Value <>'Ninguno' then begin
     try
       datos.FbqMaster_Fact.Edit;
       datos.FbqMaster_FactRNC_CLIENTE.Value := ibqclientescedula.Value;

       with datos.ncf do
         begin
           close;
           sql.Clear;
           sql.Add('select * from ncf');
           sql.Add('where tipo =:tipo');

           if datos.FbqMaster_FactNOMBREDELDR.Value ='Fiscal' then
              begin
                  params[0].Value := 'FISCAL';
                  EDIT3.Text := 'VALIDO PARA CREDITO FINAL'
              end;

           if datos.FbqMaster_FactNOMBREDELDR.Value ='Gubernamental' then
              begin
                  params[0].Value := 'GOB';
                  EDIT3.Text := 'VALIDO PARA CONSUMO GUBERNAMENTAL'
              end;

           if datos.FbqMaster_FactNOMBREDELDR.Value ='Cons. Final' then
              begin
                  params[0].Value := 'FINAL';
                  EDIT3.Text := 'VALIDO PARA CONSUMIDOR FINAL'
              end;


           OPEN;
         end;


    nume := datos.ncfdesde.Value + datos.ncfuso.Value;


    if nume  >= 1 then
        begin
           cero1 := '0000';
        end;

     if nume  >= 10 then
        begin
           cero1 := '000';
     end;

     if nume  >= 100 then
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
     datos.FbqMaster_FactNCF.Value := datos.ncfnuntext.Value +cero1+IntToStr(nume);
     datos.FbqMaster_FactNCF_NOMBRE.Value :=  EDIT3.Text;
     datos.NCf.edit;
     datos.NCFUSO.Value :=   datos.NCFUSO.Value + 1;
     datos.ncf.ApplyUpdates;


     finally

     end;
  end;

datos.ZInventario.Open;

with datos.Zdetalle do
  begin
     open;
        while not eof do
           begin
             canfra := 0;


                with datos.MantArt do
                    begin
                      close;
                      sql.Clear;
                      sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
                      sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
                      sql.Add('inner join tb_moneda c On a.idmoneda = c.id');
                      sql.Add('where a.cod_art =:oo');
                      params[0].Value :=  datos.Zdetallearticuloid.value;
                      open;
                    end;
            

               if datos.ZdetalleCOMBO.Value ='FRA' then
                    BEGIN
//                         WITH qfraccionado do
//                          begin
//                               close;
//                               sql.Clear;
//                               sql.Add('select a.*, b.descripcion from particionado a');
//                               sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
//                               sql.Add('where a.cod_arti =:pp');
//                               sql.Add('and a.unidad =:pp2');
//                               params[0].Value := datos.ZdetalleARTICULOID.Value;
//                               params[1].Value := datos.ZdetalleUNID.Value;
//                               open;
//                          end;
//
//                      canfra := (datos.ZdetalleCANTIDAD.Value/qfraccionadocod_part.Value);
                      datos.MantArt.Edit;
                      datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value - canfra;
                      datos.MantArt.ApplyUpdates;

                    END else begin
                      datos.MantArt.Edit;
                      datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value - datos.ZdetalleCANTIDAD.Value;
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
              datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
              datos.ZInventarioFECHA.Value          := now();
              datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
              datos.ZInventarioCOD_ART.Value        := StrToInt(datos.ZdetalleCOD_ART.text);
              datos.ZInventarioCONCEPTOID.Value     := 9;
              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;

               if datos.ZdetalleCOMBO.Value ='FRA' then
                    BEGIN
                    //    datos.ZInventarioSALIDA.Value         := (datos.ZdetalleCANTIDAD.Value/qfraccionadocod_part.Value);
                    END else begin
                        datos.ZInventarioSALIDA.Value         := datos.ZdetalleCANTIDAD.Value;
                    end;

              datos.ZInventarioENTRADA.Value        := 0.00;
              next;
           end;


     datos.ZInventario.ApplyUpdates;

           end;


  DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;
datos.data.Commit;

 datos.ZInventario.Close;
DATOS.FbqMaster_Fact.Close;
DATOS.Zdetalle.Close;




  ///////////////////////////////////// Impresion ///////////////////

  if cxRadioGroup1.ItemIndex = 0 then
  begin
      fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

  with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := no_factpedido;
    open;
  end;



with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
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

 {with dcombo do
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



        if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
      begin
         try
             IniFile := ChangeFileExt(Application.ExeName,'.ini');

             longitud := ReadString_Ini(IniFile,'IMPRESION', 'longitud','');
             campoL := ReadString_Ini(IniFile,'IMPRESION', 'campoL','');
             campoC1 := ReadString_Ini(IniFile,'IMPRESION', 'campoC1','');
             campoC2 := ReadString_Ini(IniFile,'IMPRESION', 'campoC2','');
             campoD := ReadString_Ini(IniFile,'IMPRESION', 'campoD','');
             campoF := ReadString_Ini(IniFile,'IMPRESION', 'campoF','');
             DcampoL := ReadString_Ini(IniFile,'IMPRESION', 'DcampoL','');
             DcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC1','');
             DcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC2','');
             DcampoD := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD','');
             DcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD2','');
             DcampoF := ReadString_Ini(IniFile,'IMPRESION', 'DcampoF','');
             PcampoL := ReadString_Ini(IniFile,'IMPRESION', 'PcampoL','');
             PcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC1','');
             PcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC2','');
             PcampoD := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD','');
             PcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD2','');
             PcampoF := ReadString_Ini(IniFile,'IMPRESION', 'PcampoF','');




         except
             on E: Exception do
      	    begin
               MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13+
      	               '**** '+E.Message+'****'#13+
                        'Esto provoca que no se pueda iniciar,'+
                        'Si el problema persiste, llamar al soporte');
               Application.Terminate;
             end;
         end;
       end
    else begin
      MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13+
               #9'La aplicacion cargara la base de datos local');
end;

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DATOS.ZUconfiguracion.FieldByName('TEXINICIAR').Value);
//      WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
 //     WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

 //     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('C O P I A',StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE').asstring),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('NCF:'+DATOS.FBQMASTER_FACT.FieldByName('NCF').AsString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('P E D I D O'),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Fact: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(' ',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',StrToInt(campoL),0)+espacios('CANT',StrToInt(campoC1),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('VALOR',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('-------------------------------------',StrToInt(longitud),0));

    with DATOS.ZDETALLE do
      begin
          First;
          while not Eof do
          begin


            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
//                                                                                   +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
  //                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

            if datos.ZdetalleCANTIDAD.Value > 1.00 then begin

            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('UNID').AsString),StrToInt(DcampoL),0)+''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value)+' @',StrToInt(DcampoC1),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(DcampoC2),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(DcampoD),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));

            end else begin

             WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('UNID').AsString),StrToInt(DcampoL),0)+''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value)+' @',StrToInt(DcampoC1),0)+''+
                                                                                                    espacios('',StrToInt(DcampoC2),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(DcampoD),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));


            END;






                                                                                                 //+' '+
              //              espacios(MyTextReplace(DATOS.ZDETALLE.FieldByName('ARTICULO').AsString),17,0)+' '+
                         //   espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').Value),5,1)+' '+
                //            espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),20,1));
            Next;
          end;
      end;



      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));

      if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1));
          if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('descuento').Value),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1));



        if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1));

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

        if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('BONOS:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('BONOS').Value),StrToInt(pcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(PcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(PcampoD),1)+ESPACIOS('',StrToInt(DcampoF),1));



         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_FactNOMBRES_EMP.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));


with printer do
begin

        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
        BeginDoc;
        Canvas.Brush.Style := bsClear;
        for i := 0 to Memo1.Lines.Count do
          Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
        Memo1.Lines.Strings[i]);
        Canvas.Brush.Color := clBlack;

        EndDoc;
end;





  end;


  if cxRadioGroup1.ItemIndex = 1 then
    begin


with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := no_factpedido;
    open;
  end;


with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
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
                    IMPRIMEPEDIDO.variables['cajero']   :=quotedstr(DBEdit1.text);
                    IMPRIMEPEDIDO.variables['VENDEDOR']   :=quotedstr(cxDBTextEdit11.Text);

                    if datos.FbqMaster_Facttipo.Value ='Contado' then
                       begin
                          men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                          IMPRIMEPEDIDO.variables['mensaje1'] :=quotedstr(men_pie);
                       end;

                   if datos.FbqMaster_Facttipo.Value ='CREDITO' then
                       begin
                          men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
                          IMPRIMEPEDIDO.variables['mensaje1'] :=quotedstr(men_pie);
                       end;

                    //recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);
                    IMPRIMEPEDIDO.PrepareReport(true);
                    // recibo2.ShowPreparedReport;

                    IMPRIMEPEDIDO.print;




    end;



     if cxRadioGroup1.ItemIndex = 2 then
        begin
              datos.ZInventario.Close;
                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;

                    panel11.Visible := false;
                    cerrar.Enabled := true;
                    edit5.clear;

                    b1.Enabled := true;
                    b2.Enabled := false;
                    b3.Enabled := false;
                    b6.Enabled := false;
                    b4.Enabled := false;
                    cxButton5.Enabled := true;
                    cxButton11.Enabled := false;

                    cxButton4.Enabled := true;


        end;
  ///////////////////////////////// Fin de Impresion /////////////////////

//PANELCOBRO.Visible := FALSE;

T1.ClEAR;
//t2.Clear;
t3.Clear;
t4.Clear;
opmaster.Enabled := false;


//hold.Close;
//hold.Params[0].Value := 'HOLD';
//HOLD.open;

cerrar.Enabled := true;
edit5.clear;
b1.Enabled := true;
b2.Enabled := false;
b3.Enabled := false;
b6.Enabled := false;
b4.Enabled := false;
BTPedido.Enabled := false;
cxButton5.Enabled := true;
cxButton11.Enabled := false;

//BtBuscarPedido.Enabled := true;
panel12.Visible := false;

datos.ZInventario.Close;
DATOS.FbqMaster_Fact.Close;
DATOS.Zdetalle.Close;

panel11.Visible := false;
cerrar.Enabled := true;
edit5.clear;


b1.Enabled := true;
b2.Enabled := false;
b3.Enabled := false;
b6.Enabled := false;
b4.Enabled := false;
cxButton5.Enabled := true;
cxButton11.Enabled := false;

end;
end;

procedure TFrmNFact_normal1.cxButton1Click(Sender: TObject);
begin
panel13.Visible := true;
memo2.Clear;
memo2.Top:=0;
memo2.Text := 'ARTICULOS VARIOS';

end;

procedure TFrmNFact_normal1.cxButton20Click(Sender: TObject);
begin
   PanelOpenD.Visible := true;
   edit18.Visible := true;
end;

procedure TFrmNFact_normal1.cxButton21Click(Sender: TObject);
begin


datos.FbCategorias.Open;


         with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a,a.comision, a.precio_b,a.referencia, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.OBS,');
                sql.Add(' a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,  a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion from mtartuculos a ');
                sql.Add('where a.codigobarra =:PPP');
                sql.Add('group by a.unidad,a.precio_a, a.comision, a.precio_b, a.precio_d, a.referencia, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, ');
                sql.Add('a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion,a.OBS');
                PARAMS[0].Value := 'SER001';
                open;
              end;


// edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
 edit11.Text := '1.00';
//
                                             t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             t2.Text     :=Memo2.Text;
                                             if chk.Checked = true then begin

                                               tecnico   := StrToInt(TecnicosCod_emp.value);
                                             end;

                                          // Showmessage(''+ibqrArticulositbis.Value);
                                           //  EITBIS.Text  := ibqrArticulositbis.Text;

                                             edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);
                                             t4.value    := CURRENCYEDIT1.Value;
//

                                            lunidad.Text := ibqrarticulosunidad.Value;
//                                              //FrmNFact_normal.LUnid.ItemIndex := -1;
//                                             // FrmNFact_normal.LUnid.ItemIndex := 0;
                                              t3.Text := '1';

                                              linea.Text := 'ART';
//                                              taza.Text := ibqrarticulostaza_compra.Text;

                                            if IbqRArticulosPOLITICA.value = 'Unitario' then
                                            begin
                                              topcion.Text := 'UNI';
                                            end;

                                            if IbqRArticulosPOLITICA.value = 'servicio' then
                                            begin
                                              topcion.Text := 'SER';
                                            end;

//                                              cxButton9.Enabled := true;



                                                try
                                                cxbutton9.Click;
                                                except

                                                end;

                                            MEMO2.Clear;
                                            CURRENCYEDIT1.Value := 0.00;
                                            panel13.Visible := false;
                                            label38.Caption := 'No Hay Instalador Asignado';
end;








procedure TFrmNFact_normal1.cxButton22Click(Sender: TObject);
var
 cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

  longitud, campoD, campoC1, campoC2, campol, campof : string;
         DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
          PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2 : string;
          cInf : String;
begin


 if total.Value = 0.00 then
  begin
    Showmessage('Este Cotización no Esta Completa');
  end else begin

//panelcobro.Visible := true;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text       := 'ENVIADA';
datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
DATOS.FbqMaster_FactROTULO.text          := 'COTIZACION';
datos.FbqMaster_Factterminal.Text        := 'COTIZACION';
datos.FbqMaster_FactABONO.Value          := 0.00;
datos.FbqMaster_FactPENDIENTE.Value      := 0.00;
datos.FbqMaster_FactTipo.Value           := 'Contado';

// FrmNFact.b5.Enabled := false;
b6.Enabled := false;
opmaster.Enabled := false;
opdetalle.Enabled := false;
cxbutton5.Enabled := true;
cxbutton11.Enabled := false;
cerrar.Enabled := true;
BtnPrintConduce.Enabled := TRUE;
panel7.Enabled := false;

//datos.ZInventario.ApplyUpdates;
DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;

         datos.data.Commit;





        // PANELCOBRO.Visible := FALSE;
         T1.ClEAR;

cerrar.Enabled := true;

b1.Enabled := true;
b2.Enabled := false;
b3.Enabled := false;
b6.Enabled := false;
b4.Enabled := false;
cxButton14.Enabled := false;
BTPedido.Enabled := true;
//BtBuscarPedido.Enabled := true;
cxButton5.Enabled := true;
cxButton11.Enabled := false;
BtnPrintConduce.Enabled := false;

BtnConduce.Enabled := true;
cxButton4.Enabled := true;

   BtBorrar.Enabled := false;
     b6.Enabled := false;
     cxButton12.Enabled := false;
     cxButton13.Enabled := false;
      BTSerial.Enabled := false;




//t2.Clear;
t3.Clear;
t4.Clear;


with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(edit5.Text);
    open;
  end;


with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;
//
//
//
//


         if application.MessageBox ('Deseas Imprimir Esta Cotización','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin

                    if datos.ZUconfiguracionimprimecotiza.Value ='Ticket' then
                     begin

                  if datos.ZUconfiguracionCONTACTO.Value <>'' then
                     begin
                           ImprimeCotiza;
                     end else begin
                                 cInf := datos.ZUconfiguracionROTULO_FC.value+'\CotizacionTICKET'+'.fr3';

                                    imprimepedido.LoadFromFile(cInf);

                                    imprimepedido.variables['titulos']  :=quotedstr('COTIZACION');
                                    imprimepedido.variables['cajero']   :=quotedstr(edit2.text);

                                    imprimepedido.PrepareReport(true);
                                    imprimepedido.print;

                              end;
                     end;

                     if datos.ZUconfiguracionimprimecotiza.Value ='Matrixial' then
                     begin
                          if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
                            begin
                             cInf := datos.ZUconfiguracionROTULO_FC.value+'\CotizacionMatrix'+'.fr3';

                                    imprimepedido.LoadFromFile(cInf);
                            end else  begin

                                    imprimepedido.variables['titulos']  :=quotedstr('COTIZACION');
                                    imprimepedido.variables['cajero']   :=quotedstr(edit2.text);

                                    imprimepedido.PrepareReport(true);
                                    imprimepedido.ShowPreparedReport;
                            end;
                      end;


                    if datos.ZUconfiguracionimprimecotiza.Value ='Normal' then
                     begin
                            if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
                            begin
                              cInf := datos.ZUconfiguracionROTULO_FC.value+'\CotizacionGrande'+'.fr3';
                             imprimepedido.LoadFromFile(cInf);
                             end else begin


                                    imprimepedido.variables['titulos']  :=quotedstr('COTIZACION');
                                    imprimepedido.variables['cajero']   :=quotedstr(edit2.text);

                                    imprimepedido.PrepareReport(true);
                                    imprimepedido.ShowPreparedReport;
                              end;
                      end;

         end;


 datos.FbqMaster_Fact.Close;
 datos.Zdetalle.Close;
 edit5.clear;
end;


end;

procedure TFrmNFact_normal1.cxButton5Click(Sender: TObject);
begin
if FrmHold = nil then
  begin
       FrmHold := tFrmHold.create(self);
       FrmHold.showmodal;
  end;

end;

procedure TFrmNFact_normal1.B4Click(Sender: TObject);
begin

            if total.Value = 0.00 then
              begin
                Showmessage('Este Conduce no Esta Completa');
              end else begin
            if (DATOS.FbqMaster_FactROTULO.Value ='FACTURACION') or (DATOS.FbqMaster_FactROTULO.Value ='COTIZACION') then
                       BEGIN



                      datos.FbqMaster_Fact.Edit;
                      datos.fbqMaster_factsituacion.text       := 'HOLD';
                      datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
                      DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';

                      datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
                      datos.FbqMaster_FactABONO.Value          := 0.00;
                      datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
                      datos.FbqMaster_FactIDDR.Value           := 1;


                      panel7.Enabled := false;

                              PanelLTOP.Enabled := false;

                      if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
                        begin
                          datos.FbqMaster_Factquees.Value := 'NO';
                        end;


                      if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
                        begin
                          datos.FbqMaster_Factquees.Value := 'PENDIENTE';
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


                      //datos.ZInventario.ApplyUpdates;
                      DATOS.FbqMaster_Fact.ApplyUpdates;
                      DATOS.Zdetalle.ApplyUpdates;
                      datos.data.Commit;





                      T1.ClEAR;
                      //t2.Clear;
                      t3.Clear;
                      t4.Clear;
                      opmaster.Enabled := false;

                      DATOS.FbqMaster_Fact.ApplyUpdates;
                      DATOS.Zdetalle.ApplyUpdates;
                      datos.data.Commit;

                       datos.ZInventario.Close;
                      DATOS.FbqMaster_Fact.Close;
                      DATOS.Zdetalle.Close;

                      hold.Close;
                      hold.Params[0].Value := 'HOLD';
                      HOLD.open;
                        BTSerial.Enabled := false;
                      cerrar.Enabled := true;
                      edit5.clear;
                      b1.Enabled := true;
                      b2.Enabled := false;
                      b3.Enabled := false;
                      b6.Enabled := false;
                      b4.Enabled := false;
                       cxButton37.Enabled := true;
                      cxButton14.Enabled := false;
                      BTPedido.Enabled := true;
                      //BtBuscarPedido.Enabled := true;
                      cxButton5.Enabled := true;
                      cxButton11.Enabled := false;
                      BtnPrintConduce.Enabled := false;

                      BtnConduce.Enabled := true;
                      cxButton4.Enabled := true;

                         BtBorrar.Enabled := false;
                           b6.Enabled := false;
                           cxButton12.Enabled := false;
                           cxButton13.Enabled := false;
                         if panel13.Visible = true then begin

                           memo2.Clear;
                         currencyedit1.Value := 0.00;
                         panel13.Visible := false;
                         end;


                         end;

            END;
end;

procedure TFrmNFact_normal1.B1Click(Sender: TObject);
var
cero : string;
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin

opmaster.Enabled := true;

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;


datos.FbqMaster_Fact.Open;

zqusuario.Open;

ibqclientes.Open;

  FrmNFact_normal1.panel7.Enabled := true;
     FrmNFact_normal1.PanelLTOP.Enabled := true;
 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := numerogen_id.Value;
 datos.FbqMaster_FactNC.Value := 1;


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
     edit5.Text := datos.FbqMaster_FactNO_FACT1.Value;
    // RxDBComboBox1.ItemIndex := 0;
    // FrmNFact.RxDBComboBox2.ItemIndex := 1;
     cxDBComboBox1.ItemIndex := 1;

   //  RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := true;
     cxDBComboBox1.Enabled := true;
     edit12.Clear;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;

     with ibqclientes do
        begin
          close;
          sql.Clear;
          sql.Add('select a.* from cliente a');
      //    sql.Add('inner join ruta b On a.ruta_id = b.id');
       //   sql.Add('inner join vendedores c On b.idvendedor = c.id');
          sql.Add('where a.codigo = 1');
          open;
        end;


        datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
        datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
        datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
        datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
        datos.FbqMaster_FactCAJAID.Value            := datos.ZUconfiguracionCAJAID.Value;


     with zqusuario do
       begin
         close;
         sql.Clear;
         sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
         sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
         sql.Add('where a.usuarioId =:pp');
         params[0].Value := asignausuario;
         opeN;
       end;

      // showmessage(''+IntToStr(AsignaUsuario));
     datos.FbqMaster_Factusuarioid.Value := asignausuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value  := zqusuarionombres_emp.Value;
     datos.FbqMaster_FactCODVEN.Value       := ZqusuarioEMPLEADOID.Value;
     datos.FbqMaster_FactNOMBRES_EMP.Value  := ZqusuarioNOMBRES_EMP.Value;
     datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;
   //  datos.FbqMaster_Factcaja.Value := datos.ConsultaCajaCAJA_NOMBRE.Value;

     if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Ninguno' then
       begin
          cxDBComboBox2.ItemIndex := 0;
       end;

     if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Cons. Final' then
       begin
          cxDBComboBox2.ItemIndex := 1;
       end;

       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Fiscal' then
       begin
          cxDBComboBox2.ItemIndex := 2;
       end;

       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Gubernamental' then
       begin
          cxDBComboBox2.ItemIndex := 3;
       end;


    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

    opdetalle.Enabled := true;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
          begin
            barra.SetFocus;
          end else begin
            barra1.SetFocus;

          end;



     b1.Enabled := false;
     b2.Enabled := true;
     b2.Caption := 'Cancelar Factura';

      if datos.ZqUsuariosIDSESSION.Value = 1 then
          begin
            b3.Enabled := false;
            b4.Enabled := true;
            cxButton11.Enabled := true;
             cxButton37.Enabled := false;
          end;

      if datos.ZqUsuariosIDSESSION.Value = 3 then
          begin
            b3.Enabled := true;
            b4.Enabled := true;
            cxButton11.Enabled := true;
             cxButton37.Enabled := TRUE;
          end;

            if datos.ZqUsuariosIDSESSION.Value = 2 then
          begin
            b3.Enabled := true;
            b4.Enabled := true;
            cxButton11.Enabled := true;
             cxButton37.Enabled := TRUE;
          end;

//    if (datos.ZqUsuariosIDSESSION.Value = 3) OR (datos.ZqUsuariosIDSESSION.Value = 2) then  BEGIN
//
//     b3.Caption := 'Pagar Factura [F4]';
//      b3.Enabled := true;
//
//
//    END ELSE BEGIN
//
//        b3.Caption := 'Pagar Factura [F4]';
//      b3.Enabled := FALSE;
//      b4.Enabled := true;
//      cxButton11.Enabled := FALSE;
//
//    END;




     cxButton4.Enabled := false;
     cxButton5.Enabled := false;
     cxButton14.Enabled := true;
     BTPedido.Enabled := true;
     b6.Enabled := true;
     Edit3.Text := 'NUEVO';
     opmaster.Enabled := true;
     opdetalle.Enabled := true;
     BtBorrar.Enabled := true;
     b6.Enabled := true;
     cxButton12.Enabled := true;
     cxButton13.Enabled := true;
      BTSerial.Enabled := true;

     BtnPrintConduce.Enabled := true;


      with datos.Zdetalle do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.articulo, c.unidad, b.itbis from detailfact a');
          sql.Add('left join mtartuculos b On a.cod_art = b.codigotxt');
          Sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
          sql.Add('where a.no_fact =  0');
          open;
       end;

//     FrmNfact.cxButton5.Enabled := true;
     cerrar.Enabled := false;

end;

procedure TFrmNFact_normal1.cxButton23Click(Sender: TObject);
 Var
   F:TextFile;
begin
datos.ZUconfiguracion.Open;

  if Edit18.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
     begin



        drawer.PrepareReport(true);
        drawer.print;
        Edit18.Clear;
        PanelOpenD.Visible :=  false;


     end else begin
          MsgError('Usted no esta autorizado para relaizar esa operación'#13+
      	               'Favor consultar con el Administrador');
          Edit18.Clear;
          PanelOpenD.Visible := false;

     end;



end;

procedure TFrmNFact_normal1.cxButton24Click(Sender: TObject);
var
suma, itbs : currency;
begin

 if cxDBCalcEdit1.Text <> '' then
    begin
  datos.Zdetalle.Edit;

   if datos.ZdetalleITBS_ART.Value = 'S' then
      begin


         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

                      datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value ;
             datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
             datos.ZdetalleITBS.Value   := 0.00;
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
             datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;

           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin


                datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value - (qpreciosPRECIO_A.Value * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin


                datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value - (qpreciosPRECIO_A.Value * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
end;


      end else begin

         /// showmessage('');
         //datos.Zdetallecantidad.Value := strtofloat(t3.Text);

         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';

         datos.ZdetallePRECIO.Value    := qpreciosprecio_a.Value;

         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

panelprecios.Visible := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;

                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;

                         end;

end;

end;

procedure TFrmNFact_normal1.cxButton25Click(Sender: TObject);
var
suma, itbs : currency;
begin

  if cxDBCalcEdit2.Text <> '' then
    begin
  datos.Zdetalle.Edit;
   if datos.ZdetalleITBS_ART.Value = 'S' then
      begin

        //PRECIO_C :=0.00;
        //PRECIO_C := (datos.ZdetalleITBS.Value  + DATOS.ZdetallePRECIO.Value) / datos.ZdetalleCANTIDAD.Value;
       // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
       // datos.ZdetalleITBS_ART.Value := 'S';
       // datos.ZdetalleEX.Value := '';

         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

                      datos.ZdetallePRECIO.Value   := qpreciosprecio_B.Value ;
             datos.ZdetalleIMPUESTO.Value := qpreciosprecio_B.Value;
             datos.ZdetalleITBS.Value   := 0.00;
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
             datos.ZdetalleITBIS2.Value := qpreciosprecio_b.Value;

           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin


                datos.ZdetallePRECIO.Value   := qpreciosprecio_B.Value - (qpreciosprecio_b.Value * 0.18);
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((qpreciosprecio_B.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

            datos.ZdetalleITBIS2.Value := qpreciosprecio_b.Value;
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin


                datos.ZdetallePRECIO.Value   := qpreciosprecio_B.Value - (qpreciosprecio_b.Value * 0.18);
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((qpreciosprecio_B.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           datos.ZdetalleITBIS2.Value := qpreciosprecio_b.Value;
end;


      end else begin

     //    datos.Zdetallecantidad.Value := strtofloat(t3.Text);
         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
         datos.ZdetallePRECIO.Value    := qpreciosprecio_b.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

panelprecios.Visible := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;

                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;

                         end;


end;

panelprecios.Visible := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;

                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;

                         end;



end;

procedure TFrmNFact_normal1.cxButton26Click(Sender: TObject);
var
suma, itbs : currency;
begin
//dfgfgfgdfg

  if datos.ZqUsuariosIDSESSION.Value = 3 then
          begin
  if cxDBCalcEdit3.Text <> '' then
    begin
  datos.Zdetalle.Edit;
   if datos.ZdetalleITBS_ART.Value = 'S' then
      begin


        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

                      datos.ZdetallePRECIO.Value   := qpreciosPRECIO_d.Value ;
             datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
             datos.ZdetalleITBS.Value   := 0.00;
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
             datos.ZdetalleITBIS2.Value := qpreciosPRECIO_d.Value;

           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin


             datos.ZdetallePRECIO.Value   := qpreciosPRECIO_d.Value - (qpreciosPRECIO_d.Value * 0.18);
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_d.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin


                datos.ZdetallePRECIO.Value   := qpreciosPRECIO_d.Value - (qpreciosPRECIO_d.Value * 0.18);
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_d.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           datos.ZdetalleITBIS2.Value := qpreciosPRECIO_d.Value;
end;


      end else begin

        // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
         datos.ZdetallePRECIO.Value    := qpreciosprecio_d.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

panelprecios.Visible := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;

                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;

                         end;


end;
panelprecios.Visible := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;

                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;

                         end;
   end else begin
                	if FAutorizacion.ShowModal = mrOk then
                            begin
                                  if cxDBCalcEdit3.Text <> '' then
                                    begin
                                  datos.Zdetalle.Edit;
                                   if datos.ZdetalleITBS_ART.Value = 'S' then
                                      begin

                                        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
                                           begin

                                             datos.ZdetallePRECIO.Value   := qpreciosPRECIO_d.Value ;
                                             datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
                                             datos.ZdetalleITBS.Value   := 0.00;
                                             datos.ZdetalleTOTAL.Value  := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
                                             datos.ZdetalleITBIS2.Value := qpreciosPRECIO_d.Value;

                                           end;

                                          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
                                           begin


                                             datos.ZdetallePRECIO.Value   := qpreciosPRECIO_d.Value - (qpreciosPRECIO_d.Value * 0.18);
                                             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                                             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_d.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
                                             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

                                            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
                                           end;

                                        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
                                           begin


                                             datos.ZdetallePRECIO.Value   := qpreciosPRECIO_d.Value - (qpreciosPRECIO_d.Value * 0.18);
                                             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                                             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_d.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
                                             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                                           datos.ZdetalleITBIS2.Value := qpreciosPRECIO_d.Value;
                                end;


                                      end else begin

                                        // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
                                         datos.ZdetalleITBS_ART.Value := 'N';
                                         datos.ZdetalleEX.Value := 'E';
                                         datos.ZdetallePRECIO.Value    := qpreciosprecio_d.Value;
                                         datos.ZdetalleITBS.Value      := 0.00;
                                         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
                                      end;

                                      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
                                       datos.zdetalle.First;

                                   while not datos.zdetalle.Eof do
                                         begin
                                            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                                            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                                            datos.zdetalle.Edit;
                                            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
                                            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

                                        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
                                        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
                                         datos.zdetalle.Next;

                                   end;


                                datos.FbqMaster_Fact.Edit;
                                datos.FbqMaster_Factdescuento.Value := 0.00;
                                datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

                                if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
                                           begin
                                               datos.FbqMaster_FactMONTO.Value := suma;

                                               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                                                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
                                               end else begin
                                                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
                                               end;

                                           end;

                                if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
                                           begin
                                               datos.FbqMaster_FactMONTO.Value := suma - itbs;
                                               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                                                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                                                  end else begin
                                                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                                                  end;

                                           end;

                                if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
                                           begin
                                               datos.FbqMaster_FactMONTO.Value := suma - itbs;
                                               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                                                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                                                  end else begin
                                                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                                                  end;

                                           end;

                                panelprecios.Visible := false;
                                if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                                                begin
                                                   barra.SetFocus;
                                                   BARRA.Clear;

                                                end else begin
                                                            barra1.clear;
                                                            BARRA1.SetFocus;

                                                         end;


                                end;

                           end;
           end;
end;


procedure TFrmNFact_normal1.cxButton27Click(Sender: TObject);
var
suma, itbs : currency;
begin


//     	if FAutorizacion.ShowModal = mrOk then
//                            begin
  datos.Zdetalle.Edit;
   if datos.ZdetalleITBS_ART.Value = 'S' then
      begin

        //PRECIO_C :=0.00;
        //PRECIO_C := (datos.ZdetalleITBS.Value  + DATOS.ZdetallePRECIO.Value) / datos.ZdetalleCANTIDAD.Value;
       // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
       // datos.ZdetalleITBS_ART.Value := 'S';
       // datos.ZdetalleEX.Value := '';


        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

                      datos.ZdetallePRECIO.Value   := cxCurrencyEdit1.Value ;
             datos.ZdetalleIMPUESTO.Value := cxCurrencyEdit1.Value;
             datos.ZdetalleITBS.Value   := 0.00;
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
             datos.ZdetalleITBIS2.Value := cxCurrencyEdit1.Value;

           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin


             datos.ZdetallePRECIO.Value   := cxCurrencyEdit1.Value - (cxCurrencyEdit1.Value  * 0.18);
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((cxCurrencyEdit1.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

            datos.ZdetalleITBIS2.Value := cxCurrencyEdit1.Value;
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin


                datos.ZdetallePRECIO.Value   :=cxCurrencyEdit1.Value - (cxCurrencyEdit1.Value  * 0.18);
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((cxCurrencyEdit1.Value * datos.ZdetalleCANTIDAD.Value) * 0.18);
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           datos.ZdetalleITBIS2.Value := cxCurrencyEdit1.Value;
end;


      end else begin

        // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
         datos.ZdetallePRECIO.Value    := cxCurrencyEdit1.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

panelprecios.Visible := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;

                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;

                         end;


//*****************
panelprecios.Visible := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;

                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;

                         end;

end;
procedure TFrmNFact_normal1.cxButton28Click(Sender: TObject);
begin

if FAutorizacion.ShowModal = mrOk then
           begin



     datos.ZInventario.Open;

     with detallefacturas do
         begin
            close;
            sql.Clear;
            sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
            sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
            sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
            sql.Add('where a.masterid =:ppp');
            params[0].Value := facturasIMPRESASNO_FACT.Value;
            open;
        end;

     with detallefacturas do
      begin

         first;
        while not eof do begin

         with updateNC do
           begin
              close;
              sql.Clear;
              sql.Add('update mnoc set afecta_inv = 1');
              sql.Add('where mncid =:opp');
              params[0].Value := StrToInt(facturasIMPRESASNO_FACT1.Value);
              ExecSQL;
            end;
            next;
        end;
   end;

   if FacturasImpresasABONO.Value <= 0 then
     begin

     with detallefacturas do
        begin
        FIRST;
        while not eof do
          begin

           if datos.ZdetalleBARRA.Value <>'' then
           begin
             with Uprma do
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

       with numeroinventario do
                  begin
                     close;
                     sql.Clear;
                     sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
                     open;
                  end;


              datos.ZInventario.Insert;
              datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
              datos.ZInventarioFECHA.Value          := now();
              datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
              datos.ZInventarioCOD_ART.Value        := detallefacturasarticuloID.Value;
              datos.ZInventarioCONCEPTOID.Value     := 7;
              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
              datos.ZInventarioSALIDA.Value         := 0.00;
              datos.ZInventarioENTRADA.Value        := detallefacturasCANTidad.Value;
              datos.ZInventarioCOD_ALM.Value        := 1;





                  with datos.MantArt do
                    begin
                      close;
                      sql.Clear;
                      sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
                      sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
                      sql.Add('left join tb_moneda c On a.idmoneda = c.id');
                      sql.Add('where a.cod_art =:oo');
                      params[0].Value :=  detallefacturasarticuloID.Value;
                      open;
                    end;



                 //showmessage(''+IntToStr(datos.MantArtCOD_ART.Value));
                 datos.MantArt.Edit;
                 datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value + detallefacturasCANTidad.Value;
                 datos.MantArt.ApplyUpdates;




              next;
          end;
        end;

           with IbqClientes do
            begin
              close;
              sql.Clear;
              sql.Add('select * from cliente');
              sql.Add('where codigo =:codigo');
              Params[0].Value := facturasImpresasclienteid.Value;
              open;
           end;


         //****** Actualiza Balance de Credito Cliente *-****


               with UpCredito do
                 begin
                   close;
                   sql.Clear;
                   sql.Add('update cliente set Musados =:Musado, balance =:balance ');
                   sql.add('where codigo =:codigo');
                   params[0].Value := IbqClientesMUSADOS.Value - facturasImpresasPENDIENTE.Value;
                   params[1].Value := IbqClientesCREDITOLIMITE.Value - (IbqClientesMUSADOS.Value - facturasImpresasPENDIENTE.Value);
                   params[2].Value := IbqClientesCODIGo.Value;
                   ExecSQL;
                 end;

 //**************************************************

        with anular do
          begin
            close;
            sql.Clear;
            sql.Add('update master_fact set condicion =:op');
            sql.Add('where no_fact =:pp');
            params[0].Value := 'ANULADA';
            params[1].Value := FacturasImpresasno_fact.Value;
            ExecSQL;
          end;


          datos.ZInventario.ApplyUpdates;
          datos.Data.Commit;
         with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        open;
    end;
          datos.ZInventario.close;
         // EdClave.Clear;
        //  PanelAutorizacion.Visible := false;


      end else begin
                 ShowMessage(' Esta Factura Tiene Abono(s) aplicado(s) no pude ser anulada ');
               end;


  end;



 

end;

procedure TFrmNFact_normal1.cxButton29Click(Sender: TObject);
begin
if FrmServicioInstalador = nil then
  begin
       FrmServicioInstalador := tFrmServicioInstalador.create(self);
       FrmServicioInstalador.Edit1.Text := datos.FbqMaster_FactNO_FACT.Text;
       FrmServicioInstalador.showmodal;
  end;

end;

procedure TFrmNFact_normal1.BtnPrintConduceClick(Sender: TObject);
begin

 if PanelConduce.Visible = True then
              begin
                PanelConduce.Visible := false;
              end else begin
PanelConduce.Visible := true;
              end;
end;

procedure TFrmNFact_normal1.cxButton31Click(Sender: TObject);
var
cInf : String;
begin

if total.Value = 0.00 then
  begin
    Showmessage('Este Conduce no Esta Completa');
  end else begin


//panelcobro.Visible := true;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text       := 'CONDUCE';
datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
datos.FbqMaster_FactABONO.Value          := 0.00;
datos.FbqMaster_FactPENDIENTE.Value      := 0.00;




//BtBuscarPedido.Enabled := true;
BTPedido.Enabled := true;

cerrar.Enabled := true;

cxButton14.Enabled := true;
cxButton4.Enabled := true;

b1.Enabled := true;
b2.Enabled := false;
b3.Enabled := false;
b6.Enabled := false;
b4.Enabled := false;
 BtnPrintConduce.Enabled := false;
cxButton5.Enabled := true;
cxButton11.Enabled := false;
PANEL12.Visible := FALSE;

   BtBorrar.Enabled := false;
     b6.Enabled := false;
     cxButton12.Enabled := false;
     cxButton13.Enabled := false;



//datos.ZInventario.ApplyUpdates;
DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;

         datos.data.Commit;
         //PANELCOBRO.Visible := FALSE;
         T1.ClEAR;






//t2.Clear;
t3.Clear;
t4.Clear;


with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(edit5.Text);
    open;
  end;


with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;
//
//
//
//


edit5.clear;
      if OPConduce.ItemIndex = 0 then  begin

         if application.MessageBox ('Deseas Imprimir Este  Conduce','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin

           if datos.ZUconfiguracionCONTACTO.Value <>'' then
             begin
                         imprimeconduce;
             end else begin
                              cInf := datos.ZUconfiguracionROTULO_FC.value+'\CondUceticket'+'.fr3';

                  PrnConduceTicket.LoadFromFile(cInf);

                    PrnConduceTicket.variables['titulos']  :=quotedstr('CONDUCE');
                    PrnConduceTicket.variables['cajero']   :=quotedstr(edit2.text);

                  //  ShowMEssage(' Favor prepara la Impresora '+datos.ZUconfiguracionIMPRIMECOTIZA.Value+' '+'y luego presione OK');

                    PrnConduceTicket.PrintOptions.Printer := trim(datos.ZUconfiguracionIMPRIMECOTIZA.Value);
                    PrnConduceTicket.PrepareReport(true);
                    PrnConduceTicket.print;
     end;
         end;
      end;

       if OPConduce.ItemIndex = 1 then  begin

         if application.MessageBox ('Deseas Imprimir Este  Conduce','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin
                   //   cInf := datos.ZUconfiguracionROTULO_FC.value+'\ConduceMediaCarta'+'.fr3';
                //  Showmessage(''+CinF);
               //   ConduceMC.LoadFromFile(cInf);

                    ConduceMC.variables['titulos']  :=quotedstr('CONDUCE');
                    ConduceMC.variables['cajero']   :=quotedstr(edit2.text);

                  //  ShowMEssage(' Favor prepara la Impresora '+datos.ZUconfiguracionIMPRIMECOTIZA.Value+' '+'y luego presione OK');

                    ConduceMC.PrintOptions.Printer := trim(datos.ZUconfiguracionIMPRIMECOTIZA.Value);
                    ConduceMC.PrepareReport(true);
                    ConduceMC.ShowReport;
         end;
      end;

       if OPConduce.ItemIndex = 2 then  begin

         if application.MessageBox ('Deseas Imprimir Este  Conduce','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin
                      cInf := datos.ZUconfiguracionROTULO_FC.value+'\ConduceFull'+'.fr3';
                //  Showmessage(''+CinF);
                  ConduceFull.LoadFromFile(cInf);

                    ConduceFull.variables['titulos']  :=quotedstr('CONDUCE');
                    ConduceFull.variables['cajero']   :=quotedstr(edit2.text);

                  //  ShowMEssage(' Favor prepara la Impresora '+datos.ZUconfiguracionIMPRIMECOTIZA.Value+' '+'y luego presione OK');

                    ConduceFull.PrintOptions.Printer := trim(datos.ZUconfiguracionIMPRIMECOTIZA.Value);
                    ConduceFull.PrepareReport(true);
                    ConduceFull.ShowReport;
         end;
      end;

      PanelConduce.Visible := false;
      BtnConduce.Enabled := TRUE;
      datos.FbqMaster_Fact.Close;
      datos.Zdetalle.Close;
  end;
end;

procedure TFrmNFact_normal1.cxButton32Click(Sender: TObject);
begin
 if b3.Enabled = true then begin

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BuscarArticulos.Visible := true;
                    datos.FbCategorias.open;

                    EDIT19.SetFocus;
                end else begin

                           BuscarArticulos.Visible := true;
                            datos.FbCategorias.open;
                           EDIT19.CLEAR;
                           EDIT19.SetFocus;
                         end;
BuscarArticulos.Visible := true;
datos.FbCategorias.open;

with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                sql.Add('where a.COMPACTIBLECON =:opp');
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                params[0].Value := datos.ZdetalleARTICULOID.Value;
                open;
              end;



{    if (cxDBTextEdit4.Text ='') and (cxDBTextEdit3.Text = '')then
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

procedure TFrmNFact_normal1.cxButton33Click(Sender: TObject);
begin
 calcdescuento;
end;

procedure TFrmNFact_normal1.cxButton35Click(Sender: TObject);
begin
if FrmCotiza = nil then
  begin
      FrmCotiza := tFrmCotiza.create(self);
      FrmCotiza.showmodal;
  end;

end;

procedure TFrmNFact_normal1.cxButton36Click(Sender: TObject);
begin
panel13.Visible := true;
memo2.Clear;
memo2.Top:=0;
memo2.Text := 'ARTICULOS VARIOS';
Tecnicos.Close;
Tecnicos.Open;
label38.Caption := 'No Hay Instalador Asignado';

end;

procedure TFrmNFact_normal1.cxButton37Click(Sender: TObject);
begin

if FrmGet_CXC =nil then
  begin
     FrmGet_CXC := tFrmGet_CXC.create(self);
     FrmGet_CXC.showmodal;
end;
end;

procedure TFrmNFact_normal1.cxButton38Click(Sender: TObject);
begin
if FrmConsultasFxPagar = nil then
  begin
    FrmConsultasFxPagar := tFrmConsultasFxPagar.Create(self);
    FrmConsultasFxPagar.codigo2 := IbqClientesCODIGO.Value;
   FrmConsultasFxPagar.showmodal;
  end;


end;

procedure TFrmNFact_normal1.cxButton39Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'Calc.exe', nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmNFact_normal1.xxxxxxClick(Sender: TObject);
begin
if frmDGII = nil then
  begin
    frmDGII := tfrmDGII.Create(self);
    frmDGII.ShowModal;
  end;

end;

procedure TFrmNFact_normal1.BtnConduceClick(Sender: TObject);
begin
if FrmConsultaConduce = nil then
  begin
     FrmConsultaConduce := tFrmConsultaConduce.create(self);
     FrmConsultaConduce.showmodal;
  end;

end;

procedure TFrmNFact_normal1.b3Click(Sender: TObject);
begin

if (IbqClientesCODIGO.Value = 1) and (datos.fbqmaster_factTipo.Value ='CREDITO') then
  begin
      Showmessage(' Cliente no esta Autorizado para el Crédito ');
  end else begin

  if cxDBComboBox1.Text ='CREDITO' then
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

      if datos.FbqMaster_FactMONTOPAGO.Value <= QBalanceCreditoClienteBALANCE.Value then
        begin
           cobrando;
           panel7.Enabled := false;
            PanelLTOP.Enabled := false;
        end else begin
                    Showmessage(' El monto de esta factura aumenta el Limete de credito asignado ');
                 end;
    end;

   if  cxDBComboBox1.Text ='Contado' then
    begin

        cobrando;
        panel7.Enabled := false;
        PanelLTOP.Enabled := false;
    end;
end;
end;

procedure TFrmNFact_normal1.cxButton40Click(Sender: TObject);
var
cero : string;
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin

opmaster.Enabled := true;

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;


datos.FbqMaster_Fact.Open;

zqusuario.Open;

ibqclientes.Open;

  FrmNFact_normal1.panel7.Enabled := true;
     FrmNFact_normal1.PanelLTOP.Enabled := true;
 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := numerogen_id.Value;
 datos.FbqMaster_FactNC.Value := 1;


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
     edit5.Text := datos.FbqMaster_FactNO_FACT1.Value;
    // RxDBComboBox1.ItemIndex := 0;
    // FrmNFact.RxDBComboBox2.ItemIndex := 1;
     cxDBComboBox1.ItemIndex := 1;

   //  RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := true;
     cxDBComboBox1.Enabled := true;
     edit12.Clear;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;

     with ibqclientes do
        begin
          close;
          sql.Clear;
          sql.Add('select a.* from cliente a');
           sql.Add('where a.codigo = 1');
          open;
        end;


        datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
        datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
        datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
        datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
        datos.FbqMaster_FactCAJAID.Value            := datos.ZUconfiguracionCAJAID.Value;


     with zqusuario do
       begin
         close;
         sql.Clear;
         sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
         sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
         sql.Add('where a.usuarioId =:pp');
         params[0].Value := asignausuario;
         opeN;
       end;


     datos.FbqMaster_Factusuarioid.Value := asignausuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value  := zqusuarionombres_emp.Value;
     datos.FbqMaster_FactCODVEN.Value       := ZqusuarioEMPLEADOID.Value;
     datos.FbqMaster_FactNOMBRES_EMP.Value  := ZqusuarioNOMBRES_EMP.Value;
     datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;


     if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Ninguno' then
       begin
          cxDBComboBox2.ItemIndex := 0;
       end;

     if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Cons. Final' then
       begin
          cxDBComboBox2.ItemIndex := 1;
       end;

       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Fiscal' then
       begin
          cxDBComboBox2.ItemIndex := 2;
       end;

       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Gubernamental' then
       begin
          cxDBComboBox2.ItemIndex := 3;
       end;



    opdetalle.Enabled := true;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
          begin
            barra.SetFocus;
          end else begin
            barra1.SetFocus;

          end;

     b1.Enabled := false;
     b2.Enabled := true;
     b2.Caption := 'Cancelar Factura';

      if datos.ZqUsuariosIDSESSION.Value = 1 then
          begin
            b3.Enabled := false;
            b4.Enabled := true;
            cxButton11.Enabled := true;
             cxButton37.Enabled := false;
          end;

      if datos.ZqUsuariosIDSESSION.Value = 3 then
          begin
            b3.Enabled := true;
            b4.Enabled := true;
            cxButton11.Enabled := true;
             cxButton37.Enabled := TRUE;
          end;

            if datos.ZqUsuariosIDSESSION.Value = 2 then
          begin
            b3.Enabled := true;
            b4.Enabled := true;
            cxButton11.Enabled := true;
             cxButton37.Enabled := TRUE;
          end;

     cxButton4.Enabled := false;
     cxButton5.Enabled := false;
     cxButton14.Enabled := true;
     BTPedido.Enabled := true;
     b6.Enabled := true;
     Edit3.Text := 'NUEVO';
     opmaster.Enabled := true;
     opdetalle.Enabled := true;
     BtBorrar.Enabled := true;
     b6.Enabled := true;
     cxButton12.Enabled := true;
     cxButton13.Enabled := true;


     BtnPrintConduce.Enabled := true;


      with datos.Zdetalle do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.articulo, c.unidad, b.itbis from detailfact a');
          sql.Add('left join mtartuculos b On a.cod_art = b.codigotxt');
          Sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
          sql.Add('where a.no_fact =  0');
          open;
       end;


     cerrar.Enabled := false;


 with detallefacturas do
         begin
            close;
            sql.Clear;
            sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
            sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
            sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
            sql.Add('where a.masterid =:ppp');
            params[0].Value := facturasIMPRESASNO_FACT.Value;
            open;
     end;

     with detallefacturas do
      begin
         first;
        while not eof do begin

            Adddetalle;
            next;
        end;
   end;

  datos.zdetalle.First;

                    while not datos.zdetalle.Eof do
                     begin
                        suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        datos.zdetalle.Edit;
                        datos.zdetalletotal.Value := datos.zdetalletotal.Value;
                        datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;


                         datos.zdetalle.Next;

               end;


            datos.FbqMaster_Fact.Edit;
            datos.FbqMaster_Factdescuento.Value := 0.00;
            datos.FbqMaster_FactPOGXITBS.Value := itbs;

               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;






calcular.Enabled := false;
t1.clear;
t2.Clear;
t3.Clear;
t4.Clear;
ancho.Clear;
edit9.Clear;
alto.Clear;
edit8.Clear;
Topcion.Clear;
cxButton9.Enabled := false;
NCnumero.Clear;

tecnico :=0;
cxGrid2.Visible := false;
        impresas.Visible := false;
        detallefacturas.Close;

end;




procedure TFrmNFact_normal1.cxButton41Click(Sender: TObject);
begin
	if FAutorizacion.ShowModal = mrOk then
           begin
             CostoMSN.Visible := true;
           end;
end;

procedure TFrmNFact_normal1.cxButton4Click(Sender: TObject);
begin
with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
       sql.Add('and a.fecha_fac >=:fechas');

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';

        if OpCuando.ItemIndex = 0 then
           begin
                params[3].Value := now();
           end else begin
                      params[3].Value := now()-1;
                    end;
        open;
    end;


    impresas.Visible := true;

    cxTextEdit2.SetFocus;

    cxButton6.Enabled := FALSE;
    cxButton7.Enabled := FALSE;
    cxButton5.Enabled := true;
    cxButton9.Enabled := FALSE;
 //   cxButton1.Enabled := true;
    cxButton4.Enabled := true;


//frmFact.facturasEmitidas.Close;
//frmFact.facturasEmitidas.open;
//CLOSE;

end;

procedure TFrmNFact_normal1.cxButton3Click(Sender: TObject);
var
suma, itbs : currency;
begin
//datos.Zdetalle.Refresh;
datos.zdetalle.First;

    while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

end;


datos.FbqMaster_Fact.Edit;

datos.FbqMaster_FactDESCUENTO.Value :=  datos.FbqMaster_FactMONTOPAGO.Value * (desc.Value/100);

datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

 {
datos.FbqMaster_Fact.Edit;
datos.FbqMaster_FactDESCUENTO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] * (desc.Value / 100);
datos.FbqMaster_FactPOGXITBS.Value := 0.00;
datos.FbqMaster_FactMONTO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
datos.FbqMaster_FactMONTOPAGO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] - datos.FbqMaster_Factdescuento.Value;
      }

//datos.FbqMaster_FactMONTO.Value     := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
//datos.FbqMaster_FactPOGXITBS.Value  := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
//datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value + datos.FbqMaster_FactPOGXITBS.Value) - datos.FbqMaster_Factdescuento.Value;

desc.Clear;
cxTextEdit1.Clear;
 cxButton3.Enabled := false;
paneldesc.Visible := false;


end;

procedure TFrmNFact_normal1.cxButton6Click(Sender: TObject);
var
cant : double;
ancho1 : double;
alto1 : double;
begin
ancho1 := StrToFloat(ancho.Text);
alto1  := StrToFloat(alto.Text);
cant := rounded(((ancho1 * alto1) /144)* StrToInt(edit6.Text),2);
t3.Text := FloatToStr(cant);
edit6.Clear;
panel1.Visible := false;

end;

procedure TFrmNFact_normal1.cxButton6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    t4.SetFocus;
  end;
end;

procedure TFrmNFact_normal1.cxButton7Click(Sender: TObject);
var
cero1 : string;
nume : integer;
begin
{if cxDBTextEdit4.Text = '' then
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

 end;  }

end;

procedure TFrmNFact_normal1.cxButton8Click(Sender: TObject);
begin
medico.Open;
cxgrid7.Visible := true;
cxgrid7.SetFocus;
end;

procedure TFrmNFact_normal1.BTArticulosClick(Sender: TObject);
begin
 if b1.Enabled = FALSE then begin


         PageArticulos.ActivePageIndex := 0;
     if datos.zuconfiguracionUSARRMA.Value = 1 then
         begin
            with qrma do
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
            PageArticulos.Pages[1].tabVisible := true;
         end else if datos.zuconfiguracionUSARRMA.Value = 2 then begin

            PageArticulos.Pages[1].tabVisible := false;
         end;

BuscarArticulos.Visible := true;
edit19.SetFocus;

//datos.FbCategorias.open;

 with ibqrarticulos do
 begin
    close;
    sql.Clear;
    sql.Add('select FIRST 15 a.unidad,a.costo_pr, a.comision,a.referencia, a.ubicacion, a.beneficios,a.precio_a, a.precio_b, a.precio_d, a.codigobarra, a.obs,');
    sql.add('a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.TIENECOMPACTIBILIDAD,');
    sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
    sql.Add('group by a.unidad,a.precio_a, a.comision,a.precio_b, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,');
    sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3,  a.referencia,a.ubicacion, a.obs');
    open;
    end;



   end;
end;

procedure TFrmNFact_normal1.BTborrarClick(Sender: TObject);
var
suma, itbs, descc : currency;
begin


if datos.ZdetalleTOTAL.Value < 0.00 then begin

 with updateNC do
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


  datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            descc := (descc + datos.zdetalle.FieldByName('ancho').Value);
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
            datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;



   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
datos.fbqmaster_factdescuento.Value := descc;
if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

     if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                end else begin
                            barra1.clear;
                         end;


end;

procedure TFrmNFact_normal1.BtBuscarPedidoClick(Sender: TObject);
begin
FrmBuscarPedido.showmodal;
end;

procedure TFrmNFact_normal1.BTNotaCClick(Sender: TObject);
begin

//FrmConsultaNotaC.showmodal;


with FrmNotaCF.mc do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, c.nombres_emp, d.nombres from mnoc a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
    sql.Add('left join cliente d On a.clienteid = d.codigo');
    sql.Add('where a.AFECTA_INV = 1');
    sql.Add('and a.clienteid =:opp');
    Params[0].Value := IbqClientesCODIGO.Value;
    open;
  end;

 if FrmNotaCF = nil then
 begin
       FrmNotaCF := tFrmNotaCF.create(self);
       FrmNotaCF.showmodal;
 end;



end;

procedure TFrmNFact_normal1.BTpedidoClick(Sender: TObject);
begin

//no_factpedido := 0;
//no_factpedido := datos.FbqMaster_FactNO_FACT.Value;
//panel12.Visible := true;
//QRUTA.Open;
end;

procedure TFrmNFact_normal1.BTSerialClick(Sender: TObject);
begin

if FrmSeries = nil  then
begin

 FrmSeries := tFrmSeries.create(self);
FrmSeries.Edit1.Text := DATOS.ZdetalleARTICULOID.Text;
FrmSeries.Edit2.Text := Datos.ZdetalleTITULOPRN.Value;
frmSeries.Edit3.Text := datos.Zdetallemasterid.text;
FrmSeries.showmodal;
 end;
datos.Series.Open;

end;

procedure TFrmNFact_normal1.BTTecnicoClick(Sender: TObject);
begin
panel13.Height := 276;
tecnicos.Open;
end;

procedure TFrmNFact_normal1.Button4Click(Sender: TObject);
var
suma, itbs : currency;
begin

  if cxDBCalcEdit3.Text <> '' then
    begin
  datos.Zdetalle.Edit;
   if datos.ZdetalleITBS_ART.Value = 'S' then
      begin

        //PRECIO_C :=0.00;
        //PRECIO_C := (datos.ZdetalleITBS.Value  + DATOS.ZdetallePRECIO.Value) / datos.ZdetalleCANTIDAD.Value;
       // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
       // datos.ZdetalleITBS_ART.Value := 'S';
       // datos.ZdetalleEX.Value := '';

         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
             datos.ZdetallePRECIO.Value :=qpreciosprecio_d.Value;
             datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
              datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * qprecioscosto.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.ZdetallePRECIO.Value :=qprecioscosto.Value * datos.ZdetalleCANTIDAD.Value;
              datos.ZdetalleITBS.Value  := datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
              datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin


             datos.ZdetallePRECIO.Value :=  qprecioscosto.Value;
             datos.ZdetalleITBS.Value   := (qprecioscosto.Value  * datos.ZdetalleCANTIDAD.Value) * (strtofloat(edit14.Text)/100);
             datos.ZdetalleTOTAL.Value  := (qpreciosprecio_a.Value  * datos.ZdetalleCANTIDAD.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;


      end else begin

        // datos.Zdetallecantidad.Value := strtofloat(t3.Text);
         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
         datos.ZdetallePRECIO.Value    := qprecioscosto.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

panelprecios.Visible := false;
barra.SetFocus;

end;
panelprecios.Visible := false;
barra.SetFocus;



end;

procedure TFrmNFact_normal1.fraccional;
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin

IF (T4.Value < fraccionadoprecio1.Value) OR (T4.Value > fraccionadoprecio2.Value)  then
  BEGIN
      ShowMEssage('** No esta autorizado para este PRECIO **');
      t4.SetFocus;
  END ELSE BEGIN


with ibqigual do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo, c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   sql.Add('and a.cod_art =:ppp2');
   sql.Add('and a.precio =:ppp3');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   params[1].Value := t1.Text;
   params[2].Value := t4.Value;
   open;
 end;

 if ibqigual.RecordCount = 1 then
    begin

       datos.Zdetalle.locate('masterid;cod_art',varArrayof([datos.FbqMaster_FactNO_FACT.Value,t1.Text]),[]);
       datos.Zdetalle.Edit;

      if ChkPrecio.Checked = false then
         begin
             datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + StrToFloat(t3.Text);
         end else if chkprecio.Checked = true then
                   begin
                      datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + Redondear_A((StrToFloat(t3.Text) / t4.Value),2);
                   end;


if edit8.Text ='Si' then
      begin

         datos.ZdetalleITBS_ART.Value := 'S';
         datos.ZdetalleEX.Value := '';

         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
             datos.ZdetallePRECIO.Value :=(t4.Value);
             datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
              datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
             datos.ZdetallePRECIO.Value :=(t4.Value);
             datos.ZdetalleITBS.Value  := datos.ZdetallePRECIO.Value * (strtofloat(edit14.Text)/100);
             datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * t4.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
             datos.ZdetallePRECIO.Value :=(t4.Value)-(t4.Value*(strtofloat(edit14.Text)/100));
             datos.ZdetalleITBS.Value  := t4.Value * (strtofloat(edit14.Text)/100);
             datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

      end else begin

        datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
         datos.ZdetallePRECIO.Value    := t4.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
//       datos.zdetalle.First;

       //  SHOWMESSAGE('NO EXPRESS');


    while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;

datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := 0.00;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
datos.FbqMaster_FactMONTO.Value := suma;

if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
end else begin
    datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
end;



        t1.clear;
        //t2.Clear;
        t3.Clear;
        t4.Clear;
        ancho.Clear;
        edit9.Clear;
        alto.Clear;
        edit8.Clear;
        Topcion.Clear;
        cxButton9.Enabled := false;
        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
            begin
              barra.SetFocus;
            end else begin
              cxButton10.SetFocus;
            end;
        calcular.Enabled := false;


 end else begin
//****
with numero_detalle do
  begin
    close;
    sql.Clear;
    sql.Add('select max(no_fact) from detailfact');
    open;
  end;


datos.Zdetalle.Insert;
datos.ZdetalleNO_FACT.Value := numero_detallemax.Value + 1;
datos.ZdetalleCANTIDAD.Value := StrToFloat(t3.Text);
datos.ZdetalleANCHO.Value :=  datos.ZdetalleCANTIDAD.Value;
stexto := t1.Text;
datos.ZdetalleUNID.Value := lunidad.Text;

//datos.ZdetalleUNIDADID.Value := StrToInt(edit9.Text);


    datos.ZdetalleITBS.Value      := 0.00;
    datos.ZdetalleCOD_ART.Value   := t1.Text;
    datos.ZdetalleBARRA.Value     := barra.Text;
    datos.ZdetalleCOMBO.Value     := Topcion.Text;
    //datos.ZdetalleARTICULO.Value  := t2.Text;
    datos.ZdetalleARTICULO.Value  := t2.Text;
    datos.ZdetalleTITULOPRN.Value := t2.Text;



if LINEA.Text = 'MOD' then
  BEGIN
     datos.Zdetallecod_art.Value := T1.Text;
    datos.ZdetalleARTICULOID.value :=StrToINt(t1.Text);
    LINEA.Clear;
  END ELSE BEGIN

    datos.Zdetallecod_art.Value := T1.Text;
    datos.ZdetalleARTICULOID.value :=StrToINt(t1.Text);
    LINEA.Clear;


{if tOPCION.Text = 'COM' then BEGIN
  datos.Zdetallecod_art.Value := T1.Text;
  datos.ZdetalleARTICULOID.value :=StrToInt(COPY(stexto,2,5));
  LINEA.Clear;
END;}

end;
    if edit8.Text ='Si' then
      begin
         datos.ZdetalleITBS_ART.Value := 'S';
         datos.ZdetalleEX.Value := '';

         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
             datos.ZdetallePRECIO.Value :=(t4.Value);
             datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
              datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
             datos.ZdetallePRECIO.Value :=(t4.Value);
             datos.ZdetalleITBS.Value  := datos.ZdetallePRECIO.Value * (strtofloat(edit14.Text)/100);
             datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * t4.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
             datos.ZdetallePRECIO.Value :=(t4.Value)-(t4.Value*(strtofloat(edit14.Text)/100));
             datos.ZdetalleITBS.Value  := t4.Value * (strtofloat(edit14.Text)/100);
             datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

      end else begin
         datos.ZdetalleITBS_ART.Value  := 'N';
         datos.ZdetalleEX.Value        := 'E';
         datos.ZdetallePRECIO.Value    := t4.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value     := datos.ZdetalleCANTIDAD.Value * t4.Value;
      end;



//datos.Zdetalle.Refresh;
datos.zdetalle.First;

       //  SHOWMESSAGE('NO EXPRESS');


    while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;
   end;




datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
datos.FbqMaster_FactMONTO.Value := suma;

if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
end else begin
    datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
end;


t1.clear;
t2.Clear;
t3.Clear;
t4.Clear;
ancho.Clear;
edit9.Clear;
alto.Clear;
edit8.Clear;
Topcion.Clear;
cxButton9.Enabled := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
      barra.SetFocus;
  end else begin
      cxButton10.SetFocus;
  end;
calcular.Enabled := false;

 end;
  END;



end;
  procedure TFrmNFact_normal1.imprimeconduce;
 var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE, EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL : string;

      begin

fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

//VerificaCampos(Sender);

//Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

//Se nenhum campo está em branco, grava o cupom
//GravaCupons(Sender);




          if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
      begin
         try
             IniFile := ChangeFileExt(Application.ExeName,'.ini');

             longitud := ReadString_Ini(IniFile,'IMPRESION', 'longitud','');
             campoL := ReadString_Ini(IniFile,'IMPRESION', 'campoL','');
             campoC1 := ReadString_Ini(IniFile,'IMPRESION', 'campoC1','');
             campoC2 := ReadString_Ini(IniFile,'IMPRESION', 'campoC2','');
             campoD := ReadString_Ini(IniFile,'IMPRESION', 'campoD','');
             campoF := ReadString_Ini(IniFile,'IMPRESION', 'campoF','');



             EX       := ReadString_Ini(IniFile,'IMPRESION', 'ex','');
             espacioA := ReadString_Ini(IniFile,'IMPRESION', 'espacioA','');
             Pitbis   := ReadString_Ini(IniFile,'IMPRESION', 'pitbis','');
             pprecio  := ReadString_Ini(IniFile,'IMPRESION', 'pprecio','');
             ptotal   := ReadString_Ini(IniFile,'IMPRESION', 'ptotal','');


             DcampoL := ReadString_Ini(IniFile,'IMPRESION', 'DcampoL','');
             DcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC1','');
             DcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC2','');
             DcampoD := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD','');
             DcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD2','');
             DcampoF := ReadString_Ini(IniFile,'IMPRESION', 'DcampoF','');
             PcampoL := ReadString_Ini(IniFile,'IMPRESION', 'PcampoL','');
             PcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC1','');
             PcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC2','');
             PcampoD := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD','');
             PcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD2','');
             PcampoF := ReadString_Ini(IniFile,'IMPRESION', 'PcampoF','');
             INICIARPRINT := ReadString_Ini(IniFile,'IMPRESION', 'INICIARPRINT','');
             TEXTCORTE := ReadString_Ini(IniFile,'IMPRESION', 'TEXTCORTE','');
             TPcampoL  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoL','');
             TPcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoC1','');
             TPcampoF  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoF','');

             SIZEFONT := ReadString_Ini(IniFile,'IMPRESION', 'SIZEFONT','');
             FONTBOLD := ReadString_Ini(IniFile,'IMPRESION', 'FONTBOLD','');
             FONTNORMAL  := ReadString_Ini(IniFile,'IMPRESION', 'FONTNORMAL','');


         except
             on E: Exception do
      	    begin
               MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13+
      	               '**** '+E.Message+'****'#13+
                        'Esto provoca que no se pueda iniciar,'+
                        'Si el problema persiste, llamar al soporte');
               Application.Terminate;
             end;
         end;
       end
    else begin
      MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13+
               #9'La aplicacion cargara la base de datos local');
end;


//longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);

//      WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
 //     WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('CONDUCE',StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE').asstring),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('NCF:'+DATOS.FBQMASTER_FACT.FieldByName('NCF').AsString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('VENTA DE CONTADO'),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Fact: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));

      if DATOS.FbqMaster_FactRNC_CLIENTE.Value <>'' then  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RNC CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('RNC_CLIENTE').Value),StrToInt(longitud),0));
      end;

      if DATOS.FbqMaster_Factdireccion.Value <>'' then  begin
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('DIRECCION  :'+DATOS.FbqMaster_Fact.FieldByName('DIRECCION').Value),StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CANT',StrToInt(campoL),0)+espacios('PRODUCTO',StrToInt(campoC1),0)+espacios('ITBIS',StrToInt(campoC2),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('TOTAL',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));

    with DATOS.ZDETALLE do
      begin
          First;
          while not Eof do
          begin

           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('TITULOPRN').AsString),0,36),StrToInt(longitud),0));

//            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
//                                                                                   +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
  //                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

            if datos.ZdetalleCANTIDAD.Value > 1.00 then begin

            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));

            end else begin

//             if datos.ZdetalleTOTAL.value > 9999.00 then
//               begin
//                  ShowMessage('');

               WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));


            END;

           Next;
          end;
      end;



     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));

      if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(TpcampoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
          if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('descuento').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tpcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));



        if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

        if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('BONOS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('BONOS').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));


       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,StrToInt(longitud)));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_Factcajero.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

with printer do
begin

        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
        BeginDoc;
        Canvas.Brush.Style := bsClear;
        for i := 0 to Memo1.Lines.Count do
          Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
        Memo1.Lines.Strings[i]);
        Canvas.Brush.Color := clBlack;

        EndDoc;
end;

WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,TEXTCORTE);


end;

procedure TFrmNFact_normal1.ImprimeCopia;
 var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE, EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL : string;

      begin

fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

//VerificaCampos(Sender);

//Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

//Se nenhum campo está em branco, grava o cupom
//GravaCupons(Sender);




          if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
      begin
         try
             IniFile := ChangeFileExt(Application.ExeName,'.ini');

             longitud := ReadString_Ini(IniFile,'IMPRESION', 'longitud','');
             campoL := ReadString_Ini(IniFile,'IMPRESION', 'campoL','');
             campoC1 := ReadString_Ini(IniFile,'IMPRESION', 'campoC1','');
             campoC2 := ReadString_Ini(IniFile,'IMPRESION', 'campoC2','');
             campoD := ReadString_Ini(IniFile,'IMPRESION', 'campoD','');
             campoF := ReadString_Ini(IniFile,'IMPRESION', 'campoF','');



             EX       := ReadString_Ini(IniFile,'IMPRESION', 'ex','');
             espacioA := ReadString_Ini(IniFile,'IMPRESION', 'espacioA','');
             Pitbis   := ReadString_Ini(IniFile,'IMPRESION', 'pitbis','');
             pprecio  := ReadString_Ini(IniFile,'IMPRESION', 'pprecio','');
             ptotal   := ReadString_Ini(IniFile,'IMPRESION', 'ptotal','');


             DcampoL := ReadString_Ini(IniFile,'IMPRESION', 'DcampoL','');
             DcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC1','');
             DcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC2','');
             DcampoD := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD','');
             DcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD2','');
             DcampoF := ReadString_Ini(IniFile,'IMPRESION', 'DcampoF','');
             PcampoL := ReadString_Ini(IniFile,'IMPRESION', 'PcampoL','');
             PcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC1','');
             PcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC2','');
             PcampoD := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD','');
             PcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD2','');
             PcampoF := ReadString_Ini(IniFile,'IMPRESION', 'PcampoF','');
             INICIARPRINT := ReadString_Ini(IniFile,'IMPRESION', 'INICIARPRINT','');
             TEXTCORTE := ReadString_Ini(IniFile,'IMPRESION', 'TEXTCORTE','');
             TPcampoL  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoL','');
             TPcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoC1','');
             TPcampoF  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoF','');

             SIZEFONT := ReadString_Ini(IniFile,'IMPRESION', 'SIZEFONT','');
             FONTBOLD := ReadString_Ini(IniFile,'IMPRESION', 'FONTBOLD','');
             FONTNORMAL  := ReadString_Ini(IniFile,'IMPRESION', 'FONTNORMAL','');


         except
             on E: Exception do
      	    begin
               MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13+
      	               '**** '+E.Message+'****'#13+
                        'Esto provoca que no se pueda iniciar,'+
                        'Si el problema persiste, llamar al soporte');
               Application.Terminate;
             end;
         end;
       end
    else begin
      MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13+
               #9'La aplicacion cargara la base de datos local');
end;


//longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);

//      WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
 //     WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('FACTURA',StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE').asstring),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('NCF:'+DATOS.FBQMASTER_FACT.FieldByName('NCF').AsString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('VENTA DE CONTADO (C O P I A)'),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Fact: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));

      if DATOS.FbqMaster_FactRNC_CLIENTE.Value <>'' then  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RNC CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('RNC_CLIENTE').Value),StrToInt(longitud),0));
      end;

      if DATOS.FbqMaster_Factdireccion.Value <>'' then  begin
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('DIRECCION  :'+DATOS.FbqMaster_Fact.FieldByName('DIRECCION').Value),StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CANT',StrToInt(campoL),0)+espacios('PRODUCTO',StrToInt(campoC1),0)+espacios('ITBIS',StrToInt(campoC2),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('TOTAL',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));

    with DATOS.ZDETALLE do
      begin
          First;
          while not Eof do
          begin

           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),0,36),StrToInt(longitud),0));

//            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
//                                                                                   +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
  //                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

            if datos.ZdetalleCANTIDAD.Value > 1.00 then begin

            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));

            end else begin

//             if datos.ZdetalleTOTAL.value > 9999.00 then
//               begin
//                  ShowMessage('');

               WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));


            END;

           Next;
          end;
      end;



     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));

      if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(TpcampoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
          if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('descuento').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tpcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));



        if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

        if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('BONOS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('BONOS').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));


       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,StrToInt(longitud)));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_FactNOMBRES_EMP.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

with printer do
begin

        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
        BeginDoc;
        Canvas.Brush.Style := bsClear;
        for i := 0 to Memo1.Lines.Count do
          Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
        Memo1.Lines.Strings[i]);
        Canvas.Brush.Color := clBlack;

        EndDoc;
end;

WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,TEXTCORTE);


end;

procedure TFrmNFact_normal1.ImprimeCotiza;
 var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE, EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL : string;

      begin

fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

//VerificaCampos(Sender);

//Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

//Se nenhum campo está em branco, grava o cupom
//GravaCupons(Sender);




          if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
      begin
         try
             IniFile := ChangeFileExt(Application.ExeName,'.ini');

             longitud := ReadString_Ini(IniFile,'IMPRESION', 'longitud','');
             campoL := ReadString_Ini(IniFile,'IMPRESION', 'campoL','');
             campoC1 := ReadString_Ini(IniFile,'IMPRESION', 'campoC1','');
             campoC2 := ReadString_Ini(IniFile,'IMPRESION', 'campoC2','');
             campoD := ReadString_Ini(IniFile,'IMPRESION', 'campoD','');
             campoF := ReadString_Ini(IniFile,'IMPRESION', 'campoF','');



             EX       := ReadString_Ini(IniFile,'IMPRESION', 'ex','');
             espacioA := ReadString_Ini(IniFile,'IMPRESION', 'espacioA','');
             Pitbis   := ReadString_Ini(IniFile,'IMPRESION', 'pitbis','');
             pprecio  := ReadString_Ini(IniFile,'IMPRESION', 'pprecio','');
             ptotal   := ReadString_Ini(IniFile,'IMPRESION', 'ptotal','');


             DcampoL := ReadString_Ini(IniFile,'IMPRESION', 'DcampoL','');
             DcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC1','');
             DcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC2','');
             DcampoD := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD','');
             DcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD2','');
             DcampoF := ReadString_Ini(IniFile,'IMPRESION', 'DcampoF','');
             PcampoL := ReadString_Ini(IniFile,'IMPRESION', 'PcampoL','');
             PcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC1','');
             PcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC2','');
             PcampoD := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD','');
             PcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD2','');
             PcampoF := ReadString_Ini(IniFile,'IMPRESION', 'PcampoF','');
             INICIARPRINT := ReadString_Ini(IniFile,'IMPRESION', 'INICIARPRINT','');
             TEXTCORTE := ReadString_Ini(IniFile,'IMPRESION', 'TEXTCORTE','');
             TPcampoL  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoL','');
             TPcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoC1','');
             TPcampoF  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoF','');

             SIZEFONT := ReadString_Ini(IniFile,'IMPRESION', 'SIZEFONT','');
             FONTBOLD := ReadString_Ini(IniFile,'IMPRESION', 'FONTBOLD','');
             FONTNORMAL  := ReadString_Ini(IniFile,'IMPRESION', 'FONTNORMAL','');


         except
             on E: Exception do
      	    begin
               MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13+
      	               '**** '+E.Message+'****'#13+
                        'Esto provoca que no se pueda iniciar,'+
                        'Si el problema persiste, llamar al soporte');
               Application.Terminate;
             end;
         end;
       end
    else begin
      MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13+
               #9'La aplicacion cargara la base de datos local');
end;


//longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);

//      WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
 //     WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('COTIZACION',StrToInt(longitud)));
         //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('VENTA DE CONTADO (C O P I A)'),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Coti.: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));

      if DATOS.FbqMaster_FactRNC_CLIENTE.Value <>'' then  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RNC CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('RNC_CLIENTE').Value),StrToInt(longitud),0));
      end;

      if DATOS.FbqMaster_Factdireccion.Value <>'' then  begin
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('DIRECCION  :'+DATOS.FbqMaster_Fact.FieldByName('DIRECCION').Value),StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CANT',StrToInt(campoL),0)+espacios('PRODUCTO',StrToInt(campoC1),0)+espacios('ITBIS',StrToInt(campoC2),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('TOTAL',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));

    with DATOS.ZDETALLE do
      begin
          First;
          while not Eof do
          begin

           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),0,36),StrToInt(longitud),0));

//            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
//                                                                                   +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
  //                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

            if datos.ZdetalleCANTIDAD.Value > 1.00 then begin

            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));

            end else begin

//             if datos.ZdetalleTOTAL.value > 9999.00 then
//               begin
//                  ShowMessage('');

               WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));


            END;

           Next;
          end;
      end;



     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));

      if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(TpcampoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));

        if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));



        if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

     

       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,StrToInt(longitud)));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_FactNOMBRES_EMP.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

with printer do
begin

        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
        BeginDoc;
        Canvas.Brush.Style := bsClear;
        for i := 0 to Memo1.Lines.Count do
          Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
        Memo1.Lines.Strings[i]);
        Canvas.Brush.Color := clBlack;

        EndDoc;
end;

WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,TEXTCORTE);


end;


procedure TFrmNFact_normal1.nofraccional_varios;
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin


IF (precio_varios.Value <  0.00) THEN//ibqrARticulosprecio_d.Value) OR (T4.Value > ibqrARticulosprecio_A.Value)  then
  BEGIN
      ShowMEssage('** No esta autorizado para este PRECIO **');
      precio_varios.SetFocus;
  END ELSE BEGIN


//datos.Zdetalle.Open;

with ibqigual do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo, c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   sql.Add('and a.cod_art =:ppp2');
   sql.Add('and a.precio =:ppp3');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   params[1].Value := cod_varios.Text;
   params[2].Value := precio_varios.text;
   open;
 end;


 if ibqigual.RecordCount = 1 then
    begin

       datos.Zdetalle.locate('masterid;cod_art',varArrayof([datos.FbqMaster_FactNO_FACT.Value,cod_varios.text]),[]);

       datos.Zdetalle.Edit;

        if ChkPrecio.Checked = false then
         begin
             datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + StrToFloat(cantidad_varios.Text);
         end else if chkprecio.Checked = true then
                   begin
                      datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + Redondear_A((StrToFloat(cantidad_varios.Text) / precio_varios.Value),2);
                   end;

if edit8.Text ='Si' then
      begin

         datos.ZdetalleITBS_ART.Value := 'S';
         datos.ZdetalleEX.Value := '';

         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

             datos.ZdetallePRECIO.Value :=(precio_varios.Value);
             datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
              datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * precio_varios.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
             datos.ZdetallePRECIO.Value :=(precio_varios.Value);
             datos.ZdetalleITBS.Value  := datos.ZdetallePRECIO.Value * (strtofloat(edit14.Text)/100);
             datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * precio_varios.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
             datos.ZdetallePRECIO.Value :=(precio_varios.Value )-(precio_varios.Value*(strtofloat(edit14.Text)/100));
             datos.ZdetalleITBS.Value  := precio_varios.Value * (strtofloat(edit14.Text)/100);
             datos.ZdetalleTOTAL.Value := (datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value) + (datos.ZdetalleITBS.Value * datos.ZdetalleCANTIDAD.Value);//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

      end else begin
        datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
         datos.ZdetallePRECIO.Value    := precio_varios.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * precio_varios.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

    while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := 0.00;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
datos.FbqMaster_FactMONTO.Value := suma;

if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
    datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
end else begin
    datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
end;
        t1.clear;
        t2.Clear;
        t3.Clear;
        t4.Clear;
        ancho.Clear;
        edit9.Clear;
        alto.Clear;
        edit8.Clear;
        Topcion.Clear;
        cantidad_varios.Clear;
        precio_varios.Clear;
        cxButton9.Enabled := false;
        panel_varios.Visible := false;

        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
            begin
              barra.SetFocus;
            end else begin
              cxButton10.SetFocus;
            end;
        calcular.Enabled := false;

end else begin


 with numero_detallegen do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
     open;
  end;

 //Showmessage(''+IntTostr(numero_detallegengen_id.Value));

datos.Zdetalle.insert;
datos.ZdetalleNO_FACT.Value := numero_detallegengen_id.Value;


datos.ZdetalleCANTIDAD.Value := StrToFloat(t3.Text);
datos.ZdetalleANCHO.Value :=  datos.ZdetalleCANTIDAD.Value;
stexto := cod_varios.text;
datos.ZdetalleUNID.Value := lunidad.Text;
datos.ZdetalleUNIDADID.Value := StrToInt(edit9.Text);

//if ibqrArticuloscod_cat.Value = 1 then begin
//   if edit12.Text ='' then begin
//    almacenes.Open;
//    cxgrid8.Visible := true;
//    cxgrid8.SetFocus;
//   end else begin
//     datos.ZdetalleIDALMACEN.Value := almacenesid.Value;
//   end;
//end;

// datos.ZdetalleCANTIDAD.Value := StrToFloat(cantidad_varios.Text);
//
//
//    datos.ZdetalleITBS.Value      := 0.00;
//    datos.ZdetalleCOD_ART.Value   := cod_Varios.text;
//
//    datos.ZdetalleCOMBO.Value     := Topcion.Text;
//    datos.ZdetalleARTICULO.Value  := articulo_varios.text;
//    datos.ZdetalleTITULOPRN.Value := articulo_varios.text;
//    datos.ZdetalleBARRA.Value     := barra.Text;

//
//
//if LINEA.Text = 'MOD' then
//  BEGIN
//
//    datos.Zdetallecod_art.Value := cod_varios.text;
//    datos.ZdetalleARTICULOID.value :=StrToINt(cod_varios.text);
//    LINEA.Clear;
//
//  END ELSE BEGIN
//
// datos.Zdetallecod_art.Value    :=  cod_varios.text;
// datos.ZdetalleARTICULOID.value :=  StrToINt(cod_varios.Text);
// LINEA.Clear;
//
//
//{if tOPCION.Text = 'COM' then BEGIN
//  datos.Zdetallecod_art.Value := T1.Text;
//  datos.ZdetalleARTICULOID.value :=StrToInt(COPY(stexto,2,5));
//  LINEA.Clear;
//END;}
//end;
//
//
//    if edit8.Text ='Si' then
//      begin
//
//         datos.ZdetalleITBS_ART.Value := 'S';
//         datos.ZdetalleEX.Value := '';
//
//
//         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
//           begin
//
//             datos.ZdetallePRECIO.Value :=(precio_varios.Value);
//             datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
//              datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * precio_varios.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//           end;
//
//          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
//           begin
//
//             datos.ZdetallePRECIO.Value :=(precio_varios.Value);
//             datos.ZdetalleITBS.Value   := datos.ZdetallePRECIO.Value * (strtofloat(edit14.Text)/100);
//             datos.ZdetalleTOTAL.Value  := (datos.ZdetalleCANTIDAD.Value * precio_varios.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//           end;
//
//        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
//           begin
//
//
//             datos.ZdetallePRECIO.Value :=(precio_varios.Value * datos.ZdetalleCANTIDAD.Value )-((precio_varios.Value * datos.ZdetalleCANTIDAD.Value)*(strtofloat(edit14.Text)/100));
//             datos.ZdetalleITBS.Value  := (precio_varios.Value * datos.ZdetalleCANTIDAD.Value) * (strtofloat(edit14.Text)/100);
//             datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//           end;
//
//      end else begin
//
//         datos.ZdetalleITBS_ART.Value  := 'N';
//         datos.ZdetalleEX.Value        := 'E';
//         datos.ZdetallePRECIO.Value    := precio_varios.Value;
//         datos.ZdetalleITBS.Value      := 0.00;
//         datos.ZdetalleTOTAL.Value     := datos.ZdetalleCANTIDAD.Value * precio_varios.Value;
//      end;
//
//
//
////datos.Zdetalle.Refresh;
//datos.zdetalle.First;
//
//    while not datos.zdetalle.Eof do
//         begin
//            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
//            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
//            datos.zdetalle.Edit;
//            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
//            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
//
//        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
//        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
//         datos.zdetalle.Next;
//
//   end;
//
//
//datos.FbqMaster_Fact.Edit;
//datos.FbqMaster_Factdescuento.Value := 0.00;
//datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
//
//if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
//           begin
//               datos.FbqMaster_FactMONTO.Value := suma;
//
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
//               end else begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
//               end;
//
//           end;
//
//if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
//           begin
//               datos.FbqMaster_FactMONTO.Value := suma - itbs;
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
//                  end else begin
//                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
//                  end;
//
//           end;
//
//if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
//           begin
//               datos.FbqMaster_FactMONTO.Value := suma - itbs;
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
//                  end else begin
//                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
//                  end;
//
//           end;
//




t1.clear;
t2.Clear;
t3.Clear;
t4.Clear;
ancho.Clear;
edit9.Clear;
alto.Clear;
edit8.Clear;
Topcion.Clear;
precio_varios.Clear;
cantidad_varios.Clear;
panel_varios.Visible := false;

cxButton9.Enabled := false;

if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
      barra.SetFocus;
  end else begin
      cxButton10.SetFocus;
  end;
calcular.Enabled := false;
end;
END;
end;




procedure TFrmNFact_normal1.OpCuandoClick(Sender: TObject);
begin

  if OpCuando.ItemIndex = 0 then
     begin

          with facturasIMPRESAS do
    begin
//        Close;
//        sql.Clear;
//        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
//        sql.Add('left join cliente b On a.clienteid = b.codigo');
//        sql.Add('left join musuario c On a.codven = c.usuarioid');
//        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
//        sql.Add('where a.situacion  =:opcion2');
//        sql.Add('and a.condicion =:OPCION4');
//        sql.Add('AND A.ROTULO =:OPCION5');
//       // sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
//       sql.Add('and a.fecha_fac >=:fechas');
//
//
//        Params[0].Value := 'IMPRESA';
//        Params[1].Value := 'ACTIVA';
//        Params[2].Value := 'FACTURACION';
//
//                params[3].Value := now();
//
//        open;

    end;
     end;


     if OpCuando.ItemIndex = 1 then
       begin
//         with facturasIMPRESAS do
//    begin
//        Close;
//        sql.Clear;
//        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
//        sql.Add('left join cliente b On a.clienteid = b.codigo');
//        sql.Add('left join musuario c On a.codven = c.usuarioid');
//        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
//        sql.Add('where a.situacion  =:opcion2');
//        sql.Add('and a.condicion =:OPCION4');
//        sql.Add('AND A.ROTULO =:OPCION5');
//     //   sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
//
//        Params[0].Value := 'IMPRESA';
//        Params[1].Value := 'ACTIVA';
//        Params[2].Value := 'FACTURACION';
//
//        open;

  //  end;
       end;
end;

procedure TFrmNFact_normal1.optipoClick(Sender: TObject);
begin
if optipo.ItemIndex = 0 then
  begin
    edit19.SetFocus;
  end;
  if optipo.ItemIndex = 1 then
  begin
    edit19.SetFocus;
  end;
  if optipo.ItemIndex = 2 then
  begin
    edit19.SetFocus;
  end;
end;

procedure TFrmNFact_normal1.nofraccional;
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
descc : Currency;
comision: double;
begin

 IF (T4.Value <  0.00) and (EDIT1.TEXT <>'NC001') THEN//ibqrARticulosprecio_d.Value) OR (T4.Value > ibqrARticulosprecio_A.Value)  then
  BEGIN
      ShowMEssage('** No esta autorizado para este PRECIO **');
      t4.SetFocus;
  END ELSE BEGIN

 try
 with numero_detallegen do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
     open;
  end;


datos.Zdetalle.append;
datos.ZdetalleNO_FACT.Value := numero_detallegengen_id.Value;


 if ChkPrecio.Checked = false then
         begin

        datos.ZdetalleCANTIDAD.Value := StrToFloat(t3.Text);
        datos.ZdetalleANCHO.Value := StrToFloat(t3.Text);
        end else if chkprecio.Checked = true then
                   begin
                      datos.ZdetalleCANTIDAD.Value := Redondear_A((StrToFloat(t3.Text) / t4.Value),2);
                   end;


stexto := t1.Text;
datos.ZdetalleUNID.Value := lunidad.Text;

if edit17.Text <>'' then
   begin
        datos.ZdetalleIDTECNICO.Value :=tecnico;
        edit17.Clear;
   end;



    datos.ZdetalleITBS.Value      := 0.00;
    datos.ZdetalleCOMBO.Value     := Topcion.Text;
    datos.ZdetalleTITULOPRN.Value := t2.Text;
    datos.ZdetalleARTICULO.Value  := t2.Text;
    datos.ZdetalleNO_FACT1.Value  := NCnumero.text;


   if LINEA.Text = 'MOD' then
    BEGIN

        datos.Zdetallecod_art.Value := T1.Text;
        datos.ZdetalleARTICULOID.value :=StrToINt(t1.Text);
        LINEA.Clear;

    END;

    if linea.Text = 'ART' THEN BEGIN

       datos.Zdetallecod_art.Value := T1.Text;
       datos.ZdetalleARTICULOID.value :=StrToINt(t1.Text);
   END;

      if linea.Text = 'RMA' THEN BEGIN

       datos.Zdetallecod_art.Value := T1.Text;
       datos.ZdetalleARTICULOID.value :=StrToINt(t1.Text);
       datos.Zdetallebarra.Value := IntToStr(QRMANOORDEN.Value);
   END;





     ///////  *****************************   Inicio Politica FRACCIONAL *********************************
    if ibqrarticulospolitica.Value = 'fraccional' then
               begin
                                      Edit20.Text := IbqRArticulosITBIS.value;

                                               with fraccionado do
                                                    begin
                                                      close;
                                                      sql.Clear;
                                                      sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
                                                      sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
                                                      sql.Add('where a.cod_arti =:pp');
                                                      params[0].Value := ibqrArticuloscod_art.Value;
                                                      open;
                                                    end;


                                                   partigrid.Visible := true;
                                                //   panel2.SetFocus;
                                                   fraccionado.First;
                                                   partigrid.SetFocus;


//

   t1.clear;
t2.Clear;
t3.Clear;
//t4.Clear;
ancho.Clear;
edit9.Clear;
alto.Clear;
edit8.Clear;
Topcion.Clear;
cxButton9.Enabled := false;

 EDIT1.Clear;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin
     if partigrid.Visible = true then
       begin
         partigrid.SetFocus;
       end else begin
      barra.SetFocus;
       end;
  end else begin
      cxButton10.SetFocus;
  end;




calcular.Enabled := false;

end;

  ///////  *****************************   FINPolitica Fraccional *********************************

    ///////  *****************************   Inicio Politica UNITARIO *********************************
//
    if ibqrarticulospolitica.Value = 'Unitario' then begin
//


//           if IbqRArticulosITBIS.Value = 'Si'  then
//               begin
//
//                      datos.ZdetalleITBiS.Value := 'Si';
//                      datos.ZdetalleITBS_ART.Value := 'S';
//                      datos.ZdetalleEX.Value := '';
//
//
//
//                      datos.ZdetallePRECIO.Value   := t4.Value - (t4.Value * (datos.ZUconfiguracionITBIS.Value/100));
//
//
//
//
//                 datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
//                 datos.ZdetalleITBS.Value     := ((t4.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
//                 datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value ;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);
//
//                 if linea.Text ='RMA' then
//                   begin
//
//                     datos.ZdetalleIDALMACEN.Value := datos.ZUconfiguracionALMACENRMA.Value;
//
//                   end;
//                 datos.zdetalle.First;
//
//                    while not datos.zdetalle.Eof do
//                     begin
//                        suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
//                        itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
//                         descc := (descc + datos.zdetalle.FieldByName('ancho').Value);
//                        datos.zdetalle.Edit;
//                        datos.zdetalletotal.Value := datos.zdetalletotal.Value;
//                        datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
//                        datos.ZdetalleANCHO.Value := datos.zdetalleancho.Value;
//
//                     datos.zdetalle.Next;
//
//               end;
//
//
//            datos.FbqMaster_Fact.Edit;
//            datos.FbqMaster_Factdescuento.Value := descc;
//            datos.FbqMaster_FactPOGXITBS.Value := itbs;
//
//               datos.FbqMaster_FactMONTO.Value := suma - itbs;
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
//                  end else begin
//                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
//                  end;
//
//           end;




         //  if IbqRArticulosITBIS.Value = 'No'  then begin

                 datos.ZdetalleITBiS.Value     := 'No';
                 datos.ZdetalleITBS_ART.Value  := 'N';
                 datos.ZdetalleEX.Value        := 'E';

                   if ibqclientescomision.Value >0  then
                    begin

                 comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
                 datos.ZdetallePRECIO.Value := ((ibqrArticuloscosto_pr.Value * ((ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100))/100))) + ibqrArticuloscosto_pr.Value;
                    end else begin

                      datos.ZdetallePRECIO.Value   := t4.Value;

                    end;

                 datos.ZdetalleIDTECNICO.Value := tecnico;
                 datos.ZdetalleIMPUESTO.Value  := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value      := 0.00;
                 datos.ZdetalleTOTAL.Value     := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value ;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);
                 if linea.Text ='RMA' then
                   begin

                     datos.ZdetalleIDALMACEN.Value := datos.ZUconfiguracionALMACENRMA.Value;
                   end;

                 datos.zdetalle.First;

                    while not datos.zdetalle.Eof do
                     begin
                        suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;       .
                        descc := (descc + datos.zdetalle.FieldByName('ancho').Value);
                        datos.zdetalle.Edit;
                        datos.zdetalletotal.Value := datos.zdetalletotal.Value;
                        datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
                        datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;

                     datos.zdetalle.Next;

              end;

            datos.FbqMaster_Fact.Edit;
            datos.FbqMaster_Factdescuento.Value :=descc;
            datos.FbqMaster_FactPOGXITBS.Value := itbs;




            datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;






calcular.Enabled := false;
t1.clear;
t2.Clear;
t3.Clear;
t4.Clear;
ancho.Clear;
edit9.Clear;
alto.Clear;
edit8.Clear;
Topcion.Clear;
cxButton9.Enabled := false;
NCnumero.Clear;
 linea.Clear;
tecnico :=0;





      end;
   ///////  *****************************   Fin Politica UNITARIO *********************************






except




end;





end;


END;






procedure TFrmNFact_normal1.calcdescuento;
var
suma, itbs :currency;
begin

  datos.Zdetalle.Edit;
   if datos.ZdetalleITBS_ART.Value = 'S' then
      begin


//         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
//           begin
//
//             datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value ;
//             datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
//             datos.ZdetalleITBS.Value     := 0.00;
//             datos.ZdetalleTOTAL.Value    := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
//             datos.ZdetalleITBIS2.Value   := qpreciosPRECIO_A.Value;
//
//           end;
//
//          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
//           begin
//
//
//             datos.ZdetallePRECIO.Value   := datos.ZdetallePRECIO.Value  - (qpreciosPRECIO_A.Value * (datos.ZUconfiguracionITBIS.Value/100));
//             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
//             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
//             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//
//            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
//           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin


             datos.ZdetallePRECIO.Value   := datos.ZdetallePRECIO.Value - (datos.ZdetallePRECIO.Value * (datos.ZdetalleDESC.Value/100));
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value     := ((datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
             datos.ZdetalleITBIS2.Value   := datos.ZdetallePRECIO.Value;
end;


      end else begin

         /// showmessage('');
         //datos.Zdetallecantidad.Value := strtofloat(t3.Text);

         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';

         datos.ZdetallePRECIO.Value    := datos.ZdetallePRECIO.Value - (datos.ZdetallePRECIO.Value * (datos.ZdetalleDESC.Value/100));

         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

//if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
//           begin
//               datos.FbqMaster_FactMONTO.Value := suma;
//
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
//               end else begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
//               end;
//
//           end;
//
//if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
//           begin
//               datos.FbqMaster_FactMONTO.Value := suma - itbs;
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
//                  end else begin
//                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
//                  end;
//
//           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;



end;

procedure TFrmNFact_normal1.calcularClick(Sender: TObject);
begin
panel1.Visible := true;
edit6.Text := '1';
edit6.SetFocus;

end;



procedure TFrmNFact_normal1.ç(Sender: TObject);
begin
ibqclientes.Close;
ibqclientes.Open;
OpbuscarEMPLEADO.Visible := true;
edit2.SetFocus;
//edit4.Text := '2';

with qEmpleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where cargo =:oo');
    params[0].Value := 'DESIGN';
    open;
  end;


end;

procedure TFrmNFact_normal1.cerrarClick(Sender: TObject);
begin
datos.FbqMaster_Fact.Close;
datos.Zdetalle.Close;
IbqClientes.Close;
facturasIMPRESAS.Close;

IbqRArticulos.Close;

datos.Data.Rollback;

close;
end;

procedure TFrmNFact_normal1.ChkPrecio1Click(Sender: TObject);
begin
t3.SetFocus;
end;

procedure TFrmNFact_normal1.cxButton9Click(Sender: TObject);
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin

if linea.Text ='COM' then
  BEGIN

            with ibqrARticulos do
                 begin
                   close;
                   sql.Clear;
                   sql.Add('select a.unidad,a.precio_a, a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios');
                   sql.Add('from mtartuculos a');
                   sql.Add('left join minventario b On a.cod_art = b.cod_art');
                   sql.Add('where a.cod_art =:op12');
                   sql.Add('group by a.unidad,a.precio_a, a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo_pr, a.beneficios');
                   params[0].Value := sTRtOiNT(T1.Text);
                   open;
                 end;
              //   showmessage(''+CurrToStr(ibqrARticulosprecio_B.Value));
  END;

if ibqrarticulospolitica.Value <> 'fraccional' then
   begin


        nofraccional;
        chkprecio.Checked := false;
        edit10.Text := '0.00';
        edit11.Text := '0.00';


   end;

if ibqrarticulospolitica.Value = 'fraccional' then
    begin


        nofraccional;
        //fraccional;
        chkprecio.Checked := false;
        edit10.Text := '0.00';
        edit11.Text := '0.00';
    end;


  //*****


end;

procedure TFrmNFact_normal1.ChkPrecioClick(Sender: TObject);
begin
if t3.Enabled = false then
   begin
     t3.SetFocus;
    end;
end;

procedure TFrmNFact_normal1.CHKPropertiesChange(Sender: TObject);
begin
if chk.Checked = true then
   begin
     panel13.Width := 657;
     cxgrid4.Visible := true;
   end else begin
              panel13.Width := 392;
              cxgrid4.Visible := false;
            end;
end;

procedure TFrmNFact_normal1.cxComboBox1PropertiesChange(Sender: TObject);
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
  end;  }
end;

procedure TFrmNFact_normal1.cxDBCalcEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
     panelprecios.Visible := false;
                qprecios.Close;
  end;
end;

procedure TFrmNFact_normal1.cxDBCalcEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
     panelprecios.Visible := false;
                qprecios.Close;
  end;
end;

procedure TFrmNFact_normal1.cxDBCalcEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
     panelprecios.Visible := false;
                qprecios.Close;
  end;
end;

procedure TFrmNFact_normal1.cxDBCalcEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
     panelprecios.Visible := false;
                qprecios.Close;
  end;
end;

procedure TFrmNFact_normal1.cxDBComboBox1PropertiesChange(Sender: TObject);
begin
if cxDBComboBox1.ItemIndex = 1 then
    begin
        panel16.Visible := false;
    end;
if cxDBComboBox1.ItemIndex = 0 then
    begin
     panel16.Visible := true;
     cxDBComboBox3.ItemIndex := 0;
     end;
end;

procedure TFrmNFact_normal1.cxDBTextEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
       with numero_cliente do
         begin
           close;
           open;
         end;
datos.FbtClientes.Open;
datos.FbtClientes.insert;
datos.FbtClientescodigo.Value := numero_clientenumero.Value + 1;
datos.FbtClientesNOMBRES.Value := cxDBTextEdit4.Text;
datos.FbtClientescodigo_t.Value := '000'+INtToStr(datos.FbtClientescodigo.Value);
datos.FbtClientesCREDITOLIMITE.Value :=0.00;
datos.FbtClientesESTADO.Value := 'Activo';
datos.FbtClientesRENGLONCNF.Value :='Ninguno';
datos.FbtClientesPAGOITB.Value :='No';
datos.FbtClientesBALANCE.Value := 0.00;
datos.FbtClientesCONDICION.Value := 'Precio A';
//edit4.Text := '1';


   // SHOWMESSAGE(''+iNTtosTR(ibqclientescodigo.Value));
    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_FactCLIENTEID.Value := datos.FbtClientescodigo.Value;
    datos.FbqMaster_FactCLIENTENOMBRE.Value := datos.FbtClientesNOMBRES.Value;
    datos.FbqMaster_FactCONDICIONVENTA.Value := 'Precio A';
   // opBuscarCliente.Visible := false;

  // RxDBComboBox1.Enabled := FALSE;

{if ibqclientescondicion.Value = 'POR MAYOR' then
  BEGIN
    RxDBComboBox1.ItemIndex := 1;
  END;

 if ibqclientescondicion.Value = 'DETALLE' then
  BEGIN
    RxDBComboBox1.ItemIndex := 0;
  END;
 }


 if application.MessageBox ('Deseas Actualizar Datos al Cliente','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin
            frmcliente.cxButton1.Enabled := false;
            frmcliente.g_cambios.Enabled := true;
            frmcliente.btcancelar.Enabled := true;
         //   frmcliente.cxButton5.Enabled := false;
            frmcliente.showmodal;
         end;

datos.FbtClientes.ApplyUpdates;
//EDIT4.Clear;

  end;
end;

procedure TFrmNFact_normal1.cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    with qempleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where cod_emp =:op4' );//'+#39+'%'+Edit2.Text+'%'+#39);
    params[0].Value := cxDBTextEdit5.text;
   // params[1].Value := 'DESIGN';
    open;
  end;

  if Qempleados.RecordCount = 0 then
    begin
      Showmessage('** Empleado no existe **');
    end else begin
      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactNOMBRES_EMP.Value := qempleadosnombres_emp.Value;
      opdetalle.Enabled := true;
      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
          begin
            barra.SetFocus;
          end else begin
            cxButton10.SetFocus;
          end;

    end;
  end;



end;

procedure TFrmNFact_normal1.cxDBTextEdit6PropertiesChange(Sender: TObject);
begin
if datos.FbqMaster_FactCONDICIONVENTA.Value = 'Precio A' then
  begin
            cxcombobox1.ItemIndex := 0;
  end;

if datos.FbqMaster_FactCONDICIONVENTA.Value = 'Precio B' then
  begin
            cxcombobox1.ItemIndex := 1;
  end;

  if datos.FbqMaster_FactCONDICIONVENTA.Value = 'Precio C' then
  begin
            cxcombobox1.ItemIndex := 2;
  end;

end;




procedure TFrmNFact_normal1.cxGrid1DBTableView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
      if datos.Zdetalledesc.Value > datos.ZqUsuariosDESCUENTO.Value  then
              begin
                    Showmessage(' ** No esta autorizado para aplicar este descuento **');

              end else begin
                     panel5.Visible := true;
                     tDesc1.Clear;
                     tdesc1.setfocus;

              end;
end;

procedure TFrmNFact_normal1.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  NADA : string;
  LEN : Integer;
  val, ValEstado, IsNulo, pRESTAMOS, SAN, ALQUILER, COMPRAVENTA: Boolean;
begin
// 	if AViewInfo.Item.ID = 0 then

   		ARec := AViewInfo.Bounds;



         ValEstado := AViewInfo.GridRecord.Values[6] < 0.00;


         if  ValEstado then
         	begin
      	 		ACanvas.Canvas.Font.Style := [fsBold];
        			ACanvas.Canvas.Font.Color := clRED;
              end;



end;

procedure TFrmNFact_normal1.cxGrid1DBTableView1DblClick(Sender: TObject);
begin


{
//cambiocantidad.Visible := true;
//edit13.Text := FloatTOStr(datos.ZdetalleCANTIDAD.Value);
//edit13.SetFocus;

linea.Text := 'MOD';

t1.Text := datos.Zdetallecod_Art.Text;
t2.Text := datos.ZdetalleARTICULO.Value;
t3.Text := FloatTOStr(datos.ZdetalleCANTIDAD.Value);

 barra.Text := datos.Zdetallecod_art.Text;

if datos.ZdetalleITBS_ART.Value = 'S' then
   begin
 if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
             t4.Value := datos.ZdetallePRECIO.Value;
             lunidad.Text := datos.ZdetalleUNID.Value;
           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
             t4.Value := datos.ZdetallePRECIO.Value;
             lunidad.Text := datos.ZdetalleUNID.Value;
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               t4.Value := datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value;
               lunidad.Text := datos.ZdetalleUNID.Value;
           end;

    edit8.Text := '1';

end else begin
   t4.Value := datos.ZdetallePRECIO.Value;
   lunidad.Text := datos.ZdetalleUNID.Value;
end;

datos.Zdetalle.Delete;
//datos.Zdetalle.ApplyUpdates;
///DATOS.Zdetalle.Refresh;
cxButton9.Enabled := true;

try
datos.FbqMaster_Fact.Edit;


datos.FbqMaster_FactPOGXITBS.Value := 0.00;
datos.FbqMaster_FactMONTO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
datos.FbqMaster_FactMONTOPAGO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] - datos.FbqMaster_Factdescuento.Value;

t3.SetFocus;
except

end;//
}

BTSerial.Enabled := true;
end;




procedure TFrmNFact_normal1.cxGrid1DBTableView1TOTALGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
//   with TcxGridDBTableView(Sender.GridView).DataController do
//   AText := VarToStr(Values[ARecordIndex, cxGrid1DBTableView1A.Index] - Values[ARecordIndex, cxGrid1DBTableView1B.Index])
//
//
//  if datos.ZdetalleITBS_ART.Value = 'S' then
//      begin
//
//
//         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
//           begin
//
//                      datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value ;
//             datos.ZdetalleIMPUESTO.Value := qpreciosPRECIO_A.Value;
//             datos.ZdetalleITBS.Value   := 0.00;
//             datos.ZdetalleTOTAL.Value  := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
//             datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
//
//           end;
//
//          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
//           begin
//
//
//                datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value - (qpreciosPRECIO_A.Value * (datos.ZUconfiguracionITBIS.Value/100));
//             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
//             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
//             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//
//            datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
//           end;
//
//        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
//           begin
//
//
//                datos.ZdetallePRECIO.Value   := qpreciosPRECIO_A.Value - (qpreciosPRECIO_A.Value * (datos.ZUconfiguracionITBIS.Value/100));
//             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
//             datos.ZdetalleITBS.Value   := ((qpreciosPRECIO_A.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
//             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//           datos.ZdetalleITBIS2.Value := qpreciosPRECIO_A.Value;
//end;
//
//
//      end else begin
//
//         /// showmessage('');
//         //datos.Zdetallecantidad.Value := strtofloat(t3.Text);
//
//         datos.ZdetalleITBS_ART.Value := 'N';
//         datos.ZdetalleEX.Value := 'E';
//
//         datos.ZdetallePRECIO.Value    := qpreciosprecio_a.Value;
//
//         datos.ZdetalleITBS.Value      := 0.00;
//         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
//      end;
//
//      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
//       datos.zdetalle.First;
//
//   while not datos.zdetalle.Eof do
//         begin
//            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
//            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
//            datos.zdetalle.Edit;
//            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
//            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
//
//        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
//        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
//         datos.zdetalle.Next;
//
//   end;
//
//
//datos.FbqMaster_Fact.Edit;
//datos.FbqMaster_Factdescuento.Value := 0.00;
//datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
//
//if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
//           begin
//               datos.FbqMaster_FactMONTO.Value := suma;
//
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
//               end else begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
//               end;
//
//           end;
//
//if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
//           begin
//               datos.FbqMaster_FactMONTO.Value := suma - itbs;
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
//                  end else begin
//                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
//                  end;
//
//           end;
//
//if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
//           begin
//               datos.FbqMaster_FactMONTO.Value := suma - itbs;
//               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
//                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
//                  end else begin
//                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
//                  end;
//
//           end;
//
//panelprecios.Visible := false;
//if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
//                begin
//                   barra.SetFocus;
//                   BARRA.Clear;
//
//                end else begin
//                            barra1.clear;
//                            BARRA1.SetFocus;
//
//                         end;

end;

procedure TFrmNFact_normal1.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
with almacenes1 do
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

procedure TFrmNFact_normal1.cxGrid2DBTableView1Column2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
 var
BM : TBitMap;
  ARect : TRect;
  I : Integer;
begin
//    ARect := AViewInfo.Bounds;
//
//    //  In the next line, 2 is the index of my integer column which
//    //  contains the value which deterimnes the image to display.
//
//    I := AViewInfo.GridRecord.Values[5];
//
//    if I = 0 then begin
//      BM := GetCurrentDir+'Imagenes\Iconos\BMP\68'+'.bmp';
//    end;
//
//    ACanvas.Draw(ARect.Left, ARect.Top, BM);
//    ADone := True;
end;

procedure TFrmNFact_normal1.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  NADA : string;
  LEN : Integer;
  val, ValEstado, IsNulo, pRESTAMOS, SAN, ALQUILER, COMPRAVENTA: Boolean;
begin
// 	if AViewInfo.Item.ID = 0 then

   		ARec := AViewInfo.Bounds;



         ValEstado := AViewInfo.GridRecord.Values[7] = 2;


         if  ValEstado then
         	begin
      	 		ACanvas.Canvas.Font.Style := [fsBold];
        			ACanvas.Canvas.Font.Color := clGreen;
              end;



end;

procedure TFrmNFact_normal1.cxGrid2DBTableView1DblClick(Sender: TObject);
var
SeparadaPorComas :string;
   n                :integer;
   CANTV : STRING;
   CODIGOV : STRING;
   codoriginal : string;
   cantoriginal :string;
begin
SeparadaPorComas := BARRA.Text;

  PanelLTOP.Enabled := true;
//
   for n:=1 to GetTokenCount(SeparadaPorComas,'+') do
     begin
      if n=1 then
        begin
          cantv := GetToken(SeparadaPorComas,'+',n);
        end;

         if n=2 then
        begin
          codigov := GetToken(SeparadaPorComas,'+',n);
        end;

     end;

   if codigov ='' then
     begin
         codoriginal := cantv;
         cantoriginal := '1';
     end;

     if codigov <>'' then
     begin
         codoriginal := codigov;
         cantoriginal := cantv;
     end;

    if cantv ='' then
       begin
           cantoriginal := '1';
       end;



                                           //  edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
                                             edit11.Text := '1.00';

                                             t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             t2.Text     := ibqrArticulosarticulo.Value;

                                             Descc_t.Text := IbqRArticulosCOMISION.text;

                                             edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

                                                 if ibqclientescolor.Value = 'PRECIO 1' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_A.value;
                                                 END;


                                              if ibqclientescolor.Value = 'PRECIO 2' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_B.value;
                                                 END;

                                                  if ibqclientescolor.Value = 'PRECIO 3' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_D.value;
                                                 END;
//
                                            lunidad.Text := ibqrarticulosunidad.Value;
                                            t3.Text := cantoriginal;

                                              linea.Text := 'ART';


                                            if IbqRArticulosPOLITICA.value = 'Unitario' then
                                            begin
                                              topcion.Text := 'UNI';
                                            end;

                                            if IbqRArticulosPOLITICA.value = 'servicio' then
                                            begin
                                              topcion.Text := 'SER';
                                            end;

                                             if IbqRArticulosPOLITICA.value = 'fraccional' then
                                                 begin
                                                    topcion.Text := 'FRA';
                                                end;


                               cxbutton9.Click;
                               datos.FbCategorias.CLOSE;
                               buscararticulos.Visible := false;

if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;
                   edit19.Clear;
                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;
                            edit19.Clear;
                         end;
           IbqRArticulos.Close;


end;

procedure TFrmNFact_normal1.cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
SeparadaPorComas :string;
   n                :integer;
   CANTV : STRING;
   CODIGOV : STRING;
   codoriginal : string;
   cantoriginal :string;




begin


with almacenes1 do
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
if key = vk_escape then
               begin


            buscararticulos.Visible := false;
            IbqRarticulos.Close;

            if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;
                end else begin
                           barra1.SetFocus;
                           BARRA1.Clear;
                         end;


               end;




if key = vk_return then
  begin


SeparadaPorComas := BARRA.Text;
 PanelLTOP.Enabled := true;

//
   for n:=1 to GetTokenCount(SeparadaPorComas,'+') do
     begin
      if n=1 then
        begin
          cantv := GetToken(SeparadaPorComas,'+',n);
        end;

         if n=2 then
        begin
          codigov := GetToken(SeparadaPorComas,'+',n);
        end;

     end;

   if codigov ='' then
     begin
         codoriginal := cantv;
         cantoriginal := '1';
     end;

     if codigov <>'' then
     begin
         codoriginal := codigov;
         cantoriginal := cantv;
     end;

    if cantv ='' then
       begin
           cantoriginal := '1';
       end;



                                         //    edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
                                             edit11.Text := '1.00';

                                             t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             t2.Text     := ibqrArticulosarticulo.Value;
                                             Descc_t.Text := IbqRArticulosCOMISION.text;

                                             edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

                                                 if ibqclientescolor.Value = 'PRECIO 1' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_A.value;
                                                 END;


                                              if ibqclientescolor.Value = 'PRECIO 2' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_B.value;
                                                 END;

                                                  if ibqclientescolor.Value = 'PRECIO 3' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_D.value;
                                                 END;
//
                                            lunidad.Text := ibqrarticulosunidad.Value;
                                            t3.Text := cantoriginal;

                                              linea.Text := 'ART';


                                            if IbqRArticulosPOLITICA.value = 'Unitario' then
                                            begin
                                              topcion.Text := 'UNI';
                                            end;

                                            if IbqRArticulosPOLITICA.value = 'servicio' then
                                            begin
                                              topcion.Text := 'SER';
                                            end;



                                cxbutton9.Click;
                               datos.FbCategorias.CLOSE;
                               buscararticulos.Visible := false;

if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;
                   edit19.Clear;
                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;
                           edit19.Clear;
                         end;
           IbqRArticulos.Close;
  end;
end;


procedure TFrmNFact_normal1.cxGrid4DBTableView1DblClick(Sender: TObject);
begin
tecnico :=  StrToInt(TecnicosCOD_EMP.Value);

label38.Caption := 'Ya hay Instalador Asignado';
end;

procedure TFrmNFact_normal1.cxGrid7DBTableView1DblClick(Sender: TObject);
begin
datos.FbqMaster_Fact.Edit;
datos.FbqMaster_FactIDDR.Value := medicoid.Value;
datos.FbqMaster_FactNOMBREDELDR.Value := mediconombremendico.Value;
cxgrid7.Visible := false;
medico.Close;

end;

procedure TFrmNFact_normal1.cxGrid9DBTableView1DblClick(Sender: TObject);
begin


    with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,a.referencia, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.OBS,');
                sql.Add(' a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,  a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion from mtartuculos a ');
                sql.Add('where a.codigobarra =:PPP');
                sql.Add('group by a.unidad,a.precio_a, a.precio_b, a.precio_d, a.referencia, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, ');
                sql.Add('a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion,a.OBS');
                PARAMS[0].Value := 'RMA001';
                open;
              end;


// edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
 edit11.Text := '1.00';
//
                                             t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             t2.Text     :='SERVICIO R.M.A AL EQUIPO '+QRMATIPOEQUIPO.Text+' '+QRMANO_SERIAL.Text+' '+TRIM(QRMAOBSERVACIONEQUIPO.AsString);
                                             if chk.Checked = true then begin

                                               tecnico   := StrToInt(TecnicosCod_emp.value);
                                             end;

                                          // Showmessage(''+ibqrArticulositbis.Value);
                                           //  EITBIS.Text  := ibqrArticulositbis.Text;

                                             edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);
                                             t4.value    := QRMAMONTO.Value;
//

                                            lunidad.Text := ibqrarticulosunidad.Value;
//                                              //FrmNFact_normal.LUnid.ItemIndex := -1;
//                                             // FrmNFact_normal.LUnid.ItemIndex := 0;
                                              t3.Text := '1';

                                              linea.Text := 'RMA';
//                                              taza.Text := ibqrarticulostaza_compra.Text;

                                            if IbqRArticulosPOLITICA.value = 'Unitario' then
                                            begin
                                              topcion.Text := 'UNI';
                                            end;


                                            if IbqRArticulosPOLITICA.value = 'Servicio' then
                                            begin
                                              topcion.Text := 'SER';
                                            end;

                                          

//                                              cxButton9.Enabled := true;



                                                try


                                                  with Uprma do
                                                     begin
                                                       close;
                                                       sql.Clear;
                                                       sql.Add('update rmam set idmarca = 1 where noorden =:op1');
                                                       params[0].Value := QRMANOORDEN.Value;
                                                       ExecSQL;
                                                     end;
                                                cxbutton9.Click;


                                                  datos.FbCategorias.CLOSE;
                                                                         buscararticulos.Visible := false;

                                          if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                                                          begin
                                                             barra.SetFocus;
                                                             BARRA.Clear;
                                                             edit19.Clear;
                                                          end else begin
                                                                      barra1.clear;
                                                                      BARRA1.SetFocus;
                                                                     edit19.Clear;
                                                                   end;
                                                     IbqRArticulos.Close;
                                                except

                                                end;

                                         

end;

procedure TFrmNFact_normal1.PartiGridDBTableView1DblClick(Sender: TObject);
var
suma, itbs, descc : currency;

begin

edit11.Text := FloatTOStr(fraccionadocod_part.Value);
//edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);



             if edit20.Text = 'Si' then begin

             datos.Zdetalle.Edit;
             datos.ZdetallePRECIO.Value   := fraccionadoprecio1.Value - (fraccionadoprecio1.Value * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleIMPUESTO.Value := fraccionadoprecio1.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value     := ((fraccionadoprecio1.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value ;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
             datos.ZdetalleANCHO.Value    := datos.ZdetalleIMPUESTO.Value * (StrToInt(Descc_t.Text)/100);
             datos.ZdetalleITBS_ART.Value :='S';
             datos.ZdetalleUNID.Value      := FraccionadoUNIDAD.Value;
              datos.zdetalle.First;
//
                    while not datos.zdetalle.Eof do
                         begin
                            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                            descc := (descc + datos.zdetalle.FieldByName('ancho').Value);

                            datos.zdetalle.Edit;
                            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
                            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
                            datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;

                        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
                        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
                         datos.zdetalle.Next;

                   end;

                datos.FbqMaster_Fact.Edit;
                datos.FbqMaster_Factdescuento.Value := descc;
                datos.FbqMaster_FactPOGXITBS.Value := itbs;

                datos.FbqMaster_FactMONTO.Value := suma - itbs;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

                  edit20.Clear;

             end;
            if edit20.Text= 'No' then begin

                 
             datos.Zdetalle.Edit;
             datos.ZdetallePRECIO.Value   := fraccionadoprecio1.Value;// - (fraccionadoprecio1.Value * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value     := 0.00;//((fraccionadoprecio1.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value;// + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
             datos.ZdetalleANCHO.Value    := datos.ZdetalleIMPUESTO.Value * (StrToInt(Descc_t.Text)/100);
             datos.ZdetalleITBS_ART.Value :='N';
              datos.ZdetalleUNID.Value      := FraccionadoUNIDAD.Value;
                     datos.zdetalle.First;
                    //
                        while not datos.zdetalle.Eof do
                             begin
                                suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                                itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                                descc := (descc + datos.zdetalle.FieldByName('ancho').Value);

                                datos.zdetalle.Edit;
                                datos.zdetalletotal.Value := datos.zdetalletotal.Value;
                                datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
                                datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;
                                datos.zdetalle.Next;

                       end;

                    datos.FbqMaster_Fact.Edit;
                    datos.FbqMaster_Factdescuento.Value := descc;
                    datos.FbqMaster_FactPOGXITBS.Value := itbs;
                    datos.FbqMaster_FactMONTO.Value := suma - itbs;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

             end;


lunidad.Text := fraccionadounidad_1.Value;
partigrid.Visible := false;


//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];



t1.clear;
t2.Clear;
t3.Clear;
t4.Clear;
ancho.Clear;
edit9.Clear;
alto.Clear;
edit8.Clear;
Topcion.Clear;
cxButton9.Enabled := false;
 edit20.Clear;

//T3.setfocus;

if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;
                   edit19.Clear;
                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;
                          edit19.Clear;
                         end;
         





end;

procedure TFrmNFact_normal1.PartiGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
suma, itbs : currency;
begin
if key = vk_return then
  begin

edit11.Text := FloatTOStr(fraccionadocod_part.Value);
//edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);



             if IbqRArticulosITBIS.Value = 'Si' then begin

             datos.Zdetalle.Edit;
             datos.ZdetallePRECIO.Value   := fraccionadoprecio1.Value - (fraccionadoprecio1.Value * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleIMPUESTO.Value := fraccionadoprecio1.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := ((fraccionadoprecio1.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value ;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);


              datos.zdetalle.First;
//
                    while not datos.zdetalle.Eof do
                         begin
                            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                            datos.zdetalle.Edit;
                            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
                            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

                        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
                        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
                         datos.zdetalle.Next;

                   end;

                datos.FbqMaster_Fact.Edit;
                datos.FbqMaster_Factdescuento.Value := 0.00;
                 datos.FbqMaster_FactPOGXITBS.Value := itbs;

                    datos.FbqMaster_Factdescuento.Value := 0.00;
                     datos.FbqMaster_FactPOGXITBS.Value := itbs;
                       datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;


             end;
            if IbqRArticulosITBIS.Value = 'No' then begin



             datos.Zdetalle.Edit;
             datos.ZdetallePRECIO.Value   := fraccionadoprecio1.Value;// - (fraccionadoprecio1.Value * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value   := 0.00;//((fraccionadoprecio1.Value * datos.ZdetalleCANTIDAD.Value) * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value;// + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);

                     datos.zdetalle.First;
                    //
                        while not datos.zdetalle.Eof do
                             begin
                                suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                                itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                                datos.zdetalle.Edit;
                                datos.zdetalletotal.Value := datos.zdetalletotal.Value;
                                datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

                             datos.zdetalle.Next;

                       end;

                    datos.FbqMaster_Fact.Edit;
                    datos.FbqMaster_Factdescuento.Value := 0.00;
                     datos.FbqMaster_FactPOGXITBS.Value := itbs;
                       datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;
             end;


lunidad.Text := fraccionadounidad_1.Value;
partigrid.Visible := false;


//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];



t1.clear;
t2.Clear;
t3.Clear;
t4.Clear;
ancho.Clear;
edit9.Clear;
alto.Clear;
edit8.Clear;
Topcion.Clear;
cxButton9.Enabled := false;


//T3.setfocus;

if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;
                   edit19.Clear;
                end else begin
                            barra1.clear;
                           BARRA1.SetFocus;
                        edit19.Clear;
                         end;



  end;

end;

procedure TFrmNFact_normal1.Precio_variosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin

if key = vk_return then begin

try


 if precio_varios.Value =0.00 then
   begin
      ShowMEssage('** El precio es en 0.00 **');
 end else begin

if linea.Text ='COM' then
  BEGIN
             with ibqrARticulos do
                 begin
                   close;
                   sql.Clear;
                   sql.Add('select a.unidad,a.precio_a, a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,sum(b.entrada - b.salida) Existencia');
                   sql.Add('from mtartuculos a');
                   sql.Add('left join minventario b On a.cod_art = b.cod_art');
                   sql.Add('where a.cod_art =:op12');
                   sql.Add('group by a.unidad,a.precio_a, a.precio_b,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis');
                   params[0].Value := sTRtOiNT(cod_varios.text);
                   open;
                 end;
              //   showmessage(''+CurrToStr(ibqrARticulosprecio_B.Value));
  END;

if ibqrarticulospolitica.Value <> 'fraccional' then
   begin


        nofraccional_varios;
        chkprecio.Checked := false;
        edit10.Text := '0.00';
        edit11.Text := '0.00';

        if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;
                end else begin
                           barra1.SetFocus;
                           BARRA1.Clear;
                         end;


        edit15.Clear;
   end;



   end;

  //*****
FINALLY

END;

end;
end;


procedure TFrmNFact_normal1.PrintCopia;
 var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE, EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL : string;

      begin

fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

//VerificaCampos(Sender);

//Application.MessageBox('Coloque a impressora'+#13+'no modo condensado!!!','Aviso',32);

//Se nenhum campo está em branco, grava o cupom
//GravaCupons(Sender);




          if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
      begin
         try
             IniFile := ChangeFileExt(Application.ExeName,'.ini');

             longitud := ReadString_Ini(IniFile,'IMPRESION', 'longitud','');
             campoL := ReadString_Ini(IniFile,'IMPRESION', 'campoL','');
             campoC1 := ReadString_Ini(IniFile,'IMPRESION', 'campoC1','');
             campoC2 := ReadString_Ini(IniFile,'IMPRESION', 'campoC2','');
             campoD := ReadString_Ini(IniFile,'IMPRESION', 'campoD','');
             campoF := ReadString_Ini(IniFile,'IMPRESION', 'campoF','');



             EX       := ReadString_Ini(IniFile,'IMPRESION', 'ex','');
             espacioA := ReadString_Ini(IniFile,'IMPRESION', 'espacioA','');
             Pitbis   := ReadString_Ini(IniFile,'IMPRESION', 'pitbis','');
             pprecio  := ReadString_Ini(IniFile,'IMPRESION', 'pprecio','');
             ptotal   := ReadString_Ini(IniFile,'IMPRESION', 'ptotal','');


             DcampoL := ReadString_Ini(IniFile,'IMPRESION', 'DcampoL','');
             DcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC1','');
             DcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoC2','');
             DcampoD := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD','');
             DcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'DcampoD2','');
             DcampoF := ReadString_Ini(IniFile,'IMPRESION', 'DcampoF','');
             PcampoL := ReadString_Ini(IniFile,'IMPRESION', 'PcampoL','');
             PcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC1','');
             PcampoC2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoC2','');
             PcampoD := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD','');
             PcampoD2 := ReadString_Ini(IniFile,'IMPRESION', 'PcampoD2','');
             PcampoF := ReadString_Ini(IniFile,'IMPRESION', 'PcampoF','');
             INICIARPRINT := ReadString_Ini(IniFile,'IMPRESION', 'INICIARPRINT','');
             TEXTCORTE := ReadString_Ini(IniFile,'IMPRESION', 'TEXTCORTE','');
             TPcampoL  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoL','');
             TPcampoC1 := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoC1','');
             TPcampoF  := ReadString_Ini(IniFile,'IMPRESION', 'TPcampoF','');

             SIZEFONT := ReadString_Ini(IniFile,'IMPRESION', 'SIZEFONT','');
             FONTBOLD := ReadString_Ini(IniFile,'IMPRESION', 'FONTBOLD','');
             FONTNORMAL  := ReadString_Ini(IniFile,'IMPRESION', 'FONTNORMAL','');


         except
             on E: Exception do
      	    begin
               MsgError('Se produjo el siguiente error al ejecutar la aplicación'#13+
      	               '**** '+E.Message+'****'#13+
                        'Esto provoca que no se pueda iniciar,'+
                        'Si el problema persiste, llamar al soporte');
               Application.Terminate;
             end;
         end;
       end
    else begin
      MsgError('El Archivo de configuracion de la aplicación no existe, llamar al soporte!!'#13+
               #9'La aplicacion cargara la base de datos local');
end;


//longitud := IntToStr(datos.ZUconfiguracionLONGTICKET.Value);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);

//      WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
 //     WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('FACTURA COPIA',StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE').asstring),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('NCF:'+DATOS.FBQMASTER_FACT.FieldByName('NCF').AsString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('VENTA DE CONTADO'),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      if StrToInt(longitud) > 42 then
        begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'             '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
        end else  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
        end;

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Fact: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));
         if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));

      if DATOS.FbqMaster_FactRNC_CLIENTE.Value <>'' then  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RNC CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('RNC_CLIENTE').Value),StrToInt(longitud),0));
      end;

      if DATOS.FbqMaster_Factdireccion.Value <>'' then  begin
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('DIRECCION  :'+DATOS.FbqMaster_Fact.FieldByName('DIRECCION').Value),StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CANT',StrToInt(campoL),0)+espacios('PRODUCTO',StrToInt(campoC1),0)+espacios('ITBIS',StrToInt(campoC2),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('TOTAL',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));
       if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      end;



    with DATOS.ZDETALLE do
      begin
          First;
          while not Eof do
          begin

           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('TITULOPRN').AsString),0,36),StrToInt(longitud),0));

//            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
//                                                                                   +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
  //                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

            if datos.ZdetalleCANTIDAD.Value > 1.00 then begin

            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));

            end else begin

//             if datos.ZdetalleTOTAL.value > 9999.00 then
//               begin
//                  ShowMessage('');

               WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));


            END;

           Next;
          end;
      end;



     if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      end;

      if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(TpcampoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
          if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('descuento').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tpcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));



        if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

        if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('BONOS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('BONOS').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));


       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('Fecha de Vencimiento:'+DATOS.FBQMASTER_FACT.FieldByName('fecha_final').AsString),StrToInt(longitud)));
       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,StrToInt(longitud)));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_Factcajero.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));
//         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
 //        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

//with printer do
//begin
//
//        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
//        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
//        BeginDoc;
//        Canvas.Brush.Style := bsClear;
//        for i := 0 to Memo1.Lines.Count do
//          Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
//        Memo1.Lines.Strings[i]);
//        Canvas.Brush.Color := clBlack;
//
//        EndDoc;
//end;

//WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,TEXTCORTE);




end;

procedure TFrmNFact_normal1.cxGridDBTableView1DblClick(Sender: TObject);
begin
//if EDIT4.Text = '1' then BEGIN
//
//datos.FbqMaster_Fact.Edit;
//datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
//datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
//datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
//datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
//datos.FbqMaster_FactIDRUTA.Value := ibqclientesruta_id.Value;
//datos.FbqMaster_FactNOMBREDELDR.Value := ibqclientesRENGLONCNF.Value;
//
//
//opBuscarCliente.Visible := false;
//
//with qruta do
//  begin
//    close;
//    sql.Clear;
//    sql.Add('select a.*, b.nombre from ruta a');
//    sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
//    sql.Add('where a.id =:ppp');
//    params[0].Value := ibqclientesruta_id.Value;
//    open;
//  end;
//
//
//
//RxDBComboBox1.Enabled := FALSE;
//
//
//  EDIT4.Clear;
//END;


end;

procedure TFrmNFact_normal1.cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key = vk_return then
//  begin
//    if EDIT4.Text = '1' then BEGIN
//datos.FbqMaster_Fact.Edit;
//datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
//datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
//datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
//datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
//datos.FbqMaster_FactNOMBREDELDR.Value := ibqclientesRENGLONCNF.Value;
//opBuscarCliente.Visible := false;
//
//RxDBComboBox1.Enabled := FALSE;
//
//{if ibqclientescondicion.Value = 'POR MAYOR' then
//  BEGIN
//    RxDBComboBox1.ItemIndex := 1;
//  END;
//
// if ibqclientescondicion.Value = 'DETALLE' then
//  BEGIN
//    RxDBComboBox1.ItemIndex := 0;
//  END;
// }
//  EDIT4.Clear;
//  end;
//end;
end;

procedure TFrmNFact_normal1.cxGridDBTableView2DblClick(Sender: TObject);
begin

datos.FbqMaster_Fact.Edit;
DATOS.FbqMaster_FactPINREFERIDO.Value := Qempleadosnombres_emp.Value;
Opbuscarempleado.Visible := false;
//EDIT4.Clear;
end;

procedure TFrmNFact_normal1.cxGridDBTableView3DblClick(Sender: TObject);
begin
detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
      detallefacturas.Open;
      cxGrid2.Visible := true;

     {with ibqrarticulos do

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

procedure TFrmNFact_normal1.cxGridDBTableView4DblClick(Sender: TObject);
begin
datos.Zdetalle.Edit;
datos.zdetalleidalmacen.value := almacenesid.Value;
edit12.Text := IntToStr(almacenesid.Value);
cxgrid8.Visible := false;
almacenes.close;

end;

procedure TFrmNFact_normal1.cxGridDBTableView4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_return then
  begin
    datos.Zdetalle.Edit;
datos.zdetalleidalmacen.value := almacenesid.Value;
edit12.Text := IntToStr(almacenesid.Value);
cxgrid8.Visible := false;
almacenes.close;
  end;

end;

procedure TFrmNFact_normal1.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
begin
datos.ZUconfiguracion.Open;
  if cxTextEdit1.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
     begin
        cxButton3.Enabled := true;
          cxButton3.Click;;
     end else begin
          MsgError('Usted no esta autorizado para relaizar esa operación'#13+
      	               'Favor consultar con el Administrador');
          cxTextEdit1.Clear;
             cxButton3.Enabled := false;
          paneldesc.Visible := false;

     end;

end;
end;

procedure TFrmNFact_normal1.cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Numero: String;
  Valor: Extended;
  codoriginal : string;
  iResult : integer;
begin
// if TryStrToInt( codoriginal[1], iResult) then
//    begin
//         ShowMessage('Numerico');
//    end;

end;

procedure TFrmNFact_normal1.cxTextEdit2PropertiesChange(Sender: TObject);
var
  Numero: String;
  Valor: Extended;
  codoriginal : string;
  iResult : integer;
begin


if cxRadioGroup2.ItemIndex = 0 then begin

with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
         if OpCuando.ItemIndex = 0 then
           begin
                    sql.Add('and a.fecha_fac >=:fechas');
         end;
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
             if OpCuando.ItemIndex = 0 then
           begin
                params[3].Value := now();
           end;
        open;

    end;
end;


if cxRadioGroup2.ItemIndex = 1 then begin

with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
        if OpCuando.ItemIndex = 0 then
           begin
        sql.Add('and a.fecha_fac >=:fechas');
           end;
        Params[0].Value := 'PEDIDO';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'PEDIDO';

         if OpCuando.ItemIndex = 0 then
           begin
                params[3].Value := now();
           end;
        open;
    end;
end;

if cxRadioGroup2.ItemIndex = 2 then begin

with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
          if OpCuando.ItemIndex = 0 then
           begin
                    sql.Add('and a.fecha_fac >=:fechas');
         end;

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'COTIZACION';


        if OpCuando.ItemIndex = 0 then
           begin
                params[3].Value := now();
           end;
        open;
    end;
end;



end;

procedure TFrmNFact_normal1.DBGrid1ColEnter(Sender: TObject);
begin
 t4.Value := datos.ZdetallePRECIO.Value + (datos.ZdetalleITBS.Value / datos.ZdetalleCANTIDAD.Value);
end;

procedure TFrmNFact_normal1.DBGrid1ColExit(Sender: TObject);
var
  suma, ITBS, PRECIO_C: currency;
  comision : double;
begin

end;

procedure TFrmNFact_normal1.descKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_return then
       begin
         cxTextEdit1.SetFocus;
       end;
end;

procedure TFrmNFact_normal1.EdClaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if KEY = VK_ESCAPE then
//  BEGIN
//    PanelCantidad.Visible := false;
//    EdClave.Clear;
//  END;
end;

procedure TFrmNFact_normal1.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin                         
if key = vk_return then
  begin

  end;
end;

procedure TFrmNFact_normal1.Edit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_RETURN then begin
       cxButton23.Click;
     end;

end;

procedure TFrmNFact_normal1.Edit19Change(Sender: TObject);
VAR
CODORIGINAL : string;
BuscarSerie : String;
Cantv :String;
n : Integer;
T : string;
begin
if PageArticulos.ActivePageIndex = 0 then begin

if optipo.ItemIndex = 0 then
  begin

CODORIGINAL := edit19.Text;
with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.precio_b, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.comision, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                open;
              end;
  end;

 if optipo.ItemIndex = 1 then
  begin
CODORIGINAL := edit19.Text;
with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('where a.referencia like '+#39+'%'+codoriginal+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.comision, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                open;
              end;

  end;

 if optipo.ItemIndex = 2 then
  begin
CODORIGINAL := edit19.Text;
with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.comision,a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');

                sql.Add('where a.cod_art like '+#39+'%'+codoriginal+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra,a.comision, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                open;
              end;

  end;
  end;

  if PageArticulos.ActivePageIndex = 1 then
     begin



        with QRma do
              begin
                close;
                sql.Clear;
                sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo,  (current_date - a.fecha_prometida) as Dias  from rmam a');
                sql.Add('left join cliente b on a.idcliente = b.codigo');
                sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =''INSTALADOR''');
                sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
                sql.Add('where b.nombres like '+#39+'%'+edit19.text+'%'+#39);
                sql.add('and a.monto > 0.00');
                sql.add('and a.estado =''Cerrado''');
                sql.Add('and a.idmarca <> 1');
               open;
              end;

     end;

end;

procedure TFrmNFact_normal1.Edit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
T : String;
 SeparadaPorComas :string;
   n                :integer;
   CANTV : STRING;
   CODIGOV : STRING;
   codoriginal : string;
   cantoriginal :string;
begin

  if key = vk_return then
      begin

SeparadaPorComas := edit19.Text;

 for n:=1 to GetTokenCount(SeparadaPorComas,'*') do
     begin
      if n=1 then
        begin
          cantv := GetToken(SeparadaPorComas,'*',n);
        end;

         if n=2 then
        begin
          codigov := GetToken(SeparadaPorComas,'*',n);
        end;
 end;

t:= copy(edit19.Text, 1,1);

if t = '*' then
  begin

with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.comision,a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo),a.cod_cat,a.politica,a.modelo,a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');

                sql.Add('where a.referencia like '+#39+'%'+codigov+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.comision,a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion,a.obs');
                open;
              end;


 end;

 s.SetFocus;
end;

if key = VK_ESCAPE then begin

 buscararticulos.Visible := false;
            IbqRarticulos.Close;
            if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                end else begin
                           barra1.SetFocus;
                         end;
end;



end;

procedure TFrmNFact_normal1.Edit1Change(Sender: TObject);
begin

//if opb.ItemIndex = 0 then
// begin
//
// with ibqclientes do
//  begin
//    close;
//    sql.Clear;
//    sql.Add('select a.* from cliente a');
//    sql.Add('where a.nombres like '+#39+'%'+edit1.Text+'%'+#39);
//    open;
//  end;
//
// end;
//
//if opb.ItemIndex = 1 then
// begin
//
//
//  with ibqclientes do
//  begin
//    close;
//    sql.Clear;
//    sql.Add('select a.* from cliente a');
//
//    sql.Add('where a.numeropin like '+#39+'%'+edit1.Text+'%'+#39);
//    open;
//  end;
// end;

end;

procedure TFrmNFact_normal1.Edit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
suma, itbs : currency;
begin
if key = vk_return  then
  begin
     if edit21.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
     begin
panelprecios.Visible := false;
if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                   BARRA.Clear;

                end else begin
                            barra1.clear;
                            BARRA1.SetFocus;

                         end;
            Edit21.Clear;
         PanelPrecios.Width := 376;
         cxButton26.Enabled := true;
     end else begin
         Showmessage(' Clave Incorrecta');
         Edit21.Clear;
         PanelPrecios.Width := 376;
         cxButton26.Enabled := true;
     end;

  end;
end;

procedure TFrmNFact_normal1.Edit2Change(Sender: TObject);
begin

with qempleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where nombres_emp like '+#39+'%'+Edit2.Text+'%'+#39);
    sql.Add('and cargo =:oo');
    params[0].Value := 'DESIGN';
    open;
  end;
end;


procedure TFrmNFact_normal1.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    cxbutton6.SetFocus;
  end;
end;

procedure TFrmNFact_normal1.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_return then
  begin

    with numeroserie do
      begin
        close;
        open;
      end;

    datos.Series.Insert;
    datos.SeriesCOD_SERIES.Value := numeroseriemax.Value + 1;
    datos.SeriesCOD_ARTI.Value := datos.ZdetalleARTICULOID.Value;
    datos.SeriesESTADO.Value := 1;
    datos.SeriesNO_FACT.Value := datos.FbqMaster_FactNO_FACT.Value;
    datos.SeriesSERIES.Value := edit7.Text;
    datos.Series.Post;
    edit7.Clear;


  end;

end;

procedure TFrmNFact_normal1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmNFact_normal1 := nil;
end;

procedure TFrmNFact_normal1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
     var
cero : string;

begin

if key = vk_f5 then
  begin
if datos.ZdetalleCOMBO.Value='FRA' then
  begin

  end else begin

   with qprecios do
     begin
       close;
       sql.Clear;
       sql.Add('select cod_art,precio_a,precio_b,precio_d, costo from mtartuculos');
       sql.Add('where cod_art =:ww');
       params[0].Value := datos.zdetallearticuloid.Value;
       open;
     end;
     //edit16.text := 'ACTIVO';
     panelprecios.Visible := true;
    // panelprecios.SetFocus;
    cxDBCalcEdit1.SetFocus;

     if datos.ZqUsuariosIDSESSION.Value = 3 then
          begin

         panelprecios.Height := 182;
         label13.Visible := true;
         cxDBCalcEdit4.Visible := true;
         Button4.Visible := true;
            PanelPrecios.Width := 376;


       end else begin
         label13.Visible := false;
         cxDBCalcEdit4.Visible := false;
         Button4.Visible := false;
         panelprecios.Height := 138;
          PanelPrecios.Width := 376;

       end;


     if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
                 edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value + datos.Zdetalleitbs.Value) /100))));
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
                 edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value) /100))));
           end;
  end;
  end;


if key = vk_f9 then
  begin

if datos.ZdetalleTOTAL.Value >= 0.00 then begin

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin

               //  edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value + datos.Zdetalleitbs.Value) /100))));
                 t4.Value := datos.ZdetallePRECIO.Value + (datos.ZdetalleITBS.Value / datos.ZdetalleCANTIDAD.Value);
                 Descc_t.Text := FloatToStr( ((datos.ZdetalleANCHO.Value / datos.ZdetallePRECIO.Value) *100)/datos.ZdetalleCANTIDAD.Value ) ;
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin

                 edit14.text := FloattoSTR(Round((datos.Zdetalleitbs.Value / ((datos.ZdetallePRECIO.Value) /100))));
           end;


           if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

                 edit14.text := FloattoSTR(datos.ZdetallePRECIO.Value);
           end;

PanelCantidad.Visible := true;
edit15.Text := 'cant';
t3.Enabled := true;
t3.Text     := datos.zdetalleCANTIDAD.Text;

t3.SetFocus;
end;
  end;

if KEY = VK_f7 then
  begin
    if total.Value = 0.00 then
       begin
         Showmessage('Esta hay total facturado para aplicar descuento');
       end else begin

          paneldesc.Visible := true;
          cxTextEdit1.SetFocus;
  end;
end;


if KEY =vk_f6 then
  begin
     if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
       begin
       if total.Value = 0.00 then
            begin
              Showmessage('Esta Factura no Esta Completa');
            end else begin

               with datos.Series do
                 begin
                   close;
               //    params[0].Value := datos.ZdetalleARTICULOID.Value;
               //    params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
                   open;
                 end;
               opserial.Visible := true;
               edit7.SetFocus;
            end;
       end else begin
         Showmessage('** Esta opción no esta activada por el Administrador **');
       end;
  end;

if key = vk_f8 then
  begin
  if b1.Enabled = FALSE then begin
   FrmConsultaCliente.edit2.text := 'FACT';
   FrmConsultaCliente.ibqclientes.Open;
   FrmConsultaCliente.showmodal;
   end;
  end;


if key = vk_f4 then
  begin

if asignaTurno = 0 then
  begin
      Showmessage(' ** No Hay Turno Abierto Disponible **');
  end else begin
if (DATOS.FbqMaster_FactROTULO.Value ='FACTURACION') or (DATOS.FbqMaster_FactROTULO.Value ='PEDIDO') then
 BEGIN



datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text       := 'ENVIADA';
datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
datos.FbqMaster_FactABONO.Value          := 0.00;
datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;

if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
  begin
    datos.FbqMaster_Factquees.Value := 'NO';
  end;


if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
  begin
    datos.FbqMaster_Factquees.Value := 'PENDIENTE';
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


//datos.ZInventario.ApplyUpdates;
DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;
datos.data.Commit;


with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(edit5.Text);
    open;
  end;


with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;

  with datos.Series do
                 begin
                   close;
             //      params[0].Value := datos.ZdetalleARTICULOID.Value;
              //     params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
                   open;
                 end;

T1.ClEAR;
//t2.Clear;
t3.Clear;
t4.Clear;

ShowForm(TFrmCobro, FrmCobro);

// datos.ZInventario.Close;

//frmConsultaFact.facturasEmitidas.Refresh;
//showmessage('');





  end;
end;
  end;



if key =vk_f2 then
  begin

   if b1.Enabled = FALSE then begin


         PageArticulos.ActivePageIndex := 0;
     if datos.zuconfiguracionUSARRMA.Value = 1 then
         begin
            with qrma do
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
            PageArticulos.Pages[1].tabVisible := true;
         end else if datos.zuconfiguracionUSARRMA.Value = 2 then begin

            PageArticulos.Pages[1].tabVisible := false;
         end;

BuscarArticulos.Visible := true;
edit19.SetFocus;

//datos.FbCategorias.open;

 with ibqrarticulos do
 begin
    close;
    sql.Clear;
    sql.Add('select FIRST 15 a.unidad,a.costo_pr, a.comision,a.referencia, a.ubicacion, a.beneficios,a.precio_a, a.precio_b, a.precio_d, a.codigobarra, a.obs,');
    sql.add('a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.TIENECOMPACTIBILIDAD,');
    sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
    sql.Add('group by a.unidad,a.precio_a, a.comision,a.precio_b, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,');
    sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3,  a.referencia,a.ubicacion, a.obs');
    open;
    end;



   end;
end;


if b1.Enabled = true then begin

if key = vk_f3 then
   begin


opmaster.Enabled := true;

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;


datos.FbqMaster_Fact.Open;
zqusuario.Open;
ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := numerogen_id.Value;
 datos.FbqMaster_FactNC.Value := 1;

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
      FrmNFact_normal1.panel7.Enabled := true;
     FrmNFact_normal1.PanelLTOP.Enabled := true;
     datos.FbqMaster_FactNO_FACT1.Value := cero+intTostr(datos.FbqMaster_FactNO_FACT.Value);
     edit5.Text := datos.FbqMaster_FactNO_FACT1.Value;
    // RxDBComboBox1.ItemIndex := 0;
    // FrmNFact.RxDBComboBox2.ItemIndex := 1;
     cxDBComboBox1.ItemIndex := 1;

   //  RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := true;
     cxDBComboBox1.Enabled := true;
     edit12.Clear;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;

     with ibqclientes do
        begin
          close;
          sql.Clear;
          sql.Add('select a.* from cliente a');
      //    sql.Add('inner join ruta b On a.ruta_id = b.id');
       //   sql.Add('inner join vendedores c On b.idvendedor = c.id');
          sql.Add('where a.codigo = 1');
          open;
        end;


        datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
        datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
        datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
        datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
        datos.FbqMaster_FactCAJAID.Value            := datos.ZUconfiguracionCAJAID.Value;


     with zqusuario do
       begin
         close;
         sql.Clear;
         sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
         sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
         sql.Add('where a.usuarioId =:pp');
         params[0].Value := asignausuario;
         opeN;
       end;

     datos.FbqMaster_Factusuarioid.Value := asignausuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value  := zqusuarionombres_emp.Value;
     datos.FbqMaster_FactCODVEN.Value       := ZqusuarioEMPLEADOID.Value;
     datos.FbqMaster_FactNOMBRES_EMP.Value  := ZqusuarioNOMBRES_EMP.Value;
     datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  //   datos.FbqMaster_Factcaja.Value := datos.ConsultaCajaCAJA_NOMBRE.Value;

     if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Ninguno' then
       begin
          cxDBComboBox2.ItemIndex := 0;
       end;

     if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Cons. Final' then
       begin
          cxDBComboBox2.ItemIndex := 1;
       end;

       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Fiscal' then
       begin
          cxDBComboBox2.ItemIndex := 2;
       end;

       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Gubernamental' then
       begin
          cxDBComboBox2.ItemIndex := 3;
       end;


    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

    opdetalle.Enabled := true;
       if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                end else begin
                           barra1.SetFocus;
                         end;



     b1.Enabled := false;
     b2.Enabled := true;
     b2.Caption := 'Cancelar Factura';


       if datos.ZqUsuariosIDSESSION.Value = 1 then
          begin
            b3.Enabled := false;
            b4.Enabled := true;
            cxButton11.Enabled := true;
            cxButton37.Enabled :=false;
          end;

      if datos.ZqUsuariosIDSESSION.Value = 3 then
          begin
            b3.Enabled := true;
            b4.Enabled := true;
            cxButton11.Enabled := true;
             cxButton37.Enabled := TRUE;

          end;

            if datos.ZqUsuariosIDSESSION.Value = 2 then
          begin
            b3.Enabled := true;
            b4.Enabled := true;
            cxButton11.Enabled := true;
            cxButton37.Enabled := TRUE;
          end;

    
     cxButton4.Enabled := false;

    // FrmNFact.b5.Enabled := false;
     cxButton5.Enabled := false;

    cxButton14.Enabled := true;
     BTPedido.Enabled := true;
     //BtBuscarPedido.Enabled := false;
     b6.Enabled := true;
     Edit3.Text := 'NUEVO';
     opmaster.Enabled := true;
     opdetalle.Enabled := true;
       cxButton37.Enabled := false;

     BtBorrar.Enabled := true;
     b6.Enabled := true;
     cxButton12.Enabled := true;
     cxButton13.Enabled := true;
     BtnPrintConduce.Enabled := true;
       BTSerial.Enabled := true;

      with datos.Zdetalle do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.articulo, c.unidad, b.itbis from detailfact a');
          sql.Add('left join mtartuculos b On a.cod_art = b.codigotxt');
          Sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
          sql.Add('where a.no_fact =  0');
          open;
       end;

//     FrmNfact.cxButton5.Enabled := true;
     cerrar.Enabled := false;
end;


if key = vk_escape then
  begin
       if CostoMSN.Visible = true then
         begin
           costomsn.Visible := false;
         end;
      if PANEL13.Visible = TRUE then
          begin
            PANEL13.Visible := FALSE;
          end;

    

       if BuscarArticulos.Visible = true then
          begin
          //showmessage('');
            buscararticulos.Visible := false;
            IbqRarticulos.Close;
            if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                end else begin
                           barra1.SetFocus;
                         end;
          end;

          if panel13.Visible = true then
             begin
               panel13.Visible := false;
             end;


  if (impresas.Visible = false) and (cxGrid2.Visible = true) then begin
       cxGrid2.Visible := false;
       detallefacturas.Close;

   end else if (impresas.Visible = true) and (cxGrid2.Visible = true) then begin
        cxGrid2.Visible := false;
        impresas.Visible := true;
        detallefacturas.Close;
    end else  if (impresas.Visible = true) and (cxGrid2.Visible = false) then begin
        impresas.Visible := false;
        facturasimpresas.Close;

     end;



    if Panel11.Visible = true then
      begin
        panel11.Visible := false;
      end;


 //  OpBuscarCLiente.Visible := false;

  if partigrid.Visible = true then
    begin
      partigrid.Visible := false;
      fraccionado.Close;
    end;

  

      if opserial.Visible = true then
        begin
          edit7.Clear;
          opserial.Visible := false;

        end;

      if panel1.Visible = true then
        begin
          edit6.Text := '1';
          panel1.Visible := false;
        end;

       if PanelConduce.Visible = True then
              begin
                PanelConduce.Visible := false;
              end;

  end;
end;
end;


procedure TFrmNFact_normal1.FormShow(Sender: TObject);
begin
if datos.ZUconfiguracionUSARCASHDRAWER.Value = 'SI' then
   BEGIN
     cxButton20.Enabled := TRUE;

   END ELSE BEGIN
     cxButton20.Enabled := FALSE;
   END;

if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
  begin


    barra.Visible := true;
    barra1.Visible := false;
  end else begin

     barra.Visible := false;
     barra1.Visible := true;
  end;


if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
   // label34.Visible := true;
    datos.Series.Open;
  end else begin
    //label34.Visible := false;
    datos.Series.close;
  end;

//RxDBComboBox1.Enabled := false;
//cerrar.Enabled := false;
//frmNfact.Left := 241;
//frmNfact.Top := 30;

//cxDBTextEdit5.SetFocus;
hold.Close;
hold.Params[0].Value := 'HOLD';
HOLD.open;
opdetalle.Enabled := false;


 //BtBuscarPedido.Enabled := true;
BTPedido.Enabled := true;

cerrar.Enabled := true;
edit5.clear;
cxButton14.Enabled := true;
cxButton4.Enabled := true;

b1.Enabled := true;
b2.Enabled := false;


       b3.Enabled := false;



b6.Enabled := false;
b4.Enabled := false;
 BtnPrintConduce.Enabled := false;
cxButton5.Enabled := true;
cxButton11.Enabled := false;
PANEL12.Visible := FALSE;

   BtBorrar.Enabled := false;
     b6.Enabled := false;
     cxButton12.Enabled := false;
     cxButton13.Enabled := false;
   if datos.ZqUsuariosIDSESSION.Value = 1 then
          begin

            cxButton37.Enabled :=false;
          end;

      if datos.ZqUsuariosIDSESSION.Value = 3 then
          begin

             cxButton37.Enabled := TRUE;

          end;

            if datos.ZqUsuariosIDSESSION.Value = 2 then
          begin
           
            cxButton37.Enabled := TRUE;
          end;
//cerrar.Enabled := true;
end;

procedure TFrmNFact_normal1.Label41Click(Sender: TObject);
begin

                panelprecios.Visible := false;
                qprecios.Close;
                //edit16.Clear;

end;

procedure TFrmNFact_normal1.Label49Click(Sender: TObject);
begin
      costoMsn.Visible :=false;
end;

procedure TFrmNFact_normal1.Memo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    panel13.Visible := false;
  end;
end;

procedure TFrmNFact_normal1.RxDBComboBox1Change(Sender: TObject);
begin
if cxDBTextEdit4.Text ='' then
   begin
     Showmessage('** Seleccione el Cliente **');
   end else begin
//       if (ibqclientescondicion.Value = 'DETALLE') AND (RxDBComboBox1.ItemIndex = 1) then
//          BEGIN
//              Showmessage('** Este Cliente No Tiene Autorizacion Para Ventas al Por Mayor **');
//              RxDBComboBox1.ItemIndex := 0;
//         END;


   end;
end;

procedure TFrmNFact_normal1.RxDBComboBox2Change(Sender: TObject);
begin

 if cxDBTextEdit4.Text ='' then
   begin
     Showmessage('** Seleccione el Cliente **');
   end else begin
 {if RxDBComboBox2.ItemIndex = 0 then
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


     ///******************* Proceso General Comprobante
     ///
     ///
     ///
     ///  ***********************************************

   end;


end;

procedure TFrmNFact_normal1.RxDBComboBox2PropertiesChange(Sender: TObject);
var
cero1 : string;
nume : integer;
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

procedure TFrmNFact_normal1.t1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin



if KEY = vk_escape  then
  begin
    t1.Clear;
    t2.Clear;
    t3.Clear;
    t4.Clear;
  end;
end;

procedure TFrmNFact_normal1.t3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  suma, ITBS, PRECIO_C, descc: currency;
  comision : double;
  begin

  if key = VK_ESCAPE then
    begin
      PanelCantidad.Visible := false;
      t3.Clear;
    end;
 if key = vk_return then
    begin
    datos.Zdetalle.Edit;

   if datos.ZdetalleITBS_ART.Value = 'S' then
      begin



      if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
                 PRECIO_C := DATOS.ZdetallePRECIO.Value;
           end;



         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               if ChkPrecio.Checked = true then
                  begin
                    PRECIO_C := DATOS.ZdetallePRECIO.Value / (datos.ZdetalleCANTIDAD.Value / DATOS.ZdetallePRECIO.Value );
                  end else begin
                        PRECIO_C := DATOS.ZdetallePRECIO.Value / (datos.ZdetalleCANTIDAD.Value);
                           end;
           end;

         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin

           if ChkPrecio.Checked = true then
                  begin
                      PRECIO_C := (DATOS.ZdetallePRECIO.Value) / (datos.ZdetalleCANTIDAD.Value /DATOS.ZdetallePRECIO.Value );
                  end else begin
                                PRECIO_C := (DATOS.ZdetallePRECIO.Value) / (datos.ZdetalleCANTIDAD.Value);
                           end;
           end;

           if ChkPrecio.Checked = true then
                  begin
                     datos.Zdetallecantidad.Value := (strtofloat(t3.Text)/PRECIO_C);
                  end else begin
                      datos.Zdetallecantidad.Value := strtofloat(t3.Text);
                           end;
        datos.ZdetalleITBS_ART.Value := 'S';
        datos.ZdetalleEX.Value := '';


         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

             if ibqrarticulospolitica.Value = 'fraccional' then
               begin

                                               with fraccionado do
                                                    begin
                                                      close;
                                                      sql.Clear;
                                                      sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
                                                      sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
                                                      sql.Add('where a.cod_arti =:pp');
                                                      params[0].Value := ibqrArticuloscod_art.Value;
                                                      open;
                                                    end;

                                                   partigrid.Visible := true;
                                                //   panel2.SetFocus;
                                                   fraccionado.First;
                                                   partigrid.SetFocus;

                                                           datos.ZdetallePRECIO.Value :=0.00;
                                                           datos.ZdetalleITBS.Value  := 0.00;
                                                           datos.ZdetalleTOTAL.Value := 0.00;


               end else begin
                 if ibqclientescomision.Value >0  then
                    begin
                 comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
                  datos.ZdetallePRECIO.Value := (ibqrArticuloscosto_pr.Value * (comision/100)) + ibqrArticuloscosto_pr.Value;
                    end else begin
                      datos.ZdetallePRECIO.Value :=  (t4.Value);
                    end;

                // Showmessage(''+FloatTOStr(datos.ZdetallePRECIO.Value));
                 //datos.ZdetallePRECIO.Value :=  (t4.Value);
                // showmessage(''+FloatToStr(datos.ZdetallePRECIO.Value));
                 datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
                 datos.ZdetalleTOTAL.Value := sTRtOfLOAT(T3.Text) * datos.ZdetallePRECIO.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleITBIS2.Value := datos.ZdetallePRECIO.Value;
             end;




           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin

           if ibqrarticulospolitica.Value = 'fraccional' then
               begin

                                               with fraccionado do
                                                    begin
                                                      close;
                                                      sql.Clear;
                                                      sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
                                                      sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
                                                      sql.Add('where a.cod_arti =:pp');
                                                      params[0].Value := ibqrArticuloscod_art.Value;
                                                      open;
                                                    end;

                                                   partigrid.Visible := true;
                                                //   panel2.SetFocus;
                                                   fraccionado.First;
                                                   partigrid.SetFocus;

                             datos.ZdetallePRECIO.Value :=0.00;
                             datos.ZdetalleITBS.Value  := 0.00;
                             datos.ZdetalleTOTAL.Value := 0.00;



               end else begin

             datos.ZdetallePRECIO.Value   := ((ibqrArticuloscosto_pr.Value * ((ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100))/100))) + ibqrArticuloscosto_pr.Value;//(t4.Value)-( t4.Value * (ibqclientescomision.Value/100));
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * sTRtOfLOAT(T3.Text);
             datos.ZdetalleITBS.Value   := ((t4.Value * sTRtOfLOAT(T3.Text)) * 0.18);
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);O.Value + datos.ZdetalleITBS.Value);
             datos.ZdetalleITBIS2.Value := (t4.Value)-( t4.Value * (ibqclientescomision.Value/100));
             end;
           end;

        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin

             if ibqrarticulospolitica.Value = 'fraccional' then
               begin

                                               with fraccionado do
                                                    begin
                                                      close;
                                                      sql.Clear;
                                                      sql.Add('select a.*, b.descripcion,b.unidad from particionado a');
                                                      sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
                                                      sql.Add('where a.cod_arti =:pp');
                                                      params[0].Value := ibqrArticuloscod_art.Value;
                                                      open;
                                                    end;

                                                   partigrid.Visible := true;
                                                //   panel2.SetFocus;
                                                   fraccionado.First;
                                                   partigrid.SetFocus;

                             datos.ZdetallePRECIO.Value :=0.00;
                             datos.ZdetalleITBS.Value  := 0.00;
                             datos.ZdetalleTOTAL.Value := 0.00;


               end else begin

             datos.ZdetallePRECIO.Value   := t4.Value - (t4.Value * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * sTRtOfLOAT(T3.Text);
             datos.ZdetalleITBS.Value   := ((t4.Value * sTRtOfLOAT(T3.Text)) * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;
            datos.ZdetalleANCHO.Value := (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.Text)/100)) * strtofloat(t3.Text);
             //datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
//             datos.ZdetallePRECIO.Value   := t4.Value - (t4.Value * 0.18);
//             datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * sTRtOfLOAT(T3.Text);
//             datos.ZdetalleITBS.Value   := ((t4.Value * sTRtOfLOAT(T3.Text)) * 0.18);
//             datos.ZdetalleTOTAL.Value  := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;


      end else begin


         datos.ZdetalleITBS_ART.Value  := 'N';
         datos.ZdetalleEX.Value        := 'E';
          if ibqrarticulospolitica.Value = 'fraccional' then
               begin
                     datos.ZdetallePRECIO.Value    := fraccionadoprecio1.Value;
               end else begin
                  datos.ZdetallePRECIO.Value    := t4.Value;

               end;

         datos.ZdetalleITBS.Value      := 0.00;
          if ibqrarticulospolitica.Value = 'fraccional' then
               begin
                    datos.ZdetalleTOTAL.Value     := datos.ZdetalleCANTIDAD.Value * fraccionadoprecio1.Value;
               end else begin

                    datos.ZdetalleTOTAL.Value     := datos.ZdetalleCANTIDAD.Value * t4.Value;
               end;
      end;



      end else begin

          //showmessage('');
         if ChkPrecio.Checked = true then
                  begin
                        datos.Zdetallecantidad.Value := strtofloat(t3.Text) / precio_c;
                  end else begin
                           datos.Zdetallecantidad.Value := strtofloat(t3.Text) ;
                           end;
         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
     //   datos.ZdetallePRECIO.Value    := t4.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
         datos.ZdetalleANCHO.Value := (datos.ZdetallePRECIO.Value * (StrToFloat(Descc_t.Text)/100)) * strtofloat(t3.Text);
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin

            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            descc := (descc + datos.zdetalle.FieldByName('ancho').Value);

            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;
            datos.ZdetalleANCHO.Value := datos.ZdetalleANCHO.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := descc;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin

               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               datos.FbqMaster_Factdescuento.Value := descc;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

        t1.clear;
        t2.Clear;
        t3.Clear;
        PanelCantidad.Visible := false;
        t4.Clear;
        ancho.Clear;
        edit9.Clear;
        alto.Clear;
        edit8.Clear;
        Topcion.Clear;
        cxButton9.Enabled := false;
        ChkPrecio.Checked := false;
        t3.Enabled := false;
         if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   barra.SetFocus;
                end else begin
                           barra1.SetFocus;
                         end;
        calcular.Enabled := false;

    end;


end;

procedure TFrmNFact_normal1.t4Exit(Sender: TObject);
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

procedure TFrmNFact_normal1.t4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    cxButton9.SetFocus;
  end;

if key = VK_LEFT then
  begin
    t3.SetFocus;
  end;
end;

procedure TFrmNFact_normal1.tDesc1Change(Sender: TObject);
begin
    cxButton33.SetFocus;
end;

 end.



