unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxButtons, cxTextEdit, cxCurrencyEdit, cxPC, ZAbstractDataset, Mask, DBCtrls,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, ZSqlUpdate, cxGroupBox,
  cxRadioGroup, frxClass, frxDBSet, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxPCdxBarPopupMenu, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu, printers, WinSpool, StrUtilS,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmGet_CXC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    clientes: TZReadOnlyQuery;
    clientesCODIGO: TIntegerField;
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
    DsMaster_Creditos: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Panel2: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Lmonto: TLabel;
    Lpendiente: TLabel;
    abonar: TcxCurrencyEdit;
    Panel3: TPanel;
    OK: TcxButton;
    label6: TcxCurrencyEdit;
    label11: TcxCurrencyEdit;
    numero_recibo: TZQuery;
    FbqRecibo_Pago: TZReadOnlyQuery;
    DsRecibo_Pago: TDataSource;
    numero_reciboNUMERO: TWideStringField;
    detalle: TZQuery;
    zu_detalle_pago: TZUpdateSQL;
    dsdetalle_pago: TDataSource;
    detalleNO_RECIBO: TIntegerField;
    detalleNO_FACT: TIntegerField;
    detalleFECHA: TDateField;
    detalleMONTO: TFloatField;
    detalleABONO: TFloatField;
    detallePENDIENTE: TFloatField;
    Edit1: TEdit;
    Zq_fecha: TZReadOnlyQuery;
    Zq_fechaFECHA_FAC: TDateField;
    actualizar: TZReadOnlyQuery;
    DateField1: TDateField;
    master_cobro: TfrxDBDataset;
    max: TZQuery;
    maxNUMERO: TIntegerField;
    data_print1: TfrxDBDataset;
    print1: TfrxReport;
    print0: TfrxReport;
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
    Label22: TLabel;
    cxButton2: TcxButton;
    caj: TcxTextEdit;
    Label23: TLabel;
    OpBuscarCLiente: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Edit2: TEdit;
    Edit4: TEdit;
    master_credito: TZReadOnlyQuery;
    master_creditoNO_FACT: TIntegerField;
    master_creditoFECHA_FAC: TDateField;
    master_creditoTIPO: TWideStringField;
    master_creditoCOD_CLIENT: TWideStringField;
    master_creditoCOD_EMP: TWideStringField;
    master_creditoNO_FACT1: TWideStringField;
    master_creditoMONTO: TFloatField;
    master_creditoHORA: TTimeField;
    master_creditoPOGXITBS: TFloatField;
    master_creditoMONTOPAGO: TFloatField;
    master_creditoTIPOPAGO: TWideStringField;
    master_creditoCONDICION: TWideStringField;
    master_creditoRENTA: TWideStringField;
    master_creditoCODIGO: TIntegerField;
    master_creditoTIPOITBS: TWideStringField;
    master_creditoVENDEDOR: TWideStringField;
    master_creditoSITUACION: TWideStringField;
    master_creditoCAJERO: TWideStringField;
    master_creditoNCF: TWideStringField;
    master_creditoRNC_CLIENTE: TWideStringField;
    master_creditoNCF1: TFloatField;
    master_creditoNOM_CLIENTE: TWideStringField;
    master_creditoDESCUENTO: TFloatField;
    master_creditoROTULO: TWideStringField;
    master_creditoNO_AUTORIZA_NCF: TFloatField;
    master_creditoMONTOFINANCIADO: TFloatField;
    master_creditoCUOTAS: TIntegerField;
    master_creditoINTERES: TFloatField;
    master_creditoDIRECCION: TWideStringField;
    master_creditoPAGADO: TFloatField;
    master_creditoLEYPROPINA: TFloatField;
    master_creditoCOMPROBANTE: TWideStringField;
    master_creditoTERMINAL: TWideStringField;
    master_creditoEFECTIVO: TFloatField;
    master_creditoDEVOLUCION1: TFloatField;
    master_creditoRESTANTE: TFloatField;
    master_creditoABONO: TFloatField;
    master_creditoCHEK: TWideStringField;
    master_creditoNO_RECIBO: TIntegerField;
    master_creditoPAGADOCXC: TFloatField;
    master_creditoMESES: TIntegerField;
    master_creditoDIAS: TIntegerField;
    master_creditoPENDIENTE: TFloatField;
    master_creditoESTADOPAGO: TWideStringField;
    master_creditoDEVOLUCION: TFloatField;
    master_creditoCONDICION_PAGO: TIntegerField;
    master_creditoCOMBO: TWideStringField;
    master_creditoCOBRADO: TIntegerField;
    master_creditoQUEES: TWideStringField;
    master_creditoUSUARIOID: TIntegerField;
    master_creditoCLIENTEID: TIntegerField;
    master_creditoCONDICIONVENTA: TWideStringField;
    master_creditoTIENDAID: TIntegerField;
    master_creditoPINREFERIDO: TWideStringField;
    master_creditoNOMBRES_EMP: TWideStringField;
    Config: TfrxDBDataset;
    MaxRecibo: TZQuery;
    IntegerField1: TIntegerField;
    master_creditoFECHAVENCIMIENTO: TDateField;
    Balance: TZReadOnlyQuery;
    UpCredito: TZReadOnlyQuery;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    cxButton8: TcxButton;
    Panel5: TPanel;
    cxButton3: TcxButton;
    cxButton6: TcxButton;
    Panel4: TPanel;
    CmontoPago: TcxCurrencyEdit;
    Label4: TLabel;
    cxButton7: TcxButton;
    Panel6: TPanel;
    Panel7: TPanel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column2: TcxGridDBColumn;
    cxGrid3DBTableView1Column3: TcxGridDBColumn;
    cxGrid3DBTableView1Column4: TcxGridDBColumn;
    cxGrid3DBTableView1Column5: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Label16: TLabel;
    op1: TcxRadioGroup;
    op2: TcxRadioGroup;
    Edit3: TEdit;
    Label17: TLabel;
    IbqClientesTELEFONO3: TWideStringField;
    IbqClientesEMAIL: TWideStringField;
    IbqClientesRUTA_ID: TIntegerField;
    IbqClientesREGIONID: TIntegerField;
    IbqClientesPROVINCIAID: TIntegerField;
    IbqClientesMUNICIPIOID: TIntegerField;
    FrxClientes: TfrxDBDataset;
    FrxDetalle: TfrxDBDataset;
    clientesCOMISION: TFloatField;
    clientesNUMEROPIN: TWideStringField;
    clientesTELEFONO3: TWideStringField;
    clientesEMAIL: TWideStringField;
    clientesRUTA_ID: TIntegerField;
    clientesREGIONID: TIntegerField;
    clientesPROVINCIAID: TIntegerField;
    clientesMUNICIPIOID: TIntegerField;
    clientesMUSADOS: TFloatField;
    clientesMPENDIENTES: TFloatField;
    IbqClientesNOMBRES: TWideStringField;
    master_creditoCLIENTENOMBRE: TWideStringField;
    clientesNOMBRES: TWideStringField;
    master_creditoNUMERO_FACTURA: TFloatField;
    BalanceSUM: TExtendedField;
    FbqRecibo_PagoNO_RECIBO1: TIntegerField;
    FbqRecibo_PagoNO_RECIBO: TWideStringField;
    FbqRecibo_PagoFECHA: TDateField;
    FbqRecibo_PagoCOD_CLIENTE: TWideStringField;
    FbqRecibo_PagoDESCRIPCION: TWideStringField;
    FbqRecibo_PagoMONTO: TFloatField;
    FbqRecibo_PagoLETRAS1: TWideStringField;
    FbqRecibo_PagoTIPO: TWideStringField;
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton3MouseEnter(Sender: TObject);
    procedure cxButton3MouseLeave(Sender: TObject);
    procedure cxButton4MouseEnter(Sender: TObject);
    procedure cxButton4MouseLeave(Sender: TObject);
    procedure cxButton5MouseEnter(Sender: TObject);
    procedure cxButton5MouseLeave(Sender: TObject);
    procedure cxButton6MouseEnter(Sender: TObject);
    procedure cxButton6MouseLeave(Sender: TObject);
    function TraeNumeroOrden(codigo:Integer):Integer;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKClick(Sender: TObject);
    procedure abonarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    PROCEDURE impremedirecto;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGet_CXC: TFrmGet_CXC;

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

