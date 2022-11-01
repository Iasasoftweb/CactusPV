unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, StdCtrls, ExtCtrls, cxContainer, cxGroupBox,
  dxLayoutLookAndFeels, Mask, DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup, cxDBEdit,
  Menus, cxButtons, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator, cxPCdxBarPopupMenu, cxPC, cxPivotGridChartConnection, cxCalc,
  cxImage, GIFImg, Vcl.ExtDlgs, RxLookup, cxLabel, frxClass, cxMemo,
  cxCurrencyEdit, RxDBComb, cxCheckBox, cxListBox, cxCheckListBox,
  cxDBCheckListBox, RxClock,
  Vcl.Grids, Vcl.DBGrids, frxDBSet, AdvEdit, DBAdvEd, shellapi,
  strutils,
  CurvyControls, dxGDIPlusClasses, cxCheckGroup, cxDBCheckGroup, cxDBLabel,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu, Vcl.ComCtrls, cxListView,
  cxSpinEdit, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinTheBezier, cxCalendar, dxToggleSwitch, dxDBToggleSwitch, frxBarcode,
  acPNG, Vcl.Buttons;

const
  EAN_izqA: array [0 .. 9] of PChar = ('0001101', '0011001', '0010011',
    '0111101', '0100011', '0110001', '0101111', '0111011', '0110111',
    '0001011');
  EAN_izqB: array [0 .. 9] of PChar = ('0100111', '0110011', '0011011',
    '0100001', '0011101', '0111001', '0000101', '0010001', '0001001',
    '0010111');
  EAN_dcha: array [0 .. 9] of PChar = ('1110010', '1100110', '1101100',
    '1000010', '1011100', '1001110', '1010000', '1000100', '1001000',
    '1110100');
  CodificaIzq: array [0 .. 9] of PChar = ('AAAAA', 'ABABB', 'ABBAB', 'ABBBA',
    'BAABB', 'BBAAB', 'BBBAA', 'BABAB', 'BABBA', 'BBABA');

