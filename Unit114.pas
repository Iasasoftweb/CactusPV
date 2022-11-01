unit Unit114;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
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
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, Vcl.Menus,
  cxGroupBox, cxRadioGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCheckBox, Vcl.ExtCtrls, frxClass, frxDBSet, ShellApi, printers, WinSpool, StrUtilS,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxMaskEdit, cxCalendar,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxGDIPlusClasses, ZAbstractDataset,  cHash;

   function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
    Function GetImpresora(Impre:String):Integer;
    function MyTextReplace(Texto:String):String;
    function CenterString(aStr: String; Len: Integer): String;


type
  TFrmConsultaFacturas = class(TForm)
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
    DsFacturasImpresas: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    OpCriterios: TcxRadioGroup;
    cxTextEdit1: TcxTextEdit;
    Label1: TLabel;
    Panel11: TPanel;
    op10: TcxRadioGroup;
    cxButton18: TcxButton;
    Chkorinal: TcxCheckBox;
    prncopia: TfrxReport;
    combo: TfrxDBDataset;
    series: TfrxDBDataset;
    detalle: TfrxDBDataset;
    master: TfrxDBDataset;
    Config: TfrxDBDataset;
    CUANTOS: TZReadOnlyQuery;
    CUANTOSCOUNT: TIntegerField;
    ImprimEMC: TfrxReport;
    imprimem: TfrxReport;
    ConduceMC: TfrxReport;
    Antiguedad: TZReadOnlyQuery;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TExtendedField;
    AntiguedadV0_30: TExtendedField;
    AntiguedadV31_60: TExtendedField;
    AntiguedadV61_90: TExtendedField;
    AntiguedadV91_120: TExtendedField;
    AntiguedadV120: TExtendedField;
    AntiguedadACTUAL: TExtendedField;
    cxGroupBox2: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    fechafinal: TcxDateEdit;
    inicio: TcxDateEdit;
    CBTipoDoc: TcxComboBox;
    Label4: TLabel;
    cxButton17: TcxButton;
    BtFind: TcxButton;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    DsDetalleFacturas: TDataSource;
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
    DetalleFacturasTITULOPRN: TWideStringField;
    DetalleFacturasANCHO: TFloatField;
    DetalleFacturasALTO: TFloatField;
    DetalleFacturasUNIDADID: TIntegerField;
    DetalleFacturasITBS_ART: TWideStringField;
    DetalleFacturasEX: TWideStringField;
    DetalleFacturasIDALMACEN: TIntegerField;
    DetalleFacturasBARRA: TWideStringField;
    DetalleFacturasIDTECNICO: TIntegerField;
    DetalleFacturasOP: TWideStringField;
    DetalleFacturasLINEA: TIntegerField;
    DetalleFacturasEXIST1: TSingleField;
    DetalleFacturasLEY: TFloatField;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid3DBTableView1ITBS: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid3DBTableView1NO_FACT1: TcxGridDBColumn;
    cxGrid3DBTableView1MASTERID: TcxGridDBColumn;
    cxGrid3DBTableView1IMPUESTO: TcxGridDBColumn;
    cxGrid3DBTableView1ITBIS2: TcxGridDBColumn;
    cxGrid3DBTableView1UNID: TcxGridDBColumn;
    cxGrid3DBTableView1COMBO: TcxGridDBColumn;
    cxGrid3DBTableView1LINEA: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULOID: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    RGTipoDoc: TcxRadioGroup;
    cxButton1: TcxButton;
    Anular: TZReadOnlyQuery;
    UpCredito: TZReadOnlyQuery;
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
    ZReadOnlyQuery1: TZReadOnlyQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    FloatField1: TFloatField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    DateField1: TDateField;
    FloatField2: TFloatField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    FloatField3: TFloatField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    FloatField4: TFloatField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    UpdateNC: TZReadOnlyQuery;
    comisionCancelar: TZReadOnlyQuery;
    comisionCancelarID: TIntegerField;
    comisionCancelarID_EMP: TIntegerField;
    comisionCancelarID_FACT: TIntegerField;
    comisionCancelarMONTOSERVICIO: TFloatField;
    comisionCancelarMONTOCOMISION: TFloatField;
    comisionCancelarESTADO: TIntegerField;
    comisionCancelarFECHA: TDateField;
    UpRma: TZReadOnlyQuery;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
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
    pnRotornarHold: TPanel;
    Label52: TLabel;
    Image2: TImage;
    cxButton47: TcxButton;
    Label5: TLabel;
    Label6: TLabel;
    EClaveAnular: TEdit;
    Panel1: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    QretornarHold: TZQuery;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    DetalleFacturasDESC: TFloatField;
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure OpCriteriosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton17Click(Sender: TObject);
    procedure BtFindClick(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
      procedure inventarial;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton47Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaFacturas: TFrmConsultaFacturas;
   aPrinter: tprinter; // necessario
     x, y: integer; // necessario
     Count, Xpos, Ypos : integer;
implementation

{$R *.dfm}

uses Unit2, Unit63, Unit113, Unit116, UInicio, TOOLS, Unit117;


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

procedure TFrmConsultaFacturas.BtFindClick(Sender: TObject);
begin
with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
        sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
        sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');

        if RGTipoDoc.ItemIndex <> 2 then
          begin
               Sql.Add('and a.tipo =:tipodoc ');
          end;


        if CBTipoDoc.ItemIndex = 0 then begin
            Params[0].Value := 'IMPRESA';
        end;

        if CBTipoDoc.ItemIndex = 1 then
          begin
              Params[0].Value := 'CONDUCE';
          end;

         if CBTipoDoc.ItemIndex = 2 then
          begin
              Params[0].Value := 'ANULADA';
          end;

          if CBTipoDoc.ItemIndex = 3 then
          begin
              Params[0].Value := 'CANCELADA';
          end;

        if CBTipoDoc.ItemIndex = 2 then
          begin

              Params[1].Value := 'ANULADA';
          end else
              begin
                  Params[1].Value := 'ACTIVA';
              end;


        Params[2].Value := inicio.Date;
        Params[3].Value := fechafinal.Date;

        if RGTipoDoc.ItemIndex = 0 then
          begin

              Params[4].Value :='CREDITO';
          end;

          if RGTipoDoc.ItemIndex = 1 then
          begin


           Params[4].Value :='Contado';
          end;
        open;

    end;
end;

procedure TFrmConsultaFacturas.cxButton17Click(Sender: TObject);
begin

panel11.Visible := true;


end;

procedure TFrmConsultaFacturas.cxButton18Click(Sender: TObject);
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
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := facturasimpresasno_fact.Value;
    open;
  end;


  with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
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

//                  if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
//                         begin
//                         cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeCopia'+'.fr3';
//                //  Showmessage(''+CinF);
//                   imprimeM.LoadFromFile(cInf);
//                   END;
                  if datos.FbqMaster_Facttipo.Value ='Contado' then
                       begin
                   if Chkorinal.Checked = true then begin
                                imprimeM.variables['titulos']  :=quotedstr('FACTURA');
                    end else begin
                                imprimeM.variables['titulos']  :=quotedstr('COPIA FACTURA');
                             end;
                  //  imprimeM.variables['cajero']   :=quotedstr(edit2.text);
                    men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                    imprimeM.variables['mensaje1'] :=quotedstr(men_pie);
                    if datos.FbqMaster_FactCONDICION.Value = 'ANULADA'  then
                       begin
                           imprimeM.variables['CONDICION'] :=quotedstr('ANULADA');
                       end else
                           begin
                           imprimeM.variables['CONDICION'] :=quotedstr('');
                           end;

                    imprimeM.PrepareReport(true);
                    imprimeM.ShowPreparedReport;


                    datos.ZInventario.Close;
                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;

                    panel11.Visible := false;

                END;
               if datos.FbqMaster_Facttipo.Value ='CREDITO' then
                      begin
//    with Antiguedad do
//    begin
//        close;
//        SQL.Clear;
//        sql.Add('SELECT a.clienteid,');
//        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date  )<0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,');
//        sql.add('sum(IIF( (DATEDIFF(DAY, a.fecha_fac, current_date )>=0 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=30) OR a.fecha_fac is null,(a.pendiente),0)) AS V0_30 ,');
//        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=31 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=60, (a.pendiente),0)) AS V31_60,');
//        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=61 AND DATEDIFF( DAY, a.fecha_fac,current_date )<=90, (a.pendiente),0)) AS V61_90, ');
//        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=91 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=120, (a.pendiente),0)) AS V91_120,');
//        sql.add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120,');
//
//        sql.Add('(sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) +');
//        sql.add('sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fechavencimiento is null,(a.pendiente),0)) +');
//        sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendiente),0)) +');
//        sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendiente),0))  +');
//        sql.add('sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pendiente),0)) +');
//        sql.add('sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,(a.pendiente),0))');
//        sql.add(') as actual');
//
//
//        sql.add('from master_fact a');
//         sql.add('where a.situacion  =:opcion2');
//        sql.add('and a.condicion    =:OPCION4');
//        sql.Add('AND A.ROTULO       =:OPCION5');
//        sql.Add('and a.clienteid    =:opcion66');
//        sql.Add('and a.tipo         =:tipo1');
//        sql.Add('and a.quees <>''SALDADA''');
//         sql.add('group by a.clienteid ');
//        Params[0].Value := 'IMPRESA';
//        Params[1].Value := 'ACTIVA';
//        Params[2].Value := 'FACTURACION';
//        Params[3].Value := datos.FbqMaster_Factclienteid.Value;
//        Params[4].Value := 'CREDITO';
//        open;
//  end;


//                  if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
//                         begin
//                         cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaGrandeCopia_c'+'.fr3';
//                //  Showmessage(''+CinF);
//                   imprimeMC.LoadFromFile(cInf);
//                   END;

                   if Chkorinal.Checked = true then begin
                                imprimeMC.variables['titulos']  :=quotedstr('FACTURA');
                    end else begin
                                imprimeMC.variables['titulos']  :=quotedstr('COPIA FACTURA');
                             end;
                  //  imprimeMC.variables['cajero']   :=quotedstr(edit2.text);
                    men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                    imprimeMC.variables['mensaje1'] :=quotedstr(men_pie);

                       if datos.FbqMaster_FactCONDICION.Value = 'ANULADA'  then
                       begin
                           imprimeMC.variables['CONDICION'] :=quotedstr('ANULADA');
                       end else
                           begin
                           imprimeMC.variables['CONDICION'] :=quotedstr('');
                           end;


                    imprimeMC.PrepareReport(true);
                    imprimeMC.ShowPreparedReport;


                    datos.ZInventario.Close;
                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;

                    panel11.Visible := false;
                   

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
                                //PrintCopia;
                        end else begin


                  cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketCopia'+'.fr3';
                //  Showmessage(''+CinF);
                      PrnCopia.LoadFromFile(cInf);
                       PrnCopia.variables['titulos']  :=quotedstr('COPIA FACTURA');
                     //  PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
                          men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                          PrnCopia.variables['mensaje1'] :=quotedstr(men_pie);
                           PrnCopia.PrepareReport(true);
                           PrnCopia.print;
                          end;
                       end;

                   if datos.FbqMaster_Facttipo.Value ='CREDITO' then
                       begin
                       if Tipoimpresion = 'D' then
                        begin
                             //  imprimirtikectCredito;
                        end else begin

                   cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketCopia'+'.fr3';
                //  Showmessage(''+CinF);
                       PrnCopia.LoadFromFile(cInf);
                       PrnCopia.variables['titulos']  :=quotedstr('COPIA FACTURA');
                      // PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
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


                  END;



end;

procedure TFrmConsultaFacturas.cxButton1Click(Sender: TObject);
begin
if FAutorizacion.ShowModal = mrOk then
           begin


        inventarial;
  end;
end;

procedure TFrmConsultaFacturas.cxButton2Click(Sender: TObject);
VAR
CPASS : STRING;
begin
  CPASS := MD5DigestToHex(CalcMD5(trim(EClaveAnular.Text)));

if cpass = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
  begin
        with anular do
          begin
            close;
            sql.Clear;
            sql.Add('update master_fact set condicion =:op, SITUACION =:OP2, iddr =:op3, estacion =:estacion');
            sql.Add('where no_fact =:pp');
            params[0].Value := 'ACTIVA';
            params[1].Value := 'HOLD';
            params[2].Value := 1;
            params[1].Value := 'ROTORNO';

            params[3].Value := FacturasImpresasno_fact.Value;
            ExecSQL;
          end;

          DATOS.Data.Commit;

          ShowMessage('  Factura Actualizada ');
          EClaveAnular.Clear;
          pnRotornarHold.Visible := false;
  end else begin
             MsgViewError(' Clave Incorrecta ');
             EClaveAnular.SetFocus;
           end;

end;

procedure TFrmConsultaFacturas.cxButton3Click(Sender: TObject);
begin
pnRotornarHold.Visible := false;
end;

procedure TFrmConsultaFacturas.cxButton47Click(Sender: TObject);
begin
pnRotornarHold.Visible := true;
EClaveAnular.Clear;
EClaveAnular.SetFocus;
end;

procedure TFrmConsultaFacturas.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
      detallefacturas.Open;
      cxGrid2.Visible := true;

end;

procedure TFrmConsultaFacturas.cxGridDBTableView1DblClick(Sender: TObject);
begin
//with FrmConduce.facturasIMPRESAS do
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
//        sql.Add('and a.numero_factura =:opppp');
//        Params[0].Value := 'IMPRESA';
//        Params[1].Value := 'ACTIVA';
//        Params[2].Value := 'FACTURACION';
//        params[3].value := facturasIMPRESASnumero_factura.value;
//
//        open;
//
//    end;

 //   datos.ConduceM.Edit;
//    datos.ConduceMCLIENTES.Value := FacturasImpresasNOMBRECLIENTE_PRN.Value;

//    if FrmDetalleFact = NIL then
//       begin
//         FRMdetalleFact := TFrmDetalleFact.Create(self);
//          with FrmDetalleFact.DetalleFacturas do
//              begin
//              Close;
//              FrmDetalleFact.detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
//              FrmDetalleFact.detallefacturas.Open;
//
//              end;
//          FrmDetalleFact.ShowModal;
//       end;

      detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
      detallefacturas.Open;
      cxGrid2.Visible := true;


end;

procedure TFrmConsultaFacturas.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
      detallefacturas.Open;
      cxGrid2.Visible := true;

end;

procedure TFrmConsultaFacturas.cxGridDBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
      detallefacturas.Open;
      cxGrid2.Visible := true;

end;

procedure TFrmConsultaFacturas.OpCriteriosClick(Sender: TObject);
begin
//if cxRadioGroup1.ItemIndex = 0 then
//  begin
//    label1.Caption := 'Entre el Numero de Factura';
//  end;
//
//  if cxRadioGroup1.ItemIndex = 1 then
//  begin
//    label1.Caption := 'Entre el Nombre del Cliente';
//  end;
//
//   if cxRadioGroup1.ItemIndex = 2 then
//  begin
//    label1.Caption := 'Entre el Nombre del Cliente';
//  end;
end;

procedure TFrmConsultaFacturas.cxTextEdit1PropertiesChange(Sender: TObject);
begin
//if cxRadioGroup1.ItemIndex = 0 then begin
//
//
//end;
//
//
//
//if cxRadioGroup1.ItemIndex = 1 then begin
//

if OpCriterios.ItemIndex = 0 then
  begin
with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
        sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
        sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');

        sql.Add('and a.numero_factura =:Codigo');

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := cxTextEdit1.Text;
        //Params[2].Value := 'FACTURACION';

        open;

    end;
  end;

 if OpCriterios.ItemIndex = 1 then
  begin
with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
        sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
        sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        //sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit1.Text+'%'+#39);

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
       // Params[2].Value := 'FACTURACION';

        open;

    end;
  end;


//
//if cxRadioGroup1.ItemIndex = 2 then begin
//
//with facturasIMPRESAS do
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
//        sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit1.Text+'%'+#39);
//         if OpCuando.ItemIndex = 0 then
//           begin
//                    sql.Add('and a.fecha_fac >=:fechas');
//         end;
//        Params[0].Value := 'IMPRESA';
//        Params[1].Value := 'ANULADA';
//        Params[2].Value := 'FACTURACION';
//             if OpCuando.ItemIndex = 0 then
//           begin
//                params[3].Value := now();
//           end;
//        open;
//
//    end;
//end;


end;

procedure TFrmConsultaFacturas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmConsultaFacturas := nil;
end;

procedure TFrmConsultaFacturas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_ESCAPE then
  begin
    FacturasImpresas.Close;
    cxTextEdit1.Clear;
    close;

  end;
end;

procedure TFrmConsultaFacturas.FormShow(Sender: TObject);
begin

inicio.Date     := now();
fechafinal.Date := now();
//with facturasIMPRESAS do
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
//       sql.Add('and a.fecha_fac >=:fechas');
//
//        Params[0].Value := 'IMPRESA';
//        Params[1].Value := 'ACTIVA';
//        Params[2].Value := 'FACTURACION';
//
//        if OpCuando.ItemIndex = 0 then
//           begin
//                params[3].Value := now();
//           end else begin
//                      params[3].Value := now()-1;
//                    end;
//        open;
//    end;
end;

procedure TFrmConsultaFacturas.inventarial;
var
canfra : Integer;
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
           open;
              while not eof do
                 begin
                   canfra := 0;

                   if detallefacturasCOMBO.Value ='UNI' then
                          BEGIN



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
                                                  SQL.ADD('left join man_provedores j On a.cod_prov2 = J.cod_prov');
                                                  sql.Add('where a.cod_Art =:oo');
                                                  params[0].Value := detallefacturasarticuloID.Value;
                                                  open;
                                          end;





                                if DATOS.MantArtOPCIONES_BOLA.Value ='Si' then
                                             begin



                                                       with datos.QCodMin do
                                                              begin
                                                                close;
                                                                sql.Clear;
                                                                sql.Add('select * from SP_EQMINIMO(:no)');
                                                                params[0].Value := detallefacturasarticuloID.Value;
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
                                                    datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
                                                    datos.ZInventarioFECHA.Value          := now();
                                                    datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
                                                    datos.ZInventarioCOD_ART.Value        := datos.qCodMinCODIGOMINIMO.Value;
                                                    datos.ZInventarioCONCEPTOID.Value     := 7;
                                                    datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
                                                    datos.ZInventarioSALIDA.Value         := 0.00;
                                                    datos.ZInventarioENTRADA.Value        := detallefacturasCANTIDAD.Value * (datos.qCodMinCANTEMP.Value);
                                                    datos.ZInventarioCOD_ALM.Value        := 1;

                                             end else begin
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
                              datos.ZInventarioCOD_ART.Value        := detallefacturasarticuloID.Value;;
                              datos.ZInventarioCONCEPTOID.Value     := 7;
                              datos.ZInventarioSALIDA.Value         := 0.00;
                              datos.ZInventarioENTRADA.Value        := detallefacturasCANTIDAD.Value;
                              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
                              datos.ZInventarioCOD_ALM.Value        := 1;


                           end;







                          END;


                    if datos.ZdetalleCOMBO.Value ='FRA' then
                          BEGIN

                            WITH qfraccionado do
                                begin
                                     close;
                                     sql.Clear;
                                     sql.Add('select a.*, b.descripcion from particionado a');
                                     sql.Add('left join unidad_m b On a.id_unidad = b.cod_unidad_m');
                                     sql.Add('where a.cod_arti =:pp');
                                     sql.Add('and a.unidad =:pp2');
                                     params[0].Value := detallefacturasARTICULOID.Value;
                                     params[1].Value := detallefacturasUNID.Value;
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
                                                  SQL.ADD('left join man_provedores j On a.cod_prov2 = J.cod_prov');
                                                  sql.Add('where a.cod_Art =:oo');
                                                  params[0].Value := detallefacturasarticuloID.Value;
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
                          datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
                          datos.ZInventarioFECHA.Value          := now();
                          datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
                          datos.ZInventarioCOD_ART.Value        := StrToInt(detallefacturasCOD_ART.text);
                          datos.ZInventarioCONCEPTOID.Value     := 7;
                          datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;


                          if detallefacturasIDALMACEN.Value = datos.ZUconfiguracionALMACENRMA.Value  then
                              begin
                                   datos.ZInventarioCOD_ALM.Value        := datos.ZUconfiguracionALMACENRMA.Value;

                              end;

                              datos.ZInventarioCOD_ALM.Value        := 1;
                              datos.ZInventarioSALIDA.Value         := 0.00;
                              datos.ZInventarioENTRADA.Value        := (detallefacturasCANTIDAD.Value*qfraccionadocod_part.Value);
                     end;


                    if datos.ZdetalleCOMBO.Value ='OFE' then
                          BEGIN

                            WITH DATOS.ZCombo do
                                begin
                                     close;
                                     sql.Clear;
                                     sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
                                     sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
                                     sql.Add('where a.MACOMBODI =:pp');
                                     params[0].Value := detallefacturasARTICULOID.Value;
                                     open;

                                     FIRST;
                                   while not eof do
                                     begin

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
                                              datos.ZInventarioCOD_ART.Value        := datos.ZComboCOD_ART.Value;
                                              datos.ZInventarioCONCEPTOID.Value     := 7;
                                              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;


                                            if detallefacturasIDALMACEN.Value = datos.ZUconfiguracionALMACENRMA.Value  then
                                                begin
                                                     datos.ZInventarioCOD_ALM.Value        := datos.ZUconfiguracionALMACENRMA.Value;

                                                end;

                                                datos.ZInventarioCOD_ALM.Value        := 1;
                                                datos.ZInventarioSALIDA.Value         := 0.00;
                                                datos.ZInventarioENTRADA.Value        := datos.ZComboCANTIDAD.Value;

                                                next;
                                      end;
                               end;
                          END;



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
            sql.Add('update master_fact set condicion =:op, SITUACION =:OP2');
            sql.Add('where no_fact =:pp');
            params[0].Value := 'ANULADA';
            params[1].Value := 'ANULADA';
            params[2].Value := FacturasImpresasno_fact.Value;
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
                        sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
                        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
                        sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
                        sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
                            sql.Add('where a.situacion  =:opcion2');
                            sql.Add('and a.condicion =:OPCION4');
                          //  sql.Add('AND A.ROTULO =:OPCION5');
                            Params[0].Value := 'IMPRESA';
                            Params[1].Value := 'ACTIVA';
                           // Params[2].Value := 'FACTURACION';
                            open;
                        end;
          datos.ZInventario.close;



end;

end.
