unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, cxControls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, ImgList,
  cxContainer, cxEdit, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, ZAbstractRODataset, ZDataset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, frxClass, frxDBSet, cxGroupBox, cxRadioGroup,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu, cxMaskEdit, cxDropDownEdit,
  cxCalc, cxDBEdit, cxCurrencyEdit, VCLTee.TeeData, VCLTee.TeEngine,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, VCLTee.Series,
  VclTee.TeeGDIPlus, frxExportXLS, frxExportPDF, QRCtrls, QuickRpt,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  frxExportBaseDialog;

type
  TFrmCxC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    clientes: TZReadOnlyQuery;
    clientesCODIGO: TIntegerField;
    clientesNOMBRES: TWideStringField;
    clientesDIRECCION: TWideStringField;
    clientesCEDULA: TWideStringField;
    clientesTELEFONO: TWideStringField;
    clientesCELULAR: TWideStringField;
    clientesCOLOR: TWideStringField;
    clientesCONTACTO: TWideStringField;
    clientesRENGLONCNF: TWideStringField;
    clientesTXTCNF: TWideStringField;
    clientesCREDITOLIMITE: TFloatField;
    clientesTIPO: TWideStringField;
    clientesRNC: TWideStringField;
    clientesCONDICION: TWideStringField;
    clientesINICIO: TDateField;
    clientesSUELDO: TFloatField;
    clientesPAGOITB: TWideStringField;
    clientesCREDITO: TWideStringField;
    clientesBALANCE: TFloatField;
    clientesESTADO: TWideStringField;
    clientesMOVIL: TWideStringField;
    clientesCODIGO_T: TWideStringField;
    Dsclientes: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxButton1: TcxButton;
    master_credito: TZReadOnlyQuery;
    DsMaster_Creditos: TDataSource;
    ZUconfiguracion: TZReadOnlyQuery;
    ZUconfiguracionCODIGO_COM: TWideStringField;
    ZUconfiguracionEMPRESA: TWideStringField;
    ZUconfiguracionRNC: TWideStringField;
    ZUconfiguracionTELEFONO: TWideStringField;
    ZUconfiguracionFAX: TWideStringField;
    ZUconfiguracionCELULAR: TWideStringField;
    ZUconfiguracionEMAIL: TWideStringField;
    ZUconfiguracionDIRECCION: TWideStringField;
    ZUconfiguracionCONTACTO: TWideStringField;
    ZUconfiguracionFACTIMPRIME: TWideStringField;
    ZUconfiguracionGENERART: TWideStringField;
    ZUconfiguracionITBIS: TFloatField;
    ZUconfiguracionAVG_GANANCIA: TFloatField;
    ZUconfiguracionCOBRAR_ITBS: TWideStringField;
    ZUconfiguracionTHEMS: TWideStringField;
    ZUconfiguracionANCHO: TIntegerField;
    ZUconfiguracionALTO: TIntegerField;
    ZUconfiguracionRUTABACKUP: TWideStringField;
    ZUconfiguracionABRIRCAJON: TIntegerField;
    ZUconfiguracionPTINTERTPV: TWideStringField;
    ZUconfiguracionCARGO_CARD: TFloatField;
    ZUconfiguracionCARGO_CHEQUE: TFloatField;
    ZUconfiguracionMSN_PIE_FACT: TWideStringField;
    ZUconfiguracionIMP_CANT: TWideStringField;
    ZUconfiguracionIMPRIMIRCREDITO: TWideStringField;
    ZUconfiguracionIMPRIMIRCONTADO: TWideStringField;
    ZUconfiguracionDESCUENTO: TWideStringField;
    ZUconfiguracionTIPOITBS: TWideStringField;
    ZUconfiguracionTERMINAL: TWideStringField;
    ZUconfiguracionSTOPVENTAS: TFloatField;
    ZUconfiguracionSTOPCOMPRAS: TFloatField;
    ZUconfiguracionCONTROLSTOPVENTAS: TWideStringField;
    ZUconfiguracionCONTROLSTOPCOMPRAS: TWideStringField;
    ZUconfiguracionNCF_CF_INICIO_NUMERO: TFloatField;
    ZUconfiguracionNCF_CF_INICIO_LETRA: TWideStringField;
    ZUconfiguracionNCF_CF_CONTADOR: TIntegerField;
    ZUconfiguracionNCF_CF_FINAL_NUMERO: TFloatField;
    ZUconfiguracionNCF_VF_INICIO_NUMERO: TFloatField;
    ZUconfiguracionNCF_VF_INICIO_LETRA: TWideStringField;
    ZUconfiguracionNCF_VF_CONTADOR: TIntegerField;
    ZUconfiguracionNCF_VF_FINAL_NUMERO: TFloatField;
    ZUconfiguracionNCF_ESP_INICIO_NUMERO: TFloatField;
    ZUconfiguracionNCF_ESP_INICIO_LETRA: TWideStringField;
    ZUconfiguracionNCF_ESP_CONTADOR: TIntegerField;
    ZUconfiguracionNCF_ESP_FINAL: TFloatField;
    ZUconfiguracionNO_AUTORIZACION2: TFloatField;
    ZUconfiguracionNO_AUTORIZACION3: TFloatField;
    ZUconfiguracionNO_AUTORIZACION: TFloatField;
    ZUconfiguracionUSAR_CF: TWideStringField;
    ZUconfiguracionUSAR_VF: TWideStringField;
    ZUconfiguracionUSAR_ESP: TWideStringField;
    ZUconfiguracionROTULO_FC: TWideStringField;
    ZUconfiguracionROTULO_FVF: TWideStringField;
    ZUconfiguracionROTULO_ESP: TWideStringField;
    ZUconfiguracionVARIABLE_DEDUCIBLE: TFloatField;
    ZUconfiguracionLOGO: TBlobField;
    ZUconfiguracionCLAVEAUTORIZACION: TWideStringField;
    ZUconfiguracionCLAVEANULAR: TWideStringField;
    ZUconfiguracionTERMINAL_TPV: TWideStringField;
    ZUconfiguracionMONTOCF: TFloatField;
    ZUconfiguracionREDONDEAR: TWideStringField;
    Ds_Config: TDataSource;
    Prn_Credito: TZReadOnlyQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    FloatField1: TFloatField;
    TimeField1: TTimeField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    FloatField4: TFloatField;
    WideStringField14: TWideStringField;
    FloatField5: TFloatField;
    WideStringField15: TWideStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    IntegerField3: TIntegerField;
    FloatField8: TFloatField;
    WideStringField16: TWideStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    WideStringField19: TWideStringField;
    IntegerField4: TIntegerField;
    FloatField15: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField16: TFloatField;
    WideStringField20: TWideStringField;
    FloatField17: TFloatField;
    IntegerField7: TIntegerField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    IntegerField8: TIntegerField;
    WideStringField23: TWideStringField;
    Ds_PRn_Credito: TDataSource;
    print2: TfrxReport;
    PRINT0: TfrxReport;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO_T: TWideStringField;
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
    IbqClientesCOMISION: TFloatField;
    IbqClientesNUMEROPIN: TWideStringField;
    DsqCliente: TDataSource;
    cod: TcxTextEdit;
    cxButton3: TcxButton;
    caj: TcxTextEdit;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    dsqusuario: TDataSource;
    OpBuscarCLiente: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Edit1: TEdit;
    Opb: TcxRadioGroup;
    Edit4: TEdit;
    Prn_CreditoUSUARIOID: TIntegerField;
    Prn_CreditoCLIENTEID: TIntegerField;
    Prn_CreditoCONDICIONVENTA: TWideStringField;
    Prn_CreditoTIENDAID: TIntegerField;
    Prn_CreditoPINREFERIDO: TWideStringField;
    Prn_CreditoCLIENTENOMBRE: TWideStringField;
    Prn_CreditoNOMBRES_EMP: TWideStringField;
    cxButton4: TcxButton;
    ReporteGeneral: TfrxReport;
    Master: TfrxDBDataset;
    Config: TfrxDBDataset;
    clientesTELEFONO3: TWideStringField;
    FxClientes: TfrxDBDataset;
    clientesCOMISION: TFloatField;
    clientesNUMEROPIN: TWideStringField;
    clientesEMAIL: TWideStringField;
    clientesRUTA_ID: TIntegerField;
    clientesREGIONID: TIntegerField;
    clientesPROVINCIAID: TIntegerField;
    clientesMUNICIPIOID: TIntegerField;
    clientesMUSADOS: TFloatField;
    clientesMPENDIENTES: TFloatField;
    IbqClientesTELEFONO3: TWideStringField;
    IbqClientesEMAIL: TWideStringField;
    IbqClientesRUTA_ID: TIntegerField;
    IbqClientesREGIONID: TIntegerField;
    IbqClientesPROVINCIAID: TIntegerField;
    IbqClientesMUNICIPIOID: TIntegerField;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    TabC: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    op1: TcxRadioGroup;
    cxButton2: TcxButton;
    master_credito_g: TZReadOnlyQuery;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    DsMasterG: TDataSource;
    cxGrid4DBTableView1CLIENTEID: TcxGridDBColumn;
    cxGrid4DBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    cxGrid4DBTableView1MONTO: TcxGridDBColumn;
    cxGrid4DBTableView1ABONO: TcxGridDBColumn;
    cxGrid4DBTableView1PENDIENTE: TcxGridDBColumn;
    cxGrid4DBTableView1CON_ATRASOS: TcxGridDBColumn;
    cxGrid4DBTableView1SIN_ATRASOS: TcxGridDBColumn;
    cxButton5: TcxButton;
    ReporteTotos: TfrxReport;
    MCredito: TfrxDBDataset;
    OP2: TRadioGroup;
    ReporteDetalle: TfrxReport;
    QFacturas: TZReadOnlyQuery;
    Frxfacturas: TfrxDBDataset;
    GBInfo: TcxGroupBox;
    Label7: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label6: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label5: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxGroupBox1: TcxGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Cur1: TcxCurrencyEdit;
    Cur2: TcxCurrencyEdit;
    cur3: TcxCurrencyEdit;
    cur4: TcxCurrencyEdit;
    cur5: TcxCurrencyEdit;
    Antiguedad: TZReadOnlyQuery;
    FrxAntiguedad: TfrxDBDataset;
    cxGroupBox2: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    curr6: TcxCurrencyEdit;
    curr7: TcxCurrencyEdit;
    curr8: TcxCurrencyEdit;
    curr9: TcxCurrencyEdit;
    curr10: TcxCurrencyEdit;
    cxTabSheet3: TcxTabSheet;
    cxButton6: TcxButton;
    Panel2: TPanel;
    cxButton7: TcxButton;
    Antiguedad1: TZReadOnlyQuery;
    IbqClientesNOMBRES: TWideStringField;
    Bnotificacion: TcxButton;
    BNotarial: TcxButton;
    PagareNotarial: TfrxReport;
    frxReport1: TfrxReport;
    FxVendedor: TfrxDBDataset;
    FxNotario: TfrxDBDataset;
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
    Antiguedad1PORVENCER: TExtendedField;
    Antiguedad1V0_30: TExtendedField;
    Antiguedad1V31_60: TExtendedField;
    Antiguedad1V61_90: TExtendedField;
    Antiguedad1V91_120: TExtendedField;
    Antiguedad1V120: TExtendedField;
    QFacturasNO_FACT: TIntegerField;
    QFacturasFECHA_FAC: TDateField;
    QFacturasFECHAVENCIMIENTO: TDateField;
    QFacturasCLIENTENOMBRE: TWideStringField;
    QFacturasMONTO: TExtendedField;
    QFacturasABONO: TFloatField;
    QFacturasPENDIENTE: TFloatField;
    QFacturasNOMBRES_EMP: TWideStringField;
    QFacturasTELEFONO: TWideStringField;
    QFacturasDIAS: TIntegerField;
    QFacturasDIASATRASOS: TIntegerField;
    QFacturasESTADOCUENTA: TWideStringField;
    QFacturasCLIENTEID: TIntegerField;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TExtendedField;
    AntiguedadV0_30: TExtendedField;
    AntiguedadV31_60: TExtendedField;
    AntiguedadV61_90: TExtendedField;
    AntiguedadV91_120: TExtendedField;
    AntiguedadV120: TExtendedField;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    qpendiente: TZReadOnlyQuery;
    qpendienteNO_FACT: TIntegerField;
    qpendienteNUMERO_FACTURA: TFloatField;
    qpendienteFECHA_FAC: TDateField;
    qpendienteFECHAVENCIMIENTO: TDateField;
    qpendienteCLIENTENOMBRE: TWideStringField;
    qpendienteMONTO: TExtendedField;
    qpendienteABONO: TFloatField;
    qpendientePENDIENTE: TFloatField;
    qpendienteNOMBRES_EMP: TWideStringField;
    qpendienteTELEFONO: TWideStringField;
    qpendienteDIAS: TIntegerField;
    qpendienteDIASATRASOS: TIntegerField;
    qpendienteESTADOCUENTA: TWideStringField;
    qpendienteCLIENTEID: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure BnotificacionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCxC: TFrmCxC;

