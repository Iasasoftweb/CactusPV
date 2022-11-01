unit Unit22;

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
  Vcl.Grids, Vcl.DBGrids, dxGDIPlusClasses, cxImage, cxLabel, cxDBLabel,
  Vcl.DBCGrids, jpeg, pngimage, GIFImg, vcl.fcimager, vcl.fcpanel,
  RxExtenders, dxBevel,  Vcl.Buttons,
  AdvPanel, AdvPicture, DBAdvPicture, CurvyControls, AdvSmoothPanel, cxTimeEdit, ShellAPI,
  AdvSmoothTouchKeyBoard, AdvTouchKeyboard, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu, System.ImageList;

type
  TFrmNFact = class(TForm)
    opmaster: TcxGroupBox;
    opdetalle: TcxGroupBox;
    dsmasterFACT: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label5: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label6: TLabel;
    Label7: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    t1: TcxTextEdit;
    t2: TcxTextEdit;
    t3: TcxTextEdit;
    t4: TcxCurrencyEdit;
    Label10: TLabel;
    Label11: TLabel;
    cxButton9: TcxButton;
    OpBuscarCLiente: TcxGroupBox;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesNOMBRES: TWideStringField;
    DsqCliente: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Edit1: TEdit;
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
    IbqClientesCODIGO: TIntegerField;
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
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxButton10: TcxButton;
    topcion: TcxTextEdit;
    numero_detalle: TZReadOnlyQuery;
    numero_detalleMAX: TIntegerField;
    linea: TEdit;
    PanelDesc: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    desc: TcxCurrencyEdit;
    Label17: TLabel;
    Label18: TLabel;
    cxButton3: TcxButton;
    Edit3: TEdit;
    panelcobro: TcxGroupBox;
    Label20: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    paginas1: TcxPageControl;
    page1: TcxTabSheet;
    page2: TcxTabSheet;
    page3: TcxTabSheet;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Label21: TLabel;
    Label22: TLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxButton4: TcxButton;
    master: TfrxDBDataset;
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
    RxDBComboBox1: TcxDBComboBox;
    cxComboBox1: TcxComboBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
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
    Opb: TcxRadioGroup;
    Edit4: TEdit;
    IbqClientesCOMISION: TFloatField;
    IbqClientesNUMEROPIN: TWideStringField;
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
    ancho: TcxTextEdit;
    alto: TcxTextEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    calcular: TcxButton;
    Edit5: TEdit;
    zDetallePrint: TZReadOnlyQuery;
    cat: TcxTextEdit;
    Panel1: TPanel;
    Edit6: TEdit;
    Label30: TLabel;
    cxButton6: TcxButton;
    cxGroupBox1: TcxGroupBox;
    B4: TcxButton;
    B1: TcxButton;
    B3: TcxButton;
    B6: TcxButton;
    b2: TcxButton;
    cerrar: TcxButton;
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
    HOLDFECHAVENCIMIENTO: TWideStringField;
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
    opradio: TcxRadioGroup;
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
    barra: TcxTextEdit;
    Label33: TLabel;
    DsqArticulos: TDataSource;
    series: TfrxDBDataset;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxDBTextEdit5: TcxDBTextEdit;
    Label26: TLabel;
    QUnidad: TZReadOnlyQuery;
    QUnidadCPID: TIntegerField;
    QUnidadNO_ART: TIntegerField;
    QUnidadUNIDAD_M: TIntegerField;
    QUnidadPRECIO1: TFloatField;
    QUnidadPRECIO2: TFloatField;
    QUnidadPRECIO3: TFloatField;
    LUnid: TcxLookupComboBox;
    DsQ_Unidad: TDataSource;
    QUnidadUNIDAD: TWideStringField;
    QUnidadPOS: TIntegerField;
    Edit8: TEdit;
    Edit9: TEdit;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosEXISTENCIA: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
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
    total: TcxDBCurrencyEdit;
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
    cxGrid6: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1MODELO: TcxGridDBColumn;
    cxGrid2DBTableView1MARCA: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid4DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid4DBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    Label32: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxImage1: TcxImage;
    Categorias: TZReadOnlyQuery;
    CategoriasCODCAT: TIntegerField;
    CategoriasIMAGEN: TBlobField;
    CategoriasEXTFOTO: TWideStringField;
    CategoriasOPCION: TWideStringField;
    DSCategoria: TDataSource;
    MantArti22: TZReadOnlyQuery;
    MantArti22COD_ART: TIntegerField;
    MantArti22CODIGOTXT: TWideStringField;
    MantArti22ARTICULO: TWideStringField;
    MantArti22MODELO: TWideStringField;
    MantArti22MARCA: TWideStringField;
    MantArti22COLOR: TWideStringField;
    MantArti22COD_CAT: TIntegerField;
    MantArti22STOCK_M: TFloatField;
    MantArti22COSTO: TFloatField;
    MantArti22EXISTENCIA1: TFloatField;
    MantArti22ITBIS: TWideStringField;
    MantArti22ABREVIADO: TWideStringField;
    MantArti22COD_BARRA: TWideStringField;
    MantArti22USUARIOMOD: TIntegerField;
    MantArti22FECHA_MOD: TDateField;
    MantArti22POLITICA: TWideStringField;
    MantArti22COSTO_PR: TFloatField;
    MantArti22IMAGEN: TBlobField;
    MantArti22CLA_COSTO: TWideStringField;
    MantArti22CLA_PRECIO: TWideStringField;
    MantArti22PRECIO_A: TFloatField;
    MantArti22PRECIO_B: TFloatField;
    MantArti22PRECIO_D: TFloatField;
    MantArti22ESTADO: TIntegerField;
    MantArti22EXTFOTO: TWideStringField;
    DsArti: TDataSource;
    MantArti22STOCK_MA: TFloatField;
    MantArti22COD_SERIE: TIntegerField;
    MantArti22COD_ALM: TIntegerField;
    MantArti22COD_PROV1: TIntegerField;
    MantArti22COD_UV: TIntegerField;
    MantArti22DESCRIPCIONWEB: TWideMemoField;
    MantArti22PUBLICARWEB: TIntegerField;
    MantArti22CODIGOBARRA: TWideStringField;
    MantArti22EMPAQUE: TIntegerField;
    MantArti22CANT_EMPA: TFloatField;
    MantArti22COD_PROV2: TIntegerField;
    MantArti22COD_PROV3: TIntegerField;
    MantArti22REFERENCIA: TWideStringField;
    MantArti22CONDICION: TIntegerField;
    MantArti22OPCION_SABOR: TWideStringField;
    DBCtrlGrid2: TDBCtrlGrid;
    CategoriasCAT: TWideStringField;
    PanelSabores: TcxGroupBox;
    qgustos: TZReadOnlyQuery;
    dSgUSTOS: TDataSource;
    cxDBLabel5: TcxDBLabel;
    dxBevel1: TdxBevel;
    cxGrid7DBTableView1: TcxGridDBTableView;
    cxGrid7Level1: TcxGridLevel;
    cxGrid7: TcxGrid;
    DsFQgustos: TDataSource;
    cxGrid7DBTableView1DESCRIPCION: TcxGridDBColumn;
    BuscaDetalle: TZReadOnlyQuery;
    BuscaDetalleNO_FACT: TIntegerField;
    BuscaDetalleNO_FACT1: TWideStringField;
    BuscaDetalleMASTERID: TIntegerField;
    BuscaDetalleCANTIDAD: TFloatField;
    BuscaDetallePRECIO: TFloatField;
    BuscaDetalleIMPUESTO: TFloatField;
    BuscaDetalleITBS: TFloatField;
    BuscaDetalleITBIS2: TFloatField;
    BuscaDetalleTOTAL: TFloatField;
    BuscaDetalleCOD_ART: TWideStringField;
    BuscaDetalleUNID: TWideStringField;
    BuscaDetalleCOMBO: TWideStringField;
    BuscaDetalleLINEA: TIntegerField;
    BuscaDetalleARTICULOID: TIntegerField;
    BuscaDetalleARTICULO: TWideStringField;
    cxButton15: TcxButton;
    cxButton14: TcxButton;
    cxButton13: TcxButton;
    numeroSabor: TZReadOnlyQuery;
    numeroSaborMAX: TIntegerField;
    SaborLinea: TZReadOnlyQuery;
    SaborLineaMAX: TIntegerField;
    qgustosCOD_ART: TIntegerField;
    qgustosCODIGOTXT: TWideStringField;
    qgustosARTICULO: TWideStringField;
    qgustosMODELO: TWideStringField;
    qgustosMARCA: TWideStringField;
    qgustosCOLOR: TWideStringField;
    qgustosCOD_CAT: TIntegerField;
    qgustosCOD_SERIE: TIntegerField;
    qgustosCOD_ALM: TIntegerField;
    qgustosCOSTO: TFloatField;
    qgustosCOD_PROV1: TIntegerField;
    qgustosEXISTENCIA1: TFloatField;
    qgustosITBIS: TWideStringField;
    qgustosABREVIADO: TWideStringField;
    qgustosCOD_BARRA: TWideStringField;
    qgustosCOD_UV: TIntegerField;
    qgustosUSUARIOMOD: TIntegerField;
    qgustosFECHA_MOD: TDateField;
    qgustosPOLITICA: TWideStringField;
    qgustosCOSTO_PR: TFloatField;
    qgustosIMAGEN: TBlobField;
    qgustosCLA_COSTO: TWideStringField;
    qgustosCLA_PRECIO: TWideStringField;
    qgustosPRECIO_A: TFloatField;
    qgustosPRECIO_B: TFloatField;
    qgustosPRECIO_D: TFloatField;
    qgustosESTADO: TIntegerField;
    qgustosEXTFOTO: TWideStringField;
    qgustosDESCRIPCIONWEB: TWideMemoField;
    qgustosPUBLICARWEB: TIntegerField;
    qgustosCODIGOBARRA: TWideStringField;
    qgustosEMPAQUE: TIntegerField;
    qgustosCANT_EMPA: TFloatField;
    qgustosCOD_PROV2: TIntegerField;
    qgustosCOD_PROV3: TIntegerField;
    qgustosREFERENCIA: TWideStringField;
    qgustosCONDICION: TIntegerField;
    qgustosOPCION_SABOR: TWideStringField;
    qgustosSTOCK_MA: TFloatField;
    qgustosSTOCK_M: TFloatField;
    qgustosFACTOR: TFloatField;
    qgustosTIPO_PRODUCTOS: TWideStringField;
    qgustosFACTURABLE: TIntegerField;
    BT_gustos: TcxButton;
    cxGroupBox5: TcxGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBComboBox2: TcxDBComboBox;
    cxButton5: TcxButton;
    cxButton8: TcxButton;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBComboBox3: TcxDBComboBox;
    cxDBTextEdit8: TcxDBTextEdit;
    cxButton11: TcxButton;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    AdvPanel2: TAdvPanel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    AdvPanel1: TAdvPanel;
    cxDBLabel6: TcxDBLabel;
    Saborespanel: TDBCtrlGrid;
    fcPanel1: TfcPanel;
    cxDBLabel4: TcxDBLabel;
    MantArti22FACTOR: TFloatField;
    MantArti22TIPO_PRODUCTOS: TWideStringField;
    MantArti22FACTURABLE: TIntegerField;
    MantArti22STOCK: TFloatField;
    MantArti22OPCIONES_BOLA: TWideStringField;
    cxDBLabel3: TcxDBLabel;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    Label16: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    MantArti22PARTICIONADO: TWideStringField;
    MantArti22COMPUESTO: TWideStringField;
    cxButton12: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    cxGrid7DBTableView1Column1: TcxGridDBColumn;
    cxButton22: TcxButton;
   // procedure RxDBComboBox2Change(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
