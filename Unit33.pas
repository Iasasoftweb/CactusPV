unit Unit33;

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
  dxSkinXmas2008Blue, cxCalc, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Data.DB, cxGroupBox, Vcl.Menus,
  cxButtons, ZAbstractRODataset, ZDataset, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxLabel, dxGDIPlusClasses,
  cxImage, cxTimeEdit, cxCheckGroup, Vcl.DBCtrls, RxCtrls, frxClass, frxDBSet,
  ZAbstractDataset, Vcl.Imaging.jpeg, printers, StrUtils, WinSpool,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxCurrencyEdit, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, IdMessage,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  frxExportBaseDialog, frxExportPDF, IdAttachmentFile, IdAttachment,
  Vcl.ComCtrls, Vcl.WinXCtrls, dxActivityIndicator, FireDAC.Phys.InfxDef,
  FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.ODBCBase, FireDAC.Phys.Infx,
  acPNG, Vcl.Buttons;

type
  TFrmTurno = class(TForm)
    opPanel: TcxGroupBox;
    DataSource1: TDataSource;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Max: TZReadOnlyQuery;
    MaxMAX: TIntegerField;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZqusuarioCARGO: TWideStringField;
    dsqusuario: TDataSource;
    cxButton4: TcxButton;
    ZqTurno: TZReadOnlyQuery;
    ZqTurnoTURNOID: TIntegerField;
    ZqTurnoUSUARIOID: TIntegerField;
    ZqTurnoEFECTIVO_INICIAL: TFloatField;
    ZqTurnoESTADO: TIntegerField;
    ZqTurnoFECHA: TDateField;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label1: TLabel;
    Panel1: TPanel;
    ZqUsuarios: TZReadOnlyQuery;
    ZqUsuariosUSUARIOID: TIntegerField;
    ZqUsuariosEMPLEADOID: TIntegerField;
    ZqUsuariosTIPO: TIntegerField;
    ZqUsuariosPASSW: TWideStringField;
    ZqUsuariosIDAC: TWideStringField;
    ZqUsuariosNOMBRES_EMP: TWideStringField;
    ZqUsuariosTIENDAID: TIntegerField;
    ZqUsuariosDESCRIPCION: TWideStringField;
    ZqUsuariosCARGO: TWideStringField;
    clave: TEdit;
    DsTurno: TDataSource;
    ZqTurnoIDTURNO: TIntegerField;
    ZqTurnoCAJA: TWideStringField;
    ZqTurnoHORA: TTimeField;
    cxDBTimeEdit1: TcxDBTimeEdit;
    GbEfectivo: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label9: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label11: TLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    Label13: TLabel;
    cxDBCalcEdit7: TcxDBCalcEdit;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    cxDBCalcEdit8: TcxDBCalcEdit;
    Label15: TLabel;
    cxDBCalcEdit9: TcxDBCalcEdit;
    GroupBox6: TGroupBox;
    cxDBCalcEdit10: TcxDBCalcEdit;
    DBCheckBox1: TDBCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsDetalleEfectivo: TDataSource;
    ENominaciones: TZReadOnlyQuery;
    ENominacionesID: TIntegerField;
    ENominacionesIDTURNO: TIntegerField;
    ENominacionesNOMINACION: TWideStringField;
    cxGrid1DBTableView1NOMINACION: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    MaxEfectivo: TZReadOnlyQuery;
    MaxEfectivoMAX: TIntegerField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    MaxTurno: TZReadOnlyQuery;
    maxventa: TZReadOnlyQuery;
    sumcobro: TZReadOnlyQuery;
    SumNC: TZReadOnlyQuery;
    OpImprimir: TRxCheckListBox;
    print0: TfrxReport;
    datagastos: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    config: TfrxDBDataset;
    QdetalleGastos: TZReadOnlyQuery;
    QdetalleGastosGASTOSID: TIntegerField;
    QdetalleGastosFECHA: TDateField;
    QdetalleGastosUSUARIOID: TIntegerField;
    QdetalleGastosCONCEPTOSID: TIntegerField;
    QdetalleGastosNOTA: TWideMemoField;
    QdetalleGastosIMPORTE: TFloatField;
    QdetalleGastosBENEFICIADO: TWideStringField;
    QdetalleGastosESTADO: TIntegerField;
    QdetalleGastosTURNOID: TIntegerField;
    SumGastos: TZReadOnlyQuery;
    Borrar: TZQuery;
    PrnGastos: TfrxReport;
    QdetalleGastosDESCRIPCION: TWideStringField;
    QdetalleGastosNOMBRES_EMP: TWideStringField;
    Productos: TZReadOnlyQuery;
    DBProductos: TfrxDBDataset;
    PrnProductos: TfrxReport;
    PanelAutorizacion: TPanel;
    Label20: TLabel;
    Image2: TImage;
    EdClave: TEdit;
    cxButton29: TcxButton;
    TipoAutoriza: TEdit;
    Image1: TImage;
    Memo1: TMemo;
    GroupBox8: TGroupBox;
    cxDBCalcEdit13: TcxDBCalcEdit;
    UTILIDADBNB: TZReadOnlyQuery;
    QPagos: TZReadOnlyQuery;
    Tcreditos: TZReadOnlyQuery;
    TcreditosTCONTADO: TExtendedField;
    TcreditosTCREDITO: TExtendedField;
    SumGastosSUMA: TExtendedField;
    sumcobroCOBRO: TExtendedField;
    UTILIDADBNBBNB: TExtendedField;
    QPagosEFECTIVO: TExtendedField;
    QPagosPTARJETA: TExtendedField;
    QPagosTOTAL: TExtendedField;
    SumNCSUMA: TExtendedField;
    ProductosFECHA_FAC: TDateField;
    ProductosCOD_ART: TWideStringField;
    ProductosTITULOPRN: TWideStringField;
    ProductosNOMBRES_EMP: TWideStringField;
    ProductosSUM: TExtendedField;
    maxventaVENTA: TExtendedField;
    maxventaTC: TExtendedField;
    Image3: TImage;
    Label10: TLabel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    MaxTurnoGEN_ID: TLargeintField;
    UpG: TZReadOnlyQuery;
    BtCerrarT: TcxButton;
    BTConsultaT: TcxButton;
    ProductosSUM_1: TExtendedField;
    DsCubos: TDataSource;
    PArticulos: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CN_UN: TcxGridDBColumn;
    cxGrid1DBTableView1CU_OZ: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
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
    IbqRArticulosCODIGOBARRA: TWideStringField;
    IbqRArticulosCAT: TWideStringField;
    PrnConsulta: TfrxReport;
    DBconsulta: TfrxDBDataset;
    Qconsulta: TZReadOnlyQuery;
    QconsultaID: TIntegerField;
    QconsultaIDTURNO: TIntegerField;
    QconsultaFECHA: TDateField;
    QconsultaARTICULO: TWideStringField;
    QconsultaCOSTO: TFloatField;
    QconsultaPRECIO_A: TFloatField;
    QconsultaINVINICIAL: TExtendedField;
    QconsultaINFFINAL: TExtendedField;
    QconsultaTOTALSALIDA: TExtendedField;
    QconsultaCN_UN2: TFloatField;
    QconsultaCU_OZ2: TFloatField;
    QSolidaridad: TZReadOnlyQuery;
    QSolidaridadID: TIntegerField;
    QSolidaridadFECHA: TDateField;
    QSolidaridadIDFACTURA: TIntegerField;
    QSolidaridadCEDULA: TWideStringField;
    QSolidaridadTARJETA: TWideStringField;
    QSolidaridadNBAUCHE: TWideStringField;
    QSolidaridadMFACTURA: TFloatField;
    QSolidaridadMITBS: TFloatField;
    QSolidaridadMTOTALFACTURA: TFloatField;
    QSolidaridadESTADO: TIntegerField;
    FxSolidaridad: TfrxDBDataset;
    RepSolidaridad: TfrxReport;
    SMTP: TIdSMTP;
    SSL: TIdSSLIOHandlerSocketOpenSSL;
    MDATA: TIdMessage;
    ProductosUNID: TWideStringField;
  //  frxPDFExport1: TfrxPDFExport;
    pIndicador: TPanel;
    Label17: TLabel;
    ProgressBar2: TProgressBar;
    AI: TActivityIndicator;
    frxPDFExport1: TfrxPDFExport;
    FDPhysInfxDriverLink1: TFDPhysInfxDriverLink;
    FxDetalleefectivo: TfrxDBDataset;
    RepDetalleEfectivo: TfrxReport;
    qEliminaCocina: TZReadOnlyQuery;
    Panel3: TPanel;
    btnsalir: TSpeedButton;
    Panel4: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label18: TLabel;
    Panel12: TPanel;
    Label19: TLabel;
    lblEstado: TLabel;
    Label7: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Panel7: TPanel;
    cxButton7: TSpeedButton;
    Panel17: TPanel;
    SpeedButton9: TSpeedButton;
    Panel5: TPanel;
    GroupBox7: TGroupBox;
    cxDBCalcEdit11: TcxDBCalcEdit;
    GroupBox1: TGroupBox;
    cxDBCalcEdit12: TcxDBCalcEdit;
    Label16: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Panel23: TPanel;
    BtPagosSolidaridad: TSpeedButton;
    Panel6: TPanel;
    cxButton8: TSpeedButton;
    zMaxCredito: TZReadOnlyQuery;
    zMaxCreditoABONO: TExtendedField;
    zMaxCreditoPENDIENTE: TExtendedField;
    cxGroupBox2: TcxGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxDBCalcEdit14: TcxDBCalcEdit;
    dsCredito: TDataSource;
    zMaxCreditoMONTO: TExtendedField;
    Label23: TLabel;
    cxDBCalcEdit15: TcxDBCalcEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure BTConsultaTClick(Sender: TObject);
    procedure EdClaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton6Click(Sender: TObject);
    procedure ImprimeCuade;
    procedure imprimeGastos;
    procedure ImprimeDetalleArti;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure claveKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure permisos;

    procedure generarpdf;
    procedure enviaremail;
    PROCEDURE CALCULAR;
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton1358ddddddClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BtPagosSolidaridadClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);


