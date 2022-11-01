unit Unit47;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxCurrencyEdit, cxDBEdit,
  Vcl.StdCtrls, cxButtons, cxSpinEdit, cxDropDownEdit, cxMaskEdit, cxCalendar,
  cxTextEdit, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxRadioGroup, frxClass, frxDBSet, cxCalc,
  cxPCdxBarPopupMenu, cxPC, dxGDIPlusClasses, cxImage, Vcl.Grids, Vcl.DBGrids,
  ZAbstractDataset, frxDMPExport, printers, WinSpool, StrUtils,
  Vcl.ExtCtrls, Vcl.fcButton, Vcl.fcImgBtn, Vcl.fcShapeBtn, Vcl.Buttons,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu, dateutils, RxDBComb,
  frxExportPDF, dxSkinTheBezier, frxExportBaseDialog, acPNG;

function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
Function GetImpresora(Impre: String): Integer;
function MyTextReplace(Texto: String): String;
function CenterString(aStr: String; Len: Integer): String;

type
  TFrmCobro = class(TForm)
    facturasEmitidas: TZReadOnlyQuery;
    facturasEmitidasNO_FACT: TIntegerField;
    facturasEmitidasFECHA_FAC: TDateField;
    facturasEmitidasTIPO: TWideStringField;
    facturasEmitidasCOD_CLIENT: TWideStringField;
    facturasEmitidasCOD_EMP: TWideStringField;
    facturasEmitidasNO_FACT1: TWideStringField;
    facturasEmitidasMONTO: TFloatField;
    facturasEmitidasHORA: TTimeField;
    facturasEmitidasPOGXITBS: TFloatField;
    facturasEmitidasTIPOPAGO: TWideStringField;
    facturasEmitidasMONTOPAGO: TFloatField;
    facturasEmitidasCONDICION: TWideStringField;
    facturasEmitidasRENTA: TWideStringField;
    facturasEmitidasCODIGO: TIntegerField;
    facturasEmitidasTIPOITBS: TWideStringField;
    facturasEmitidasVENDEDOR: TWideStringField;
    facturasEmitidasSITUACION: TWideStringField;
    facturasEmitidasCAJERO: TWideStringField;
    facturasEmitidasNCF: TWideStringField;
    facturasEmitidasRNC_CLIENTE: TWideStringField;
    facturasEmitidasNCF1: TFloatField;
    facturasEmitidasNOM_CLIENTE: TWideStringField;
    facturasEmitidasDESCUENTO: TFloatField;
    facturasEmitidasROTULO: TWideStringField;
    facturasEmitidasNO_AUTORIZA_NCF: TFloatField;
    facturasEmitidasMONTOFINANCIADO: TFloatField;
    facturasEmitidasCUOTAS: TIntegerField;
    facturasEmitidasINTERES: TFloatField;
    facturasEmitidasDIRECCION: TWideStringField;
    facturasEmitidasPAGADO: TFloatField;
    facturasEmitidasLEYPROPINA: TFloatField;
    facturasEmitidasCOMPROBANTE: TWideStringField;
    facturasEmitidasTERMINAL: TWideStringField;
    facturasEmitidasEFECTIVO: TFloatField;
    facturasEmitidasDEVOLUCION1: TFloatField;
    facturasEmitidasRESTANTE: TFloatField;
    facturasEmitidasABONO: TFloatField;
    facturasEmitidasCHEK: TWideStringField;
    facturasEmitidasNO_RECIBO: TIntegerField;
    facturasEmitidasPAGADOCXC: TFloatField;
    facturasEmitidasMESES: TIntegerField;
    facturasEmitidasDIAS: TIntegerField;
    facturasEmitidasPENDIENTE: TFloatField;
    facturasEmitidasESTADOPAGO: TWideStringField;
    facturasEmitidasDEVOLUCION: TFloatField;
    facturasEmitidasCONDICION_PAGO: TIntegerField;
    facturasEmitidasFECHAVENCIMIENTO: TWideStringField;
    facturasEmitidasCOMBO: TWideStringField;
    facturasEmitidasCOBRADO: TIntegerField;
    facturasEmitidasQUEES: TWideStringField;
    facturasEmitidasUSUARIOID: TIntegerField;
    facturasEmitidasCLIENTEID: TIntegerField;
    facturasEmitidasCLIENTENOMBRE: TWideStringField;
    facturasEmitidasNOMBRES_EMP: TWideStringField;
    facturasEmitidasTIENDAID: TIntegerField;
    facturasEmitidasCONDICIONVENTA: TWideStringField;
    facturasEmitidasNOMBRECLIENTE_PRN: TWideStringField;
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
    opmaster: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dsmasterFACT: TDataSource;
    ncf: TZReadOnlyQuery;
    ncfNCFID: TIntegerField;
    ncfNUNTEXT: TWideStringField;
    ncfDESDE: TIntegerField;
    ncfHASTA: TIntegerField;
    ncfUSO: TIntegerField;
    ncfTIPO: TWideStringField;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesNOMBRES: TWideStringField;
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
    B6: TcxButton;
    PanelDesc: TcxGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    panelcobro: TcxGroupBox;
    facturasEmitidasCAJEROID: TIntegerField;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    desc: TcxCalcEdit;
    FORMAPAGO: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxDBComboBox2: TcxDBComboBox;
    cxDBComboBox3: TcxDBComboBox;
    cxDBComboBox4: TcxDBComboBox;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label3: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label1: TLabel;
    Label9: TLabel;
    cxButton7: TcxButton;
    cxDBTextEdit7: TcxDBTextEdit;
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
    cxGroupBox1: TcxGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    total: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    opradio: TcxRadioGroup;
    ncfIDCONFIG: TIntegerField;
    ncfSIGUIENTE: TWideStringField;
    frxReport2: TfrxReport;
    Imprime_Media: TfrxReport;
    frxReport3: TfrxReport;
    Memo1: TMemo;
    CUANTOS: TZReadOnlyQuery;
    CUANTOSCOUNT: TIntegerField;
    NUMERO1: TZQuery;
    NUMERO1GEN_ID: TLargeintField;
    PC: TcxPageControl;
    TabEfectivo: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    Label20: TLabel;
    Label25: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    CBTipo: TcxComboBox;
    Label22: TLabel;
    CBCaracteristica: TcxComboBox;
    Label26: TLabel;
    Edit4: TEdit;
    Label28: TLabel;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    GroupBox6: TGroupBox;
    Edit5: TEdit;
    Label33: TLabel;
    Label31: TLabel;
    cxComboBox3: TcxComboBox;
    maxTarjeta: TZReadOnlyQuery;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    NumeroCK: TZQuery;
    NumeroCKGEN_ID: TLargeintField;
    Panel5: TPanel;
    Timer1: TTimer;
    Label21: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    RECIBO2: TfrxReport;
    master: TfrxDBDataset;
    detalle: TfrxDBDataset;
    config: TfrxDBDataset;
    PEfectivo: TcxCurrencyEdit;
    PTarjetas: TcxCurrencyEdit;
    PCheques: TcxCurrencyEdit;
    Pbonos: TcxCurrencyEdit;
    Fimprime: TcxRadioGroup;
    UpCredito: TZReadOnlyQuery;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    MaxRecibo: TZQuery;
    MaxReciboNUMERO: TIntegerField;
    Recibo3: TfrxReport;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    Label13: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Label11: TLabel;
    Label10: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label7: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Impreme_media: TfrxReport;
    ImprimeM: TfrxReport;
    ImprimirMC: TfrxReport;
    FAntiguedad: TfrxDBDataset;
    Antiguedad: TZReadOnlyQuery;
    Qseries: TZReadOnlyQuery;
    QseriesCOD_SERIES: TIntegerField;
    QseriesCOD_ARTI: TIntegerField;
    QseriesSERIES: TWideStringField;
    QseriesESTADO: TIntegerField;
    QseriesNO_FACT: TIntegerField;
    QseriesIDDETALLE: TIntegerField;
    FrxSeries: TfrxDBDataset;
    Panel2: TPanel;
    Label16: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Panel3: TPanel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    Label40: TLabel;
    Num_Comprobante: TZReadOnlyQuery;
    Num_ComprobanteGEN_ID: TLargeintField;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TExtendedField;
    AntiguedadV0_30: TExtendedField;
    AntiguedadV31_60: TExtendedField;
    AntiguedadV61_90: TExtendedField;
    AntiguedadV91_120: TExtendedField;
    AntiguedadV120: TExtendedField;
    AntiguedadACTUAL: TExtendedField;
    NumNCF_Fiscal: TZReadOnlyQuery;
    NumNCF_FiscalGEN_ID: TLargeintField;
    NumNCF: TZReadOnlyQuery;
    NumNCFGEN_ID: TLargeintField;
    NumNCF_GOB: TZReadOnlyQuery;
    NumNCF_GOBGEN_ID: TLargeintField;
    prncopia: TfrxReport;
    IbqClientesRUTA_ID: TIntegerField;
    Edit6: TEdit;
    QBalanceCreditoCliente: TZReadOnlyQuery;
    QBalanceCreditoClienteBALANCE: TExtendedField;
    QBalanceCreditoClienteMUSADOS: TFloatField;
    Edit7: TEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    qactualizacopia: TZReadOnlyQuery;
    Panel9: TPanel;
    pnlCEntral: TPanel;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel6: TPanel;
    imgLogoTop: TImage;
    Panel7: TPanel;
    Panel10: TPanel;
    Label8: TLabel;
    Panel11: TPanel;
    Label23: TLabel;
    Label37: TLabel;
    pcOpcion: TcxPageControl;
    tbNormal: TcxTabSheet;
    tbResturant: TcxTabSheet;
    Label39: TLabel;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    PanelPizza: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    Label19: TLabel;
    Image2: TImage;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    Panel4: TPanel;
    Panel8: TPanel;
    Panel1: TPanel;
    Panel23: TPanel;
    cxButton5: TSpeedButton;
    Panel12: TPanel;
    cxButton6: TSpeedButton;
    Panel13: TPanel;
    procedure FormShow(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxDBCurrencyEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBCurrencyEdit5PropertiesChange(Sender: TObject);
    procedure PEfectivoEnter(Sender: TObject);
    procedure PEfectivoExit(Sender: TObject);
    procedure RxDBComboBox2PropertiesChange(Sender: TObject);

    procedure PEfectivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurrencyEdit2PropertiesChange(Sender: TObject);
    procedure imprimirtikect;
    procedure imprimirtikectCredito;
    procedure ImprimirMemo(Memo: TMemo);
    procedure cxImage1Click(Sender: TObject);
    procedure cxImage5Click(Sender: TObject);
    procedure cxImage6Click(Sender: TObject);

    procedure Timer1Timer(Sender: TObject);
    procedure cobrarFact;
    procedure cobrarFact1;
    procedure PEfectivoPropertiesChange(Sender: TObject);
    procedure PTarjetasPropertiesChange(Sender: TObject);
    procedure PChequesPropertiesChange(Sender: TObject);
    procedure PbonosPropertiesChange(Sender: TObject);
    procedure ActualizaReciboCXC;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pagoNormalCredito;
    procedure pagoPizzaCredito;
    procedure pagoNormal;
    procedure pagopizza;
    procedure pagotouch;
    Procedure PagoSupermercado;
    Procedure PagoSupermercadoCredito;
    procedure P_invenatrio;
    procedure GeneraComprobante;
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    procedure actualizacopia(no_fact: Integer; fecha_fac: TDateTime;
      tipo: string; monto: currency; montopago: currency; no_fact1: string);

    { Private declarations }
  public
    procedure printdirecto;

  var
    control: Integer;
    { Public declarations }
  end;

var

  FrmCobro: TFrmCobro;
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

uses unit2, tools, unit19, Unit31, Unit59, Unit94, UInicio, Pizeria, uCobroFact,
  touch, UFactRapida, UPagoSolidaridad;

{$R *.dfm}

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
  i: Integer;
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

procedure IniciarImpresao(x, y: Integer; impressora: string);
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

procedure TFrmCobro.ImprimirMemo(Memo: TMemo);
var
  i: Integer;
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

procedure TFrmCobro.imprimirtikect;
var
  cont, numpag, i: Integer;
  arq: TextFile;
  fechaFA: tdate;
  horaFA: ttime;
  r: TRect;

  longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE,
    EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL: string;
  DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2: string;
  PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1,
    TPcampoF: string;
  SIZEFONT, FONTBOLD, FONTNORMAL, SIZENORMAL, pcant, ABRIRCAJONMONEDA: string;

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
      ABRIRCAJONMONEDA := ReadString_Ini(IniFile, 'IMPRESION',
        'ABRIRCAJONMONEDA', '');

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

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    INICIARPRINT);
  //

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('EMPRESA')
    .asString), StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('CALLE')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('SECTOR')
    .asString + ', ' + DATOS.ZUconfiguracion.FieldByName('CIUDAD').asString),
    StrToInt(longitud)));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('TEL. :' + DATOS.ZUconfiguracion.FieldByName
    ('TELEFONO').asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('RNC:' + DATOS.ZUconfiguracion.FieldByName('RNC')
    .asString), StrToInt(longitud)));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('F A C T U R A', StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('NCF:' + DATOS.FbqMaster_Fact.FieldByName('NCF')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('VENTA DE CONTADO'), StrToInt(longitud)));

  if StrToInt(longitud) < 40 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('-----------------------------------', StrToInt(longitud), 0));
  end;

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '          ' +
      'HORA:' + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA :' + DATETOSTR(fechaFA) + ' ' + 'HORA:' +
      TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('No Fact: ' + DATOS.FbqMaster_Fact.FieldByName
    ('numero_factura').asString), StrToInt(longitud), 0));

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + DATOS.FbqMaster_Fact.FieldByName
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));

  if DATOS.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('RNC CLIENTE  :' + DATOS.FbqMaster_Fact.FieldByName
      ('RNC_CLIENTE').Value), StrToInt(longitud), 0));
  end;

  if DATOS.FbqMaster_Factdireccion.Value <> '' then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('DIRECCION  :' + DATOS.FbqMaster_Fact.FieldByName
      ('DIRECCION').Value), StrToInt(longitud), 0));
  end;
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('PRODUCTO..........................', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('CANT', StrToInt(campol), 0) + espacios('PRECIO',
    StrToInt(campoC2), 0) + espacios('ITBIS', StrToInt(campoC2), 0) +
    espacios('TOTAL', StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  with DATOS.ZDETALLE do
  begin
    First;
    while not Eof do
    begin
      if DATOS.ZdetalleITBS.Value > 0.00 then
      begin
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(copy(MyTextReplace(DATOS.ZDETALLE.FieldByName
          ('TITULOPRN').asString), 0, 35), StrToInt(longitud), 0));

      end
      else
      begin
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(copy(MyTextReplace(DATOS.ZDETALLE.FieldByName('EX')
          .asString + '  ' + DATOS.ZDETALLE.FieldByName('TITULOPRN').asString),
          0, StrToInt(longitud)), StrToInt(longitud), 0));

      end;
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if DATOS.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      END;

      Next;
    end;
  end;

  if StrToInt(longitud) > 40 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  if not DATOS.FbqMaster_Fact.FieldByName('MONTO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', DATOS.FbqMaster_Fact.FieldByName('MONTO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('descuento').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('POGXITBS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not DATOS.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('MONTOPAGO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('ITEMS :   ' + CUANTOSCOUNT.text, StrToInt(longitud), 0));

  if not DATOS.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('EFECTIVO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('bonos').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('BONOS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', DATOS.FbqMaster_Fact.FieldByName('BONOS')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),
      StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('Fecha de Vencimiento:' +
    DATOS.FbqMaster_Fact.FieldByName('fecha_final').asString),
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('' + DATOS.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + DATOS.FbqMaster_Factcajero.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('----------------------------------', StrToInt(longitud), 0));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('.', StrToInt(longitud), 0));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    ABRIRCAJONMONEDA);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
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

procedure TFrmCobro.imprimirtikectCredito;
var
  cont, numpag, i: Integer;
  arq: TextFile;
  fechaFA: tdate;
  horaFA: ttime;
  r: TRect;

  longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE,
    EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL: string;
  DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2: string;
  PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1,
    TPcampoF: string;
  SIZEFONT, FONTBOLD, FONTNORMAL, SIZENORMAL, pcant, ABRIRCAJONMONEDA: string;

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
      ABRIRCAJONMONEDA := ReadString_Ini(IniFile, 'IMPRESION',
        'ABRIRCAJONMONEDA', '');

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

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    INICIARPRINT);
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ABRIRCAJONMONEDA);

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    SIZEFONT);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('EMPRESA')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    FONTNORMAL);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('CALLE')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('SECTOR')
    .asString + ', ' + DATOS.ZUconfiguracion.FieldByName('CIUDAD').asString),
    StrToInt(longitud)));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('TEL. :' + DATOS.ZUconfiguracion.FieldByName
    ('TELEFONO').asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('RNC:' + DATOS.ZUconfiguracion.FieldByName('RNC')
    .asString), StrToInt(longitud)));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    SIZEFONT);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('F A C T U R A', StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    FONTNORMAL);

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('NCF:' + DATOS.FbqMaster_Fact.FieldByName('NCF')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('VENTA DE CONTADO'), StrToInt(longitud)));
  if StrToInt(longitud) < 42 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('-----------------------------------', StrToInt(longitud), 0));
  end;

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '          ' +
      'HORA:' + TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('FECHA :' + DATETOSTR(fechaFA) + ' ' + 'HORA:' +
      TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('No Fact: ' + DATOS.FbqMaster_Fact.FieldByName
    ('numero_factura').asString), StrToInt(longitud), 0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + DATOS.FbqMaster_Fact.FieldByName
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));

  if DATOS.FbqMaster_FactRNC_CLIENTE.Value <> '' then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('RNC CLIENTE  :' + DATOS.FbqMaster_Fact.FieldByName
      ('RNC_CLIENTE').Value), StrToInt(longitud), 0));
  end;

  if DATOS.FbqMaster_Factdireccion.Value <> '' then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios(MyTextReplace('DIRECCION  :' + DATOS.FbqMaster_Fact.FieldByName
      ('DIRECCION').Value), StrToInt(longitud), 0));
  end;
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('PRODUCTO..........................', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('CANT', StrToInt(campol), 0) + espacios('PRECIO',
    StrToInt(campoC2), 0) + espacios('ITBIS', StrToInt(campoC2), 0) +
    espacios('TOTAL', StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;

  with DATOS.ZDETALLE do
  begin
    First;
    while not Eof do
    begin
      if DATOS.ZdetalleITBS.Value > 0.00 then
      begin
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(copy(MyTextReplace(DATOS.ZDETALLE.FieldByName
          ('TITULOPRN').asString), 0, 35), StrToInt(longitud), 0));

      end
      else
      begin
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(copy(MyTextReplace(DATOS.ZDETALLE.FieldByName('EX')
          .asString + '  ' + DATOS.ZDETALLE.FieldByName('TITULOPRN').asString),
          0, StrToInt(longitud)), StrToInt(longitud), 0));

      end;
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+
      // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if DATOS.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      end
      else
      begin

        // if datos.ZdetalleTOTAL.value > 9999.00 then
        // begin
        // ShowMessage('');

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('cantidad').Value), StrToInt(pcant), 0) +
          espacios(MyTextReplace(''), StrToInt(ESPACIOA), 0) +
          espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('precio')
          .Value), StrToInt(PPRECIO), 1) + '' + espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('itbs').Value), StrToInt(PITBIS), 1) + '' +
          espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('total')
          .Value), StrToInt(PTOTAL), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      END;

      Next;
    end;
  end;

  if StrToInt(longitud) > 42 then
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('----------------------------------------------',
      StrToInt(longitud), 0));
  end
  else
  begin
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('---------------------------------', StrToInt(longitud), 0));
  end;
  if not DATOS.FbqMaster_Fact.FieldByName('MONTO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', DATOS.FbqMaster_Fact.FieldByName('MONTO')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('descuento').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('POGXITBS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not DATOS.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('MONTOPAGO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('ITEMS :   ' + CUANTOSCOUNT.text, StrToInt(longitud), 0));

  if not DATOS.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('EFECTIVO').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 1), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('bonos').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('BONOS:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', DATOS.FbqMaster_Fact.FieldByName('BONOS')
      .Value), StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),
      StrToInt(TPcampoC1), 1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  if not QBalanceCreditoCliente.FieldByName('MUSADOS').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('BALANACE PENDIENTE:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00',
      QBalanceCreditoCliente.FieldByName('MUSADOS').Value), StrToInt(TPcampoC1),
      1) + espacios('', StrToInt(TPcampoF), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('PENDIENTE:', StrToInt(TPcampoL), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(TPcampoC1), 1) +
      espacios('', StrToInt(TPcampoF), 1));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('FIRMA :_______________________', StrToInt(longitud), 0));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('Fecha de Vencimiento:' +
    DATOS.FbqMaster_Fact.FieldByName('fecha_final').asString),
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,
    StrToInt(longitud)));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('' + DATOS.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + DATOS.FbqMaster_Factcajero.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('----------------------------------', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
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

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    TEXTCORTE);

end;

procedure TFrmCobro.pagoNormal;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: Integer;
  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion, tipopago1: String;

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

  if DATOS.ZUconfiguracionTIPO_FACTURACION.Value = 1 then
  begin

    FrmNFact_normal.BTPedido.Enabled := FALSE;

    FrmNFact_normal.cerrar.Enabled := TRUE;
    FrmNFact_normal.Edit5.clear;
    FrmNFact_normal.cxButton14.Enabled := TRUE;
    FrmNFact_normal.cxButton4.Enabled := TRUE;
    FrmNFact_normal.b1.Enabled := TRUE;
    FrmNFact_normal.b2.Enabled := FALSE;
    FrmNFact_normal.b3.Enabled := FALSE;
    FrmNFact_normal.B6.Enabled := FALSE;
    FrmNFact_normal.b4.Enabled := FALSE;
    FrmNFact_normal.BTSerial.Enabled := FALSE;
    abrirfactura := 'NO';
    FrmNFact_normal.BtnPrintConduce.Enabled := FALSE;
    FrmNFact_normal.cxButton5.Enabled := TRUE;
    FrmNFact_normal.cxButton11.Enabled := FALSE;
    FrmNFact_normal.Panel12.Visible := FALSE;

    FrmNFact_normal.BtBorrar.Enabled := FALSE;
    FrmNFact_normal.B6.Enabled := FALSE;
    FrmNFact_normal.cxButton12.Enabled := FALSE;
    FrmNFact_normal.cxButton13.Enabled := FALSE;
    FrmNFact_normal.BTPedido.Enabled := TRUE;
    FrmNFact_normal.cxButton13.Enabled := TRUE;
    DATOS.FbqMaster_Fact.Edit;

  end;

  with NUMERO1 do
  begin
    close;
    sql.clear;
    sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
    open;
  end;

  DATOS.FbqMaster_Fact.Edit;
  if DATOS.FbqMaster_FactROTULO.text <> 'DELIVERY' THEN
  Begin
    DATOS.FbqMaster_FactNUMERO_FACTURA.Value := NUMERO1GEN_ID.Value;
  End;

  DATOS.fbqMaster_factsituacion.text := 'IMPRESA';
  DATOS.FbqMaster_FactCONDICION.text := 'ACTIVA';

  DATOS.FbqMaster_Factterminal.text := 'FACTURACION';
  DATOS.FbqMaster_FactHORA.Value := Time();

  if PEfectivo.Value = DATOS.FbqMaster_FactMONTOPAGO.Value then
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := PEfectivo.Value;
  end;

  IF PEfectivo.Value > DATOS.FbqMaster_FactMONTOPAGO.Value THEN
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value :=
      DATOS.FbqMaster_FactMONTOPAGO.Value;
  end;

  IF PEfectivo.Value < DATOS.FbqMaster_FactMONTOPAGO.Value THEN
  begin

    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := PEfectivo.Value;
  end;
  if PEfectivo.Value = 0.00 then
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := 0.00;
  end;

  DATOS.FbqMaster_FactPAGOXCHEQUE.Value := PCheques.Value;
  DATOS.FbqMaster_FactPAGOXTARJETA.Value := PTarjetas.Value;
  DATOS.FbqMaster_FactPAGOXBONO.Value := Pbonos.Value;
  DATOS.FbqMaster_FactABONO.Value := 0.00;

  DATOS.FbqMaster_FactPENDIENTE.Value := 0.00;
  DATOS.FbqMaster_Factcajeroid.Value := asignaUsuario;
  DATOS.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  DATOS.FbqMaster_Factcajero.Value := DATOS.ZqUsuariosNOMBRES_EMP.Value;

  if DATOS.FbqMaster_FactNO_AUTORIZA_NCF.Value = 1 then
  begin
    FSolidaridadPago.actulizasolidaridad;
    FSolidaridadPago.Edit1.clear;
    FSolidaridadPago.Edit2.clear;
    FSolidaridadPago.Edit3.clear;

  end;

  tipopago1 := '';

  if DATOS.FbqMaster_FactPAGOXEFECTIVO.Value > 0.00 then
  begin
    tipopago1 := 'EFECTIVO'
  end;

  if DATOS.FbqMaster_FactPAGOXCHEQUE.Value > 0.00 then
  begin
    tipopago1 := tipopago1 + ' /' + 'CHEQUE'
  end;

  if DATOS.FbqMaster_FactPAGOXTARJETA.Value > 0.00 then
  begin
    tipopago1 := tipopago1 + ' /' + 'TARJETA'
  end;

  if DATOS.FbqMaster_FactROTULO.text <> 'DELIVERY' THEN
  Begin
    GeneraComprobante;
  End;

  // ShowMessage(''+tipopago1);
  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactTIPOpago.Value := tipopago1;
  DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';

  actualizacopia(DATOS.FbqMaster_FactNO_FACT.Value,
    DATOS.FbqMaster_FactFECHA_FAC.Value, DATOS.FbqMaster_FactTIPO.Value,
    DATOS.FbqMaster_FactMONTO.Value, DATOS.FbqMaster_FactMONTOPAGO.Value, '0');

  if DATOS.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    DATOS.Series.ApplyUpdates;
  end;

  P_invenatrio;

  try

    DATOS.FbqMaster_Fact.Edit;
    DATOS.FbqMaster_Fact.ApplyUpdates;
    DATOS.ZDETALLE.ApplyUpdates;
    DATOS.Data.Commit;
    cxButton5.Enabled := FALSE;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Error', MB_ICONSTOP);
  end;

  with DATOS.FbqMaster_Fact do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(Edit1.text);
    open;
  end;

  with DATOS.ZDETALLE do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with DATOS.Series do
  begin
    close;
    sql.clear;
    sql.Add('select * from man_series where IDDETALLE =:opp');
    params[0].Value := DATOS.ZdetalleNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    close;
    sql.clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if Fimprime.ItemIndex = 0 then
  BEGIN

    // ShowMessage('');
    if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
    begin

      if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
        Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        if Tipoimpresion = 'D' then
        begin
          if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
          BEGIN
            imprimirtikect;
          END
          ELSE
          BEGIN
            imprimirtikect;
            imprimirtikect;

          END;

        end
        else
        begin

          cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicket' + '.fr3';
          RECIBO2.LoadFromFile(cInf);

          RECIBO2.variables['titulos'] := quotedstr('FACTURA');
          RECIBO2.variables['cajero'] := quotedstr(Edit2.text);

          men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
          RECIBO2.variables['mensaje1'] := quotedstr(men_pie);


          // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

          if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
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

    if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'NO' then
    begin

      if Tipoimpresion = 'D' then
      begin
        if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
        BEGIN
          imprimirtikect;
        END
        ELSE
        BEGIN
          imprimirtikect;
          imprimirtikect;

        END;

      end
      else
      begin

        cInf := DATOS.ZUconfiguracionROTULO_FC.Value + '\FacturaTicket'
          + '.fr3';
        RECIBO2.LoadFromFile(cInf);

        RECIBO2.variables['titulos'] := quotedstr('FACTURA');
        RECIBO2.variables['cajero'] := quotedstr(Edit2.text);

        men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
        RECIBO2.variables['mensaje1'] := quotedstr(men_pie);


        // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

        if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
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

  END;

  if Fimprime.ItemIndex = 1 then
  BEGIN

    // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeContado'+'.fr3';
    // Imprime_grande.LoadFromFile(cInf);
    // Imprime_grande.variables['titulos']  :=quotedstr('FACTURA');
    // Imprime_grande.variables['cajero']   :=quotedstr(edit2.text);
    // men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
    // Imprime_grande.variables['mensaje1'] :=quotedstr(men_pie);
    //
    //
    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      ImprimeM.variables['titulos'] := quotedstr('FACTURA');
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeContado' + '.fr3';
      ImprimeM.LoadFromFile(cInf);

    end;

    ImprimeM.variables['titulos'] := quotedstr('FACTURA');
    // men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
    ImprimeM.variables['mensaje1'] := quotedstr(men_pie);

    ImprimeM.PrepareReport(TRUE);
    ImprimeM.ShowPreparedReport;

  end;

  if Fimprime.ItemIndex = 2 then
  BEGIN



    // Imprime_media.variables['titulos']  :=quotedstr('FACTURA');
    // Imprime_media.variables['cajero']   :=quotedstr(edit2.text);
    // men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
    // Imprime_media.variables['mensaje1'] :=quotedstr(men_pie);

    // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
    // begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // recibo2.variables['mensaje1'] :=quotedstr(men_pie);
    // end;
    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeContado' + '.fr3';
      ImprimeM.LoadFromFile(cInf);
    end;
    men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
    ImprimeM.variables['titulos'] := quotedstr('FACTURA');
    ImprimeM.variables['mensaje1'] := quotedstr(men_pie);
    ImprimeM.PrepareReport(TRUE);
    ImprimeM.ShowPreparedReport;
  end;

  if DATOS.ZUconfiguracionTIPO_FACTURACION.Value = 2 then
  begin

    FrmCobroFact.HOLD.close;
    FrmCobroFact.HOLD.open;
  end;
  panelcobro.Visible := FALSE;
  Edit2.clear;
  Edit3.clear;
  DATOS.FbqMaster_Fact.close;
  DATOS.ZDETALLE.close;
  DATOS.ncf.close;
  ncf.close;
  cxButton5.Enabled := FALSE;


  // panel5.Visible := false;
  // control := 0;

  close;

end;

procedure TFrmCobro.pagoNormalCredito;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: Integer;
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

  if DATOS.ZUconfiguracionTIPO_FACTURACION.Value = 1 then
  begin

    FrmNFact_normal.BTPedido.Enabled := FALSE;

    FrmNFact_normal.cerrar.Enabled := TRUE;
    FrmNFact_normal.Edit5.clear;
    FrmNFact_normal.cxButton14.Enabled := TRUE;
    FrmNFact_normal.cxButton4.Enabled := TRUE;
    FrmNFact_normal.b1.Enabled := TRUE;
    FrmNFact_normal.b2.Enabled := FALSE;
    FrmNFact_normal.b3.Enabled := FALSE;
    FrmNFact_normal.B6.Enabled := FALSE;
    FrmNFact_normal.b4.Enabled := FALSE;

    FrmNFact_normal.BtnPrintConduce.Enabled := FALSE;
    FrmNFact_normal.cxButton5.Enabled := TRUE;
    FrmNFact_normal.cxButton11.Enabled := FALSE;
    FrmNFact_normal.Panel12.Visible := FALSE;
    FrmNFact_normal.BTSerial.Enabled := FALSE;
    FrmNFact_normal.BtBorrar.Enabled := FALSE;
    FrmNFact_normal.B6.Enabled := FALSE;
    FrmNFact_normal.cxButton12.Enabled := FALSE;
    FrmNFact_normal.cxButton13.Enabled := FALSE;
    FrmNFact_normal.BTPedido.Enabled := TRUE;
    FrmNFact_normal.cxButton13.Enabled := TRUE;
  end;
  DATOS.FbqMaster_Fact.Edit;

  with NUMERO1 do
  begin
    close;
    sql.clear;
    sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
    open;
  end;

  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactNUMERO_FACTURA.Value := NUMERO1GEN_ID.Value;
  DATOS.fbqMaster_factsituacion.text := 'IMPRESA';
  DATOS.FbqMaster_FactCONDICION.text := 'ACTIVA';
  DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
  DATOS.FbqMaster_Factterminal.text := 'FACTURACION';

  DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := PEfectivo.Value;
  DATOS.FbqMaster_FactPAGOXCHEQUE.Value := PCheques.Value;
  DATOS.FbqMaster_FactPAGOXTARJETA.Value := PTarjetas.Value;
  DATOS.FbqMaster_FactPAGOXBONO.Value := Pbonos.Value;
  DATOS.FbqMaster_FactABONO.Value := PEfectivo.Value + PCheques.Value +
    PTarjetas.Value + Pbonos.Value;

  DATOS.FbqMaster_FactPENDIENTE.Value := DATOS.FbqMaster_FactMONTOPAGO.Value -
    DATOS.FbqMaster_FactABONO.Value;
  DATOS.FbqMaster_Factcajeroid.Value := asignaUsuario;
  DATOS.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  DATOS.FbqMaster_FactFECHA_FAC.Value := Now();
  DATOS.FbqMaster_FactHORA.Value := Time();

  // if IbqClientesCONDICION.Value = '15 Días' then
  // begin
  // diascondicioncredito := 15;
  // end;
  //
  // if IbqClientesCONDICION.Value = '30 Días' then
  // begin
  // diascondicioncredito := 30;
  // end;
  //
  // if IbqClientesCONDICION.Value = '45 Días' then
  // begin
  // diascondicioncredito := 45;
  // end;
  //
  // if IbqClientesCONDICION.Value = '60 Días' then
  // begin
  // diascondicioncredito := 60;
  // end;

  diascondicioncredito := IbqClientesRUTA_ID.Value;
  DATOS.FbqMaster_FactFECHAVENCIMIENTO.Value :=
    IncDay(DATOS.FbqMaster_FactFECHA_FAC.AsDateTime, diascondicioncredito);

  // ****** Actualiza Balance de Credito Cliente *-****
  with UpCredito do
  begin
    close;
    sql.clear;
    sql.Add('update cliente set Musados =:Musado, balance =:balance ');
    sql.Add('where codigo =:codigo');
    params[0].Value := IbqClientesMUSADOS.Value +
      (DATOS.FbqMaster_FactMONTOPAGO.Value - DATOS.FbqMaster_FactABONO.Value);
    params[1].Value := IbqClientesCREDITOLIMITE.Value -
      (IbqClientesMUSADOS.Value + (DATOS.FbqMaster_FactMONTOPAGO.Value -
      DATOS.FbqMaster_FactABONO.Value));
    params[2].Value := IbqClientesCODIGO.Value;
    ExecSQL;
  end;

  ActualizaReciboCXC;



  // **************************************************

  GeneraComprobante;

  if DATOS.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    DATOS.Series.ApplyUpdates;
  end;

  DATOS.ZInventario.open;

  P_invenatrio;
  try
    DATOS.FbqMaster_Fact.Edit;
    DATOS.FbqMaster_Fact.ApplyUpdates;
    DATOS.ZDETALLE.ApplyUpdates;
    DATOS.Data.Commit;

    cxButton5.Enabled := FALSE;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Error', MB_ICONSTOP);
  end;

  with DATOS.FbqMaster_Fact do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(Edit1.text);
    open;
  end;

  with DATOS.ZDETALLE do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with QBalanceCreditoCliente do
  begin
    close;
    sql.clear;
    sql.Add('select balance, musados from cliente');
    sql.Add('where codigo =:opp');
    params[0].Value := DATOS.FbqMaster_FactCLIENTEID.Value;
    open;
  end;
  with CUANTOS do
  begin
    close;
    sql.clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with Antiguedad do
  begin
    close;
    sql.clear;
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
    params[3].Value := DATOS.FbqMaster_FactCLIENTEID.Value;
    params[4].Value := 'CREDITO';
    open;
  end;
  //
  // with datos.Series do
  // begin
  // close;
  // //      params[0].Value := datos.ZdetalleARTICULOID.Value;
  // //     params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
  // open;
  // end;

  if Fimprime.ItemIndex = 0 then
  BEGIN

    if Tipoimpresion = 'D' then
    begin

      if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
      begin

        if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
          Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin

          imprimirtikectCredito;
          imprimirtikectCredito;
        end;
      end
      else
      begin
        imprimirtikectCredito;
        imprimirtikectCredito;
      end;

    end
    else
    begin

      // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketC'+'.fr3';
      // recibo3.LoadFromFile(cInf);


      // if application.MessageBox ('Deseas Imprimir Este TICKET','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
      // begin

      cInf := DATOS.ZUconfiguracionROTULO_FC.Value + '\FacturaTicketN' + '.fr3';
      Recibo3.LoadFromFile(cInf);
      Recibo3.variables['titulos'] := quotedstr('FACTURA');
      Recibo3.variables['cajero'] := quotedstr(Edit2.text);
      men_pie := DATOS.ZUconfiguracionMensaje_pie2.Value;
      Recibo3.variables['mensaje1'] := quotedstr(men_pie);

      if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
      BEGIN
        Recibo3.PrintOptions.Copies := 1;
      END
      ELSE
      begin
        Recibo3.PrintOptions.Copies := 2;

      end;

      Recibo3.PrepareReport(TRUE);
      Recibo3.print;
    end;
    // end;
  END;

  if Fimprime.ItemIndex = 1 then
  BEGIN


    // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrande_C'+'.fr3';
    // Imprimirmc.LoadFromFile(cInf);

    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandecredito' + '.fr3';
      ImprimirMC.LoadFromFile(cInf);
    end;
    ImprimirMC.variables['titulos'] := quotedstr('FACTURA');
    ImprimirMC.variables['cajero'] := quotedstr(Edit2.text);
    men_pie := DATOS.ZUconfiguracionMensaje_pie2.Value;
    ImprimirMC.variables['mensaje1'] := quotedstr(men_pie);


    // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
    // begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // recibo2.variables['mensaje1'] :=quotedstr(men_pie);
    // end;

    ImprimirMC.PrepareReport(TRUE);
    ImprimirMC.ShowPreparedReport;
  end;

  if Fimprime.ItemIndex = 2 then
  BEGIN


    // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrande_C'+'.fr3';
    // Imprimirmc.LoadFromFile(cInf);

    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandecredito' + '.fr3';
      ImprimirMC.LoadFromFile(cInf);
    end;
    ImprimirMC.variables['titulos'] := quotedstr('FACTURA');
    ImprimirMC.variables['cajero'] := quotedstr(Edit2.text);
    men_pie := DATOS.ZUconfiguracionMensaje_pie2.Value;
    ImprimirMC.variables['mensaje1'] := quotedstr(men_pie);


    // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
    // begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // recibo2.variables['mensaje1'] :=quotedstr(men_pie);
    // end;

    ImprimirMC.PrepareReport(TRUE);
    ImprimirMC.ShowPreparedReport;
  end;

  panelcobro.Visible := FALSE;
  Edit2.clear;
  Edit3.clear;
  DATOS.FbqMaster_Fact.close;
  DATOS.ZDETALLE.close;
  DATOS.ncf.close;
  ncf.close;
  cxButton5.Enabled := FALSE;

  //
  if DATOS.ZUconfiguracionTIPO_FACTURACION.Value = 2 then
  begin
    FrmCobroFact.HOLD.close;
    FrmCobroFact.HOLD.open;
  end;

  close;

end;

procedure TFrmCobro.pagopizza;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: Integer;
  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion: String;
begin

  DATOS.FbqMaster_Fact.Edit;

  with NUMERO1 do
  begin
    close;
    sql.clear;
    sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
    open;
  end;

  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactNUMERO_FACTURA.Value := NUMERO1GEN_ID.Value;
  DATOS.fbqMaster_factsituacion.text := 'IMPRESA';
  DATOS.FbqMaster_FactCONDICION.text := 'ACTIVA';
  // DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
  DATOS.FbqMaster_Factterminal.text := 'FACTURACION';

  if PEfectivo.Value = DATOS.FbqMaster_FactMONTOPAGO.Value then
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := PEfectivo.Value;
  end;

  IF PEfectivo.Value > DATOS.FbqMaster_FactMONTOPAGO.Value THEN
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value :=
      DATOS.FbqMaster_FactMONTOPAGO.Value;
  end;

  IF PEfectivo.Value < DATOS.FbqMaster_FactMONTOPAGO.Value THEN
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value :=
      DATOS.FbqMaster_FactMONTOPAGO.Value - PEfectivo.Value;
  end;

  if PEfectivo.Value = 0.00 then
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := 0.00;
  end;

  DATOS.FbqMaster_FactPAGOXCHEQUE.Value := PCheques.Value;
  DATOS.FbqMaster_FactPAGOXTARJETA.Value := PTarjetas.Value;
  DATOS.FbqMaster_FactPAGOXBONO.Value := Pbonos.Value;
  DATOS.FbqMaster_FactABONO.Value := 0.00;

  DATOS.FbqMaster_FactPENDIENTE.Value := 0.00;
  DATOS.FbqMaster_Factcajeroid.Value := asignaUsuario;
  DATOS.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  DATOS.FbqMaster_Factcajero.Value := DATOS.ZqUsuariosNOMBRES_EMP.Value;
  DATOS.FbqMaster_FactHORA.Value := Time();

  if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
  begin
    try
      DATOS.FbqMaster_Fact.Edit;
      DATOS.FbqMaster_FactRNC_CLIENTE.Value := IbqClientesCEDULA.Value;

      with DATOS.ncf do
      begin
        close;
        sql.clear;
        sql.Add('select * from ncf');
        sql.Add('where nuNtext =:tipo');
        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal' then
        begin
          params[0].Value := 'B01';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF_Fiscal do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_USO_CF, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_FiscalGEN_ID.Value;

        end;

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental' then
        begin
          params[0].Value := 'B15';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF_GOB do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_GOB, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_GOBGEN_ID.Value;

        end;

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
        begin
          params[0].Value := 'B02';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_USO, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCFGEN_ID.Value;

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

      DATOS.FbqMaster_Fact.Edit;
      DATOS.FbqMaster_FactNCF.Value := DATOS.ncfNUNTEXT.Value + cero1 +
        IntToStr(nume);
      DATOS.FbqMaster_FactNCF_NOMBRE.Value := DATOS.NCFTITULO.Value;
      DATOS.fbqMaster_FactFecha_final.Value := DATOS.NCFFECHA_VENC.Value;
      DATOS.FbqMaster_FactFECHA_FAC.Value := Now();

      DATOS.ncf.Edit;
      DATOS.ncfUSO.Value := nume;
      DATOS.ncf.ApplyUpdates;

    finally
      // TODO 5 -oIasa -cEmpty Code Block: TFrmCobro.cobrarFact (finally/end in procedure)
    end;
  end;

  if DATOS.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    DATOS.Series.ApplyUpdates;
  end;

  P_invenatrio;

  try

    DATOS.FbqMaster_Fact.Edit;
    DATOS.FbqMaster_Fact.ApplyUpdates;
    DATOS.ZDETALLE.ApplyUpdates;
    DATOS.Data.Commit;
    cxButton5.Enabled := FALSE;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Error', MB_ICONSTOP);
  end;

  with DATOS.FbqMaster_Fact do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(Edit1.text);
    open;
  end;

  with DATOS.ZDETALLE do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    close;
    sql.clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if Fimprime.ItemIndex = 0 then
  BEGIN

    // ShowMessage('');
    if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
    begin

      if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
        Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        if Tipoimpresion = 'D' then
        begin
          if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
          BEGIN
            imprimirtikect;
          END
          ELSE
          BEGIN
            imprimirtikect;
            imprimirtikect;

          END;

        end
        else
        begin

          cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicket' + '.fr3';
          RECIBO2.LoadFromFile(cInf);

          RECIBO2.variables['titulos'] := quotedstr('FACTURA');
          RECIBO2.variables['cajero'] := quotedstr(Edit2.text);

          men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
          RECIBO2.variables['mensaje1'] := quotedstr(men_pie);


          // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

          if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
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

    if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'NO' then
    begin

      if Tipoimpresion = 'D' then
      begin
        if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
        BEGIN
          imprimirtikect;
        END
        ELSE
        BEGIN
          imprimirtikect;
          imprimirtikect;

        END;

      end
      else
      begin

        cInf := DATOS.ZUconfiguracionROTULO_FC.Value + '\FacturaTicket'
          + '.fr3';
        RECIBO2.LoadFromFile(cInf);

        RECIBO2.variables['titulos'] := quotedstr('FACTURA');
        RECIBO2.variables['cajero'] := quotedstr(Edit2.text);

        men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
        RECIBO2.variables['mensaje1'] := quotedstr(men_pie);


        // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);

        if DATOS.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
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

  END;

  if Fimprime.ItemIndex = 1 then
  BEGIN

    // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeContado'+'.fr3';
    // Imprime_grande.LoadFromFile(cInf);
    // Imprime_grande.variables['titulos']  :=quotedstr('FACTURA');
    // Imprime_grande.variables['cajero']   :=quotedstr(edit2.text);
    // men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
    // Imprime_grande.variables['mensaje1'] :=quotedstr(men_pie);
    //
    //
    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      ImprimeM.variables['titulos'] := quotedstr('FACTURA');
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeContado' + '.fr3';
      ImprimeM.LoadFromFile(cInf);

    end;

    ImprimeM.variables['titulos'] := quotedstr('FACTURA');
    // men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
    ImprimeM.variables['mensaje1'] := quotedstr(men_pie);

    ImprimeM.PrepareReport(TRUE);
    ImprimeM.ShowPreparedReport;

  end;

  if Fimprime.ItemIndex = 2 then
  BEGIN



    // Imprime_media.variables['titulos']  :=quotedstr('FACTURA');
    // Imprime_media.variables['cajero']   :=quotedstr(edit2.text);
    // men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
    // Imprime_media.variables['mensaje1'] :=quotedstr(men_pie);

    // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
    // begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // recibo2.variables['mensaje1'] :=quotedstr(men_pie);
    // end;
    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeContado' + '.fr3';
      ImprimeM.LoadFromFile(cInf);
    end;
    men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
    ImprimeM.variables['titulos'] := quotedstr('FACTURA');
    ImprimeM.variables['mensaje1'] := quotedstr(men_pie);
    ImprimeM.PrepareReport(TRUE);
    ImprimeM.ShowPreparedReport;
  end;

  // if FIMPRIME.ItemIndex = 1 then
  // BEGIN
  //
  //
  // //                       cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeContado'+'.fr3';
  // //                       Imprime_grande.LoadFromFile(cInf);
  // //                       Imprime_grande.variables['titulos']  :=quotedstr('FACTURA');
  // //                       Imprime_grande.variables['cajero']   :=quotedstr(edit2.text);
  // //                       men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
  // //                       Imprime_grande.variables['mensaje1'] :=quotedstr(men_pie);
  // //
  // //
  // if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
  // begin
  // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeContado'+'.fr3';
  // Imprimem.LoadFromFile(cInf);
  // end;
  // Imprimem.variables['titulos']  :=quotedstr('FACTURA');
  // men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
  // Imprimem.variables['mensaje1'] :=quotedstr(men_pie);
  // Imprimem.PrepareReport(true);
  // Imprimem.ShowPreparedReport;
  // end;
  //
  // if FIMPRIME.ItemIndex = 2 then
  // BEGIN
  //
  //
  //
  // //    Imprime_media.variables['titulos']  :=quotedstr('FACTURA');
  // //    Imprime_media.variables['cajero']   :=quotedstr(edit2.text);
  // //   men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
  // //   Imprime_media.variables['mensaje1'] :=quotedstr(men_pie);
  //
  //
  // //                         if datos.FbqMaster_Facttipo.Value ='CREDITO' then
  // //                       begin
  // //                          men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
  // //                         recibo2.variables['mensaje1'] :=quotedstr(men_pie);
  // //                       end;
  // if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
  // begin
  // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeContado'+'.fr3';
  // Imprimem.LoadFromFile(cInf);
  // end;
  // men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
  // Imprimem.variables['mensaje1'] :=quotedstr(men_pie);
  // Imprimem.PrepareReport(true);
  // Imprimem.ShowPreparedReport;
  // end;

  panelcobro.Visible := FALSE;
  Edit2.clear;
  Edit3.clear;
  DATOS.FbqMaster_Fact.close;
  DATOS.ZDETALLE.close;
  DATOS.ncf.close;
  ncf.close;
  cxButton5.Enabled := FALSE;

  FrmPizeria.Cancelar;
  // panel5.Visible := false;
  // control := 0;

  close;

end;

procedure TFrmCobro.pagoPizzaCredito;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: Integer;
  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion: String;

begin
  // FrmNFact_normal.BTPedido.Enabled := false;
  //
  // FrmNFact_normal.cerrar.Enabled := true;
  // FrmNFact_normal.edit5.clear;
  // FrmNFact_normal.cxButton14.Enabled := true;
  // FrmNFact_normal.cxButton4.Enabled := true;
  // FrmNFact_normal.b1.Enabled := true;
  // FrmNFact_normal.b2.Enabled := false;
  // FrmNFact_normal.b3.Enabled := false;
  // FrmNFact_normal.b6.Enabled := false;
  // FrmNFact_normal.b4.Enabled := false;
  //
  // FrmNFact_normal.BtnPrintConduce.Enabled := false;
  // FrmNFact_normal.cxButton5.Enabled := true;
  // FrmNFact_normal.cxButton11.Enabled := false;
  // FrmNFact_normal.PANEL12.Visible := FALSE;
  // FrmNFact_normal.BTSerial.Enabled := false;
  // FrmNFact_normal.BtBorrar.Enabled := false;
  // FrmNFact_normal.b6.Enabled := false;
  // FrmNFact_normal.cxButton12.Enabled := false;
  // FrmNFact_normal.cxButton13.Enabled := false;
  // FrmNFact_normal.BTpedido.Enabled := true;
  // FrmNFact_normal.cxButton13.Enabled := true;
  DATOS.FbqMaster_Fact.Edit;

  with NUMERO1 do
  begin
    close;
    sql.clear;
    sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
    open;
  end;

  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactNUMERO_FACTURA.Value := NUMERO1GEN_ID.Value;
  DATOS.fbqMaster_factsituacion.text := 'IMPRESA';
  DATOS.FbqMaster_FactCONDICION.text := 'ACTIVA';
  // DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
  DATOS.FbqMaster_Factterminal.text := 'FACTURACION';

  DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := PEfectivo.Value;
  DATOS.FbqMaster_FactPAGOXCHEQUE.Value := PCheques.Value;
  DATOS.FbqMaster_FactPAGOXTARJETA.Value := PTarjetas.Value;
  DATOS.FbqMaster_FactPAGOXBONO.Value := Pbonos.Value;
  DATOS.FbqMaster_FactABONO.Value := PEfectivo.Value + PCheques.Value +
    PTarjetas.Value + Pbonos.Value;

  DATOS.FbqMaster_FactPENDIENTE.Value := DATOS.FbqMaster_FactMONTOPAGO.Value -
    DATOS.FbqMaster_FactABONO.Value;
  DATOS.FbqMaster_Factcajeroid.Value := asignaUsuario;
  DATOS.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  DATOS.FbqMaster_FactFECHA_FAC.Value := Now();
  DATOS.FbqMaster_FactHORA.Value := Time();

  if IbqClientesCONDICION.Value = '15 Días' then
  begin
    diascondicioncredito := 15;
  end;

  if IbqClientesCONDICION.Value = '30 Días' then
  begin
    diascondicioncredito := 30;
  end;

  if IbqClientesCONDICION.Value = '45 Días' then
  begin
    diascondicioncredito := 45;
  end;

  if IbqClientesCONDICION.Value = '60 Días' then
  begin
    diascondicioncredito := 60;
  end;

  DATOS.FbqMaster_FactFECHAVENCIMIENTO.Value :=
    IncDay(DATOS.FbqMaster_FactFECHA_FAC.AsDateTime, diascondicioncredito);

  // ****** Actualiza Balance de Credito Cliente *-****
  with UpCredito do
  begin
    close;
    sql.clear;
    sql.Add('update cliente set Musados =:Musado, balance =:balance ');
    sql.Add('where codigo =:codigo');
    params[0].Value := IbqClientesMUSADOS.Value +
      (DATOS.FbqMaster_FactMONTOPAGO.Value - DATOS.FbqMaster_FactABONO.Value);
    params[1].Value := IbqClientesCREDITOLIMITE.Value -
      (IbqClientesMUSADOS.Value + (DATOS.FbqMaster_FactMONTOPAGO.Value -
      DATOS.FbqMaster_FactABONO.Value));
    params[2].Value := IbqClientesCODIGO.Value;
    ExecSQL;
  end;

  ActualizaReciboCXC;



  // **************************************************

  GeneraComprobante;

  if DATOS.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    DATOS.Series.ApplyUpdates;
  end;

  P_invenatrio;
  try
    DATOS.FbqMaster_Fact.Edit;
    DATOS.FbqMaster_Fact.ApplyUpdates;
    DATOS.ZDETALLE.ApplyUpdates;
    DATOS.Data.Commit;

    cxButton5.Enabled := FALSE;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Error', MB_ICONSTOP);
  end;

  with DATOS.FbqMaster_Fact do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(Edit1.text);
    open;
  end;

  with DATOS.ZDETALLE do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    close;
    sql.clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with Antiguedad do
  begin
    close;
    sql.clear;
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
    params[3].Value := DATOS.FbqMaster_FactCLIENTEID.Value;
    params[4].Value := 'CREDITO';
    open;
  end;

  with DATOS.Series do
  begin
    close;
    // params[0].Value := datos.ZdetalleARTICULOID.Value;
    // params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if Fimprime.ItemIndex = 0 then
  BEGIN

    if Tipoimpresion = 'D' then
    begin
      if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
      begin

        if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
          Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          imprimirtikectCredito;
        end;
      end
      else
      begin
        imprimirtikectCredito;
      end;

    end
    else
    begin

      // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketC'+'.fr3';
      // recibo3.LoadFromFile(cInf);

      if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
      begin

        if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
          Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin

          if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
          begin
            cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
              '\FacturaTicket' + '.fr3';
            Recibo3.LoadFromFile(cInf);
          end
          else
          begin
            cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
              '\FacturaTicketN' + '.fr3';
            Recibo3.LoadFromFile(cInf);

          end;

          Recibo3.variables['titulos'] := quotedstr('FACTURA');
          Recibo3.variables['cajero'] := quotedstr(Edit2.text);

          men_pie := DATOS.ZUconfiguracionMensaje_pie2.Value;
          Recibo3.variables['mensaje1'] := quotedstr(men_pie);

          // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);
          Recibo3.PrepareReport(TRUE);
          Recibo3.print;
        end;
      end;
    END;

  END;

  if Fimprime.ItemIndex = 1 then
  BEGIN


    // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrande_C'+'.fr3';
    // Imprimirmc.LoadFromFile(cInf);

    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value + '\FacturaGrande_C'
        + '.fr3';
      ImprimirMC.LoadFromFile(cInf);
    end;
    ImprimirMC.variables['titulos'] := quotedstr('FACTURA');
    ImprimirMC.variables['cajero'] := quotedstr(Edit2.text);
    men_pie := DATOS.ZUconfiguracionMensaje_pie2.Value;
    ImprimirMC.variables['mensaje1'] := quotedstr(men_pie);


    // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
    // begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // recibo2.variables['mensaje1'] :=quotedstr(men_pie);
    // end;

    ImprimirMC.PrepareReport(TRUE);
    ImprimirMC.ShowPreparedReport;
  end;
  panelcobro.Visible := FALSE;
  Edit2.clear;
  Edit3.clear;
  DATOS.FbqMaster_Fact.close;
  DATOS.ZDETALLE.close;
  DATOS.ncf.close;
  ncf.close;
  cxButton5.Enabled := FALSE;

  close;

end;

procedure TFrmCobro.PagoSupermercado;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: Integer;
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
  DATOS.FbqMaster_Fact.Edit;

  with NUMERO1 do
  begin
    close;
    sql.clear;
    sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
    open;
  end;

  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactNUMERO_FACTURA.Value := NUMERO1GEN_ID.Value;
  DATOS.fbqMaster_factsituacion.text := 'IMPRESA';
  DATOS.FbqMaster_FactCONDICION.text := 'ACTIVA';
  DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
  DATOS.FbqMaster_Factterminal.text := 'FACTURACION';

  if PEfectivo.Value = DATOS.FbqMaster_FactMONTOPAGO.Value then
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := PEfectivo.Value;
  end;

  IF PEfectivo.Value > DATOS.FbqMaster_FactMONTOPAGO.Value THEN
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value :=
      DATOS.FbqMaster_FactMONTOPAGO.Value;
  end;

  IF PEfectivo.Value < DATOS.FbqMaster_FactMONTOPAGO.Value THEN
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value :=
      DATOS.FbqMaster_FactMONTOPAGO.Value - PEfectivo.Value;
  end;

  if PEfectivo.Value = 0.00 then
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := 0.00;
  end;

  DATOS.FbqMaster_FactPAGOXCHEQUE.Value := PCheques.Value;
  DATOS.FbqMaster_FactPAGOXTARJETA.Value := PTarjetas.Value;
  DATOS.FbqMaster_FactPAGOXBONO.Value := Pbonos.Value;
  DATOS.FbqMaster_FactABONO.Value := 0.00;

  DATOS.FbqMaster_FactPENDIENTE.Value := 0.00;
  DATOS.FbqMaster_Factcajeroid.Value := asignaUsuario;
  DATOS.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  DATOS.FbqMaster_Factcajero.Value := DATOS.ZqUsuariosNOMBRES_EMP.Value;

  if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
  begin
    try
      DATOS.FbqMaster_Fact.Edit;
      DATOS.FbqMaster_FactRNC_CLIENTE.Value := IbqClientesCEDULA.Value;

      with DATOS.ncf do
      begin
        close;
        sql.clear;
        sql.Add('select * from ncf');
        sql.Add('where nuNtext =:tipo');
        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal' then
        begin
          params[0].Value := 'B01';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF_Fiscal do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_USO_CF, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_FiscalGEN_ID.Value;

        end;

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental' then
        begin
          params[0].Value := 'B15';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF_GOB do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_GOB, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_GOBGEN_ID.Value;

        end;

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
        begin
          params[0].Value := 'B02';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_USO, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCFGEN_ID.Value;

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

      DATOS.FbqMaster_Fact.Edit;
      DATOS.FbqMaster_FactNCF.Value := DATOS.ncfNUNTEXT.Value + cero1 +
        IntToStr(nume);
      DATOS.FbqMaster_FactNCF_NOMBRE.Value := DATOS.NCFTITULO.Value;
      DATOS.fbqMaster_FactFecha_final.Value := DATOS.NCFFECHA_VENC.Value;
      DATOS.FbqMaster_FactFECHA_FAC.Value := Now();

      DATOS.ncf.Edit;
      DATOS.ncfUSO.Value := nume;
      DATOS.ncf.ApplyUpdates;

    finally
      // TODO 5 -oIasa -cEmpty Code Block: TFrmCobro.cobrarFact (finally/end in procedure)
    end;
  end;

  if DATOS.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    DATOS.Series.ApplyUpdates;
  end;

  P_invenatrio;

  try

    DATOS.FbqMaster_Fact.Edit;
    DATOS.FbqMaster_Fact.ApplyUpdates;
    DATOS.ZDETALLE.ApplyUpdates;
    DATOS.Data.Commit;
    cxButton5.Enabled := FALSE;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Error', MB_ICONSTOP);
  end;

  with DATOS.FbqMaster_Fact do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(Edit1.text);
    open;
  end;

  with DATOS.ZDETALLE do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    close;
    sql.clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if Fimprime.ItemIndex = 0 then
  BEGIN

    if (DATOS.ZUconfiguracionTerminal.Value = 'Normal') or
      (DATOS.ZUconfiguracionTerminal.Value = 'Supermerca') then
    begin

      if Tipoimpresion = 'D' then
      begin

        if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
        begin

          if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
            Mb_YesNo + MB_ICONQUESTION) = Id_yes then
          begin

            imprimirtikect;
          end;

        end
        else
        begin

          imprimirtikect;
        end;

      end
      else
      begin

        if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
        begin
          cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicket' + '.fr3';
          RECIBO2.LoadFromFile(cInf);
        end
        else
        begin
          cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicketN' + '.fr3';
          RECIBO2.LoadFromFile(cInf);

        end;

        if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
        begin

          if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
            Mb_YesNo + MB_ICONQUESTION) = Id_yes then
          begin
            RECIBO2.variables['titulos'] := quotedstr('FACTURA');
            RECIBO2.variables['cajero'] := quotedstr(Edit2.text);

            men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
            RECIBO2.variables['mensaje1'] := quotedstr(men_pie);

            // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);
            RECIBO2.PrepareReport(TRUE);
            RECIBO2.print;
          end;
        end;

      end;

    end
    else
    begin
      if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
        Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        prncopia.variables['titulos'] := quotedstr('FACTURA');
        // PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
        men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
        prncopia.variables['mensaje1'] := quotedstr(men_pie);
        prncopia.PrepareReport(TRUE);
        prncopia.print;
      end;

    end;
  END;

  if Fimprime.ItemIndex = 1 then
  BEGIN

    // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeContado'+'.fr3';
    // Imprime_grande.LoadFromFile(cInf);
    // Imprime_grande.variables['titulos']  :=quotedstr('FACTURA');
    // Imprime_grande.variables['cajero']   :=quotedstr(edit2.text);
    // men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
    // Imprime_grande.variables['mensaje1'] :=quotedstr(men_pie);
    //
    //
    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeContado' + '.fr3';
      ImprimeM.LoadFromFile(cInf);
    end;
    ImprimeM.variables['titulos'] := quotedstr('FACTURA');
    men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
    ImprimeM.variables['mensaje1'] := quotedstr(men_pie);
    ImprimeM.PrepareReport(TRUE);
    ImprimeM.ShowPreparedReport;
  end;

  if Fimprime.ItemIndex = 2 then
  BEGIN



    // Imprime_media.variables['titulos']  :=quotedstr('FACTURA');
    // Imprime_media.variables['cajero']   :=quotedstr(edit2.text);
    // men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
    // Imprime_media.variables['mensaje1'] :=quotedstr(men_pie);

    // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
    // begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // recibo2.variables['mensaje1'] :=quotedstr(men_pie);
    // end;
    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeContado' + '.fr3';
      ImprimeM.LoadFromFile(cInf);
    end;
    men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
    ImprimeM.variables['mensaje1'] := quotedstr(men_pie);
    ImprimeM.PrepareReport(TRUE);
    ImprimeM.ShowPreparedReport;
  end;

  panelcobro.Visible := FALSE;
  Edit2.clear;
  Edit3.clear;
  DATOS.FbqMaster_Fact.close;
  DATOS.ZDETALLE.close;
  DATOS.ncf.close;
  ncf.close;
  cxButton5.Enabled := FALSE;

  FrmFactRapida.Cancelar;
  // panel5.Visible := false;
  // control := 0;

  close;