//    procedure Edit1Change(Sender: TObject);
//    procedure cxGridDBTableView1DblClick(Sender: TObject);
//    procedure Edit2Change(Sender: TObject);
///    procedure cxGridDBTableView2DblClick(Sender: TObject);
   // procedure vi(DataSet: TDataSet);

    procedure cxButton10Click(Sender: TObject);
//    procedure RxDBComboBox1Change(Sender: TObject);
//    procedure t4Exit(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
//    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
//    procedure t3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure B6Click(Sender: TObject);
//    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
     // Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
//    procedure cxDBCurrencyEdit4KeyDown(Sender: TObject; var Key: Word;
  //    Shift: TShiftState);
    procedure B3Click(Sender: TObject);
//    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
//    procedure t4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure t1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure cxComboBox1PropertiesChange(Sender: TObject);
//    procedure FormShow(Sender: TObject);
    procedure ç(Sender: TObject);
    procedure B1Click(Sender: TObject);
//    procedure cxDBTextEdit6PropertiesChange(Sender: TObject);
    procedure cerrarClick(Sender: TObject);
    procedure calcularClick(Sender: TObject);
    procedure anchoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure altoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton6Click(Sender: TObject);
//    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
  //    Shift: TShiftState);
//    procedure Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure cxRadioGroup1Click(Sender: TObject);
//    procedure cxTextEdit2PropertiesChange(Sender: TObject);
//    procedure cxGrid4DBTableView1DblClick(Sender: TObject);
//    procedure RxDBComboBox2PropertiesChange(Sender: TObject);
//    procedure cxDBTextEdit4KeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
//    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure barraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
  //    Shift: TShiftState);
