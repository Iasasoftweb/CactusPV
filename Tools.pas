unit Tools;

interface

uses
  Windows, Messages, SysUtils, DB, Dialogs, Forms, Buttons, Controls,  Mask,
  StdCtrls,Graphics, Classes, WinProcs, WinTypes,Grids, DBGrids,printers,IniFiles,
  ShellAPI, MMSystem, WinSpool, StrUtils, uinicio;

const
  MAXTOREAD = 1024;  { para LongRead }

        COLOR_BACKGROUND                = $00FFFFFF;
        COLOR_BACKGROUND_TOP            = $00F0F0F0;
        COLOR_BACKGROUND_TOP_SUBMENU    = $00FCAF9;
        COLOR_BACKGROUND_MENU           = $00A55528;
        COLOR_BACKGROUND_DESTAK         = $0098491C;
        COLOR_FONT_MENU                 = $00FFFFFF;

        FONT_COLOR                      = $00322F2D;
        FONT_NAME                       = 'Segeo UI';

        FONT_H1 = 22;
        FONT_H2 = 20;
        FONT_H3 = 18;
        FONT_H4 = 16;
        FONT_H5 = 14;
        FONT_H6 = 12;
        FONT_H7 = 10;
        FONT_H8 = 8;
        FONT_H9 = 5;

var

aPrinter: tprinter; // necessario
     x, y: integer; // necessario
     Count, Xpos, Ypos : integer;

AsignaTienda : integer;
AsignaLote   : Integer;
AsignaPerfil : integer;
AsignaUsuario, Ancho, Alto : integer;
asignacaja : string;
asignaNusuario, asignatipo : string;
AsignaTurno :Integer;
statushold : string;

FactExistencia : Double;
FactExistencia2 : Double;
abrirfactura : string ='NO';
NumeroFactura : integer;

       ClaveAnular : string;
	OpcionElegida : string;
   DD, MM, AA :Word;
   ImprimiendoCheque: Boolean;
   HizoBackup: Boolean;
   IniFile : string;
   Usuario: string;
   Meses: array[1..12] of string[10] =
                  ('ENERO', 'FEBRERO','MARZO','ABRIL','MAYO','JUNIO',
                   'JULIO','AGOSTO','SEPTIEMBRE','OCTUBRE', 'NOVIEMBRE',
                   'DICIEMBRE');
  Level : Integer = 0;

type
  TDecimals = 0..8;
  ELimitExceeded = class(Exception);
  { UserException }
  UserException = class(Exception)
    public

      class procedure ErrorHandler(Sender: TObject; E: Exception);
  end;

  { TFindDup }
//  TFindDup = class(TTable)
//  public
//    constructor CreateDup(Table: TTable; const TblIndex: string);
//    destructor destroy; override;
//    function IsDup(const KeyValues: array of const): boolean;
//
//  end;

  TInputForm = class
  public
    Form: TForm;
    Prompt: TLabel;
    Edit: TMaskEdit;
    OKButton: TBitBtn;
    CancelButton: TBitBtn;
    constructor create(const ACaption, APrompt: string);
    function ShowModal: integer;





  end;
procedure LoadPif(PifName: string);
procedure ConectaDataSource(Forms: array of TForm; const Grid: string; DataSource: TDataSource);
function WinPath : shortString;
function Confirm(Text: string): boolean;
function MsgError(Msg: string) : boolean;
function MsgInformacion(Msg: string) : boolean;
function MsgPrecaucion(Msg: string) : boolean;
procedure FocusFirstEnabled(Form: TForm);
//function BuildCode(const OrigTb: TTable; const Cod, Des: string;
//                   const Letras, Numeros: integer): string;
//function BuildCodeWithTable(const DupTb, OrigTb: TTable;
//                            const Cod, Des: string;
//                            const Letras, Numeros: integer): string;
function Replicate(const Ch: char; const Count: integer): string;
procedure ConnectDataSources(Tbl, Frm: TForm);
procedure OpenDataSets(Frm: TForm);
procedure CloseDataSets(Frm: TForm);
function Codify(S: string; Encode: boolean): string;
procedure CopyFile(const SourceName, TargetName: string; BufSize: word);
function ToStr(const Arr: array of char): string;
function ShowForm(FormType: TFormClass; var Form): Integer;
//procedure SetTableDir(TblForm: TForm; Config: TTable; const Field: string);
//procedure Busqueda(Table: TTable; descripcion: string);
procedure REstaFecha(var Cant_ano,Cant_mes,Cant_dia :Integer; Inicial,Final :Tdatetime);
//procedure SeekNearest(const Fields: array of TField; const Values: array of string);
//function Seek(const Fields: array of TField; const Values: array of string):boolean;
Function FectoLetra(Fecha :Tdatetime) : string;
procedure DirectPrint(Str2Print: string);
procedure GetPrinter(var ADevice, ADriver, APort: string);
function LastSecuencia(Campo,Tabla:String):integer;
function LastSecuenciaDetalle(Campo,CampoClave,Tabla:String; ValorCampoClave: Integer):integer;
function Rounded(X: Extended; Decimals: TDecimals): Extended;
function IsPrinter : Boolean;
procedure SetDefaultPrinter(const device: string);
function PonResolucion(x, y:word ):boolean;
Procedure DelExe;
function ALaPapelera(Fichero:string):boolean;
function MessageDlgS(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons = [mbOk]; HelpCtx: Longint = 0): Word;
function ComputerName: string;
procedure EscribeEnVertical(Donde:TCanvas;x,y:integer;Texto:string);
{function RegistroExiste(Campo,Tabla, ValorCampo:String):Boolean;}
function EdadLetra(Fecha:TDateTime):String;
procedure DiffFecha(FechaInicio,FechaFin:TDateTime;var Anio, Mes, Dia: double);
procedure AdjustColumnWidths(DBGrid: TDBGrid);
function NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
function  Redondear_A(N: Extended; Decimales: Integer): Extended;
function DOSExe(Fichero,Parametros,Titulo:String):Boolean;
Procedure CenterForm(f : TForm);
Procedure KeyPressOnlyNumbers(Var Key: Char);
function QueWindows:String;
function  GetAppInfo(De:string):string; // Para obtener la version del ejecutable
procedure ActivaObjetos(Form:TForm; NumTag: Integer; bActiva: Boolean);
function ViewError(Text: string): Boolean;
procedure MsgViewError(Text: string);
function Num2Words(Num: Currency): string;
function ReadInteger_Ini(const AFileName, ASection, AIndent: string; ADefault: Integer): Integer;
function ReadString_Ini(const AFileName, ASection, AIndent: string; ADefault: string): string;
procedure WriteInteger_Ini(const AFileName, ASection, AIndent: string; AValue: Integer);
procedure WriteString_Ini(const AFileName, ASection, AIndent: string; AValue: string);
function ReadFloat_Ini(const AFileName, ASection, AIndent: string; ADefault: Double): Double;
function ReadBool_Ini(const AFileName, ASection, AIndent: string; ADefault: Boolean): Boolean;
function Cifrarpass(contra: string): string;
function descifrarpass(contra: string): string;
function Crear_Mensages(Atencion, Titulo, MSN, icon, Tipo : String) : Boolean ;

implementation

uses
  uVentanaAviso;