{$R *.dfm}
uses tools, Unit2, Unit63, Unit92, UInicio;

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


procedure TFrmGet_CXC.abonarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    ok.SetFocus;
  end;
end;

procedure TFrmGet_CXC.cxButton1Click(Sender: TObject);
begin
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


procedure TFrmGet_CXC.cxButton2Click(Sender: TObject);
begin
ibqclientes.Close;
ibqclientes.Open;
Opbuscarcliente.Visible := true;
edit2.SetFocus;
end;

function TFrmGet_CXC.TraeNumeroOrden(codigo:Integer):Integer;
begin

   with numero_recibo do
     begin
     close;
     open;
   end;
   if numero_recibo.Fields[0].IsNull then
      Result := 1
   else
      Result := numero_recibo.Fields[0].Value + 1;

end;

procedure TFrmGet_CXC.OKClick(Sender: TObject);
begin
if abonar.Value > master_creditopendiente.Value then
 begin
    Showmessage('***** El monto introducido es mayor que el monto pendiente, favor de retificar *****');
 end else
 begin

   if abonar.Value <= 0.00 then begin
                                  Showmessage('***** Debes Colocar un monto $$ *****');
                                end else begin
      datos.Zrecibo_pago.Edit;
      datos.Zrecibo_pagoCLIENTEID.Value      :=ibqclientescodigo.Value;
      datos.Zrecibo_pagoMONTO.Value          := datos.Zrecibo_pagoMONTO.Value + abonar.Value;
      datos.Zrecibo_pagoNOMBRE_CLIENTE.Value := ibqclientesnombres.Value;


      with detalle do
        begin
          open;
          insert;
          detalleno_recibo.Value  := datos.Zrecibo_pagoNO_RECIBO1.Value;
          detalleno_fact.Value    := master_creditono_fact.Value;
          detallefecha.Value      := master_creditofecha_fac.Value;
          detallemonto.Value      := master_creditomonto.Value;
          detalleabono.Value      := abonar.Value;
          detallependiente.Value  := master_creditopendiente.Value - abonar.Value;
          POST;
       end;

      with detalle do
        begin
            close;
            sql.Clear;
            sql.Add('select * from detalle_pago');
            sql.Add('where no_recibo =:recibo');
            params[0].Value := datos.Zrecibo_pagoNO_RECIBO1.Value;
            open;


        end;


    if datos.Zrecibo_pagoDESCRIPCION.Value ='' then
       begin
            if abonar.Value < master_creditopendiente.Value then
               begin
                    datos.Zrecibo_pagoDESCRIPCION.Value := 'Abono(s) a la(s) Factura(s) #'+master_creditoNUMERO_FACTURA.text;
                    edit1.Text := '1';
              end else if abonar.Value = master_creditopendiente.Value then
               begin
                    edit1.Text := '2';
                    datos.Zrecibo_pagoDESCRIPCION.Value := 'Pago(s) a la(s) Factura(s) #'+master_creditoNUMERO_FACTURA.text;
               end;
      end else


   if datos.Zrecibo_pagoDESCRIPCION.Value <>'' then
       begin
            if abonar.Value < master_creditopendiente.Value then
               begin
               if edit1.Text = '1' then begin
                  datos.Zrecibo_pagoDESCRIPCION.Value :=datos.Zrecibo_pagoDESCRIPCION.Value + ',#'+master_creditoNUMERO_FACTURA.text;
                  edit1.Text :='1';
               end else if edit1.Text = '2' then begin
                    datos.Zrecibo_pagoDESCRIPCION.Value :=datos.Zrecibo_pagoDESCRIPCION.Value+ ' ,Abono(s) a la(s) Factura(s) #'+master_creditoNUMERO_FACTURA.text;
                    edit1.Text :='2';
               end;
       end;

        if abonar.Value = master_creditopendiente.Value then
               begin
               if edit1.Text = '1' then begin
                  datos.Zrecibo_pagoDESCRIPCION.Value := ',Pago(s) a la(s) Factura(s) #'+master_creditoNUMERO_FACTURA.text;
                  edit1.Text :='2';
               end else if edit1.Text = '2' then begin
                    datos.Zrecibo_pagoDESCRIPCION.Value := datos.Zrecibo_pagoDESCRIPCION.Value+' ,#'+master_creditoNUMERO_FACTURA.text;
                    edit1.Text :='2';
               end;
               end;




 end;
 datos.Zrecibo_pagoLETRAS1.Value := Num2Words(datos.Zrecibo_pagoMONTO.Value);
 abonar.Clear;
