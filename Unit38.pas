unit Unit38;

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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalc, cxDBEdit, Vcl.StdCtrls, Data.DB, Vcl.Menus, cxButtons, cxCalendar,
  cxLabel, cxDBLabel, Vcl.ExtCtrls, cxCurrencyEdit, frxClass, frxDBSet,
  ZAbstractRODataset, ZDataset, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, dxCore, cxDateUtils, RxDBComb,
  Vcl.DBCtrls, cxCheckBox, dxGDIPlusClasses, cxImage, cxSpinEdit, printers, WinSpool, StrUtils,

  IdSMTP, IdMessage, IdEMailAddress, Winsock, WinInet, shellapi,
  inifiles, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdAttachmentFile, idText,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdAntiFreezeBase, Vcl.IdAntiFreeze, IdUserPassProvider, IdSASLExternal,
  IdSASLAnonymous, IdSASLOTP, IdSASLSKey, IdSASLLogin, IdSASLPlain,
  IdSASL_CRAM_SHA1, IdSASL, IdSASLUserPass, IdSASL_CRAMBase, IdSASL_CRAM_MD5,
  cxRadioGroup,   Vcl.Mask, RxToolEdit, RxCurrEdit,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;


   function WriteRawDataToPrinter(PrinterName: String; Str: String): Boolean;
    Function GetImpresora(Impre:String):Integer;
    function MyTextReplace(Texto:String):String;
    function CenterString(aStr: String; Len: Integer): String;