//     function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
//    Function GetImpresora(Impre:String):Integer;
//    function MyTextReplace(Texto:String):String;
//    function CenterString(aStr: String; Len: Integer): String;
  private
    { Private declarations }
  public



    { Public declarations }
  end;

var
  FrmTurno: TFrmTurno;

implementation

{$R *.dfm}
uses
unit2, tools, unit19, Inicio_Principal, Unit63, Unit117, System.Threading;





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

procedure TFrmTurno.CALCULAR;
begin
     with maxventa do
  begin
    close;
    sql.Clear;
    sql.Add('select sum(a.pagoxefectivo) venta, sum(a.pagoxtarjeta) TC  from master_fact a');
    sql.Add('where a.tiendaid =:idturno');
    sql.Add('and a.tipo =''Contado''');
    sql.Add('and a.condicion =''ACTIVA''');
    sql.Add('and a.situacion =''IMPRESA''');
    sql.Add('and a.cajeroid =:ppp');
    params[0].Value := AsignaTurno;
    params[1].Value :=AsignaUsuario;
   open;
  end;

   with sumcobro do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(monto) cobro from recibo_pago');
     sql.Add('where usuarioid=:Uop');
     sql.Add('and idturno =:turno');
     params[0].Value := AsignaUsuario;
     params[1].Value := asignaturno;
     open;
   end;

  with SumNc do
    begin
      close;
      sql.Clear;
      sql.Add('select sum(monto) suma from mnoc');
      sql.Add('where Idturno =:IDT');
      sql.Add('and afecta_caja = 1');
      sql.Add('and usuarioID =:us');
      params[0].Value := AsignaTUrno;
      params[1].Value  := AsignaUsuario;
      open;
    end;

//
    with sumGastos do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(importe) suma from control_gastos');
     sql.Add('where turnoID =:TURNO1');
     sql.Add('and usuarioid=:ppp');
     params[0].Value := AsignaTurno;
     params[1].Value :=AsignaUsuario;
     open;
   end;



  datos.ZTurnoTOTALVENTAS.Value := maxventaventa.Value;
 // datos.ZTurnoCHEQUE.Value      := maxventaCK.Value;
  datos.ZTurnoTC.Value          := maxventaTC.Value;
  Datos.ZTurnoCOBRANZA.Value    := Sumcobrocobro.Value;
  Datos.ZTurnoNC.Value          := SumNCsuma.Value;
  datos.ZTurnoGASTOS.Value      := SumGastosSuma.Value;

  datos.ZTurnoTOTALEINGRESO.Value := maxventaventa.Value +  maxventaTC.Value + Sumcobrocobro.Value;
  datos.ZturnoTotalegresos.value  := datos.ZTurnoGASTOS.Value + datos.ZTurnoNC.Value;

  Datos.ZTurnoTOTALCUADRE.Value := (datos.ZTurnoTOTALEINGRESO.Value - datos.ZturnoTotalegresos.value)+ datos.ZTurnoEFECTIVO_INICIAL.Value;

  if datos.ZTurnoTOTALCUADRE.Value > datos.ZTurnoEFECTIVOCAJA.Value then
     begin
         datos.ZTurnoDESCUADRE.Value := datos.Zturnototalcuadre.Value - datos.ZTurnoEFECTIVOCAJA.Value;
         datos.ZTurnoSOBRANTES.Value  := 0.00;
     end;

  if datos.ZTurnoTOTALCUADRE.Value < datos.ZTurnoEFECTIVOCAJA.Value then
     begin
         datos.ZTurnoDESCUADRE.Value := 0.00;
         datos.ZTurnoSOBRANTES.Value  := datos.ZTurnoEFECTIVOCAJA.Value - datos.Zturnototalcuadre.Value;
     end;


    if datos.ZTurnoTOTALCUADRE.Value = datos.ZTurnoEFECTIVOCAJA.Value then
     begin
        datos.ZTurnoDESCUADRE.Value := 0.00;
       datos.ZTurnoSOBRANTES.Value  := 0.00;
     end;

end;

procedure TFrmTurno.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmTurno.claveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    cxButton1.SetFocus;
  end;
end;

procedure TFrmTurno.cxButton1Click(Sender: TObject);
begin