//    procedure LUnidPropertiesChange(Sender: TObject);
//    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
//    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
    procedure c10Click(Sender: TObject);
//    procedure cxDBImage1Click(Sender: TObject);
//    procedure DBCtrlGrid1Click(Sender: TObject);
//    procedure DBCtrlGrid2Click(Sender: TObject);
//    procedure fcPanel2Click(Sender: TObject);
//    procedure fcDBImager2Click(Sender: TObject);
  //  procedure fcPanel3Click(Sender: TObject);
    procedure IMGBotClick(Sender: TObject);
//    procedure cxDBLabel2Click(Sender: TObject);
//    procedure cxDBLabel1Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
//    procedure fcPanel1Click(Sender: TObject);
    procedure BT_gustosClick(Sender: TObject);
    procedure AdvPanel1Click(Sender: TObject);
//    procedure cxDBLabel6Click(Sender: TObject);
    procedure AdvPanel2Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure fcDBImager3Click(Sender: TObject);
    procedure fcDBImager2Click(Sender: TObject);
    procedure fcDBImager1Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
//    procedure fcDBImager1Click(Sender: TObject);
//    procedure cxDBLabel4Click(Sender: TObject);



    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNFact: TFrmNFact;

implementation
 uses
 unit2, unit19, tools, Unit26, Unit21, Unit3, Unit31;
{$R *.dfm}

procedure TFrmNFact.AdvPanel1Click(Sender: TObject);
begin

WITH mantarti22 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MTARTUCULOS');
    sql.Add('where cod_cat =:op1');
    //SQL.Add('AND OPCION_SABOR =:OP2');
    params[0].Value := categoriascodcat.Value;
   // PARAMS[1].Value :='NO';
    open;
  end;

  cxGroupBox4.Caption := 'Productos'+' de '+categoriascat.Value;
end;

procedure TFrmNFact.AdvPanel2Click(Sender: TObject);
begin

if (cxDBLabel5.Caption = 'SI') AND (cxDBLabel3.Caption = 'NO')then begin

WITH QGUSTOS DO
  BEGIN
    close;
    sql.Clear;
    sql.Add('select * from MTARTUCULOS');
    sql.Add('where cod_cat =:op1');
    params[0].Value := 15;
    open;
  END;

  saborespanel.VISIBLE := TRUE;
  cxButton16.Enabled := true;
    cxGroupBox3.Enabled := false;
  cxGroupBox4.Caption := 'Sabores de Yogurt';

  if cxDBTextEdit1.Text = '' then
  begin

  end else begin
  datos.Zdetalle.Open;
  datos.ZdetalleARTICULOID.FocusControl;

  with numero_detalle do
  begin
    close;
    open;
  end;

  datos.Zdetalle.Insert;
  datos.ZdetalleNO_FACT.Value := numero_detallemax.Value + 1;
  datos.ZdetalleCANTIDAD.Value := 1;
  datos.ZdetalleARTICULOID.Value := mantarti22cod_art.Value;
  datos.ZdetallePRECIO.Value := MantArti22precio_a.Value;
  datos.zdetalleARTICULO.Value := MantArti22Articulo.Value;

  if MantArti22POLITICA.Value ='Combo' then
    begin
      datos.ZdetalleCOMBO.Value := 'SI'
    end else begin
      datos.ZdetalleCOMBO.Value := 'NO'
    end;

  datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  datos.Zdetalle.Post;
  cxDBCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

end;

//******* Yogurt 11

end;


if (cxDBLabel5.Caption = 'NO') AND (cxDBLabel3.Caption = 'SI')then begin

WITH QGUSTOS DO
  BEGIN
    close;
    sql.Clear;
    sql.Add('select * from MTARTUCULOS');
    sql.Add('where cod_cat =:op1');
    params[0].Value := 16;
    open;
  END;

  saborespanel.VISIBLE := TRUE;
  cxButton16.Enabled := true;
    cxGroupBox3.Enabled := false;
  cxGroupBox4.Caption := 'Sabores en Bolas';

  if cxDBTextEdit1.Text = '' then
  begin

  end else begin
  datos.Zdetalle.Open;
  datos.ZdetalleARTICULOID.FocusControl;

  with numero_detalle do
  begin
    close;
    open;
  end;

  datos.Zdetalle.Insert;
  datos.ZdetalleNO_FACT.Value := numero_detallemax.Value + 1;
  datos.ZdetalleCANTIDAD.Value := 1;
  datos.ZdetalleARTICULOID.Value := mantarti22cod_art.Value;
  datos.ZdetallePRECIO.Value := MantArti22precio_a.Value;
  datos.zdetalleARTICULO.Value := MantArti22Articulo.Value;

  if MantArti22POLITICA.Value ='Combo' then
    begin
      datos.ZdetalleCOMBO.Value := 'SI'
    end else begin
      datos.ZdetalleCOMBO.Value := 'NO'
    end;

  datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  datos.Zdetalle.Post;
  cxDBCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

end;

//******* Yogurt 11