type
  TFrmCaja = class(TForm)
    DataSource1: TDataSource;
    Label11: TLabel;
    cxDBCalcEdit10: TcxDBCalcEdit;
    print0: TfrxReport;
    master_cobro: TfrxDBDataset;
    config: TfrxDBDataset;
    dsqusuario: TDataSource;
    QEmpleados: TZReadOnlyQuery;
    QEmpleadosUSUARIOID: TIntegerField;
    QEmpleadosEMPLEADOID: TIntegerField;
    QEmpleadosTIPO: TIntegerField;
    QEmpleadosPASSW: TWideStringField;
    QEmpleadosIDAC: TWideStringField;
    QEmpleadosNOMBRES_EMP: TWideStringField;
    QEmpleadosCARGO: TWideStringField;
    Ffinal: TcxDateEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxButton4: TcxButton;
    maxcaja: TZReadOnlyQuery;
    maxcajaMAX: TIntegerField;
    maxventa: TZReadOnlyQuery;
    maxventaVENTA: TFloatField;
    sumcobro: TZReadOnlyQuery;
    sumcobroCOBRO: TFloatField;
    SumGastos: TZReadOnlyQuery;
    SumGastosSUMA: TFloatField;
    cajacuadre: TZReadOnlyQuery;
    cajacuadreCUADRE1: TIntegerField;
    cajacuadreFECHA: TDateField;
    cajacuadreUSAURIOID: TIntegerField;
    cajacuadreMONTOINICIAL: TFloatField;
    cajacuadreTOTAL_EFECTIVO: TFloatField;
    cajacuadreVENTAS: TFloatField;
    cajacuadreGASTOS: TFloatField;
    cajacuadreCOBRANZAS: TFloatField;
    cajacuadreNOTACREDITO: TFloatField;
    cajacuadreFECTIVO: TFloatField;
    cajacuadreTARJETA: TFloatField;
    cajacuadreCHEQUE: TFloatField;
    cajacuadreESTADO: TIntegerField;
    cajacuadreTOTAL_GASTOS: TFloatField;
    cajacuadreNOMBRES_EMP: TWideStringField;
    ZqTurno: TZReadOnlyQuery;
    ZqTurnoTURNOID: TIntegerField;
    ZqTurnoUSUARIOID: TIntegerField;
    ZqTurnoEFECTIVO_INICIAL: TFloatField;
    ZqTurnoESTADO: TIntegerField;
    ZqTurnoFECHA: TDateField;
    SumNC: TZReadOnlyQuery;
    SumNCSUMA: TFloatField;
    RxDBComboBox1: TRxDBComboBox;
    Label12: TLabel;
    ZqTurnoIDTURNO: TIntegerField;
    ZqTurnoCAJA: TWideStringField;
    ZqTurnoHORA: TTimeField;
    DsEmpleados: TDataSource;
    Panel4: TPanel;
    cxImage1: TcxImage;
    Label24: TLabel;
    cxDBCalcEdit11: TcxDBCalcEdit;
    Label16: TLabel;
    Panel2: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label7: TLabel;
    cxImage7: TcxImage;
    cxImage3: TcxImage;
    Label25: TLabel;
    cxDBCalcEdit8: TcxDBCalcEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxDBCalcEdit9: TcxDBCalcEdit;
    Label26: TLabel;
    cxImage2: TcxImage;
    cxImage8: TcxImage;
    Label8: TLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    Label20: TLabel;
    cxImage6: TcxImage;
    Label19: TLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    Label6: TLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    Label3: TLabel;
    cxImage5: TcxImage;
    Label1: TLabel;
    Panel3: TPanel;
    cxImage4: TcxImage;
    Label13: TLabel;
    cxButton1: TcxButton;
    ZqUsuarios: TZReadOnlyQuery;
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
    ZqUsuariosUSUARIOID: TIntegerField;
    ZqUsuariosEMPLEADOID: TIntegerField;
    ZqUsuariosTIPO: TIntegerField;
    ZqUsuariosPASSW: TWideStringField;
    ZqUsuariosIDAC: TWideStringField;
    ZqUsuariosNOMBRES_EMP: TWideStringField;
    ZqUsuariosTIENDAID: TIntegerField;
    ZqUsuariosCARGO: TWideStringField;
    Finicio: TcxDateEdit;
    Label17: TLabel;
    idusuario: TcxDBSpinEdit;
    cxButton3: TcxButton;
    MAXBONO: TZReadOnlyQuery;
    MAXBONOBONOS: TFloatField;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label4: TLabel;
    Label5: TLabel;
    dSCONFIG: TDataSource;
    FindDialog1: TFindDialog;
    Qcajas: TZReadOnlyQuery;
    DsCajas: TDataSource;
    QcajasIDCAJA: TIntegerField;
    QcajasCAJA_NOMBRE: TWideStringField;
    QcajasESTADO: TIntegerField;
    QcajasSECUENCIAFACT: TIntegerField;
    QcajasNCFID: TIntegerField;
    QcajasCONDICION: TWideStringField;
    QcajasTABLAARTICULOS: TWideStringField;
    QcajasTABLAMASTERFACT: TWideStringField;
    QcajasTABLADETALLEFACT: TWideStringField;
    Memo1: TMemo;
    Panel11: TPanel;
    op10: TcxRadioGroup;
    cxButton18: TcxButton;
    Panel5: TPanel;
    Edit2: TEdit;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    DsRuta: TDataSource;
    Label42: TLabel;
    cxButton5: TcxButton;
    QRuta: TZReadOnlyQuery;
    QRutaID: TIntegerField;
    QRutaNOMBRE_RUTA: TWideStringField;
    QRutaIDVENDEDOR: TIntegerField;
    QRutaNOMBRE: TWideStringField;
    Edit3: TEdit;
    DsConsulta: TDataSource;
    consulta: TZReadOnlyQuery;
    Detallecobro: TfrxDBDataset;
    cxButton2: TcxButton;
    consultaCOD_ART: TWideStringField;
    consultaARTICULO: TWideStringField;
    consultaCANTIDAD: TFloatField;
    consultaTOTAL: TFloatField;
    DsMaxVenta: TDataSource;
    CurrencyEdit1: TCurrencyEdit;
    Edit1: TEdit;
    DsGastos: TDataSource;
    cxButton6: TcxButton;
    QdetalleGastos: TZReadOnlyQuery;
    QdetalleGastosGASTOSID: TIntegerField;
    QdetalleGastosFECHA: TDateField;
    QdetalleGastosUSUARIOID: TIntegerField;
    QdetalleGastosCONCEPTOSID: TIntegerField;
    QdetalleGastosNOTA: TWideMemoField;
    QdetalleGastosIMPORTE: TFloatField;
    QdetalleGastosBENEFICIADO: TWideStringField;
    QdetalleGastosESTADO: TIntegerField;
    cxButton7: TcxButton;
    Edit4: TEdit;
    cxGrid2DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    gatos: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    datagastos: TfrxDBDataset;
    DsCobro: TDataSource;
      procedure Click(Sender: TObject);
    procedure cxCurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Change(Sender: TObject);