implementation

uses
tools, unit2, unit19, Unit63, Unit122, UInicio;

{$R *.dfm}

procedure TFrmCxC.BnotificacionClick(Sender: TObject);
var
codigo2 : integer;
begin
codigo2 := StrToInt(cod.Text);


// if FNotificacion = nil then
//  begin
//    FNotificacion := tFNotificacion.Create(self);
    with FNotificacion.qpendiente do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
      end;

      FNotificacion.QuickRep1.Preview;
      //FNotificacion.ShowModal;

  end;




//end;

procedure TFrmCxC.cxButton1Click(Sender: TObject);
var
codigo2 : integer;
begin

tabc.ActivePageIndex := 0;

   if caj.Text = '' then
   begin
       MsgError(' Debes seleccionar un cliente ')
   end else begin
codigo2 := StrToInt(cod.Text);

   GBInfo.Visible := true;
with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
      end;


      with IbqClientes do
        begin
          close;
          sql.Clear;
          sql.Add('select * from cliente');
          sql.Add('where codigo =:opp');
          params[0].Value := master_creditoCLIENTEID.Value;
          Open;

        end;
     end;

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
        sql.add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120');
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
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
  end;

       cur1.Value := AntiguedadV0_30.Value;
       cur2.Value := AntiguedadV31_60.Value;
       cur3.Value := AntiguedadV61_90.Value;
       cur4.Value := AntiguedadV91_120.Value;
       cur5.Value := AntiguedadV120.Value;
