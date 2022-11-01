unit Unit80;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ZAbstractRODataset, ZDataset, Vcl.Menus, cxButtons, frxClass, frxDBSet,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, printers, WinSpool, StrUtilS, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxContainer,
  cxGroupBox, cxRadioGroup, Vcl.ExtCtrls;

type
  TFrmCotiza = class(TForm)
    GroupBox1: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QCotizacion: TZReadOnlyQuery;
    QCotizacionNO_FACT: TIntegerField;
    QCotizacionFECHA_FAC: TDateField;
    QCotizacionTIPO: TWideStringField;
    QCotizacionCOD_CLIENT: TWideStringField;
    QCotizacionCOD_EMP: TWideStringField;
    QCotizacionNO_FACT1: TWideStringField;
    QCotizacionMONTO: TFloatField;
    QCotizacionHORA: TTimeField;
    QCotizacionPOGXITBS: TFloatField;
    QCotizacionTIPOPAGO: TWideStringField;
    QCotizacionMONTOPAGO: TFloatField;
    QCotizacionCONDICION: TWideStringField;
    QCotizacionRENTA: TWideStringField;
    QCotizacionCODIGO: TIntegerField;
    QCotizacionTIPOITBS: TWideStringField;
    QCotizacionVENDEDOR: TWideStringField;
    QCotizacionSITUACION: TWideStringField;
    QCotizacionCAJERO: TWideStringField;
    QCotizacionNCF: TWideStringField;
    QCotizacionRNC_CLIENTE: TWideStringField;
    QCotizacionNCF1: TFloatField;
    QCotizacionNOM_CLIENTE: TWideStringField;
    QCotizacionDESCUENTO: TFloatField;
    QCotizacionROTULO: TWideStringField;
    QCotizacionNO_AUTORIZA_NCF: TFloatField;
    QCotizacionMONTOFINANCIADO: TFloatField;
    QCotizacionCUOTAS: TIntegerField;
    QCotizacionINTERES: TFloatField;
    QCotizacionDIRECCION: TWideStringField;
    QCotizacionPAGADO: TFloatField;
    QCotizacionLEYPROPINA: TFloatField;
    QCotizacionCOMPROBANTE: TWideStringField;
    QCotizacionTERMINAL: TWideStringField;
    QCotizacionEFECTIVO: TFloatField;
    QCotizacionDEVOLUCION1: TFloatField;
    QCotizacionRESTANTE: TFloatField;
    QCotizacionABONO: TFloatField;
    QCotizacionCHEK: TWideStringField;
    QCotizacionNO_RECIBO: TIntegerField;
    QCotizacionPAGADOCXC: TFloatField;
    QCotizacionMESES: TIntegerField;
    QCotizacionDIAS: TIntegerField;
    QCotizacionPENDIENTE: TFloatField;
    QCotizacionESTADOPAGO: TWideStringField;
    QCotizacionDEVOLUCION: TFloatField;
    QCotizacionCONDICION_PAGO: TIntegerField;
    QCotizacionCOMBO: TWideStringField;
    QCotizacionCOBRADO: TIntegerField;
    QCotizacionQUEES: TWideStringField;
    QCotizacionUSUARIOID: TIntegerField;
    QCotizacionCLIENTEID: TIntegerField;
    QCotizacionCONDICIONVENTA: TWideStringField;
    QCotizacionTIENDAID: TIntegerField;
    QCotizacionPINREFERIDO: TWideStringField;
    QCotizacionNC: TIntegerField;
    QCotizacionCODVEN: TIntegerField;
    QCotizacionCAJEROID: TIntegerField;
    QCotizacionNOMBRECLIENTE_PRN: TWideStringField;
    QCotizacionFECHA_FINAL: TDateField;
    QCotizacionINTERES_DIARIO: TFloatField;
    QCotizacionINTERES_ACUM: TFloatField;
    QCotizacionDIAS_TRANS: TIntegerField;
    QCotizacionFECHA_ULTIMO_PAGO: TDateField;
    QCotizacionDIAS_ATRASO: TIntegerField;
    QCotizacionINTERES_PAGADO: TFloatField;
    QCotizacionCAPITAL_PAGADO: TFloatField;
    QCotizacionDESC_CAPITAL: TFloatField;
    QCotizacionIDDR: TIntegerField;
    QCotizacionNOMBREDELDR: TWideStringField;
    QCotizacionCAJA: TWideStringField;
    QCotizacionNCF_NOMBRE: TWideStringField;
    QCotizacionMORA: TFloatField;
    QCotizacionNUMERO_FACTURA: TFloatField;
    QCotizacionBONOS: TFloatField;
    QCotizacionOBSERVACIONES: TWideMemoField;
    QCotizacionIDRUTA: TIntegerField;
    QCotizacionCAJAID: TIntegerField;
    QCotizacionCLIENTENOMBRE: TWideStringField;
    QCotizacionNOMBRES_EMP: TWideStringField;
    DsCotiza: TDataSource;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    cxButton11: TcxButton;
    cxButton13: TcxButton;
    IMPRIMEPEDIDO: TfrxReport;
    detalle: TfrxDBDataset;
    master: TfrxDBDataset;
    Config: TfrxDBDataset;
    QCotizacionFECHAVENCIMIENTO: TDateField;
    QCotizacionDIR: TWideStringField;
    Memo1: TMemo;
    frxReport1: TfrxReport;
    Panel1: TPanel;
    Op1: TcxRadioGroup;
    cxButton1: TcxButton;
    FrxSeries: TfrxDBDataset;
    Edit2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
     procedure ImprimeCotiza;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCotiza: TFrmCotiza;



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