//    procedure EnviarMensaje(sUsuario, sClave, sHost, sAdjunto, sAsunto, sDestino, sMensaje: String);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);




  private
    { Private declarations }
  public
  SMTP: TIdSMTP;
  MailMessage: TIdMessage;
  IdEmailAddressItem: TIdEmailAddressItem;
    { Public declarations }
  end;

var
  FrmCaja: TFrmCaja;

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
  uses unit2, unit19, tools, Inicio_Principal, Unit63, Winapi.Mapi;
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



procedure ExibirImpressoras(list: tstrings); // exibe lista de imprassora do windows
begin
  list.Text := Printer.printers.Text;
end;

procedure SelecionarImpresora(Nome: String); // seleciona uma impressora pelo nome
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

procedure IniciarImpresao(x, y: integer; impressora: string); // inicia a impresora
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



procedure TFrmCaja.Click(Sender: TObject);
begin
//panel1.Visible := true;
//cxcurrencyedit1.Value := datos.zcajaMONTOINICIAL.Value;
//cxcurrencyedit1.SetFocus;

end;

procedure TFrmCaja.cxButton18Click(Sender: TObject);
var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

       longitud, campoD, campoC1, campoC2, campol, campof : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2 : string;
begin


//  datos.zcaja.Edit;
//  datos.zcajaVENTAS.Value         := maxventaventa.Value;
//  datos.zcajaCOBRANZAS.Value      := sumcobrocobro.Value;
//  datos.zcajaFECTIVO.Value        := datos.zcajaVENTAS.Value + datos.zcajaCOBRANZAS.Value;
//  datos.zcajaTARJETA.Value        := 0.00;
//  datos.zcajaCHEQUE.Value         := 0.00;
//  datos.zcajaNOTACREDITO.Value    := 0.00;
//  datos.zcajaGASTOS.Value         := sumgastossuma.Value;
//  datos.zcajaBONOS.Value          := maxbonobonos.Value;
//  datos.zcajaTOTAL_GASTOS.Value   := datos.zcajaGASTOS.Value + datos.zcajaNOTACREDITO.Value;
//  datos.zcajaTOTAL_EFECTIVO.Value := (datos.zcajaMONTOINICIAL.Value + (datos.zcajaFECTIVO.Value - datos.zcajaTOTAL_GASTOS.Value));
//  datos.zcajacaja.Value           := asignacaja;
//
//
//
//      datos.zcaja.ApplyUpdates;
//      datos.Data.Commit;




if op10.ItemIndex = 0 then
  begin