type
  TFrmArticulos = class(TForm)
    cxLookAndFeelController1: TcxLookAndFeelController;
    DsArticulos: TDataSource;
    numero: TZReadOnlyQuery;
    FbqFabricantes: TDataSource;
    numeroGEN_ID: TLargeintField;
    OpenPictureDialog: TOpenPictureDialog;
    dscategoria: TDataSource;
    DsqArticulos: TDataSource;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosPOLITICA: TWideStringField;
    BuscaImagen: TOpenPictureDialog;
    IbqRArticulosARTICULO: TWideStringField;
    DsUnidad: TDataSource;
    DSCP: TDataSource;
    max1: TZReadOnlyQuery;
    max1MAX: TIntegerField;
    Dsprov: TDataSource;
    max2: TZReadOnlyQuery;
    max2MAX: TIntegerField;
    ref1: TDBEdit;
    ZQFAB: TZReadOnlyQuery;
    ZQFABCOD: TIntegerField;
    ZQFABCOD_FAB: TWideStringField;
    ZQFABDESCRIPCION: TWideStringField;
    ZQFABCONTACTO: TWideStringField;
    ZQFABTELEFONO: TWideStringField;
    ZQFABFAX: TWideStringField;
    ZQFABEMAIL: TWideStringField;
    ZQFABDIRECCION: TWideStringField;
    zMARCAS: TZReadOnlyQuery;
    zMARCASMARCA: TWideStringField;
    dSmaRCAS: TDataSource;
    cxGrid6DBTableView1: TcxGridDBTableView;
    cxGrid6Level1: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGrid6DBTableView1Column1: TcxGridDBColumn;
    zMARCASCOUNT: TIntegerField;
    IbqRArticulosPRECIO1: TFloatField;
    IbqRArticulosPRECIO2: TFloatField;
    IbqRArticulosPRECIO3: TFloatField;
    ZqValidaBarra: TZReadOnlyQuery;
    ZqValidaBarraCODIGOBARRA: TWideStringField;
    Edit5: TEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    DataSource1: TDataSource;
    IbqRArticulos1: TZReadOnlyQuery;
    IbqRArticulos1COD_ART: TIntegerField;
    IbqRArticulos1CODIGOTXT: TWideStringField;
    IbqRArticulos1ARTICULO: TWideStringField;
    IbqRArticulos1MODELO: TWideStringField;
    IbqRArticulos1MARCA: TWideStringField;
    IbqRArticulos1COLOR: TWideStringField;
    IbqRArticulos1COD_CAT: TIntegerField;
    IbqRArticulos1COD_SERIE: TIntegerField;
    IbqRArticulos1COD_ALM: TIntegerField;
    IbqRArticulos1COSTO: TFloatField;
    IbqRArticulos1COD_PROV1: TIntegerField;
    IbqRArticulos1EXISTENCIA1: TFloatField;
    IbqRArticulos1ITBIS: TWideStringField;
    IbqRArticulos1ABREVIADO: TWideStringField;
    IbqRArticulos1COD_BARRA: TWideStringField;
    IbqRArticulos1COD_UV: TIntegerField;
    IbqRArticulos1USUARIOMOD: TIntegerField;
    IbqRArticulos1FECHA_MOD: TDateField;
    IbqRArticulos1POLITICA: TWideStringField;
    IbqRArticulos1COSTO_PR: TFloatField;
    IbqRArticulos1IMAGEN: TBlobField;
    IbqRArticulos1CLA_COSTO: TWideStringField;
    IbqRArticulos1CLA_PRECIO: TWideStringField;
    IbqRArticulos1PRECIO_A: TFloatField;
    IbqRArticulos1PRECIO_B: TFloatField;
    IbqRArticulos1PRECIO_D: TFloatField;
    IbqRArticulos1ESTADO: TIntegerField;
    IbqRArticulos1EXTFOTO: TWideStringField;
    IbqRArticulos1DESCRIPCIONWEB: TWideMemoField;
    IbqRArticulos1PUBLICARWEB: TIntegerField;
    IbqRArticulos1CODIGOBARRA: TWideStringField;
    IbqRArticulos1EMPAQUE: TIntegerField;
    IbqRArticulos1CANT_EMPA: TFloatField;
    IbqRArticulos1COD_PROV2: TIntegerField;
    IbqRArticulos1COD_PROV3: TIntegerField;
    IbqRArticulos1REFERENCIA: TWideStringField;
    IbqRArticulos1OPCION_SABOR: TWideStringField;
    IbqRArticulos1STOCK_MA: TFloatField;
    IbqRArticulos1STOCK_M: TFloatField;
    IbqRArticulos1FACTOR: TFloatField;
    IbqRArticulos1TIPO_PRODUCTOS: TWideStringField;
    IbqRArticulos1FACTURABLE: TIntegerField;
    IbqRArticulos1STOCK: TFloatField;
    IbqRArticulos1OPCIONES_BOLA: TWideStringField;
    IbqRArticulos1PARTICIONADO: TWideStringField;
    IbqRArticulos1COMPUESTO: TWideStringField;
    IbqRArticulos1BENEFICIOS: TFloatField;
    IbqRArticulos1MONEDA: TWideStringField;
    IbqRArticulos1UNIDAD: TWideStringField;
    IbqRArticulos1TAZA_COMPRA: TFloatField;
    IbqRArticulos1PRECIO1: TFloatField;
    IbqRArticulos1PRECIO2: TFloatField;
    IbqRArticulos1PRECIO3: TFloatField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;

    numero12: TZReadOnlyQuery;
    numero12GEN_ID: TLargeintField;
    qcategoria: TZReadOnlyQuery;
    qcategoriaCODCAT: TIntegerField;
    qcategoriaCAT: TWideStringField;
    qcategoriaIMAGEN: TBlobField;
    qcategoriaEXTFOTO: TWideStringField;
    qcategoriaOPCION: TWideStringField;
    copia: TZReadOnlyQuery;
    copiaCOD_ART: TIntegerField;
    copiaCODIGOTXT: TWideStringField;
    copiaARTICULO: TWideStringField;
    copiaMODELO: TWideStringField;
    copiaMARCA: TWideStringField;
    copiaCOLOR: TWideStringField;
    copiaCOD_CAT: TIntegerField;
    copiaCOD_SERIE: TIntegerField;
    copiaCOD_ALM: TIntegerField;
    copiaCOSTO: TFloatField;
    copiaCOD_PROV1: TIntegerField;
    copiaEXISTENCIA1: TFloatField;
    copiaITBIS: TWideStringField;
    copiaABREVIADO: TWideStringField;
    copiaCOD_BARRA: TWideStringField;
    copiaCOD_UV: TIntegerField;
    copiaUSUARIOMOD: TIntegerField;
    copiaFECHA_MOD: TDateField;
    copiaPOLITICA: TWideStringField;
    copiaCOSTO_PR: TFloatField;
    copiaIMAGEN: TBlobField;
    copiaCLA_COSTO: TWideStringField;
    copiaCLA_PRECIO: TWideStringField;
    copiaPRECIO_A: TFloatField;
    copiaPRECIO_B: TFloatField;
    copiaPRECIO_D: TFloatField;
    copiaESTADO: TIntegerField;
    copiaEXTFOTO: TWideStringField;
    copiaDESCRIPCIONWEB: TWideMemoField;
    copiaPUBLICARWEB: TIntegerField;
    copiaCODIGOBARRA: TWideStringField;
    copiaEMPAQUE: TIntegerField;
    copiaCANT_EMPA: TFloatField;
    copiaCOD_PROV2: TIntegerField;
    copiaCOD_PROV3: TIntegerField;
    copiaREFERENCIA: TWideStringField;
    copiaCONDICION: TIntegerField;
    copiaOPCION_SABOR: TWideStringField;
    copiaSTOCK_MA: TFloatField;
    copiaSTOCK_M: TFloatField;
    copiaFACTOR: TFloatField;
    copiaTIPO_PRODUCTOS: TWideStringField;
    copiaFACTURABLE: TIntegerField;
    copiaSTOCK: TFloatField;
    copiaOPCIONES_BOLA: TWideStringField;
    copiaPARTICIONADO: TWideStringField;
    copiaCOMPUESTO: TWideStringField;
    copiaBENEFICIOS: TFloatField;
    copiaMONEDA: TWideStringField;
    copiaUNIDAD: TWideStringField;
    copiaTAZA_COMPRA: TFloatField;
    copiaFECHA_COMPRA: TDateField;
    copiaINTERES_ACUMULADO: TFloatField;
    copiaALMACEN: TIntegerField;
    copiaBt: TButton;
    DataSource4: TDataSource;
    NumeroCombo: TZReadOnlyQuery;
    numeromaster: TZReadOnlyQuery;
    numeromasterGEN_ID: TLargeintField;
    DsCombo: TDataSource;
    Label45: TLabel;
    IbqRArticulos1CONDICION: TWideStringField;
    BuscarParti: TZReadOnlyQuery;
    BuscarPartiID: TIntegerField;
    BuscarPartiCOD_ARTI: TIntegerField;
    BuscarPartiCANTI: TFloatField;
    BuscarPartiUNIDAD: TWideStringField;
    BuscarPartiCOD_PART: TFloatField;
    BuscarPartiID_UNIDAD: TIntegerField;
    BuscarPartiPRECIO1: TFloatField;
    BuscarPartiPRECIO2: TFloatField;
    QCompartidos: TZReadOnlyQuery;
    QCompartidosCOD_ART: TIntegerField;
    QCompartidosARTICULO: TWideStringField;
    QCompartidosCOSTO_PR: TFloatField;
    QCompartidosPRECIO_A: TFloatField;
    QCompartidosPRECIO_B: TFloatField;
    QCompartidosPRECIO_D: TFloatField;
    DsComportidos: TDataSource;
    QCompartidosCOMPACTIBLECON: TIntegerField;
    ActualidaCOmpartido: TZReadOnlyQuery;
    numeroProb: TZReadOnlyQuery;
    numeroProbGEN_ID: TLargeintField;
    // frxNewLabel: TfrxReport;
    UltimosPrecios: TZReadOnlyQuery;
    FbRArticulos: TZReadOnlyQuery;
    FbRArticulosCOD_ART: TIntegerField;
    FbRArticulosCODIGOTXT: TWideStringField;
    FbRArticulosARTICULO: TWideStringField;
    FbRArticulosMODELO: TWideStringField;
    FbRArticulosMARCA: TWideStringField;
    FbRArticulosCOLOR: TWideStringField;
    FbRArticulosCOD_CAT: TIntegerField;
    FbRArticulosCOD_SERIE: TIntegerField;
    FbRArticulosCOD_ALM: TIntegerField;
    FbRArticulosCOSTO: TFloatField;
    FbRArticulosCOD_PROV1: TIntegerField;
    FbRArticulosEXISTENCIA1: TFloatField;
    FbRArticulosITBIS: TWideStringField;
    FbRArticulosABREVIADO: TWideStringField;
    FbRArticulosCOD_BARRA: TWideStringField;
    FbRArticulosCOD_UV: TIntegerField;
    FbRArticulosUSUARIOMOD: TIntegerField;
    FbRArticulosFECHA_MOD: TDateField;
    FbRArticulosPOLITICA: TWideStringField;
    FbRArticulosCOSTO_PR: TFloatField;
    FbRArticulosIMAGEN: TBlobField;
    FbRArticulosCLA_COSTO: TWideStringField;
    FbRArticulosCLA_PRECIO: TWideStringField;
    FbRArticulosPRECIO_A: TFloatField;
    FbRArticulosPRECIO_B: TFloatField;
    FbRArticulosPRECIO_D: TFloatField;
    FbRArticulosESTADO: TIntegerField;
    FbRArticulosEXTFOTO: TWideStringField;
    FbRArticulosDESCRIPCIONWEB: TWideMemoField;
    FbRArticulosPUBLICARWEB: TIntegerField;
    FbRArticulosCODIGOBARRA: TWideStringField;
    FbRArticulosEMPAQUE: TIntegerField;
    FbRArticulosCANT_EMPA: TFloatField;
    FbRArticulosCOD_PROV2: TIntegerField;
    FbRArticulosCOD_PROV3: TIntegerField;
    FbRArticulosREFERENCIA: TWideStringField;
    FbRArticulosOPCION_SABOR: TWideStringField;
    FbRArticulosSTOCK_MA: TFloatField;
    FbRArticulosSTOCK_M: TFloatField;
    FbRArticulosFACTOR: TFloatField;
    FbRArticulosTIPO_PRODUCTOS: TWideStringField;
    FbRArticulosFACTURABLE: TIntegerField;
    FbRArticulosSTOCK: TFloatField;
    FbRArticulosOPCIONES_BOLA: TWideStringField;
    FbRArticulosPARTICIONADO: TWideStringField;
    FbRArticulosCOMPUESTO: TWideStringField;
    FbRArticulosBENEFICIOS: TFloatField;
    FbRArticulosMONEDA: TWideStringField;
    FbRArticulosUNIDAD: TWideStringField;
    FbRArticulosTAZA_COMPRA: TFloatField;
    FbRArticulosFECHA_COMPRA: TDateField;
    FbRArticulosINTERES_ACUMULADO: TFloatField;
    FbRArticulosALMACEN: TIntegerField;
    FbRArticulosPERCIO_COPA: TFloatField;
    FbRArticulosCOMISION: TFloatField;
    FbRArticulosARTICULOS_OMO: TWideStringField;
    FbRArticulosCODIGOUNICO: TWideStringField;
    FbRArticulosEMPRESA: TWideStringField;
    FbRArticulosCONDICION: TWideStringField;
    FbRArticulosUTILIDAD2: TFloatField;
    FbRArticulosUTILIDAD3: TFloatField;
    FbRArticulosPRECIO_BRUTO1: TFloatField;
    FbRArticulosPRECIO_BRUTO2: TFloatField;
    FbRArticulosPRECIO_BRUTO3: TFloatField;
    FbRArticulosMAYOREO1: TFloatField;
    FbRArticulosMAYOREO2: TFloatField;
    FbRArticulosMAYOREO3: TFloatField;
    FbRArticulosDESCRIPCION: TWideMemoField;
    FbRArticulosCOSTOPROMENO: TFloatField;
    FbRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    FbRArticulosCOMPACTIBLECON: TIntegerField;
    Arti: TDataSource;
    Qunidad: TZReadOnlyQuery;
    QunidadCOD_UNIDAD_M: TIntegerField;
    QunidadUNIDAD: TWideStringField;
    QunidadDESCRIPCION: TWideStringField;
    QunidadPOS: TIntegerField;
    QunidadVALOR: TFloatField;
    NumeroComboGEN_ID: TLargeintField;
    QClasificaciones: TZReadOnlyQuery;
    QClasificacionesID_SABOR: TIntegerField;
    QClasificacionesDESCRIPCION: TWideStringField;
    DsClasificaciones: TDataSource;
    QExiste: TZReadOnlyQuery;
    QExisteCOD_ART: TIntegerField;
    QBuscarCodigoBarra: TZReadOnlyQuery;
    QBuscarCodigoBarraCODIGOBARRA: TWideStringField;
    Almacenes1: TZReadOnlyQuery;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    DsAlmacenes01: TDataSource;
    ZExistencia: TZReadOnlyQuery;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaCOSTO: TFloatField;
    ZExistenciaCOSTO_PR: TFloatField;
    ZExistenciaCOD_ALM: TIntegerField;
    ZExistenciaEXISTENCIA: TExtendedField;
    ZExistenciaTOTAL: TExtendedField;
    ZExistenciaCODIGOBARRA: TWideStringField;
    ZExistenciaREFERENCIA: TWideStringField;
    DataSource5: TDataSource;
    qfechasinventarios: TZReadOnlyQuery;
    DataSource6: TDataSource;
    qfechainventirioentrada: TZReadOnlyQuery;
    DataSource7: TDataSource;
    FInvenatario: TZReadOnlyQuery;
    FInvenatarioFECHA: TDateField;
    FInvenatarioCOD_ART: TIntegerField;
    FInvenatarioARTICULO: TWideStringField;
    FInvenatarioDESCRIPCION: TWideStringField;
    FInvenatarioCOD_CAT: TIntegerField;
    FInvenatarioENTRADA: TFloatField;
    FInvenatarioSALIDA: TFloatField;
    DswInventario: TDataSource;
    qfechainventirioentradaFECHA: TDateField;
    qfechasinventariosFECHA: TDateField;
    QConsultaEquivalente: TZReadOnlyQuery;
    QConsultaEquivalenteCODIGOBARRA: TWideStringField;
    QConsultaEquivalenteARTICULO: TWideStringField;
    QConsultaEquivalenteCOSTO: TFloatField;
    QConsultaEquivalentePRECIO_A: TFloatField;
    QConsultaEquivalentePRECIO_B: TFloatField;
    QConsultaEquivalentePRECIO_D: TFloatField;
    QConsultaEquivalentePRECIO_C: TFloatField;
    QConsultaEquivalenteCANTEQUIVALENCA: TFloatField;
    DsQconsultaEquivalene: TDataSource;
    QConsultaEquivalenteCOD_ART: TIntegerField;
    Panel8: TPanel;
    // frxBarCodeObject1: TfrxBarCodeObject;
    Panel9: TPanel;
    Panel4: TPanel;
    BtNuevo: TcxButton;
    BtModificar: TcxButton;
    BtBuscar: TcxButton;
    btmodi: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    op11: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label2: TLabel;
    Label51: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    cxDBComboBox4: TcxDBComboBox;
    cxGroupBox3: TcxGroupBox;
    Label7: TLabel;
    Label5: TLabel;
    Label46: TLabel;
    Label44: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxDBCalcEdit12: TcxDBCalcEdit;
    cxDBCalcEdit13: TcxDBCalcEdit;
    Edit7: TEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxButton16: TcxButton;
    Edit1: TEdit;
    cxGroupBox7: TcxGroupBox;
    cxDBComboBox1: TcxDBComboBox;
    cxGroupBox11: TcxGroupBox;
    Label23: TLabel;
    Label18: TLabel;
    Label37: TLabel;
    DBEdit4: TDBEdit;
    cxButton9: TcxButton;
    DBEdit7: TDBEdit;
    cxButton14: TcxButton;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    cxDBCalcEdit11: TcxDBCalcEdit;
    BtnActualizaEquivalente: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Label20: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    cxButton11: TcxButton;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1PROVEID: TcxGridDBColumn;
    cxGrid4DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid4DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid4DBTableView1TELEFONO: TcxGridDBColumn;
    cxGrid4DBTableView1CONTACTO: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Edit4: TEdit;
    cxButton8: TcxButton;
    cxButton13: TcxButton;
    provTXT1: TEdit;
    cxButton15: TcxButton;
    TabCompuesto: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxButton2: TcxButton;
    cant: TcxTextEdit;
    opbuscar: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxTabSheet5: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    cxTabSheet8: TcxTabSheet;
    Grafico: TImage;
    DBMemo1: TDBMemo;
    BtnIgredientes: TcxButton;
    P00sprecio: TfrxReport;
    cxTabSheet6: TcxTabSheet;
    cxGroupBox6: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    cxDBCalcEdit21: TcxDBCalcEdit;
    Edit8: TEdit;
    cxButton18: TcxButton;
    DataSource8: TDataSource;
    fxConfig: TfrxDBDataset;
    fxArticulos: TfrxDBDataset;
    fxEtiqueta001SP: TfrxReport;
    BarCode1: TfrxBarCodeObject;
    Panel7: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    Panel12: TPanel;
    Label60: TLabel;
    lblEstado: TLabel;
    btnsalir: TSpeedButton;
    pgCentral: TcxPageControl;
    tbGeneral: TcxTabSheet;
    tbImagenes: TcxTabSheet;
    cxGroupBox10: TcxGroupBox;
    Label9: TLabel;
    Label36: TLabel;
    Label27: TLabel;
    Label43: TLabel;
    Label29: TLabel;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxButton3: TcxButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    OPproductos: TcxDBRadioGroup;
    cxDBCheckGroup1: TcxDBCheckGroup;
    cxDBSpinEdit1: TcxDBSpinEdit;
    DBComboBox1: TDBComboBox;
    SpeedButton1: TSpeedButton;
    Label61: TLabel;
    cxTabSheet7: TcxTabSheet;
    DBEdit13: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit14: TDBEdit;
    Label69: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label70: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label71: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label72: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label73: TLabel;
    DBEdit23: TDBEdit;
    Label77: TLabel;
    DBEdit27: TDBEdit;
    pnlBtnIgualarCodigo: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label16: TLabel;
    Label30: TLabel;
    Label24: TLabel;
    Label17: TLabel;
    Label49: TLabel;
    Label25: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBCalcEdit9: TcxDBCalcEdit;
    cxDBCalcEdit10: TcxDBCalcEdit;
    cxButton6: TcxButton;
    RedondeoCompleto: TcxDBComboBox;
    cxDBCalcEdit6: TcxDBCalcEdit;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxDBCalcEdit8: TcxDBCalcEdit;
    cxDBCalcEdit14: TcxDBCalcEdit;
    cxDBCalcEdit15: TcxDBCalcEdit;
    cxDBCalcEdit16: TcxDBCalcEdit;
    cxDBCalcEdit17: TcxDBCalcEdit;
    cxDBCalcEdit18: TcxDBCalcEdit;
    cxDBCalcEdit19: TcxDBCalcEdit;
    cxDBCalcEdit20: TcxDBCalcEdit;
    Edit6: TEdit;
    cxDBCalcEdit23: TcxDBCalcEdit;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxDBCalcEdit22: TcxDBCalcEdit;
    cxDBCalcEdit24: TcxDBCalcEdit;
    cxDBCalcEdit25: TcxDBCalcEdit;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    gbPorMayor: TcxGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label66: TLabel;
    Label65: TLabel;
    DBComboBox4: TDBComboBox;
    cxDBCalcEdit26: TcxDBCalcEdit;
    cxDBCalcEdit27: TcxDBCalcEdit;
    cxDBCalcEdit28: TcxDBCalcEdit;
    cxDBCalcEdit29: TcxDBCalcEdit;
    cxDBCalcEdit30: TcxDBCalcEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    cxGrid10: TcxGrid;
    cxGrid10DBTableView1: TcxGridDBTableView;
    cxGrid10DBTableView1CODIGOBARRA: TcxGridDBColumn;
    cxGrid10DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid10DBTableView1COSTO: TcxGridDBColumn;
    cxGrid10DBTableView1PRECIO_A: TcxGridDBColumn;
    cxGrid10DBTableView1PRECIO_B: TcxGridDBColumn;
    cxGrid10DBTableView1PRECIO_D: TcxGridDBColumn;
    cxGrid10DBTableView1PRECIO_C: TcxGridDBColumn;
    cxGrid10DBTableView1CANTEQUIVALENCA: TcxGridDBColumn;
    cxGrid10Level1: TcxGridLevel;
    cxDBLabel1: TcxDBLabel;
    Label31: TLabel;
    GroupBox1: TGroupBox;
    cxGrid7: TcxGrid;
    cxGrid7DBTableView1: TcxGridDBTableView;
    cxGrid7DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid7DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid7DBTableView1COSTO_PR: TcxGridDBColumn;
    cxGrid7DBTableView1PRECIO_A: TcxGridDBColumn;
    cxGrid7DBTableView1PRECIO_B: TcxGridDBColumn;
    cxGrid7DBTableView1PRECIO_D: TcxGridDBColumn;
    cxGrid7Level1: TcxGridLevel;
    Panel17: TPanel;
    SpeedButton11: TSpeedButton;
    Panel18: TPanel;
    SpeedButton12: TSpeedButton;
    cxTabSheet9: TcxTabSheet;
    Label79: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label80: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    dbedtUBICACION: TDBEdit;
    Label81: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    cxDBSpinEdit2: TcxDBSpinEdit;
    DBCheckBox4: TDBCheckBox;
    DBEdit33: TDBEdit;
    SpeedButton15: TSpeedButton;
    DBCheckBox5: TDBCheckBox;
    cxTabSheet10: TcxTabSheet;
    Panel19: TPanel;
    cxDBImage1: TcxDBImage;
    Panel13: TPanel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    cxGroupBox12: TcxGroupBox;
    Label1: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label62: TLabel;
    DBEdit11: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    DBEdit12: TDBEdit;
    cxGrid8: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel20: TPanel;
    SpeedButton16: TSpeedButton;
    Panel21: TPanel;
    SpeedButton17: TSpeedButton;
    Label76: TLabel;
    DBEdit26: TDBEdit;
    DBEdit25: TDBEdit;
    Label75: TLabel;
    Label11: TLabel;
    Label74: TLabel;
    DBEdit24: TDBEdit;
    DBEdit28: TDBEdit;
    cxTabSheet11: TcxTabSheet;
    cxGroupBox8: TcxGroupBox;
    cxImage1: TcxImage;
    Timpresora: TcxRadioGroup;
    RG1: TRadioGroup;
    ltipo: TRadioGroup;
    cxGroupBox9: TcxGroupBox;
    cxImage2: TcxImage;
    RG2: TRadioGroup;
    Timpresora1: TcxRadioGroup;
    Ltipo2: TRadioGroup;
    Panel22: TPanel;
    SpeedButton18: TSpeedButton;
    Panel23: TPanel;
    SpeedButton19: TSpeedButton;
    Panel2: TPanel;
    SpeedButton20: TSpeedButton;
    Panel25: TPanel;
    BtGuardar: TSpeedButton;
    Panel26: TPanel;
    BtCancelar: TSpeedButton;
    Panel27: TPanel;
    SpeedButton24: TSpeedButton;
    fxEtiqueta001P: TfrxReport;
    DBEdit34: TDBEdit;
    Label19: TLabel;
    DBCheckBox9: TDBCheckBox;
    FxEtiquetaMonarchS_P: TfrxReport;
    FxEtiquetaMonarchC_P: TfrxReport;
    function TraeNumeroOrden(codigo: Integer): Integer;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure btmodiClick(Sender: TObject);
    procedure cxDBComboBox2PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure BTinicioClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure BtanteriorClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton11Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtfinalClick(Sender: TObject);
    procedure cxGrid6DBTableView1DblClick(Sender: TObject);
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit1Exit(Sender: TObject);
    procedure DsArticulosUpdateData(Sender: TObject);
    procedure DsArticulosStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtsiguienteClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure Codifica(num: string);
    // procedimiento para dibujar el cód. de barras a partir del nº binario
    procedure Dibujar(matrix: string);
    // procedimiento para validar-corregir los códigos
    procedure EANCorrecto(var num: string);
    procedure Edit6Enter(Sender: TObject);
    procedure imprime1BeforePrint(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure copiaBtClick(Sender: TObject);
    procedure Imprime2BeforePrint(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure OPproductosClick(Sender: TObject);
    procedure RxDBComboBox3Change(Sender: TObject);
    procedure cxDBCalcEdit8PropertiesEditValueChanged(Sender: TObject);
    procedure cxDBCalcEdit14PropertiesEditValueChanged(Sender: TObject);
    procedure cxDBCalcEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBCalcEdit10Exit(Sender: TObject);
    procedure cxDBCalcEdit10PropertiesChange(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure op11PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure cxDBCalcEdit4PropertiesChange(Sender: TObject);
    procedure cxDBCalcEdit1Exit(Sender: TObject);
    procedure cxDBCalcEdit9Exit(Sender: TObject);
    procedure cxDBCalcEdit6Exit(Sender: TObject);
    procedure cxDBCalcEdit8Exit(Sender: TObject);
    procedure cxDBCalcEdit14Exit(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure TimpresoraClick(Sender: TObject);
    procedure TSizeData(Control: TWinControl; Index: Integer; var Data: string);
    procedure TSizeDataObject(Control: TWinControl; Index: Integer;
      var DataObject: TObject);
    procedure ltipoSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure cxButton14Click(Sender: TObject);
    procedure cxDBCalcEdit23Exit(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cbSelectorItbisChange(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timpresora1Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxGridDBTableView4CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxDBCalcEdit22Exit(Sender: TObject);
    procedure cxDBCalcEdit25Exit(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure BtnIgredientesClick(Sender: TObject);
    procedure imagendefault;
    procedure btAculizaPreciosFinalesClick(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure cxDBCalcEdit4Exit(Sender: TObject);

  private

  var
    // jpg: TJPEGImage;
    Bene: Double;
    procedure ClearCheck;

  public
    procedure Finventario;
    procedure nuevo;
  end;

const

  JPEGstarts = 'FFD8';
  BMPstarts = '424D'; // BM

var
  FrmArticulos: TFrmArticulos;

implementation

uses Unit2, tools, Unit20, unit19, Unit6, Unit14, Unit44, Unit30, Unit23,
  Unit53,
  Uinicio, Unit48, Unit7, Unit26, Unit29, Unit98, UAdminArticulos,
  UActualizaCosto, Unit57, UinventarioDirecto, UIngredientes,
  Vcl.imaging.pngimage, Vcl.imaging.jpeg, UEquivalencia,
  uBuscarSubCategorias, usustancia, uBuscarSustancia, Umarca, uBuscarMarcas,
  uindicacionez, uBuscarIndicaciones, UbuscarClasificacion, uBuscarProveedores,
  UImpuesto, UBuscarImpuesto;

{$R *.dfm}

function RoundToNickel(const AmountIn: currency): currency;
begin
  Result := Trunc((AmountIn * 20) + 0.9) / 20;
end;

function RoundFives(numero: Double): Integer;
var
  u, N: Integer;
begin
  N := Trunc(numero);
  u := N - 10 * (N div 10);
  N := N - u;
  Result := N;
  if u in [1 .. 5] then
    Result := N + 5;
  if u in [6 .. 9] then
    Result := N + 10;
end;

procedure TFrmArticulos.EANCorrecto(var num: string);
var
  i, N: byte;
  sum: Integer;
  flag: byte;
begin
  sum := 0;
  N := Length(num) - 1;
  for i := 1 to N do
  begin
    if (i mod 2) = 0 then
    begin
      if N = 12 then
        sum := sum + StrToInt(num[i]) * 3
      else
        sum := sum + StrToInt(num[i]);
    end
    else
    begin
      if N = 12 then
        sum := sum + StrToInt(num[i])
      else
        sum := sum + StrToInt(num[i]) * 3;
    end;
  end;
  if sum > 99 then
    flag := 10 - (sum mod 100)
  else
    flag := 10 - (sum mod 10);
  if flag = 10 then
    flag := 0;
  if not(StrToInt(num[N + 1]) = flag) then
  begin
    ShowMessage('El dígito de control no es válido y será cambiado' + #13 +
      'El dígito correcto es ' + IntToStr(flag));
    num := copy(num, 1, Length(num) - 1) + IntToStr(flag);
  end;
end;

procedure TFrmArticulos.ClearCheck;
begin
  if DBCheckBox1.Checked = false then
  begin
    DBCheckBox1.Checked := true;
    DBCheckBox1.Checked := false;

  end;

  if DBCheckBox2.Checked = false then
  begin
    DBCheckBox2.Checked := true;
    DBCheckBox2.Checked := false;

  end;

  if DBCheckBox3.Checked = false then
  begin
    DBCheckBox3.Checked := true;
    DBCheckBox3.Checked := false;

  end;

  if DBCheckBox4.Checked = false then
  begin
    DBCheckBox4.Checked := true;
    DBCheckBox4.Checked := false;

  end;

  if DBCheckBox5.Checked = false then
  begin
    DBCheckBox5.Checked := true;
    DBCheckBox5.Checked := false;

  end;

  if DBCheckBox6.Checked = false then
  begin
    DBCheckBox6.Checked := true;
    DBCheckBox6.Checked := false;
  end;

  if DBCheckBox7.Checked = false then
  begin
    DBCheckBox7.Checked := true;
    DBCheckBox7.Checked := false;

  end;

  if DBCheckBox8.Checked = false then
  begin
    DBCheckBox8.Checked := true;
    DBCheckBox8.Checked := false;

  end;
end;

procedure TFrmArticulos.Codifica(num: string);
var
  matrix: string;
  i: Integer;
begin

  num := DBEdit8.Text;
  matrix := '';
  case Length(num) of
    13:
      begin
        EANCorrecto(num);
        DBEdit8.Text := num;
        matrix := matrix + 'x0x'; // barra inicio
        matrix := matrix + EAN_izqA[StrToInt(num[2])];
        for i := 3 to 7 do
          if CodificaIzq[StrToInt(num[1])][i - 3] = 'A' then
            matrix := matrix + EAN_izqA[StrToInt(num[i])]
          else
            matrix := matrix + EAN_izqB[StrToInt(num[i])];
        matrix := matrix + '0x0x0'; // barra central
        matrix := matrix + EAN_dcha[StrToInt(num[8])];
        matrix := matrix + EAN_dcha[StrToInt(num[9])];
        matrix := matrix + EAN_dcha[StrToInt(num[10])];
        matrix := matrix + EAN_dcha[StrToInt(num[11])];
        matrix := matrix + EAN_dcha[StrToInt(num[12])];
        matrix := matrix + EAN_dcha[StrToInt(num[13])];
        matrix := matrix + 'x0x'; // barra final
        Dibujar(matrix);
      end;
    8:
      begin
        EANCorrecto(num);
        DBEdit8.Text := num;
        matrix := matrix + 'x0x';
        matrix := matrix + EAN_izqA[StrToInt(num[1])];
        matrix := matrix + EAN_izqA[StrToInt(num[2])];
        matrix := matrix + EAN_izqA[StrToInt(num[3])];
        matrix := matrix + EAN_izqA[StrToInt(num[4])];
        matrix := matrix + '0x0x0';
        matrix := matrix + EAN_dcha[StrToInt(num[5])];
        matrix := matrix + EAN_dcha[StrToInt(num[6])];
        matrix := matrix + EAN_dcha[StrToInt(num[7])];
        matrix := matrix + EAN_dcha[StrToInt(num[8])];
        matrix := matrix + 'x0x';
        Dibujar(matrix);
      end
  else
    ShowMessage('LONGITUD DE CODIGO NO VALIDA');
  end;

end;

procedure TFrmArticulos.cbSelectorItbisChange(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin

  if DBCheckBox4.Checked = true then
  begin
    datos.MantArt.Edit;
    datos.MantArtTAZA_COMPRA.Value := datos.ZUconfiguracionITBIS.Value;
  end
  else
  begin
    datos.MantArt.Edit;
    datos.MantArtTAZA_COMPRA.Value := 0;
  end;

  // if DBComboBox1.Text = 'Si' then
  // begin
  // datos.MantArtTAZA_COMPRA.Value := datos.zuconfiguracionitbis.Value;
  // end else begin
  // datos.MantArtTAZA_COMPRA.Value := 0;
  // end;
  //
  //
  // if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit)  then begin
  // datos.MantArt.Edit;
  //
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100));
  // datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
  // datos.MantArtPRECIO_Bruto1.Value := Round(Bn + datos.MantArtCOSTO.Value);
  //
  //
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value)/100));
  // datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
  // datos.MantArtPRECIO_Bruto2.Value := Round(Bn + datos.MantArtCOSTO.Value);
  //
  //
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value)/100));
  // datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
  // datos.MantArtPRECIO_Bruto3.Value := Round(Bn + datos.MantArtCOSTO.Value);
  // end;

end;

procedure TFrmArticulos.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  if Key = VK_RETURN then
  begin
    with QBuscarCodigoBarra do
    begin
      close;
      sql.Clear;
      sql.Add('select codigobarra from mtartuculos');
      sql.Add('where codigobarra =:codd');
      Params[0].Value := DBEdit8.Text;
      open;
    end;

    if QBuscarCodigoBarra.RecordCount > 0 then
    begin

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
        sql.Add('where a.codigobarra =:oo');
        Params[0].Value := QBuscarCodigoBarraCODIGOBARRA.Value;
        open;
      end;
      //

      if DBEdit1.Text = '' then
      begin
      end

      else
      begin
        if OPproductos.ItemIndex = 2 then
        begin
          TabCompuesto.Enabled := true;
          // TabFraccionado.Enabled := False;
        end;

        if OPproductos.ItemIndex = 1 then
        begin
          TabCompuesto.Enabled := false;
          // TabFraccionado.Enabled := true;
        end;

        if OPproductos.ItemIndex = 0 then
        begin
          TabCompuesto.Enabled := false;
          // TabFraccionado.Enabled := false;
        end;
        TabCompuesto.Enabled := false;
        // TabFraccionado.Enabled := false;
        datos.FbCategorias.open;
        FrmArticulos.op11.Enabled := true;
        FrmArticulos.Edit1.Text := 'MOD';
        Edit6.Text := datos.MantArtCODIGOTXT.Value;
        datos.MantArt.Edit;

        // datos.Zunidad.Open;
        FrmArticulos.BtCancelar.Enabled := true;
        FrmArticulos.BtGuardar.Enabled := true;
        FrmArticulos.btmodi.Enabled := false;
        datos.Control_Precio.open;
        qcategoria.open;
        datos.ZqProv_Arti.open;

        if datos.ZUconfiguracionTerminal.Value = 'Pizzeria' then
        begin
          QClasificaciones.open;
        end;

        FrmArticulos.BtGuardar.Enabled := true;
        // FrmArticulos.Btcancelar.Enabled := true;
        // FrmArticulos.btmodi.Enabled := false;
        // btinicio.Enabled := false;
        // btanterior.Enabled := false;
        // Btsiguiente.Enabled := false;
        // Btfinal.Enabled := false;
        BtModificar.Enabled := false;
        BtBuscar.Enabled := false;
        BtNuevo.Enabled := false;
        cxButton4.Visible := true;

      end;
    end;
  end;
end;

procedure TFrmArticulos.Dibujar(matrix: string);
var
  i: Integer;
  Bitmap: TBitmap;
begin

  Grafico.Canvas.Brush.Color := clWhite;
  Grafico.Canvas.FillRect(Rect(0, 0, Grafico.Width, Grafico.Height));
  Grafico.Canvas.Pen.Color := clBlack;

  for i := 1 to Length(matrix) do
    if matrix[i] = '1' then
      Grafico.Canvas.PolyLine([Point(10 + i, 10), Point(10 + i, 50)])
    else if matrix[i] = 'x' then
      Grafico.Canvas.PolyLine([Point(10 + i, 10), Point(10 + i, 55)]);

  if Length(DBEdit8.Text) = 13 then
  begin
    Grafico.Canvas.TextOut(3, 50, DBEdit8.Text[1]);
    Grafico.Canvas.TextOut(17, 50, copy(DBEdit8.Text, 2, 6));
    Grafico.Canvas.TextOut(63, 50, copy(DBEdit8.Text, 8, 6));
  end
  else if Length(DBEdit8.Text) = 8 then
  begin
    Grafico.Canvas.TextOut(16, 50, copy(DBEdit8.Text, 1, 4));
    Grafico.Canvas.TextOut(48, 50, copy(DBEdit8.Text, 5, 4));
  end;

  Grafico.Picture.SaveToFile('c:\BarCode\' + DBEdit8.Text + '.bmp');

end;

procedure TFrmArticulos.Timpresora1Click(Sender: TObject);
var
  List: TListItem;
begin
  if Timpresora1.ItemIndex = 0 then
  begin

    // TSize.Clear;

    // TSize.Items.add('Impresión 1.25 x 0.75 inch');
    // TSize.Items.add('Impresión 2 x 1 inch');

    Ltipo2.Items.Clear;
    Ltipo2.Items.Add('Impresión 3.25” x 1.25”');
    Ltipo2.Items.Add('Impresión 2.17" x 1.73"');

  end;

  if Timpresora1.ItemIndex = 1 then
  begin

    Ltipo2.Items.Clear;
    Ltipo2.Items.Add('Impresión 3.25” x 1.25”');
    Ltipo2.Items.Add('Impresión 2.17" x 1.73"');


    // TSize.Clear;

    // TSize.Items.add('Impresión 3.5 x 2.9 inch');

  end;

  if Timpresora1.ItemIndex = 2 then
  begin
    Ltipo2.Items.Clear;
    Ltipo2.Items.Add('Impresión 3.25” x 1.25”');
    Ltipo2.Items.Add('Impresión 2.17" x 1.73"');
  end;

  if Timpresora1.ItemIndex = 3 then
  begin
    Ltipo2.Items.Clear;
    Ltipo2.Items.Add('Impresión 3.25” x 1.25”');
    Ltipo2.Items.Add('Impresión 2.17" x 1.73"');
  end;

end;

procedure TFrmArticulos.TimpresoraClick(Sender: TObject);
var
  List: TListItem;
begin
  if Timpresora.ItemIndex = 0 then
  begin

    // TSize.Clear;

    // TSize.Items.add('Impresión 1.25 x 0.75 inch');
    // TSize.Items.add('Impresión 2 x 1 inch');

    ltipo.Items.Clear;
    ltipo.Items.Add('Impresión 1 x 0.75 inch');
    ltipo.Items.Add('Impresión 2 x 1 inch');
    ltipo.Items.Add('Impresión 1 x 0.5 inch');
    ltipo.Items.Add('Impresión 1.3 x 0.5 inch');

  end;

  if Timpresora.ItemIndex = 1 then
  begin

    ltipo.Items.Clear;
    ltipo.Items.Add('Impresión 3.5 x 2.9 inch');


    // TSize.Clear;

    // TSize.Items.add('Impresión 3.5 x 2.9 inch');

  end;

  if Timpresora.ItemIndex = 2 then
  begin
    // TSize.Clear;
  end;

  if Timpresora.ItemIndex = 3 then
  begin
    // TSize.Clear;
  end;

  if Timpresora.ItemIndex = 4 then
  begin

    ltipo.Items.Clear;
    ltipo.Items.Add('Impresión 2 x 2 inch');


    // TSize.Clear;

    // TSize.Items.add('Impresión 3.5 x 2.9 inch');

  end;
end;

function TFrmArticulos.TraeNumeroOrden(codigo: Integer): Integer;
begin

  with numero do
  begin
    close;
    open;
  end;

  if numero.Fields[0].IsNull then
    Result := 1
  else
    Result := numero.Fields[0].Value + 1;
end;

procedure TFrmArticulos.TSizeData(Control: TWinControl; Index: Integer;
  var Data: string);
begin
  // if TSize.ItemIndex = 0 then
  // begin
  // Showmessage('1');
  // end;
  //
  // if TSize.ItemIndex = 0 then
  // begin
  // Showmessage('2');
  // end;
end;

procedure TFrmArticulos.TSizeDataObject(Control: TWinControl; Index: Integer;
  var DataObject: TObject);
begin
  // if TSize.ItemIndex = 0 then
  // begin
  // Showmessage('1');
  // end;
  //
  // if TSize.ItemIndex = 0 then
  // begin
  // Showmessage('2');
  // end;
end;

procedure TFrmArticulos.btmodiClick(Sender: TObject);
begin
  close;
end;

procedure TFrmArticulos.BtsiguienteClick(Sender: TObject);
begin
  // IbqRArticulos1.Open;
  // datos.ZqProv_Arti.Open;
  // IbqRArticulos1.Next;
  datos.MantArt.open;
  datos.MantArt.Next;

  // with datos.MantArt do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
  // sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
  // sql.Add('inner join tb_moneda c On a.idmoneda = c.id');
  // sql.Add('where a.cod_art =:oo');
  // params[0].Value :=  ibqRarticulos1cod_art.value;
  // open;
  // end;
  //
  //
  // Label11.Caption := IntToStr(IbqRArticulos1.RecNo );
  // Label12.Caption := IntToStr(IbqRArticulos1.RecordCount);

end;

procedure TFrmArticulos.copiaBtClick(Sender: TObject);
begin

  with copia do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MTARTUCULOS_COPIA');
    open;
  end;

  with copia do
  begin
    first;

    while not eof do
    begin
      BtNuevo.Click;
      DBEdit2.Text := copiaARTICULO.Value;
      cxDBCalcEdit1.Value := copiaPRECIO_A.Value;
      cxDBCalcEdit9.Value := copiaPRECIO_B.Value;
      cxDBCalcEdit6.Value := copiaPRECIO_D.Value;
      OPproductos.ItemIndex := 0;
      BtGuardar.Click;
      Next;
    end;
  end;

end;

procedure TFrmArticulos.cxButton11Click(Sender: TObject);
begin
  ZQFAB.close;
  ZQFAB.open;
  cxGrid5.Visible := true;
  Edit4.Clear;
  Edit4.Visible := true;
  Edit4.SetFocus;

  { with max2 do
    begin
    close;
    open;
    end;

    datos.ZqProv_Arti.Open;
    datos.ZqProv_Arti.insert;
    datos.ZqProv_ArtiPROBEID.Value := max2max.Value + 1;
    // datos.ZqProv_ArtiREFERENCIA.Value := ref.Text;
    datos.ZqProv_ArtiCOD_ART.Value := datos.MantArtCOD_ART.Value;
    datos.ZqProv_ArtiPROVEID.Value := StrToInt(Edit3.Text);
    //  datos.ZqProv_ArtiDESCRIPCION.Value := ProvTXT.Text;
    datos.ZqProv_Arti.Post;

    // provTXT.Clear;
    // ref.Clear;
  }
end;

procedure TFrmArticulos.cxButton13Click(Sender: TObject);
begin
  if FrmProvee = nil then
  begin
    FrmProvee := tFrmProvee.Create(self);
    FrmProvee.ShowModal;
  end;

end;

procedure TFrmArticulos.cxButton14Click(Sender: TObject);
begin

  if frmbuscarmoneda = nil then
  begin
    frmbuscarmoneda := tfrmbuscarmoneda.Create(self);
    frmbuscarmoneda.Edit1.Text := '1';
    frmbuscarmoneda.ShowModal;

  end;

end;

procedure TFrmArticulos.cxButton15Click(Sender: TObject);
begin
  if application.MessageBox('Deseas Eliminar este Proveedor', 'Precausion',
    Mb_YesNo + MB_ICONQUESTION) = Id_yes then
  begin
    datos.ZqProv_Arti.Delete;

  end;
end;

procedure TFrmArticulos.cxButton16Click(Sender: TObject);
var
  ITB: currency;
  BN: currency;
begin
  with datos.MantArt do
  begin
    open;
    first;
    while not eof do
    begin
      ITB := 0.00;
      BN := 0.00;

      datos.MantArt.Edit;
      datos.mantArtITBIS.Value := 'Si';
      datos.MantArtTAZA_COMPRA.Value := 18;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := (datos.MantArtCOSTO.Value *
        ((datos.MantArtBENEFICIOS.Value) / 100));
      datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value) / 100));
      datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value) / 100));
      datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);

      Next;
    end;
  end;