panel2.Visible := false;
panel6.Visible := TRUE;

end;
end;

end;

procedure TFrmGet_CXC.cxButton3Click(Sender: TObject);
begin
if asignaTurno = 0 then
  begin
      Showmessage(' ** No Hay Turno Abierto Disponible **');
  end else begin

  with max do
  begin
    close;
    open;
  end;

datos.Zrecibo_pago.Open;
datos.Zrecibo_pago.insert;
datos.Zrecibo_pagono_recibo1.Value := maxnumero.Value + 1 ;
datos.Zrecibo_pagoUSUARIOID.Value := AsignaUsuario;
datos.Zrecibo_pagoIDTURNO.Value   := AsignaTurno;
//showmessage(''+IntToStr(datos.Zrecibo_pagono_recibo1.Value));
datos.Zrecibo_pagono_recibo.Value := '000'+INtToStr(datos.Zrecibo_pagono_recibo1.Value);
datos.Zrecibo_pagofecha.Value     := now();
datos.Zrecibo_pagotipo.Value := 'EFECTIVO';
cxPageControl1.Enabled := true;
cxPageControl1.Pages[0].Show;

edit3.Text := IntToStr(datos.Zrecibo_pagono_recibo1.Value);
cxButton3.Enabled := false;
cxButton4.Enabled := true;
cxButton5.Enabled := true;
cxButton6.Enabled := false;