end;

procedure TFrmCobro.pagotouch;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: Integer;
  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion: String;
begin

  DATOS.FbqMaster_Fact.Edit;

  with NUMERO1 do
  begin
    close;
    sql.clear;
    sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
    open;
  end;

  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactNUMERO_FACTURA.Value := NUMERO1GEN_ID.Value;
  DATOS.fbqMaster_factsituacion.text := 'IMPRESA';
  DATOS.FbqMaster_FactCONDICION.text := 'ACTIVA';
  // DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
  DATOS.FbqMaster_Factterminal.text := 'FACTURACION';

  if PEfectivo.Value = DATOS.FbqMaster_FactMONTOPAGO.Value then
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := PEfectivo.Value;
  end;

  IF PEfectivo.Value > DATOS.FbqMaster_FactMONTOPAGO.Value THEN
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value :=
      DATOS.FbqMaster_FactMONTOPAGO.Value;
  end;

  IF PEfectivo.Value < DATOS.FbqMaster_FactMONTOPAGO.Value THEN
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value :=
      DATOS.FbqMaster_FactMONTOPAGO.Value - PEfectivo.Value;
  end;

  if PEfectivo.Value = 0.00 then
  begin
    DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := 0.00;
  end;

  DATOS.FbqMaster_FactPAGOXCHEQUE.Value := PCheques.Value;
  DATOS.FbqMaster_FactPAGOXTARJETA.Value := PTarjetas.Value;
  DATOS.FbqMaster_FactPAGOXBONO.Value := Pbonos.Value;
  DATOS.FbqMaster_FactABONO.Value := 0.00;
  DATOS.FbqMaster_FactPENDIENTE.Value := 0.00;
  DATOS.FbqMaster_Factcajeroid.Value := asignaUsuario;
  DATOS.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  DATOS.FbqMaster_Factcajero.Value := DATOS.ZqUsuariosNOMBRES_EMP.Value;
  DATOS.FbqMaster_FactHORA.Value := Time();

  GeneraComprobante;

  actualizacopia(DATOS.FbqMaster_FactNO_FACT.asinteger,
    DATOS.FbqMaster_FactFECHA_FAC.AsDateTime, DATOS.FbqMaster_FactTIPO.asString,
    DATOS.FbqMaster_FactMONTO.AsFloat,
    DATOS.FbqMaster_FactMONTOPAGO.AsFloat, '0');

  if DATOS.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    DATOS.Series.ApplyUpdates;
  end;

  P_invenatrio;

  try

    DATOS.FbqMaster_Fact.Edit;
    DATOS.FbqMaster_Fact.ApplyUpdates;
    DATOS.ZDETALLE.ApplyUpdates;
    DATOS.Data.Commit;
    cxButton5.Enabled := FALSE;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Error', MB_ICONSTOP);
  end;

  with DATOS.FbqMaster_Fact do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(Edit1.text);
    open;
  end;

  with DATOS.ZDETALLE do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    close;
    sql.clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if Fimprime.ItemIndex = 0 then
  BEGIN

    if DATOS.ZUconfiguracionTerminal.Value = 'Normal' then
    begin

      if Tipoimpresion = 'D' then
      begin

        if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
        begin

          if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
            Mb_YesNo + MB_ICONQUESTION) = Id_yes then
          begin

            imprimirtikect;
          end;

        end
        else
        begin

          imprimirtikect;
        end;

      end
      else
      begin

        if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
        begin
          cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicket' + '.fr3';
          RECIBO2.LoadFromFile(cInf);
        end
        else
        begin
          cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicketN' + '.fr3';
          RECIBO2.LoadFromFile(cInf);

        end;

        if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
        begin

          if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
            Mb_YesNo + MB_ICONQUESTION) = Id_yes then
          begin
            RECIBO2.variables['titulos'] := quotedstr('FACTURA');
            // recibo2.variables['cajero']   :=quotedstr(edit2.text);

            men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
            RECIBO2.variables['mensaje1'] := quotedstr(men_pie);

            // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);
            RECIBO2.PrepareReport(TRUE);
            RECIBO2.ShowReport;
          end;
        end;

      end;

    end
    else
    begin

      if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
        Mb_YesNo + MB_ICONQUESTION) = Id_yes then
      begin

        with DATOS.ZTurno do
        begin
          close;
          sql.clear;
          sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
          sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
          sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
          sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
          sql.Add('where a.estado =:Est');
          sql.Add('and a.usuarioID =:Usua');
          params[0].Value := 1;
          params[1].Value := asignaUsuario;
          open;
        end;
        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
        begin
          if DATOS.ZTurnoCOBOSNUEVOS.Value >= DATOS.ZTurnoCUBOSUSADOS.Value then
          begin
            cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
              '\FacturaTicket' + '.fr3';
            prncopia.LoadFromFile(cInf);
          end
          ELSE
          BEGIN

            cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
              '\FacturaTicket' + '.fr3';
            prncopia.LoadFromFile(cInf);
          END;
        end
        ELSE
        begin

          cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
            '\FacturaTicket' + '.fr3';
          prncopia.LoadFromFile(cInf);

        end;

        prncopia.variables['titulos'] := quotedstr('FACTURA');
        // PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
        men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
        prncopia.variables['mensaje1'] := quotedstr(men_pie);
        prncopia.PrepareReport(TRUE);
        prncopia.ShowReport(TRUE);

      end;

    end;
  END;

  if Fimprime.ItemIndex = 1 then
  BEGIN

    // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeContado'+'.fr3';
    // Imprime_grande.LoadFromFile(cInf);
    // Imprime_grande.variables['titulos']  :=quotedstr('FACTURA');
    // Imprime_grande.variables['cajero']   :=quotedstr(edit2.text);
    // men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
    // Imprime_grande.variables['mensaje1'] :=quotedstr(men_pie);
    //
    //
    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeContado' + '.fr3';
      ImprimeM.LoadFromFile(cInf);
    end;
    men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
    ImprimeM.variables['mensaje1'] := quotedstr(men_pie);
    ImprimeM.PrepareReport(TRUE);
    ImprimeM.ShowPreparedReport;
  end;

  if Fimprime.ItemIndex = 2 then
  BEGIN



    // Imprime_media.variables['titulos']  :=quotedstr('FACTURA');
    // Imprime_media.variables['cajero']   :=quotedstr(edit2.text);
    // men_pie                              :=datos.ZUconfiguracionMensaje_pie1.Value;
    // Imprime_media.variables['mensaje1'] :=quotedstr(men_pie);

    // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
    // begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // recibo2.variables['mensaje1'] :=quotedstr(men_pie);
    // end;
    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
        '\FacturaGrandeContado' + '.fr3';
      ImprimeM.LoadFromFile(cInf);
    end;
    men_pie := DATOS.ZUconfiguracionMensaje_pie1.Value;
    ImprimeM.variables['mensaje1'] := quotedstr(men_pie);
    ImprimeM.PrepareReport(TRUE);
    ImprimeM.ShowPreparedReport;
  end;

  panelcobro.Visible := FALSE;
  Edit2.clear;
  Edit3.clear;
  DATOS.FbqMaster_Fact.close;
  DATOS.ZDETALLE.close;
  DATOS.ncf.close;
  ncf.close;
  cxButton5.Enabled := FALSE;

  frmtouch.Cancelar;
  // panel5.Visible := false;
  // control := 0;

  close;