end;

IF (cxDBLabel5.Caption = 'NO') AND (cxDBLabel3.Caption = 'NO') THEN begin
  if cxDBTextEdit1.Text = '' then
  begin

  end else begin
  datos.Zdetalle.Open;
  datos.ZdetalleARTICULOID.FocusControl;



with numero_detalle do
  begin
    close;
    open;
  end;

  datos.Zdetalle.Insert;
  datos.ZdetalleNO_FACT.Value := numero_detallemax.Value + 1;
  datos.ZdetalleCANTIDAD.Value := 1;
  datos.ZdetalleARTICULOID.Value := mantarti22cod_art.Value;
  datos.ZdetallePRECIO.Value := MantArti22precio_a.Value;
  datos.zdetalleARTICULO.Value := MantArti22Articulo.Value;

  if MantArti22POLITICA.Value ='Combo' then
    begin
      datos.ZdetalleCOMBO.Value := 'SI'
    end else begin
      datos.ZdetalleCOMBO.Value := 'NO'
    end;

  datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  datos.Zdetalle.Post;
  cxDBCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  end;
end;
end;

procedure TFrmNFact.altoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    begin
     calcular.SetFocus;
    end;

end;

procedure TFrmNFact.anchoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = vk_return then
    begin
      alto.SetFocus;
    end;

end;

procedure TFrmNFact.B1Click(Sender: TObject);
var
cero : string;
begin
with FrmNFact.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;

 datos.FbqMaster_Fact.Open;
 //FrmNFact.zqusuario.Open;
 FrmNFact.ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numerogen_id.Value;
// datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numero1gen_id.Value;
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
     FrmNFact.RxDBComboBox1.ItemIndex := 0;

     FrmNFact.RxDBComboBox1.Enabled := true;
     //FrmNFact.RxDBComboBox2.Enabled := true;
     FrmNFact.cxDBComboBox1.Enabled := true;

    // FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact.cxDBComboBox1.ItemIndex := 1;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact.zqusuarionombres_emp.Value;
     DATOS.FbqMaster_FactCLIENTEID.Value := 3;
     datos.FbqMaster_FactCLIENTENOMBRE.Value := 'AL PORTADOR';
     datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
     datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;
     datos.FbqMaster_FactMONTOPAGO.Value := 0.00;
     datos.FbqMaster_FactHORA.Value := time();
    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Pedido';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Imprimir Ticket';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'NUEVO';
     FrmNFact.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);

     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
 //    FrmNfact.cxButton5.Enabled := false;

categorias.Open;
Label6.Visible := false;
cxDBTextEdit5.Visible := false;
cxButton2.Visible := false;
Label7.Visible := false;
cxDBTextEdit3.Visible := false;
Label5.Visible := false;
cxDBTextEdit4.Visible := false;
cxButton1.Visible := false;
Label3.Visible := false;
cxDBComboBox1.Visible := false;
Label3.Visible := false;
 bt_gustos.Enabled := false;

cxButton12.Enabled := true;
cxButton13.Enabled := true;
cxButton14.Enabled := true;
cxButton15.Enabled := true;

//cxgrid1.Height := 291;
//cxgrid7.Visible := false;
end;

procedure TFrmNFact.B2Click(Sender: TObject);
begin

if datos.FbqMaster_FactROTULO.Value ='FACTURACION' then
  BEGIN
if edit3.Text = 'NUEVO' then
  BEGIN
with FrmNFact.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, -1) from RDB$DATABASE');
     open;
  end;
  END;

    cxGroupBox3.Enabled := true;

  datos.FbqMaster_Fact.CancelUpdates;
  datos.Zdetalle.CancelUpdates;
  datos.ZqSaborFact.CancelUpdates;


  datos.Data.Rollback;
   bt_gustos.Enabled := false;
  datos.Zdetalle.Close;
  datos.FbqMaster_Fact.Close;
  Qempleados.Close;
  datos.ZqSaborFact.close;
  b1.Enabled := true;
  cerrar.Enabled := true;
  categorias.CLOSE;
  MantArti22.Close;
  qgustos.Close;
  opmaster.Enabled := false;
  t1.clear;
  t2.Clear;
  t3.Clear;
  t4.Clear;
  ancho.Clear;
  alto.Clear;
  Topcion.Clear;

  b1.Enabled := true;
  b2.Enabled := false;
  b3.Enabled := false;
  b6.Enabled := false;
  b4.Enabled := false;

  cxButton12.Enabled := false;
  cxButton13.Enabled := false;
  cxButton14.Enabled := false;
  cxButton15.Enabled := false;

  //cxgrid1.Height := 291;
//  cxgrid7.Visible := false;
   // close;
  END;


if datos.FbqMaster_FactROTULO.Value ='COTIZACION' then
  BEGIN
 // showmessage('');
if edit3.Text = 'NUEVO' then
  BEGIN
with FrmNFact.numero1 do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(COTI_GEN, -1) from RDB$DATABASE');
     open;
  end;
  END;


  datos.FbqMaster_Fact.CancelUpdates;
  datos.Zdetalle.CancelUpdates;
  datos.ZqSaborFact.CancelUpdates;
  datos.Data.Rollback;

  datos.Zdetalle.Close;
  datos.FbqMaster_Fact.Close;
  datos.ZqSaborFact.close;

  Qempleados.Close;
  b1.Enabled := true;
  cerrar.Enabled := true;

  opmaster.Enabled := false;
  t1.clear;
  t2.Clear;
  t3.Clear;
  t4.Clear;
  ancho.Clear;
  alto.Clear;
  Topcion.Clear;

  b1.Enabled := true;
  b2.Enabled := false;
  b3.Enabled := false;
  b6.Enabled := false;
  b4.Enabled := false;
    close;
  END;

end;

procedure TFrmNFact.B3Click(Sender: TObject);
begin

if DATOS.FbqMaster_FactROTULO.Value ='FACTURACION' then
 BEGIN

if total.Value = 0.00 then
  begin
    Showmessage('Esta Factura no Esta Completa');
  end else begin

 FrmNFact.b1.Enabled := false;
 FrmNFact.b2.Enabled := false;
 FrmNFact.b3.Enabled := false;
 FrmNFact.b4.Enabled := false;