function Crear_Mensages(Atencion, Titulo, MSN, icon, Tipo : String) : Boolean;
begin
    Result := false;

    fMensages := TfMensages.Create(nil);

    fMensages.sAtencion := Atencion;
    fMensages.sTitulo   := Titulo;
    fMensages.sMSN      := MSN;
    fMensages.sRutaIcon := icon;
    fMensages.sTipo     := Tipo;

    fMensages.ShowModal;

    Result := fMensages.bResouestaMGN;

end;

function descifrarpass(contra: string): string;
var
lc, i  : integer;
ldchar, ldnuevo : Integer;
begin

lc := length(contra);

for I := 1 to lc do
  begin
    ldchar := Ord(contra[i]) ;
    ldnuevo := ldchar - 15;
    REsult := result + chr(ldnuevo);
  end;

end;


function Cifrarpass(contra: string): string;
var
lc, i  : integer;
ldchar, ldnuevo : Integer;
begin

lc := length(contra);

for I := 1 to lc do
  begin
    ldchar := Ord(contra[i]) ;
    ldnuevo := ldchar + 15;
    REsult := result + chr(ldnuevo);
  end;


end;


function ReadBool_Ini(const AFileName, ASection, AIndent: string; ADefault: Boolean): Boolean;
var
  IniFile: TIniFile;
begin
  IniFile:=TIniFile.Create(AFileName);
  try
    Result:=IniFile.ReadBool(ASection, AIndent, ADefault);
  finally
    IniFile.Free;
  end;
end;

function ReadFloat_Ini(const AFileName, ASection, AIndent: string; ADefault: Double): Double;
var
  IniFile: TIniFile;
begin
  IniFile:=TIniFile.Create(AFileName);
  try
    Result:=IniFile.ReadFloat(ASection, AIndent, ADefault);
  finally
    IniFile.Free;
  end;
end;


function ReadInteger_Ini(const AFileName, ASection, AIndent: string; ADefault: Integer): Integer;
var
  IniFile: TIniFile;
begin
  IniFile:=TIniFile.Create(AFileName);
  try
    Result:=IniFile.ReadInteger(ASection, AIndent, ADefault);
  finally
    IniFile.Free;
  end;
end;

function ReadString_Ini(const AFileName, ASection, AIndent: string; ADefault: string): string;
var
  IniFile: TIniFile;
begin
  IniFile:=TIniFile.Create(AFileName);
  try
    Result:=IniFile.ReadString(ASection, AIndent, ADefault);
  finally
    IniFile.Free;
  end;
end;

procedure WriteInteger_Ini(const AFileName, ASection, AIndent: string; AValue: Integer);
var
  IniFile: TIniFile;
begin
  IniFile:=TIniFile.Create(AFileName);
  try
    IniFile.WriteInteger(ASection, AIndent, AValue);
  finally
    IniFile.Free;
  end;
end;




procedure WriteString_Ini(const AFileName, ASection, AIndent: string; AValue: string);
var
  IniFile: TIniFile;
begin
  IniFile:=TIniFile.Create(AFileName);
  try
    IniFile.WriteString(ASection, AIndent, AValue);
  finally
    IniFile.Free;
  end;
end;


function Num2Words(Num: Currency): string;
const
  LeftDelim = '***';
  Decimals: array[0..15] of string =
    ('CERO', 'UNO', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS', 'SIETE', 'OCHO',
     'NUEVE', 'DIEZ', 'ONCE', 'DOCE', 'TRECE', 'CATORCE', 'QUINCE');
  Decenas: array[1..9] of string =
    ('DIEZ', 'VEINTE', 'TREINTA', 'CUARENTA', 'CINCUENTA', 'SESENTA', 'SETENTA',
     'OCHENTA', 'NOVENTA');
  Cientos: array[1..9] of string =
    ('CIENTO', 'DOSCIENTOS', 'TRESCIENTOS', 'CUATROCIENTOS', 'QUINIENTOS',
     'SEISCIENTOS', 'SETECIENTOS', 'OCHOCIENTOS', 'NOVECIENTOS');
var
  IntNum: Integer;
begin
  Inc(Level);
  Result := '';
  IntNum := -1;
  if Num < MaxLong then
    IntNum := Trunc(Num);
  case IntNum of
    0..15: Result := Decimals[IntNum];
    16..99: begin
              Result := Decenas[IntNum div 10];
              if IntNum mod 10 > 0 then
                Result := Result + ' Y ' + Num2Words(IntNum mod 10);
            end;
    100: Result := 'CIEN';
    101..999: begin
                Result := Cientos[IntNum div 100];
                if IntNum mod 100 > 0 then
                  Result := Result + ' ' + Num2Words(IntNum mod 100);
              end;
    1000..999999: begin
                    if IntNum > 1999 then
                      Result := Num2Words(IntNum div 1000);
                    Result := Result + ' MIL';
                    if IntNum mod 1000 > 0 then
                      Result := Result + ' ' + Num2Words(IntNum mod 1000);
                  end;
  else
    if Int(Num / 1000000) = 1 then
      Result := Num2Words(Trunc(Num / 1000000)) + ' MILLON'
    else
      Result := Num2Words(Trunc(Num / 1000000)) + ' MILLONES';
    if (Num / 1000000 - Int(Num / 1000000)) * 1000000 > 0 then
      Result := Result + ' ' + Num2Words((Num / 1000000 - Int(Num / 1000000)) * 1000000);
  end;
  Dec(Level);
  if Level = 0 then
    begin
      Result := LeftDelim + Result + '';
{      if Int(Num) > 1 then
        Result := Result + 'S';}
      Level := 1;
{      Result := Result + ' CON ' + Num2Words(Round(Frac(Num) * 100)) + ' CENTAVO';}
		  if IntToStr(Round(Frac(Num) * 100)) = '0' then
	      Result := Result + ' CON 00/100'
      else
	      Result := Result + ' CON ' + IntToStr(Round(Frac(Num) * 100)) + '/100';
{      if Round(Frac(Num) * 100) <> 1 then
        Result := Result + 'S';}
      Level := 0;
    end;
end;

procedure MsgViewError(Text: string);
var
  Form: TForm;
  BotonOk: TBitBtn;

begin
  MessageBeep(MB_ICONHAND); // Emite sonido de Error
  Form := CreateMessageDialog(Text, mtError, [mbOk]);
  Form.caption := 'Print Soft PV Ver. 2.1040';
  Form.Color :=clBtnFace;
  Form.Font.Style := [fsBold];
  Form.width := Form.width + 10;
  BotonOk  := TBitBtn(Form.Components[2]);
  BotonOk.caption := '&Ok';
  Form.showModal ;
end;

function ViewError(Text: string): Boolean;
var
  Form: TForm;
  BotonOk: TBitBtn;

begin
  MessageBeep(MB_ICONHAND); // Emite sonido de Error
  Form := CreateMessageDialog(Text, mtError, [mbOk]);
  Form.caption := 'PYME FACT Versi?n 0.001';
  Form.Color := clBtnFace;
  Form.Font.Style := [fsBold];
  Form.width := Form.width + 10;
  BotonOk  := TBitBtn(Form.Components[2]);
  BotonOk.caption := '&Ok';
  ViewError := Form.showModal = mrOk;
end;


procedure ActivaObjetos(Form:TForm; NumTag: Integer; bActiva: Boolean);
var
  I: Integer;
begin
   with Form do
      begin
        for I:=0 to (ComponentCount - 1) do
         begin
          if Components[I].Tag = NumTag then 
               if Components[I] is TControl then 
                     TControl(Components[I]).Enabled := bActiva;
         end;
      end;  
end;