end;
end;

procedure TFrmGet_CXC.cxButton3MouseEnter(Sender: TObject);
begin
label12.Visible := true;
label12.Caption := 'Creación de Nuevo Recibo';
end;

procedure TFrmGet_CXC.cxButton3MouseLeave(Sender: TObject);
begin
 label12.Visible := false;
end;

procedure TFrmGet_CXC.cxButton4Click(Sender: TObject);
var
cInf : String;
codigo2 : integer;
cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;
         longitud, campoD, campoC1, campoC2, campol, campof : string;
         DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
          PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, MEN_PIE : string;

          NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion : String;
          Tbalance : Currency;
begin

Tbalance := 0.00;
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
codigo2 := StrToInt(cod.Text);
 if dbedit2.Text =''then
        begin
            MsgError('Recibo no puede ser guardado'#13+
      	               'Favor introducir el nombre del cliente');
            dbedit2.SetFocus;
        end else begin

      with detalle do
        begin
           first;
           while not eof do
           begin


             with actualizar do
               begin
                 close;
                 sql.Clear;
                 sql.Add('update master_fact set abono=abono + :abono');
                 sql.Add(',pendiente =:pendiente');
                 sql.Add(',quees =:pediente');
                 sql.Add('where no_fact =:no_fact');
                 params[0].Value := detalleabono.Value;
                 params[1].Value := detallependiente.Value;

                 if detallependiente.Value = 0.00 then
                   begin
                    params[2].Value := 'SALDADA';
                   end;

                 if detallependiente.Value > 0.00 then
                   begin
                    params[2].Value := 'ABONADO';
                   end;
                    params[3].Value := detalleno_fact.Value;

                 ExecSQL;


               end;
               next;
           end;
        end;

           with UpCredito do
                 begin
                   close;
                   sql.Clear;
                   sql.Add('update cliente set Musados =:Musado, balance =:balance ');
                   sql.add('where codigo =:codigo');
                   params[0].Value := IbqClientesMUSADOS.Value - (datos.Zrecibo_pagoMONTO.Value);
                   params[1].Value := IbqClientesBALANCE.Value + datos.Zrecibo_pagoMONTO.Value;
                   params[2].Value := IbqClientesCODIGo.Value;
                   ExecSQL;
                 end;


          DATOS.Zrecibo_pago.ApplyUpdates;
          detalle.ApplyUpdates;
          datos.Data.Commit;



          with clientes do
                  begin
                    close;
                    sql.Clear;
                    sql.Add('select * from cliente');
                    sql.Add('where codigo =:oppp');
                    params[0].Value :=codigo2;
                    open;
                  end;

         if op1.ItemIndex = 0 then
           begin


           with datos.Zrecibo_pago do
               begin
                 close;
                 sql.Clear;
                 sql.Add(' select A.*, b.nombres Nombre_Cliente from recibo_pago A');
                 sql.Add('left join cliente b On a.clienteid = b.codigo');
                 sql.Add('where a.NO_RECIBO1 =:opp');
                 params[0].Value := StrToInt(edit3.Text);
                 open;
               end;

            with balance do
                  begin
                    close;
                    sql.clear;
                    sql.add('select sum(a.pendiente) from master_fact a');
                    sql.add('left join cliente b On a.clienteid = b.codigo');
                    sql.add('left join musuario c On a.usuarioid = c.usuarioid');
                    sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
                    sql.add('where a.situacion  =:opcion2');
                    sql.add('and a.condicion    =:OPCION4');
                    sql.Add('AND A.ROTULO       =:OPCION5');
                    sql.Add('and a.clienteid    =:opcion66');
                    sql.Add('and a.tipo =:tipo1');
                    sql.Add('and a.quees <>''SALDADA''');
                    Params[0].Value := 'IMPRESA';
                    Params[1].Value := 'ACTIVA';
                    Params[2].Value := 'FACTURACION';
                    Params[3].Value := codigo2;
                    Params[4].Value := 'CREDITO';
                    open;
                  end;

             Tbalance := BalanceSUM.Value - Datos.Zrecibo_pagoMONTO.Value;
             if op2.ItemIndex = 0 then
                 begin
                 cInf := datos.ZUconfiguracionROTULO_FC.value+'\ReciboCxCTicket'+'.fr3';

                  print0.LoadFromFile(cInf);
                  print0.variables['balance']  :=Tbalance;
                  print0.PrepareReport;
                  print0.ShowReport;
                 end;

              if op2.ItemIndex = 1 then
                 begin
               //  cInf := datos.ZUconfiguracionROTULO_FC.value+'\ReciboCxCTicket'+'.fr3';
              //   print1.LoadFromFile(cInf);
                                   // print1.PrintOptions.Printer := 'Epson TM-U220 Receipt';
                     if Tipoimpresion = 'D' then
                        begin
                           impremedirecto;
                           impremedirecto;
                        end else begin
                     print1.variables['balance']  :=Tbalance;
                    print1.PrepareReport(true);
                    print1.print;
                        end;

                 end;

           end;



         datos.Zrecibo_pago.Close;
         detalle.Close;
         master_credito.Close;
         clientes.Close;
         numero_recibo.Close;
         edit1.Clear;
       //  cxPageControl1.Pages[1].Show;
        // cxPageControl1.Enabled := false;
         edit3.Clear;

          cxButton3.Enabled := true;
          cxButton4.Enabled := false;
          cxButton5.Enabled := false;
          cxButton6.Enabled := true;
           Panel6.Visible := false;
    end;