end;

procedure TFrmArticulos.cxButton19Click(Sender: TObject);
var
  S: TMemoryStream;
  PV: TfrxComponent;
  s1: string;
  t1: string;
  Memo4: TfrxMemoView;

begin

  // edit7.Text:= DBEdit8.Text;
  //
  // t1 := copy(DBEdit8.Text,1,1);
  //
  // if t1 ='0' then begin
  //
  // with numero do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select gen_id(CODBAR_GEN, 1) from RDB$DATABASE');
  // open;
  // end;
  // //copy(s1,3,8);
  //
  // s1 := AnsiRightStr(DBEdit8.Text, 3);
  //
  // if (numerogen_id.Value >99)and(numerogen_id.Value <900) then
  // begin
  // s1 := AnsiRightStr(DBEdit1.Text,5);
  // end;
  //
  // if numerogen_id.Value >900 then
  // begin
  // s1 := AnsiRightStr(DBEdit1.Text,4);
  // end;
  //
  // if numerogen_id.Value >9000 then
  // begin
  // s1 := AnsiRightStr(DBEdit1.Text,3);
  // end;
  //
  // DBEdit8.Text := numerogen_id.Text+s1;
  // end;
  //
  //
  //
  // Codifica(DBEdit8.Text);
  // DBEdit8.SelStart:=0;
  // DBEdit8.SelLength:=Length(DBEdit8.Text);
  // edit6.Text := DBEdit8.Text;
  //
  // //
  //
  // datos.MantArt.Edit;
  // datos.MantArt.post;

  with FbRArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from mtartuculos a');
    sql.Add('where a.CODIGOBARRA =:oo');
    Params[0].Value := Edit6.Text;
    open;
  end;

  if (Timpresora1.ItemIndex = 0) and (Ltipo2.ItemIndex = 0) then
  begin
    if RG2.ItemIndex = 0 then
    begin

      // BarCode1:= EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;

    if RG2.ItemIndex = 1 then
    begin
      // BarCode1:=EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;

  end;

  if (Timpresora1.ItemIndex = 0) and (Ltipo2.ItemIndex = 1) then
  begin
    if RG2.ItemIndex = 0 then
    begin
      // BarCode1:=EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;

    if RG2.ItemIndex = 1 then
    begin

      // BarCode1:=EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;

    if RG2.ItemIndex = 1 then
    begin

      // BarCode1:=EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;
  end;

  if (Timpresora1.ItemIndex = 0) and (Ltipo2.ItemIndex = 2) then
  begin

    if RG2.ItemIndex = 0 then
    begin
      // BarCode1:=EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;

    if RG2.ItemIndex = 1 then
    begin
      // BarCode1:=EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;

  end;

  if (Timpresora1.ItemIndex = 0) and (Ltipo2.ItemIndex = 3) then
  begin

    if RG2.ItemIndex = 0 then
    begin
      // BarCode1:=EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;

    if RG2.ItemIndex = 1 then
    begin
      // BarCode1:=EtiquetaGondola.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // EtiquetaGondola.PrepareReport;
      // EtiquetaGondola.ShowPreparedReport ;
    end;

  end;

  if (Timpresora1.ItemIndex = 1) and (Ltipo2.ItemIndex = 0) then
  begin
    if RG2.ItemIndex = 0 then
    begin

      // imprime2.PrintReport;
    end;

    if RG2.ItemIndex = 1 then
    begin

      // imprimesp.PrintReport;
    end;

  end;
  //

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
    sql.Add('where a.CODIGOBARRA =:oo');
    Params[0].Value := Edit6.Text;
    open;
  end;

