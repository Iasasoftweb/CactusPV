unit UcajerroAnterior;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Data.DB, ZAbstractRODataset, ZDataset,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, frxClass, frxDBSet, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid,  printers, StrUtils, WinSpool, dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxGroupBox,
  cxRadioGroup, frxExportBaseDialog, frxExportPDF, ComObj, excel2000, acPNG,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmCajerosAnteriores = class(TForm)
    Tecnicos: TZReadOnlyQuery;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    TecnicosCOD_EMP1: TIntegerField;
    DsTecnico: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsTurno: TDataSource;
    cxGrid1DBTableView1EFECTIVO_INICIAL: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1IDTURNO: TcxGridDBColumn;
    cxGrid1DBTableView1CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1EFECTIVOCAJA: TcxGridDBColumn;
    cxGrid1DBTableView1COBRANZA: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALGASTOS: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALCUADRE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALVENTAS: TcxGridDBColumn;
    frxDBDataset1: TfrxDBDataset;
    print0: TfrxReport;
    config: TfrxDBDataset;
    cxButton8: TcxButton;
    QConsulta: TZReadOnlyQuery;
    QConsultaTURNOID: TIntegerField;
    QConsultaUSUARIOID: TIntegerField;
    QConsultaEFECTIVO_INICIAL: TFloatField;
    QConsultaESTADO: TIntegerField;
    QConsultaFECHA: TDateField;
    QConsultaIDTURNO: TIntegerField;
    QConsultaCAJA: TWideStringField;
    QConsultaHORA: TTimeField;
    QConsultaEFECTIVOCAJA: TFloatField;
    QConsultaCOBRANZA: TFloatField;
    QConsultaTC: TFloatField;
    QConsultaCHEQUE: TFloatField;
    QConsultaVALE: TFloatField;
    QConsultaGASTOS: TFloatField;
    QConsultaNC: TFloatField;
    QConsultaTOTALGASTOS: TFloatField;
    QConsultaTOTALEINGRESO: TFloatField;
    QConsultaTOTALCUADRE: TFloatField;
    QConsultaDESCUADRE: TFloatField;
    QConsultaTOTALVENTAS: TFloatField;
    QConsultaTOTALEGRESOS: TFloatField;
    QConsultaSOBRANTES: TFloatField;
    QConsultaNOMBRES_EMP: TWideStringField;
    QConsultaDESCRICPCION: TWideStringField;
    frxPDFExport1: TfrxPDFExport;
    cxButton3: TcxButton;
    Print1: TfrxReport;
    Panel2: TPanel;
    btnsalir: TSpeedButton;
    Panel3: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label13: TLabel;
    Panel12: TPanel;
    Label14: TLabel;
    lblEstado: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    inicio: TcxDateEdit;
    Panel7: TPanel;
    SpeedButton1358: TSpeedButton;
    Panel17: TPanel;
    SpeedButton9: TSpeedButton;
    Panel4: TPanel;
    Tipo: TcxRadioGroup;
    Panel8: TPanel;
    cxButton4: TSpeedButton;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure imprimecuadre;
    procedure cxButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1358Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCajerosAnteriores: TFrmCajerosAnteriores;

implementation

{$R *.dfm}

uses Unit118, Unit2, tools;




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
procedure TFrmCajerosAnteriores.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmCajerosAnteriores.cxButton2Click(Sender: TObject);
begin
if FrmBuscarInstalador = nil then  begin
    FrmBuscarInstalador := tFrmBuscarInstalador.Create(self);
    FrmBuscarInstalador.Edit2.Text := 'CUADRE';
    FrmBuscarInstalador.showmodal;
end;
end;

procedure TFrmCajerosAnteriores.cxButton3Click(Sender: TObject);
Var
Plantilla : Variant;
Linha, cont : Integer;
begin



// Ai.StartAnimation;
 Cont := qconsulta.RecordCount;