if application.MessageBox ('Deseas Imprimir Este Cuadre, !!!  Caja Será Cerrada  !!!','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin



/////******* iMPRESION    *****



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

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DATOS.ZUconfiguracion.FieldByName('TEXINICIAR').Value);
//      WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
 //     WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
    //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(' ',datos.ZUconfiguracionLONGTICKET.Value,0));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('CUADRE CAJA'),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(' ',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+Datos.zcaja.FieldByName('FECHA').AsString+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('CAJERO: '+datos.zcaja.FieldByName('NOMBRES_EMP').AsString),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CAJA  :'+datos.zcaja.FieldByName('CAJA').Value),StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(' ',StrToInt(longitud),0));

       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('EFECTIVOS',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------------',StrToInt(longitud),0));

      if not datos.zcaja.FieldByName('VENTAS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('VENTAS:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',datos.zcaja.FieldByName('VENTAS').Value),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('VENTAS:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',0),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1));
      if not datos.zcaja.FieldByName('COBRANZAS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('COBRANZA:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',datos.zcaja.FieldByName('COBRANZAS').Value),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('COBRANZA:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',1),StrToInt(DcampoD),0)+ESPACIOS('',StrToInt(campoF),1));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------------',datos.ZUconfiguracionLONGTICKET.Value,0));

      if not datos.zcaja.FieldByName('FECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL EFECTIVO:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',datos.zcaja.FieldByName('FECTIVO').Value),11,1)+ESPACIOS('',StrToInt(campoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL EFECTIVO:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',0),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1));


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------------',StrToInt(longitud),0));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SALIDAS',StrToInt(longitud),0));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------------',StrToInt(longitud),0));

      if not datos.zcaja.FieldByName('GASTOS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('GASTOS:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',datos.zcaja.FieldByName('GASTOS').Value),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('GASTOS:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',0),11,1)+ESPACIOS('',StrToInt(campoF),1));
      if not datos.zcaja.FieldByName('NOTACREDITO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('NOTA DE CREDITO:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',datos.zcaja.FieldByName('NOTACREDITO').Value),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('COBRANZA:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',1),StrToInt(DcampoD),0)+ESPACIOS('',StrToInt(campoF),1));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------------',StrToInt(longitud),0));
      if not datos.zcaja.FieldByName('TOTAL_GASTOS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL GASTOS:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',datos.zcaja.FieldByName('TOTAL_GASTOS').Value),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL GASTOS:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',0),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------------',StrToInt(longitud),0));
      if not datos.zcaja.FieldByName('MONTOINICIAL').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('MONTO INICIAL:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',datos.zcaja.FieldByName('MONTOINICIAL').Value),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('MONTOINICIAL:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',0),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1));

      if not datos.zcaja.FieldByName('TOTAL_EFECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL CUADRE:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',datos.zcaja.FieldByName('TOTAL_EFECTIVO').Value),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL_EFECTIVO:',StrToInt(pcampoL),0)+Espacios(FormatFloat('#,##0.00',0),StrToInt(DcampoD),1)+ESPACIOS('',StrToInt(campoF),1));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------------',StrToInt(longitud),0));




          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
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
  end;
end;



if op10.ItemIndex = 1 then
  begin



   with consulta do
     begin
       close;
       sql.Clear;
       sql.Add('select a.cod_art, b.articulo, sum(a.cantidad) cantidad, Sum(a.total) total from detailfact a');
       sql.Add('left join mtartuculos b On a.cod_art = b.cod_art');
       sql.Add('left join master_fact c On a.masterid = c.no_fact');
       sql.Add('where c.fecha_fac =:pppp');
       sql.Add('and c.idruta =:pp3');
       sql.Add('group by a.cod_art, b.articulo');
       params[0].Value := finicio.Date;
       params[1].Value := StrToInt(edit3.Text);
       open;

     end;



                          print0.PrepareReport(true);
                    // recibo2.ShowPreparedReport;
                    print0.ShowPreparedReport;

  end;


//DATOS.zcaja.Edit;
//DATOS.zcajaESTADO.Value := 2;
//DATOS.zcaja.ApplyUpdates;
//DATOS.Data.Commit;

//inicioMDI.AdvGlowButton1.Enabled := false;

end;

procedure TFrmCaja.cxButton1Click(Sender: TObject);
begin
{datos.zcaja.ApplyUpdates;
datos.Data.Commit;
cxButton1.Enabled := false;

        panel4.Enabled := false;
        cxDBCalcEdit11.Enabled := false;
        cxDBCalcEdit11.Properties.ReadOnly := true;
 }
end;


procedure EnviarMensaje( sUsuario, sClave, sHost, sAdjunto, sAsunto, sDestino, sMensaje: String );
var SMTP: TIdSMTP;
   Mensaje: TIdMessage;
   Adjunto: TIdAttachmentFile;