uses Unit2, Unit59, tools, Unit63, UInicio;
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

procedure TFrmCotiza.cxButton11Click(Sender: TObject);
var
cero : string;
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

        sql.Add('WHERE a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO      =:OPCION5');
        sql.Add('and a.no_fact     =:oppp');

        Params[0].Value     := 'ACTIVA';
        Params[1].Value     := 'COTIZACION';
        Params[2].Value     := qcotizacionno_fact.Value;
        open;
    end;

with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;

WITH FrmNFact_normal.ibqclientes DO
    BEGIN
      close;
      sql.Clear;
      sql.Add('select a.* from cliente a');
      sql.Add('where a.codigo =:opp');
      params[0].Value := datos.FbqMaster_Factclienteid.Value;
      open;
    END;

 FrmNFact_normal.BtnConduce.Enabled := false;
 FrmNFact_normal.cxButton4.Enabled := false;
 FrmNFact_normal.BTpedido.Enabled := false;

 FrmNFact_normal.b1.Enabled := false;
 FrmNFact_normal.b2.Enabled := False;
 FrmNFact_normal.b2.Caption := 'Cancelar';
 FrmNFact_normal.b3.Enabled := true;
 FrmNFact_normal.b4.Enabled := true;
 FrmNFact_normal.b6.Enabled := true;
 FrmNFact_normal.BtnPrintConduce.Enabled := true;

 FrmNFact_normal.b3.Caption := 'Enviar Pedido [F4]';
 FrmNFact_normal.cxButton5.Enabled := FALSE;


    // FrmNFact.b5.Enabled := false;

 FrmNFact_normal.Edit3.Text := 'MODI';
 FrmNFact_normal.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);
// FrmNFact_normal.BtBuscarPedido.Enabled := false;

 FrmNFact_normal.opmaster.Enabled := true;
 FrmNFact_normal.cxButton14.Enabled := true;
 //FrmNFact_normal.opdetalle.Enabled := true;
 FrmNFact_normal.cxButton11.Enabled := true;


 FrmNFact_normal.BtBorrar.Enabled := true;
 FrmNFact_normal.b6.Enabled := true;
 FrmNFact_normal.b2.Enabled := true;
 FrmNFact_normal.cxButton12.Enabled := true;
 FrmNFact_normal.cxButton13.Enabled := true;
 FrmNFact_normal.cerrar.Enabled := false;
 FrmNFact_normal.panel7.Enabled := true;
  FrmNFact_normal.PanelLTOP.Enabled := true;
 //    FrmNfact.cxButton5.Enabled := false;
 close;