// AI.FrameDelay := 0;
 qconsulta.Filtered := false;

  Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Reporte de Cierre de Caja';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PV';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'Reporte Cierre de Caja';
        Plantilla.cells[4,1] := 'Cajero :'+cxDBTextEdit2.Text ;
         Plantilla.cells[5,1] := 'Desde :'+inicio.Text+' Hasta : '+fechafinal.Text;

       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
  Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'Id Turno';
        Plantilla.cells[6,2]:= '# Caja';
        Plantilla.cells[6,3]:= 'Fecha';
        Plantilla.cells[6,4]:= 'Hora';
        Plantilla.cells[6,5]:= 'Efectivo Inicial';
        Plantilla.cells[6,6]:= 'Efectivo en Caja';
        Plantilla.cells[6,7]:= 'Cobranza';
        Plantilla.cells[6,8]:= 'Total Cuadre';
        Plantilla.cells[6,9]:= 'Total Venta';


        qconsulta.DisableControls;
        with qconsulta do begin
        try
            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= QConsultaTURNOID.Value;
                     Plantilla.cells[Linha, 2]:= QConsultaCAJA.Value;
                     Plantilla.cells[Linha, 3]:= formatdatetime('yyyymmdd',QConsultaFECHA.Value);
                     Plantilla.cells[Linha, 4]:= formatdatetime('tt',QConsultahora.Value);
                     Plantilla.cells[Linha, 5]:= FormatFloat('#,##0.00', QConsultaEFECTIVO_INICIAL.Value);
                     Plantilla.cells[Linha, 6]:= FormatFloat('#,##0.00', QConsultaEFECTIVOCAJA.Value);
                     Plantilla.cells[Linha, 7]:= FormatFloat('#,##0.00', QConsultaCOBRANZA.Value);
                     Plantilla.cells[Linha, 8]:= FormatFloat('#,##0.00', QConsultaTotalcuadre.Value);
                     Plantilla.cells[Linha, 9]:= FormatFloat('#,##0.00', QConsultaTOTALVENTAS.Value);
                     Linha := Linha + 1;




                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            qconsulta.EnableControls;
            Plantilla := Unassigned;

           // ai.StopAnimation;
        end;
        end;


//
//{Iniciar Excel}
//    try
//    ExcelApp:=GetActiveOleObject('Excel.Application');
//    except
//      try
//        ExcelApp:=CreateOleObject('Excel.Application');
//        except
//          Screen.Cursor:=crDefault;
//          MessageDlg('No puede Iniciar Excel / Excel no Instalado',mterror,[mbOK],0);
//          exit;
//      end;
//end;
//
//ExcelApp.WorkBooks.Add(xlWBATWorksheet);
//ExcelApp.ActiveSheet.Name := 'Informe';
//ExcelApp.Visible:=true;
//
//ExcelApp.Range['B1'].Formula := self.Caption;
//ExcelApp.Range['B1'].Font.Bold:=true;
//ExcelApp.Range['B1'].Font.size:=12;
//
//ExcelApp.Range['I4'].Formula :=formatdatetime('dd-mm-yyyy',date);
//ExcelApp.Range['I5'].Formula :=formatdatetime('hh:mm',time);
//ExcelApp.Range['I4'].HorizontalAlignment := xlCenter;
//ExcelApp.Range['I5'].HorizontalAlignment := xlCenter;
//
////------ aqui se insertan los datos ----
////f:=0;
////While not (ADOQuery1.Eof) do
////begin
////Inc(F);
////for c:=0 to (ADOQuery1.Fields.Count-1) do
////begin
////rango:=chr(c+97)+''+ IntToStr(f+6);
////ExcelApp.Range[rango].FormulaR1C1 := ADOQuery1.Fields[c].asVariant;
//
////end;
////End;
//
//
//
//ExcelApp:=UnAssigned;
//
////End;


end;



procedure TFrmCajerosAnteriores.cxButton4Click(Sender: TObject);
var
 cInf : string;
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


with datos.ZTurno do
              begin
                close;
                sql.Clear;
                sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                sql.Add('where a.idturno =:Usua');

                params[0].Value := QConsultaIDTURNO.Value;
                open;
              end;