begin
  // Creamos el componente de conexión con el servidor

  SMTP := TIdSMTP.Create( nil );
  SMTP.Username := sUsuario;
  SMTP.Password := sClave;
  SMTP.Host := sHost;
  SMTP.Port := 587;
  SMTP.AuthType := satDefault;

  // Creamos el contenido del mensaje
  Mensaje := TIdMessage.Create( nil );
  Mensaje.Clear;
  Mensaje.From.Name := sDestino;
  Mensaje.From.Address := sDestino;
  Mensaje.Subject := sAsunto;
  Mensaje.Body.Text := sMensaje;
  Mensaje.Recipients.Add;
  Mensaje.Recipients.Items[0].Address := sDestino;

  // Si hay que meter un archivo adjunto lo creamos y lo asignamos al mensaje
  if sAdjunto <> '' then
  begin
    if FileExists( sAdjunto ) then

      Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, sAdjunto);
  end
  else
    Adjunto := nil;

  // Conectamos con el servidor SMTP
  try
    SMTP.Connect;
  except
    raise Exception.Create( 'Error al conectar con el servidor.' );
  end;

  // Si ha conectado enviamos el mensaje y desconectamos
  if SMTP.Connected then
  begin
    try
      SMTP.Send( Mensaje );
    except
      raise Exception.Create( 'Error al enviar el mensaje.' );
    end;

    try
      SMTP.Disconnect;
    except
      raise Exception.Create( 'Error al desconectar del servidor.' );
    end;
  end;

  // Liberamos los objetos creados
  if Adjunto <> nil then
    FreeAndNil( Adjunto );

  FreeAndNil( Mensaje );
  FreeAndNil( SMTP );

  Application.MessageBox( 'Mensaje enviado correctamente.',
    'Fin de proceso',MB_ICONINFORMATION );
end;
procedure SendEmail;
var
      IdMessage: TIdMessage;
      SMTP: TIdSMTP;
      SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
      IdUserPassProvider: TIdUserPassProvider;
      IdSASLCRAMMD5: TIdSASLCRAMMD5;
      IdSASLCRAMSHA1: TIdSASLCRAMSHA1;
      IdSASLPlain: TIdSASLPlain;
      IdSASLLogin: TIdSASLLogin;
      IdSASLSKey: TIdSASLSKey;
      IdSASLOTP: TIdSASLOTP;
      IdSASLAnonymous: TIdSASLAnonymous;
      IdSASLExternal: TIdSASLExternal;
begin

IdMessage := TIdMessage.Create(nil);
try
    IdMessage.ContentType := 'text/plain';
    IdMessage.Charset := 'UTF-8';
    IdMessage.Body.Text:='Prova di invio tramite SSL';
    IdMessage.Sender.Text := 'ismael.santos.amador@gmail.com';
    IdMessage.From.Name := 'Paolo Giovanelli';
    IdMessage.From.Address := 'ismael.santos.amador@gmail.comm';
    IdMessage.ReplyTo.EMailAddresses := 'ismael.santos.amador@gmail.com';
    IdMessage.Recipients.EMailAddresses := 'ismael.santos.amador@gmail.com';
    IdMessage.Subject := 'Prova invio SSL';
    IdMessage.Priority := TIdMessagePriority.mpHighest;
    IdMessage.CCList.EMailAddresses := '';
    IdMessage.ReceiptRecipient.Text := '';
    IdMessage.BccList.EMailAddresses := '';