with ZqUsuarios do
           begin
             close;
             sql.clear;
             sql.Add('select a.*, b.NOMBRES_EMP,B.tiendaid,c.descripcion,b.cargo from musuario a');
             sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
             sql.Add('left JOIN TIENDA C On b.tiendaid = c.tiendaid');
             sql.Add('where a.PASSW ='#39+clave.Text+#39);
           //  sql.Add('and NOMBRES_EMP ='#39+Trim(datos.ibqempleadosnombres_emp.Value)+#39);
            open;
           end;


with zqturno do
  begin
    close;
    sql.Clear;
    sql.Add('select * from turnos');
    sql.Add('where estado =:Est');
    sql.Add('and usuarioId =:Usua');
    params[0].Value := 1;
    params[1].Value := ZqUsuariosUSUARIOID.Value;
    open;
  end;


   /// showmessage(''+INTtoSTR(ZqUsuariosUSUARIOID.Value));
  if zqturno.RecordCount > 0 then
    begin
       Showmessage('** Este Usuario tiene un turno abierto **');

        with datos.ZTurno do
              begin
                close;
                sql.Clear;
                sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                sql.Add('where a.estado =:Est');
                sql.Add('and a.TURNOID =:Usua');
                params[0].Value := 1;
                params[1].Value := zqturnoTURNOID.Value;
                open;
              end;

         oppanel.Enabled := true;
        cxbutton1.Enabled := true;
        //cxbutton2.Enabled := true;
        cxbutton3.Enabled := true;
        panel1.Visible := false;
       // opbuscarEmpleado.Visible := true;
        datos.ZManTurnos.Open;
        AsignaTurno := datos.ZTurnoTURNOID.Value;
     //   cxButton2.Enabled := false;
       permisos;
         clave.Clear;


    end else begin


with ZqUsuarios do
           begin
             close;
             sql.clear;
             sql.Add('select a.*, b.NOMBRES_EMP,B.tiendaid,c.descripcion,b.cargo from musuario a');
             sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
             sql.Add('left JOIN TIENDA C On b.tiendaid = c.tiendaid');
             sql.Add('where a.PASSW ='#39+clave.Text+#39);
           //  sql.Add('and NOMBRES_EMP ='#39+Trim(datos.ibqempleadosnombres_emp.Value)+#39);
            open;
           end;

    if  zqusuarios.RecordCount > 0 then
       begin


oppanel.Enabled := true;
//with max do
//  begin
//    close;
//    open;
//  end;

  datos.ZTurno.Open;
  datos.ZTurno.APPEND;


DATOS.ZTurnoNOMBRES_EMP.Value := zqusuariosnombres_emp.Value;
datos.ZTurnoUSUARIOID.Value := zqusuariosusuarioId.Value;
//Opbuscarempleado.Visible := false;

  //datos.ZTurnoTURNOID.Value           := maxmax.value + 1;
  datos.ZTurnoESTADO.Value            := 1;
  datos.ZTurnoFECHA.Value             := Now();
  datos.ZTurnohora.Value              := time();
  datos.ZTurnoEFECTIVO_INICIAL.Value  := 0.00;

  cxbutton1.Enabled := false;
 // cxbutton2.Enabled := true;
  cxbutton3.Enabled := true;
  panel1.Visible := false;
 // opbuscarEmpleado.Visible := true;
  datos.ZManTurnos.Open;
 permisos;
  clave.Clear;
    {
    select a.*,c.nombres_emp, d.descricpcion from turnos a
left join Musuario b On a.usuarioid = b.usuarioid
left join mtempleado C on b.empleadoid = c.cod_emp1
left join mant_turnos d On a.idturno = d.id_turnos
}
end else begin
    showmessage('*** Su contraseña no es valida ***');
    clave.Clear;
    clave.SetFocus;
end;
end;
end;

procedure TFrmTurno.cxButton2Click(Sender: TObject);
var
 cInf : string;
NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion : String;
begin
  datos.QCubos.Refresh;


datos.ZTurno.Edit;
//tos.ZTurnoEFECTIVOCAJA.Value :=  cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
GbEfectivo.Visible := false;


     //showmessage(''+IntToStr(AsignaTurno)+' '+INtToStr(AsignaUsuario));

 with maxventa do
  begin
    close;
    sql.Clear;
    sql.Add('select sum(a.pagoxefectivo) venta, sum(a.pagoxtarjeta) TC  from master_fact a');
    sql.Add('where a.tiendaid =:idturno');
    sql.Add('and a.tipo =''Contado''');
    sql.Add('and a.condicion =''ACTIVA''');
    sql.Add('and a.situacion =''IMPRESA''');
    sql.Add('and a.cajeroid =:ppp');
   // sql.Add('and a.fecha_fac =:fecha');
    params[0].Value := AsignaTurno;
    params[1].Value :=AsignaUsuario;
   // Params[2].Value := now();

   open;
  end;



   with sumcobro do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(monto) cobro from recibo_pago');
     sql.Add('where usuarioid=:Uop');
     sql.Add('and idturno =:turno');
   //  sql.add('and fecha =:fecha');
     params[0].Value := AsignaUsuario;
     params[1].Value := asignaturno;
   //  params[2].Value := now();
     open;
   end;

  with SumNc do
    begin
      close;
      sql.Clear;
      sql.Add('select sum(monto) suma from mnoc');
      sql.Add('where Idturno =:IDT');
      sql.Add('and afecta_caja = 1');
      sql.Add('and usuarioID =:us');
     // sql.Add('and fecha =:fecha');
      params[0].Value := AsignaTUrno;
      params[1].Value  := AsignaUsuario;
    //  params[2].Value  := now();
      open;
    end;

//
    with sumGastos do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(importe) suma from control_gastos');
     sql.Add('where turnoID =:TURNO1');
     sql.Add('and usuarioid=:ppp');
//     sql.Add('and fecha =:fecha');
     params[0].Value := AsignaTurno;
     params[1].Value :=AsignaUsuario;
//     params[2].Value  := now();
     open;
   end;



  datos.ZTurnoTOTALEINGRESO.Value := maxventaventa.Value +  maxventaTC.Value + Sumcobrocobro.Value;
  datos.ZturnoTotalegresos.value  := datos.ZTurnoGASTOS.Value + datos.ZTurnoNC.Value;

  Datos.ZTurnoTOTALCUADRE.Value := (datos.ZTurnoTOTALEINGRESO.Value - datos.ZturnoTotalegresos.value)+ datos.ZTurnoEFECTIVO_INICIAL.Value;

   //Datos.ZTurnoTOTALCUADRE.Value := (datos.ZTurnoTOTALEINGRESO.Value - datos.ZturnoTotalegresos.value)+ datos.ZTurnoEFECTIVO_INICIAL.Value;

  if datos.ZTurnoTOTALCUADRE.Value > datos.ZTurnoEFECTIVOCAJA.Value then
     begin
         datos.ZTurnoDESCUADRE.Value := datos.Zturnototalcuadre.Value - datos.ZTurnoEFECTIVOCAJA.Value;
         datos.ZTurnoSOBRANTES.Value  := 0.00;
     end;

  if datos.ZTurnoTOTALCUADRE.Value < datos.ZTurnoEFECTIVOCAJA.Value then
     begin
         datos.ZTurnoDESCUADRE.Value := 0.00;
         datos.ZTurnoSOBRANTES.Value  := datos.ZTurnoEFECTIVOCAJA.Value - datos.Zturnototalcuadre.Value;
     end;


    if datos.ZTurnoTOTALCUADRE.Value = datos.ZTurnoEFECTIVOCAJA.Value then
     begin
        datos.ZTurnoDESCUADRE.Value := 0.00;
       datos.ZTurnoSOBRANTES.Value  := 0.00;
     end;




         cxButton8.Enabled := true;
         OpImprimir.Enabled := true;

         GroupBox1.Enabled := true;


   EdClave.Clear;
   PanelAutorizacion.Visible := false;
   OpImprimir.Enabled := true;
   cxButton8.Enabled := true;



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


if OpImprimir.Checked[0]  then
  begin

if Tipoimpresion = 'D' then
                        begin
         ImprimeCuade;
     end ELSE BEGIN

     //    cInf := datos.ZUconfiguracionROTULO_FC.value+'\CuadreEfectivo'+'.fr3';
                //  Showmessage(''+CinF);
//       print0.LoadFromFile(cInf);
      print0.PrepareReport(true);
      print0.print;
     END;
  end;


  if OpImprimir.Checked[1]  then
  begin


if Tipoimpresion = 'D' then
                        begin


      with QdetalleGastos do
        begin
          close;
          sql.Clear;
            sql.Add('select a.*, b.descripcion, e.nombres_emp from CONTROL_GASTOS a');
            sql.Add('left join conceptos_gastos b On a.gastosid = b.conceptosid');
            sql.Add('left join turnos c On a.turnoid = c.turnoid');
            sql.Add('Left join musuario d On c.usuarioid = d.usuarioid ');
            sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
            sql.Add('where a.turnoId =:OPP');
            params[0].Value := datos.ZTurnoIDTURNO.Value;
            open;
        end;

         imprimeGastos;
     end ELSE BEGIN
    //  cInf := datos.ZUconfiguracionROTULO_FC.value+'\CuadreGastos'+'.fr3';

     //  PrnGastos.LoadFromFile(cInf);


      with QdetalleGastos do
        begin
          close;
          sql.Clear;
            sql.Add('select a.*, b.descripcion, e.nombres_emp from CONTROL_GASTOS a');
            sql.Add('left join conceptos_gastos b On a.gastosid = b.conceptosid');
            sql.Add('left join turnos c On a.turnoid = c.turnoid');
            sql.Add('Left join musuario d On c.usuarioid = d.usuarioid ');
            sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
            sql.Add('where a.turnoId =:OPP');
            params[0].Value := datos.ZTurnoIDTURNO.Value;
            open;
        end;

     PrnGastos.PrepareReport(true);
     PrnGastos.print ;
     END;
  end;

 if OpImprimir.Checked[2]  then
  begin

if Tipoimpresion = 'D' then
                        begin

      with productos do
         begin
             close;
             sql.Clear;
             sql.Add('select b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp,  Sum(a.cantidad), sum(a.cantidad * a.precio) from detailfact a');
              sql.Add('left join master_fact b On a.masterid = b.no_fact');
              sql.Add('left join turnos c On b.tiendaid = c.turnoid');
              sql.Add('Left join musuario d On c.usuarioid = d.usuarioid');
              sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
              sql.Add('left join mtartuculos F on f.cod_art = a.articuloid');
           //
              sql.Add('where b.situacion =''IMPRESA''');
              sql.Add('and f.estado =1');
              SQL.Add('AND B.TIENDAID=:DD');
              sql.Add('group by b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp');
              params[0].Value := datos.ZTurnoIDTURNO.Value;
              open;
         end;

           ImprimeDetalleArti;
     end ELSE BEGIN
 // cInf := datos.ZUconfiguracionROTULO_FC.value+'\CuadreProductos'+'.fr3';
                //  Showmessage(''+CinF);
   //    PrnProductos.LoadFromFile(cInf);
       with productos do
         begin
             close;
             sql.Clear;
             sql.Add('select b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp, a.unid, Sum(a.cantidad), sum(a.cantidad * a.precio) from detailfact a');
              sql.Add('left join master_fact b On a.masterid = b.no_fact');
              sql.Add('left join turnos c On b.tiendaid = c.turnoid');
              sql.Add('Left join musuario d On c.usuarioid = d.usuarioid');
              sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
              sql.Add('left join mtartuculos F on f.cod_art = a.articuloid');
           //
              sql.Add('where b.situacion =''IMPRESA''');
              sql.Add('and f.estado =1');
              SQL.Add('AND B.TIENDAID=:DD');
              sql.Add('group by b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp, a.unid');
              params[0].Value := datos.ZTurnoIDTURNO.Value;
              open;
         end;

         PrnProductos.PrepareReport(true);
      PrnProductos.Print;
     END;
  end;

   if application.MessageBox ('Deseas Cerrar Definitivamente este Turno ?????','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin



   
    datos.ZTurno.Edit;
    datos.ZTurnoESTADO.Value := 2;
    datos.ZTurno.ApplyUpdates;
    datos.Data.Commit;
    AsignaTurno := 0;


    with UpG do
        begin
          Close;
          sql.Clear;
          sql.Add('set generator GEN_MASTER_FACT_CODIGO to 0');
          ExecSQL;
        end;


     Showmessage(' Turno ha sido Cerrado Sastifactoriamente ');


  //  InicioMDI.BTCerrarTurno.Caption := 'Abrir Turno';
    // inicioMDI.barrastatus.Panels.Items[6].Text :='No Existe Turno Abierto *****  ';
   close;
                                 end else begin
                                               close;
                                          end;




end;


procedure TFrmTurno.cxButton3Click(Sender: TObject);
begin
 datos.ZTurno.CancelUpdates;
    datos.Data.Rollback;
    cxbutton1.Enabled := true;
  //  cxbutton2.Enabled := false;
    cxbutton3.Enabled := false;
    oppanel.Enabled := false;
    datos.ZTurno.Close;
    close;
end;

procedure TFrmTurno.cxButton4Click(Sender: TObject);
begin
//opbuscarEmpleado.Visible := true;
zqusuario.Open;

end;

procedure TFrmTurno.cxButton6Click(Sender: TObject);
begin

//         datos.ZUconfiguracion.Open;
//
//  if EdClave.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
//     begin



end;
procedure TFrmTurno.BtPagosSolidaridadClick(Sender: TObject);
begin
with QSolidaridad do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MSOLIDARIDAD');
    sql.Add('where idturno =:turnos');
    params[0].Value := AsignaTurno;
    open;
  end;

     RepSolidaridad.PrepareReport(true);
      RepSolidaridad.ShowPreparedReport;

end;

procedure TFrmTurno.BTConsultaTClick(Sender: TObject);
begin


datos.ZTurno.Edit;
//tos.ZTurnoEFECTIVOCAJA.Value :=  cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
GbEfectivo.Visible := false;


     //showmessage(''+IntToStr(AsignaTurno)+' '+INtToStr(AsignaUsuario));

 with maxventa do
  begin
    close;
    sql.Clear;
    sql.Add('select sum(a.pagoxefectivo) venta, sum(a.pagoxtarjeta) TC  from master_fact a');
    sql.Add('where a.tiendaid =:idturno');
    sql.Add('and a.tipo =''Contado''');
    sql.Add('and a.condicion =''ACTIVA''');
    sql.Add('and a.situacion =''IMPRESA''');
  //  sql.Add('and a.usuarioID =:ppp');
    params[0].Value := AsignaTurno;
  //  params[1].Value :=AsignaUsuario;
    open;
  end;



   with sumcobro do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(monto) cobro from recibo_pago');
    // sql.Add('where usuarioid=:Uop');
     sql.Add('where idturno =:turno');
   //  params[0].Value := AsignaUsuario;
     params[0].Value := asignaturno;
     open;
   end;

  with SumNc do
    begin
      close;
      sql.Clear;
      sql.Add('select sum(monto) suma from mnoc');
      sql.Add('where Idturno =:IDT');
      sql.Add('and afecta_caja = 1');
    //  sql.Add('and usuarioID =:us');
      params[0].Value := AsignaTUrno;
    //  params[1].Value  := AsignaUsuario;
      open;
    end;

//
    with sumGastos do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(importe) suma from control_gastos');
     sql.Add('where tuRnoID =:fecha1');
    // sql.Add('and usuarioid=:ppp');
     params[0].Value := AsignaTurno;
    // params[1].Value :=AsignaUsuario;
     open;
   end;



  datos.ZTurnoTOTALVENTAS.Value := maxventaventa.Value;
 // datos.ZTurnoCHEQUE.Value      := maxventaCK.Value;
  datos.ZTurnoTC.Value          := maxventaTC.Value;
  Datos.ZTurnoCOBRANZA.Value    := Sumcobrocobro.Value;
  Datos.ZTurnoNC.Value          := SumNCsuma.Value;
  datos.ZTurnoGASTOS.Value      := SumGastosSuma.Value;

  datos.ZTurnoTOTALEINGRESO.Value := maxventaventa.Value +  maxventaTC.Value + Sumcobrocobro.Value;
  datos.ZturnoTotalegresos.value  := datos.ZTurnoGASTOS.Value + datos.ZTurnoNC.Value;

  Datos.ZTurnoTOTALCUADRE.Value := (datos.ZTurnoTOTALEINGRESO.Value - datos.ZturnoTotalegresos.value)+ datos.ZTurnoEFECTIVO_INICIAL.Value;




  datos.ZTurnoDESCUADRE.Value  := 0.00;
  datos.ZTurnoSOBRANTES.Value := 0.00;

//    if datos.zturnodescuadre.Value > 0.00 then
//    begin
//      GroupBox7.Caption := 'Monto Sobrante';
//      cxDBCalcEdit11.Style.Font.Color := clRed;
//    end;
//
//    if datos.zturnodescuadre.Value < 0.00 then
//    begin
//       GroupBox7.Caption := 'Monto Faltante';
//       cxDBCalcEdit11.Style.Font.Color := clBlue;
//      end;
//
//    if datos.zturnodescuadre.Value = 0.00 then
//    begin
//       GroupBox7.Caption := 'Cuadre Exacto';
//       cxDBCalcEdit11.Style.Font.Color := clGreen;
//      end;
//

   OpImprimir.Enabled := true;
   cxButton8.Enabled := true;

end;

procedure TFrmTurno.cxGrid1DBTableView1EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);

var
    value_old, value_new:variant;
begin


//   if (cxGrid1DBTableView1cantidad.Index = AItem.Index) then begin
//
//     //     Showmessage(''+IntTostr(datos.ZDetalleEfectivocantidad.Value));
////       value_old:=AItem.EditValue;
////       value_new:='????';
////       if MyProcedure(value_new,value_old) then begin
////            ShowMessage('Save new value');
////       end else
////       begin
////            ShowMessage('do not save changes');
////       end;
//   end;
end;

procedure TFrmTurno.cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
       //   datos.ZTurno.Edit;
//datos.ZTurnoEFECTIVOCAJA.Value :=  cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
end;

procedure TFrmTurno.EdClaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
        begin
           cxButton29.SetFocus;
        end;
end;

procedure TFrmTurno.Edit2Change(Sender: TObject);
begin
{
with zqusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.Add('where b.nombres_emp like '+#39+'%'+Edit2.Text+'%'+#39);
    open;
  end;}
end;

procedure TFrmTurno.enviaremail;
var
IdMessage1: TIdMessage;
IdSMTP1: TIdSMTP;
Attachment: TIdAttachment;
Lproducto, lcuadre, Lgastos : string;
myYear, myMonth, myDay : Word;
begin

 DecodeDate(datos.ZTurnoFECHA.Value, myYear, myMonth, myDay);



lcuadre := 'C:\PrintSoft PV\Data\PDF\Cuadre-'+IntToStr(myday)+'-'+IntToStr(mymonth)+'-'+IntToStr(myyear)+'-'+datos.ZTurnoNOMBRES_EMP.Value+'.pdf';
Lproducto := 'C:\PrintSoft PV\Data\PDF\Pruoducto-'+IntToStr(myday)+'-'+IntToStr(mymonth)+'-'+IntToStr(myyear)+'-'+datos.ZTurnoNOMBRES_EMP.Value+'.pdf';
Lgastos         := 'C:\PrintSoft PV\Data\PDF\Gastos-'+IntToStr(myday)+'-'+IntToStr(mymonth)+'-'+IntToStr(myyear)+'-'+datos.ZTurnoNOMBRES_EMP.Value+'.pdf';


      try
//         Ai.Animate := true;

//a32.Active     := true;

        // Application.ProcessMessages;
          SMTP.Username := DATOS.ZUconfiguracionEMUSUARIO.Value;
          sMTP.Password := datos.zuconfiguracionemcontrasena.Value;

          Mdata.Subject := 'Cadre de Caja :'+ ' '+DateToStr(datos.ZTurnoFECHA.Value);
          Mdata.Recipients.EMailAddresses := datos.ZUconfiguracionEMDESTINATARIOS.Value;
          Mdata.Body.Text := 'PrintSoft PV le Envia un informe adjunto correspondiente al cuadre realizado en fecha :'+' '+DateToStr(datos.ZTurnoFECHA.Value)
                        +' EN el turno de '+'  '+datos.ZTurnoNOMBRES_EMP.Value;

          Attachment := TIdAttachmentFile.Create(mdata.MessageParts, lcuadre);
          Attachment := TIdAttachmentFile.Create(mdata.MessageParts, lproducto);
          Attachment := TIdAttachmentFile.Create(mdata.MessageParts, lgastos);

         TRY
          SMTP.Connect;
          SMTP.Send(mDATA);

         FINALLY
          SMTP.Disconnect(TRUE);
          Attachment.Free;
          //a3.Active     := false;
          pIndicador.Visible := False;
         END;

      except
      On E: Exception do
        ShowMessage(E.Message);

      end;
end;

procedure TFrmTurno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmTurno := nil;
Action := caFree;
end;

procedure TFrmTurno.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
   GbEfectivo.Visible := false;
  end;
end;

procedure TFrmTurno.FormShow(Sender: TObject);
begin


//
//     panel1.Visible := true;
//     clave.SetFocus;
      DATOS.ZTurno.open;
     DATOS.ZTurno.Close;
      opPanel.Enabled := true;

//     GbEfectivo.Visible := false;
//       cxButton6.Enabled := false;
//         cxButton8.Enabled := false;
//         OpImprimir.Enabled := false;


if DATOS.ZUconfiguracionACTIVARSOLIDARIDAD.Value = 'SI' then
   begin
               panel23.Visible := false;
   end else begin
               panel23.Visible := false;
            end;

   permisos;

 with datos.ZTurno do
              begin
                close;
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

datos.ZManTurnos.Open;
datos.ZTurno.Edit;
//tos.ZTurnoEFECTIVOCAJA.Value :=  cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
GbEfectivo.Visible := false;


     //showmessage(''+IntToStr(AsignaTurno)+' '+INtToStr(AsignaUsuario));

 with maxventa do
  begin
    close;
    sql.Clear;
    sql.Add('select sum(a.pagoxefectivo) venta, sum(a.pagoxtarjeta) TC  from master_fact a');
    sql.Add('where a.tiendaid =:idturno');
    sql.Add('and a.tipo =''Contado''');
    sql.Add('and a.condicion =''ACTIVA''');
    sql.Add('and a.situacion =''IMPRESA''');
    sql.Add('and a.cajeroid =:ppp');
    params[0].Value := AsignaTurno;
    params[1].Value :=AsignaUsuario;
   open;
  end;


   with zMaxCredito do
  begin
    close;
    sql.Clear;
    sql.Add('select SUM(A.abono) ABONO, SUM(A.pendiente) PENDIENTE, sum(a.montopago) Monto  from master_fact a');
    sql.Add('where a.tiendaid =:idturno');
    sql.Add('and a.tipo =''Contado''');
    sql.Add('and a.condicion =''ACTIVA''');
    sql.Add('and a.situacion =''IMPRESA''');
    sql.Add('and a.cajeroid =:ppp');
    params[0].Value := AsignaTurno;
    params[1].Value :=AsignaUsuario;
   open;
  end;

   with sumcobro do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(monto) cobro from recibo_pago');
     sql.Add('where usuarioid=:Uop');
     sql.Add('and idturno =:turno');
     params[0].Value := AsignaUsuario;
     params[1].Value := asignaturno;
     open;
   end;

  with SumNc do
    begin
      close;
      sql.Clear;
      sql.Add('select sum(monto) suma from mnoc');
      sql.Add('where Idturno =:IDT');
      sql.Add('and afecta_caja = 1');
      sql.Add('and usuarioID =:us');
      params[0].Value := AsignaTUrno;
      params[1].Value  := AsignaUsuario;
      open;
    end;

//
    with sumGastos do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(importe) suma from control_gastos');
     sql.Add('where turnoID =:TURNO1');
     sql.Add('and usuarioid=:ppp');
     params[0].Value := AsignaTurno;
     params[1].Value :=AsignaUsuario;
     open;
   end;



  datos.ZTurnoTOTALVENTAS.Value := maxventaventa.Value;
 // datos.ZTurnoCHEQUE.Value      := maxventaCK.Value;
  datos.ZTurnoTC.Value          := maxventaTC.Value;
  Datos.ZTurnoCOBRANZA.Value    := Sumcobrocobro.Value;
  Datos.ZTurnoNC.Value          := SumNCsuma.Value;
  datos.ZTurnoGASTOS.Value      := SumGastosSuma.Value;

  datos.ZTurnoTOTALEINGRESO.Value := maxventaventa.Value +  maxventaTC.Value + Sumcobrocobro.Value;
  datos.ZturnoTotalegresos.value  := datos.ZTurnoGASTOS.Value + datos.ZTurnoNC.Value;

  Datos.ZTurnoTOTALCUADRE.Value := (datos.ZTurnoTOTALEINGRESO.Value - datos.ZturnoTotalegresos.value)+ datos.ZTurnoEFECTIVO_INICIAL.Value;




  datos.ZTurnoDESCUADRE.Value  := 0.00;
  datos.ZTurnoSOBRANTES.Value := 0.00;

//    if datos.zturnodescuadre.Value > 0.00 then
//    begin
//      GroupBox7.Caption := 'Monto Sobrante';
//      cxDBCalcEdit11.Style.Font.Color := clRed;
//    end;
//
//    if datos.zturnodescuadre.Value < 0.00 then
//    begin
//       GroupBox7.Caption := 'Monto Faltante';
//       cxDBCalcEdit11.Style.Font.Color := clBlue;
//      end;
//
//    if datos.zturnodescuadre.Value = 0.00 then
//    begin
//       GroupBox7.Caption := 'Cuadre Exacto';
//       cxDBCalcEdit11.Style.Font.Color := clGreen;
//      end;
//

   OpImprimir.Enabled := true;
   cxButton8.Enabled := true;
//   cxButton6.Enabled := false;

end;

procedure TFrmTurno.generarpdf;
var
Lproducto, lcuadre, Lgastos : string;
myYear, myMonth, myDay : Word;
begin
 DecodeDate(datos.ZTurnoFECHA.Value, myYear, myMonth, myDay);


lcuadre := 'C:\PrintSoft PV\Data\PDF\Cuadre-'+IntToStr(myday)+'-'+IntToStr(mymonth)+'-'+IntToStr(myyear)+'-'+datos.ZTurnoNOMBRES_EMP.Value+'.pdf';
Lproducto := 'C:\PrintSoft PV\Data\PDF\Pruoducto-'+IntToStr(myday)+'-'+IntToStr(mymonth)+'-'+IntToStr(myyear)+'-'+datos.ZTurnoNOMBRES_EMP.Value+'.pdf';
Lgastos         := 'C:\PrintSoft PV\Data\PDF\Gastos-'+IntToStr(myday)+'-'+IntToStr(mymonth)+'-'+IntToStr(myyear)+'-'+datos.ZTurnoNOMBRES_EMP.Value+'.pdf';


print0.PrepareReport();

//frxPDFExport1.PageNumbers := '2-3';
//frxPDFExport1.PDFStandard := psNone;
//frxPDFExport1.PDFVersion := pv17;

frxPDFExport1.Compressed := True;
frxPDFExport1.EmbeddedFonts := False;
frxPDFExport1.Background := True;
frxPDFExport1.PrintOptimized := False;
frxPDFExport1.Outline := False;
frxPDFExport1.Transparency := True;
frxPDFExport1.Quality := 95;
frxPDFExport1.OpenAfterExport := False;
frxPDFExport1.ShowProgress := False;
frxPDFExport1.ShowDialog := False;
frxPDFExport1.FileName := lcuadre;
{Fill in the corresponding fields of the Information tab}
frxPDFExport1.Title := 'Cuadre de Caja';
frxPDFExport1.Author := 'PrintSoft PV';
 frxPDFExport1.Subject := 'Your Subject';
 frxPDFExport1.Keywords := 'Your Keywords';
 frxPDFExport1.Creator := 'Iasasoft';
 frxPDFExport1.Producer := 'PrintSoft PV';
 { Fill in the corresponding fields of the Security tab }
 frxPDFExport1.ProtectionFlags := [ePrint, eModify, eCopy, eAnnot];
 {Set the Viewer settings (Viewer tab)}
 frxPDFExport1.HideToolbar := False;
 frxPDFExport1.HideMenubar := False;
 frxPDFExport1.HideWindowUI := False;
 frxPDFExport1.FitWindow := False;
 frxPDFExport1.CenterWindow := False;
 frxPDFExport1.PrintScaling := False;
 {Export the report}
 print0.Export(frxPDFExport1);


PrnGastos.PrepareReport();

//frxPDFExport1.PageNumbers := '2-3';
//frxPDFExport1.PDFStandard := psNone;
//frxPDFExport1.PDFVersion := pv17;

frxPDFExport1.Compressed := True;
frxPDFExport1.EmbeddedFonts := False;
frxPDFExport1.Background := True;
frxPDFExport1.PrintOptimized := False;
frxPDFExport1.Outline := False;
frxPDFExport1.Transparency := True;
frxPDFExport1.Quality := 95;
frxPDFExport1.OpenAfterExport := False;
frxPDFExport1.ShowProgress := False;
frxPDFExport1.ShowDialog := False;
frxPDFExport1.FileName := Lgastos;
{Fill in the corresponding fields of the Information tab}
frxPDFExport1.Title := 'Cuadre de Caja';
frxPDFExport1.Author := 'PrintSoft PV';
 frxPDFExport1.Subject := 'Your Subject';
 frxPDFExport1.Keywords := 'Your Keywords';
 frxPDFExport1.Creator := 'Iasasoft';
 frxPDFExport1.Producer := 'PrintSoft PV';
 { Fill in the corresponding fields of the Security tab }
 frxPDFExport1.ProtectionFlags := [ePrint, eModify, eCopy, eAnnot];
 {Set the Viewer settings (Viewer tab)}
 frxPDFExport1.HideToolbar := False;
 frxPDFExport1.HideMenubar := False;
 frxPDFExport1.HideWindowUI := False;
 frxPDFExport1.FitWindow := False;
 frxPDFExport1.CenterWindow := False;
 frxPDFExport1.PrintScaling := False;
 {Export the report}
 PrnGastos.Export(frxPDFExport1);


 PrnProductos.PrepareReport();

//frxPDFExport1.PageNumbers := '2-3';
//frxPDFExport1.PDFStandard := psNone;
//frxPDFExport1.PDFVersion := pv17;

frxPDFExport1.Compressed := True;
frxPDFExport1.EmbeddedFonts := False;
frxPDFExport1.Background := True;
frxPDFExport1.PrintOptimized := False;
frxPDFExport1.Outline := False;
frxPDFExport1.Transparency := True;
frxPDFExport1.Quality := 95;
frxPDFExport1.OpenAfterExport := False;
frxPDFExport1.ShowProgress := False;
frxPDFExport1.ShowDialog := False;
frxPDFExport1.FileName :=Lproducto;
{Fill in the corresponding fields of the Information tab}
frxPDFExport1.Title := 'Cuadre de Caja';
frxPDFExport1.Author := 'PrintSoft PV';
 frxPDFExport1.Subject := 'Your Subject';
 frxPDFExport1.Keywords := 'Your Keywords';
 frxPDFExport1.Creator := 'Iasasoft';
 frxPDFExport1.Producer := 'PrintSoft PV';
 { Fill in the corresponding fields of the Security tab }
 frxPDFExport1.ProtectionFlags := [ePrint, eModify, eCopy, eAnnot];
 {Set the Viewer settings (Viewer tab)}
 frxPDFExport1.HideToolbar := False;
 frxPDFExport1.HideMenubar := False;
 frxPDFExport1.HideWindowUI := False;
 frxPDFExport1.FitWindow := False;
 frxPDFExport1.CenterWindow := False;
 frxPDFExport1.PrintScaling := False;
 {Export the report}
 PrnProductos.Export(frxPDFExport1);



end;

procedure TFrmTurno.ImprimeCuade;
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE, EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL, SIZENORMAL, pcant, ABRIRCAJONMONEDA : string;
      begin

fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;


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
             pcant    := ReadString_Ini(IniFile,'IMPRESION', 'pcant','');
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
             ABRIRCAJONMONEDA := ReadString_Ini(IniFile,'IMPRESION', 'ABRIRCAJONMONEDA','');


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
//

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('EMPRESA').asString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('CALLE').AsString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.ZUconfiguracion.FieldByName('SECTOR').AsString +', '+ DATOS.ZUconfiguracion.FieldByName('CIUDAD').asString),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').asString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').asString),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('CUADRE DE CAJA',StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);




    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('FECTIVO INICIAL......:'+FormatFloat('#,##0.00',DATOS.ZTurnoEFECTIVO_INICIAL.Value),StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('INGRESOS',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('VENTA...............:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALVENTAS.Value),StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

     //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL TARJETA.......:'+FormatFloat('#,##0.00',DATOS.ZTurnoTC.Value),StrToInt(longitud),0));
  //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);

    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('COBRANZA............:'+FormatFloat('#,##0.00',DATOS.ZTurnoCOBRANZA.Value),StrToInt(longitud),0));

  //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL EFECTIVO......:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALEINGRESO.Value),StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('EGRESOS',StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);

    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('GASTOS.............:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALGASTOS.Value),StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('NOTA DE CREDITO....:'+FormatFloat('#,##0.00',DATOS.ZTurnoNC.Value),StrToInt(longitud),0));

  //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));

   /// WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL EGRESOS......:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALEGRESOS.Value),StrToInt(longitud),0));


  //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('EFECTIVO CAJA......:'+FormatFloat('#,##0.00',DATOS.ZTurnoEFECTIVOCAJA.Value),StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL CUADRE ......:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALCUADRE.Value),StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('FALTANTES ........:'+FormatFloat('#,##0.00',DATOS.ZTurnoDESCUADRE.Value),StrToInt(longitud),0));

    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('SOBRANTES ........:'+FormatFloat('#,##0.00',DATOS.ZTurnosobrantes.Value),StrToInt(longitud),0));


   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------',StrToInt(longitud),0));






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

WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value, '\x1B@\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0D\x1Bi\x0A\x0D');

end;


procedure TFrmTurno.ImprimeDetalleArti;
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL : string;

      begin

fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

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



 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
// WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
 //WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('RNC  :'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));

 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));



     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('DETALLE DE ARTICULOS',StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('CAJERO  :'+MyTextReplace(productosNOMBRES_EMP.AsString),StrToInt(longitud),0));
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('FECHA     :'+MyTextReplace(productosfecha_fac.AsString),StrToInt(longitud),0));
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------',StrToInt(longitud),0));

    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

     with Productos do
      begin
          First;
          while not Eof do
          begin

             WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(Productos.FieldByName('TITULOPRN').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
          //    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
             WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(''),StrToInt(DcampoL),0)+''+espacios('',StrToInt(DcampoC1),0)+''+
                                                                                                    espacios('',StrToInt(DcampoC2),1)+''+
                                                                                                    espacios(PRODUCTOSSUM.AsString,StrToInt(DcampoD),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));
             //     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

                NEXT;
            END;

        end;

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------',StrToInt(longitud),0));