if tipo.ItemIndex = 0 then
  begin
         if Tipoimpresion = 'D' then
                        begin
         imprimecuadre;
     end ELSE BEGIN

     //    cInf := datos.ZUconfiguracionROTULO_FC.value+'\CuadreEfectivo'+'.fr3';
                //  Showmessage(''+CinF);
//       print0.LoadFromFile(cInf);
      print0.PrepareReport(true);
      print0.print;
     END;
  end else begin
               print1.variables['fecha1']:=quotedstr(inicio.Text);
               print1.variables['fecha2']:=quotedstr(fechafinal.Text);
               print1.PrepareReport(true);
               print1.ShowPreparedReport;
           end;




end;

procedure TFrmCajerosAnteriores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FrmCajerosAnteriores := nil;
     Action := caFree;
end;

procedure TFrmCajerosAnteriores.imprimecuadre;
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


WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('CUADRE DE CAJA',StrToInt(longitud)));
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('CAJERO  :  '+MyTextReplace(DATOS.ZTurnoNOMBRES_EMP.AsString),StrToInt(longitud),0));

WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('FECHA   :'+MyTextReplace(DATOS.ZTurnofecha.AsString),StrToInt(longitud),0));
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));

    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('FECTIVO INICIAL.................:'+FormatFloat('#,##0.00',DATOS.ZTurnoEFECTIVO_INICIAL.Value),StrToInt(longitud),1));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('  INGRESOS',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('VENTA.....................:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALVENTAS.Value),StrToInt(longitud),1));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

     //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL TARJETA ................:'+FormatFloat('#,##0.00',DATOS.ZTurnoTC.Value),StrToInt(longitud),1));
  //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('COBRANZA .....................:'+FormatFloat('#,##0.00',DATOS.ZTurnoCOBRANZA.Value),StrToInt(longitud),1));
  //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('--------------------------------',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL EFECTIVO ...............:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALEINGRESO.Value),StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,SIZEFONT);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('EGRESOS',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('-----------------------------------',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('GASTOS ......................:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALGASTOS.Value),StrToInt(longitud),1));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('NOTA DE CREDITO..............:'+FormatFloat('#,##0.00',DATOS.ZTurnoNC.Value),StrToInt(longitud),1));
  //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));
   /// WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL EGRESOS ...............:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALEGRESOS.Value),StrToInt(longitud),1));
  //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('------------------------------------',StrToInt(longitud),0));
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('EFECTIVO CAJA ...............:'+FormatFloat('#,##0.00',DATOS.ZTurnoEFECTIVOCAJA.Value),StrToInt(longitud),1));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('TOTAL CUADRE ................:'+FormatFloat('#,##0.00',DATOS.ZTurnoTOTALCUADRE.Value),StrToInt(longitud),1));
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTBOLD);
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('FALTANTES ...................:'+FormatFloat('#,##0.00',DATOS.ZTurnoDESCUADRE.Value),StrToInt(longitud),1));
    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS('SOBRANTES ...................:'+FormatFloat('#,##0.00',DATOS.ZTurnosobrantes.Value),StrToInt(longitud),1));

   // WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);

    WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------',StrToInt(longitud),0));






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

procedure TFrmCajerosAnteriores.SpeedButton1358Click(Sender: TObject);
begin
with qconsulta do
              begin
                close;
                sql.Clear;
                sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                sql.Add('where c.cod_emp1 =:Usua');
                sql.Add('and a.fecha >=:fecha1');
                sql.Add('and a.fecha  <=:fecha2');


                params[0].Value := TecnicosCOD_EMP1.Value ;
                Params[1].Value := inicio.Date;
                Params[2].Value := fechafinal.Date;
                open;
              end;
end;

procedure TFrmCajerosAnteriores.SpeedButton1Click(Sender: TObject);
Var
Plantilla : Variant;
Linha, cont : Integer;
begin



// Ai.StartAnimation;
 Cont := qconsulta.RecordCount;