end;

procedure TFrmCobro.printdirecto;
begin
  // TODO 5 -oIasa -cEmpty Code Block: TFrmCobro.printdirecto (begin/end in procedure)
end;

procedure TFrmCobro.PTarjetasPropertiesChange(Sender: TObject);
begin
  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactDEVOLUCION.Value :=
    (PEfectivo.Value + PTarjetas.Value + PCheques.Value + Pbonos.Value) -
    DATOS.FbqMaster_FactMONTOPAGO.Value;
end;

procedure TFrmCobro.P_invenatrio;
var
  canfra: Integer;
begin

  DATOS.ZInventario.open;

  with DATOS.ZDETALLE do
  begin
    open;
    while not Eof do
    begin
      canfra := 0;
      // ShowMessage(''+ datos.ZdetalleCOMBO.Value );
      if DATOS.ZdetalleCOMBO.Value = 'UNI' then
      BEGIN
        // ShowMessage('');
        with DATOS.MantArt do
        begin
          close;
          sql.clear;
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
          params[0].Value := DATOS.Zdetallearticuloid.Value;
          open;
        end;

        if DATOS.MantArtOPCIONES_BOLA.Value = 'Si' then
        begin

          with DATOS.QCodMin do
          begin
            close;
            sql.clear;
            sql.Add('select * from SP_EQMINIMO(:no)');
            params[0].Value := DATOS.Zdetallearticuloid.Value;
            open;
          end;

          // ShowMessage(''+datos.qCodMinCODIGOMINIMO.text);

          with numeroinventario do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            open;
          end;

          DATOS.ZInventario.Insert;
          DATOS.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          DATOS.ZInventarioFECHA.Value := Now();
          DATOS.ZInventarioIDTIENDA.Value := AsignaTienda;
          DATOS.ZInventarioCOD_ART.Value := DATOS.qCodMinCODIGOMINIMO.Value;
          DATOS.ZInventarioCONCEPTOID.Value := 2;
          DATOS.ZInventarioCOD_USUARIO.Value := asignaUsuario;
          DATOS.ZInventarioLIN.Value := AsignaLote;

          if DATOS.ZdetalleIDALMACEN.Value = DATOS.ZUconfiguracionALMACENRMA.Value
          then
          begin
            DATOS.ZInventarioCOD_ALM.Value :=
              DATOS.ZUconfiguracionALMACENRMA.Value;
          end;

          DATOS.ZInventarioCOD_ALM.Value := 1;
          DATOS.ZInventarioSALIDA.Value := DATOS.ZdetalleCANTIDAD.Value *
            (DATOS.qCodMinCANTEMP.Value);
          DATOS.ZInventarioENTRADA.Value := 0.00;

        end
        else
        begin

          with numeroinventario do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            open;
          end;

          DATOS.ZInventario.Insert;
          DATOS.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          DATOS.ZInventarioFECHA.Value := Now();
          DATOS.ZInventarioIDTIENDA.Value := AsignaTienda;
          DATOS.ZInventarioCOD_ART.Value :=
            StrToInt(DATOS.ZdetalleCOD_ART.text);
          DATOS.ZInventarioCONCEPTOID.Value := 2;
          DATOS.ZInventarioCOD_USUARIO.Value := asignaUsuario;
          DATOS.ZInventarioLIN.Value := AsignaLote;

          if DATOS.ZdetalleIDALMACEN.Value = DATOS.ZUconfiguracionALMACENRMA.Value
          then
          begin
            DATOS.ZInventarioCOD_ALM.Value :=
              DATOS.ZUconfiguracionALMACENRMA.Value;

          end;

          DATOS.ZInventarioCOD_ALM.Value := 1;
          DATOS.ZInventarioSALIDA.Value := DATOS.ZdetalleCANTIDAD.Value;
          DATOS.ZInventarioENTRADA.Value := 0.00;
        end;
      END;

      if DATOS.ZdetalleCOMBO.Value = 'FRA' then
      BEGIN

        WITH Qfraccionado do
        begin
          close;
          sql.clear;
          sql.Add('select a.*, b.descripcion from particionado a');
          sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
          sql.Add('where a.cod_arti =:pp');
          sql.Add('and a.unidad =:pp2');
          params[0].Value := DATOS.Zdetallearticuloid.Value;
          params[1].Value := DATOS.ZdetalleUNID.Value;
          open;
        end;

        with DATOS.MantArt do
        begin
          close;
          sql.clear;
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
          params[0].Value := DATOS.Zdetallearticuloid.Value;
          open;
        end;

      end;

      with numeroinventario do
      begin
        close;
        sql.clear;
        sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
        open;
      end;

      DATOS.ZInventario.Insert;
      DATOS.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
      DATOS.ZInventarioFECHA.Value := Now();
      DATOS.ZInventarioIDTIENDA.Value := AsignaTienda;
      DATOS.ZInventarioCOD_ART.Value := StrToInt(DATOS.ZdetalleCOD_ART.text);
      DATOS.ZInventarioCONCEPTOID.Value := 2;
      DATOS.ZInventarioCOD_USUARIO.Value := asignaUsuario;
      DATOS.ZInventarioLIN.Value := AsignaLote;

      if DATOS.ZdetalleIDALMACEN.Value = DATOS.ZUconfiguracionALMACENRMA.Value
      then
      begin
        DATOS.ZInventarioCOD_ALM.Value := DATOS.ZUconfiguracionALMACENRMA.Value;

      end;

      DATOS.ZInventarioCOD_ALM.Value := 1;
      DATOS.ZInventarioSALIDA.Value :=
        (DATOS.ZdetalleCANTIDAD.Value * QfraccionadoCOD_PART.Value);
      DATOS.ZInventarioENTRADA.Value := 0.00;

      if DATOS.ZdetalleCOMBO.Value = 'OFE' then
      BEGIN

        WITH DATOS.ZCombo do
        begin
          close;
          sql.clear;
          sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
          sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
          sql.Add('where a.MACOMBODI =:pp');
          params[0].Value := DATOS.Zdetallearticuloid.Value;
          open;

          First;
          while not Eof do
          begin

            with numeroinventario do
            begin
              close;
              sql.clear;
              sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
              open;
            end;

            DATOS.ZInventario.Insert;
            DATOS.ZInventarioMINVENTARIOID.Value :=
              numeroinventarioGEN_ID.Value;
            DATOS.ZInventarioFECHA.Value := Now();
            DATOS.ZInventarioIDTIENDA.Value := AsignaTienda;
            DATOS.ZInventarioCOD_ART.Value := DATOS.ZComboCOD_ART.Value;
            DATOS.ZInventarioCONCEPTOID.Value := 2;
            DATOS.ZInventarioCOD_USUARIO.Value := asignaUsuario;
            DATOS.ZInventarioLIN.Value := AsignaLote;

            if DATOS.ZdetalleIDALMACEN.Value = DATOS.ZUconfiguracionALMACENRMA.Value
            then
            begin
              DATOS.ZInventarioCOD_ALM.Value :=
                DATOS.ZUconfiguracionALMACENRMA.Value;

            end;

            DATOS.ZInventarioCOD_ALM.Value := 1;
            DATOS.ZInventarioSALIDA.Value := DATOS.ZComboCANTIDAD.Value;
            DATOS.ZInventarioENTRADA.Value := 0.00;
            Next;
          end;
        end;
      END;

      Next;
    end;

  end;

  DATOS.ZInventario.ApplyUpdates;