end;

procedure TFrmCxC.cxButton2Click(Sender: TObject);
VAR
codigo2 : integer;
begin


if op1.ItemIndex = 0 then
    begin
         print2.variables['tipo']:=quotedstr('GENERAL');
        print2.PrepareReport(true);
         print2.ShowPreparedReport;
    end;


    if op1.ItemIndex = 1 then
    begin
         print2.variables['tipo']:=quotedstr('CON ATRASOS');
        print2.PrepareReport(true);
         print2.ShowPreparedReport;
    end;


    if op1.ItemIndex = 2 then
    begin
         print2.variables['tipo']:=quotedstr('SIN ATRASOS');
        print2.PrepareReport(true);
         print2.ShowPreparedReport;
    end;






end;

procedure TFrmCxC.cxButton3Click(Sender: TObject);
begin
GBInfo.Visible := false;
ibqclientes.Close;
ibqclientes.Open;
Opbuscarcliente.Visible := true;
edit1.Clear;
edit1.SetFocus;

end;

procedure TFrmCxC.cxButton4Click(Sender: TObject);
begin
GBInfo.Visible := false;
tabc.ActivePageIndex := 1;
with master_credito_g do
      begin
        close;
       
        open;
      end;



     with Antiguedad1 do
    begin
        close;
        SQL.Clear;
        sql.Add('SELECT ');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date  )<0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,');
        sql.add('sum(IIF( (DATEDIFF(DAY, a.fecha_fac, current_date )>=0 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=30) OR a.fecha_fac is null,(a.pendiente),0)) AS V0_30 ,');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=31 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=60, (a.pendiente),0)) AS V31_60,');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=61 AND DATEDIFF( DAY, a.fecha_fac,current_date )<=90, (a.pendiente),0)) AS V61_90, ');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=91 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=120, (a.pendiente),0)) AS V91_120,');
        sql.add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120');
        sql.add('from master_fact a');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := 'CREDITO';
        open;
  end;


       curr6.Value := Antiguedad1V0_30.Value;
       curr7.Value := Antiguedad1V31_60.Value;
       curr8.Value := Antiguedad1V61_90.Value;
       curr9.Value := Antiguedad1V91_120.Value;
       curr10.Value := Antiguedad1V120.Value;


       Randomize;