end;

procedure TFrmCotiza.cxButton13Click(Sender: TObject);
begin
     panel1.Visible := true;
  end;



procedure TFrmCotiza.cxButton1Click(Sender: TObject);
VAR
cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

  longitud, campoD, campoC1, campoC2, campol, campof : string;
         DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
          PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2 : string;
          cInf : String;

canfra : double;
cero1 : string;
nume : integer;
men_pie : string;

diascondicioncredito : Integer;
 NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion, tipopago1 : String;

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



//panelcobro.Visible := true;
//datos.FbqMaster_Fact.Edit;
//datos.fbqMaster_factsituacion.text       := 'ENVIADA';
//datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
//DATOS.FbqMaster_FactROTULO.text          := 'COTIZACION';
//datos.FbqMaster_Factterminal.Text        := 'COTIZACION';
//datos.FbqMaster_FactABONO.Value          := 0.00;
//datos.FbqMaster_FactPENDIENTE.Value      := 0.00;

//
//if datos.ZUconfiguracionTIPO_FACTURACION.Value = 1 then
//  begin
//   FrmNFact_normal.b1.Enabled := true;
// FrmNFact_normal.b2.Enabled := false;
// FrmNFact_normal.b3.Enabled := false;
// FrmNFact_normal.b4.Enabled := false;
//// FrmNFact.b5.Enabled := false;
// FrmNFact_normal.b6.Enabled := false;
// FrmNFact_normal.opmaster.Enabled := false;
// FrmNFact_normal.opdetalle.Enabled := false;
// FrmNFact_normal.cxbutton5.Enabled := true;
//  FrmNFact_normal.cxbutton11.Enabled := false;
//  FrmNFact_normal.cerrar.Enabled := true;
//  FrmNFact_normal.panel7.Enabled := false;
//     FrmNFact_normal.PanelLTOP.Enabled := false;
//
//     FrmNFact_normal.t3.Clear;
//FrmNFact_normal.t4.Clear;
//  end;
//


//t2.Clear;



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
    params[0].Value := qcotizacionno_fact.Value;
    open;
  end;