end;

procedure TFrmCobro.actualizacopia(no_fact: Integer; fecha_fac: TDateTime;
  tipo: string; monto: currency; montopago: currency; no_fact1: string);
begin

  with qactualizacopia do
  begin
    close;
    sql.clear;
    sql.Add('insert into Master_fact1 (no_fact, fecha_fac, tipo, monto, montopago, no_fact1)');
    sql.Add('values (:no_fact1, :fecha_fac1, :tipo1, :monto1, :montopago1, :no_fact2)');
    params[0].Value := no_fact;
    params[1].Value := fecha_fac;
    params[2].Value := tipo;
    params[3].Value := monto;
    params[4].Value := montopago;
    params[5].Value := no_fact1;
    ExecSQL;
  end;

end;

procedure TFrmCobro.ActualizaReciboCXC;
begin

  with MaxRecibo do
  begin
    close;
    open;
  end;

  DATOS.Zrecibo_pago.open;
  DATOS.Zrecibo_pago.Insert;
  DATOS.Zrecibo_pagono_recibo1.Value := MaxReciboNUMERO.Value + 1;
  DATOS.Zrecibo_pagoUSUARIOID.Value := asignaUsuario;
  DATOS.Zrecibo_pagoIDTURNO.Value := AsignaTurno;
  // showmessage(''+IntToStr(datos.Zrecibo_pagono_recibo1.Value));
  DATOS.Zrecibo_pagono_recibo.Value := '000' +
    IntToStr(DATOS.Zrecibo_pagono_recibo1.Value);
  DATOS.Zrecibo_pagofecha.Value := Now();
  DATOS.Zrecibo_pagotipo.Value := 'EFECTIVO';

  DATOS.Zrecibo_pagoCLIENTEID.Value := IbqClientesCODIGO.Value;
  DATOS.Zrecibo_pagoMONTO.Value := DATOS.FbqMaster_FactABONO.Value;
  DATOS.Zrecibo_pagoNOMBRE_CLIENTE.Value := IbqClientesNOMBRES.Value;
  DATOS.Zrecibo_pagoDESCRIPCION.Value := 'Pago(s) a la(s) Factura(s) #' +
    DATOS.FbqMaster_FactNO_FACT.text;
  DATOS.Zrecibo_pagoLETRAS1.Value := Num2Words(DATOS.Zrecibo_pagoMONTO.Value);
  DATOS.Zrecibo_pago.ApplyUpdates;