//       Chart1.Series[0].Clear;
//       chart1.Series[0].AddY(Antiguedad1V0_30.Value, 'De 0 a 30', clGreen);
//       chart1.Series[0].AddY(Antiguedad1V31_60.Value, 'De 31 a 60', clYellow);
//       chart1.Series[0].AddY(Antiguedad1V61_90.Value, 'De 61 a 90', clBlue);
//       chart1.Series[0].AddY(Antiguedad1V91_120.Value, 'De 91 a 120', clPurple);
//       chart1.Series[0].AddY(Antiguedad1V120.Value, 'De 121 o Más', clred);


       Bnotificacion.Enabled := false;
       BNotarial.Enabled := false;

end;

procedure TFrmCxC.cxButton5Click(Sender: TObject);
begin
if op2.ItemIndex = 0 then
    begin
        ReporteTotos.variables['tipo']:=quotedstr('GENERAL');
        ReporteTotos.PrepareReport(true);
        ReporteTotos.ShowPreparedReport;
    end;

    if op2.ItemIndex = 1 then
    begin
        ReporteDetalle.variables['tipo']:=quotedstr('GENERAL');
        ReporteDetalle.PrepareReport(true);
        ReporteDetalle.ShowPreparedReport;
    end;
end;

procedure TFrmCxC.cxButton6Click(Sender: TObject);
begin
panel2.Visible := true;
 Randomize;