// FrmNFact.b5.Enabled := false;
 FrmNFact.b6.Enabled := false;
 opmaster.Enabled := false;
 opdetalle.Enabled := false;

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
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
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
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
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
t2.Clear;
t3.Clear;
t4.Clear;
opmaster.Enabled := false;

b1.Enabled := true;
cerrar.Enabled := true;
edit5.clear;
  bt_gustos.Enabled := false;

cxButton12.Enabled := false;
cxButton13.Enabled := false;
cxButton14.Enabled := false;
cxButton15.Enabled := false;

 categorias.CLOSE;
  MantArti22.Close;
  qgustos.Close;
// datos.ZInventario.Close;
DATOS.FbqMaster_Fact.Close;
DATOS.Zdetalle.Close;
datos.NCF.Close;
ncf.Close;
hold.Close;
hold.Params[0].Value := 'HOLD';
HOLD.open;
frmConsultaFact.facturasEmitidas.Refresh;
close;
  end;
end;


if DATOS.FbqMaster_FactROTULO.Value ='COTIZACION' then
 BEGIN

 if total.Value = 0.00 then
  begin
    Showmessage('Esta Cotización no Esta Completa');
  end else begin


//panelcobro.Visible := true;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text       := 'IMPRESA';
datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';




 FrmNFact.b1.Enabled := false;
 FrmNFact.b2.Enabled := false;
 FrmNFact.b3.Enabled := false;
 FrmNFact.b4.Enabled := false;