end;

procedure TFrmCobro.B6Click(Sender: TObject);
begin
  if total.Value = 0.00 then
  begin
    ShowMessage('Esta hay total facturado para aplicar descuento');
  end
  else
  begin

    PanelDesc.Visible := TRUE;
  end;
end;

procedure TFrmCobro.cobrarFact;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
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
  // FrmNFact_normal.BtBuscarPedido.Enabled := true;

  if (DATOS.ZUconfiguracionTerminal.Value = 'Normal') then
  begin

    pagoNormal;

  end;

  if DATOS.ZUconfiguracionTerminal.Value = 'Pizzeria' then
  begin

    pagopizza;

  end;

  if DATOS.ZUconfiguracionTerminal.Value = 'Touch' then
  begin

    pagotouch;

  end;

  if DATOS.ZUconfiguracionTerminal.Value = 'Supermerca' then
  begin

    PagoSupermercado;

  end;

end;

procedure TFrmCobro.cobrarFact1;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: Integer;
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
  // FrmNFact_normal.BtBuscarPedido.Enabled := true;

  if DATOS.ZUconfiguracionTerminal.Value = 'Normal' then
  begin
    pagoNormalCredito;
  end;

  if DATOS.ZUconfiguracionTerminal.Value = 'Pizzeria' then
  begin
    pagoPizzaCredito;
  end;

  if DATOS.ZUconfiguracionTerminal.Value = 'Supermerca' then
  begin
    PagoSupermercadoCredito;
  end;