SMTP := TIdSMTP.Create(nil);
try
  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(SMTP);
 // SSLHandler.MaxLineAction := maException;
  SSLHandler.SSLOptions.Method := sslvSSLv3;
  SSLHandler.SSLOptions.Mode := sslmClient;
  SSLHandler.SSLOptions.VerifyMode := [];
  SSLHandler.SSLOptions.VerifyDepth := 0;


  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create;
  SMTP.IOHandler := SSLHandler;
  SMTP.UseTLS := utUseRequireTLS;

 // SMTP.IOHandler := SSLHandler;
 // SMTP.UseTLS := utUseExplicitTLS;
   SMTP.AuthType := satDefault;

  IdUserPassProvider := TIdUserPassProvider.Create(SMTP);
  IdUserPassProvider.Username := 'ismael.santos.amador@gmail.com';
  IdUserPassProvider.Password:= 'Aylinsantos@1208'; // my mail password

  IdSASLCRAMSHA1 := TIdSASLCRAMSHA1.Create(SMTP);
  IdSASLCRAMSHA1.UserPassProvider := IdUserPassProvider;
  IdSASLCRAMMD5 := TIdSASLCRAMMD5.Create(SMTP);
  IdSASLCRAMMD5.UserPassProvider := IdUserPassProvider;
  IdSASLSKey := TIdSASLSKey.Create(SMTP);
  IdSASLSKey.UserPassProvider := IdUserPassProvider;
  IdSASLOTP := TIdSASLOTP.Create(SMTP);
  IdSASLOTP.UserPassProvider := IdUserPassProvider;
  IdSASLAnonymous := TIdSASLAnonymous.Create(SMTP);
  IdSASLExternal := TIdSASLExternal.Create(SMTP);
  IdSASLLogin := TIdSASLLogin.Create(SMTP);
  IdSASLLogin.UserPassProvider := IdUserPassProvider;
  IdSASLPlain := TIdSASLPlain.Create(SMTP);
  IdSASLPlain.UserPassProvider := IdUserPassProvider;

  SMTP.SASLMechanisms.Add.SASL := IdSASLCRAMSHA1;
  SMTP.SASLMechanisms.Add.SASL := IdSASLCRAMMD5;
  SMTP.SASLMechanisms.Add.SASL := IdSASLSKey;
  SMTP.SASLMechanisms.Add.SASL := IdSASLOTP;
  SMTP.SASLMechanisms.Add.SASL := IdSASLAnonymous;
  SMTP.SASLMechanisms.Add.SASL := IdSASLExternal;
  SMTP.SASLMechanisms.Add.SASL := IdSASLLogin;
  SMTP.SASLMechanisms.Add.SASL := IdSASLPlain;

  SMTP.Host := 'smtp.gmail.com';
  SMTP.Port := 587;
  SMTP.ConnectTimeout := 30000;
  SMTP.UseEHLO := True;
  SMTP.Connect;

try
  SMTP.Send(IdMessage);
finally
  SMTP.Disconnect;
end;

finally
  SMTP.Free;
end;

finally
  IdMessage.Free;
end;
end;



procedure TFrmCaja.cxButton2Click(Sender: TObject);
VAR
SMTP : TIdSMTP;
MSG : TIdMessage;
begin

end;


procedure TFrmCaja.cxButton3Click(Sender: TObject);
 var cont, numpag,i: integer;
      arq:textfile;
      fechaFA : tdate;
      horaFA : ttime;
      r: TRect;

       longitud, campoD, campoC1, campoC2, campol, campof : string;
      DcampoD, DcampoC1, DcampoC2, Dcampol, Dcampof, DcampoD2 : string;
      PcampoD, PcampoC1, PcampoC2, Pcampol, Pcampof, PcampoD2 : string;

begin
//panel11.Visible := true;

  with maxventa do
  begin
    close;
    sql.Clear;
    sql.Add('select sum(a.montopago) venta from master_fact a');
    sql.Add('where a.fecha_fac =:fecha1');
    sql.Add('and a.tipo =''Contado''');
    sql.Add('and a.condicion =''ACTIVA''');
    sql.Add('and a.situacion =''IMPRESA''');
    sql.Add('and a.usuarioID =:ppp');
    params[0].Value := finicio.Date;
    params[1].Value :=StrTOint(Edit3.Text);
    open;
  end;

 with sumcobro do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(monto) cobro from recibo_pago');
     sql.Add('where fecha =:fecha1');
     sql.Add('and usuarioid=:Uop');
     params[0].Value := finicio.Date;
     params[1].Value :=StrTOint(Edit3.Text);

     open;
   end;

  with sumGastos do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(importe) suma from control_gastos');
     sql.Add('where fecha =:fecha1');
     sql.Add('and usuarioid=:ppp');
     params[0].Value := finicio.Date;
     params[1].Value :=StrTOint(Edit3.Text);
     open;
   end;

     with MAXBONO do
   begin
     close;
     params[0].Value := finicio.Date;
     open;
   end;