end;


procedure TFrmGet_CXC.cxButton4MouseEnter(Sender: TObject);
begin
//label13.Visible := true;
//label13.Caption := 'Guarda un Recibo creado';
end;

procedure TFrmGet_CXC.cxButton4MouseLeave(Sender: TObject);
begin
//label13.Visible := false;
end;

procedure TFrmGet_CXC.cxButton5Click(Sender: TObject);
begin
datos.zrecibo_pago.CancelUpdates;
detalle.CancelUpdates;
datos.data.Rollback;

 datos.Zrecibo_pago.Close;
         detalle.Close;
         master_credito.Close;
         clientes.Close;
         numero_recibo.Close;
         edit1.Clear;
 edit3.Clear;
edit1.Clear;
Panel6.Visible  := FALSE;
CmontoPago.Clear;
panel4.Visible := false;
//cxPageControl1.Enabled := false;

cxButton3.Enabled := true;
cxButton4.Enabled := false;
cxButton5.Enabled := false;
cxButton6.Enabled := true;
end;

procedure TFrmGet_CXC.cxButton5MouseEnter(Sender: TObject);
begin
//  label14.Visible := true;
//label14.Caption := 'Deja sin efecto un recibo creado';
end;

procedure TFrmGet_CXC.cxButton5MouseLeave(Sender: TObject);
begin
// label14.Visible := false;
end;