end;

procedure TFrmArticulos.BtfinalClick(Sender: TObject);
begin
  IbqRArticulos1.open;
  IbqRArticulos1.Last;

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
    sql.Add('where a.cod_art =:oo');
    Params[0].Value := IbqRArticulos1COD_ART.Value;
    open;
  end;
  // Label11.Caption := IntToStr(IbqRArticulos1.RecNo );
  // Label12.Caption := IntToStr(IbqRArticulos1.RecordCount);

end;

procedure TFrmArticulos.BtModificarClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
  end

  else
  begin
    if OPproductos.ItemIndex = 2 then
    begin
      TabCompuesto.Enabled := true;
      // TabFraccionado.Enabled := False;
    end;

    if OPproductos.ItemIndex = 1 then
    begin
      TabCompuesto.Enabled := false;
      // TabFraccionado.Enabled := true;
    end;

    if OPproductos.ItemIndex = 0 then
    begin
      TabCompuesto.Enabled := false;
      // TabFraccionado.Enabled := false;
    end;
    TabCompuesto.Enabled := false;
    // TabFraccionado.Enabled := false;
    datos.FbCategorias.open;
    FrmArticulos.op11.Enabled := true;
    FrmArticulos.Edit1.Text := 'MOD';
    Edit6.Text := datos.MantArtCODIGOTXT.Value;
    datos.MantArt.Edit;

    // datos.Zunidad.Open;
    FrmArticulos.BtCancelar.Enabled := true;
    FrmArticulos.BtGuardar.Enabled := true;
    FrmArticulos.btmodi.Enabled := false;
    datos.Control_Precio.open;
    qcategoria.open;
    datos.ZqProv_Arti.open;

    if datos.ZUconfiguracionTerminal.Value = 'Pizzeria' then
    begin
      QClasificaciones.open;
    end;

    FrmArticulos.BtGuardar.Enabled := true;
    FrmArticulos.BtCancelar.Enabled := true;
    FrmArticulos.btmodi.Enabled := false;
    // btinicio.Enabled := false;
    // btanterior.Enabled := false;
    // Btsiguiente.Enabled := false;
    // Btfinal.Enabled := false;
    BtModificar.Enabled := false;
    BtBuscar.Enabled := false;
    BtNuevo.Enabled := false;
    cxButton4.Visible := true;

  end;
end;

procedure TFrmArticulos.cxButton1Click(Sender: TObject);
var
  BitmapOriginal, BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
begin
  inherited;

  datos.MantArt.Edit;

  BitmapNew := TBitmap.Create;
  BitmapOriginal := TBitmap.Create;
  // stream:= TMemoryStream.Create;

  try
    if BuscaImagen.Execute then
      TBlobField(datos.MantArt.FieldByName('Imagen'))
        .LoadFromFile(BuscaImagen.FileName);
    //
  finally
    FreeAndNil(BitmapOriginal);
  end;

end;

procedure TFrmArticulos.cxButton22Click(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin
  ITB := 0.00;
  BN := 0.00;

  if datos.MantArtCOSTO.Value > 0 then
  begin

    if datos.MantArtPRE1.Value > 0 then
    begin
      ITB := 0.00;
      BN := 0.00;
      ITB := (datos.MantArtPRE1.Value - (datos.MantArtCOSTO.Value *
        (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

      // ShowMessage(''+FloatTOStr(ITB));
      datos.MantArt.Edit;
      datos.MantArtpre2.Value :=
        Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

      BN := (datos.MantArtCOSTO.Value * ((datos.MantArtpre2.Value) / 100));
      // datos.MantArtPRECIO_Bruto1.Value := round(Bn + datos.MantArtCOSTO.Value);
    end;

    if datos.MantArtMAYOREO1.Value > 0 then
    begin
      ITB := 0.00;
      BN := 0.00;
      ITB := (datos.MantArtMAYOREO1.Value - (datos.MantArtCOSTO.Value *
        (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

      // ShowMessage(''+FloatTOStr(ITB));
      datos.MantArt.Edit;
      datos.MantArtMAYOREO2.Value :=
        Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

      BN := (datos.MantArtCOSTO.Value * ((datos.MantArtMAYOREO2.Value) / 100));
      // datos.MantArtPRECIO_Bruto1.Value := round(Bn + datos.MantArtCOSTO.Value);
    end;

  end;

end;

procedure TFrmArticulos.btAculizaPreciosFinalesClick(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin
  ITB := 0.00;
  BN := 0.00;

  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin

    if datos.MantArtCOSTO.Value > 0 then
    begin

      if datos.MantArtPRECIO_A.Value > 0 then
      begin
        ITB := 0.00;
        BN := 0.00;
        ITB := (datos.MantArtPRECIO_A.Value - (datos.MantArtCOSTO.Value *
          (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

        // ShowMessage(''+FloatTOStr(ITB));
        datos.MantArt.Edit;
        datos.MantArtBENEFICIOS.Value :=
          Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtBENEFICIOS.Value) / 100));
        datos.MantArtPRECIO_Bruto1.Value :=
          Round(BN + datos.MantArtCOSTO.Value);
      end;

      if datos.MantArtPRECIO_b.Value > 0 then
      begin
        ITB := 0.00;
        BN := 0.00;
        ITB := (datos.MantArtPRECIO_b.Value - (datos.MantArtCOSTO.Value *
          (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

        // ShowMessage(''+FloatTOStr(ITB));
        datos.MantArt.Edit;
        datos.MantArtutilidad2.Value :=
          Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtutilidad2.Value) / 100));
        datos.MantArtPRECIO_Bruto2.Value :=
          Round(BN + datos.MantArtCOSTO.Value);
      end;

      if datos.MantArtPRECIO_d.Value > 0 then
      begin
        ITB := 0.00;
        BN := 0.00;
        ITB := (datos.MantArtPRECIO_d.Value - (datos.MantArtCOSTO.Value *
          (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

        // ShowMessage(''+FloatTOStr(ITB));
        datos.MantArt.Edit;
        datos.MantArtutilidad3.Value :=
          Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtutilidad3.Value) / 100));
        datos.MantArtPRECIO_Bruto3.Value :=
          Round(BN + datos.MantArtCOSTO.Value);
      end;

      if datos.MantArtPRECIO_C.Value > 0 then
      begin
        ITB := 0.00;
        BN := 0.00;
        ITB := (datos.MantArtPRECIO_C.Value - (datos.MantArtCOSTO.Value *
          (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

        // ShowMessage(''+FloatTOStr(ITB));
        datos.MantArt.Edit;
        datos.MantArTUTILIDAD4.Value :=
          Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArTUTILIDAD4.Value) / 100));
        datos.MantArtPRECIO_Bruto4.Value :=
          Round(BN + datos.MantArtCOSTO.Value);
      end;

    end;

  end;

end;

procedure TFrmArticulos.BtnIgredientesClick(Sender: TObject);
begin
  datos.TbIngredientes.open;
  FGetIngredientes.ShowModal;
end;

procedure TFrmArticulos.btnsalirClick(Sender: TObject);
begin
  close;
end;

procedure TFrmArticulos.cxButton2Click(Sender: TObject);
begin
  // CurvyPanel1.Visible := true;
end;

procedure TFrmArticulos.cxButton3Click(Sender: TObject);
begin
  if FmrMant_Categoria = nil then
  begin
    FmrMant_Categoria := tFmrMant_Categoria.Create(self);
    FmrMant_Categoria.ShowModal;
  end;

end;

procedure TFrmArticulos.BtBuscarClick(Sender: TObject);
begin
  if FrmMAntArticulos = nil then
  begin
    FrmMAntArticulos := tFrmMAntArticulos.Create(self);
    FrmMAntArticulos.ShowModal;
  end;

end;

procedure TFrmArticulos.cxButton4Click(Sender: TObject);
var
  cero: string;
begin
  if datos.MantArtPOLITICA.Value = 'fraccional' then
  begin
    if datos.MantArtCOD_UV.Value > 0 then
    begin

      with BuscarParti do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*  from particionado a');
        sql.Add('where a.id_unidad =:op1');
        sql.Add('and a.cod_arti =:op2');
        Params[0].Value := datos.MantArtCOD_UV.Value;
        Params[1].Value := datos.MantArtCOD_ART.Value;
        open;
      end;

      if BuscarParti.RecordCount > 0 then
      begin

        if FrmPartionamiento = nil then
        begin

          FrmPartionamiento := tFrmPartionamiento.Create(self);
          // FrmPartionamiento.precio12.Value := datos.MantArtPRECIO_A.Value;
          FrmPartionamiento.ShowModal;
        end;
      end
      else
      begin

        with NumeroCombo do
        begin
          close;
          sql.Clear;
          sql.Add('select gen_id(GEN_PARTICIONADO_ID, 1) from RDB$DATABASE');
          open;
        end;

        datos.ZqParticion.open;
        datos.ZqParticion.Insert;

        datos.ZqParticionid.Value := NumeroComboGEN_ID.Value;

        datos.ZqParticionID_UNIDAD.Value := datos.MantArtCOD_UV.Value;
        datos.ZqParticionCOD_ARTI.Value := datos.MantArtCOD_ART.Value;
        datos.ZqParticionCANTI.Value := 1;
        datos.ZqParticionCOD_PART.Value := 1;
        datos.ZqParticionPRECIO1.Value := datos.MantArtPRECIO_A.Value;
        datos.ZqParticionPRECIO2.Value := datos.MantArtPRECIO_b.Value;
        datos.ZqParticionUNIDAD.Value := datos.MantArtUNIDAD.Value;

        datos.ZqParticion.Post;
        datos.ZqParticion.Refresh;

        if FrmPartionamiento = nil then
        begin

          FrmPartionamiento := tFrmPartionamiento.Create(self);
          FrmPartionamiento.precio12.Value := datos.MantArtPRECIO_A.Value;
          FrmPartionamiento.ShowModal;
        end;

      end;
    end
    else
    begin
      ShowMessage(' Debese asignarle unidad de venta a este items ');
    end;
  end
  else
  begin
    ShowMessage('  Este items no es Producto Fraccionado ');
  end;

end;

procedure TFrmArticulos.cxButton5Click(Sender: TObject);
var
  cero: string;
begin

  if Edit1.Text = 'MOD' THEN
  begin
    datos.MaCombo.open;
    // FrmCombo.cxButton4.Enabled := true;
    FrmCombo.cxButton1.Enabled := false;
    FrmCombo.BtGuardar.Enabled := true;
  end
  else
  begin

    datos.MaCombo.open;
    datos.MaCombo.Insert;

    datos.MaComboCOMBOMASTER.Value := datos.MantArtCOD_ART.Value;

    if datos.MaComboCOMBOMASTER.Value >= 1 then
    begin
      cero := '000';
    end;

    if datos.MaComboCOMBOMASTER.Value >= 10 then
    begin
      cero := '00';
    end;

    if datos.MaComboCOMBOMASTER.Value >= 100 then
    begin
      cero := '0';
    end;

    if datos.MaComboCOMBOMASTER.Value >= 1000 then
    begin
      cero := '';
    end;

    FrmCombo.opmaster.Enabled := true;

    datos.MaComboCODIGOTXT.Value := 'C' +
      IntToStr(datos.MaComboCOMBOMASTER.Value);
    datos.MaComboCODTIENDA.Value := Asignatienda;
    datos.MaComboESTADO.Value := 1;
    datos.MaComboNOMBRECOMBO.Value := datos.MantArtARTICULO.Value;
    // FrmCombo.cxButton4.Enabled := true;
    FrmCombo.cxButton1.Enabled := false;
    // FrmCombo.cxDBTextEdit1.SetFocus;

  end;
  FrmCombo.ShowModal;

end;

procedure TFrmArticulos.cxButton6Click(Sender: TObject);
var
  x, x1: Double;
begin

  if datos.mantArtITBIS.Value = 'Si' then
  begin
    if datos.MantArtCOSTO.Value > 0 then
    begin
      x := datos.mantartCOSTO_DOLLARS.Value - datos.MantArtCOSTO.Value;
      datos.MantArtTAZA_COMPRA.Value :=
        Round((x * 100) / datos.MantArtCOSTO.Value);
    end
    else
    begin
      ShowMessage(' Favor Especificar Costo sin ITBS ');
    end;

  end
  else
  begin
    ShowMessage(' ITBS no esta activado ');
  end;


  // if DBComboBox1.ItemIndex = 0 then
  // begin
  // datos.MantArt.Edit;
  // datos.MantArtTAZA_COMPRA.Value := datos.ZUconfiguracionITBIS.Value;
  // end else begin
  // datos.MantArt.Edit;
  // datos.MantArtTAZA_COMPRA.Value := 0.00;
  // end;
  //
  //
  //
  // datos.MantArt.Edit;
  // datos.MantArtPRECIO_A.Value := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value + datos.MantArtTAZA_COMPRA.Value)/100)) + datos.MantArtCOSTO.Value;
  // datos.MantArtPRECIO_Bruto1.Value := (datos.MantArtCOSTO.Value * (datos.MantArtBENEFICIOS.Value)/100) + datos.MantArtCOSTO.Value;
  //
  // datos.MantArtPRECIO_b.Value := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value + datos.MantArtTAZA_COMPRA.Value)/100)) + datos.MantArtCOSTO.Value;
  // datos.MantArtPRECIO_Bruto2.Value := (datos.MantArtCOSTO.Value * (datos.MantArtutilidad2.Value)/100) + datos.MantArtCOSTO.Value;
  //
  // datos.MantArtPRECIO_d.Value := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value + datos.MantArtTAZA_COMPRA.Value)/100)) + datos.MantArtCOSTO.Value;
  // datos.MantArtPRECIO_Bruto3.Value := (datos.MantArtCOSTO.Value * (datos.MantArtutilidad3.Value)/100) + datos.MantArtCOSTO.Value;

end;

procedure TFrmArticulos.cxButton7Click(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin
  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    datos.MantArt.Edit;
    if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
    begin
      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := (datos.MantArtCOSTO.Value *
        ((datos.MantArtBENEFICIOS.Value) / 100));
      datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value) / 100));
      datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value) / 100));
      datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := (datos.MantArtCOSTO.Value * ((datos.MantArTUTILIDAD4.Value) / 100));
      datos.MantArtPRECIO_C.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto4.Value := Round(BN + datos.MantArtCOSTO.Value);
    end
    else
    begin
      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := ((datos.MantArtCOSTO.Value + ITB) *
        ((datos.MantArtBENEFICIOS.Value) / 100));
      datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := ((datos.MantArtCOSTO.Value + ITB) *
        ((datos.MantArtutilidad2.Value) / 100));
      datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := ((datos.MantArtCOSTO.Value + ITB) *
        ((datos.MantArtutilidad3.Value) / 100));
      datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      BN := ((datos.MantArtCOSTO.Value + ITB) *
        ((datos.MantArTUTILIDAD4.Value) / 100));
      datos.MantArtPRECIO_C.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto4.Value := Round(BN + datos.MantArtCOSTO.Value);
    end;
  end;

end;

procedure TFrmArticulos.BTinicioClick(Sender: TObject);
begin
  datos.ZqProv_Arti.open;
  IbqRArticulos1.open;
  IbqRArticulos1.first;
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
    sql.Add('where a.cod_art =:oo');
    Params[0].Value := IbqRArticulos1COD_ART.Value;
    open;
  end;





  // Label11.Caption := IntToStr(IbqRArticulos1.RecNo );
  // Label12.Caption := IntToStr(IbqRArticulos1.RecordCount);

end;

procedure TFrmArticulos.cxButton8Click(Sender: TObject);
begin
  // cxGrid3.Visible := true;
  with max2 do
  begin
    close;
    open;
  end;

  with numeroProb do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(GEN_PROB_ARTI_ID, 1) from RDB$DATABASE');
    open;
  end;

  datos.ZqProv_Arti.open;
  datos.ZqProv_Arti.Insert;
  datos.ZqProv_ArtiPROBEID.Value := numeroProbGEN_ID.Value;
  // datos.ZqProv_ArtiREFERENCIA.Value := ref.Text;
  // showmessage(''+IntToStr(datos.MantArtCOD_ART.Value));
  datos.ZqProv_ArtiCOD_ART.Value := datos.MantArtCOD_ART.Value;
  datos.ZqProv_ArtiPROVEID.Value := StrToInt(DBEdit3.Text);
  datos.ZqProv_ArtiDESCRIPCION.Value := provTXT1.Text;

  datos.ZqProv_Arti.Post;

  provTXT1.Clear;
  /// ref.Clear;

end;

procedure TFrmArticulos.cxButton9Click(Sender: TObject);
begin
  Qunidad.close;
  Qunidad.open;
  cxGrid1.Visible := true;
  cxGrid1.SetFocus;

end;

procedure TFrmArticulos.BtanteriorClick(Sender: TObject);
begin
  datos.ZqProv_Arti.open;
  IbqRArticulos1.open;
  IbqRArticulos1.Prior;

  with datos.MantArt do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('LEFT join tb_moneda c On a.idmoneda = c.id');
    sql.Add('where a.cod_art =:oo');
    Params[0].Value := IbqRArticulos1COD_ART.Value;
    open;
  end;


  // Label11.Caption := IntToStr(IbqRArticulos1.RecNo );
  // Label12.Caption := IntToStr(IbqRArticulos1.RecordCount);

end;

procedure TFrmArticulos.cxDBCalcEdit10Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;
begin

  ITB := 0.00;
  BN := 0.00;

  if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
  begin
    ITB := (datos.MantArtCOSTO.Value *
      ((datos.MantArtTAZA_COMPRA.Value) / 100));

    if datos.MantArtBENEFICIOS.Value <= 0 then
    begin
      BN := ((datos.MantArtCOSTO.Value) * ((30) / 100));
    end
    else
    begin
      BN := ((datos.MantArtCOSTO.Value) *
        ((datos.MantArtBENEFICIOS.Value) / 100));
    end;

    datos.MantArt.Edit;
    datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);

  end
  else
  begin

    ITB := 0.00;

    if datos.MantArtBENEFICIOS.Value <= 0 then
    begin
      BN := ((datos.mantartCOSTO_DOLLARS.Value + ITB) * ((30) / 100));
    end
    else
    begin
      BN := ((datos.mantartCOSTO_DOLLARS.Value + ITB) *
        ((datos.MantArtBENEFICIOS.Value) / 100));
    end;

    datos.MantArt.Edit;
    datos.MantArtPRECIO_A.Value :=
      Round(datos.mantartCOSTO_DOLLARS.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto1.Value :=
      Round(BN + datos.mantartCOSTO_DOLLARS.Value);
  end;

end;

procedure TFrmArticulos.cxDBCalcEdit10PropertiesChange(Sender: TObject);
var
  ITB: currency;
  BN: currency;
begin

  // ITB := 0.00;
  // BN  := 0.00;
  // if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
  // begin
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100));
  // datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
  // datos.MantArtPRECIO_Bruto1.Value := Round(Bn + datos.MantArtCOSTO.Value);
  //
  //
  // end else begin
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := ((datos.MantArtCOSTO.Value + ITB) * ((datos.MantArtBENEFICIOS.Value)/100));
  // datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
  // datos.MantArtPRECIO_Bruto1.Value := Round(Bn + datos.MantArtCOSTO.Value);
  //
  //
  // end;


  // datos.MantArt.Edit;
  // datos.MantArtPRECIO_A.Value := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value + datos.MantArtTAZA_COMPRA.Value)/100)) + datos.MantArtCOSTO.Value;
  // datos.MantArtPRECIO_Bruto1.Value := (datos.MantArtCOSTO.Value * (datos.MantArtBENEFICIOS.Value)/100) + datos.MantArtCOSTO.Value;

end;

procedure TFrmArticulos.cxDBCalcEdit14Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin

  ITB := 0.00;
  BN := 0.00;
  if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
  begin
    ITB := (datos.MantArtCOSTO.Value *
      ((datos.MantArtTAZA_COMPRA.Value) / 100));
    // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtUTILIDAD3.Value)/100));

    if datos.MantArtBENEFICIOS.Value <= 0 then
    begin
      BN := ((datos.MantArtCOSTO.Value) * ((30) / 100));
    end
    else
    begin
      BN := ((datos.MantArtCOSTO.Value) *
        ((datos.MantArtutilidad3.Value) / 100));
    end;

    datos.MantArt.Edit;
    datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);

  end
  else
  begin
    ITB := 0.00;

    if datos.MantArtBENEFICIOS.Value <= 0 then
    begin
      BN := ((datos.mantartCOSTO_DOLLARS.Value + ITB) * ((30) / 100));
    end
    else
    begin
      BN := ((datos.mantartCOSTO_DOLLARS.Value + ITB) *
        ((datos.MantArtutilidad3.Value) / 100));
    end;

    datos.MantArt.Edit;
    datos.MantArtPRECIO_d.Value :=
      Round(datos.mantartCOSTO_DOLLARS.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto3.Value :=
      Round(BN + datos.mantartCOSTO_DOLLARS.Value);

  end;

end;

procedure TFrmArticulos.cxDBCalcEdit14PropertiesEditValueChanged
  (Sender: TObject);
begin
  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    datos.MantArt.Edit;
    datos.MantArtPRECIO_d.Value :=
      Round((datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value +
      datos.MantArtTAZA_COMPRA.Value) / 100)) + datos.MantArtCOSTO.Value);
    datos.MantArtPRECIO_Bruto3.Value :=
      Round((datos.MantArtCOSTO.Value * (datos.MantArtutilidad3.Value) / 100) +
      datos.MantArtCOSTO.Value);
  end;