function  GetAppInfo(De:string):string; // Para obtener la version del ejecutable
 
 {Se pueden pedir los siguientes datos:
    CompanyName
    FileDescription
    FileVersion
    InternalName
    LegalCopyright
    OriginalFilename
    ProductName
    ProductVersion
 }
 
 type 
   PaLeerBuffer = array [0..MAX_PATH] of char;
 
 var 
  Size, Size2 : DWord;
  Pt, Pt2     : Pointer;
  Idioma      : string;
 
  begin 
    Result:='';
    Size := GetFileVersionInfoSize(PChar (Application.Exename), Size2);
    if Size > 0 then 
    begin 
      GetMem (Pt, Size);
      GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
      {Obtenemos la cadena de translacion, requerida para obtener el resto
      de datos del Versioninfo}
      VerQueryValue( Pt, '\VarFileInfo\Translation',Pt2, Size2);
      Idioma:=IntToHex( DWord(Pt2^) ,8 );
      {Le damos la vuelta (Es windows, que quieres...}
      Idioma:=Copy(Idioma,5,4)+Copy(Idioma,1,4);
 
      {Pedimos la info requerida...}
      VerQueryValue( Pt,
                     Pchar('\StringFileInfo\'+
                     Idioma+'\'+
                     De),
                     Pt2, Size2);
      if Size2 > 0 then 
      begin 
        {Y la devolvemos}
        Result:=Copy(PaLeerBuffer(Pt2^),1,Size2);
      end else 
        raise Exception.Create( 'No existe esa informacion en este ejecutable'+
                                #13+
                                'There are not this info in this executable');
      FreeMem (Pt);
    end else 
      raise exception.Create ( 'Lo siento, no hay VersionInfo disponible '+
                               'en este ejecutable.'+#13+
                               'Sorry there are not VersionInfo available'+
                               'in this executable.');
  end; 

function QueWindows:String;
  var 
     Version:TOsVersionInfo;
  begin 
    Version.dwOSVersionInfoSize:=SizeOf(Version);
    GetVersionex(Version);
    case Version.dwPlatformId of 
      VER_PLATFORM_WIN32s:
        Result:='Win311';
      VER_PLATFORM_WIN32_WINDOWS:
        Result:='Win9X';
      VER_PLATFORM_WIN32_NT:
          Result:='WinNT';
    end; 
end;  

  
function GetFileDate(TheFileName: string): string;
var 
     FHandle: integer;
begin 
     FHandle := FileOpen(TheFileName, 0);
     try
       Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
     finally
       FileClose(FHandle);
     end; 
end;

Procedure KeyPressOnlyNumbers(Var Key: Char);
Begin
  Case Key Of
    '0': Exit;
    '1': Exit;
    '2': Exit;
    '3': Exit;
    '4': Exit;
    '5': Exit;
    '6': Exit;
    '7': Exit;
    '8': Exit;
    '9': Exit;
    #8 : Exit; {Backspace}
  End;
  Key := #0;   {Throw the key away}
End;

Procedure CenterForm(f : TForm);
Begin
  f.left := (Screen.width - f.width) div 2;
  f.top := (Screen.height - f.height) div 2;
End;

{
// Para Poner Titulo a los Menu (Start)
procedure DrawBar(ACanvas: TCanvas);
var
  lf : TLogFont;
  tf : TFont;
begin
  with ACanvas do begin
    Brush.Color := clGray;
    FillRect(Rect(0,0,20,150));
    Font.Name := 'Tahoma';
    Font.Style := Font.Style + [fsBold];
    Font.Color := clWhite;
    tf := TFont.Create;
    try
      tf.Assign(Font);
      GetObject(tf.Handle, sizeof(lf), @lf);
      lf.lfEscapement := 900;
      lf.lfHeight := Font.Height - 2;
      tf.Handle := CreateFontIndirect(lf);
      Font.Assign(tf);
    finally
      tf.Free;
    end;
    TextOut(2, 115, 'Andy');
  end;
end;

 }
// Para ejecutar un comando del DOS y esperar a que termine..

function DOSExe(Fichero, Parametros, Titulo : String) : Boolean;
 
    function WinExecAndWait32(FileName:String; Visibility:integer):integer;
    var 
      zAppName:array[0..512] of char;
      zCurDir:array[0..255] of char;
      WorkDir:String;
      StartupInfo:TStartupInfo;
      ProcessInfo:TProcessInformation;
      Resultado,exitCode: DWord;
//      Titulo:Array [0..200] of char;
      kk:DWord;
    begin 
      StrPCopy(zAppName,FileName);
      GetDir(0,WorkDir);
      StrPCopy(zCurDir,WorkDir);
      FillChar(StartupInfo,Sizeof(StartupInfo),#0);
      StartupInfo.cb := Sizeof(StartupInfo);
 
      StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
      StartupInfo.wShowWindow := Visibility;
      CreateProcess(nil,
        zAppName,                      { pointer to command line string }
        nil,                           { pointer to process security attributes}
        nil,                           { pointer to thread security attributes}
        false,                         { handle inheritance flag }
        CREATE_NEW_CONSOLE or          { creation flags }
        NORMAL_PRIORITY_CLASS,
        nil,                           { pointer to new environment block }
        nil,                           { pointer to current directory name }
        StartupInfo,                   { pointer to STARTUPINFO }
        ProcessInfo);
 
      {Espera a que termine la ejecucion}
      {Wait until execution finish}
      repeat 
    	sleep(5000);
        exitCode := WaitForSingleObject( ProcessInfo.hProcess,1000);
        Application.ProcessMessages;
        GetExitCodeThread(ProcessInfo.hProcess,kk);
 
      until (exitCode <> WAIT_TIMEOUT);
      GetExitCodeProcess(ProcessInfo.hProcess,Resultado);
      MessageBeep(0);
      CloseHandle(ProcessInfo.hProcess );
      Result:=Resultado;
    end; {WinExecAndWait32}
 
  var {DOSExe}
    f          :file;
    PathPif,
    DirTrabajo,
    DP         :string;  {Datos del Pif}
    ErrorIO       :integer;
 
  begin 
    {Datos de un fichero PIF preparado para Cerrar al Terminar}
    {A PIF file data prepared to 'Close at End'}
    DP:=
    #0#120#84#69#83#84#68#79#126#49#32#32#32#32#32#32#32#32#32#32+
    #32#32#32#32#32#32#32#32#32#32#32#32#128#2#0#0#68#58#92#116#101+
    #115#116#100#111#115#112#114#111#103#114#97#109#116#104#105#110+
    #103#46#101#120#101#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#16#0#101#58#92#116#101#109#112+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#45#101#120+
    #32#100#58#92#116#101#115#116#32#100#58#92#42#46#42#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#1#0#255#25#80#0#0#7#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#77#73+
    #67#82#79#83#79#70#84#32#80#73#70#69#88#0#135#1#0#0#113#1#87#73+
    #78#68#79#87#83#32#51#56#54#32#51#46#48#0#5#2#157#1#104#0#128+
    #2#0#0#100#0#50#0#255#255#0#0#255#255#0#0#2#0#2#0#159#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#45#101#120#32#100#58#92#116#101+
    #115#116#32#100#58#92#42#46#42#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#87+
    #73#78#68#79#87#83#32#86#77#77#32#52#46#48#0#255#255#27#2#172+
    #1#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#80#73#70+
    #77#71#82#46#68#76#76#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#2#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#129#0#0#0#0#0#0#0#0#0#0#0#1#0#0#0#5#0#25#0#3#0#200#0+
    #232#3#2#0#10#0#1#0#0#0#0#0#0#0#28#0#0#0#0#0#0#0#8#0#12#0#84#101+
    #114#109#105#110#97#108#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#76#117#99#105#100#97#32#67#111#110#115#111#108#101+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#3#0#0#0#80#0#25#0#128+
    #2#44#1#0#0#0#0#22#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0+
    #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#1#0;
 
    Titulo:=Titulo+StringOfChar(' ',30-Length(Titulo));
    Titulo:=Copy(Titulo,1,30)+#0;
    move(Titulo[1],DP[$02+1],30);
 
    Fichero:=copy(Fichero,1,63)+#0;
    move(Fichero[1],DP[$24+1],length(Fichero));
 
    Parametros:=copy(Parametros,1,85)+#0;
    move(Parametros[1],DP[$a5+1],length(Parametros));
    move(Parametros[1],DP[$1c5+1],length(Parametros));
 
    DirTrabajo:=Copy(extractfilepath(Fichero),1,85)+#0;
    move(DirTrabajo[1],DP[$65+1],length(DirTrabajo));
 
    Result:=false;
    PathPif := ExtractFilePath(Application.ExeName)+'UnPif.pif';
    assignfile(f,PathPif);
    rewrite(f,1);
    ErrorIO:=ioresult;
    blockwrite(f,DP[1],length(DP),ErrorIO);
    closefile(f);
    if ErrorIO<>length(DP) then exit;
 
    WinExecAndWait32(PathPif,Sw_ShowNormal);
 
//    DeleteFile(PathPif);
    Result:=TRUE;
  end; {DOSExe}


// Ajusta las Columnas de un DBgrid de forma Automatica
procedure AdjustColumnWidths(DBGrid: TDBGrid);
var
  TotalColumnWidth, ColumnCount, GridClientWidth, Filler, i: Integer;
begin
  ColumnCount := DBGrid.Columns.Count;
  if ColumnCount = 0 then
    Exit;

  // compute total width used by grid columns and vertical lines if any
  TotalColumnWidth := 0;
  for i := 0 to ColumnCount-1 do
    TotalColumnWidth := TotalColumnWidth + DBGrid.Columns[i].Width;
  if dgColLines in DBGrid.Options then
    // include vertical lines in total (one per column)
    TotalColumnWidth := TotalColumnWidth + ColumnCount;

  // compute grid client width by excluding vertical scroll bar, grid indicator,
  // and grid border
  GridClientWidth := DBGrid.Width - GetSystemMetrics(SM_CXVSCROLL);
  if dgIndicator in DBGrid.Options then begin
    GridClientWidth := GridClientWidth - IndicatorWidth;
    if dgColLines in DBGrid.Options then
      Dec(GridClientWidth);
  end;
  if DBGrid.BorderStyle = bsSingle then begin
    if DBGrid.Ctl3D then // border is sunken (vertical border is 2 pixels wide)
      GridClientWidth := GridClientWidth - 4
    else // border is one-dimensional (vertical border is one pixel wide)
      GridClientWidth := GridClientWidth - 2;
  end;

  // adjust column widths
  if TotalColumnWidth < GridClientWidth then begin
    Filler := (GridClientWidth - TotalColumnWidth) div ColumnCount;
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width + Filler;
  end
  else if TotalColumnWidth > GridClientWidth then begin
    Filler := (TotalColumnWidth - GridClientWidth) div ColumnCount;
    if (TotalColumnWidth - GridClientWidth) mod ColumnCount <> 0 then
      Inc(Filler);
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width - Filler;
  end;
end;



// Procedimiento que devuelve los Anos, Meses y Dias Entre Fechas
procedure DiffFecha(FechaInicio,FechaFin:TDateTime;var Anio, Mes, Dia: double);
var
   A, AA, M, MM, D, DD: Word;
begin    
  begin
    DecodeDate(FechaInicio, A, M, D);  
    DecodeDate(FechaFin, AA, MM, DD);    
    Anio := Int(AA - A);    
    if( M <= MM ) then    
      Mes := MM - M    
    else
    begin    
      Mes := MM+12-M;    
      Anio := Anio -1;      
    end;      
    if( D <= DD ) then    
      Dia := DD - D    
    else      
    begin    
      Dia := DD+MonthDays[IsLeapYear(AA),MM]-D;    
      Mes := Mes -1;      
    end;      
  //Caso especial donde no ha cumplido a?os, pero los cumplio
    if Mes < 0 then  
    begin    
      Anio := Anio - 1;    
      Mes := 12 + Mes;      
    end;      
//    Result := Format('%.0f A?os , %.0f Meses y %.0f Dias', [Anio, Mes, Dia]);
end;    
end;    

// Funcion para calcular la edad de una persona..(Exacta)
function EdadLetra(Fecha:TDateTime):String;
var 
   A, AA, M, MM, D, DD: Word;
   Anio, Mes, Dia: double;   
begin    
  begin
    DecodeDate(Fecha, A, M, D);  
    DecodeDate(Date, AA, MM, DD);    
    Anio := Int(AA - A);    
    if( M <= MM ) then    
      Mes := MM - M    
    else      
    begin    
      Mes := MM+12-M;    
      Anio := Anio -1;      
    end;      
    if( D <= DD ) then    
      Dia := DD - D    
    else      
    begin    
      Dia:=DD+MonthDays[IsLeapYear(AA),MM]-D;    
      Mes := Mes -1;      
    end;      
  //Caso especial donde no ha cumplido a?os, pero los cumplio
    if Mes < 0 then  
    begin    
      Anio := Anio - 1;    
      Mes := 12 + Mes;      
    end;      
    Result := Format('%.0f A?os , %.0f Meses y %.0f Dias', [Anio, Mes, Dia]);
end;    
end;


// Para escribir en vertical

{function RegistroExiste(Campo,Tabla, ValorCampo:String):Boolean;
begin
	with tablas do
   	begin
          SQLRegistroExiste.close;
          SQLRegistroExiste.sql.clear;
          SQLRegistroExiste.SQL.Add('Select count('+Campo+') as Cuantos from '+Tabla+'');
          SQLRegistroExiste.SQL.Add('where '+Campo+' = '''+ValorCampo+'''');
          SQLRegistroExiste.open;
          if SQLRegistroExisteCuantos.value > 0 then
          	result := true
          else  
          	result := false;
      end;      
end;}

procedure EscribeEnVertical(Donde:TCanvas;x,y:integer;Texto:string);
  var 
     n      : integer;
  begin 
    for n:=1 to Length(Texto) do 
    begin 
      with Donde do 
        TextOut( x,
                 y+(TextHeight('W')*(n-1)),
                 Texto[n]);
    end; 
  end; 


// Para saber el nombre de la computadora
function ComputerName: string;
var
   lpBuffer   : PChar;
   dwSize    : DWORD;
begin
   dwSize := MAX_COMPUTERNAME_LENGTH + 1;
   GetMem( lpBuffer, dwSize );
   try
      if GetComputerName( lpBuffer, dwSize ) then
         Begin
         Result := lpBuffer;
         End;
   finally
      FreeMem( lpBuffer );
   end;
end;

// Funcion Mensage de Dialogo pero con el sonodo correspondiente..

function MessageDlgS(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Word;
const
  Sounds: array [TMsgDlgType] of integer = (
    MB_ICONEXCLAMATION, MB_ICONHAND, MB_OK,
    MB_ICONQUESTION, MB_ICONASTERISK);
begin
  MessageBeep(Sounds[DlgType]);
  Result := MessageDlg(Msg,DlgType,Buttons,HelpCtx);
end;

// Funcion para borrar un fichero y enviarlo a la papelera de windows
function ALaPapelera(Fichero:string):boolean;
var 
  FileOp: TSHFileOpStruct;
begin 
  if FileExists(Fichero)then
  begin
    FillChar(FileOp,SizeOf(FileOp),#0);
    with FileOp do
    begin
      Wnd:= Application.Handle;
      wFunc:= FO_DELETE;
      pFrom:= PChar(Fichero+#0#0);
      fFlags:= FOF_SILENT or FOF_ALLOWUNDO or FOF_NOCONFIRMATION;
    end;
    Result:= (ShFileOperation(FileOp)=0);
  end else
    Result:=False;
end;

// Cambia la resolucion de la pantalla

function PonResolucion(x, y:word ):boolean;
var
  lpDevMode: TDeviceMode;
begin
  Result := EnumDisplaySettings(nil, 0, lpDevMode);
  if Result then
  begin
    lpDevMode.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
    lpDevMode.dmPelsWidth := X;
    lpDevMode.dmPelsHeight := Y;
    Result := ChangeDisplaySettings(lpDevMode, 0) = DISP_CHANGE_SUCCESSFUL;
  end;
end;




procedure SetDefaultPrinter(const device: string);
// Si existe mas de un printer asigno el que quiero directamente
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create('WIN.INI');
  try
    IniFile.WriteString('windows', 'device', device);
  except
    IniFile.Free;
    raise;
  end;
  IniFile.Free;
  SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0,
    LPARAM(pchar('windows')));
end;


function MsgError(Msg: string) : boolean;
begin
  messageDlg(Msg, mtError, [mbOk], 0);
  MsgError := TRUE
end;

function MsgInformacion(Msg: string) : boolean;
begin
  messageDlg(Msg, mtInformation, [mbOk], 0);
  MsgInformacion := TRUE
end;

function MsgPrecaucion(Msg: string) : boolean;
begin
  messageDlg(Msg, mtWarning, [mbOk], 0);
  MsgPrecaucion := TRUE
end;

class procedure UserException.ErrorHandler(Sender: TObject; E: Exception);
var
  Definido: boolean;
  Campo: string[35];
  PosCampo: integer;

begin
  Definido := FALSE;
  if E is EDatabaseError then
    begin
      if pos('must have a value', E.message) <> 0 then
        begin
          PosCampo := pos('''', E.message);
          Campo := copy(E.message, PosCampo + 1, length(E.message));
          Campo := copy(Campo, 1, pos('''', Campo) - 1);
          Definido := MsgError('El valor "' + Campo
                                           + '" no debe estar en blanco.');
        end
      else if pos('on an empty dataset', E.message) <> 0 then
        Definido := MsgError('No hay registros disponibles.')
      else
        Definido := MsgError(E.message)
    end
  else if E is EConvertError then
    begin
      if pos('valid date', E.message) <> 0 then
        Definido := MsgError('Fecha inv?lida.')
    end;
  if not Definido then
    MsgError(E.message);
end;

Procedure DelExe;
Var f: TextFile;
begin
  assignfile(f,changefileext(paramstr(0),'.bat'));
  rewrite(f);
  writeln(f,':1');
  writeln(f,format('Erase "%s"',[paramstr(0)]));
  writeln(f,format('If exist "%s" Goto 1',[paramstr(0)]));
  writeln(f,format('Erase "%s"',[changefileext(paramstr(0),'.bat')]));
  closefile(f);
// winexec(PChar(changefileext(paramstr(0),'.bat')),sw_hide);
  halt;
end; 

function Confirm(Text: string): boolean;
var
  Form: TForm;
  BotonCancel, BotonOk: TBitBtn;

begin
  Form := CreateMessageDialog(Text, mtConfirmation,
                              [mbOk, mbCancel]);
  Form.caption := 'Confirmaci?n';
  Form.Color := $00D7D9D8;
  Form.Font.Style := [fsBold];
  Form.width := Form.width + 10;
  BotonOk  := TBitBtn(Form.Components[2]);
  BotonCancel  := TBitBtn(Form.Components[3]);
  BotonCancel.width := BotonCancel.width + 8;
  BotonOk.caption := '&Si';
  BotonCancel.caption := '&No';
  BotonCancel.TabOrder := 0;
  Confirm := Form.showModal = mrOk;
end; 

{       Confirm original
function Confirm(Text: string): boolean;
var
  Form: TForm;
  BotonCancel: TBitBtn;

begin
  Form := CreateMessageDialog(Text, mtConfirmation,
                              [mbOk, mbCancel]);
  Form.caption := 'Confirmaci?n';
  Form.width := Form.width + 10;
  BotonCancel  := TBitBtn(Form.Components[3]);
  BotonCancel.width := BotonCancel.width + 10;
  BotonCancel.caption := '&Cancelar';
  Confirm := Form.showModal = mrOk;
end; 
 }
procedure FocusFirstEnabled(Form: TForm);
var
  Elem: integer;

begin
  Elem := 0;
  while Elem < Form.componentCount do
    begin
      if Form.components[Elem] is TWinControl then
        if TWinControl(Form.components[Elem]).canFocus then
          begin
            TWinControl(Form.components[Elem]).setFocus;
            Elem := Form.componentCount
          end;
      inc(Elem)
    end;
end;

function Replicate(const Ch: char; const Count: integer): string;
begin
  if Count < sizeof(Result) then
    begin
      setLength(Result, Count);
      fillChar(Result[1], Count, Ch);
    end
  else
    Result := ''
end;

//function BuildCodeWithTable(const DupTb, OrigTb: TTable;
//                            const Cod, Des: string;
//                            const Letras, Numeros: integer): string;
//begin
//  Result := copy(OrigTb.fieldByName(Des).asString, 1, Letras);
//  while length(Result) < Letras do
//    Result := Result + ' ';
//  DupTb.findNearest([Result + Replicate('9', Numeros)]);
//  if copy(DupTb.fieldByName(Des).asString, 1, Letras) > Result then
//    DupTb.prior;
//  if copy(DupTb.fieldByName(Des).asString, 1, Letras) = Result then
//    Result := Result + formatFloat(Replicate('0', Numeros),
//                       strToFloat(copy(DupTb.fieldByName(Cod).asString,
//                                  Letras + 1, Numeros)) + 1)
//  else
//    Result := Result + Replicate('0', Numeros);
//end;
//
//function BuildCode(const OrigTb: TTable; const Cod, Des: string;
//                   const Letras, Numeros: integer): string;
//var
//  DupTb: TTable;
//
//begin
//  DupTb := TTable.create(OrigTb);
//  DupTb.databaseName := OrigTb.databaseName;
//  DupTb.tableName := OrigTb.tableName;
//  if OrigTb.indexName = '' then
//    DupTb.indexFieldNames := OrigTb.indexFieldNames
//  else
//    DupTb.indexName := OrigTb.indexName;
//  DupTb.open;
//  BuildCode := BuildCodeWithTable(DupTb, OrigTb, Cod, Des, Letras, Numeros);
//  DupTb.close;
//  DupTb.free;
//end;

procedure ConnectDataSources(Tbl, Frm: TForm);
var
  Elem: integer;
  Table: TDataSet;

begin
  for Elem := 0 to Frm.componentCount - 1 do
    if Frm.components[Elem] is TDataSource then
      with Frm.components[Elem] as TDataSource do
        begin
          Table := (Tbl.findComponent(copy(name, 3, 255)) as TDataSet);
          if Table <> NIL then
            dataSet := Table
        end;
end;

procedure OpenDataSets(Frm: TForm);
var
  Elem: integer;

begin
  for Elem := 0 to Frm.componentCount - 1 do
    if (Frm.components[Elem] is TDataSource)
    and (uppercase(copy(Frm.components[Elem].name, 1, 2)) = 'DS') then
      with Frm.components[Elem] as TDataSource do
        dataSet.open
end;

procedure CloseDataSets(Frm: TForm);
var
  Elem: integer;

begin
  for Elem := 0 to Frm.componentCount - 1 do
    if (Frm.components[Elem] is TDataSource) 
    and (uppercase(copy(Frm.components[Elem].name, 1, 2)) = 'DS') then
      with Frm.components[Elem] as TDataSource do
        dataSet.close
end;

function Codify(S: string; Encode: boolean): string;
var
  Code: string;
  Elem, FactorCesar: integer;

begin
  Code := '';
  FactorCesar := 3;
  if not Encode then
    FactorCesar := -FactorCesar;
  for Elem := 1 to length(S) do
    Code := Code + chr((ord(S[Elem]) + FactorCesar) mod 256);
  Codify := Code
end;

{ TFindDup }

//constructor TFindDup.CreateDup(Table: TTable; const TblIndex: string);
//begin
//  create(Application);
//  dataBaseName := Table.databaseName;
//  tableName := Table.tableName;
//  tableType := Table.tableType;
//  indexFieldNames := TblIndex;
//  open;
//end;
//
//destructor TFindDup.destroy;
//begin
//  close;
//  inherited destroy;
//end;
//
//function TFindDup.IsDup(const KeyValues: array of const): boolean;
//begin
//  CheckBrowseMode;
// // SetKeyFields(kiLookup, KeyValues);
//  Result := GotoKey;
//end;

procedure CopyFile(const SourceName, TargetName: string; BufSize: word);
var
  Source, Target: file;
  BytesRead: integer;
  Buf: pChar;

begin
  if BufSize = 0 then
    BufSize := 60000;
  getMem(Buf, BufSize);
  assignFile(Source, SourceName);
  assignFile(Target, TargetName);
  reset(Source, 1);
  rewrite(Target, 1);
  blockRead(Source, Buf^, BufSize, BytesRead);
  while BytesRead > 0 do
    begin
      blockWrite(Target, Buf^, BytesRead);
      blockRead(Source, Buf^, BufSize, BytesRead);
    end;
  closeFile(Source);
  closeFile(Target);
  freeMem(Buf, BufSize)
end;

constructor TInputForm.create(const ACaption, APrompt: string);
begin
  inherited create;
  Form         := TForm.create(Application);
  Prompt       := TLabel.create(Form);
  Edit         := TMaskEdit.create(Form);
  OkButton     := TBitBtn.create(Form);
  CancelButton := TBitBtn.create(Form);
  with Form do
    begin
      Left          := 118;
      Top           := 206;
      BorderStyle   := bsDialog;
      ClientHeight  := 98;
      ClientWidth   := 274;
      Font.Color    := clWindowText;
      Font.Height   := -11;
      Font.Name     := 'MS Sans Serif';
      Font.Style    := [];
      PixelsPerInch := 96;
      Position      := poScreenCenter;
      Caption       := ACaption;
    end;
 with Prompt do
   begin
     Parent       := Form;
     Left         := 8;
     Top          := 8;
     Width        := 3;
     Height       := 13;
     FocusControl := Edit;
     Caption      := APrompt;
   end;
 with Edit do
   begin
    Parent    := Form;
    Left      := 8;
    Top       := 24;
    Width     := 257;
    Height    := 20;
    MaxLength := 0;
   end;
   with OKButton do
     begin
       Parent  := Form;
       Kind    := bkOK;
       Left    := 48;
       Top     := 59;
       Width   := 79;
       Height  := 28;
     end;
   with CancelButton do
     begin
       Parent  := Form;
       Kind    := bkCancel;
       Left    := 136;
       Top     := 59;
       Width   := 79;
       Height  := 28;
       Caption := 'Cancelar';
     end;
end;

function TInputForm.ShowModal: integer;
begin
  Result := Form.showModal
end;


function ToStr(const Arr: array of char): string;
begin
  setLength(Result, high(Arr) + 1);
  move(Arr, Result[1], length(Result));
end;


function WinPath : shortString;
var
  CfgPtr : pChar;

begin
  CfgPtr := @Result[1];
  GetWindowsDirectory(CfgPtr, 200);
  setLength(Result, strLen(CfgPtr));
  if Result <> '\' then
    Result := Result + '\';
end;

function ShowForm(FormType: TFormClass; var Form): Integer;
var
  FormVar: TForm absolute Form;
begin
  Application.CreateForm(FormType, Form);
  try
    Result := FormVar.ShowModal;
  finally
    FormVar.Free
  end;
end;

//procedure SetTableDir(TblForm: TForm; Config: TTable; const Field: string);
//var
//  Elem: integer;
//
//begin
//  if paramStr(1) = '/0' then
//    begin
//      with TInputForm.create('Configuraci?n', 'Directorio de los Archivos') do
//        begin
//          Edit.maxLength := Config.fieldByName(Field).size;
//          showModal;
//          Config.dataBaseName := Edit.text;
//          try
//            Config.open;
//            Config.edit;
//            Config.fieldByName(Field).asString := Edit.text;
//            Config.post;
//            Config.close;
//            with TblForm do
//              for Elem := 0 to componentCount - 1 do
//                if components[Elem] is TTable then
//                  (components[Elem] as TTable).dataBaseName := Edit.text;
//          except
//            raise Exception.create('El directorio no es v?lido.');
//          end
//        end;
//    end
//end;
//
//procedure Busqueda(Table: TTable;descripcion: string);
//var campo: string;
//begin
//campo:= UpperCase(inputbox('BUSQUEDA',descripcion,''));
//if campo<>'' then
//   Table.findNearest([campo])
//end;

procedure REstaFecha(var Cant_ano,Cant_mes,Cant_dia :Integer; Inicial,Final :Tdatetime);
var
  Dia_ini, Mes_ini,ano_ini : Word;
  Dia_fin, Mes_fin,ano_fin : Word;
begin
  Decodedate(Inicial,Ano_ini,Mes_ini,dia_ini);
  Decodedate(Final,Ano_fin,Mes_fin,dia_fin);
	cant_ano := ano_fin-ano_ini;
  
	if (IntTostr(mes_ini)+IntTostr(dia_ini)) > (IntTostr(mes_fin)+IntTostr(dia_fin))then
	if (mes_ini > mes_fin) then
		cant_ano := cant_ano - 1
	else
  	begin
    	if mes_ini = mes_fin then 
      	begin
        	if dia_ini > dia_fin then
          	cant_ano := cant_ano -1;
        end;
    end;    

	WHILE mes_ini <> mes_fin do 
		begin
			mes_ini := mes_ini +1;
			cant_mes := cant_mes +1;
			if mes_ini = 13 then
				mes_ini := 1;
     end;
	if dia_ini > dia_fin then
  	begin
			cant_mes := cant_mes - 1;
			if cant_mes < 0 then
				cant_mes := 11;
    end;  
	WHILE formatdatetime('dd',Inicial) <> Formatdatetime('dd',Final) do 
  	begin
			cant_dia := cant_dia +1;
			Inicial  := Inicial+1 ;
    end;  
end;

procedure ConectaDataSource(Forms: array of TForm; const Grid: string; DataSource: TDataSource);
var
  Elem: integer;
  DBGrid: TDBGrid;
  
begin
  for Elem := 0 to high(Forms) do
    begin
      DBGrid := Forms[Elem].findComponent(Grid) as TDBGrid;
      DBGrid.dataSource := DataSource
    end;
end;


procedure LoadPif(PifName: string);
var
  IdFile: string;
begin
  PifName := PifName + #0;
  IdFile := ExtractFilePath(Application.ExeName) + 'finished.$$$';
  if fileExists(IDfile) then
	  SysUtils.DeleteFile(IdFile);
  WinExec(@PifName[1], SW_SHOWNORMAL);
  while not FileExists(IdFile) do
    Application.ProcessMessages;
  SysUtils.DeleteFile(IdFile);
end;

//procedure SeekNearest(const Fields: array of TField; const Values: array of string);
//var
//  Elem: Integer;
//begin
//  TTable(Fields[0].DataSet).EditKey;
//  for Elem := 0 to High(Fields) do
//    Fields[Elem].AsString := Values[Elem];
//  TTable(Fields[0].DataSet).GotoNearest;
//end;
//
//function Seek(const Fields: array of TField; const Values: array of string):boolean;
//var
//  Elem: Integer;
//begin
//  TTable(Fields[0].DataSet).EditKey;
//  for Elem := 0 to High(Fields) do
//    Fields[Elem].AsString := Values[Elem];
//	Result :=  TTable(Fields[0].DataSet).GotoKey;
//end;
//
Function FectoLetra(Fecha :Tdatetime) : string;
const
  Meses: array[1..12] of string[10] =
                  ('Enero', 'Febrero','Marzo','Abril','Mayo','Junio',
                   'Julio','Agosto','Septiembre','Octubre', 'Noviembre',
                   'Diciembre');
var
  ano,mes,dia :Word;
begin
  decodedate(Fecha,ano,mes,dia);
  Result := format('%d de %s del %d', [Dia, Meses[Mes], Ano]);
end;

procedure DirectPrint(Str2Print: string);
var
  Device, Driver, Port: string;
  Prt:TextFile;
begin
  GetPrinter(Device, Driver, Port);
  if Port = '' then
    Port := 'LPT1';
  AssignFile(Prt, Port);
  Rewrite(Prt);
  Write(Prt, Str2Print);
  CloseFile(Prt);
end;

procedure GetPrinter(var ADevice, ADriver, APort: string);
var
  Device, Driver, Port: array [0..99] of char;
  Handle: THandle;
begin
  Handle := Printer.Handle;
  Printer.GetPrinter(Device, Driver, Port, Handle);
  ADevice := StrPas(Device);
  ADriver := StrPas(Driver);
  APort := StrPas(Port);
end;

function LastSecuencia(Campo,Tabla:String):integer;
begin
   // tablas.SQLmaximo.close;
    //tablas.SQLMaximo.sql.clear;
    //tablas.SQLMaximo.SQL.Add('Select max('+Campo+') as Maxval from '+Tabla+'');
    //tablas.SQLmaximo.ExecQuery;
    //result := tablas.SQLMaximo.Fields[0].AsInteger + 1;
end;                                           

function LastSecuenciaDetalle(Campo,CampoClave,Tabla:String; ValorCampoClave: Integer):integer;
begin
   { tablas.SQLmaximo.close;
    tablas.SQLMaximo.sql.clear;
    tablas.SQLMaximo.SQL.Add('Select max('+Campo+') as Maxval from '+Tabla+'');
    tablas.SQLMaximo.SQL.Add('where '+CampoClave+' = '+IntToStr(ValorCampoClave)+'');
    tablas.SQLmaximo.ExecQuery;
    if tablas.SQLMaximo.Fields[0].IsNull then
      result := 1
    else
      result := tablas.SQLMaximo.Fields[0].Value + 1;}
end;


function  Redondear_A(N: Extended; Decimales: Integer): Extended;
begin
  if Decimales > 0 then 	begin
    Result:= StrToFloat(FormatFloat('0.'+StringOfChar('0', Decimales), N));
  end 
  else
    Result:= StrToFloat(FormatFloat('0', N));
end;

function Rounded(X: Extended; Decimals: TDecimals): Extended;
var 
   Factor: cardinal;
   i: Byte;
begin 
   if decimals > 8 then 
      raise ELimitExceeded.create('No m?s de 8 decimales');
   Factor := 1;
   for i:= 1 to Decimals do
      Factor := Factor * 10;
   result := int((X + 0.5/Factor) * Factor) / Factor;
end;  {Rounded(1542435.8476473432345,2)}


function IsPrinter : Boolean; // Para Saber Si el Printer esta Ready
Const    PrnStInt  : Byte = $17;    
         StRq      : Byte = $02;
         PrnNum    : Word = 0;  { 0 para LPT1, 1 para LPT2, etc. }
Var  nResult : byte;
Begin  (* IsPrinter*)
   Asm   mov ah,StRq;   
         mov dx,PrnNum;   
         Int $17;   
         mov nResult,ah;
end;
    IsPrinter := (nResult and $80) = $80;
End;

 
(**************************************)
(* Conversi?n N?mero -> Letra         *)
(*                                    *)
(* Par?metros:                        *)
(*                                    *)
(*   mNum:    N?mero a convertir      *)
(*   iIdioma: Idioma de conversi?n    *)
(*            1 -> Castellano         *)
(*            2 -> Catal?n            *)
(*   iModo:   Modo de conversi?n      *)
(*            1 -> Masculino          *)
(*            2 -> Femenino           *)
(*                                    *)
(* Restricciones:                     *)
(*                                    *)
(* - Redondeo a dos decimales         *)
(* - Rango: 0,00 a 999.999.999.999,99 *)
(*                                    *)
(**************************************)
 
function NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
const 
  iTopFil: Smallint = 6;
  iTopCol: Smallint = 10;
  aCastellano: array[0..5, 0..9] of PChar =
  ( ('UNA ','DOS ','TRES ','CUATRO ','CINCO ',
    'SEIS ','SIETE ','OCHO ','NUEVE ','UN '),
    ('ONCE ','DOCE ','TRECE ','CATORCE ','QUINCE ',
    'DIECISEIS ','DIECISIETE ','DIECIOCHO ','DIECINUEVE ',''),
    ('DIEZ ','VEINTE ','TREINTA ','CUARENTA ','CINCUENTA ',
    'SESENTA ','SETENTA ','OCHENTA ','NOVENTA ','VEINTI'),
    ('CIEN ','DOSCIENTAS ','TRESCIENTAS ','CUATROCIENTAS ','QUINIENTAS ',
    'SEISCIENTAS ','SETECIENTAS ','OCHOCIENTAS ','NOVECIENTAS ','CIENTO '),
    ('CIEN ','DOSCIENTOS ','TRESCIENTOS ','CUATROCIENTOS ','QUINIENTOS ',
    'SEISCIENTOS ','SETECIENTOS ','OCHOCIENTOS ','NOVECIENTOS ','CIENTO '),
    ('MIL ','MILLON ','MILLONES ','CERO ','Y ',
    'UNO ','DOS ','CON ','','') );
  aCatalan: array[0..5, 0..9] of PChar =
  ( ( 'UNA ','DUES ','TRES ','QUATRE ','CINC ',
    'SIS ','SET ','VUIT ','NOU ','UN '),
    ( 'ONZE ','DOTZE ','TRETZE ','CATORZE ','QUINZE ',
    'SETZE ','DISSET ','DIVUIT ','DINOU ',''),
    ( 'DEU ','VINT ','TRENTA ','QUARANTA ','CINQUANTA ',
    'SEIXANTA ','SETANTA ','VUITANTA ','NORANTA ','VINT-I-'),
    ( 'CENT ','DOS-CENTES ','TRES-CENTES ','QUATRE-CENTES ','CINC-CENTES ',
    'SIS-CENTES ','SET-CENTES ','VUIT-CENTES ','NOU-CENTES ','CENT '),
    ( 'CENT ','DOS-CENTS ','TRES-CENTS ','QUATRE-CENTS ','CINC-CENTS ',
    'SIS-CENTS ','SET-CENTS ','VUIT-CENTS ','NOU-CENTS ','CENT '),
    ( 'MIL ','MILIO ','MILIONS ','ZERO ','-',
    'UN ','DOS ','AMB ','','') );
var 
  aTexto: array[0..5, 0..9] of PChar;
  cTexto, cNumero: String;
  iCentimos, iPos: Smallint;
  bHayCentimos, bHaySigni: Boolean;
 
  (*************************************)
  (* Cargar Textos seg?n Idioma / Modo *)
  (*************************************)
 
  procedure NumLetra_CarTxt;
  var 
    i, j: Smallint;
  begin 
    (* Asignaci?n seg?n Idioma *)
 
    for i := 0 to iTopFil - 1 do 
      for j := 0 to iTopCol - 1 do 
        case iIdioma of 
          1: aTexto[i, j] := aCastellano[i, j];
          2: aTexto[i, j] := aCatalan[i, j];
        else 
          aTexto[i, j] := aCastellano[i, j];
        end; 
 
    (* Asignaci?n si Modo Masculino *)
 
    if (iModo = 1) then 
    begin 
      for j := 0 to 1 do 
        aTexto[0, j] := aTexto[5, j + 5];
 
      for j := 0 to 9 do 
        aTexto[3, j] := aTexto[4, j];
    end; 
  end; 
 
  (****************************)
  (* Traducir D?gito -Unidad- *)
  (****************************)
 
  procedure NumLetra_Unidad;
  begin 
    if not( (cNumero[iPos] = '0') or (cNumero[iPos - 1] = '1')
     or ((Copy(cNumero, iPos - 2, 3) = '001') and ((iPos = 3) or (iPos = 9))) ) then 
      if (cNumero[iPos] = '1') and (iPos <= 6) then 
        cTexto := cTexto + aTexto[0, 9]
      else 
        cTexto := cTexto + aTexto[0, StrToInt(cNumero[iPos]) - 1];
 
    if ((iPos = 3) or (iPos = 9)) and (Copy(cNumero, iPos - 2, 3) <> '000') then 
      cTexto := cTexto + aTexto[5, 0];
 
    if (iPos = 6) then 
      if (Copy(cNumero, 1, 6) = '000001') then 
        cTexto := cTexto + aTexto[5, 1]
      else 
        cTexto := cTexto + aTexto[5, 2];
  end; 
 
  (****************************)
  (* Traducir D?gito -Decena- *)
  (****************************)
 
  procedure NumLetra_Decena;
  begin 
    if (cNumero[iPos] = '0') then 
      Exit
    else if (cNumero[iPos + 1] = '0') then 
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
    else if (cNumero[iPos] = '1') then 
      cTexto := cTexto + aTexto[1, StrToInt(cNumero[iPos + 1]) - 1]
    else if (cNumero[iPos] = '2') then 
      cTexto := cTexto + aTexto[2, 9]
    else 
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
        + aTexto[5, 4];
  end; 
 
  (*****************************)
  (* Traducir D?gito -Centena- *)
  (*****************************)
 
  procedure NumLetra_Centena;
  var 
    iPos2: Smallint;
  begin 
    if (cNumero[iPos] = '0') then 
      Exit;
 
    iPos2 := 4 - Ord(iPos > 6);
 
    if (cNumero[iPos] = '1') and (Copy(cNumero, iPos + 1, 2) <> '00') then 
      cTexto := cTexto + aTexto[iPos2, 9]
    else 
      cTexto := cTexto + aTexto[iPos2, StrToInt(cNumero[iPos]) - 1];
  end; 
 
  (**************************************)
  (* Eliminar Blancos previos a guiones *)
  (**************************************)
 
  procedure NumLetra_BorBla;
  var 
    i: Smallint;
  begin 
    i := Pos(' -', cTexto);
 
    while (i > 0) do 
    begin 
      Delete(cTexto, i, 1);
      i := Pos(' -', cTexto);
    end; 
  end; 
 
begin 
  (* Control de Argumentos *)
 
  if (mNum < 0.00) or (mNum > 999999999999.99) or (iIdioma < 1) or (iIdioma > 2)
    or (iModo < 1) or (iModo > 2) then 
  begin 
    Result := 'ERROR EN ARGUMENTOS';
    Abort;
  end; 
 
  (* Cargar Textos seg?n Idioma / Modo *)
 
  NumLetra_CarTxt;
 
  (* Bucle Exterior -Tratamiento C?ntimos-     *)
  (* NOTA: Se redondea a dos d?gitos decimales *)
 
  cNumero := Trim(Format('%12.0f', [Int(mNum)]));
  cNumero := StringOfChar('0', 12 - Length(cNumero)) + cNumero;
  iCentimos := Trunc((Frac(mNum) * 100) + 0.5);
 
  repeat 
    (* Detectar existencia de C?ntimos *)
 
    if (iCentimos <> 0) then 
         bHayCentimos := True
    else 
      bHayCentimos := False;
 
    (* Bucle Interior -Traducci?n- *)
 
    bHaySigni := False;
 
    for iPos := 1 to 12 do 
    begin 
      (* Control existencia D?gito significativo *)
 
      if not(bHaySigni) and (cNumero[iPos] = '0') then 
        Continue
      else 
        bHaySigni := True;
 
      (* Detectar Tipo de D?gito *)
 
      case ((iPos - 1) mod 3) of 
        0: NumLetra_Centena;
        1: NumLetra_Decena;
        2: NumLetra_Unidad;
      end; 
    end; 
 
    (* Detectar caso 0 *)
 
    if (cTexto = '') then 
      cTexto := aTexto[5, 3];
 
    (* Traducir C?ntimos -si procede- *)
 
    if (iCentimos <> 0) then 
    begin 
      cTexto := cTexto + aTexto[5, 7];
      cNumero := Trim(Format('%.12d', [iCentimos]));
      iCentimos := 0;
    end; 
  until not (bHayCentimos);
 
  (* Eliminar Blancos innecesarios -s?lo Catal?n- *)
 
  if (iIdioma = 2) then 
    NumLetra_BorBla;
 
  (* Retornar Resultado *)
  
  if AnsiPos('CON ',cTexto) > 0 then
     Result := Trim(' '+cTexto+' CENTAVOS ')
  else   
     Result := Trim(' '+cTexto+' PESOS ');
end; 
end.