//with printer do
//begin
//
//        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
//        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
//
//        BeginDoc;
//
//        Canvas.Brush.Style := bsClear;
//
//        for i := 0 to Memo1.Lines.Count do
//          Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
//
//        Memo1.Lines.Strings[i]);
//        Canvas.Brush.Color := clBlack;
//
//        EndDoc;
//end;

WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value, '\x1B@\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0D\x1Bi\x0A\x0D');




end;

procedure TFrmTurno.imprimeGastos;
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL : string;

      begin

fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

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



 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
// WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
 //WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('RNC  :'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));

 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));


    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('DETALLE DE GASTOS',StrToInt(longitud)));
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('  CAJERO',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('CAJERO  :'+MyTextReplace(QdetalleGastosNOMBRES_EMP.AsString),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('FECHA   :'+MyTextReplace(QdetalleGastosfecha.AsString),StrToInt(longitud),0));
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));


     with QdetalleGastos do
      begin
          First;
          while not Eof do
          begin

  //              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('CONCEPTOS',StrToInt(longitud),0));
    //            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(''+MyTextReplace(QdetalleGastosDESCRIPCION.AsString),StrToInt(longitud),0));
                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

      //          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('BENEFICIADO',StrToInt(longitud),0));
        //        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(''+MyTextReplace(QdetalleGastosBENEFICIADO.AsString),StrToInt(longitud),0));
                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));


          //      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('MONTO',StrToInt(longitud),0));
            //    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',QDETALLEGASTOS.FieldByName('IMPORTE').value),StrToInt(longitud),0));
                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

                WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------',StrToInt(longitud),0));

                NEXT;
            END;

        end;

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('-----------------------------------',StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL GASTOS ...................:'+FormatFloat('#,##0.00',DATOS.ZTurnoGASTOS.Value),StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------',StrToInt(longitud),0));

//with printer do
//begin
//
//        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
//        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
//
//        BeginDoc;
//
//        Canvas.Brush.Style := bsClear;
//
//        for i := 0 to Memo1.Lines.Count do
//          Canvas.TextOut(100,180 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
//
//        Memo1.Lines.Strings[i]);
//        Canvas.Brush.Color := clBlack;
//
//        EndDoc;
//end;

WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value, '\x1B@\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0A\x0D\x1Bi\x0A\x0D');