end;

procedure TFrmArticulos.cxDBCalcEdit1Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin

  if datos.MantArtPRECIO_A.Value < datos.MantArtCOSTO.Value then
  begin
    ShowMessage(' El precio no debe ser menor que el costo ');
    cxDBCalcEdit1.Style.Color := clRed;
  end
  else
  begin
    cxDBCalcEdit1.Style.Color := clWindow;

  end;

  ITB := 0.00;
  BN := 0.00;

  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    if datos.MantArtCOSTO.Value > 0 then
    begin
      ITB := (datos.MantArtPRECIO_A.Value - (datos.MantArtCOSTO.Value *
        (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

      // ShowMessage(''+FloatTOStr(ITB));
      datos.MantArt.Edit;
      datos.MantArtBENEFICIOS.Value :=
        Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value) *
          ((datos.MantArtBENEFICIOS.Value) / 100));
      end;

      datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);
    end;
  end;
end;

procedure TFrmArticulos.cxDBCalcEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // if key = VK_RETURN then
  // begin
  // Showmessage(''+CurrToStr(cxDBCalcEdit1.Value));
  //
  // end;

end;

procedure TFrmArticulos.cxDBCalcEdit22Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin

  ITB := 0.00;
  BN := 0.00;
  if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
  begin
    ITB := (datos.MantArtCOSTO.Value *
      ((datos.MantArtTAZA_COMPRA.Value) / 100));
    // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtUTILIDAD4.Value)/100));

    if datos.MantArtBENEFICIOS.Value <= 0 then
    begin
      BN := ((datos.MantArtCOSTO.Value) * ((30) / 100));
    end
    else
    begin
      BN := ((datos.MantArtCOSTO.Value) *
        ((datos.MantArTUTILIDAD4.Value) / 100));
    end;

    datos.MantArt.Edit;
    datos.MantArtPRECIO_C.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto4.Value := Round(BN + datos.MantArtCOSTO.Value);

  end
  else
  begin
    ITB := 0.00;
    // Bn  := ((datos.MantArtCOSTO_DOLLARS.Value + ITB) * ((datos.MantArtUTILIDAD4.Value)/100));

    if datos.MantArtBENEFICIOS.Value <= 0 then
    begin
      BN := ((datos.mantartCOSTO_DOLLARS.Value + ITB) * ((30) / 100));
    end
    else
    begin
      BN := ((datos.mantartCOSTO_DOLLARS.Value + ITB) *
        ((datos.MantArTUTILIDAD4.Value) / 100));
    end;

    datos.MantArt.Edit;

    datos.MantArtPRECIO_C.Value :=
      Round(datos.mantartCOSTO_DOLLARS.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto4.Value :=
      Round(BN + datos.mantartCOSTO_DOLLARS.Value);

  end;

end;

procedure TFrmArticulos.cxDBCalcEdit23Exit(Sender: TObject);
var
  ITBArticulos: Integer;
  ITBDeducible: String;
  ITBDeducible1: Double;

begin
  if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
  begin

  end
  else
  begin
    ITBArticulos := Round(datos.MantArtTAZA_COMPRA.Value);
    ITBDeducible := '1.' + IntToStr(ITBArticulos);

    datos.MantArt.Edit;
    datos.MantArtCOSTO.Value := datos.mantartCOSTO_DOLLARS.Value /
      StrToFloat(ITBDeducible);
  end;
  // if datos.MantArtCOSTO_DOLLARS.Value >0.00 then
  // begin
  // DATOS.MantArt.Edit;
  // datos.MantArtCOSTO.Value := datos.MantArtCOSTO_DOLLARS.Value * datos.ZUconfiguracionTAZA.Value;
  // end;
end;

procedure TFrmArticulos.cxDBCalcEdit25Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin

  if datos.MantArtPRECIO_C.Value < datos.MantArtCOSTO.Value then
  begin
    ShowMessage(' El precio no debe ser menor que el costo ');
    cxDBCalcEdit1.Style.Color := clRed;
  end
  else
  begin
    cxDBCalcEdit1.Style.Color := clWindow;

  end;

  ITB := 0.00;
  BN := 0.00;

  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    if datos.MantArtCOSTO.Value > 0 then
    begin
      ITB := (datos.MantArtPRECIO_d.Value - (datos.MantArtCOSTO.Value *
        (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

      // ShowMessage(''+FloatTOStr(ITB));
      datos.MantArt.Edit;
      datos.MantArtutilidad3.Value :=
        Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value) *
          ((datos.MantArTUTILIDAD4.Value) / 100));
      end;

      datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);
    end;
  end;

end;

procedure TFrmArticulos.cxDBCalcEdit4Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin
  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    datos.MantArt.Edit;
    if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
    begin

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := (datos.MantArtCOSTO.Value * ((30) / 100));
      end
      else
      begin
        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtBENEFICIOS.Value) / 100));
      end;

      datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtBENEFICIOS.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := (datos.MantArtCOSTO.Value * ((30) / 100));
      end
      else
      begin
        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtutilidad2.Value) / 100));
      end;

      datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad2.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := (datos.MantArtCOSTO.Value * ((30) / 100));
      end
      else
      begin
        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtutilidad3.Value) / 100));
      end;

      datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad3.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := (datos.MantArtCOSTO.Value * ((30) / 100));
      end
      else
      begin
        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArTUTILIDAD4.Value) / 100));
      end;

      datos.MantArtPRECIO_C.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto4.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad4.Value := 30;
    end
    else
    begin
      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) *
          ((datos.MantArtBENEFICIOS.Value) / 100));
      end;

      datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtBENEFICIOS.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) *
          ((datos.MantArtutilidad2.Value) / 100));
      end;

      datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad2.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) *
          ((datos.MantArtutilidad3.Value) / 100));
      end;

      datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad3.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) *
          ((datos.MantArTUTILIDAD4.Value) / 100));
      end;

      datos.MantArtPRECIO_C.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto4.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad4.Value := 30;
    end;
  end;

end;

procedure TFrmArticulos.cxDBCalcEdit4PropertiesChange(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin
  //
  //
  // if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit)  then begin
  // datos.MantArt.Edit;
  //
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100));
  // datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
  // datos.MantArtPRECIO_Bruto1.Value := Round(Bn + datos.MantArtCOSTO.Value);
  //
  //
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value)/100));
  // datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
  // datos.MantArtPRECIO_Bruto2.Value := Round(Bn + datos.MantArtCOSTO.Value);
  //
  //
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value)/100));
  // datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
  // datos.MantArtPRECIO_Bruto3.Value := Round(Bn + datos.MantArtCOSTO.Value);
  // end;
  // if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit)  then begin
  // datos.MantArt.Edit;
  //
  // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
  // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100));
  //
  // //  ShowMessage(''+CurrToStr(Itb)+'  '+CurrToStr(Bn));
  // datos.MantArtPRECIO_A.Value := datos.MantArtCOSTO.Value + ITB + Bn;
  // datos.MantArtPRECIO_Bruto1.Value := Bn + datos.MantArtCOSTO.Value;
  // end;

end;

procedure TFrmArticulos.cxDBCalcEdit6Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;
begin

  if datos.MantArtPRECIO_d.Value < datos.MantArtCOSTO.Value then
  begin
    ShowMessage(' El precio no debe ser menor que el costo ');
    cxDBCalcEdit1.Style.Color := clRed;
  end
  else
  begin
    cxDBCalcEdit1.Style.Color := clWindow;

  end;

  ITB := 0.00;
  BN := 0.00;

  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    if datos.MantArtCOSTO.Value > 0 then
    begin
      ITB := (datos.MantArtPRECIO_C.Value - (datos.MantArtCOSTO.Value *
        (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

      // ShowMessage(''+FloatTOStr(ITB));
      datos.MantArt.Edit;
      datos.MantArTUTILIDAD4.Value :=
        Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value) *
          ((datos.MantArTUTILIDAD4.Value) / 100));
      end;

      datos.MantArtPRECIO_Bruto4.Value := Round(BN + datos.MantArtCOSTO.Value);
    end;
  end;

end;

procedure TFrmArticulos.cxDBCalcEdit8Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin

  ITB := 0.00;
  BN := 0.00;
  if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
  begin
    ITB := (datos.MantArtCOSTO.Value *
      ((datos.MantArtTAZA_COMPRA.Value) / 100));

    if datos.MantArtBENEFICIOS.Value <= 0 then
    begin
      BN := ((datos.MantArtCOSTO.Value) * ((30) / 100));
    end
    else
    begin
      BN := ((datos.MantArtCOSTO.Value) *
        ((datos.MantArtutilidad2.Value) / 100));
    end;

    datos.MantArt.Edit;
    datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);

  end
  else
  begin

    ITB := 0.00;

    if datos.MantArtBENEFICIOS.Value <= 0 then
    begin
      BN := ((datos.mantartCOSTO_DOLLARS.Value + ITB) * ((30) / 100));
    end
    else
    begin
      BN := ((datos.mantartCOSTO_DOLLARS.Value + ITB) *
        ((datos.MantArtutilidad2.Value) / 100));
    end;

    datos.MantArt.Edit;
    datos.MantArtPRECIO_b.Value :=
      Round(datos.mantartCOSTO_DOLLARS.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto2.Value :=
      Round(BN + datos.mantartCOSTO_DOLLARS.Value);

  end;

end;

procedure TFrmArticulos.cxDBCalcEdit8PropertiesEditValueChanged
  (Sender: TObject);
begin
  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    datos.MantArt.Edit;
    datos.MantArtPRECIO_b.Value :=
      Round((datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value +
      datos.MantArtTAZA_COMPRA.Value) / 100)) + datos.MantArtCOSTO.Value);
    datos.MantArtPRECIO_Bruto2.Value :=
      Round((datos.MantArtCOSTO.Value * (datos.MantArtutilidad2.Value) / 100) +
      datos.MantArtCOSTO.Value);
  end;