//  datos.zcaja.Edit;
//  datos.zcajaVENTAS.Value         := maxventaventa.Value;
//  datos.zcajaCOBRANZAS.Value      := sumcobrocobro.Value;
//  datos.zcajaFECTIVO.Value        := datos.zcajaVENTAS.Value + datos.zcajaCOBRANZAS.Value;
//  datos.zcajaTARJETA.Value        := 0.00;
//  datos.zcajaCHEQUE.Value         := 0.00;
//  datos.zcajaNOTACREDITO.Value    := 0.00;
//  datos.zcajaGASTOS.Value         := sumgastossuma.Value;
//  datos.zcajaBONOS.Value          := maxbonobonos.Value;
//  datos.zcajaTOTAL_GASTOS.Value   := datos.zcajaGASTOS.Value + datos.zcajaNOTACREDITO.Value;
//  datos.zcajaTOTAL_EFECTIVO.Value := (datos.zcajaMONTOINICIAL.Value + (datos.zcajaFECTIVO.Value - datos.zcajaTOTAL_GASTOS.Value));
//  datos.zcajacaja.Value           := asignacaja;
//
//
//
//      datos.zcaja.ApplyUpdates;
//      datos.Data.Commit;

//      cxButton3.Enabled := TRUE;
      currencyedit1.Value := (datos.zcajaMONTOINICIAL.Value + (maxventaventa.Value - SumgastosSuma.Value));


   print0.PrepareReport(true);
                    // recibo2.ShowPreparedReport;
   print0.ShowReport;




//DATOS.zcaja.Edit;
//DATOS.zcajaESTADO.Value := 2;
//DATOS.zcaja.ApplyUpdates;
//DATOS.Data.Commit;



end;





procedure TFrmCaja.cxButton4Click(Sender: TObject);
begin
//SHOWMESSAGE(''+ASIGNACAJA);


//with datos.zcaja do
//  begin
//      close;
//      sql.Clear;
//      sql.Add('select a.*,c.nombres_emp from cuadre_caja a');
//      sql.Add('left join musuario b On a.usaurioid = b.usuarioid');
//      sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
//   //   sql.Add('where a.usaurioid =:pp1');
//      sql.Add('where a.fecha =:pp2');
//      sql.Add('and a.estado =:pp3');
//      sql.Add('and a.CAJA =:pp4');
//     // params[0].Value := idusuario.Value;
//      params[0].Value := finicio.Date;
//      params[1].Value := 1;
//      params[2].Value := ASIGNACAJA;
//
//      open;
//  end;

//if datos.zcaja.RecordCount > 0 then
//    begin
      panel4.Enabled := true;
      cxDBCalcEdit11.Enabled := false;
      cxDBCalcEdit11.Properties.ReadOnly := true;
      cxButton1.Enabled := false;

  with maxventa do
  begin
    close;
    sql.Clear;
    sql.Add('select sum(a.montopago) venta from master_fact a');
    sql.Add('where a.TiendaID =:fecha1');
    sql.Add('and a.tipo =''Contado''');
    sql.Add('and a.condicion =''ACTIVA''');
    sql.Add('and a.situacion =''IMPRESA''');
    sql.Add('and a.usuarioID =:ppp');
    params[0].Value := asignaTurno;
    params[1].Value :=StrTOint(Edit3.Text);
    open;
  end;

 with sumcobro do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(monto) cobro from recibo_pago');
     sql.Add('where idturno =:fecha1');
     sql.Add('and usuarioid=:Uop');
     params[0].Value := AsignaTUrno;
     params[1].Value :=StrTOint(Edit3.Text);

     open;
   end;

  with sumGastos do
   begin
     close;
     sql.Clear;
     sql.Add('select sum(importe) suma from control_gastos');
     sql.Add('where fecha =:fecha1');
     sql.Add('and usuarioid=:ppp');
     params[0].Value := finicio.Date;
     params[1].Value :=StrTOint(Edit3.Text);
     open;
   end;

     with MAXBONO do
   begin
     close;
     params[0].Value := finicio.Date;
     open;
   end;