procedure TFrmGet_CXC.cxButton6Click(Sender: TObject);
begin
if FrmConsultaPagosxClientes = nil then
  begin
    FrmConsultaPagosxClientes := tFrmConsultaPagosxClientes.Create(self);
    FrmConsultaPagosxClientes.showmodal;
  end;

end;

procedure TFrmGet_CXC.cxButton6MouseEnter(Sender: TObject);
begin
label15.Visible := true;
label15.Caption := 'Lista de Todos los Recibos Emitidos';
end;

procedure TFrmGet_CXC.cxButton6MouseLeave(Sender: TObject);
begin
label15.Visible := false;
end;

procedure TFrmGet_CXC.cxButton7Click(Sender: TObject);
VAR
total : Currency;
begin
if CmontoPago.Value > cxGrid2DBTableView1.DataController.Summary.FooterSummaryValues[0] then
 begin
    Showmessage('***** El monto introducido es mayor que el monto pendiente, favor de retificar *****');
 end else
 begin

   if CmontoPago.Value   <= 0.00 then begin
                                  Showmessage('***** Debes Colocar un monto $$ *****');
                                end else begin


      datos.Zrecibo_pago.Edit;
      datos.Zrecibo_pagoCLIENTEID.Value      :=ibqclientescodigo.Value;
      datos.Zrecibo_pagoMONTO.Value          := CmontoPago.Value;
      datos.Zrecibo_pagoNOMBRE_CLIENTE.Value := ibqclientesnombres.Value;

    total := CmontoPago.Value;

   with master_credito do
      begin
      first;

       while not eof do begin


           if total > 0 then  begin

           if master_creditopendiente.Value > total then
              begin

                              with detalle do
                                    begin
                                      open;
                                      insert;
                                      detalleno_recibo.Value  := datos.Zrecibo_pagoNO_RECIBO1.Value;
                                      detalleno_fact.Value    := master_creditono_fact.Value;
                                      detallefecha.Value      := master_creditofecha_fac.Value;
                                      detallemonto.Value      := master_creditoPENDIENTE.Value;
                                      detalleabono.Value      := total;
                                      detallependiente.Value  := master_creditoPENDIENTE.Value - total;
                                      POST;
                                    end;

                       if datos.Zrecibo_pagoDESCRIPCION.Value ='' then
                           begin

                                       datos.Zrecibo_pagoDESCRIPCION.Value := 'Abono a la(s) Factura(s) #'+master_creditoNUMERO_FACTURA.text;
                                        edit1.Text := '1';
                                end else


                       if datos.Zrecibo_pagoDESCRIPCION.Value <>'' then
                           begin

                                   if edit1.Text = '1' then begin
                                      datos.Zrecibo_pagoDESCRIPCION.Value :=datos.Zrecibo_pagoDESCRIPCION.Value + ',y Abono a la Factura #'+master_creditoNUMERO_FACTURA.text;
                                      edit1.Text :='1';

                                   end;

                           end;

                        end;

             if master_creditopendiente.Value <= total then
             begin
                                with detalle do
                                    begin
                                      open;
                                      insert;
                                      detalleno_recibo.Value  := datos.Zrecibo_pagoNO_RECIBO1.Value;
                                      detalleno_fact.Value    := master_creditono_fact.Value;
                                      detallefecha.Value      := master_creditofecha_fac.Value;
                                      detallemonto.Value      := master_creditoPENDIENTE.Value;
                                      detalleabono.Value      := master_creditoPENDIENTE.Value;
                                      detallependiente.Value  := 0.00;
                                      POST;
                                    end;


                            if datos.Zrecibo_pagoDESCRIPCION.Value ='' then
                               begin
                                            datos.Zrecibo_pagoDESCRIPCION.Value := 'Saldo a la(s) Factura(s) #'+master_creditoNUMERO_FACTURA.text;
                                            edit1.Text := '1';
                               end else


                           if datos.Zrecibo_pagoDESCRIPCION.Value <>'' then
                               begin

                                       if edit1.Text = '1' then begin
                                          datos.Zrecibo_pagoDESCRIPCION.Value :=datos.Zrecibo_pagoDESCRIPCION.Value + ',#'+master_creditoNUMERO_FACTURA.text;
                                          edit1.Text :='1';
                                         end;

                               end;


                          end;
                 end;


                  total  := total - master_creditoPENDIENTE.Value;

            next;
          end;

  //

        with detalle do
        begin
            close;
            sql.Clear;
            sql.Add('select * from detalle_pago');
            sql.Add('where no_recibo =:recibo');
            params[0].Value := datos.Zrecibo_pagoNO_RECIBO1.Value;
            open;
         end;