end;

procedure TFrmArticulos.cxDBCalcEdit9Exit(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin

  if datos.MantArtPRECIO_b.Value < datos.MantArtCOSTO.Value then
  begin
    ShowMessage(' El precio no debe ser menor que el costo ');
    cxDBCalcEdit1.Style.Color := clRed;
  end
  else
  begin
    cxDBCalcEdit1.Style.Color := clWindow;

  end;

  ITB := 0.00;
  BN := 0.00;

  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    if datos.MantArtCOSTO.Value > 0 then
    begin
      ITB := (datos.MantArtPRECIO_b.Value - (datos.MantArtCOSTO.Value *
        (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

      datos.MantArt.Edit;
      datos.MantArtutilidad2.Value :=
        Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value) *
          ((datos.MantArtutilidad2.Value) / 100));
      end;

      datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);
    end;
  end;

end;

procedure TFrmArticulos.cxDBComboBox2PropertiesChange(Sender: TObject);
begin
  {
    if cxDBComboBox2.ItemIndex = 1 then
    begin
    cxButton4.Enabled := true;
    end else begin
    cxButton4.Enabled := false;
    end;
  }
end;

procedure TFrmArticulos.cxDBTextEdit1Exit(Sender: TObject);
begin
  {
    if edit5.Text = 'NUEV' then BEGIN

    with zqvalidabarra do
    begin
    close;
    sql.Clear;
    sql.Add('select codigobarra from mtartuculos');
    sql.Add('where codigobarra =:pp');
    params[0].Value := cxDBTextEdit1.Text;
    open;
    end;

    if zqvalidabarra.RecordCount = 1 then
    begin
    Showmessage('** Este codigo de Barra ya existe **');
    cxDBTextEdit1.Clear;
    cxDBTextEdit1.SetFocus;
    end;
    END;
  }
end;

procedure TFrmArticulos.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if Edit5.Text = 'NUEV' then
    BEGIN

      with ZqValidaBarra do
      begin
        close;
        sql.Clear;
        sql.Add('select codigobarra from mtartuculos');
        sql.Add('where codigobarra =:pp');
        Params[0].Value := DBEdit8.Text;
        open;
      end;

      if ZqValidaBarra.RecordCount = 1 then
      begin

        DBEdit8.Clear;
        DBEdit8.SetFocus;

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
          sql.Add('where a.cod_art =:oo');
          Params[0].Value := ZqValidaBarraCODIGOBARRA.Value;
          open;
        end;

        Edit5.Text := 'MOD';

      end;

    end;
  end;
end;

procedure TFrmArticulos.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

  with datos.MantArt do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.cod_art =:oo');
    Params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;

  datos.FbCategorias.open;
  FrmArticulos.op11.Enabled := false;
  FrmArticulos.op11.Pages[0].Visible := true;
  FrmArticulos.Edit1.Text := 'MOD';

  if IbqRArticulosPOLITICA.Value = 'Combo' then
  begin
    // FrmArticulos.cxGroupBox1.Enabled := false;
  end;

  if IbqRArticulosPOLITICA.Value = 'Producto' then
  begin
    // FrmArticulos.cxGroupBox1.Enabled := true;
  end;

  FrmArticulos.op11.Enabled := true;
  datos.MantArt.Edit;

  { with datos.FbqFabricantes do
    begin
    close;
    sql.Clear;
    sql.Add('select * from fabricantes');
    sql.Add('where cod =:ooo');
    params[0].Value := datos.MantArtCOD_PROV1.Value;
    open;
    end;
    FrmArticulos.edit3.Text := datos.MantArtCOD_PROV1.Text;
    FrmArticulos.ProvTXT.Text := datos.FbqFabricantesDESCRIPCION.Value;
    FrmArticulos.ref.Text := datos.MantArtREFERENCIA.Text; }
  // datos.Zunidad.Open;
  // cxButton5.Enabled := false;
  BtGuardar.Enabled := true;
  BtCancelar.Enabled := true;
  btmodi.Enabled := false;
  op11.Enabled := true;
  datos.Control_Precio.open;
  datos.ZqProv_Arti.open;
  // FrmArticulos.ShowModal;
end;

procedure TFrmArticulos.cxGrid3DBTableView1DblClick(Sender: TObject);
begin

  datos.MantArt.Edit;
  datos.MantArtCOD_UV.Value := QunidadCOD_UNIDAD_M.Value;
  datos.MantArtUNIDAD.Value := QunidadUNIDAD.Value;

  cxGrid1.Visible := false;
end;

procedure TFrmArticulos.cxGrid6DBTableView1DblClick(Sender: TObject);
begin
  // DBEdit4.Text := zmarcasmarca.Value;
  cxGrid6.Visible := false;
end;

procedure TFrmArticulos.cxGridDBTableView1DblClick(Sender: TObject);
begin
  provTXT1.Text := ZQFABDESCRIPCION.Value;
  datos.MantArt.Edit;
  datos.MantArtCOD_PROV1.Value := ZQFABCOD.Value;
  Edit3.Text := IntToStr(ZQFABCOD.Value);
  cxGrid5.Visible := false;
  // ref.SetFocus;
  Edit4.Visible := false;
end;

procedure TFrmArticulos.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    provTXT1.Text := ZQFABDESCRIPCION.Value;
    datos.MantArt.Edit;
    datos.MantArtCOD_PROV1.Value := ZQFABCOD.Value;
    // edit3.Text := IntTostr(ZQFABCOD.Value);
    cxGrid5.Visible := false;
    // ref.SetFocus;
    Edit4.Visible := false;
  end;
end;

procedure TFrmArticulos.cxGridDBTableView4CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] > 0) then
  BEGIN
    ACanvas.Brush.Color := $00E1FFF9;
  end;
  if (AViewInfo.GridRecord.Values[3] > 0) then
  BEGIN
    ACanvas.Brush.Color := $00FFEBDF;
  END;
end;

procedure TFrmArticulos.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  cxButton6.Click;
end;

procedure TFrmArticulos.DsArticulosStateChange(Sender: TObject);
var
  m, f: TStream;
begin

end;

procedure TFrmArticulos.DsArticulosUpdateData(Sender: TObject);
var
  m, f: TStream;
begin

end;

procedure TFrmArticulos.Edit4Change(Sender: TObject);
begin
  with ZQFAB do
  begin
    close;
    sql.Clear;
    sql.Add('select * from fabricantes');
    sql.Add('where descripcion like ' + #39 + '%' + Edit4.Text + '%' + #39);
    open;
  end;
end;

procedure TFrmArticulos.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    cxGrid5.SetFocus;
  end;
end;

procedure TFrmArticulos.Edit6Change(Sender: TObject);
begin
  // with datos.Zunidad do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select * from unidad_m');
  // sql.Add('where descripcion like '+#39+'%'+Edit6.Text+'%'+#39);
  // open;
  // end;
end;

procedure TFrmArticulos.Edit6Enter(Sender: TObject);
begin
  // edit6.Clear;
end;

procedure TFrmArticulos.Finventario;
begin

  with ZExistencia do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('where a.cod_art =:cdarti');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('group by a.cod_art, b.articulo,b.costo, b.codigobarra, b.referencia,a.cod_alm, b.costo_pr');
    Params[0].Value := datos.MantArtCOD_ART.Value;
    open;
  end;

  with qfechasinventarios do
  begin
    close;
    sql.Clear;
    sql.Add('select max(a.fecha) fecha from  minventario a');
    sql.Add('where a.entrada = 0.00 and a.salida > 0');
    open;
  end;

  with qfechainventirioentrada do
  begin
    close;
    sql.Clear;
    sql.Add('select max(a.fecha) fecha from  minventario a');
    sql.Add('where a.salida = 0.00 and a.entrada > 0');
    open;
  end;

  with FInvenatario do
  begin
    close;
    sql.Clear;
    sql.Add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,a.entrada, a.salida from minventario a');
    sql.Add('left join conceptos b On a.conceptoid = b.conceptoid');
    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
    sql.Add('where a.cod_art =:opcion');
    sql.Add('order by a.fecha');
    // sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo');
    Params[0].Value := datos.MantArtCOD_ART.Value;

    open;
    Last;
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
    Params[0].Value := datos.MantArtCOD_ART.Value;
    open;
  end;

  with datos.QInventarioEQ do
  begin
    close;
    sql.Clear;
    sql.Add('select * from sp_inventario(:op, :op2, 0)');
    Params[0].Value := datos.MantArtCOD_ART.Text;
    Params[1].Value := datos.MantArtCOD_ART.Value;
    open;
  end;

end;

procedure TFrmArticulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmArticulos := nil;
  Action := caFree;
  // btmodi.Visible := false;
  // op11.Enabled := true;
  // action := caFree;
  // datos.MantArt.Close;
end;

procedure TFrmArticulos.FormCreate(Sender: TObject);
begin

  // FrmArticulos.Left = (Screen.Width / 2) - (FrmArticulos.Width / 2)
  // FrmArticulos.Top = (Screen.Height / 2) - (FrmArticulos.Height / 2)

  // Left:= (Application.MainForm.Width - Width) div 2;
  // top:=  (Application.MainForm.Height - Height) div 2;
end;

procedure TFrmArticulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    cxGrid5.Visible := false;
    // cxgrid1.Visible := false;
    Edit4.Clear;
    Edit4.Visible := false;
  end;

end;

procedure TFrmArticulos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmArticulos.FormShow(Sender: TObject);
begin

  if datos.MantArtOPCIONES_BOLA.Value = 'No' then
  begin

    with QConsultaEquivalente do
    begin
      close;
      sql.Clear;
      sql.Add('select a.cod_art, a.codigobarra, a.articulo, a.costo, a.precio_a, a.precio_b, a.precio_d, a.precio_c, ');
      sql.Add('a.cantequivalenca from mtartuculos a where a.codequivalencia =:numero');
      Params[0].Value := datos.MantArtCOD_ART.Value;
      open;
    end;
  end;

  datos.MantArt.Edit;
  datos.MantArtESTADO.Value := 1;

  if Edit1.Text = 'MOD' then
  begin

    datos.FbCategorias.open;

    datos.Zunidad.open;
    FrmArticulos.BtCancelar.Enabled := false;
    FrmArticulos.BtGuardar.Enabled := true;
    FrmArticulos.btmodi.Enabled := false;
    FrmArticulos.BtNuevo.Enabled := false;

    if datos.ZUconfiguracionTerminal.Value = 'Touch' then
    begin
      BtnIgredientes.Visible := true;
    end
    else
    begin
      BtnIgredientes.Visible := false;
    end;

    datos.Control_Precio.open;
    datos.ZqProv_Arti.open;

    if OPproductos.ItemIndex = 2 then
    begin
      TabCompuesto.Enabled := true;
      // TabFraccionado.Enabled := False;
    end;

    if OPproductos.ItemIndex = 1 then
    begin
      TabCompuesto.Enabled := false;
      // TabFraccionado.Enabled := true;
    end;

    if OPproductos.ItemIndex = 0 then
    begin
      TabCompuesto.Enabled := false;
      // TabFraccionado.Enabled := false;
    end;

    TabCompuesto.Enabled := false;
    // TabFraccionado.Enabled := false;
    datos.FbCategorias.open;
    FrmArticulos.op11.Enabled := true;
    FrmArticulos.Edit1.Text := 'MOD';
    Edit6.Text := datos.MantArtCODIGOBARRA.AsString;
    datos.MantArt.Edit;

    // datos.Zunidad.Open;
    FrmArticulos.BtCancelar.Enabled := true;
    FrmArticulos.BtGuardar.Enabled := true;
    FrmArticulos.btmodi.Enabled := false;
    datos.Control_Precio.open;
    qcategoria.open;
    datos.ZqProv_Arti.open;

    if datos.ZUconfiguracionTerminal.Value = 'Pizzeria' then
    begin
      QClasificaciones.open;
    end;

    FrmArticulos.BtGuardar.Enabled := true;
    FrmArticulos.BtCancelar.Enabled := true;
    FrmArticulos.btmodi.Enabled := false;

    BtModificar.Enabled := false;
    BtBuscar.Enabled := false;
    BtNuevo.Enabled := false;
    cxButton4.Visible := true;
    ClearCheck;

  end;

  if datos.ZUconfiguracionIMP_CANT.Value = 'Si' Then
  begin
    gbPorMayor.Visible := true;

  end
  else
  begin
    gbPorMayor.Visible := false;
  end;

  if datos.ZUconfiguracionACTIVARSOLIDARIDAD.Value = 'SI' then
  begin
    cxDBCalcEdit22.Enabled := true;
    cxDBCalcEdit25.Enabled := true;
  end
  else
  begin
    cxDBCalcEdit22.Enabled := false;
    cxDBCalcEdit25.Enabled := false;
  end;

  pgCentral.ActivePageIndex := 0;
end;

procedure TFrmArticulos.imagendefault;
var
  BitmapOriginal, BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
  ruta: string;
begin

  inherited;
  BitmapNew := TBitmap.Create;
  BitmapOriginal := TBitmap.Create;

  datos.MantArt.Edit;
  try

    ruta := ExtractFilePath(application.ExeName) + '\imagenes\no_imagen.png';
    TBlobField(datos.MantArt.FieldByName('Imagen')).LoadFromFile(ruta);

  finally
    FreeAndNil(BitmapOriginal);
  end;

end;

procedure TFrmArticulos.imprime1BeforePrint(Sender: TObject);
begin
  // ppimage1.Picture.LoadFromFile('c:\BarCode\'+cxDBTextEdit1.Text+'.bmp');
end;

procedure TFrmArticulos.Imprime2BeforePrint(Sender: TObject);
begin
  // ppimage2.Picture.LoadFromFile('c:\BarCode\'+DBEdit8.Text+'.bmp');
end;

procedure TFrmArticulos.Label26Click(Sender: TObject);
begin
  close;
end;

procedure TFrmArticulos.ltipoSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if ltipo.ItemIndex = 0 then
  begin
    ShowMessage('1');
  end;

  if ltipo.ItemIndex = 0 then
  begin
    ShowMessage('2');
  end;
end;

procedure TFrmArticulos.nuevo;
var
  cero: string;
begin
  try

    FrmArticulos.op11.Enabled := true;
    datos.FbCategorias.open;
    datos.MantArt.open;
    datos.MantArt.Insert;
    // datos.Zunidad.Open;
    datos.Control_Precio.open;
    datos.ZqProv_Arti.open;
    qcategoria.open;
    FrmArticulos.Edit5.Text := 'NUEV';
    DBComboBox1.ItemIndex := 0;
    ClearCheck;

    with numero do
    begin
      close;
      sql.Clear;
      sql.Add(' select gen_id(arti_gen, 1) from RDB$DATABASE ');
      open;
    end;

    datos.MantArtCOD_ART.Value := FrmArticulos.numeroGEN_ID.Value;

    datos.MantArtMODELO.Value := 'SI';
    datos.MantArtMONEDA.Value := 'SI';
    datos.MantArtEXTFOTO.Value := 'JPG';
    datos.MantArtESTADOCONDICION.Value := 'NUEVO';
    datos.MantArtTIPOB.Value := 'TIENDA';
    datos.MantArtIDMONEDA.Value := 1;
    datos.MantArtSIGNO.Value := 'RD$';
    datos.MantArtCOMISION.Value := 0;
    datos.MantArtCONDICION.Value := 'Productos';
    datos.MantArtMARCA.Value := 'NORMAL';
    datos.MantArtEXISTENCIA1.Value := 1.00;
    datos.MantArtCOD_SERIE.Value := 2;

    imagendefault;
    if datos.ZUconfiguracionTerminal.Value = 'Pizzeria' then
    begin
      QClasificaciones.open;
    end;

    if datos.MantArtCOD_ART.Value >= 1 then
    begin
      cero := '0000000';
    end;

    if datos.MantArtCOD_ART.Value >= 10 then
    begin
      cero := '000000';
    end;

    if datos.MantArtCOD_ART.Value >= 100 then
    begin
      cero := '00000';
    end;

    if datos.MantArtCOD_ART.Value >= 1000 then
    begin
      cero := '0000';
    end;

    if datos.MantArtCOD_ART.Value >= 10000 then
    begin
      cero := '000';
    end;

    if datos.MantArtCOD_ART.Value >= 100000 then
    begin
      cero := '00';
    end;

    if datos.MantArtCOD_ART.Value >= 1000000 then
    begin
      cero := '0';
    end;

    if datos.MantArtCOD_ART.Value >= 10000000 then
    begin
      cero := '';
    end;

    datos.MantArtCODIGOTXT.Value := cero + IntToStr(datos.MantArtCOD_ART.Value);
    Edit6.Text := datos.MantArtCODIGOTXT.Value;
    datos.MantArtCODIGOBARRA.Value := datos.MantArtCODIGOTXT.Value;
    FrmArticulos.Edit1.Text := 'NUEVO';
    datos.mantArtITBIS.Value := 'No';
    datos.MantArtOPCION_SABOR.Value := 'NO';
    datos.MantArtOPCIONES_BOLA.Value := 'No';
    datos.MantArtPOLITICA.Value := 'Unitario';
    datos.MantArtCONDICION.Value := 'Productos';

    datos.MantArtTAZA_COMPRA.Value := 0.00;
    datos.MantArtCOSTO.Value := 0.00;
    datos.MantArtCOSTO_PR.Value := 0.00;
    datos.MantArtEMPAQUE.Value := 1;
    datos.MantArtCANT_EMPA.Value := 1.00;
    datos.MantArtCOLOR.Value := 'Activo';

    // cxButton5.Enabled := false;
    FrmArticulos.BtGuardar.Enabled := true;
    FrmArticulos.BtCancelar.Enabled := true;
    FrmArticulos.btmodi.Enabled := false;

    BtModificar.Enabled := false;
    BtBuscar.Enabled := false;
    BtNuevo.Enabled := false;

    OPproductos.ItemIndex := 0;
    // RxDBComboBox3.ItemIndex := 1;

    datos.ZqProv_Arti.open;

  except

  end;

end;

procedure TFrmArticulos.op11PageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin

  if op11.ActivePageIndex = 2 then
  BEGIN

    QCompartidos.close;
    QCompartidos.open;
  END;
end;

procedure TFrmArticulos.OPproductosClick(Sender: TObject);
begin
  if OPproductos.ItemIndex = 2 then
  begin
    TabCompuesto.Enabled := true;
    // TabFraccionado.Enabled := False;
  end;

  if OPproductos.ItemIndex = 1 then
  begin
    TabCompuesto.Enabled := false;
    // TabFraccionado.Enabled := true;
  end;

  if OPproductos.ItemIndex = 0 then
  begin
    TabCompuesto.Enabled := false;
    // TabFraccionado.Enabled := false;
  end;

end;

procedure TFrmArticulos.Panel13Click(Sender: TObject);
var
  BitmapOriginal, BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
begin
  inherited;

  datos.MantArt.Edit;

  BitmapNew := TBitmap.Create;
  BitmapOriginal := TBitmap.Create;
  // stream:= TMemoryStream.Create;

  try
    if BuscaImagen.Execute then
      TBlobField(datos.MantArt.FieldByName('Imagen'))
        .LoadFromFile(BuscaImagen.FileName);
    //
  finally
    FreeAndNil(BitmapOriginal);
  end;

end;

procedure TFrmArticulos.RxDBComboBox3Change(Sender: TObject);
var
  ITB: currency;
  BN: currency;
begin
  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    if DBComboBox1.ItemIndex = 0 then
    begin
      datos.MantArt.Edit;
      datos.MantArtTAZA_COMPRA.Value := datos.ZUconfiguracionITBIS.Value;
    end
    else
    begin
      datos.MantArt.Edit;
      datos.MantArtTAZA_COMPRA.Value := 0.00;
    end;

    datos.MantArt.Edit;

    ITB := (datos.MantArtCOSTO.Value *
      ((datos.MantArtTAZA_COMPRA.Value) / 100));
    BN := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value) / 100));
    datos.MantArtPRECIO_A.Value :=
      RoundToNickel(datos.MantArtCOSTO.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto1.Value :=
      RoundToNickel(BN + datos.MantArtCOSTO.Value);

    ITB := (datos.MantArtCOSTO.Value *
      ((datos.MantArtTAZA_COMPRA.Value) / 100));
    BN := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value) / 100));
    datos.MantArtPRECIO_b.Value :=
      RoundToNickel(datos.MantArtCOSTO.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto2.Value :=
      RoundToNickel(BN + datos.MantArtCOSTO.Value);

    ITB := (datos.MantArtCOSTO.Value *
      ((datos.MantArtTAZA_COMPRA.Value) / 100));
    BN := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value) / 100));
    datos.MantArtPRECIO_d.Value :=
      RoundToNickel(datos.MantArtCOSTO.Value + ITB + BN);
    datos.MantArtPRECIO_Bruto3.Value :=
      RoundToNickel(BN + datos.MantArtCOSTO.Value);

  end;

