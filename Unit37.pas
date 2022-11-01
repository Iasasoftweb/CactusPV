unit Unit37;

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
  dxSkinXmas2008Blue, cxGroupBox, cxCalc, cxDBEdit, cxMemo, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Data.DB,
  Vcl.Menus, cxButtons, RxLookup, ZAbstractRODataset, ZDataset, frxClass,
  frxDBSet, cxRadioGroup, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, printers, WinSpool, StrUtils;


  function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
  Function GetImpresora(Impre:String):Integer;
  function MyTextReplace(Texto:String):String;
  function CenterString(aStr: String; Len: Integer): String;

type
  TFrmGastos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    conceptos: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label6: TLabel;
    max: TZReadOnlyQuery;
    print0: TfrxReport;
    master_cobro: TfrxDBDataset;
    ZqConcepto: TZReadOnlyQuery;
    ZqConceptoCONCEPTOSID: TIntegerField;
    ZqConceptoDESCRIPCION: TWideStringField;
    ZqConceptoESTADO: TIntegerField;
    ZqConceptoC1: TIntegerField;
    ZqConceptoC2: TIntegerField;
    ZqConceptoC3: TIntegerField;
    Config: TfrxDBDataset;
    op1: TcxRadioGroup;
    Print1: TfrxReport;
    memo1: TcxMemo;
    maxGEN_ID: TLargeintField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimeDirect;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
 //   procedure imprimerecibo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGastos: TFrmGastos;
     aPrinter: tprinter; // necessario
     x, y: integer; // necessario


implementation
uses unit19, unit2, tools, Unit63, UInicio;
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


 procedure TFrmGastos.cxButton1Click(Sender: TObject);
begin
if asignaTurno = 0 then
  begin
      Showmessage(' ** No Hay Turno Abierto Disponible **');
  end else begin
with max do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(GEN_CONTROL_GASTOS_ID, 1) from RDB$DATABASE');
    open;
  end;

 datos.ZGastos.Open;
 datos.ZGastos.Insert;
 datos.ZGastosGASTOSID.Value := maxgen_id.Value;
 datos.ZGastosFECHA.Value := now();
 datos.ZGastosESTADO.Value := 1;
 DATOS.ZGastosUSUARIOID.Value := AsignaUsuario;
 datos.ZGastosIMPORTE.Value := 0.00;
 datos.ZGastosTURNOID.Value := asignaTurno;
 //Showmessage(''+IntToStr(AsignaTurno));

 datos.ZConceptos_Gastos.Open;
 cxButton1.Enabled := false;
 cxButton2.Enabled := true;
 cxButton3.Enabled := true

end;
end;

procedure TFrmGastos.cxButton2Click(Sender: TObject);
var
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
if (cxDBTextEdit1.Text ='') and (datos.ZGastosIMPORTE.Value > 0.00) then
  begin
    showmessage('** Registro no puede ser guardo **');
  end else begin

    with zqConcepto do
      begin
        close;
        sql.Clear;
        sql.Add('select * from CONCEPTOS_GASTOS');
        sql.Add('where conceptosid =:opcion1');
        params[0].Value := datos.ZGastosCONCEPTOSID.Value;
        open;
      end;

      datos.ZGastos.Edit;
      datos.ZGastosDESCRIPCION.Value := zqconceptodescripcion.Value;
      datos.ZGastosTURNOID.Value := AsignaTurno;
      datos.ZGastos.ApplyUpdates;

      if application.MessageBox ('Deseas Imprimir Esta Recibo','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
                                       if op1.ItemIndex = 1 then begin
                                         // cInf := datos.ZUconfiguracionROTULO_FC.value+'\ReciboGastosMedicaCarta'+'.fr3';

                                       //   print0.LoadFromFile(cInf);

                                          print0.PrepareReport;
                                          print0.ShowReport;
                                       end;
                                        if op1.ItemIndex = 0 then begin
                                        if Tipoimpresion = 'D' then
                                                 begin
                                                 ImprimeDirect;
                                             end ELSE BEGIN
                                        //   cInf := datos.ZUconfiguracionROTULO_FC.value+'\ReciboGastosTicket'+'.fr3';


                                        //  print1.LoadFromFile(cInf);
                                          print1.PrepareReport;
                                          print1.ShowPreparedReport;
                                             END;
                                       end;

                                 end;
      datos.Data.Commit;
      cxButton1.Enabled := true;
      cxButton2.Enabled := false;
      cxButton3.Enabled := false;
      datos.ZConceptos_Gastos.close;
      datos.ZGastos.Close;
  end;

end;

procedure TFrmGastos.cxButton3Click(Sender: TObject);
begin
    datos.ZGastos.CancelUpdates;
    datos.Data.Rollback;
    datos.ZConceptos_Gastos.close;
    datos.ZGastos.Close;
    cxButton1.Enabled := true;
    cxButton2.Enabled := false;
    cxButton3.Enabled := false;
end;

procedure TFrmGastos.cxButton4Click(Sender: TObject);
begin
    datos.ZGastos.CancelUpdates;
    datos.Data.Rollback;
    datos.ZConceptos_Gastos.close;
    datos.ZGastos.Close;
    cxButton1.Enabled := true;
    cxButton2.Enabled := false;
    cxButton3.Enabled := false;
    close;
end;

procedure TFrmGastos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmGastos := nil;
Action := caFree;
end;

procedure TFrmGastos.FormShow(Sender: TObject);
begin
datos.ZConceptos_Gastos.close;
datos.ZGastos.Close;
end;

procedure TFrmGastos.ImprimeDirect;
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
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('RECIBO EGRESO',StrToInt(longitud)));

 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('PAGADO A :'+DATOS.ZGASTOS.FieldByName('BENEFICIADO').Value),StrToInt(longitud),0));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('POR CONCEPTO :'+DATOS.ZGASTOS.FieldByName('descripcion').Value),StrToInt(longitud),0));
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZGASTOS.FieldByName('nota').Value,StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('La Suma de ',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',DATOS.ZGASTOS.FieldByName('importe').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
 WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------------',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));



         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.ZGASTOSNOMBRES_EMP.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));




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

end.