end;

procedure TFrmCobro.cxButton3Click(Sender: TObject);
begin

  DATOS.FbqMaster_Fact.Edit;
  // datos.FbqMaster_FactPOGXITBS.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  // datos.FbqMaster_FactMONTO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0] - cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  DATOS.FbqMaster_FactDESCUENTO.Value := DATOS.FbqMaster_FactMONTO.Value *
    (desc.Value / 100);
  DATOS.FbqMaster_FactMONTOPAGO.Value := DATOS.FbqMaster_FactMONTOPAGO.Value -
    DATOS.FbqMaster_FactDESCUENTO.Value;

  // datos.FbqMaster_FactMONTO.Value     := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
  // datos.FbqMaster_FactPOGXITBS.Value  := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
  // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value + datos.FbqMaster_FactPOGXITBS.Value) - datos.FbqMaster_Factdescuento.Value;

  desc.clear;
  cxTextEdit1.clear;
  PanelDesc.Visible := FALSE;

end;

procedure TFrmCobro.cxButton4Click(Sender: TObject);
begin

  if opradio.ItemIndex = 0 then
  begin

    FORMAPAGO.Visible := FALSE;
  end;

  if opradio.ItemIndex = 1 then
  begin
    DATOS.FbqMaster_FactESTADOPAGO.Value := 'T.CREDITO';
    FORMAPAGO.Visible := TRUE;
    FORMAPAGO.ActivePageIndex := 0;

  end;

  if opradio.ItemIndex = 2 then
  begin
    DATOS.FbqMaster_FactESTADOPAGO.Value := 'T.DEBITO';
    FORMAPAGO.Visible := TRUE;
    FORMAPAGO.ActivePageIndex := 1;
  end;

  if opradio.ItemIndex = 2 then
  begin
    DATOS.FbqMaster_FactESTADOPAGO.Value := 'CHK';
    FORMAPAGO.Visible := TRUE;
    FORMAPAGO.ActivePageIndex := 2;

  end;

  DATOS.FbqMaster_Factcajeroid.Value := DATOS.ZqUsuariosUSUARIOID.Value;

  if DATOS.FbqMaster_FactTIPO.Value = 'Contado' then
  begin
    DATOS.FbqMaster_Factquees.Value := 'NO';
  end;

  if DATOS.FbqMaster_FactTIPO.Value = 'CREDITO' then
  begin
    DATOS.FbqMaster_Factquees.Value := 'PENDIENTE';
  end;


  // panelcobro.Visible := true;


  // cxButton5.click;



  // cxButton5.Enabled := true;

end;

procedure TFrmCobro.cxButton5Click(Sender: TObject);
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;

begin

  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactEFECTIVO.Value := PEfectivo.Value + PCheques.Value +
    PTarjetas.Value + Pbonos.Value;
  DATOS.FbqMaster_FactVEFECTIVA.Value := PEfectivo.Value;
  DATOS.FbqMaster_FactDEVOLUCION.Value :=
    (PEfectivo.Value + PTarjetas.Value + PCheques.Value + Pbonos.Value) -
    DATOS.FbqMaster_FactMONTOPAGO.Value;

  if (DATOS.FbqMaster_FactEFECTIVO.Value < DATOS.FbqMaster_FactMONTOPAGO.Value)
    and (DATOS.FbqMaster_FactTIPO.Value = 'Contado') then
  begin

    ShowMessage(' Valor a Pagar no Corresponde con el Total Facturado ');

  END;

  if (DATOS.FbqMaster_FactEFECTIVO.Value >= DATOS.FbqMaster_FactMONTOPAGO.Value)
    and (DATOS.FbqMaster_FactTIPO.Value = 'Contado') then
  begin

    cobrarFact;

  END;

  if (DATOS.FbqMaster_FactEFECTIVO.Value < DATOS.FbqMaster_FactMONTOPAGO.Value)
    and (DATOS.FbqMaster_FactTIPO.Value = 'CREDITO') then
  begin

    cobrarFact1;
  END;

  if (DATOS.FbqMaster_FactEFECTIVO.Value >= DATOS.FbqMaster_FactMONTOPAGO.Value)
    and (DATOS.FbqMaster_FactTIPO.Value = 'CREDITO') then
  begin
    MsgPrecaucion
      ('!!Recomendación!!, con el monto aplicado, esta factura debe generarse al contado');
  END;






  // if (datos.FbqMaster_FactEFECTIVO.Value <= 0.00) and (datos.FbqMaster_Facttipo.Value ='CREDITO') then
  // begin
  // Showmessage(' Valor a Pagar no Corresponde con el total facturado ');
  //
  // end else begin
  // cobrarFact;
  //
  // end;

end;

procedure printdirect;
var
  cont, numpag, i: Integer;
  arq: TextFile;
  fechaFA: tdate;
  horaFA: ttime;
  canfra: double;
  cero1: string;
  nume: Integer;

  r: TRect;
  longitud, campoD, campoC1, campoC2, campol, campof: string;
  DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2: string;
  PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, men_pie: string;

begin

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

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    DATOS.ZUconfiguracion.FieldByName('TEXINICIAR').Value);
  // WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
  // WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,
    StrToInt(longitud)));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString('TEL. :' + DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value
    + '/  RNC:' + DATOS.ZUconfiguracion.FieldByName('RNC').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('C O P I A',StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('NCF:' + DATOS.FbqMaster_Fact.FieldByName('NCF')
    .asString), StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(MyTextReplace('P E D I D O'), StrToInt(longitud)));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('FECHA : ' + DATETOSTR(fechaFA) + '    ' + 'HORA: ' +
    TIMETOSTR(horaFA)), StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('No Fact: ' + DATOS.FbqMaster_Fact.FieldByName
    ('numero_factura').asString), StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('---------------------------------------', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('CLIENTE  :' + DATOS.FbqMaster_Fact.FieldByName
    ('NOMBRECLIENTE_PRN').Value), StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(' ', StrToInt(longitud), 0));
  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('DESCRIPCION', StrToInt(campol), 0) + espacios('CANT',
    StrToInt(campoC1), 0) + espacios('PRECIO', StrToInt(campoC2), 0) +
    espacios('VALOR', StrToInt(campoD), 0) + espacios('', StrToInt(campof), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('-------------------------------------', StrToInt(longitud), 0));

  with DATOS.ZDETALLE do
  begin
    First;
    while not Eof do
    begin

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
        espacios(copy(MyTextReplace(DATOS.ZDETALLE.FieldByName('TITULOPRN')
        .asString), 1, StrToInt(longitud)), StrToInt(longitud), 0));
      // +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

      if DATOS.ZdetalleCANTIDAD.Value > 1.00 then
      begin

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(MyTextReplace(DATOS.ZDETALLE.FieldByName('UNID')
          .asString), StrToInt(Dcampol), 0) + '' +
          espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('cantidad').Value) + ' @',
          StrToInt(DcampoC1), 0) + '' + espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('precio').Value), StrToInt(DcampoC2), 1) +
          '' + espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('total').Value), StrToInt(DcampoD), 1) + ''
          + espacios('', StrToInt(Dcampof), 0));

      end
      else
      begin

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO')
          .Value, espacios(MyTextReplace(DATOS.ZDETALLE.FieldByName('UNID')
          .asString), StrToInt(Dcampol), 0) + '' +
          espacios(FormatFloat('#,##0.00',
          DATOS.ZDETALLE.FieldByName('cantidad').Value) + ' @',
          StrToInt(DcampoC1), 0) + '' + espacios('', StrToInt(DcampoC2), 1) + ''
          + espacios(FormatFloat('#,##0.00', DATOS.ZDETALLE.FieldByName('total')
          .Value), StrToInt(DcampoD), 1) + '' + espacios('',
          StrToInt(Dcampof), 0));

      END;

      // +' '+
      // espacios(MyTextReplace(DATOS.ZDETALLE.FieldByName('ARTICULO').AsString),17,0)+' '+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').Value),5,1)+' '+
      // espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),20,1));
      Next;
    end;
  end;

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('---------------------------------------', StrToInt(longitud), 0));

  if not DATOS.FbqMaster_Fact.FieldByName('MONTO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00', DATOS.FbqMaster_Fact.FieldByName('MONTO')
      .Value), StrToInt(PcampoD), 1) + espacios('', StrToInt(Dcampof), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('SUB-TOTAL:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) + espacios('',
      StrToInt(Dcampof), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('descuento').Value), StrToInt(PcampoD),
      1) + espacios('', StrToInt(Dcampof), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('DESCUENTO:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(DcampoD), 1) + espacios('',
      StrToInt(Dcampof), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('POGXITBS').Value), StrToInt(PcampoD), 1)
      + espacios('', StrToInt(Dcampof), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('ITBIS:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) + espacios('',
      StrToInt(Dcampof), 1));

  if not DATOS.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('MONTOPAGO').Value), StrToInt(PcampoD),
      1) + espacios('', StrToInt(Dcampof), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('TOTAL:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) + espacios('',
      StrToInt(Dcampof), 1));

  // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

  if not DATOS.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('EFECTIVO').Value), StrToInt(PcampoD), 1)
      + espacios('', StrToInt(Dcampof), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('EFECTIVO:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) + espacios('',
      StrToInt(Dcampof), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('bonos').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('BONOS:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00', DATOS.FbqMaster_Fact.FieldByName('BONOS')
      .Value), StrToInt(PcampoD), 1) + espacios('', StrToInt(Dcampof), 1));
  if not DATOS.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00',
      DATOS.FbqMaster_Fact.FieldByName('DEVOLUCION').Value), StrToInt(PcampoD),
      1) + espacios('', StrToInt(Dcampof), 1))
  else
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
      espacios('CAMBIO:', StrToInt(Pcampol), 1) +
      espacios(FormatFloat('#,##0.00', 0), StrToInt(PcampoD), 1) + espacios('',
      StrToInt(Dcampof), 1));

  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios(MyTextReplace('' + DATOS.FbqMaster_FactCAJA.text + '      ' +
    'CAJERO: ' + DATOS.FbqMaster_FactNOMBRES_EMP.text), StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('---------------------------------------', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,
    StrToInt(longitud)));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));
  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,
    espacios('', StrToInt(longitud), 0));

  with Printer do
  begin

    PrinterIndex := GetImpresora(DATOS.ZUconfiguracion.FieldByName
      ('CONTACTO').Value);
    r := Rect(100, 100, (Pagewidth - 100), (PageHeight - 100));
    BeginDoc;
    Canvas.Brush.Style := bsClear;
    // for i := 0 to Memo2.Lines.Count do
    // Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo2.Lines.Strings[i])),
    // Memo2.Lines.Strings[i]);
    Canvas.Brush.Color := clBlack;

    EndDoc;
  end;

  FrmNFact_normal.cxButton37.Enabled := TRUE;