end;


procedure TFrmTurno.permisos;
var
BTn : String;
Av : Boolean;
begin



 with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where a.idnivel =:usuarioID');
          Params[0].Value := AsignaUsuario;
          open;
        end;
//
       if datos.Qperfil.RecordCount > 0 then
          begin
            datos.qperfil.first;


            while not datos.Qperfil.eof do
               begin

               BTn := datos.QperfilNOMBRE_FORM.Text;
              // ShowMessage(''+Btn);








            //   Btn.Tag := 2;
//                btn.Enabled := true;
               datos.Qperfil.Next;
               end;




          end;

end;


procedure TFrmTurno.SpeedButton1358ddddddClick(Sender: TObject);
begin

datos.ZDetalleEfectivo.ApplyUpdates;
datos.ZTurno.Edit;
datos.ZTurnoEFECTIVOCAJA.Value :=  cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
GbEfectivo.Visible := false;

//       showmessage(''+IntToStr(AsignaTurno)+' '+INtToStr(AsignaUsuario));



 CALCULAR;
end;

procedure TFrmTurno.SpeedButton1Click(Sender: TObject);
var
 cInf : string;
NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion : String;
lvalue: Integer;
begin

datos.ZTurno.Edit;
//tos.ZTurnoEFECTIVOCAJA.Value :=  cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
GbEfectivo.Visible := false;

  calcular;



         cxButton8.Enabled := true;
         OpImprimir.Enabled := true;

         GroupBox1.Enabled := true;


   EdClave.Clear;
   PanelAutorizacion.Visible := false;
   OpImprimir.Enabled := true;
   cxButton8.Enabled := true;



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

                                           Crear_Mensages('Aviso',
                                          'El Archivo de configuracion de la aplicación no existe, llamar al soporte',
                                          'La aplicacion cargara la base de datos local',
                                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\Aviso.png',
                                          'OK') ;