//  datos.zcaja.Edit;
//  datos.zcajaVENTAS.Value         := maxventaventa.Value;
//  datos.zcajaCOBRANZAS.Value      := sumcobrocobro.Value;
//  datos.zcajaFECTIVO.Value        := datos.zcajaVENTAS.Value + datos.zcajaCOBRANZAS.Value;
//  datos.zcajaTARJETA.Value        := 0.00;
//  datos.zcajaCHEQUE.Value         := 0.00;
//  datos.zcajaNOTACREDITO.Value    := 0.00;
//  datos.zcajaGASTOS.Value         := sumgastossuma.Value;
//  datos.zcajaBONOS.Value          := maxbonobonos.Value;
//  datos.zcajaTOTAL_GASTOS.Value   := datos.zcajaGASTOS.Value + datos.zcajaNOTACREDITO.Value;
//  datos.zcajaTOTAL_EFECTIVO.Value := (datos.zcajaMONTOINICIAL.Value + (datos.zcajaFECTIVO.Value - datos.zcajaTOTAL_GASTOS.Value));
//  datos.zcajacaja.Value           := asignacaja;
//
//
//
//      datos.zcaja.ApplyUpdates;
//      datos.Data.Commit;

      cxButton3.Enabled := TRUE;
      currencyedit1.Value := (datos.zcajaMONTOINICIAL.Value + sumcobrocobro.Value + (maxventaventa.Value - SumgastosSuma.Value));

   end;





procedure TFrmCaja.cxButton5Click(Sender: TObject);
begin
panel5.Visible := true;
qruta.Open;
edit2.SetFocus;
end;

procedure TFrmCaja.cxButton6Click(Sender: TObject);
begin

with QdetalleGastos do
 begin
     close;
     sql.Clear;
     sql.add('select * from CONTROL_GASTOS');
      sql.Add('where fecha =:fecha1');
     sql.Add('and usuarioid=:ppp');
     params[0].Value := finicio.Date;
     params[1].Value :=StrTOint(Edit3.Text);
 end;

             gatos.variables['fecha1']:=quotedstr(finicio.text);

             gatos.PrepareReport(true);
             gatos.ShowPreparedReport;


end;

procedure TFrmCaja.cxButton7Click(Sender: TObject);
begin
panel5.Visible := true;
ZqUsuarios.Open;
end;

procedure TFrmCaja.cxCurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    datos.zcaja.Edit;
   // datos.zcajaMONTOINICIAL.Value := cxcurrencyedit1.Value;
    datos.zcajaTOTAL_EFECTIVO.Value := (datos.zcajaMONTOINICIAL.Value + (datos.zcajaFECTIVO.Value - datos.zcajaTOTAL_GASTOS.Value));
    //panel1.Visible := false;
  end;

end;

procedure TFrmCaja.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
edit4.Text := ZqUsuariosNombres_Emp.text;
edit3.Text := ZqUsuariosUsuarioID.Text;
edit2.Clear;
qruta.Close;
panel5.Visible := false;
cxButton4.Enabled := true;
end;

procedure TFrmCaja.cxGridDBTableView2DblClick(Sender: TObject);
begin
//cod.Text  := IntToStr(qempleadosusuarioid.Value);
//caj.Text  := qempleadosnombres_emp.Value;
//opbuscarempleado.Visible := false;

end;

procedure TFrmCaja.Edit2Change(Sender: TObject);
begin


with zqusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
   sql.Add('where b.nombres_emp like '+#39+'%'+edit2.Text+'%'+#39);
    open;
  end;


end;


procedure TFrmCaja.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
datos.zcaja.CancelUpdates;
end;

procedure TFrmCaja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    panel11.Visible := false;
  end;
end;

PRocedure TFrmCaja.FormShow(Sender: TObject);
begin
finicio.Date := now();
Ffinal.Date := now();


with zqusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
   // sql.Add('where usuarioID =:ppp');
   // params[0].Value :=AsignaUsuario;
    open;
  end;


if datos.ZUconfiguracionUSOAPLICACION.Value = 'Caja-Unica' then
   begin
      // usuario1.Visible := true;
      // bcajas.Visible   := false;
      // Label18.Caption :='usuarios';
       qcajas.close;
   end else begin
     //  usuario1.Visible := false;
    //   bcajas.Visible   := true;
    //   Label18.Caption :='Cajas';
      qcajas.Open;

   end;

 panel4.Enabled := true;
      cxDBCalcEdit11.Enabled := false;
      cxDBCalcEdit11.Properties.ReadOnly := true;
      cxButton1.Enabled := false;

end;

end.