end;

procedure TFrmCobro.cxButton7Click(Sender: TObject);
var
  cero1: string;
  nume: Integer;
  SUMA, ITBS: currency;
begin

  if IbqClientesCEDULA.Value = '' then
  begin
    MsgError('Este Cliente no tiene RNC'#13 + 'Favor Actualizar Datos');
  end
  else
  begin

    if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
    begin
      try

        DATOS.FbqMaster_Fact.Edit;
        DATOS.FbqMaster_FactRNC_CLIENTE.Value := IbqClientesCEDULA.Value;

        with ncf do
        begin
          close;
          sql.clear;
          sql.Add('select * from ncf');
          sql.Add('where tipo =:tipo');

          if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Fiscal' then
          begin
            params[0].Value := 'FISCAL';
            Edit3.text := 'VALIDO PARA CONSUMIDOR FISCAL'
          end;

          if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental' then
          begin
            params[0].Value := 'GOB';
            Edit3.text := 'VALIDO PARA CONSUMO GUBERNAMENTAL'
          end;

          if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
          begin
            params[0].Value := 'FINAL';
            Edit3.text := 'VALIDO PARA CONSUMIDOR FINAL'
          end;

          open;
        end;

        nume := ncfDESDE.Value + ncfUSO.Value;

        if nume >= 1 then
        begin
          cero1 := '000';
        end;

        if nume >= 10 then
        begin
          cero1 := '00';
        end;

        if nume >= 100 then
        begin
          cero1 := '0';
        end;

        if nume >= 1000 then
        begin
          cero1 := '';
        end;

        DATOS.FbqMaster_Fact.Edit;
        DATOS.FbqMaster_FactNCF.Value := ncfNUNTEXT.Value + cero1 +
          IntToStr(nume);

      finally
        // TODO 5 -oIasa -cEmpty Code Block: TFrmCobro.cxButton7Click (finally/end in procedure)
      end;

    end;

  end;
end;

procedure TFrmCobro.PagoSupermercadoCredito;
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: Integer;
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

  DATOS.FbqMaster_Fact.Edit;

  with NUMERO1 do
  begin
    close;
    sql.clear;
    sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
    open;
  end;

  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactNUMERO_FACTURA.Value := NUMERO1GEN_ID.Value;
  DATOS.fbqMaster_factsituacion.text := 'IMPRESA';
  DATOS.FbqMaster_FactCONDICION.text := 'ACTIVA';
  DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
  DATOS.FbqMaster_Factterminal.text := 'FACTURACION';

  DATOS.FbqMaster_FactPAGOXEFECTIVO.Value := PEfectivo.Value;
  DATOS.FbqMaster_FactPAGOXCHEQUE.Value := PCheques.Value;
  DATOS.FbqMaster_FactPAGOXTARJETA.Value := PTarjetas.Value;
  DATOS.FbqMaster_FactPAGOXBONO.Value := Pbonos.Value;
  DATOS.FbqMaster_FactABONO.Value := PEfectivo.Value + PCheques.Value +
    PTarjetas.Value + Pbonos.Value;

  DATOS.FbqMaster_FactPENDIENTE.Value := DATOS.FbqMaster_FactMONTOPAGO.Value -
    DATOS.FbqMaster_FactABONO.Value;
  DATOS.FbqMaster_Factcajeroid.Value := asignaUsuario;
  DATOS.FbqMaster_FactTIENDAID.Value := AsignaTurno;
  DATOS.FbqMaster_FactFECHA_FAC.Value := Now();

  if IbqClientesCONDICION.Value = '15 Días' then
  begin
    diascondicioncredito := 15;
  end;

  if IbqClientesCONDICION.Value = '30 Días' then
  begin
    diascondicioncredito := 30;
  end;

  if IbqClientesCONDICION.Value = '45 Días' then
  begin
    diascondicioncredito := 45;
  end;

  if IbqClientesCONDICION.Value = '60 Días' then
  begin
    diascondicioncredito := 60;
  end;

  DATOS.FbqMaster_FactFECHAVENCIMIENTO.Value :=
    IncDay(DATOS.FbqMaster_FactFECHA_FAC.AsDateTime, diascondicioncredito);

  // ****** Actualiza Balance de Credito Cliente *-****
  with UpCredito do
  begin
    close;
    sql.clear;
    sql.Add('update cliente set Musados =:Musado, balance =:balance ');
    sql.Add('where codigo =:codigo');
    params[0].Value := IbqClientesMUSADOS.Value +
      (DATOS.FbqMaster_FactMONTOPAGO.Value - DATOS.FbqMaster_FactABONO.Value);
    params[1].Value := IbqClientesCREDITOLIMITE.Value -
      (IbqClientesMUSADOS.Value + (DATOS.FbqMaster_FactMONTOPAGO.Value -
      DATOS.FbqMaster_FactABONO.Value));
    params[2].Value := IbqClientesCODIGO.Value;
    ExecSQL;
  end;

  ActualizaReciboCXC;



  // **************************************************

  if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
  begin
    try

      DATOS.FbqMaster_Fact.Edit;
      DATOS.FbqMaster_FactRNC_CLIENTE.Value := IbqClientesCEDULA.Value;

      with DATOS.ncf do
      begin
        close;
        sql.clear;
        sql.Add('select * from ncf');
        sql.Add('where nuNtext =:tipo');
        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal' then
        begin
          params[0].Value := 'B01';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF_Fiscal do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_USO_CF, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_FiscalGEN_ID.Value;

        end;

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental' then
        begin
          params[0].Value := 'B15';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF_GOB do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_GOB, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_GOBGEN_ID.Value;

        end;

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
        begin
          params[0].Value := 'B02';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_USO, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCFGEN_ID.Value;

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

      DATOS.FbqMaster_Fact.Edit;
      DATOS.FbqMaster_FactNCF.Value := DATOS.ncfNUNTEXT.Value + cero1 +
        IntToStr(nume);
      DATOS.FbqMaster_FactNCF_NOMBRE.Value := DATOS.NCFTITULO.Value;
      DATOS.fbqMaster_FactFecha_final.Value := DATOS.NCFFECHA_VENC.Value;
      DATOS.FbqMaster_FactFECHA_FAC.Value := Now();

      DATOS.ncf.Edit;
      DATOS.ncfUSO.Value := nume;
      DATOS.ncf.ApplyUpdates;

    finally
      // TODO 5 -oIasa -cEmpty Code Block: TFrmCobro.cobrarFact1 (finally/end in procedure)
    end;
  end;

  if DATOS.ZUconfiguracionINSERTARSERIAL.Value = 1 then
  begin
    DATOS.Series.ApplyUpdates;
  end;

  P_invenatrio;

  try
    DATOS.FbqMaster_Fact.Edit;
    DATOS.FbqMaster_Fact.ApplyUpdates;
    DATOS.ZDETALLE.ApplyUpdates;
    DATOS.Data.Commit;

    cxButton5.Enabled := FALSE;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Error', MB_ICONSTOP);
  end;

  with DATOS.FbqMaster_Fact do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := StrToInt(Edit1.text);
    open;
  end;

  with DATOS.ZDETALLE do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
    sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with CUANTOS do
  begin
    close;
    sql.clear;
    sql.Add('select COUNT(NO_FACT)from detailfact');
    sql.Add('where masterid =:ppp');
    params[0].Value := DATOS.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  with Antiguedad do
  begin
    close;
    sql.clear;
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
    params[3].Value := DATOS.FbqMaster_FactCLIENTEID.Value;
    params[4].Value := 'CREDITO';
    open;
  end;

  with QBalanceCreditoCliente do
  begin
    close;
    sql.clear;
    sql.Add('select balance, musados from cliente');
    sql.Add('where codigo =:opp');
    params[0].Value := DATOS.FbqMaster_FactCLIENTEID.Value;
    open;
  end;

  with DATOS.Series do
  begin
    close;
    // params[0].Value := datos.ZdetalleARTICULOID.Value;
    // params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;

  if Fimprime.ItemIndex = 0 then
  BEGIN

    if Tipoimpresion = 'D' then
    begin
      if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
      begin

        if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
          Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin
          imprimirtikectCredito;
          imprimirtikectCredito;
        end;
      end
      else
      begin
        imprimirtikectCredito;
        imprimirtikectCredito;
      end;

    end
    else
    begin

      // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketC'+'.fr3';
      // recibo3.LoadFromFile(cInf);

      if DATOS.ZUconfiguracionIMPRIMEOPCIONAL.Value = 'SI' then
      begin

        if Application.MessageBox('Deseas Imprimir Este TICKET', 'Precausion',
          Mb_YesNo + MB_ICONQUESTION) = Id_yes then
        begin

          if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
          begin
            cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
              '\FacturaTicket' + '.fr3';
            Recibo3.LoadFromFile(cInf);
          end
          else
          begin
            cInf := DATOS.ZUconfiguracionROTULO_FC.Value +
              '\FacturaTicketN' + '.fr3';
            Recibo3.LoadFromFile(cInf);

          end;

          Recibo3.variables['titulos'] := quotedstr('FACTURA');
          Recibo3.variables['cajero'] := quotedstr(Edit2.text);

          men_pie := DATOS.ZUconfiguracionMensaje_pie2.Value;
          Recibo3.variables['mensaje1'] := quotedstr(men_pie);

          // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);
          Recibo3.PrepareReport(TRUE);
          Recibo3.print;
        end;
      end;
    END;

  END;

  if Fimprime.ItemIndex = 1 then
  BEGIN


    // cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrande_C'+'.fr3';
    // Imprimirmc.LoadFromFile(cInf);

    if DATOS.ZUconfiguracionUSAR_CF.Value = 'SI' then
    begin
      cInf := DATOS.ZUconfiguracionROTULO_FC.Value + '\FacturaGrande_C'
        + '.fr3';
      ImprimirMC.LoadFromFile(cInf);
    end;
    ImprimirMC.variables['titulos'] := quotedstr('FACTURA');
    ImprimirMC.variables['cajero'] := quotedstr(Edit2.text);
    men_pie := DATOS.ZUconfiguracionMensaje_pie2.Value;
    ImprimirMC.variables['mensaje1'] := quotedstr(men_pie);


    // if datos.FbqMaster_Facttipo.Value ='CREDITO' then
    // begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // recibo2.variables['mensaje1'] :=quotedstr(men_pie);
    // end;

    ImprimirMC.PrepareReport(TRUE);
    ImprimirMC.ShowPreparedReport;
  end;
  panelcobro.Visible := FALSE;
  Edit2.clear;
  Edit3.clear;
  DATOS.FbqMaster_Fact.close;
  DATOS.ZDETALLE.close;
  DATOS.ncf.close;
  ncf.close;
  cxButton5.Enabled := FALSE;

  close;

end;

procedure TFrmCobro.PbonosPropertiesChange(Sender: TObject);
begin
  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactDEVOLUCION.Value :=
    (PEfectivo.Value + PTarjetas.Value + PCheques.Value + Pbonos.Value) -
    DATOS.FbqMaster_FactMONTOPAGO.Value;

end;

procedure TFrmCobro.PChequesPropertiesChange(Sender: TObject);
begin
  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactDEVOLUCION.Value :=
    (PEfectivo.Value + PTarjetas.Value + PCheques.Value + Pbonos.Value) -
    DATOS.FbqMaster_FactMONTOPAGO.Value;

end;

procedure TFrmCobro.PEfectivoEnter(Sender: TObject);
begin
  cxButton5.Enabled := TRUE;
  PEfectivo.Style.Color := clyellow;
end;

procedure TFrmCobro.PEfectivoExit(Sender: TObject);
begin
  // PEfectivo.Style.Color := clwhite;
  // DATOS.FbqMaster_Fact.Edit;
  // datos.FbqMaster_FactEFECTIVO.Value := PEfectivo.Value;
  // datos.FbqMaster_FactESTADOPAGO.Value     := 'EFECTIVO';

end;

procedure TFrmCobro.PEfectivoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    cxButton5.click;
  end;
end;

procedure TFrmCobro.PEfectivoPropertiesChange(Sender: TObject);
begin
  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactDEVOLUCION.Value :=
    (PEfectivo.Value + PTarjetas.Value + PCheques.Value + Pbonos.Value) -
    DATOS.FbqMaster_FactMONTOPAGO.Value;
end;

procedure TFrmCobro.cxCurrencyEdit2PropertiesChange(Sender: TObject);
begin
  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactDEVOLUCION.Value :=
    (PEfectivo.Value + cxCurrencyEdit2.Value) -
    DATOS.FbqMaster_FactMONTOPAGO.Value;
end;

procedure TFrmCobro.cxDBCurrencyEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    cxButton5.Enabled := TRUE;
    // cxButton5.click;
    if DATOS.FbqMaster_FactEFECTIVO.Value >= DATOS.FbqMaster_FactMONTOPAGO.Value
    then
    begin
      DATOS.FbqMaster_Fact.Edit;
      DATOS.FbqMaster_FactDEVOLUCION.Value := DATOS.FbqMaster_FactEFECTIVO.Value
        - DATOS.FbqMaster_FactMONTOPAGO.Value;

    end;

    if DATOS.FbqMaster_FactEFECTIVO.Value < DATOS.FbqMaster_FactMONTOPAGO.Value
    then
    begin
      MsgError('El valor del efectivo es menor que el monto facturado'#13 +
        'Favor revisar efectivo');
      // cxDBCurrencyEdit4.Clear;
      // cxDBCurrencyEdit4.SetFocus;
    end;
  end;
end;

procedure TFrmCobro.cxDBCurrencyEdit5PropertiesChange(Sender: TObject);
begin

  // if cxDBCurrencyEdit5.Value < 0.00 then
  // begin
  // cxDBCurrencyEdit5.Style.Color := clred;
  // end else begin
  // cxDBCurrencyEdit5.Style.Color := clyellow;
  // end;

end;

procedure TFrmCobro.cxImage1Click(Sender: TObject);
begin
  PC.ActivePageIndex := 0;
  PEfectivo.SetFocus;
end;

procedure TFrmCobro.cxImage5Click(Sender: TObject);
begin
  PC.ActivePageIndex := 1;
  cxCurrencyEdit4.SetFocus;
  cxCurrencyEdit4.Value := cxDBCurrencyEdit2.Value;
end;

procedure TFrmCobro.cxImage6Click(Sender: TObject);
begin
  PC.ActivePageIndex := 2;
  cxCurrencyEdit5.SetFocus;
end;

procedure TFrmCobro.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    DATOS.ZUconfiguracion.open;
    if cxTextEdit1.text = DATOS.ZUconfiguracionCLAVEAUTORIZACION.Value then
    begin
      desc.Enabled := TRUE;
      desc.SetFocus;
    end
    else
    begin
      MsgError('Usted no esta autorizado para relaizar esa operación'#13 +
        'Favor consultar con el Administrador');
      cxTextEdit1.clear;
      PanelDesc.Visible := FALSE;

    end;
  end;
end;

procedure TFrmCobro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmCobro := nil;
  Action := caFree;
end;

procedure TFrmCobro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    // cxDBCurrencyEdit4.Clear;
    cxDBCurrencyEdit5.clear;
    cxButton5.Enabled := FALSE;
    panelcobro.Visible := FALSE;

    PanelDesc.Visible := FALSE;

  end;
end;

procedure TFrmCobro.FormShow(Sender: TObject);
begin

  pcOpcion.HideTabs := TRUE;
  with IbqClientes do
  begin
    close;
    sql.clear;
    sql.Add('select * from cliente');
    sql.Add('where codigo =:ppp');
    params[0].Value := cxDBSpinEdit1.Value;
    open;
  end;

  Edit1.text := DATOS.FbqMaster_FactNO_FACT.text;
  // edit2.Text := datos.ZqUsuariosNOMBRES_EMP.Value;

  if (DATOS.ZUconfiguracionTerminal.Value = 'Normal') or
    (DATOS.ZUconfiguracionTerminal.Value = 'Supermerca') then
  begin

    Fimprime.Visible := TRUE;
    Fimprime.ItemIndex := 0;
  end;

  if DATOS.ZUconfiguracionTerminal.Value = 'Pizzeria' then
  begin
    Fimprime.Visible := TRUE;
    // Fimprime.ItemIndex := 0;
  end;

  if DATOS.ZUconfiguracionTerminal.Value = 'Touch' then
  begin
    Fimprime.Visible := TRUE;
    Fimprime.ItemIndex := 0;
  end;

  opradio.ItemIndex := 0;
  // RxDBComboBox2.ItemIndex := 1;

  if Edit6.text = 'EFECTIVO' then
  BEGIN
    PEfectivo.Value := DATOS.FbqMaster_FactMONTOPAGO.Value;
    cxCurrencyEdit2.Value := DATOS.FbqMaster_FactMONTOPAGO.Value;
    PEfectivo.Enabled := TRUE;
    PEfectivo.SetFocus;
    if DATOS.ZUconfiguracionTerminal.Value = 'Pizzeria' then
    begin
      PTarjetas.Enabled := TRUE;
      PCheques.Enabled := TRUE;
      Pbonos.Enabled := TRUE;
    end
    else
    begin
      PTarjetas.Enabled := FALSE;
      PCheques.Enabled := FALSE;
      Pbonos.Enabled := FALSE;
    end;
  END;

  if Edit6.text = 'TARJETA' then
  BEGIN
    PTarjetas.Value := DATOS.FbqMaster_FactMONTOPAGO.Value;
    cxCurrencyEdit2.Value := DATOS.FbqMaster_FactMONTOPAGO.Value;
    PEfectivo.Enabled := FALSE;
    PTarjetas.Enabled := TRUE;
    PTarjetas.SetFocus;
    PCheques.Enabled := FALSE;
    Pbonos.Enabled := FALSE;
  END;

  if Edit6.text = 'MIXTO' then
  BEGIN
    PEfectivo.Value := DATOS.FbqMaster_FactMONTOPAGO.Value;
    cxCurrencyEdit2.Value := DATOS.FbqMaster_FactMONTOPAGO.Value;
    PEfectivo.Enabled := TRUE;
    PEfectivo.SetFocus;
    PTarjetas.Enabled := TRUE;
    PCheques.Enabled := TRUE;
    Pbonos.Enabled := TRUE;
  END;

  if Edit6.text = 'CREDITO' then
  BEGIN
    PEfectivo.Value := DATOS.FbqMaster_FactMONTOPAGO.Value;
    cxCurrencyEdit2.Value := DATOS.FbqMaster_FactMONTOPAGO.Value;
    PEfectivo.Enabled := TRUE;
    PEfectivo.SetFocus;
    PTarjetas.Enabled := FALSE;
    PCheques.Enabled := FALSE;
    Pbonos.Enabled := FALSE;

  END;

  DATOS.FbqMaster_Fact.Edit;

  if DATOS.ZUconfiguracionIMPRESIONDEFECTO.Value = 'Ticket' then
  begin
    Fimprime.ItemIndex := 0;
  end;

  if DATOS.ZUconfiguracionIMPRESIONDEFECTO.Value = '(8.5 x 11)' then
  begin
    Fimprime.ItemIndex := 1;
  end;

  if DATOS.ZUconfiguracionIMPRESIONDEFECTO.Value = '(8.5 x 5.5)' then
  begin
    Fimprime.ItemIndex := 1;
  end;

  cxButton5.Enabled := TRUE;

end;

procedure TFrmCobro.GeneraComprobante;
var
  nume: Integer;
  cero1: string;
begin
  if DATOS.FbqMaster_FactNOMBREDELDR.Value <> 'Ninguno' then
  begin
    try

      DATOS.FbqMaster_Fact.Edit;
      DATOS.FbqMaster_FactRNC_CLIENTE.Value := IbqClientesCEDULA.Value;

      with DATOS.ncf do
      begin
        close;
        sql.clear;
        sql.Add('select * from ncf');
        sql.Add('where nuNtext =:tipo');

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Credito Fiscal' then
        begin
          params[0].Value := 'B01';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF_Fiscal do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_USO_CF, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_FiscalGEN_ID.Value;

        end;

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Gubernamental' then
        begin
          params[0].Value := 'B15';
          Edit3.text := DATOS.NCFTITULO.Value;
          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

          with NumNCF_GOB do
          begin
            close;
            sql.clear;
            sql.Add('select gen_id(GEN_NCF_GOB, 1) from RDB$DATABASE');
            open;
          end;

          nume := NumNCF_GOBGEN_ID.Value;

        end;

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
        begin

          with DATOS.ZTurno do
          begin
            close;
            sql.clear;
            sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
            sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
            sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
            sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
            sql.Add('where a.estado =:Est');
            sql.Add('and a.usuarioID =:Usua');
            params[0].Value := 1;
            params[1].Value := asignaUsuario;
            open;
          end;

          if DATOS.ZUconfiguracionTerminal.Value = 'Touch' then
          begin

            if DATOS.ZTurnoCOBOSNUEVOS.Value >= DATOS.ZTurnoCUBOSUSADOS.Value
            then
            begin
              params[0].Value := 'B02';
              Edit3.text := DATOS.NCFTITULO.Value;
              DATOS.FbqMaster_Fact.Edit;
              DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

              with NumNCF do
              begin
                close;
                sql.clear;
                sql.Add('select gen_id(GEN_NCF_USO, 1) from RDB$DATABASE');
                open;
              end;

              nume := NumNCFGEN_ID.Value;

              DATOS.ZTurno.Edit;
              DATOS.ZTurnoCUBOSUSADOS.Value := DATOS.ZTurnoCUBOSUSADOS.Value +
                DATOS.FbqMaster_FactMONTOPAGO.Value;
              DATOS.ZTurno.ApplyUpdates;

            end;
          end
          else
          begin

            with NumNCF do
            begin
              close;
              sql.clear;
              sql.Add('select gen_id(GEN_NCF_USO, 1) from RDB$DATABASE');
              open;
            end;

            nume := NumNCFGEN_ID.Value;

            params[0].Value := 'B02';
            Edit3.text := DATOS.NCFTITULO.Value;
            DATOS.FbqMaster_Fact.Edit;
            DATOS.FbqMaster_FactCAJA.Value := DATOS.ncfTIPO.Value;

            /// nume := 0;
            DATOS.ZTurno.Edit;
            DATOS.ZTurnoCUBOSUSADOS.Value := DATOS.ZTurnoCUBOSUSADOS.Value +
              DATOS.FbqMaster_FactMONTOPAGO.Value;
            DATOS.ZTurno.ApplyUpdates;

          end;

        end;

        open;

      end;




      // nume := datos.ncfdesde.Value + datos.ncfuso.Value;

      if (nume >= 1) and (nume < 10) then
      begin
        cero1 := '0000000';
      end;

      if (nume >= 10) and (nume < 100) then
      begin
        cero1 := '000000';
      end;

      if (nume >= 100) and (nume < 1000) then
      begin
        cero1 := '00000';
      end;

      if (nume >= 1000) and (nume < 10000) then
      begin
        cero1 := '0000';
      end;

      if (nume >= 10000) and (nume < 100000) then
      begin

        cero1 := '000';
      end;

      if (nume >= 100000) and (nume < 1000000) then
      begin
        cero1 := '00';
      end;

      if nume >= 1000000 then
      begin
        cero1 := '0';
      end;

      with DATOS.ZTurno do
      begin
        close;
        sql.clear;
        sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
        sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
        sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
        sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
        sql.Add('where a.estado =:Est');
        sql.Add('and a.usuarioID =:Usua');
        params[0].Value := 1;
        params[1].Value := asignaUsuario;
        open;
      end;

      if DATOS.ZUconfiguracionTerminal.Value = 'Touch' then
      begin

        if DATOS.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
        begin

          if DATOS.ZTurnoCOBOSNUEVOS.Value >= DATOS.ZTurnoCUBOSUSADOS.Value then
          begin
            DATOS.FbqMaster_Fact.Edit;
            DATOS.FbqMaster_FactNCF.Value := DATOS.ncfNUNTEXT.Value + cero1 +
              IntToStr(nume);
            DATOS.FbqMaster_FactNCF_NOMBRE.Value := DATOS.NCFTITULO.Value;
            DATOS.fbqMaster_FactFecha_final.Value := DATOS.NCFFECHA_VENC.Value;
            DATOS.FbqMaster_FactFECHA_FAC.Value := Now();

            DATOS.ncf.Edit;
            DATOS.ncfUSO.Value := nume;
            DATOS.ncf.ApplyUpdates;
          end;
        end
        else
        begin

          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_FactNCF.Value := DATOS.ncfNUNTEXT.Value + cero1 +
            IntToStr(nume);
          DATOS.FbqMaster_FactNCF_NOMBRE.Value := DATOS.NCFTITULO.Value;
          DATOS.fbqMaster_FactFecha_final.Value := DATOS.NCFFECHA_VENC.Value;
          DATOS.FbqMaster_FactFECHA_FAC.Value := Now();

        end;

      end
      else
      begin

        DATOS.FbqMaster_Fact.Edit;
        DATOS.FbqMaster_FactNCF.Value := DATOS.ncfNUNTEXT.Value + cero1 +
          IntToStr(nume);
        DATOS.FbqMaster_FactNCF_NOMBRE.Value := DATOS.NCFTITULO.Value;
        DATOS.fbqMaster_FactFecha_final.Value := DATOS.NCFFECHA_VENC.Value;
        DATOS.FbqMaster_FactFECHA_FAC.Value := Now();

        DATOS.ncf.Edit;
        DATOS.ncfUSO.Value := nume;
        DATOS.ncf.ApplyUpdates;

      end;

    finally
      // TODO 5 -oIasa -cEmpty Code Block: TFrmCobro.cobrarFact (finally/end in procedure)
    end;
  end;

end;

procedure TFrmCobro.RxDBComboBox2PropertiesChange(Sender: TObject);
begin
  // if RxDBComboBox2.ItemIndex = 0 then
  // begin
  // cxButton7.Enabled := true;
  // end else begin
  // cxButton7.Enabled := false;
  // end;
end;

procedure TFrmCobro.SpeedButton1Click(Sender: TObject);
begin
  if DATOS.ZUconfiguracionTerminal.Value = 'Normal' then
  begin
    if DATOS.ZUconfiguracionTIPO_FACTURACION.Value = 1 then
    begin

      FrmNFact_normal.cxButton4.Enabled := FALSE;
      FrmNFact_normal.cxButton5.Enabled := FALSE;
      FrmNFact_normal.cxButton14.Enabled := TRUE;
      FrmNFact_normal.BTPedido.Enabled := TRUE;
      FrmNFact_normal.B6.Enabled := TRUE;
      FrmNFact_normal.Edit3.text := 'NUEVO';
      FrmNFact_normal.opmaster.Enabled := TRUE;
      // FrmNFact_normal.opdetalle.Enabled := true;
      FrmNFact_normal.BtBorrar.Enabled := TRUE;
      FrmNFact_normal.B6.Enabled := TRUE;
      FrmNFact_normal.cxButton12.Enabled := TRUE;
      FrmNFact_normal.cxButton13.Enabled := TRUE;
      FrmNFact_normal.PanelLTOP.Enabled := TRUE;
      FrmNFact_normal.BTSerial.Enabled := TRUE;
      FrmNFact_normal.Panel7.Enabled := TRUE;
      FrmNFact_normal.panel15.Enabled := TRUE;
      FrmNFact_normal.panel16.Enabled := TRUE;
      FrmNFact_normal.cxDBComboBox1.Enabled := TRUE;
      FrmNFact_normal.cxDBComboBox2.Enabled := TRUE;
      FrmNFact_normal.panelright.Enabled := TRUE;
      FrmNFact_normal.PanelLTOP.Enabled := TRUE;
      FrmNFact_normal.Panel7.Enabled := TRUE;
      abrirfactura := 'SI';

    end;

  end;

  if DATOS.ZUconfiguracionTerminal.Value = 'Pizzeria' then
  begin
    FrmPizeria.nuevo;
  end;
  close;
end;

procedure TFrmCobro.SpeedButton8Click(Sender: TObject);
var
  canfra: double;
  cero1: string;
  nume: Integer;
  men_pie: string;
  cInf: String;

begin

  DATOS.FbqMaster_Fact.Edit;
  DATOS.FbqMaster_FactEFECTIVO.Value := PEfectivo.Value + PCheques.Value +
    PTarjetas.Value + Pbonos.Value;
  DATOS.FbqMaster_FactVEFECTIVA.Value := PEfectivo.Value;
  DATOS.FbqMaster_FactDEVOLUCION.Value :=
    (PEfectivo.Value + PTarjetas.Value + PCheques.Value + Pbonos.Value) -
    DATOS.FbqMaster_FactMONTOPAGO.Value;

  if (DATOS.FbqMaster_FactEFECTIVO.Value < DATOS.FbqMaster_FactMONTOPAGO.Value)
    and (DATOS.FbqMaster_FactTIPO.Value = 'Contado') then
  begin

    ShowMessage(' Valor a Pagar no Corresponde con el Total Facturado ');

  END;

  if (DATOS.FbqMaster_FactEFECTIVO.Value >= DATOS.FbqMaster_FactMONTOPAGO.Value)
    and (DATOS.FbqMaster_FactTIPO.Value = 'Contado') then
  begin

    cobrarFact;

  END;

  if (DATOS.FbqMaster_FactEFECTIVO.Value < DATOS.FbqMaster_FactMONTOPAGO.Value)
    and (DATOS.FbqMaster_FactTIPO.Value = 'CREDITO') then
  begin

    cobrarFact1;
  END;

  if (DATOS.FbqMaster_FactEFECTIVO.Value >= DATOS.FbqMaster_FactMONTOPAGO.Value)
    and (DATOS.FbqMaster_FactTIPO.Value = 'CREDITO') then
  begin
    MsgPrecaucion
      ('!!Recomendación!!, con el monto aplicado, esta factura debe generarse al contado');
  END;






  // if (datos.FbqMaster_FactEFECTIVO.Value <= 0.00) and (datos.FbqMaster_Facttipo.Value ='CREDITO') then
  // begin
  // Showmessage(' Valor a Pagar no Corresponde con el total facturado ');
  //
  // end else begin
  // cobrarFact;
  //
  // end;

end;

procedure TFrmCobro.Timer1Timer(Sender: TObject);
Var // HH,MM,SS,MS: Word;
  ss: Integer;
begin
  // DecodeTime(Time,HH,MM,SS,MS);

  control := control + 1;
  Label32.Caption := IntToStr(control);
  if control = 1 then
  begin

  end;

end;

procedure Delay(msecs: Integer);
var
  FirstTickCount: longint;
begin
  FirstTickCount := GetTickCount;
  repeat
    Application.ProcessMessages;
  until ((GetTickCount - FirstTickCount) >= longint(msecs));
end;

end.