end;


if OpImprimir.Checked[0]  then
  begin

if Tipoimpresion = 'D' then
                        begin
         ImprimeCuade;
     end ELSE BEGIN

     //    cInf := datos.ZUconfiguracionROTULO_FC.value+'\CuadreEfectivo'+'.fr3';
                //  Showmessage(''+CinF);
//       print0.LoadFromFile(cInf);
      print0.PrepareReport(true);
      print0.print;
     END;
  end;


  if OpImprimir.Checked[1]  then
  begin


if Tipoimpresion = 'D' then
                        begin


      with QdetalleGastos do
        begin
          close;
          sql.Clear;
            sql.Add('select a.*, b.descripcion, e.nombres_emp from CONTROL_GASTOS a');
            sql.Add('left join conceptos_gastos b On a.gastosid = b.conceptosid');
            sql.Add('left join turnos c On a.turnoid = c.turnoid');
            sql.Add('Left join musuario d On c.usuarioid = d.usuarioid ');
            sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
            sql.Add('where a.turnoId =:OPP');
            params[0].Value := datos.ZTurnoIDTURNO.Value;
            open;
        end;

       imprimeGastos;
     end ELSE BEGIN
    //  cInf := datos.ZUconfiguracionROTULO_FC.value+'\CuadreGastos'+'.fr3';

     //  PrnGastos.LoadFromFile(cInf);


      with QdetalleGastos do
        begin
          close;
          sql.Clear;
            sql.Add('select a.*, b.descripcion, e.nombres_emp from CONTROL_GASTOS a');
            sql.Add('left join conceptos_gastos b On a.gastosid = b.conceptosid');
            sql.Add('left join turnos c On a.turnoid = c.turnoid');
            sql.Add('Left join musuario d On c.usuarioid = d.usuarioid ');
            sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
            sql.Add('where a.turnoId =:OPP');
            params[0].Value := datos.ZTurnoIDTURNO.Value;
            open;
        end;

     PrnGastos.PrepareReport(true);
     PrnGastos.print ;
     END;
  end;

 if OpImprimir.Checked[2]  then
  begin