// AI.FrameDelay := 0;
 qconsulta.Filtered := false;

  Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Reporte de Cierre de Caja';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PV';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'Reporte Cierre de Caja';
        Plantilla.cells[4,1] := 'Cajero :'+cxDBTextEdit2.Text ;
         Plantilla.cells[5,1] := 'Desde :'+inicio.Text+' Hasta : '+fechafinal.Text;

       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
  Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'Id Turno';
        Plantilla.cells[6,2]:= '# Caja';
        Plantilla.cells[6,3]:= 'Fecha';
        Plantilla.cells[6,4]:= 'Hora';
        Plantilla.cells[6,5]:= 'Efectivo Inicial';
        Plantilla.cells[6,6]:= 'Efectivo en Caja';
        Plantilla.cells[6,7]:= 'Cobranza';
        Plantilla.cells[6,8]:= 'Total Cuadre';
        Plantilla.cells[6,9]:= 'Total Venta';


        qconsulta.DisableControls;
        with qconsulta do begin
        try
            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= QConsultaTURNOID.Value;
                     Plantilla.cells[Linha, 2]:= QConsultaCAJA.Value;
                     Plantilla.cells[Linha, 3]:= formatdatetime('yyyymmdd',QConsultaFECHA.Value);
                     Plantilla.cells[Linha, 4]:= formatdatetime('tt',QConsultahora.Value);
                     Plantilla.cells[Linha, 5]:= FormatFloat('#,##0.00', QConsultaEFECTIVO_INICIAL.Value);
                     Plantilla.cells[Linha, 6]:= FormatFloat('#,##0.00', QConsultaEFECTIVOCAJA.Value);
                     Plantilla.cells[Linha, 7]:= FormatFloat('#,##0.00', QConsultaCOBRANZA.Value);
                     Plantilla.cells[Linha, 8]:= FormatFloat('#,##0.00', QConsultaTotalcuadre.Value);
                     Plantilla.cells[Linha, 9]:= FormatFloat('#,##0.00', QConsultaTOTALVENTAS.Value);
                     Linha := Linha + 1;




                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            qconsulta.EnableControls;
            Plantilla := Unassigned;

           // ai.StopAnimation;
        end;
        end;


//
//{Iniciar Excel}
//    try
//    ExcelApp:=GetActiveOleObject('Excel.Application');
//    except
//      try
//        ExcelApp:=CreateOleObject('Excel.Application');
//        except
//          Screen.Cursor:=crDefault;
//          MessageDlg('No puede Iniciar Excel / Excel no Instalado',mterror,[mbOK],0);
//          exit;
//      end;
//end;
//
//ExcelApp.WorkBooks.Add(xlWBATWorksheet);
//ExcelApp.ActiveSheet.Name := 'Informe';
//ExcelApp.Visible:=true;
//
//ExcelApp.Range['B1'].Formula := self.Caption;
//ExcelApp.Range['B1'].Font.Bold:=true;
//ExcelApp.Range['B1'].Font.size:=12;
//
//ExcelApp.Range['I4'].Formula :=formatdatetime('dd-mm-yyyy',date);
//ExcelApp.Range['I5'].Formula :=formatdatetime('hh:mm',time);
//ExcelApp.Range['I4'].HorizontalAlignment := xlCenter;
//ExcelApp.Range['I5'].HorizontalAlignment := xlCenter;
//
////------ aqui se insertan los datos ----
////f:=0;
////While not (ADOQuery1.Eof) do
////begin
////Inc(F);
////for c:=0 to (ADOQuery1.Fields.Count-1) do
////begin
////rango:=chr(c+97)+''+ IntToStr(f+6);
////ExcelApp.Range[rango].FormulaR1C1 := ADOQuery1.Fields[c].asVariant;
//
////end;
////End;
//
//
//
//ExcelApp:=UnAssigned;
//
////End;


end;

procedure TFrmCajerosAnteriores.SpeedButton9Click(Sender: TObject);
begin
if FrmBuscarInstalador = nil then  begin
    FrmBuscarInstalador := tFrmBuscarInstalador.Create(self);
    FrmBuscarInstalador.Edit2.Text := 'CUADRE';
    FrmBuscarInstalador.showmodal;
end;
end;

end.