end;

procedure TFrmArticulos.SpeedButton10Click(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin
  ITB := 0.00;
  BN := 0.00;

  if datos.MantArtCOSTO.Value > 0 then
  begin

    if datos.MantArtPRE1.Value > 0 then
    begin
      ITB := 0.00;
      BN := 0.00;
      ITB := (datos.MantArtPRE1.Value - (datos.MantArtCOSTO.Value *
        (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

      // ShowMessage(''+FloatTOStr(ITB));
      datos.MantArt.Edit;
      datos.MantArtpre2.Value :=
        Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

      BN := (datos.MantArtCOSTO.Value * ((datos.MantArtpre2.Value) / 100));
      // datos.MantArtPRECIO_Bruto1.Value := round(Bn + datos.MantArtCOSTO.Value);
    end;

    if datos.MantArtMAYOREO1.Value > 0 then
    begin
      ITB := 0.00;
      BN := 0.00;
      ITB := (datos.MantArtMAYOREO1.Value - (datos.MantArtCOSTO.Value *
        (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

      // ShowMessage(''+FloatTOStr(ITB));
      datos.MantArt.Edit;
      datos.MantArtMAYOREO2.Value :=
        Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

      BN := (datos.MantArtCOSTO.Value * ((datos.MantArtMAYOREO2.Value) / 100));
      // datos.MantArtPRECIO_Bruto1.Value := round(Bn + datos.MantArtCOSTO.Value);
    end;

  end;

end;

procedure TFrmArticulos.SpeedButton11Click(Sender: TObject);
begin

  if FrmBuscarArticulos = nil then
  begin
    FrmBuscarArticulos := tFrmBuscarArticulos.Create(self);
    FrmBuscarArticulos.Edit2.Text := 'COMPARTIDO';
    FrmBuscarArticulos.ShowModal;
  end;

end;

procedure TFrmArticulos.SpeedButton12Click(Sender: TObject);
begin
  with ActualidaCOmpartido do
  begin
    close;
    sql.Clear;
    sql.Add('update mtartuculos set compactiblecon =:opp');
    sql.Add('where cod_art =:op1');
    Params[0].Value := 0;
    Params[1].Value := QCompartidosCOD_ART.Value;
    ExecSQL;
  end;

  QCompartidos.Refresh;
end;

procedure TFrmArticulos.SpeedButton13Click(Sender: TObject);
begin
  if fBuscarProveedores = NIL then
  begin
    fBuscarProveedores := TfBuscarProveedores.Create(self);
    fBuscarProveedores.Edit1.Text := '1';
    fBuscarProveedores.ShowModal;
  end;

end;

procedure TFrmArticulos.SpeedButton14Click(Sender: TObject);
begin
  if fBuscarProveedores = NIL then
  begin
    fBuscarProveedores := TfBuscarProveedores.Create(self);
    fBuscarProveedores.Edit1.Text := '2';
    fBuscarProveedores.qConsulta1.open;
    fBuscarProveedores.ShowModal;
  end;
end;

procedure TFrmArticulos.SpeedButton15Click(Sender: TObject);
begin

  if DBCheckBox4.Checked = true then
  begin
    if FbuscarImpuesto = nil then
    begin
      FbuscarImpuesto := TFbuscarImpuesto.Create(self);
      FbuscarImpuesto.qConsulta1.open;
      FbuscarImpuesto.ShowModal;
    end;
  end
  else
  begin
    Crear_Mensages('Error', 'Impuesto no puede ser cambiado.',
      'Favor Marcar impuesto', ExtractFilePath(application.ExeName) +
      '\imagenes\aviso\error.png', 'OK');
  end;

end;

procedure TFrmArticulos.SpeedButton16Click(Sender: TObject);
begin
  if datos.MantArtOPCIONES_BOLA.Value = 'Si' then
  begin
    if FrmEquivalencia = nil then
    begin
      FrmEquivalencia := tFrmEquivalencia.Create(self);
      With FrmEquivalencia.QEquivalentes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from mtartuculos a where a.codequivalencia =:opp ');
        Params[0].Value := datos.MantArtCOD_ART.Value;
        open;
      end;
      FrmEquivalencia.ShowModal;
    end;
  end
  else
  begin
    Crear_Mensages('Aviso',
      'Este producto no esta configurado para Equivalencia',
      'Favor activar Equivalencia en la Pestaña General',
      ExtractFilePath(application.ExeName) + '\imagenes\aviso\Aviso.png', 'OK');

  end;
end;

procedure TFrmArticulos.SpeedButton18Click(Sender: TObject);
var
  S: TMemoryStream;
  PV: TfrxComponent;
  s1: string;
  t1: string;
  t2 : Integer;
  Memo4: TfrxMemoView;
  Barcode2: TfrxBarCodeView;
  AWidth, AHeight, ASymbolWidth, ASymbolHeight: Integer;
begin


//
  Edit7.Text := DBEdit8.Text;
  t1 := copy(DBEdit8.Text, 1, 1);

  if t1 = '0' then
  begin

    with numero do
    begin
      close;
      sql.Clear;
      sql.Add('select gen_id(CODBAR_GEN, 1) from RDB$DATABASE');
      open;
    end;
    // copy(s1,3,8);

    s1 := AnsiRightStr(DBEdit8.Text, 3);

    if (numeroGEN_ID.Value > 99) and (numeroGEN_ID.Value < 900) then
    begin
      s1 := AnsiRightStr(DBEdit1.Text, 5);
    end;

    if numeroGEN_ID.Value > 900 then
    begin
      s1 := AnsiRightStr(DBEdit1.Text, 4);
    end;

    if numeroGEN_ID.Value > 9000 then
    begin
      s1 := AnsiRightStr(DBEdit1.Text, 3);
    end;

    DBEdit8.Text := numeroGEN_ID.Text + s1;
  end;
//
  Codifica(DBEdit8.Text);
  DBEdit8.SelStart := 0;
  DBEdit8.SelLength := Length(DBEdit8.Text);


//  t2 := Length(DBEdit1.Text);
//
//   ShowMessage(''+IntToStr(t2));
//  if t2 = 8 then
//     begin
//
//
//
//     end;

  Edit6.Text := DBEdit8.Text;

  // DBEdit8.Text := '000'+Edit6.Text;

  //

  datos.MantArt.Edit;
  datos.MantArt.Post;

  with FbRArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from mtartuculos a');
    sql.Add('where a.CODIGOBARRA =:oo');
    Params[0].Value := Edit6.Text;
    open;
  end;
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
    sql.Add('where a.CODIGOBARRA =:oo');
    Params[0].Value := Edit6.Text;
    open;
  end;


//
  if (Timpresora.ItemIndex = 0) and (ltipo.ItemIndex = 0) then
  begin

    if RG1.ItemIndex = 0 then
    begin
      fxEtiqueta001SP.PrepareReport;
      fxEtiqueta001SP.ShowPreparedReport;
    end;

    if RG1.ItemIndex = 1 then
    begin
      fxEtiqueta001P.PrepareReport;
      fxEtiqueta001P.ShowPreparedReport;
    end;

  end;



  if (Timpresora.ItemIndex = 0) and (ltipo.ItemIndex = 1) then
  begin

    if RG1.ItemIndex = 0 then
    begin

      // BarCode1:= P00Cprecio.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // P00Cprecio.PrepareReport;
      // P00Cprecio.print;
    end;

    if RG1.ItemIndex = 1 then
    begin

      // BarCode1:=P00sprecio.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      P00sprecio.PrepareReport;
      P00sprecio.print;
    end;

  end;

  if (Timpresora.ItemIndex = 0) and (ltipo.ItemIndex = 2) then
  begin

    if RG1.ItemIndex = 0 then
    begin
      // BarCode1:=CodBar1_3.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // CodBar1_3.PrepareReport;
      // CodBar1_3.print;
    end;

    if RG1.ItemIndex = 1 then
    begin
      // BarCode1:=CodBar1_3_sp.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // CodBar1_3_sp.PrepareReport;
      // CodBar1_3_sp.print;
    end;

  end;

  if (Timpresora.ItemIndex = 0) and (ltipo.ItemIndex = 3) then
  begin

    if RG1.ItemIndex = 0 then
    begin
      // BarCode1:=P00SP4.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // P00SP4.PrepareReport;
      // P00SP4.print;
    end;

    if RG1.ItemIndex = 1 then
    begin
      // BarCode1:=P00SP4.FindObject('BarCode1') as TfrxBarCodeView;
      // Barcode1.Text := edit6.Text;
      // P00SP4.PrepareReport;
      // P00SP4.print;
    end;

  end;

  if (Timpresora.ItemIndex = 1) and (ltipo.ItemIndex = 0) then
  begin
    if RG1.ItemIndex = 0 then
    begin

      // imprime2.PrintReport;
    end;

    if RG1.ItemIndex = 1 then
    begin

      // imprimesp.PrintReport;
    end;

  end;

  if (Timpresora.ItemIndex = 4) and (ltipo.ItemIndex = 0) then
  begin

       if RG1.ItemIndex = 0 then
    begin
      FxEtiquetaMonarchS_P.PrepareReport;
      // (fxEtiqueta001SP.FindObject('BarCode1') as TfrxBarCodeView).Expression := Edit6.Text;
     // Barcode2 := TfrxBarCodeView(FxEtiquetaMonarchS_P.FindObject('BarCode1'));
    //  Barcode2.Text := Edit6.Text;

      FxEtiquetaMonarchS_P.ShowPreparedReport;
    end;

    if RG1.ItemIndex = 1 then
    begin
      FxEtiquetaMonarchC_P.PrepareReport;
      // (fxEtiqueta001SP.FindObject('BarCode1') as TfrxBarCodeView).Expression := Edit6.Text;
    //  Barcode2 := TfrxBarCodeView(FxEtiquetaMonarchC_P.FindObject('BarCode1'));
    //  Barcode2.Text := Edit6.Text;

      FxEtiquetaMonarchC_P.ShowPreparedReport;
    end;

  end;


end;

procedure TFrmArticulos.SpeedButton1Click(Sender: TObject);
begin
  if FrmBuscarCategoria = nil then
  begin
    FrmBuscarCategoria := tFrmBuscarCategoria.Create(self);
    datos.FbCategorias.open;
    FrmBuscarCategoria.Edit1.Text := '3';
    // fBuscarProveedores.qConsulta1.open;
    FrmBuscarCategoria.ShowModal;
  end;
  //
  // datos.FbCategorias.Open;
  // FrmBuscarCategoria.edit1.text := '3';
  // FrmBuscarCategoria.showmodal;
end;

procedure TFrmArticulos.SpeedButton20Click(Sender: TObject);
var
  cero: string;
begin
  if datos.MantArtPOLITICA.Value = 'fraccional' then
  begin
    if datos.MantArtCOD_UV.Value > 0 then
    begin

      with BuscarParti do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*  from particionado a');
        sql.Add('where a.id_unidad =:op1');
        sql.Add('and a.cod_arti =:op2');
        Params[0].Value := datos.MantArtCOD_UV.Value;
        Params[1].Value := datos.MantArtCOD_ART.Value;
        open;
      end;

      if BuscarParti.RecordCount > 0 then
      begin

        if FrmPartionamiento = nil then
        begin

          FrmPartionamiento := tFrmPartionamiento.Create(self);
          // FrmPartionamiento.precio12.Value := datos.MantArtPRECIO_A.Value;
          FrmPartionamiento.ShowModal;
        end;
      end
      else
      begin

        with NumeroCombo do
        begin
          close;
          sql.Clear;
          sql.Add('select gen_id(GEN_PARTICIONADO_ID, 1) from RDB$DATABASE');
          open;
        end;

        datos.ZqParticion.open;
        datos.ZqParticion.Insert;

        datos.ZqParticionid.Value := NumeroComboGEN_ID.Value;

        datos.ZqParticionID_UNIDAD.Value := datos.MantArtCOD_UV.Value;
        datos.ZqParticionCOD_ARTI.Value := datos.MantArtCOD_ART.Value;
        datos.ZqParticionCANTI.Value := 1;
        datos.ZqParticionCOD_PART.Value := 1;
        datos.ZqParticionPRECIO1.Value := datos.MantArtPRECIO_A.Value;
        datos.ZqParticionPRECIO2.Value := datos.MantArtPRECIO_b.Value;
        datos.ZqParticionUNIDAD.Value := datos.MantArtUNIDAD.Value;

        datos.ZqParticion.Post;
        datos.ZqParticion.Refresh;

        if FrmPartionamiento = nil then
        begin

          FrmPartionamiento := tFrmPartionamiento.Create(self);
          FrmPartionamiento.precio12.Value := datos.MantArtPRECIO_A.Value;
          FrmPartionamiento.ShowModal;
        end;

      end;
    end
    else
    begin

      Crear_Mensages('Aviso', 'No puedes continuar',
        'Debese asignarle unidad de venta a este items',
        ExtractFilePath(application.ExeName) +
        '\imagenes\aviso\aviso.png', 'OK');

    end;
  end
  else
  begin
    Crear_Mensages('Error', 'No Puede Continuar',
      'Este items no es Producto Fraccionado',
      ExtractFilePath(application.ExeName) + '\imagenes\aviso\error.png', 'OK');

  end;

end;

procedure TFrmArticulos.SpeedButton22Click(Sender: TObject);
begin
  try
    if (DBEdit2.Text = '') or
      ((DBEdit33.Text = '0') and (DBCheckBox4.Checked = true)) then
    begin

      Crear_Mensages('Error', 'Registro no puede ser guardado',
        'Los campos Articulo ID,' +
        'Codigo Unico y nombre de articulo deben estar llenos',

        ExtractFilePath(application.ExeName) +
        '\imagenes\aviso\error.png', 'OK');

      Crear_Mensages('Error', 'Registro no puede ser guardado',
        'No debes Marcar Impuesto sin asignar un tipo de impuesto',
        ExtractFilePath(application.ExeName) +
        '\imagenes\aviso\error.png', 'OK');

      DBEdit2.SetFocus;
    end
    else
    begin

      try

        if cxDBMemo1.Text = '' then
        begin
          datos.MantArt.Edit;
          datos.mantartobs.Value := 1;
        end
        else
        begin
          datos.MantArt.Edit;
          datos.mantartobs.Value := 2;
        end;

        TabCompuesto.Enabled := false;

        // TabFraccionado.Enabled := false;
        if QCompartidos.Active = true then
        begin

          if QCompartidos.RecordCount > 0 then
          begin
            datos.MantArt.Edit;
            datos.mantArtTIENECOMPACTIBILIDAD.Value := 'SI';

          end;
        end;

        if Edit5.Text = 'NUEVO' then
        begin
          datos.MantArt.Edit;
          datos.MantArtCOSTO_PR.Value := datos.MantArtCOSTO.Value;
        end;
        SpeedButton9.Click;

        datos.MantArt.ApplyUpdates;
        datos.ZqProv_Arti.ApplyUpdates;
        // Commit and update button states
        // ibqRarticulos.Refresh;

        datos.Data.Commit;

        Edit1.Clear;

        BtGuardar.Enabled := false;
        BtCancelar.Enabled := false;
        btmodi.Enabled := true;
        op11.ActivePageIndex := 0;
        op11.Enabled := false;
        op11.Enabled := false;
        Edit6.Clear;

        cxGrid5.Visible := false;
        // cxGrid3.Visible := false;
        datos.ZqProv_Arti.close;
        Edit5.Clear;
        Edit3.Clear;

        BtModificar.Enabled := true;
        BtBuscar.Enabled := true;
        BtNuevo.Enabled := true;

        cxButton4.Visible := true;

        qcategoria.close;
        // datos.MantArt.Close;

        if Edit8.Text = 'ART' then
        BEGIN

          FrmAdminArticulos.IbqRArticulos.Refresh;
        END;

        Edit8.Clear;

      finally
        close;
      end;

    end;

  except

  end;

end;

procedure TFrmArticulos.SpeedButton23Click(Sender: TObject);
begin
  datos.MantArt.Cancel;
  datos.MantArt.CancelUpdates;
  datos.Data.Rollback;

  if Edit1.Text = 'NUEVO' then
  BEGIN
    // with FrmArticulos.numero do
    // begin
    // close;
    // sql.Clear;
    // sql.Add('select gen_id(arti_gen, -1) from RDB$DATABASE');
    // open;
    // end;
  END;
  Edit1.Clear;
  Edit5.Clear;

  // cxButton5.Enabled := true;
  BtGuardar.Enabled := false;
  BtCancelar.Enabled := false;

  op11.ActivePageIndex := 0;

  btmodi.Enabled := true;
  op11.Enabled := false;
  BtGuardar.Enabled := false;
  BtCancelar.Enabled := false;
  BtModificar.Enabled := true;
  BtBuscar.Enabled := true;
  cxButton4.Visible := false;
  cxButton5.Visible := false;
  BtNuevo.Enabled := true;
  qcategoria.close;
  TabCompuesto.Enabled := false;
  // TabFraccionado.Enabled := false;

  datos.MantArt.close;
  datos.ZqProv_Arti.close;
  Edit6.Clear;
  // datos.Control_Precio.close;
  // cxgrid3.Visible := false;
  // cxgrid5.Visible := false;
  // DATOS.ZqProv_Arti.close;
  close;
end;

procedure TFrmArticulos.SpeedButton24Click(Sender: TObject);
var
  cero: string;
begin
  if FrmCombo = nil then
  begin
    FrmCombo := TFrmCombo.Create(self);
    FrmCombo.lCODIGO.Caption := datos.MantArtCOD_ART.Text;
    FrmCombo.LProducto.Caption := datos.MantArtARTICULO.Text;
    if Edit1.Text = 'MOD' THEN
    begin
      datos.MaCombo.open;
      // FrmCombo.cxButton4.Enabled := true;
      FrmCombo.cxButton1.Enabled := false;
      FrmCombo.BtGuardar.Enabled := true;
    end
    else
    begin

      datos.MaCombo.open;
      datos.MaCombo.Insert;

      datos.MaComboCOMBOMASTER.Value := datos.MantArtCOD_ART.Value;

      if datos.MaComboCOMBOMASTER.Value >= 1 then
      begin
        cero := '000';
      end;

      if datos.MaComboCOMBOMASTER.Value >= 10 then
      begin
        cero := '00';
      end;

      if datos.MaComboCOMBOMASTER.Value >= 100 then
      begin
        cero := '0';
      end;

      if datos.MaComboCOMBOMASTER.Value >= 1000 then
      begin
        cero := '';
      end;

      FrmCombo.opmaster.Enabled := true;

      datos.MaComboCODIGOTXT.Value := 'C' +
        IntToStr(datos.MaComboCOMBOMASTER.Value);
      datos.MaComboCODTIENDA.Value := Asignatienda;
      datos.MaComboESTADO.Value := 1;
      datos.MaComboNOMBRECOMBO.Value := datos.MantArtARTICULO.Value;
      FrmCombo.BtCancelar.Enabled := true;
      FrmCombo.cxButton1.Enabled := false;


      // FrmCombo.cxDBTextEdit1.SetFocus;

    end;
    FrmCombo.ShowModal;
  end;

end;

procedure TFrmArticulos.SpeedButton2Click(Sender: TObject);
begin
  if datos.MantArtcod_cat.IsNull = false then
  begin
    if fuBuscarSubCategorias = nil then
    begin
      fuBuscarSubCategorias := tfuBuscarSubCategorias.Create(self);
      fuBuscarSubCategorias.Edit1.Text := IntToStr(datos.MantArtcod_cat.Value);

      with fuBuscarSubCategorias.qConsulta1 do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.cat from producto_subcategoria a');
        sql.Add('left join mtcategoria b on a.idcategoria = b.codcat');
        sql.Add('where a.idcategoria =:cat');
        Params[0].Value := datos.MantArtcod_cat.Value;
        open;
      end;

      fuBuscarSubCategorias.ShowModal;
    end;
  end
  else
  begin

    if Crear_Mensages('AVISO', 'Debes seleccionar una categoria relacionada',
      '', ExtractFilePath(application.ExeName) + '\imagenes\aviso.png', 'OK')
    then
    begin

    end;
  end;
end;

procedure TFrmArticulos.SpeedButton3Click(Sender: TObject);
begin
  if fbuscarsustancia = nil then
  begin
    fbuscarsustancia := Tfbuscarsustancia.Create(self);
    fbuscarsustancia.Edit1.Text := '1';
    fbuscarsustancia.qConsulta1.open;
    fbuscarsustancia.ShowModal;
  end;

end;

procedure TFrmArticulos.SpeedButton4Click(Sender: TObject);
begin
  if fBuscarmarcas = nil then
  begin
    fBuscarmarcas := tfBuscarmarcas.Create(self);
    fBuscarmarcas.Edit1.Text := '1';
    fBuscarmarcas.qConsulta1.open;
    fBuscarmarcas.ShowModal;
  end;
end;

procedure TFrmArticulos.SpeedButton5Click(Sender: TObject);
begin
  if FBuscarIndicaciones = nil then
  begin
    FBuscarIndicaciones := TFBuscarIndicaciones.Create(self);
    FBuscarIndicaciones.Edit1.Text := '1';
    FBuscarIndicaciones.qConsulta1.open;
    FBuscarIndicaciones.ShowModal;
  end;
end;

procedure TFrmArticulos.SpeedButton6Click(Sender: TObject);
begin
  if fBuscarClasificacion = nil then
  begin
    fBuscarClasificacion := TfBuscarClasificacion.Create(self);
    fBuscarClasificacion.qConsulta1.open;
    fBuscarClasificacion.ShowModal;
  end;
end;

procedure TFrmArticulos.SpeedButton7Click(Sender: TObject);
begin
  datos.MantArt.Edit;
  datos.MantArtCODIGOBARRA.Value := datos.MantArtCODIGOTXT.Value;
end;

procedure TFrmArticulos.SpeedButton8Click(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin
  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin
    datos.MantArt.Edit;

    if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
    begin

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := (datos.MantArtCOSTO.Value * ((30) / 100));
      end
      else
      begin
        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtBENEFICIOS.Value) / 100));
      end;

      datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtBENEFICIOS.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := (datos.MantArtCOSTO.Value * ((30) / 100));
      end
      else
      begin
        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtutilidad2.Value) / 100));
      end;

      datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad2.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := (datos.MantArtCOSTO.Value * ((30) / 100));
      end
      else
      begin
        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtutilidad3.Value) / 100));
      end;

      datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad3.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := (datos.MantArtCOSTO.Value * ((30) / 100));
      end
      else
      begin
        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArTUTILIDAD4.Value) / 100));
      end;

      datos.MantArtPRECIO_C.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto4.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad4.Value := 30;
    end
    else
    begin
      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) *
          ((datos.MantArtBENEFICIOS.Value) / 100));
      end;

      datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto1.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtBENEFICIOS.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));

      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) *
          ((datos.MantArtutilidad2.Value) / 100));
      end;

      datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto2.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad2.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) *
          ((datos.MantArtutilidad3.Value) / 100));
      end;

      datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto3.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad3.Value := 30;

      ITB := (datos.MantArtCOSTO.Value *
        ((datos.MantArtTAZA_COMPRA.Value) / 100));
      if datos.MantArtBENEFICIOS.Value <= 0 then
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) * ((30) / 100));
      end
      else
      begin
        BN := ((datos.MantArtCOSTO.Value + ITB) *
          ((datos.MantArTUTILIDAD4.Value) / 100));
      end;

      datos.MantArtPRECIO_C.Value := Round(datos.MantArtCOSTO.Value + ITB + BN);
      datos.MantArtPRECIO_Bruto4.Value := Round(BN + datos.MantArtCOSTO.Value);
      // datos.MantArtutilidad4.Value := 30;
    end;

    // if datos.mantArtUTILIDADSOBREITBS.Value = 'No' then
    // begin
    // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
    // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100));
    // datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
    // datos.MantArtPRECIO_Bruto1.Value := Round(Bn + datos.MantArtCOSTO.Value);
    //
    //
    // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
    // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value)/100));
    // datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
    // datos.MantArtPRECIO_Bruto2.Value := Round(Bn + datos.MantArtCOSTO.Value);
    //
    //
    // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
    // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value)/100));
    // datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
    // datos.MantArtPRECIO_Bruto3.Value := Round(Bn + datos.MantArtCOSTO.Value);
    //
    // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
    // Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad4.Value)/100));
    // datos.MantArtPRECIO_c.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
    // datos.MantArtPRECIO_Bruto4.Value := Round(Bn + datos.MantArtCOSTO.Value);
    // end else begin
    // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
    // Bn  := ((datos.MantArtCOSTO.Value + ITB) * ((datos.MantArtBENEFICIOS.Value)/100));
    // datos.MantArtPRECIO_A.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
    // datos.MantArtPRECIO_Bruto1.Value := Round(Bn + datos.MantArtCOSTO.Value);
    //
    //
    // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
    // Bn  := ((datos.MantArtCOSTO.Value + ITB) * ((datos.MantArtutilidad2.Value)/100));
    // datos.MantArtPRECIO_b.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
    // datos.MantArtPRECIO_Bruto2.Value := Round(Bn + datos.MantArtCOSTO.Value);
    //
    //
    // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
    // Bn  := ((datos.MantArtCOSTO.Value + ITB) * ((datos.MantArtutilidad3.Value)/100));
    // datos.MantArtPRECIO_d.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
    // datos.MantArtPRECIO_Bruto3.Value := Round(Bn + datos.MantArtCOSTO.Value);
    //
    // ITB := (datos.MantArtCOSTO.Value * ((datos.MantArtTAZA_COMPRA.Value)/100));
    // Bn  := ((datos.MantArtCOSTO.Value + ITB) * ((datos.MantArtutilidad4.Value)/100));
    // datos.MantArtPRECIO_c.Value := Round(datos.MantArtCOSTO.Value + ITB + Bn);
    // datos.MantArtPRECIO_Bruto4.Value := Round(Bn + datos.MantArtCOSTO.Value);
    // end;
  end;

