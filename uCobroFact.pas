unit uCobroFact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, StrUtils, System.Variants,
  System.Classes, Vcl.StdCtrls, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, datelbl,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, cxContainer,
  cxTextEdit, cxGroupBox, Vcl.Menus, cxButtons, RxClock, tools, cxDropDownEdit,
  cxDBEdit, cxMaskEdit, cxCalendar, cxCheckBox, cxRadioGroup, frxClass,
  frxDBSet, printers, WinSpool,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinSharp,
  dxSkinTheBezier, ZAbstractDataset, acPNG, Vcl.Buttons;

type
  TFrmCobroFact = class(TForm)
    Panel1: TPanel;
    HOLD: TZReadOnlyQuery;
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
    HOLDNOMBRECLIENTE_PRN: TWideStringField;
    HOLDFECHAVENCIMIENTO: TDateField;
    DsHold: TDataSource;
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
    Zdetalle: TZReadOnlyQuery;
    ZdetalleNO_FACT: TIntegerField;
    ZdetalleNO_FACT1: TWideStringField;
    ZdetalleMASTERID: TIntegerField;
    ZdetalleCANTIDAD: TFloatField;
    ZdetallePRECIO: TFloatField;
    ZdetalleIMPUESTO: TFloatField;
    ZdetalleITBS: TFloatField;
    ZdetalleITBIS2: TFloatField;
    ZdetalleTOTAL: TFloatField;
    ZdetalleCOD_ART: TWideStringField;
    ZdetalleUNID: TWideStringField;
    ZdetalleCOMBO: TWideStringField;
    ZdetalleARTICULOID: TIntegerField;
    ZdetalleANCHO: TFloatField;
    ZdetalleALTO: TFloatField;
    ZdetalleTITULOPRN: TWideStringField;
    ZdetalleUNIDADID: TIntegerField;
    ZdetalleITBS_ART: TWideStringField;
    ZdetalleEX: TWideStringField;
    ZdetalleIDALMACEN: TIntegerField;
    ZdetalleBARRA: TWideStringField;
    ZdetalleIDTECNICO: TIntegerField;
    ZdetalleDESC: TIntegerField;
    ZdetalleARTICULO: TWideStringField;
    ZdetalleUNIDAD: TWideStringField;
    ZdetalleITBIS: TWideStringField;
    ZdetalleOP: TWideStringField;
    ZdetalleLINEA: TIntegerField;
    ZdetalleEXIST1: TSingleField;
    ZdetalleLEY: TFloatField;
    DSdetalle: TDataSource;
    Label32: TLabel;
    HOLDNUMERO_FACTURA: TFloatField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    RxClock1: TRxClock;
    DsMaster_Creditos: TDataSource;
    master_credito: TZReadOnlyQuery;
    master_creditoNO_FACT: TIntegerField;
    master_creditoNUMERO_FACTURA: TFloatField;
    master_creditoFECHA_FAC: TDateField;
    master_creditoFECHAVENCIMIENTO: TDateField;
    master_creditoCEDULA: TWideStringField;
    master_creditoDIRECCION: TWideStringField;
    master_creditoCLIENTENOMBRE: TWideStringField;
    master_creditoMONTO: TExtendedField;
    master_creditoABONO: TFloatField;
    master_creditoPENDIENTE: TFloatField;
    master_creditoNOMBRES_EMP: TWideStringField;
    master_creditoTELEFONO: TWideStringField;
    master_creditoDIAS: TIntegerField;
    master_creditoDIASATRASOS: TIntegerField;
    master_creditoESTADOCUENTA: TWideStringField;
    master_creditoCLIENTEID: TIntegerField;
    DsFacturasImpresas: TDataSource;
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
    DsMasterG: TDataSource;
    master_credito_g: TZReadOnlyQuery;
    master_credito_gCLIENTENOMBRE: TWideStringField;
    master_credito_gCEDULA: TWideStringField;
    master_credito_gTELEFONO: TWideStringField;
    master_credito_gDIRECCION: TWideStringField;
    master_credito_gMONTO: TExtendedField;
    master_credito_gABONO: TExtendedField;
    master_credito_gPENDIENTE: TExtendedField;
    master_credito_gCLIENTEID: TIntegerField;
    master_credito_gCON_ATRASOS: TIntegerField;
    master_credito_gSIN_ATRASOS: TIntegerField;
    master_credito_gTFAC: TLargeintField;
    cxButton6: TcxButton;
    UpdateNC: TZReadOnlyQuery;
    UpRma: TZReadOnlyQuery;
    cxButton7: TcxButton;
    QBalanceCreditoCliente: TZReadOnlyQuery;
    QBalanceCreditoClienteBALANCE: TExtendedField;
    DsMasterFact: TDataSource;
    edit5: TEdit;
    CUANTOS: TZReadOnlyQuery;
    CUANTOSCOUNT: TIntegerField;
    prncopia: TfrxReport;
    imprimem: TfrxReport;
    series: TfrxDBDataset;
    Config: TfrxDBDataset;
    master: TfrxDBDataset;
    detalle: TfrxDBDataset;
    Antiguedad: TZReadOnlyQuery;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TExtendedField;
    AntiguedadV0_30: TExtendedField;
    AntiguedadV31_60: TExtendedField;
    AntiguedadV61_90: TExtendedField;
    AntiguedadV91_120: TExtendedField;
    AntiguedadV120: TExtendedField;
    AntiguedadACTUAL: TExtendedField;
    ImprimEMC: TfrxReport;
    cxButton13: TcxButton;
    formapago: TEdit;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    RECIBO2: TfrxReport;
    QDelivery: TZReadOnlyQuery;
    QDeliveryNO_FACT: TIntegerField;
    QDeliveryFECHA_FAC: TDateField;
    QDeliveryTIPO: TWideStringField;
    QDeliveryCOD_CLIENT: TWideStringField;
    QDeliveryCOD_EMP: TWideStringField;
    QDeliveryNO_FACT1: TWideStringField;
    QDeliveryMONTO: TFloatField;
    QDeliveryHORA: TTimeField;
    QDeliveryPOGXITBS: TFloatField;
    QDeliveryTIPOPAGO: TWideStringField;
    QDeliveryMONTOPAGO: TFloatField;
    QDeliveryCONDICION: TWideStringField;
    QDeliveryRENTA: TWideStringField;
    QDeliveryCODIGO: TIntegerField;
    QDeliveryTIPOITBS: TWideStringField;
    QDeliveryVENDEDOR: TWideStringField;
    QDeliverySITUACION: TWideStringField;
    QDeliveryCAJERO: TWideStringField;
    QDeliveryNCF: TWideStringField;
    QDeliveryRNC_CLIENTE: TWideStringField;
    QDeliveryNCF1: TFloatField;
    QDeliveryNOM_CLIENTE: TWideStringField;
    QDeliveryDESCUENTO: TFloatField;
    QDeliveryROTULO: TWideStringField;
    QDeliveryNO_AUTORIZA_NCF: TFloatField;
    QDeliveryMONTOFINANCIADO: TFloatField;
    QDeliveryCUOTAS: TIntegerField;
    QDeliveryINTERES: TFloatField;
    QDeliveryDIRECCION: TWideStringField;
    QDeliveryPAGADO: TFloatField;
    QDeliveryLEYPROPINA: TFloatField;
    QDeliveryCOMPROBANTE: TWideStringField;
    QDeliveryTERMINAL: TWideStringField;
    QDeliveryEFECTIVO: TFloatField;
    QDeliveryDEVOLUCION1: TFloatField;
    QDeliveryRESTANTE: TFloatField;
    QDeliveryABONO: TFloatField;
    QDeliveryCHEK: TWideStringField;
    QDeliveryNO_RECIBO: TIntegerField;
    QDeliveryPAGADOCXC: TFloatField;
    QDeliveryMESES: TIntegerField;
    QDeliveryDIAS: TIntegerField;
    QDeliveryPENDIENTE: TFloatField;
    QDeliveryESTADOPAGO: TWideStringField;
    QDeliveryDEVOLUCION: TFloatField;
    QDeliveryCONDICION_PAGO: TIntegerField;
    QDeliveryFECHAVENCIMIENTO: TDateField;
    QDeliveryCOMBO: TWideStringField;
    QDeliveryCOBRADO: TIntegerField;
    QDeliveryQUEES: TWideStringField;
    QDeliveryUSUARIOID: TIntegerField;
    QDeliveryCLIENTEID: TIntegerField;
    QDeliveryCONDICIONVENTA: TWideStringField;
    QDeliveryTIENDAID: TIntegerField;
    QDeliveryPINREFERIDO: TWideStringField;
    QDeliveryNC: TIntegerField;
    QDeliveryCODVEN: TIntegerField;
    QDeliveryCAJEROID: TIntegerField;
    QDeliveryNOMBRECLIENTE_PRN: TWideStringField;
    QDeliveryFECHA_FINAL: TDateField;
    QDeliveryINTERES_DIARIO: TFloatField;
    QDeliveryINTERES_ACUM: TFloatField;
    QDeliveryDIAS_TRANS: TIntegerField;
    QDeliveryFECHA_ULTIMO_PAGO: TDateField;
    QDeliveryDIAS_ATRASO: TIntegerField;
    QDeliveryINTERES_PAGADO: TFloatField;
    QDeliveryCAPITAL_PAGADO: TFloatField;
    QDeliveryDESC_CAPITAL: TFloatField;
    QDeliveryIDDR: TIntegerField;
    QDeliveryNOMBREDELDR: TWideStringField;
    QDeliveryCAJA: TWideStringField;
    QDeliveryNCF_NOMBRE: TWideStringField;
    QDeliveryMORA: TFloatField;
    QDeliveryNUMERO_FACTURA: TFloatField;
    QDeliveryBONOS: TFloatField;
    QDeliveryOBSERVACIONES: TWideMemoField;
    QDeliveryIDRUTA: TIntegerField;
    QDeliveryCAJAID: TIntegerField;
    QDeliveryTCREDITO: TFloatField;
    QDeliveryVEFECTIVA: TFloatField;
    QDeliveryIDTECNICO: TIntegerField;
    QDeliveryUBICACION: TWideStringField;
    QDeliveryPAGOXEFECTIVO: TFloatField;
    QDeliveryPAGOXCHEQUE: TFloatField;
    QDeliveryPAGOXTARJETA: TFloatField;
    QDeliveryPAGOXBONO: TFloatField;
    QDeliveryPAGOCXC: TFloatField;
    QDeliveryIDESTACION: TIntegerField;
    QDeliveryESTACION: TWideStringField;
    QDeliveryCLIENTENOMBRE: TWideStringField;
    QDeliveryNOMBRES_EMP: TWideStringField;
    QDeliveryDIR: TWideStringField;
    DsDelivery: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel5: TPanel;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    imgLogoTop: TImage;
    Panel9: TPanel;
    Panel10: TPanel;
    Label7: TLabel;
    Panel12: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    SpeedButton2: TSpeedButton;
    Panel15: TPanel;
    SpeedButton3: TSpeedButton;
    Panel16: TPanel;
    SpeedButton4: TSpeedButton;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    SpeedButton5: TSpeedButton;
    Panel21: TPanel;
    SpeedButton6: TSpeedButton;
    Panel22: TPanel;
    SpeedButton7: TSpeedButton;
    Panel23: TPanel;
    SpeedButton8: TSpeedButton;
    Panel20: TPanel;
    SpeedButton9: TSpeedButton;
    Panel24: TPanel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label26: TLabel;
    cxDBComboBox2: TcxDBComboBox;
    Label3: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    cxTextEdit2: TEdit;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid4DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid4DBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    cxGrid4DBTableView1Column3: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4DBTableView1Column4: TcxGridDBColumn;
    cxGrid4DBTableView1Column5: TcxGridDBColumn;
    cxGrid4DBTableView1Column6: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel29: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1NUMERO_FACTURA: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid2DBTableView1FECHAVENCIMIENTO: TcxGridDBColumn;
    cxGrid2DBTableView1PENDIENTE: TcxGridDBColumn;
    cxGrid2DBTableView1DIASATRASOS: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1NUMERO_FACTURA: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn;
    cxGrid3DBTableView1TIPO: TcxGridDBColumn;
    cxGrid3DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid3DBTableView1Column2: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Panel11: TPanel;
    op10: TcxRadioGroup;
    Chkorinal: TcxCheckBox;
    Panel31: TPanel;
    cxButton18: TSpeedButton;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    cxTextEdit1: TEdit;
    Panel35: TPanel;
    cxButton9: TSpeedButton;
    Panel36: TPanel;
    cxButton17: TSpeedButton;
    Panel37: TPanel;
    BTpedido: TSpeedButton;
    Panel38: TPanel;
    Panel40: TPanel;
    dfdgfdfgdfdf: TSpeedButton;
    Panel41: TPanel;
    SpeedButton11ffffff: TSpeedButton;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel46: TPanel;
    SpeedButton14: TSpeedButton;
    Panel47: TPanel;
    SpeedButton15drgfrr: TSpeedButton;
    Panel48: TPanel;
    dfgtrhyryr: TSpeedButton;
    ZQuery1: TZQuery;
    LargeintField1: TLargeintField;
    NUMERO1: TZQuery;
    NUMERO1GEN_ID: TLargeintField;
    ncf: TZReadOnlyQuery;
    ncfNCFID: TIntegerField;
    ncfNUNTEXT: TWideStringField;
    ncfDESDE: TIntegerField;
    ncfHASTA: TIntegerField;
    ncfUSO: TIntegerField;
    ncfTIPO: TWideStringField;
    ncfIDCONFIG: TIntegerField;
    ncfSIGUIENTE: TWideStringField;
    NumNCF: TZReadOnlyQuery;
    NumNCFGEN_ID: TLargeintField;
    NumNCF_GOB: TZReadOnlyQuery;
    NumNCF_GOBGEN_ID: TLargeintField;
    Num_Comprobante: TZReadOnlyQuery;
    Num_ComprobanteGEN_ID: TLargeintField;
    NumNCF_Fiscal: TZReadOnlyQuery;
    NumNCF_FiscalGEN_ID: TLargeintField;
    Edit3: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid5DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid5DBTableView1Column1: TcxGridDBColumn;
    cxGrid5DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn;
    cxGrid5DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid5Level1: TcxGridLevel;
    Edit1: TEdit;
    Panel39: TPanel;
    Panel30: TPanel;
    cxButton15: TSpeedButton;
    Panel45: TPanel;
    BtRetornoDelivery: TSpeedButton;
    Panel49: TPanel;
    BtCobrarDelivry: TSpeedButton;
    Panel44: TPanel;
    BtEnviarDelivery: TSpeedButton;
    Edit4: TEdit;
    lblCantDely: TLabel;
    qCantDely: TZReadOnlyQuery;
    qCantDelyCOUNT: TIntegerField;
    cxGrid5DBTableView1Column2: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid4DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pago;
    procedure cobrando;
    procedure printcopia;
    procedure imprimirtikectCredito;
    procedure ImprimirMemo(Memo: TMemo);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid4DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton14Click(Sender: TObject);
    procedure enviarfactura;
    procedure cxGrid4DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BTDeliveryClick(Sender: TObject);
    procedure cxGrid5DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid3DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure cxTextEdit2Change(Sender: TObject);
    procedure SpeedButton1ffffffClick(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxTextEdit1Change(Sender: TObject);
    procedure SpeedButton1ttttttClick(Sender: TObject);
    procedure SpeedButton1fffffffClick(Sender: TObject);
    procedure SpeedButton1dddddddClick(Sender: TObject);
    procedure SpeedButton15drgfrrClick(Sender: TObject);
    procedure dfgtrhyryrClick(Sender: TObject);
    procedure dfdgfdfgdfdfClick(Sender: TObject);
    procedure SpeedButton11ffffffClick(Sender: TObject);
    procedure BtEnviarDeliveryClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure BtRetornoDeliveryClick(Sender: TObject);
    procedure BtCobrarDelivryClick(Sender: TObject);
    procedure cxGrid5DBTableView1DblClick(Sender: TObject);
    procedure cxGrid5DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    procedure generarcomprobante;
    procedure cobrandoDelivery;
    procedure pagodelivery;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCobroFact: TFrmCobroFact;
  x, y: integer; // necessario
  Count, Xpos, Ypos: integer;
  aPrinter: tprinter; // necessario

const
  MAX_RECS = 3;
  TAB1 = 1000;
  TAB2 = 2000;
  TAB3 = 3000;
  LEFT_MARGIN = 200;
  TOP_MARGIN = 200;
  LINE_SPACING = 150;

implementation

{$R *.dfm}

uses Unit2, UInicio, Unit39, Unit18, UopcionCaja, Unit117,
  UActualizaDiasCredito, Unit47, Unit37, Unit80;

function Relleno(text, Rell: string; Cant, posi: integer): string;
var
  valor, x: integer;
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
function espacios(text: string; Cant: integer; posi: integer): string;
var
  valor, x: integer;
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
  i: integer;
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
              // TODO 5 -oIasa -cEmpty Code Block: WriteRawDataToPrinter (finally/end in function)
              EndPagePrinter(PrinterHandle);
            end;
        finally
          // TODO 5 -oIasa -cEmpty Code Block: WriteRawDataToPrinter (finally/end in function)
          EndDocPrinter(PrinterHandle);
        end;
    finally
      ClosePrinter(PrinterHandle);
    end;
end;

Function GetImpresora(Impre: String): integer;
// ------------------------------------------------------------------------------
// **********************************************************[ GetImpresora ]****
// de Marcos Zorilla bajada de http://www.clubdelph...ead.php?t=68519
// ------------------------------------------------------------------------------
Var
  nCont: integer;
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

function CenterString(aStr: String; Len: integer): String;
var
  posStr: integer;
begin
  if length(aStr) > Len then
    result := copy(aStr, 1, Len)
  else
  begin
    posStr := (Len - length(aStr)) div 2;
    result := Format('%*s', [Len, aStr + Format('%-*s', [posStr, ''])]);
  end;
end;

procedure ExibirImpressoras(list: tstrings);
// exibe lista de imprassora do windows
begin
  list.text := Printer.printers.text;
end;

procedure SelecionarImpresora(Nome: String);
// seleciona uma impressora pelo nome
var
  Device, Driver, Port: array [0 .. 255] of char;
  hDMode: THandle;
  i: integer;
  tmpnome: string;
begin
  Printer.PrinterIndex := -1;
  if aPrinter = nil then
    aPrinter := tprinter.Create;
  for i := 0 to (Printer.printers.Count - 1) do
  begin
    tmpnome := Printer.printers[i];
    if tmpnome = Nome then
    begin
      aPrinter.PrinterIndex := i;
      aPrinter.GetPrinter(Device, Driver, Port, hDMode);
    end;
  end;
end;

procedure IniciarImpresao(x, y: integer; impressora: string);
// inicia a impresora
begin
  SelecionarImpresora(impressora);
  Printer.BeginDoc;
end;

procedure ImprimirLinha(linha: string); // imprime uma unica linha
begin
  inc(y, Printer.Canvas.TextHeight('W'));
  Printer.Canvas.TextOut(x, y, linha);
end;

procedure FinalizarImpresao; // finaliza a impressão
begin
  Printer.EndDoc;
end;

procedure TFrmCobroFact.ImprimirMemo(Memo: TMemo);
var
  i: integer;
  F: TextFile;
begin
  { Usa na impressora a mesma fonte do memo }
  Printer.Canvas.Font.Assign(Memo.Font);
  AssignPrn(F);
  Rewrite(F);
  try
    for i := 0 to Memo.Lines.Count - 1 do
      WriteLn(F, Memo.Lines[i]);
  finally
    CloseFile(F);
  end;
end;

procedure TFrmCobroFact.BTDeliveryClick(Sender: TObject);
var
  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion, tipopago1: String;
  cInf: String;
  men_pie: string;
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

  // with datos.FbqMaster_Fact do
  // begin
  // Close;
  // sql.Clear;
  // sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
  // sql.Add('left join cliente b On a.clienteid = b.codigo');
  // sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
  // sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
  // sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
  // sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
  // sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
  // sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
  // sql.Add('where a.situacion  =:opcion2');
  // sql.Add('and a.condicion =:OPCION4');
  // sql.Add('AND A.ROTULO =:OPCION5');
  // //  sql.Add('AND A.tipo =:opcion6');
  // sql.Add('and a.no_fact =:oppp');
  // Params[0].Value := 'HOLD';
  // Params[1].Value := 'ACTIVA';
  // Params[2].Value := 'FACTURACION';
  // //    Params[3].Value := 'Contado';
  // Params[3].Value := HOLDno_fact.Value;
  //
  // open;
  // end;
  //
  // ShowMessage(''+datos.FbqMaster_FactNO_FACT.Text);
  // with datos.Zdetalle do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
  // sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
  // sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
  // sql.Add('where a.masterid =:ppp');
  // params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
  // open;
  // end;

  if datos.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
  begin

    if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
      Mb_YesNo + MB_ICONQUESTION) = Id_yes then
    begin

      if Tipoimpresion = 'D' then
      begin
        if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
        BEGIN
          // imprimirtikect;
        END
        ELSE
        BEGIN
          // imprimirtikect;
          // imprimirtikect;

        END;

      end
      else
      begin

        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\FacturaTicketDelivery' + '.fr3';
        RECIBO2.LoadFromFile(cInf);

        // recibo2.variables['titulos']  :=quotedstr('FACTURA');
        RECIBO2.variables['cajero'] :=
          quotedstr(datos.FbqMaster_FactNOMBRES_EMP.text);

        men_pie := datos.ZUconfiguracionMensaje_pie1.Value;
        RECIBO2.variables['mensaje1'] := quotedstr(men_pie);


        // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

        if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
        BEGIN
          RECIBO2.PrintOptions.Copies := 1;
        END
        ELSE
        begin
          RECIBO2.PrintOptions.Copies := 2;

        end;

        RECIBO2.PrepareReport(TRUE);
        RECIBO2.print;

      end;

    end;
  end;

  if datos.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'NO' then
  begin

    if Tipoimpresion = 'D' then
    begin
      if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
      BEGIN
        // imprimirtikect;
      END
      ELSE
      BEGIN
        // imprimirtikect;
        // imprimirtikect;

      END;

    end
    else
    begin

      cInf := datos.ZUconfiguracionROTULO_FC.Value +
        '\FacturaTicketDelivery' + '.fr3';
      RECIBO2.LoadFromFile(cInf);

      // recibo2.variables['titulos']  :=quotedstr('FACTURA');
      RECIBO2.variables['cajero'] :=
        quotedstr(datos.FbqMaster_FactNOMBRES_EMP.text);

      men_pie := datos.ZUconfiguracionMensaje_pie1.Value;
      RECIBO2.variables['mensaje1'] := quotedstr(men_pie);


      // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

      if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
      BEGIN
        RECIBO2.PrintOptions.Copies := 1;
      END
      ELSE
      begin
        RECIBO2.PrintOptions.Copies := 2;

      end;
      RECIBO2.PrepareReport(TRUE);
      RECIBO2.print;

    end;

  end;

  datos.FbqMaster_Fact.Edit;
  datos.fbqMaster_factsituacion.text := 'ENVIADA';
  datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
  datos.FbqMaster_FactROTULO.text := 'DELIVERY';
  datos.FbqMaster_FactPINREFERIDO.Value := 'DELIVERYPRINT';
  datos.FbqMaster_Factterminal.text := 'FACTURACION';
  datos.FbqMaster_FactABONO.Value := 0.00;

  datos.FbqMaster_Fact.ApplyUpdates;
  datos.Data.Commit;