datos.Zrecibo_pagoLETRAS1.Value := Num2Words(datos.Zrecibo_pagoMONTO.Value);
// abonar.Clear;
panel4.Visible := false;
panel6.Visible := TRUE;
//


end;
end;
end;
end;


procedure TFrmGet_CXC.cxButton8Click(Sender: TObject);
begin
panel4.Visible := true;
CmontoPago.SetFocus;
end;

procedure TFrmGet_CXC.cxGrid1DBTableView1DblClick(Sender: TObject);
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
    sql.Add('order by fecha_fac');
    open;
  end;


  if master_credito.RecordCount = 0 then
    begin
      master_credito.Close;
    end;
  cxgrid1.Visible := false;
end;

procedure TFrmGet_CXC.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_return then
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
    sql.Add('order by fecha_fac');
    open;
  end;


  if master_credito.RecordCount = 0 then
    begin
      master_credito.Close;
    end;
  cxgrid1.Visible := false;
      end;
end;

procedure TFrmGet_CXC.cxGrid2DBTableView1DblClick(Sender: TObject);
begin


with zq_fecha do
  begin
  close;
  params[0].Value   := master_creditono_fact1.Value;
  params[1].Value   := cod.Text;
  open;
end;

         label2.Caption := master_creditono_fact1.Value;
         label5.Caption := master_creditofecha_fac.text;
         label6.Value   := master_creditomontopago.Value;
         label11.value  := master_creditopendiente.Value;
         panel2.Visible := true;
         abonar.SetFocus;
            