// FrmNFact.b5.Enabled := false;
 FrmNFact.b6.Enabled := false;
 opmaster.Enabled := false;
 opdetalle.Enabled := false;

 if application.MessageBox ('Deseas Imprimir Este Recibo Conduce','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin
             recibo1.variables['titulos']:=quotedstr('COTIZACION');
             recibo1.PrepareReport(true);
             recibo1.ShowPreparedReport;

         end;




datos.ZInventario.ApplyUpdates;
DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;

         datos.data.Commit;
         PANELCOBRO.Visible := FALSE;
          T1.ClEAR;
t2.Clear;
t3.Clear;
t4.Clear;

CLOSE;



  end;
end;

end;

procedure TFrmNFact.B4Click(Sender: TObject);
begin
if total.Value = 0.00 then
  begin
    Showmessage('Esta Factura no Esta Completa');
  end else begin

datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text :='HOLD';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
datos.FbqMaster_Factterminal.Text := 'FACTURACION';
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




 PANELCOBRO.Visible := FALSE;

T1.ClEAR;
t2.Clear;
t3.Clear;
t4.Clear;
opmaster.Enabled := false;
  bt_gustos.Enabled := false;
DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;
datos.data.Commit;

 datos.ZInventario.Close;
DATOS.FbqMaster_Fact.Close;
DATOS.Zdetalle.Close;



hold.Close;
hold.Params[0].Value := 'HOLD';
HOLD.open;

cerrar.Enabled := true;
edit5.clear;
b1.Enabled := true;
b2.Enabled := false;
b3.Enabled := false;
b6.Enabled := false;
b4.Enabled := false;

cxButton12.Enabled := false;
cxButton13.Enabled := false;
cxButton14.Enabled := false;
cxButton15.Enabled := false;

end;

end;

procedure TFrmNFact.B6Click(Sender: TObject);
begin
if total.Value = 0.00 then
  begin
    Showmessage('Esta hay total facturado para aplicar descuento');
  end else begin

paneldesc.Visible := true;
  end;
end;

procedure TFrmNFact.barraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  iResult : integer;
  begin

begin
if key = vk_return then
  begin
  if TryStrToInt( barra.Text[1], iResult) then
    begin
      with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,sum(b.entrada - b.salida) Existencia');
                sql.Add('from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                sql.Add('where a.codigobarra like '+#39+'%'+BARRA.Text+'%'+#39);
                sql.Add('group by a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis');
                open;
              end;

              if IbqRArticulos.RecordCount = 0 then
                begin
                  showmessage('**Articulo no Existe**');
                end else begin
                if datos.FbqMaster_FactROTULO.Value = 'FACTURACION' then
                  begin
                   //**** fACTURACION ****

                      if ibqRarticulospolitica.Value = 'Combo' then
                          begin
                              FrmNFact.t1.Text := ibqrArticuloscodigoTXT.Value;
                              FrmNFact.t2.Text := ibqrArticulosarticulo.Value;

                              FrmNFact.topcion.Text := 'COM';
                              FrmNFact.cxButton9.Enabled := true;

                        end ELSE if ibqrarticulospolitica.value = 'Producto' then
                              BEGIN

                                    if (ibqrarticulosexistencia.Value =0) and (datos.ZUconfiguracionEXISTENCIAFACT.Value = 2)then
                                        begin
                                            Showmessage('** Este Articulo no tiene existencia **');

                                        end else begin

                                              with FrmNfact.QUnidad do
                                                    begin
                                                      close;
                                                      sql.Clear;
                                                      sql.Add('select a.*, b.unidad,b.pos from CONTROL_PRECIOS a');
                                                      sql.Add('left join unidad_m b On a.unidad_m = b.cod_unidad_m');
                                                      sql.Add('where NO_ART =:pp');
                                                      sql.Add('order by b.pos');
                                                      params[0].Value := ibqrArticuloscod_art.Value;
                                                      open;
                                                    end;


                                              FrmNFact.t1.Text := ibqrArticuloscodigoTXT.Value;
                                              FrmNFact.t2.Text := ibqrArticulosarticulo.Value;
                                              FrmnFact.Edit8.Text := ibqrArticulositbis.Value;
                                              FrmNFact.LUnid.ItemIndex := -1;
                                              FrmNFact.LUnid.ItemIndex := 0;
                                              FrmNFact.t3.Text := '1';


                                              FrmNFact.topcion.Text := 'ART';
                                              FrmNFact.cxButton9.Enabled := true;
                                              FrmNFact.cxButton9.SetFocus;
                                          end;
                        END;

                   //**** fIN





                  if datos.FbqMaster_FactROTULO.Value = 'COTIZACION' then
                  begin


     if ibqRarticulospolitica.Value = 'Combo' then
  begin

FrmNFact.t1.Text := ibqrArticuloscodigoTXT.Value;
FrmNFact.t2.Text := ibqrArticulosarticulo.Value;

if ibqrArticuloscod_cat.Value = 2 then
  begin

     FrmNFact.ancho.Text  := '0.00';
     FrmNFact.alto.Text   := '0.00';
     FrmNFact.ancho.Properties.ReadOnly := false;
     FrmNFact.alto.Properties.ReadOnly := false;
     FrmNFact.t3.Properties.ReadOnly := true;
     FrmNFact.calcular.Enabled := true;
     FrmNFact.cat.Text := '2';
   end;

if ibqrArticuloscod_cat.Value <> 2 then begin
     FrmNFact.ancho.Text  := '0.00';
     FrmNFact.alto.Text   := '0.00';
     FrmNFact.ancho.Properties.ReadOnly :=true;
     FrmNFact.alto.Properties.ReadOnly := true;
     FrmNFact.t3.Properties.ReadOnly := FALSE;
     FrmNFact.calcular.Enabled := false;
     FrmNFact.cat.Text := '0';
      FrmNFact.t3.SetFocus;
    end;


FrmNFact.topcion.Text := 'COM';
FrmNFact.cxButton9.Enabled := true;
CLOSE;


  end ELSE if ibqrarticulospolitica.value = 'Producto' then
  BEGIN


FrmNFact.t1.Text := ibqrArticuloscodigoTXT.Value;
FrmNFact.t2.Text := ibqrArticulosarticulo.Value;

if ibqrArticuloscod_cat.Value = 2 then
  begin
     FrmNFact.ancho.Text  := '0.00';
     FrmNFact.alto.Text   := '0.00';

     FrmNFact.ancho.Properties.ReadOnly := false;
     FrmNFact.alto.Properties.ReadOnly := false;
     FrmNFact.t3.Properties.ReadOnly := true;
     FrmNFact.calcular.Enabled := true;
     FrmNFact.cat.Text := '2';
   end else begin
     FrmNFact.ancho.Text  := '0.00';
     FrmNFact.alto.Text   := '0.00';
     FrmNFact.ancho.Properties.ReadOnly := true;
     FrmNFact.alto.Properties.ReadOnly := true;
     FrmNFact.t3.Properties.ReadOnly := false;
     FrmNFact.calcular.Enabled := false;
     FrmNFact.cat.Text := '0';
     FrmNFact.t3.SetFocus;


   end;

FrmNFact.topcion.Text := 'ART';
FrmNFact.cxButton9.Enabled := true;


END;
                  end;
                  end;

                end;


            BARRA.Clear;

    end
  else
    begin
    buscararticulos.Visible := true;
    with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,sum(b.entrada - b.salida) Existencia');
                sql.Add('from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                sql.Add('where a.articulo like '+#39+'%'+BARRA.Text+'%'+#39);
                sql.Add('group by a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis');
                open;
              end;
              cxgrid6.setfocus;

    end;
     end;
     end;
  end;

procedure TFrmNFact.cxButton10Click(Sender: TObject);
begin

if (cxDBTextEdit4.Text ='') and (cxDBTextEdit3.Text = '')then
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
end;

procedure TFrmNFact.cxButton12Click(Sender: TObject);
begin
ShellExecute(FrmNFact.Handle,nil,PChar('c:\windows\System32\calc.exe'),'','',SW_SHOWNORMAL);
{if datos.ZdetalleCANTIDAD.Value = 1 then
        begin

        end else begin
               datos.Zdetalle.edit;
               datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value - 1;
               datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
               datos.Zdetalle.Post;
               cxDBCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
        end;}

end;

procedure TFrmNFact.cxButton13Click(Sender: TObject);
begin
datos.Zdetalle.Delete;
datos.Zdetalle.edit;
datos.Zdetalle.Post;
cxDBCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
end;

procedure TFrmNFact.cxButton14Click(Sender: TObject);
begin
datos.Zdetalle.Next;
end;

procedure TFrmNFact.cxButton15Click(Sender: TObject);
begin
datos.Zdetalle.Prior;
end;

procedure TFrmNFact.cxButton16Click(Sender: TObject);
begin
saborespanel.Visible := false;
cxButton16.Enabled := false;
  cxGroupBox3.Enabled := true;
end;

procedure TFrmNFact.cxButton1Click(Sender: TObject);
begin

ibqclientes.Close;
ibqclientes.Open;
OpbuscarCliente.Visible := true;
edit1.SetFocus;
edit4.Text := '1';
end;

procedure TFrmNFact.cxButton22Click(Sender: TObject);
begin
{if teclado.Visible = true then
   begin
       teclado.Visible := false;
   end else begin
       teclado.Visible := true;

   end;}
end;

procedure TFrmNFact.cxButton3Click(Sender: TObject);
begin

datos.FbqMaster_Fact.Edit;
datos.FbqMaster_FactPOGXITBS.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
datos.FbqMaster_FactMONTO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0] - cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
datos.FbqMaster_FactDESCUENTO.Value := desc.Value;
datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value + datos.FbqMaster_FactPOGXITBS.Value) - datos.FbqMaster_Factdescuento.Value;

//datos.FbqMaster_FactMONTO.Value     := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
//datos.FbqMaster_FactPOGXITBS.Value  := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
//datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value + datos.FbqMaster_FactPOGXITBS.Value) - datos.FbqMaster_Factdescuento.Value;

desc.Clear;
cxTextEdit1.Clear;
paneldesc.Visible := false;

end;

procedure TFrmNFact.cxButton4Click(Sender: TObject);
begin



//frmFact.facturasEmitidas.Close;
//frmFact.facturasEmitidas.open;
//CLOSE;

end;

procedure TFrmNFact.BT_gustosClick(Sender: TObject);
begin
WITH QGUSTOS DO
  BEGIN
    close;
    sql.Clear;
    sql.Add('select * from MTARTUCULOS');
    sql.Add('where cod_cat =:op1');
    SQL.Add('AND OPCION_SABOR =:OP2');
    params[0].Value := 11;
    PARAMS[1].Value :='SI';
    open;
  END;
  // cxGrid1.Height := 198;
  // cxgrid7.Visible := true;
   PanelSabores.Caption := 'Gusto Yogurt'+' '+IntTostr(datos.ZdetalleNO_FACT.Value)+' '+datos.ZdetalleARTICULO.Value;
   PANELSABORES.VISIBLE := TRUE;

end;

procedure TFrmNFact.cxButton6Click(Sender: TObject);
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

procedure TFrmNFact.cxButton6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    t4.SetFocus;
  end;
end;

procedure TFrmNFact.cxButton7Click(Sender: TObject);
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

procedure TFrmNFact.c10Click(Sender: TObject);
var
cero : string;
begin
with FrmNFact.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;

 datos.FbqMaster_Fact.Open;
 //FrmNFact.zqusuario.Open;
 FrmNFact.ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numerogen_id.Value;
// datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numero1gen_id.Value;
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
     FrmNFact.RxDBComboBox1.ItemIndex := 0;

     FrmNFact.RxDBComboBox1.Enabled := true;
     //FrmNFact.RxDBComboBox2.Enabled := true;
     FrmNFact.cxDBComboBox1.Enabled := true;

    // FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact.cxDBComboBox1.ItemIndex := 1;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact.zqusuarionombres_emp.Value;
     DATOS.FbqMaster_FactCLIENTEID.Value := 3;
     datos.FbqMaster_FactCLIENTENOMBRE.Value := 'AL PORTADOR';
     datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
     datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;
    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Pedido';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Enviar Pedido [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'NUEVO';
     FrmNFact.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);

     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
 //    FrmNfact.cxButton5.Enabled := false;