with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
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


         if application.MessageBox ('Deseas Imprimir Esta Cotizacion','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin

          if op1.ItemIndex = 0 then
               begin

                             if datos.ZUconfiguracionUSAR_CF.Value = 'SI' then
                            begin

                              cInf := datos.ZUconfiguracionROTULO_FC.value+'\CotizacionGrande'+'.fr3';

                                    imprimepedido.LoadFromFile(cInf);

                               end;

                                    imprimepedido.variables['titulos']  :=quotedstr('COTIZACION');
                             //       imprimepedido.variables['cajero']   :=quotedstr(edit2.text);

                                    imprimepedido.PrepareReport(true);
                                    imprimepedido.ShowPreparedReport;


               end;


                if op1.ItemIndex = 1 then
                  begin

                      if TipoImpresion = 'D' then
                              begin
                           ImprimeCotiza;
                     end else begin
                                 cInf := datos.ZUconfiguracionROTULO_FC.value+'\CotizacionTICKET'+'.fr3';

                                    imprimepedido.LoadFromFile(cInf);

                                    imprimepedido.variables['titulos']  :=quotedstr('COTIZACION');
                                   // imprimepedido.variables['cajero']   :=quotedstr(edit2.text);

                                    imprimepedido.PrepareReport(true);
                                    imprimepedido.ShowPreparedReport;

                              end;
                     end;


                  end;



                //    imprimepedido.variables['titulos']  :=quotedstr('FACTURA');
                  //  imprimepedido.variables['cajero']   :=quotedstr(edit2.text);


                                     datos.FbqMaster_Fact.Close;
                                     datos.Zdetalle.Close;
      //                                close;

      panel1.Visible := false;

end;

procedure TFrmCotiza.Edit1Change(Sender: TObject);
begin
with qcotizacion do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp,  b.direccion as dir  from master_fact a');
   sql.Add('left join cliente b On a.clienteid = b.codigo');
   sql.Add('left join musuario c On a.codven = c.usuarioid');
   sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
   sql.Add('where ROTULO = ''COTIZACION''');
   sql.Add('and A.NOMBRECLIENTE_PRN like '+#39+'%'+Edit1.Text+'%'+#39);
   open;
 end;



end;

procedure TFrmCotiza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmCotiza := nil;
end;

procedure TFrmCotiza.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if key = vk_escape then
         begin
           panel1.Visible := false;
         end;


end;


procedure TFrmCotiza.FormShow(Sender: TObject);
begin
  if edit2.Text ='FACT' then
     begin
       cxButton11.Visible := true;
     end else begin
                 cxButton11.Visible := false;
              end;
  if datos.ZUconfiguracionimprimecotiza.Value ='Ticket' then
     Op1.ItemIndex := 1
     else Op1.ItemIndex := 0;
  qcotizacion.Close;
  qcotizacion.Open;
end;

procedure TFrmCotiza.ImprimeCotiza;
 var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

      longitud, campoD, campoC1, campoC2, campol, campof, INICIARPRINT, TEXTCORTE, EX, ESPACIOA, PITBIS, PPRECIO, PTOTAL  : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2, TPcampoL, TPcampoC1, TPcampoF : string;
      SIZEFONT,FONTBOLD,FONTNORMAL, SIZENORMAL, pcant : string;

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
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('C O T I Z A C I O N',StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('VENTA DE CONTADO'),StrToInt(longitud)));
     if StrToInt(longitud) < 42 then
       begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('-----------------------------------',StrToInt(longitud),0));
       end;

      if StrToInt(longitud) > 42 then
        begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'          '+'HORA:'+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
        end else  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA :'+DATETOSTR(FECHAFA)+' '+'HORA:'+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
        end;

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Cotizacion: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));

         if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));

      if DATOS.FbqMaster_FactRNC_CLIENTE.Value <>'' then  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RNC CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('RNC_CLIENTE').Value),StrToInt(longitud),0));
      end;

      if DATOS.FbqMaster_Factdireccion.Value <>'' then  begin
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('DIRECCION  :'+DATOS.FbqMaster_Fact.FieldByName('DIRECCION').Value),StrToInt(longitud),0));
      end;
    //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));

            if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));
      end;

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('PRODUCTO..........................',StrToInt(Longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CANT',StrToInt(campoL),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('ITBIS',StrToInt(campoC2),0)+espacios('TOTAL',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));

       if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));
      end;



    with DATOS.ZDETALLE do
      begin
          First;
          while not Eof do
          begin
          if datos.ZdetalleITBS.Value > 0.00 then
             begin
           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('TITULOPRN').AsString),0,35),StrToInt(longitud),0));

           end else begin
                       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString+'  '+DATOS.Zdetalle.FieldByName('TITULOPRN').AsString),0,StrToInt(longitud)),StrToInt(longitud),0));

                    end;
           //espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+
//            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
//                                                                                   +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
  //                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

            if datos.ZdetalleCANTIDAD.Value > 1.00 then begin

             WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(pcant),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));

            end else begin

//             if datos.ZdetalleTOTAL.value > 9999.00 then
//               begin
//                  ShowMessage('');

               WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(pcant),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),1)+''+
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
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));
      end;
         if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(TpcampoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
          if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('descuento').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tpcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));



        if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));

//        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));


       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,StrToInt(longitud)));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_Factcajero.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
   //      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
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