end;

procedure TFrmGet_CXC.cxGridDBTableView1DblClick(Sender: TObject);
var
codigo2 : integer;
begin
cod.text :=IntToStr(ibqclientescodigo.Value);
caj.text := ibqclientesnombres.Value;
Opbuscarcliente.Visible := false;




codigo2 := StrToInt(cod.Text);
with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := codigo2;
        Params[4].Value := 'CREDITO';
        open;
      end;


end;

procedure TFrmGet_CXC.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

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
end;

procedure TFrmGet_CXC.Edit2Change(Sender: TObject);
begin

with ibqclientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where nombres like '+#39+'%'+edit2.Text+'%'+#39);
    open;
  end;



end;

procedure TFrmGet_CXC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   datos.Zrecibo_pago.close;
   FrmGet_CXC := nil;
   Action := caFree;
end;

procedure TFrmGet_CXC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
   begin
     abonar.Clear;
     panel2.Visible := false;
     panel4.Visible := false;

     if OpBuscarCLiente.Visible = true then
     begin
          cxTextEdit1.Clear;
       OpBuscarCLiente.Visible := false;

     end;
   end;

end;

procedure TFrmGet_CXC.FormShow(Sender: TObject);
begin

cxPageControl1.ActivePageIndex := 0;
//cxPageControl1.Pages[1].Show;
datos.Zrecibo_pago.Close;
detalle.Close;
master_credito.Close;
end;

procedure TFrmGet_CXC.impremedirecto;
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE, EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL, pcant : string;

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
// WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
  //    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      //--
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('RECIBO DE PAGO',StrToInt(longitud)));


     // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('VENTA DE CONTADO'),StrToInt(longitud)));
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));

      if StrToInt(longitud) > 42 then
        begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'          '+'HORA:'+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
        end else  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'   '+'HORA:'+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
        end;

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Recibo  : '+DATOS.Zrecibo_pago.FieldByName('NO_RECIBO').AsString),StrToInt(longitud),0));

         if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RECIBI DE  :'+DATOS.Zrecibo_pago.FieldByName('NOMBRE_CLIENTE').Value),StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

    //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

    //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('LA SUMA DE :'+DATOS.Zrecibo_pago.FieldByName('LETRAS1').Value),StrToInt(longitud),0));
       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('$$ :'+FormatFloat('#,##0.00',DATOS.Zrecibo_pago.FieldByName('MONTO').value)),StrToInt(longitud),0));

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('POR CONCEPTO DE:'),StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace(+DATOS.Zrecibo_pago.FieldByName('DESCRIPCION').Value),StrToInt(longitud),0));
      //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('POR CONCEPTO DE :',StrToInt(longitud),0));
      //    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace(DATOS.Zrecibo_pago.FieldByName('DESCRIPCION').Value),StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));



           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('BALANCE PENDIENTE :'+FormatFloat('#,##0.00',BALANCE.FieldByName('SUM').value)),StrToInt(longitud),0));
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));


  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('Firma ________________________',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
   //      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('.',StrToInt(longitud),0));

// WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,TEXTCORTE);


//with printer do
//begin
//
//        PrinterIndex:=GetImpresora(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value);
//        r := Rect(100,100,(Pagewidth - 100),(PageHeight - 100));
//        BeginDoc;
//        Canvas.Brush.Style := bsClear;
//        for i := 0 to Memo1.Lines.Count do
//          Canvas.TextOut(100,100 + (i * Canvas.TextHeight(Memo1.Lines.Strings[i])),
//        Memo1.Lines.Strings[i]);
//        Canvas.Brush.Color := clBlack;
//
//        EndDoc;
//end;

end;

end.