categorias.Open;
Label6.Visible := true;
cxDBTextEdit5.Visible := true;
cxButton2.Visible := true;
Label7.Visible := true;
cxDBTextEdit3.Visible := true;
Label5.Visible := true;
cxDBTextEdit4.Visible := true;
cxButton1.Visible := true;
Label3.Visible := true;
cxDBComboBox1.Visible := true;
Label3.Visible := true;
  bt_gustos.Enabled := false;

cxButton12.Enabled := true;
cxButton13.Enabled := true;
cxButton14.Enabled := true;
cxButton15.Enabled := true;

//cxgrid1.Height := 291;
//  cxgrid7.Visible := false;

end;

procedure TFrmNFact.calcularClick(Sender: TObject);
begin
panel1.Visible := true;
edit6.Text := '1';
edit6.SetFocus;

end;

procedure TFrmNFact.ç(Sender: TObject);
begin
ibqclientes.Close;
ibqclientes.Open;
OpbuscarEMPLEADO.Visible := true;
edit2.SetFocus;
edit4.Text := '2';

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

procedure TFrmNFact.cerrarClick(Sender: TObject);
begin
categorias.CLOSE;
  MantArti22.Close;
  qgustos.Close;
  datos.ZqSaborFact.Close;
  datos.ZqSaborFact.Close;

  cxButton12.Enabled := false;
  cxButton13.Enabled := false;
  cxButton14.Enabled := false;
  cxButton15.Enabled := false;
  bt_gustos.Enabled := false;
  cxGroupBox3.Enabled := true;
close;
end;

procedure TFrmNFact.cxButton9Click(Sender: TObject);
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin
TRY

//if  AND
IF (T4.Value < QUNIDAD2PRECIO1.Value) OR (T4.Value > Qunidad2precio2.Value)  then
  BEGIN

      ShowMEssage('** No esta autorizado para este PRECIO **');
      t4.SetFocus;
  END ELSE BEGIN


datos.Zdetalle.Open;

with ibqigual do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo, c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   sql.Add('and a.cod_art =:ppp2');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   params[1].Value := t1.Text;
   open;
 end;

 if ibqigual.RecordCount = 1 then
    begin
       datos.Zdetalle.Edit;
       datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + StrToFloat(t3.Text);

if edit8.Text ='1' then
      begin
         datos.ZdetalleITBS_ART.Value := 'S';
         datos.ZdetalleEX.Value := '';
         datos.ZdetallePRECIO.Value :=(t4.Value - (t4.Value * datos.ZUconfiguracionITBIS_D.Value));
         datos.ZdetalleITBS.Value  := datos.ZdetalleCANTIDAD.Value * (t4.Value * datos.ZUconfiguracionITBIS_D.Value);
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + (t4.Value * datos.ZUconfiguracionITBIS_D.Value));
      end else begin

        datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
         datos.ZdetallePRECIO.Value    := t4.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;



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

 end else begin

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
stexto := t1.Text;
datos.ZdetalleUNIDADID.Value := StrToInt(edit9.Text);


    datos.ZdetalleITBS.Value      := 0.00;
    datos.ZdetalleCOD_ART.Value   := t1.Text;
    datos.ZdetalleCOMBO.Value     := Topcion.Text;
    datos.ZdetalleARTICULO.Value  := t2.Text;
    datos.ZdetalleARTICULO.Value  := t2.Text;
    datos.ZdetalleTITULOPRN.Value := t2.Text;



if LINEA.Text = 'MOD' then
  BEGIN
    datos.Zdetallecod_art.Value := T1.Text;
  END ELSE BEGIN

if tOPCION.Text = 'ART' then BEGIN
    datos.Zdetallecod_art.Value := T1.Text;
    datos.ZdetalleARTICULOID.value :=StrToINt(t1.Text);
    LINEA.Clear;
END;

if tOPCION.Text = 'COM' then BEGIN
  datos.Zdetallecod_art.Value := T1.Text;
  datos.ZdetalleARTICULOID.value :=StrToInt(COPY(stexto,2,5));
  LINEA.Clear;
END;
end;


    if edit8.Text ='1' then
      begin
         datos.ZdetalleITBS_ART.Value := 'S';
         datos.ZdetalleEX.Value := '';
         datos.ZdetallePRECIO.Value :=(t4.Value - (t4.Value * datos.ZUconfiguracionITBIS_D.Value));
         datos.ZdetalleITBS.Value  := datos.ZdetalleCANTIDAD.Value * (t4.Value * datos.ZUconfiguracionITBIS_D.Value);
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + (t4.Value * datos.ZUconfiguracionITBIS_D.Value));
      end else begin
         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
         datos.ZdetallePRECIO.Value    := t4.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * t4.Value;
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
FINALLY