end;

procedure TFrmArticulos.SpeedButton9Click(Sender: TObject);
var
  ITB: currency;
  BN: currency;

begin
  ITB := 0.00;
  BN := 0.00;

  if (datos.MantArt.State = dsInsert) or (datos.MantArt.State = dsEdit) then
  begin

    if datos.MantArtCOSTO.Value > 0 then
    begin

      if datos.MantArtPRECIO_A.Value > 0 then
      begin
        ITB := 0.00;
        BN := 0.00;
        ITB := (datos.MantArtPRECIO_A.Value - (datos.MantArtCOSTO.Value *
          (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

        // ShowMessage(''+FloatTOStr(ITB));
        datos.MantArt.Edit;
        datos.MantArtBENEFICIOS.Value :=
          Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtBENEFICIOS.Value) / 100));
        datos.MantArtPRECIO_Bruto1.Value :=
          Round(BN + datos.MantArtCOSTO.Value);
      end;

      if datos.MantArtPRECIO_b.Value > 0 then
      begin
        ITB := 0.00;
        BN := 0.00;
        ITB := (datos.MantArtPRECIO_b.Value - (datos.MantArtCOSTO.Value *
          (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

        // ShowMessage(''+FloatTOStr(ITB));
        datos.MantArt.Edit;
        datos.MantArtutilidad2.Value :=
          Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtutilidad2.Value) / 100));
        datos.MantArtPRECIO_Bruto2.Value :=
          Round(BN + datos.MantArtCOSTO.Value);
      end;

      if datos.MantArtPRECIO_d.Value > 0 then
      begin
        ITB := 0.00;
        BN := 0.00;
        ITB := (datos.MantArtPRECIO_d.Value - (datos.MantArtCOSTO.Value *
          (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

        // ShowMessage(''+FloatTOStr(ITB));
        datos.MantArt.Edit;
        datos.MantArtutilidad3.Value :=
          Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArtutilidad3.Value) / 100));
        datos.MantArtPRECIO_Bruto3.Value :=
          Round(BN + datos.MantArtCOSTO.Value);
      end;

      if datos.MantArtPRECIO_C.Value > 0 then
      begin
        ITB := 0.00;
        BN := 0.00;
        ITB := (datos.MantArtPRECIO_C.Value - (datos.MantArtCOSTO.Value *
          (datos.MantArtTAZA_COMPRA.Value / 100))) - datos.MantArtCOSTO.Value;

        // ShowMessage(''+FloatTOStr(ITB));
        datos.MantArt.Edit;
        datos.MantArTUTILIDAD4.Value :=
          Rounded(((ITB / datos.MantArtCOSTO.Value) * 100), 2);

        BN := (datos.MantArtCOSTO.Value *
          ((datos.MantArTUTILIDAD4.Value) / 100));
        datos.MantArtPRECIO_Bruto4.Value :=
          Round(BN + datos.MantArtCOSTO.Value);
      end;

    end;

  end;

end;

end.