if Tipoimpresion = 'D' then
                        begin

      with productos do
         begin
             close;
             sql.Clear;
             sql.Add('select b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp, a.unid, Sum(a.cantidad), sum(a.cantidad * a.precio) from detailfact a');
              sql.Add('left join master_fact b On a.masterid = b.no_fact');
              sql.Add('left join turnos c On b.tiendaid = c.turnoid');
              sql.Add('Left join musuario d On c.usuarioid = d.usuarioid');
              sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
              sql.Add('left join mtartuculos F on f.cod_art = a.articuloid');
           //
              sql.Add('where b.situacion =''IMPRESA''');
              sql.Add('and f.estado =1');
              SQL.Add('AND B.TIENDAID=:DD');
              sql.Add('group by b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp, a.unid');
              params[0].Value := datos.ZTurnoIDTURNO.Value;
              open;
         end;

         ImprimeDetalleArti;
     end ELSE BEGIN
 // cInf := datos.ZUconfiguracionROTULO_FC.value+'\CuadreProductos'+'.fr3';
                //  Showmessage(''+CinF);
   //    PrnProductos.LoadFromFile(cInf);
       with productos do
         begin
             close;
             sql.Clear;
             sql.Add('select b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp, a.unid, Sum(a.cantidad), sum(a.cantidad * a.precio) from detailfact a');
              sql.Add('left join master_fact b On a.masterid = b.no_fact');
              sql.Add('left join turnos c On b.tiendaid = c.turnoid');
              sql.Add('Left join musuario d On c.usuarioid = d.usuarioid');
              sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
              sql.Add('left join mtartuculos F on f.cod_art = a.articuloid');
           //
              sql.Add('where b.situacion =''IMPRESA''');
              sql.Add('and f.estado =1');
              SQL.Add('AND B.TIENDAID=:DD');
              sql.Add('group by b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp, a.unid');
              params[0].Value := datos.ZTurnoIDTURNO.Value;
              open;
         end;

         PrnProductos.PrepareReport(true);
      PrnProductos.Print;
     END;
  end;

 // RepDetalleEfectivo.PrepareReport(true);
 // RepDetalleEfectivo.print;



   if application.MessageBox ('Deseas Cerrar Definitivamente este Turno ?????','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
   if DATOS.ZUconfiguracionENVIAREMAILCUADRE.Value = 'SI' then
      BEGIN

      pIndicador.Visible := true;
               TTask.Run(procedure
                          Begin
                          Sleep(5000);
                          lvalue:= Random(10);
                          TThread.Synchronize(nil,
                            procedure
                            begin
                                generarpdf;
                                enviaremail;

                                datos.ZTurno.Edit;
                                 datos.ZTurnoESTADO.Value := 2;
                                 datos.ZTurno.ApplyUpdates;
                                 datos.Data.Commit;
                                 AsignaTurno := 0;


                                  with UpG do
                                      begin
                                        Close;
                                        sql.Clear;
                                        sql.Add('set generator GEN_MASTER_FACT_CODIGO to 0');
                                        ExecSQL;
                                      end;
                                   with qeliminacocina do
                                       begin
                                         close;
                                         sql.Clear;
                                         sql.Add('delete from enviococina where id > 0');
                                         ExecSQL;
                                       end;

                                       with qeliminacocina do
                                       begin
                                         close;
                                         sql.Clear;
                                         sql.Add('delete from d_enviococina where id > 0');
                                         ExecSQL;
                                       end;


                             datos.data.Commit;

                                         Crear_Mensages('Aviso',
                                          'Turno Cerrado',
                                          'Turno ha sido Cerrado Sastifactoriamente',
                                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\Aviso.png',
                                          'OK') ;


                                //  InicioMDI.BTCerrarTurno.Caption := 'Abrir Turno';
                                  // inicioMDI.barrastatus.Panels.Items[6].Text :='No Existe Turno Abierto *****  ';
                                 close;


                            end);
                          End);


      END else begin
                   datos.ZTurno.Edit;
                     datos.ZTurnoESTADO.Value := 2;
                     datos.ZTurno.ApplyUpdates;
                     datos.Data.Commit;
                     AsignaTurno := 0;


                      with UpG do
                          begin
                            Close;
                            sql.Clear;
                            sql.Add('set generator GEN_MASTER_FACT_CODIGO to 0');
                            ExecSQL;
                          end;


                          with qeliminacocina do
                             begin
                               close;
                               sql.Clear;
                               sql.Add('delete from enviococina where id > 0');
                               ExecSQL;
                             end;

                             with qeliminacocina do
                             begin
                               close;
                               sql.Clear;
                               sql.Add('delete from d_enviococina where id > 0');
                               ExecSQL;
                             end;


                             datos.data.Commit;
                                          Crear_Mensages('Aviso',
                                          'Turno Cerrado',
                                          'Turno ha sido Cerrado Sastifactoriamente',
                                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\Aviso.png',
                                          'OK') ;


                    //  InicioMDI.BTCerrarTurno.Caption := 'Abrir Turno';
                      // inicioMDI.barrastatus.Panels.Items[6].Text :='No Existe Turno Abierto *****  ';
                     close;

               end;

                                 end else begin
                                               close;
                                          end;



end;

procedure TFrmTurno.SpeedButton9Click(Sender: TObject);
begin

GbEfectivo.Visible := true;
//

with borrar do
  begin
    close;
    sql.Clear;
    sql.Add('delete from DETALLE_EFECTIVO');
    ExecSQL;
  end;

 datos.ZDetalleEfectivo.close;
 datos.ZDetalleEfectivo.open;
with enominaciones do
  begin
    close;
    sql.clear;
    sql.add('select * from TBEFECTIVO');
    sql.Add('order by Id ASC');

    opeN;

    first;


    while not eof do
         begin
           with maxEfectivo do
             begin
               close;
               sql.Clear;
               sql.Add(' select max(id) from DETALLE_EFECTIVO ');
               open;
             end;

             datos.ZDetalleEfectivo.Open;
             datos.ZDetalleEfectivo.Insert;
             datos.ZDetalleEfectivoID.Value := maxEfectivomax.Value + 1;
             datos.ZDetalleEfectivoNOMINACION.Value := StrToInt(enominacionesnominacion.Value);
             datos.ZDetalleEfectivoCANTIDAD.Value := 0;

             datos.ZDetalleEfectivo.Post;
             next;
         end;


         datos.ZDetalleEfectivo.ApplyUpdates;

end;
end;

end.