END;

end;
procedure TFrmNFact.fcDBImager1Click(Sender: TObject);
var
  RecIdx: Integer;
  DC: TcxCustomDataController;
begin

with numerosabor do
  begin
    close;
    open;
  end;

  datos.ZqSaborFact.Open;
  datos.ZqSaborFact.Insert;
  datos.ZqSaborFactID_SF.Value := numerosabormax.Value + 1;
  datos.ZqSaborFactFECHA.Value := datos.FbqMaster_FactFECHA_FAC.Value;
  datos.ZqSaborFactIDSABOR.Value :=  qgustoscod_art.Value;
  datos.ZqSaborFactCOSTO.Value := qgustoscosto.Value;
  datos.ZqSaborFactCANTIDAD.Value := 1;
  datos.ZqSaborFactPRECIO_VENTA.Value := qgustosprecio_a.Value;
  datos.ZqSaborFactPRECIO_VENTA.Value := qgustosprecio_a.Value;
  datos.ZqSaborFactOP.Value := 1;
  datos.ZqSaborFactARTICULO.Value := qgustosarticulo.Value;
  datos.ZqSaborFactPRODUCTO.Value := datos.ZdetalleNO_FACT.Value;
  datos.ZqSaborFact.ApplyUpdates;
 // datos.ZqSaborFact.Refresh;
end;

procedure TFrmNFact.fcDBImager2Click(Sender: TObject);
begin
datos.Zdetalle.Open;

/////// Lamar Gustos    (Frutas)  **********************************************
if (cxdblabel5.Caption ='SI') AND (cxdblabel3.Caption ='NO')  then
  BEGIN
  showmessage('1');
    saborespanel.Visible := true;
    cxButton16.Enabled := true;
    cxGroupBox3.Enabled := false;
    with qgustos do
      begin
        close;
        sql.Clear;
        sql.Add('select * from MTARTUCULOS');
        sql.Add('where cod_cat =:pp');
         params[0].Value := 15;
         open;
      end;





  datos.ZdetalleARTICULOID.FocusControl;



with numero_detalle do
  begin
    close;
    open;
  end;

  datos.Zdetalle.Insert;
  datos.ZdetalleNO_FACT.Value := numero_detallemax.Value + 1;
  datos.ZdetalleCANTIDAD.Value := 1;
  datos.ZdetalleARTICULOID.Value := mantarti22cod_art.Value;
  datos.ZdetallePRECIO.Value := MantArti22precio_a.Value;
  datos.zdetalleARTICULO.Value := MantArti22Articulo.Value;

  if MantArti22POLITICA.Value ='Combo' then
    begin
      datos.ZdetalleCOMBO.Value := 'SI'
    end else begin
      datos.ZdetalleCOMBO.Value := 'NO'
    end;

  datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  datos.Zdetalle.Post;
  cxDBCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];




  END;

/// Fin Gustos ***************************************

/////// Lamar Bolas  **********************************************
if (cxdblabel5.Caption ='NO') AND (cxdblabel3.Caption ='SI')  then
  BEGIN
    showmessage('2');
    saborespanel.Visible := true;
    cxButton16.Enabled := true;
    cxGroupBox3.Enabled := false;
    with qgustos do
      begin
        close;
        sql.Clear;
        sql.Add('select * from MTARTUCULOS');
        sql.Add('where cod_cat =:pp');
         params[0].Value := 16;
         open;
      end;





  datos.ZdetalleARTICULOID.FocusControl;



with numero_detalle do
  begin
    close;
    open;
  end;

  datos.Zdetalle.Insert;
  datos.ZdetalleNO_FACT.Value := numero_detallemax.Value + 1;
  datos.ZdetalleCANTIDAD.Value := 1;
  datos.ZdetalleARTICULOID.Value := mantarti22cod_art.Value;
  datos.ZdetallePRECIO.Value := MantArti22precio_a.Value;
  datos.zdetalleARTICULO.Value := MantArti22Articulo.Value;

  if MantArti22POLITICA.Value ='Combo' then
    begin
      datos.ZdetalleCOMBO.Value := 'SI'
    end else begin
      datos.ZdetalleCOMBO.Value := 'NO'
    end;

  datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  datos.Zdetalle.Post;
  cxDBCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];


  END;

/// Fin Gustos ***************************************

/////// Lamar NORMAL  **********************************************
if (cxdblabel5.Caption ='NO') AND (cxdblabel3.Caption ='NO')  then
  BEGIN

   // saborespanel.Visible := true;
   // cxButton16.Enabled := true;
   // cxGroupBox3.Enabled := false;


           showmessage('3');
   datos.Zdetalle.Open;
  datos.ZdetalleARTICULOID.FocusControl;



with numero_detalle do
  begin
    close;
    open;
  end;

  datos.Zdetalle.Insert;
  datos.ZdetalleNO_FACT.Value := numero_detallemax.Value + 1;
  datos.ZdetalleCANTIDAD.Value := 1;
  datos.ZdetalleARTICULOID.Value := mantarti22cod_art.Value;
  datos.ZdetallePRECIO.Value := MantArti22precio_a.Value;
  datos.zdetalleARTICULO.Value := MantArti22Articulo.Value;

  if MantArti22POLITICA.Value ='Combo' then
    begin
      datos.ZdetalleCOMBO.Value := 'SI'
    end else begin
      datos.ZdetalleCOMBO.Value := 'NO'
    end;

  datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  datos.Zdetalle.Post;
  cxDBCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  end;



/// Fin NOrmal ***************************************

end;


procedure TFrmNFact.IMGBotClick(Sender: TObject);
begin

with mantarti22 do
begin
  close;
  sql.Clear;
  sql.Add('select * from MTARTUCULOS');
  sql.Add('where cod_cat =:pp');
  params[0].Value := categoriascodcat.Value;
  open;
end;

end;

procedure TFrmNFact.FormShow(Sender: TObject);
begin
FrmNFact.WindowState := wsMaximized;
end;

end.