//       Chart2.Series[0].Clear;
//       chart2.Series[0].AddY(AntiguedadV0_30.Value, 'De 0 a 30', clGreen);
//       chart2.Series[0].AddY(AntiguedadV31_60.Value, 'De 31 a 60', clYellow);
//       chart2.Series[0].AddY(AntiguedadV61_90.Value, 'De 61 a 90', clBlue);
//       chart2.Series[0].AddY(AntiguedadV91_120.Value, 'De 91 a 120', clPurple);
//       chart2.Series[0].AddY(AntiguedadV120.Value, 'De 121 o Más', clred);
end;

procedure TFrmCxC.cxButton7Click(Sender: TObject);
begin
panel2.Visible := false;
end;

procedure TFrmCxC.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
{cxTextEdit1.Text := clientesnombres.Value;

with master_credito do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where nom_cliente like '+#39+'%'+cxTextEdit1.Text+'%'+#39);
    sql.Add('and tipo =''CREDITO''');
    SQL.Add('AND QUEES <>''SALDADA''');
    open;
  end;


  if master_credito.RecordCount = 0 then
    begin
      master_credito.Close;
    end;
  cxgrid1.Visible := false;
  }
end;

procedure TFrmCxC.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   { if key = vk_return then
      begin
        cxTextEdit1.Text := clientesnombres.Value;

with master_credito do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where nom_cliente like '+#39+'%'+cxTextEdit1.Text+'%'+#39);
    sql.Add('and tipo =''CREDITO''');
    SQL.Add('AND QUEES <>''SALDADA''');
    open;
  end;


  if master_credito.RecordCount = 0 then
    begin
      master_credito.Close;
    end;
  cxgrid1.Visible := false;
      end;

      }