end;

procedure TFrmCobroFact.btnsalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCobroFact.BtRetornoDeliveryClick(Sender: TObject);
begin
 with datos.FbqMaster_Fact do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
    sql.Add('where a.condicion =:OPCION4');
    // sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');

    params[0].Value := 'ACTIVA';
    // Params[1].Value := 'FACTURACION';
    // Params[3].Value := 'Contado';
    params[1].Value := QDeliveryNO_FACT.Value;

    open;
  end;

  if datos.FbqMaster_FactNO_FACT.Value <= 0 then
  begin
    ShowMessage('  Debes seleccionar una factura  ');
  end
  else
  begin

    if datos.FbqMaster_FactROTULO.Value = 'DELIVERY' then
    begin
      if FAutorizacion.showmodal = mrOk then
      begin
        if Application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin

          datos.FbqMaster_Fact.Edit;
          if datos.fbqMaster_factsituacion.text <> 'PEDIDO' then
          BEGIN
            datos.fbqMaster_factsituacion.text := 'HOLD';
            datos.FbqMaster_FactIDDR.Value := 1;
          END;
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

          with datos.Zdetalle do
          begin
            First;
            while not Eof do
            begin
              if datos.ZdetalleTOTAL.Value < 0.00 then
              begin

                with UpdateNC do
                begin
                  Close;
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
                  Close;
                  sql.Clear;
                  sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                  params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                  ExecSQL;
                end;
              end;
              Next;
            end;
          end;
        end;

        datos.FbqMaster_Fact.ApplyUpdates;
        datos.Zdetalle.ApplyUpdates;
        datos.Data.Commit;

        datos.ZInventario.Close;
        datos.FbqMaster_Fact.Close;
        datos.Zdetalle.Close;
        HOLD.Close;
        HOLD.open;

      end;
    end
    else
    begin

      if Application.MessageBox('Esta seguro de cancelar este documento',
        'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        datos.FbqMaster_Fact.Edit;
        if datos.fbqMaster_factsituacion.text <> 'PEDIDO' then
        BEGIN
          datos.fbqMaster_factsituacion.text := 'HOLD';
          datos.FbqMaster_FactIDDR.Value := 1;
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
                Close;
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
                Close;
                sql.Clear;
                sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                ExecSQL;
              end;
            end;
            Next;
          end;
        end;
      end;

      datos.FbqMaster_Fact.ApplyUpdates;
      datos.Zdetalle.ApplyUpdates;
      datos.Data.Commit;

      datos.ZInventario.Close;
      datos.FbqMaster_Fact.Close;
      datos.Zdetalle.Close;
      HOLD.Close;
      HOLD.open;
    end;
  end;

  Panel2.Visible := false;
end;

procedure TFrmCobroFact.cobrando;
begin

  if asignaTurno = 0 then
  begin
    ShowMessage(' ** No Hay Turno Abierto Disponible **');
  end
  else
  begin
    if (datos.FbqMaster_FactROTULO.Value = 'FACTURACION') or
      (datos.FbqMaster_FactROTULO.Value = 'COTIZACION') OR
      (datos.FbqMaster_FactROTULO.Value = 'DELIVERY') then
    BEGIN

      datos.FbqMaster_Fact.Edit;
      datos.fbqMaster_factsituacion.text := 'ENVIADA';
      datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
      // DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';

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

      if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
      begin
        datos.series.ApplyUpdates;
      end;

      // datos.ZInventario.ApplyUpdates;
      datos.FbqMaster_Fact.ApplyUpdates;
      datos.Zdetalle.ApplyUpdates;
      datos.Data.Commit;

      with datos.FbqMaster_Fact do
      begin
        Close;
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

        if datos.FbqMaster_FactROTULO.Value = 'DELIVERY' then
          begin
              params[0].Value := StrToInt(edit4.text);
          end else begin
                        params[0].Value := StrToInt(edit5.text);
                   end;



        open;
      end;

      with datos.Zdetalle do
      begin
        Close;
        sql.Clear;
        sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
        sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
        sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
        sql.Add('where a.masterid =:ppp');
        params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
        open;
      end;

      if FrmCobro = nil then
      begin

        FrmCobro := tFrmCobro.Create(self);
        if formapago.text = 'EFECTIVO' then
        begin
          FrmCobro.Edit6.text := 'EFECTIVO'
        end;

        if formapago.text = 'TARJETA' then
        begin

          FrmCobro.Edit6.text := 'TARJETA'
        end;

        if formapago.text = 'MIXTO' then
        begin
          FrmCobro.Edit6.text := 'MIXTO'
        end;

        if formapago.text = 'CREDITO' then
        begin
          FrmCobro.Edit6.text := 'CREDITO'
        end;

        if formapago.text = 'CHEQUE' then
        begin
          FrmCobro.Edit6.text := 'CHEQUE'
        end;

        FrmCobro.showmodal;

      end;

    end;
  end;
     panel2.Visible := false;
end;

procedure TFrmCobroFact.cobrandoDelivery;
begin

  if asignaTurno = 0 then
  begin
    ShowMessage(' ** No Hay Turno Abierto Disponible **');
  end
  else
  begin
    if (datos.FbqMaster_FactROTULO.Value = 'FACTURACION') or
      (datos.FbqMaster_FactROTULO.Value = 'COTIZACION') OR
      (datos.FbqMaster_FactROTULO.Value = 'DELIVERY') then
    BEGIN

      datos.FbqMaster_Fact.Edit;
      datos.fbqMaster_factsituacion.text := 'ENVIADA';
      datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
      // DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';

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

      if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
      begin
        datos.series.ApplyUpdates;
      end;

      // datos.ZInventario.ApplyUpdates;
      datos.FbqMaster_Fact.ApplyUpdates;
      datos.Zdetalle.ApplyUpdates;
      datos.Data.Commit;

      with datos.FbqMaster_Fact do
      begin
        Close;
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
        params[0].Value := StrToInt(edit4.text);
        open;
      end;

      with datos.Zdetalle do
      begin
        Close;
        sql.Clear;
        sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
        sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
        sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
        sql.Add('where a.masterid =:ppp');
        params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
        open;
      end;

      if FrmCobro = nil then
      begin

        FrmCobro := tFrmCobro.Create(self);
        if formapago.text = 'EFECTIVO' then
        begin
          FrmCobro.Edit6.text := 'EFECTIVO'
        end;

        if formapago.text = 'TARJETA' then
        begin

          FrmCobro.Edit6.text := 'TARJETA'
        end;

        if formapago.text = 'MIXTO' then
        begin
          FrmCobro.Edit6.text := 'MIXTO'
        end;

        if formapago.text = 'CREDITO' then
        begin
          FrmCobro.Edit6.text := 'CREDITO'
        end;

        if formapago.text = 'CHEQUE' then
        begin
          FrmCobro.Edit6.text := 'CHEQUE'
        end;

        FrmCobro.showmodal;

      end;

    end;
  end;
end;

procedure TFrmCobroFact.cxButton14Click(Sender: TObject);
begin
  if (IbqClientesCODIGO.Value = 1) then
  begin
    ShowMessage(' Cliente no esta Autorizado para el Crédito ');
  end
  else
  begin
    if (datos.fbqmaster_factNOMBREDELDR.Value = 'Credito Fiscal') or
      (datos.fbqmaster_factNOMBREDELDR.Value = 'Gubernamental') then
    begin
      if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '')
      then
      begin

        MsgInformacion
          (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
      end
      else
      begin
        formapago.text := 'CREDITO';
        datos.FbqMaster_Fact.Edit;
        datos.FBQMASTER_FACTTIPO.Value := 'CREDITO';

        with master_credito do
        begin
          Close;
          sql.Clear;
          sql.Add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
          sql.Add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
          sql.Add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
          sql.Add('from master_fact a');

          sql.Add('left join cliente b On a.clienteid = b.codigo');
          sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
          sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
          sql.Add('where a.situacion  =:opcion2');
          sql.Add('and a.condicion    =:OPCION4');
          sql.Add('AND A.ROTULO       =:OPCION5');
          sql.Add('and a.clienteid    =:opcion66');
          sql.Add('and a.tipo         =:tipo1');
          sql.Add('and a.quees <>''SALDADA''');
          sql.Add('and ((current_date - fechavencimiento) > 0)');
          params[0].Value := 'IMPRESA';
          params[1].Value := 'ACTIVA';
          params[2].Value := 'FACTURACION';
          params[3].Value := datos.FbqMaster_FactCLIENTEID.Value;
          params[4].Value := 'CREDITO';
          open;
        end;

        with QBalanceCreditoCliente do
        begin
          Close;
          sql.Clear;
          sql.Add('select balance from cliente');
          sql.Add('where codigo =:opp');
          params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
          open;
        end;
        // ShowMessage('Monto Factura :'+datos.FbqMaster_FactMONTOPAGO.Text+'<= Monto Balance :'+QBalanceCreditoClienteBALANCE.text);
        if datos.FbqMaster_FactMONTOPAGO.Value <= QBalanceCreditoClienteBALANCE.Value
        then
        begin
          if master_credito.RecordCount > 0 then
          begin
            MsgInformacion(' Error!!  Este cliente Tiene Facturas Vencidas ');
          end
          else
          begin

            enviarfactura;
          end;
          // panel7.Enabled := false;
          // PanelLTOP.Enabled := false;
        end
        else
        begin
          ShowMessage
            (' El monto de esta factura aumenta el Limete de credito asignado ');
        end;
        formapago.text := 'CREDITO';

      end;
    end
    else
    begin

      formapago.text := 'CREDITO';
      datos.FbqMaster_Fact.Edit;
      datos.FBQMASTER_FACTTIPO.Value := 'CREDITO';

      with master_credito do
      begin
        Close;
        sql.Clear;
        sql.Add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.Add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.Add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.Add('from master_fact a');

        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        sql.Add('and ((current_date - fechavencimiento) > 0)');
        params[0].Value := 'IMPRESA';
        params[1].Value := 'ACTIVA';
        params[2].Value := 'FACTURACION';
        params[3].Value := datos.FbqMaster_FactCLIENTEID.Value;
        params[4].Value := 'CREDITO';
        open;
      end;

      with QBalanceCreditoCliente do
      begin
        Close;
        sql.Clear;
        sql.Add('select balance from cliente');
        sql.Add('where codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;
      end;
      // ShowMessage('Monto Factura :'+datos.FbqMaster_FactMONTOPAGO.Text+'<= Monto Balance :'+QBalanceCreditoClienteBALANCE.text);
      if datos.FbqMaster_FactMONTOPAGO.Value <= QBalanceCreditoClienteBALANCE.Value
      then
      begin
        if master_credito.RecordCount > 0 then
        begin
          MsgInformacion(' Error!!  Este cliente Tiene Facturas Vencidas ');
        end
        else
        begin

          enviarfactura;
        end;
        // panel7.Enabled := false;
        // PanelLTOP.Enabled := false;
      end
      else
      begin
        ShowMessage
          (' El monto de esta factura aumenta el Limete de credito asignado ');
      end;

      // pago;
    end;
  end;
end;

procedure TFrmCobroFact.cxGrid3DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[5] = 'DELIVERY' then
  BEGIN
    ACanvas.Brush.Color := clPurple;
    ACanvas.Font.Color := clWhite;
  end;

end;

procedure TFrmCobroFact.cxGrid4DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  with datos.FbqMaster_Fact do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO <>:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');
    params[0].Value := 'ENVIADA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'COTIZACION';
    // Params[3].Value := 'Contado';
    params[3].Value := HOLDNO_FACT.Value;

    open;
  end;

  with datos.Zdetalle do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with master_credito do
  begin
    Close;
    sql.Clear;
    sql.Add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
    sql.Add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
    sql.Add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
    sql.Add('from master_fact a');

    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion    =:OPCION4');
    sql.Add('AND A.ROTULO       <>:OPCION5');
    sql.Add('and a.clienteid    =:opcion66');
    sql.Add('and a.tipo         =:tipo1');
    sql.Add('and a.quees <>''SALDADA''');
    sql.Add('and ((current_date - fechavencimiento) > 0)');
    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'COTIZACION';
    params[3].Value := HOLDCLIENTEID.Value;
    params[4].Value := 'CREDITO';
    open;
  end;

  edit5.text := datos.FbqMaster_FactNO_FACT.text;

end;

procedure TFrmCobroFact.cxGrid4DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[6] = 1 then
  BEGIN
    ACanvas.Brush.Color := clTeal;
    ACanvas.Font.Color := clWhite;
  end;

  if AViewInfo.GridRecord.Values[7] = 'DELIVERY' then
  BEGIN
    ACanvas.Brush.Color := clPurple;
    ACanvas.Font.Color := clWhite;
  end;

  if AViewInfo.GridRecord.Values[8] = 'DELIVERYPRINT' then
  BEGIN
    ACanvas.Brush.Color := clWebMaroon;
    ACanvas.Font.Color := clWhite;
  end;

end;

procedure TFrmCobroFact.cxGrid4DBTableView1DblClick(Sender: TObject);
begin
  with datos.FbqMaster_Fact do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');
    params[0].Value := 'ENVIADA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    // Params[3].Value := 'Contado';
    params[3].Value := HOLDNO_FACT.Value;

    open;
  end;

  with datos.Zdetalle do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with master_credito do
  begin
    Close;
    sql.Clear;
    sql.Add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
    sql.Add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
    sql.Add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
    sql.Add('from master_fact a');

    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion    =:OPCION4');
    sql.Add('AND A.ROTULO       =:OPCION5');
    sql.Add('and a.clienteid    =:opcion66');
    sql.Add('and a.tipo         =:tipo1');
    sql.Add('and a.quees <>''SALDADA''');
    sql.Add('and ((current_date - fechavencimiento) > 0)');
    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    params[3].Value := HOLDCLIENTEID.Value;
    params[4].Value := 'CREDITO';
    open;
  end;

  edit5.text := datos.FbqMaster_FactNO_FACT.text;
  Edit2.text := HOLDNO_FACT.text;

end;

procedure TFrmCobroFact.cxGrid5DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Edit1.text := QDeliveryNO_FACT.text;
  Edit4.text := QDeliveryNO_FACT.text;
end;

procedure TFrmCobroFact.cxGrid5DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if AViewInfo.GridRecord.Values[5] = 'PRINT' then
  BEGIN
    ACanvas.Brush.Color := clTeal;
    ACanvas.Font.Color := clWhite;
  end;


end;

procedure TFrmCobroFact.cxGrid5DBTableView1DblClick(Sender: TObject);
begin
 with datos.FbqMaster_Fact do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');
    params[0].Value := 'ENVIADA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    // Params[3].Value := 'Contado';
    params[3].Value := QDeliveryNO_FACT.Value;

    open;
  end;

  with datos.Zdetalle do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with master_credito do
  begin
    Close;
    sql.Clear;
    sql.Add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
    sql.Add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
    sql.Add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
    sql.Add('from master_fact a');

    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion    =:OPCION4');
    sql.Add('AND A.ROTULO       =:OPCION5');
    sql.Add('and a.clienteid    =:opcion66');
    sql.Add('and a.tipo         =:tipo1');
    sql.Add('and a.quees <>''SALDADA''');
    sql.Add('and ((current_date - fechavencimiento) > 0)');
    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    params[3].Value := QDeliveryCLIENTEID.Value;
    params[4].Value := 'CREDITO';
    open;
  end;

  edit5.text := datos.FbqMaster_FactNO_FACT.text;
  Edit4.text := QDeliveryNO_FACT.text;

   BtEnviarDelivery.Enabled := true;
 BtCobrarDelivry.Enabled := true;
 BtRetornoDelivery.Enabled := true;

end;

procedure TFrmCobroFact.cxTextEdit2Change(Sender: TObject);
begin
  with HOLD do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.situacion =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    sql.Add('and A.nombrecliente_prn like ' + #39 + '%' + cxTextEdit2.text +
      '%' + #39);
    params[0].Value := 'ENVIADA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    open;
  end;
end;

procedure TFrmCobroFact.dfdgfdfgdfdfClick(Sender: TObject);
begin
  if (datos.fbqmaster_factNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.fbqmaster_factNOMBREDELDR.Value = 'Gubernamental') then
  begin
    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      formapago.text := 'CHEQUE';
      pago;
    end;
  end
  else
  begin
    formapago.text := 'CHEQUE';
    pago;
  end;
end;

procedure TFrmCobroFact.dfgtrhyryrClick(Sender: TObject);
begin
  if (datos.fbqmaster_factNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.fbqmaster_factNOMBREDELDR.Value = 'Gubernamental') then
  begin
    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      formapago.text := 'TARJETA';
      pago;
    end;
  end
  else
  begin
    formapago.text := 'TARJETA';
    pago;
  end;
end;

procedure TFrmCobroFact.cxTextEdit1Change(Sender: TObject);
begin
  with FacturasImpresas do
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
    sql.Add('and a.NOMBRECLIENTE_PRN like ' + #39 + '%' + cxTextEdit1.text +
      '%' + #39);
    sql.Add('and a.fecha_fac >=:fechas');

    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    params[3].Value := now();
    open;

  end;
end;

procedure TFrmCobroFact.enviarfactura;
begin
  datos.FbqMaster_Fact.Edit;
  datos.fbqMaster_factsituacion.text := 'ENVIADA';
  datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
  datos.FbqMaster_FactROTULO.text := 'FACTURACION';

  datos.FbqMaster_Factterminal.text := 'FACTURACION';
  datos.FbqMaster_FactABONO.Value := 0.00;
  datos.FbqMaster_FactPENDIENTE.Value := datos.FbqMaster_FactMONTOPAGO.Value;

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
    datos.series.ApplyUpdates;
  end;

  // datos.ZInventario.ApplyUpdates;
  datos.FbqMaster_Fact.ApplyUpdates;
  datos.Zdetalle.ApplyUpdates;
  datos.Data.Commit;

  with datos.FbqMaster_Fact do
  begin
    Close;
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
    params[0].Value := StrToInt(edit5.text);
    open;
  end;

  with datos.Zdetalle do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with datos.series do
  begin
    Close;
    // params[0].Value := datos.ZdetalleARTICULOID.Value;
    // params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if datos.ZUconfiguracionTIPO_FACTURACION.Value = 2 then
  begin

    if FrmCobro = nil then
    begin

      FrmCobro := tFrmCobro.Create(self);
      if formapago.text = 'EFECTIVO' then
      begin
        FrmCobro.Edit6.text := 'EFECTIVO'
      end;

      if formapago.text = 'TARJETA' then
      begin
        FrmCobro.Edit6.text := 'TARJETA'
      end;

      if formapago.text = 'MIXTO' then
      begin
        FrmCobro.Edit6.text := 'MIXTO'
      end;

      if formapago.text = 'CREDITO' then
      begin
        FrmCobro.Edit6.text := 'CREDITO'
      end;

      if formapago.text = 'CHEQUE' then
      begin
        FrmCobro.Edit6.text := 'CHEQUE'
      end;

      FrmCobro.showmodal;

    end;
  end
  else
  begin

    datos.FbqMaster_Fact.ApplyUpdates;
    datos.Zdetalle.ApplyUpdates;
    datos.Data.Commit;

    datos.ZInventario.Close;
    datos.FbqMaster_Fact.Close;
    datos.Zdetalle.Close;


    // BtBuscarPedido.Enabled := true;

  end;

end;

procedure TFrmCobroFact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmCobroFact := nil;
  Action := caFree;
  FrmHome.pnl_Menu_Lateral.Visible := TRUE;
  FrmHome.pnlTop.Visible := TRUE;
  FrmHome.btnsalir.Enabled := TRUE;

end;

procedure TFrmCobroFact.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Panel11.Visible := FALSE;
  end;

end;

procedure TFrmCobroFact.FormShow(Sender: TObject);
begin

  with FacturasImpresas do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.codven = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    // sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('and a.fecha_fac >=:fechas');
    sql.Add('and a.tiendaid =:turnos');

    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    // Params[2].Value := 'FACTURACION';
    // params[3].Value :=  now();
    params[2].Value := asignaTurno;

    open;
  end;
end;

procedure TFrmCobroFact.generarcomprobante;
var
  nume: integer;
  cero1: string;
begin
  if datos.fbqmaster_factNOMBREDELDR.Value <> 'Ninguno' then
  begin
    try

      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactRNC_CLIENTE.Value := IbqClientesCEDULA.Value;

      with datos.ncf do
      begin
        Close;
        sql.Clear;
        sql.Add('select * from ncf');
        sql.Add('where nuNtext =:tipo');

        if datos.fbqmaster_factNOMBREDELDR.Value = 'Credito Fiscal' then
        begin
          params[0].Value := 'B01';
          Edit3.text := datos.NCFTITULO.Value;
          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_FactCAJA.Value := datos.ncfTIPO.Value;

          with NumNCF_Fiscal do
          begin
            Close;
            sql.Clear;
            sql.Add('select gen_id(GEN_NCF_USO_CF, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_FiscalGEN_ID.Value;

        end;

        if datos.fbqmaster_factNOMBREDELDR.Value = 'Gubernamental' then
        begin
          params[0].Value := 'B15';
          Edit3.text := datos.NCFTITULO.Value;
          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_FactCAJA.Value := datos.ncfTIPO.Value;

          with NumNCF_GOB do
          begin
            Close;
            sql.Clear;
            sql.Add('select gen_id(GEN_NCF_GOB, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_GOBGEN_ID.Value;

        end;

        if datos.fbqmaster_factNOMBREDELDR.Value = 'Cons. Final' then
        begin

          with datos.ZTurno do
          begin
            Close;
            sql.Clear;
            sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
            sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
            sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
            sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
            sql.Add('where a.estado =:Est');
            sql.Add('and a.usuarioID =:Usua');
            params[0].Value := 1;
            params[1].Value := AsignaUsuario;
            open;
          end;

          if datos.ZUconfiguracionTerminal.Value = 'Touch' then
          begin

            if datos.ZTurnoCOBOSNUEVOS.Value >= datos.ZTurnoCUBOSUSADOS.Value
            then
            begin
              params[0].Value := 'B02';
              Edit3.text := datos.NCFTITULO.Value;
              datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCAJA.Value := datos.ncfTIPO.Value;

              with NumNCF do
              begin
                Close;
                sql.Clear;
                sql.Add('select gen_id(GEN_NCF_USO, 1) from RDB$DATABASE');
                open;
              end;

              nume := NumNCFGEN_ID.Value;

              datos.ZTurno.Edit;
              datos.ZTurnoCUBOSUSADOS.Value := datos.ZTurnoCUBOSUSADOS.Value +
                datos.FbqMaster_FactMONTOPAGO.Value;
              datos.ZTurno.ApplyUpdates;

            end;
          end
          else
          begin

            params[0].Value := 'B02';
            Edit3.text := datos.NCFTITULO.Value;
            datos.FbqMaster_Fact.Edit;
            datos.FbqMaster_FactCAJA.Value := datos.ncfTIPO.Value;

            with NumNCF do
            begin
              Close;
              sql.Clear;
              sql.Add('select gen_id(GEN_NCF_USO, 1) from RDB$DATABASE');
              open;
            end;

            nume := NumNCFGEN_ID.Value;

            datos.ZTurno.Edit;
            datos.ZTurnoCUBOSUSADOS.Value := datos.ZTurnoCUBOSUSADOS.Value +
              datos.FbqMaster_FactMONTOPAGO.Value;
            datos.ZTurno.ApplyUpdates;

          end;

        end;

        open;

      end;




      // nume := datos.ncfdesde.Value + datos.ncfuso.Value;

      if nume >= 1 then
      begin
        cero1 := '0000000';
      end;

      if nume >= 10 then
      begin
        cero1 := '000000';
      end;

      if nume >= 100 then
      begin
        cero1 := '00000';
      end;

      if nume >= 1000 then
      begin
        cero1 := '0000';
      end;

      if nume >= 10000 then
      begin
        cero1 := '000';
      end;

      if nume >= 100000 then
      begin
        cero1 := '00';
      end;

      if nume >= 1000000 then
      begin
        cero1 := '0';
      end;

      with datos.ZTurno do
      begin
        Close;
        sql.Clear;
        sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
        sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
        sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
        sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
        sql.Add('where a.estado =:Est');
        sql.Add('and a.usuarioID =:Usua');
        params[0].Value := 1;
        params[1].Value := AsignaUsuario;
        open;
      end;

      if datos.ZUconfiguracionTerminal.Value = 'Touch' then
      begin

        if datos.fbqmaster_factNOMBREDELDR.Value = 'Cons. Final' then
        begin

          if datos.ZTurnoCOBOSNUEVOS.Value >= datos.ZTurnoCUBOSUSADOS.Value then
          begin
            datos.FbqMaster_Fact.Edit;
            datos.FbqMaster_FactNCF.Value := datos.ncfNUNTEXT.Value + cero1 +
              IntToStr(nume);
            datos.FbqMaster_FactNCF_NOMBRE.Value := datos.NCFTITULO.Value;
            datos.fbqMaster_FactFecha_final.Value := datos.NCFFECHA_VENC.Value;
            datos.FbqMaster_FactFECHA_FAC.Value := now();

//            datos.ncf.Edit;
//            datos.ncfUSO.Value := nume;
//            datos.ncf.ApplyUpdates;
          end;
        end
        else
        begin

          datos.FbqMaster_Fact.Edit;
          datos.FbqMaster_FactNCF.Value := datos.ncfNUNTEXT.Value + cero1 +
            IntToStr(nume);
          datos.FbqMaster_FactNCF_NOMBRE.Value := datos.NCFTITULO.Value;
          datos.fbqMaster_FactFecha_final.Value := datos.NCFFECHA_VENC.Value;
          datos.FbqMaster_FactFECHA_FAC.Value := now();

        end;

      end
      else
      begin

        datos.FbqMaster_Fact.Edit;
        datos.FbqMaster_FactNCF.Value := datos.ncfNUNTEXT.Value + cero1 +
          IntToStr(nume);
        datos.FbqMaster_FactNCF_NOMBRE.Value := datos.NCFTITULO.Value;
        datos.fbqMaster_FactFecha_final.Value := datos.NCFFECHA_VENC.Value;
        datos.FbqMaster_FactFECHA_FAC.Value := now();

//        datos.ncf.Edit;
//        datos.ncfUSO.Value := nume;
//        datos.ncf.ApplyUpdates;

      end;

    finally
      // TODO 5 -oIasa -cEmpty Code Block: TFrmCobro.cobrarFact (finally/end in procedure)
    end;
  end;

end;

procedure TFrmCobroFact.imprimirtikectCredito;
var
  cont, numpag, i: integer;
  arq: TextFile;
  fechaFA: tdate;
  horaFA: ttime;
  r: TRect;

  longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE,
    EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL: string;
  DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2: string;
  PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1,
    TPcampoF: string;
  SIZEFONT, FONTBOLD, FONTNORMAL, pcant, espacios: string;

begin

  fechaFA := now;
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

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
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
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));

  if StrToInt(longitud) > 42 then
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'             '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
  end
  else
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
  end;

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Fact: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));

  if StrToInt(longitud) > 42 then
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
  end
  else
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
  end;
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));

  if datos.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RNC CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('RNC_CLIENTE').Value),StrToInt(longitud),0));
  end;

  if datos.FbqMaster_Factdireccion.Value <> '' then
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('DIRECCION  :'+DATOS.FbqMaster_Fact.FieldByName('DIRECCION').Value),StrToInt(longitud),0));
  end;
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('PRODUCTO...............................',StrToInt(Longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CANT',StrToInt(campoL),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('ITBIS',StrToInt(campoC2),0)+espacios('TOTAL',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));

  if StrToInt(longitud) > 42 then
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
  end
  else
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
  end;

  with datos.Zdetalle do
  begin
    First;
    while not Eof do
    begin
      if datos.ZdetalleITBS.Value > 0.00 then
      begin
        // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('TITULOPRN').AsString),0,36),StrToInt(longitud),0));
        //
      end
      else
      begin
        // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(campol),0)+espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('TITULOPRN').AsString),0,36),StrToInt(longitud),0));

      end;
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if datos.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(pcant),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
        // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('Precio').value),StrToInt(pprecio),1)+''+
        // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),1)+''+
        // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
        // espacios('',StrToInt(DcampoF),0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(pcant),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
        // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
        // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),1)+''+
        // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
        // espacios('',StrToInt(DcampoF),0));
        //

      END;

      Next;
    end;
  end;

  if StrToInt(longitud) > 42 then
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
  end
  else
  begin
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
  end;

  // if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(TpcampoF),1))
  // else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
  // if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('descuento').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
  // else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tpcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
  // if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
  // else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
  //
  //
  // if not datos.FbqMaster_Fact.FieldByName('ABONO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ABONO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('ABONO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
  // else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ABONO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
  //
  //
  // if not datos.FbqMaster_Fact.FieldByName('PENDIENTE').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('PENDIENTE:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('PENDIENTE').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
  // else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('PENDIENTE:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
  //
  //
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));
  //
  // if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
  // else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
  // if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('BONOS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('BONOS').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));
  // if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1))
  // else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));


  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('Fecha de Vencimiento:'+DATOS.FBQMASTER_FACT.FieldByName('fecha_final').AsString),StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,StrToInt(longitud)));
  //
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_Factcajero.Text),StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

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