end;

procedure TFrmCxC.cxGridDBTableView1DblClick(Sender: TObject);
var
codigo2 : integer;
begin

cod.text :=IntToStr(ibqclientescodigo.Value);
caj.text := ibqclientesnombres.Value;
Opbuscarcliente.Visible := false;
Bnotificacion.Enabled := true;
BNotarial.Enabled := true;


 if caj.Text = '' then
   begin
       MsgError(' Debes seleccionar un cliente ')
   end else begin
codigo2 := StrToInt(cod.Text);

   GBInfo.Visible := true;

with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
      end;


      with IbqClientes do
        begin
          close;
          sql.Clear;
          sql.Add('select * from cliente');
          sql.Add('where codigo =:opp');
          params[0].Value := master_creditoCLIENTEID.Value;
          Open;

        end;
     end;

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
        sql.add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120');
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
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
  end;

       cur1.Value := AntiguedadV0_30.Value;
       cur2.Value := AntiguedadV31_60.Value;
       cur3.Value := AntiguedadV61_90.Value;
       cur4.Value := AntiguedadV91_120.Value;
       cur5.Value := AntiguedadV120.Value;

end;

procedure TFrmCxC.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{
if key =vk_return then begin
    cxgrid1.Visible := true;

with clientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where nombres like '+#39+'%'+cxTextEdit1.Text+'%'+#39);
    open;
  end;


 cxgrid1.SetFocus;

    end;
      }
end;

procedure TFrmCxC.Edit1Change(Sender: TObject);
begin
if opb.ItemIndex = 0 then
 begin
with ibqclientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where nombres like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
 end;

if opb.ItemIndex = 1 then
 begin
with ibqclientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where numeropin like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
 end;


end;

procedure TFrmCxC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
clientes.Close;
master_credito.close;
    cxButton2.Enabled := false;
    FrmCxC := nil;
    Action := caFree;
   // cxTextEdit1.Clear;
end;

procedure TFrmCxC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =vk_escape then
    begin
      cxgrid1.Visible := false;
     // cxTextEdit1.Clear;
     // cxTextEdit1.SetFocus;
      OpBuscarCLiente.Visible := false;

    end;
end;

procedure TFrmCxC.FormShow(Sender: TObject);
begin
    cxButton2.Enabled := false;
    tabc.ActivePageIndex := 0;
    master_credito.Close;
    master_credito_g.Close;
    GBInfo.Visible := false;
    cur1.Value := 0.00;
    cur2.Value := 0.00;
    cur3.Value := 0.00;
    cur4.Value := 0.00;
    cur5.Value := 0.00;
end;

procedure TFrmCxC.op1Click(Sender: TObject);
var
codigo2 : integer;
begin
if op1.ItemIndex = 0 then
  begin


   if caj.Text = '' then
   begin
       MsgError(' Debes seleccionar un cliente ')
   end else begin
        codigo2 := StrToInt(cod.Text);
        cxButton2.Enabled := TRUE;
with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
      end;

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
        sql.add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120');
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
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
  end;





      end;
  end;

if op1.ItemIndex = 1 then
  begin


 if caj.Text = '' then
   begin
       MsgError(' Debes seleccionar un cliente ')
   end else begin
   codigo2 := StrToInt(cod.Text);
   cxButton2.Enabled := TRUE;
with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        sql.add('and (current_date - A.fechavencimiento) >= 0');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
      end;
      end;
  end;

if op1.ItemIndex = 2 then
  begin

      if caj.Text = '' then
   begin
       MsgError(' Debes seleccionar un cliente ')
   end else begin
   codigo2 := StrToInt(cod.Text);
   cxButton2.Enabled := TRUE;
with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, A.fechavencimiento, b.cedula, b.direccion, B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        sql.add('and (current_date - A.fechavencimiento) <= 0');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
      end;
      end;
  end;

end;

end.