procedure TFrmCobroFact.pago;
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
        Close;
        sql.Clear;
        sql.Add('select balance from cliente');
        sql.Add('where codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;
      end;
      // ShowMessage('Monto Factura :'+datos.FbqMaster_FactMONTOPAGO.Text+'<= Monto Balance :'+QBalanceCreditoClienteBALANCE.text);
      if datos.FbqMaster_FactMONTOPAGO.Value <= QBalanceCreditoClienteBALANCE.Value
      then
      begin
        if master_credito.RecordCount > 0 then
        begin
          MsgInformacion(' Error!!  Este cliente Tiene Facturas Vencidas ');
        end
        else
        begin

          cobrando;
        end;
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

    end;
  end;
end;

procedure TFrmCobroFact.pagodelivery;
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
        Close;
        sql.Clear;
        sql.Add('select balance from cliente');
        sql.Add('where codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;
      end;
      // ShowMessage('Monto Factura :'+datos.FbqMaster_FactMONTOPAGO.Text+'<= Monto Balance :'+QBalanceCreditoClienteBALANCE.text);
      if datos.FbqMaster_FactMONTOPAGO.Value <= QBalanceCreditoClienteBALANCE.Value
      then
      begin
        if master_credito.RecordCount > 0 then
        begin
          MsgInformacion(' Error!!  Este cliente Tiene Facturas Vencidas ');
        end
        else
        begin

          cobrandoDelivery;
        end;
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

      cobrandoDelivery;

    end;
  end;
end;

procedure TFrmCobroFact.printcopia;
var
  cont, numpag, i: integer;
  arq: TextFile;
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

  fechaFA := now;
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
    CenterString('FACTURA COPIA', StrToInt(longitud)));
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
          .Value, espacios(copy(MyTextReplace(datos.Zdetalle.FieldByName
          ('TITULOPRN').asstring), 0, 35), StrToInt(longitud), 0));

      end
      else
      begin
        WriteRawDataToPrinter(datos.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(copy(MyTextReplace(datos.Zdetalle.FieldByName('EX')
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

procedure TFrmCobroFact.SpeedButton1ffffffClick(Sender: TObject);
begin
  Panel2.Visible := FALSE;
end;

procedure TFrmCobroFact.cxButton18Click(Sender: TObject);
var
  cont, numpag, i: integer;
  arq: TextFile;
  fechaFA: tdate;
  horaFA: ttime;
  r: TRect;
  longitud, campoD, campoC1, campoC2, campol, campof: string;
  DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2: string;
  PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, men_pie: string;
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

  fechaFA := now;
  horaFA := Time;
  Cursor := crHourGlass;
  cont := 1;
  numpag := 1;

  with datos.FbqMaster_Fact do
  begin
    Close;
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
    params[0].Value := FacturasImpresasNO_FACT.Value;
    open;
  end;



  with datos.Zdetalle do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with datos.series do
  begin
    Close;
    sql.Clear;
    sql.Add('select * from man_series where IDDETALLE =:opp');
    params[0].Value := datos.ZdetalleNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    Close;
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
      // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeCopia'+'.fr3';
      // Showmessage(''+CinF);
      // imprimeM.LoadFromFile(cInf);
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

      // imprimeM.variables['cajero']   :=quotedstr(edit2.text);
      men_pie := datos.ZUconfiguracionMensaje_pie1.Value;
      imprimem.variables['mensaje1'] := quotedstr(men_pie);
      imprimem.PrepareReport(TRUE);
      imprimem.ShowPreparedReport;

      datos.ZInventario.Close;
      datos.FbqMaster_Fact.Close;
      datos.Zdetalle.Close;

      Panel11.Visible := FALSE;

    END;
    if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
    begin
      with Antiguedad do
      begin
        Close;
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

      if Chkorinal.Checked = TRUE then
      begin
        ImprimEMC.variables['titulos'] := quotedstr('FACTURA');
      end
      else
      begin
        ImprimEMC.variables['titulos'] := quotedstr('COPIA FACTURA');
      end;
      // imprimeMC.variables['cajero']   :=quotedstr(edit2.text);

      men_pie := datos.ZUconfiguracionMensaje_pie1.Value;

      ImprimEMC.variables['mensaje1'] := quotedstr(men_pie);
      ImprimEMC.PrepareReport(TRUE);
      ImprimEMC.ShowPreparedReport;

      datos.ZInventario.Close;
      datos.FbqMaster_Fact.Close;
      datos.Zdetalle.Close;

      Panel11.Visible := FALSE;

      edit5.Clear;

      men_pie := datos.ZUconfiguracionMensaje_pie2.Value;
      ImprimEMC.variables['mensaje1'] := quotedstr(men_pie);
    end;

  END;

  if op10.ItemIndex = 0 then
  BEGIN

    if datos.FBQMASTER_FACTTIPO.Value = 'Contado' then
    begin

      if Tipoimpresion = 'D' then
      begin
        printcopia;
      end
      else
      begin

        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\FacturaTicketCopia' + '.fr3';
        // Showmessage(''+CinF);
        prncopia.LoadFromFile(cInf);
        prncopia.variables['titulos'] := quotedstr('COPIA FACTURA');
        // PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
        men_pie := datos.ZUconfiguracionMensaje_pie1.Value;
        prncopia.variables['mensaje1'] := quotedstr(men_pie);
        prncopia.PrepareReport(TRUE);
        prncopia.print;
      end;
    end;

    if datos.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
    begin
      if Tipoimpresion = 'D' then
      begin
        imprimirtikectCredito;
      end
      else
      begin

        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\FacturaTicketCopia' + '.fr3';
        // Showmessage(''+CinF);
        prncopia.LoadFromFile(cInf);
        prncopia.variables['titulos'] := quotedstr('COPIA FACTURA');
        // PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
        men_pie := datos.ZUconfiguracionMensaje_pie2.Value;
        prncopia.variables['mensaje1'] := quotedstr(men_pie);
        prncopia.PrepareReport(TRUE);
        prncopia.print;
      end;
    end;

    // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

    datos.ZInventario.Close;
    datos.FbqMaster_Fact.Close;
    datos.Zdetalle.Close;

    Panel11.Visible := FALSE;

  END;

end;

procedure TFrmCobroFact.SpeedButton11ffffffClick(Sender: TObject);
begin
  if (datos.fbqmaster_factNOMBREDELDR.Value = 'Credito Fiscal') or
    (datos.fbqmaster_factNOMBREDELDR.Value = 'Gubernamental') then
  begin
    if (IbqClientesCEDULA.Value = '') or (IbqClientesDIRECCION.Value = '') then
    begin

      MsgInformacion
        (' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
    end
    else
    begin
      formapago.text := 'MIXTO';
      pago;
    end;
  end
  else
  begin
    formapago.text := 'MIXTO';
    pago;
  end;
end;

procedure TFrmCobroFact.BtEnviarDeliveryClick(Sender: TObject);
var
  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion, tipopago1: String;
  cInf: String;
  men_pie: string;
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


   with datos.FbqMaster_Fact do
  begin
    Close;
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
    params[0].Value := StrToInt(Edit4.text);
    open;
  end;

  with NUMERO1 do
  begin
    Close;
    sql.Clear;
    sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
    open;
  end;

  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_FactNUMERO_FACTURA.Value := NUMERO1GEN_ID.Value;
  datos.FbqMaster_FactESTACION.Value       := 'PRINT';

  generarcomprobante;

  datos.FbqMaster_Fact.Edit;
  datos.FbqMaster_Fact.ApplyUpdates;
  datos.Zdetalle.ApplyUpdates;
  datos.Data.Commit;

   with datos.FbqMaster_Fact do
  begin
    Close;
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
    params[0].Value := StrToInt(Edit4.text);
    open;
  end;

  /// ShowMessage(''+datos.FbqMaster_FactNUMERO_FACTURA.Text);

  with datos.Zdetalle do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with datos.series do
  begin
    Close;
    sql.Clear;
    sql.Add('select * from man_series where IDDETALLE =:opp');
    params[0].Value := datos.ZdetalleNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    Close;
    sql.Clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if datos.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
  begin

    if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
      Mb_YesNo + MB_ICONQUESTION) = Id_yes then
    begin

      if Tipoimpresion = 'D' then
      begin
        if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
        BEGIN
          // imprimirtikect;
        END
        ELSE
        BEGIN
          // imprimirtikect;
          // imprimirtikect;

        END;

      end
      else
      begin

        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\FacturaTicketDelivery' + '.fr3';
        RECIBO2.LoadFromFile(cInf);

        // recibo2.variables['titulos']  :=quotedstr('FACTURA');
        RECIBO2.variables['cajero'] :=
          quotedstr(datos.FbqMaster_FactNOMBRES_EMP.text);

        men_pie := datos.ZUconfiguracionMensaje_pie1.Value;
        RECIBO2.variables['mensaje1'] := quotedstr(men_pie);


        // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

        if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
        BEGIN
          RECIBO2.PrintOptions.Copies := 1;
        END
        ELSE
        begin
          RECIBO2.PrintOptions.Copies := 2;

        end;

        RECIBO2.PrepareReport(TRUE);
        RECIBO2.print;

      end;

    end;
  end;

  if datos.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'NO' then
  begin

    if Tipoimpresion = 'D' then
    begin
      if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
      BEGIN
        // imprimirtikect;
      END
      ELSE
      BEGIN
        // imprimirtikect;
        // imprimirtikect;

      END;

    end
    else
    begin

      cInf := datos.ZUconfiguracionROTULO_FC.Value +
        '\FacturaTicketDelivery' + '.fr3';
      RECIBO2.LoadFromFile(cInf);

      // recibo2.variables['titulos']  :=quotedstr('FACTURA');
      RECIBO2.variables['cajero'] :=
        quotedstr(datos.FbqMaster_FactNOMBRES_EMP.text);

      men_pie := datos.ZUconfiguracionMensaje_pie1.Value;
      RECIBO2.variables['mensaje1'] := quotedstr(men_pie);


      // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

      if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
      BEGIN
        RECIBO2.PrintOptions.Copies := 1;
      END
      ELSE
      begin
        RECIBO2.PrintOptions.Copies := 2;

      end;
      RECIBO2.PrepareReport(TRUE);
      RECIBO2.print;

    end;

  end;

  datos.FbqMaster_Fact.Edit;
  datos.fbqMaster_factsituacion.text := 'ENVIADA';
  datos.FbqMaster_FactCONDICION.text := 'ACTIVA';
  datos.FbqMaster_FactROTULO.text := 'DELIVERY';
  datos.FbqMaster_FactPINREFERIDO.Value := 'DELIVERYPRINT';
  datos.FbqMaster_Factterminal.text := 'FACTURACION';
  datos.FbqMaster_FactABONO.Value := 0.00;

  datos.FbqMaster_Fact.ApplyUpdates;
  datos.Data.Commit;
  Panel2.Visible := false;
end;

procedure TFrmCobroFact.SpeedButton14Click(Sender: TObject);
begin

  with QDelivery do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.codven = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('WHERE a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
   // sql.Add('and a.tiendaid =:turnos');
    sql.Add('AND A.SITUACION =:OPCION6');

    params[0].Value := 'ACTIVA';
    params[1].Value := 'DELIVERY';

    params[2].Value := 'ENVIADA';

    open;
  end;

  Panel2.Visible := TRUE;
 BtEnviarDelivery.Enabled := false;
 BtCobrarDelivry.Enabled := False;
 BtRetornoDelivery.Enabled := False;

end;

procedure TFrmCobroFact.SpeedButton15drgfrrClick(Sender: TObject);
begin
  if cxDBTextEdit1.text = '' then
  begin
    MsgInformacion('Aún no ha seleccionado factura')
  end
  else
  begin
    if (datos.fbqmaster_factNOMBREDELDR.Value = 'Credito Fiscal') or
      (datos.fbqmaster_factNOMBREDELDR.Value = 'Gubernamental') then
    begin

      formapago.text := 'EFECTIVO';
      pago;

    end
    else
    begin
      formapago.text := 'EFECTIVO';
      pago;
    end;
  end;
end;

procedure TFrmCobroFact.BtCobrarDelivryClick(Sender: TObject);
begin
 if edit4.text = '' then
  begin
    MsgInformacion('Aún no ha seleccionado factura')
  end
  else
  begin
    with datos.FbqMaster_Fact do
  begin
    Close;
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
    params[0].Value := StrToInt(Edit4.text);
    open;
  end;

    if (datos.fbqmaster_factNOMBREDELDR.Value = 'Credito Fiscal') or
      (datos.fbqmaster_factNOMBREDELDR.Value = 'Gubernamental') then
    begin

      formapago.text := 'EFECTIVO';
      pagodelivery;

    end
    else
    begin

      formapago.text := 'EFECTIVO';
      pagodelivery;
    end;
  end;

   Panel2.Visible := false;

end;

procedure TFrmCobroFact.SpeedButton1dddddddClick(Sender: TObject);
begin
  with FacturasImpresas do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.codven = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    // sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('and a.fecha_fac >=:fechas');
    sql.Add('and a.tiendaid =:turnos');

    params[0].Value := 'IMPRESA';
    params[1].Value := 'ACTIVA';
    // Params[2].Value := 'FACTURACION';
    // params[2].Value :=  now();
    params[2].Value := asignaTurno;

    open;
  end;
end;

procedure TFrmCobroFact.SpeedButton1fffffffClick(Sender: TObject);
begin
  Panel11.Visible := TRUE;
  op10.ItemIndex := 0;
  // cxButton18.SetFocus;
end;

procedure TFrmCobroFact.SpeedButton1ttttttClick(Sender: TObject);
begin
  if FrmCotiza = nil then
  begin
    FrmCotiza := tFrmCotiza.Create(self);
    FrmCotiza.Edit2.text := 'COBRO';
    FrmCotiza.showmodal;
  end;
end;

procedure TFrmCobroFact.SpeedButton2Click(Sender: TObject);
begin
  if frmNC = nil then
  begin
    frmNC := tfrmNC.Create(self);
    frmNC.showmodal;
  end;
end;

procedure TFrmCobroFact.SpeedButton3Click(Sender: TObject);
begin
  if FrmGastos = nil then
  begin
    FrmGastos := tFrmGastos.Create(self);
    FrmGastos.showmodal;
  end;
end;

procedure TFrmCobroFact.SpeedButton4Click(Sender: TObject);
begin
  if FrmActualizaDiasCredito = nil then
  begin
    FrmActualizaDiasCredito := TFrmActualizaDiasCredito.Create(self);
    FrmActualizaDiasCredito.showmodal;
  end;
end;

procedure TFrmCobroFact.SpeedButton5Click(Sender: TObject);
begin
  HOLD.Close;
  HOLD.open;

  with qCantDely do
    begin
      close;
      sql.Clear;
      sql.Add('select count(a.no_fact) from master_fact a');
      sql.Add('left join cliente b On a.clienteid = b.codigo');
      sql.Add('left join musuario c On a.codven = c.usuarioid');
      sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
      sql.Add('WHERE a.condicion =:OPCION4');
      sql.Add('AND A.ROTULO =:OPCION5');
      sql.Add('AND A.SITUACION =:OPCION6');

    params[0].Value := 'ACTIVA';
    params[1].Value := 'DELIVERY';
    params[2].Value := 'ENVIADA';
      opeN;
    end;

    lblCantDely.Caption := '('+qCantDelyCOUNT.Text+')';
end;

procedure TFrmCobroFact.SpeedButton6Click(Sender: TObject);
begin

  with datos.FbqMaster_Fact do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
    sql.Add('where a.condicion =:OPCION4');
    // sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');

    params[0].Value := 'ACTIVA';
    // Params[1].Value := 'FACTURACION';
    // Params[3].Value := 'Contado';
    params[1].Value := HOLDNO_FACT.Value;

    open;
  end;
  //

  if datos.FbqMaster_FactNO_FACT.Value <= 0 then
  begin
    ShowMessage('  Debes seleccionar una factura  ');
  end
  else
  begin
    if FAutorizacion.showmodal = mrOk then
    begin
      if Application.MessageBox('Esta seguro de cancelar este documento',
        'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        // showmessage(''+datos.FbqMaster_FactNO_FACT.Text);
        datos.FbqMaster_Fact.Edit;
        // datos.FbqMaster_FactNO_FACT.Value := numerogen_id.Value;
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
                Close;
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
                Close;
                sql.Clear;
                sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                ExecSQL;
              end;
            end;
            Next;
          end;

        end;
      end;

      datos.FbqMaster_Fact.ApplyUpdates;
      datos.Zdetalle.ApplyUpdates;
      datos.Data.Commit;

      datos.ZInventario.Close;
      datos.FbqMaster_Fact.Close;
      datos.Zdetalle.Close;
      cxButton1.Click;

    end;
  end;
end;

procedure TFrmCobroFact.SpeedButton7Click(Sender: TObject);
begin
  if FrmGet_CXC = nil then
  begin
    FrmGet_CXC := tFrmGet_CXC.Create(self);
    FrmGet_CXC.showmodal;
  end;
end;

procedure TFrmCobroFact.SpeedButton8Click(Sender: TObject);
begin
  if FrmOpcionCaja = nil then
  begin
    FrmOpcionCaja := TFrmOpcionCaja.Create(self);
    FrmOpcionCaja.showmodal;
  end;
end;

procedure TFrmCobroFact.SpeedButton9Click(Sender: TObject);
begin

  with datos.FbqMaster_Fact do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
    sql.Add('where a.condicion =:OPCION4');
    // sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');

    params[0].Value := 'ACTIVA';
    // Params[1].Value := 'FACTURACION';
    // Params[3].Value := 'Contado';
    params[1].Value := HOLDNO_FACT.Value;

    open;
  end;

  if datos.FbqMaster_FactNO_FACT.Value <= 0 then
  begin
    ShowMessage('  Debes seleccionar una factura  ');
  end
  else
  begin

    if datos.FbqMaster_FactROTULO.Value = 'DELIVERY' then
    begin
      if FAutorizacion.showmodal = mrOk then
      begin
        if Application.MessageBox('Esta seguro de cancelar este documento',
          'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin

          datos.FbqMaster_Fact.Edit;
          if datos.fbqMaster_factsituacion.text <> 'PEDIDO' then
          BEGIN
            datos.fbqMaster_factsituacion.text := 'HOLD';
            datos.FbqMaster_FactIDDR.Value := 1;
          END;
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

          with datos.Zdetalle do
          begin
            First;
            while not Eof do
            begin
              if datos.ZdetalleTOTAL.Value < 0.00 then
              begin

                with UpdateNC do
                begin
                  Close;
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
                  Close;
                  sql.Clear;
                  sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                  params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                  ExecSQL;
                end;
              end;
              Next;
            end;
          end;
        end;

        datos.FbqMaster_Fact.ApplyUpdates;
        datos.Zdetalle.ApplyUpdates;
        datos.Data.Commit;

        datos.ZInventario.Close;
        datos.FbqMaster_Fact.Close;
        datos.Zdetalle.Close;
        HOLD.Close;
        HOLD.open;

      end;
    end
    else
    begin

      if Application.MessageBox('Esta seguro de cancelar este documento',
        'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        datos.FbqMaster_Fact.Edit;
        if datos.fbqMaster_factsituacion.text <> 'PEDIDO' then
        BEGIN
          datos.fbqMaster_factsituacion.text := 'HOLD';
          datos.FbqMaster_FactIDDR.Value := 1;
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
                Close;
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
                Close;
                sql.Clear;
                sql.Add('update rmam set idmarca = 2 where noorden =:op1');
                params[0].Value := StrToInt(datos.ZdetalleBARRA.Value);
                ExecSQL;
              end;
            end;
            Next;
          end;
        end;
      end;

      datos.FbqMaster_Fact.ApplyUpdates;
      datos.Zdetalle.ApplyUpdates;
      datos.Data.Commit;

      datos.ZInventario.Close;
      datos.FbqMaster_Fact.Close;
      datos.Zdetalle.Close;
      HOLD.Close;
      HOLD.open;
    end;
  end;

end;

end.
