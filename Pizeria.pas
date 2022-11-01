unit Pizeria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Vcl.DBCGrids, Data.DB,
  ZAbstractRODataset, ZDataset, cxLabel, cxDBLabel, cxImage, cxDBEdit,
  Vcl.StdCtrls, Vcl.Menus, cxButtons, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractDataset, Vcl.Mask, RxToolEdit, RxCurrEdit, cxGridCustomLayoutView,
  cxGridCardView, cxCurrencyEdit, Vcl.ExtCtrls, cxEditRepositoryItems,
  cxButtonEdit, dxGDIPlusClasses,printers, WinSpool, StrUtilS, frxClass,
  frxDBSet, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinSharp, dxSkinTheBezier, Vcl.WinXCtrls;

type
  TFrmPizeria = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    op1: TcxGroupBox;
    DsqArticulos: TDataSource;
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
    IbqRArticulosIMAGEN: TBlobField;
    IbqRArticulosCAT: TWideStringField;
    BtNuevo: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DBCtrlGrid2: TDBCtrlGrid;
    cxDBImage2: TcxDBImage;
    cxDBLabel4: TcxDBLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    DBCtrlGrid3: TDBCtrlGrid;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    QClasificaciones: TZReadOnlyQuery;
    QClasificacionesID_SABOR: TIntegerField;
    QClasificacionesDESCRIPCION: TWideStringField;
    DsClasificaciones: TDataSource;
    DBLClasificacion: TcxLookupComboBox;
    Label3: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1UNID: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
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
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZqusuarioCARGO: TWideStringField;
    DbCtrlGrid_Pizza: TDBCtrlGrid;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxButton9: TcxButton;
    numero_detalle: TZReadOnlyQuery;
    numero_detalleMAX: TIntegerField;
    t4: TCurrencyEdit;
    numero_detallegen: TZQuery;
    numero_detallegenGEN_ID: TLargeintField;
    t3: TcxTextEdit;
    t1: TEdit;
    t2: TcxTextEdit;
    edit11: TcxTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PanelRt: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label40: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    total: TcxDBCurrencyEdit;
    Txtecnico: TEdit;
    NCnumero: TEdit;
    Descc_t: TEdit;
    dsmasterFACT: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    BtAbajo: TcxButton;
    Btarriba: TcxButton;
    DsIngredientes: TDataSource;
    cxStyle2: TcxStyle;
    Image1: TImage;
    BtEliminarArticulo: TcxButton;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    Image2: TImage;
    BtCliente: TcxButton;
    cxDBLabel6: TcxDBLabel;
    Borrar: TZReadOnlyQuery;
    BTBuscar: TcxButton;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    BTEnviarHold: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    TbMesas: TcxButton;
    BtDelivery: TcxButton;
    cxGroupBox2: TcxGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    cxDBImage4: TcxDBImage;
    cxDBLabel5: TcxDBLabel;
    SQLCategoria: TZReadOnlyQuery;
    SQLCategoriaCODCAT: TIntegerField;
    SQLCategoriaCAT: TWideStringField;
    SQLCategoriaIMAGEN: TBlobField;
    SQLCategoriaEXTFOTO: TWideStringField;
    SQLCategoriaOPCION: TWideStringField;
    DsCategorias: TDataSource;
    BTCatNEXT: TcxButton;
    BTCatPrior: TcxButton;
    cxDBLabel10: TcxDBLabel;
    BTOrdenCocina: TcxButton;
    BtIngredientes: TcxButton;
    BtUnirCuenta: TcxButton;
    BTordenDelibery: TcxButton;
    BTFactHold: TcxButton;
    BTCobrar: TcxButton;
    BTCanelar: TcxButton;
    Edit3: TEdit;
    SqlParaCocina: TZReadOnlyQuery;
    SQLNumeroCocina: TZReadOnlyQuery;
    SQLNumeroCocinaGEN_ID: TLargeintField;
    SqlNumeroDCocina: TZReadOnlyQuery;
    SqlNumeroDCocinaGEN_ID: TLargeintField;
    SqlBIngredientes: TZReadOnlyQuery;
    SqlBIngredientesCOD_SERIES: TIntegerField;
    SqlBIngredientesCOD_ARTI: TIntegerField;
    SqlBIngredientesSERIES: TWideStringField;
    SqlBIngredientesESTADO: TIntegerField;
    SqlBIngredientesNO_FACT: TIntegerField;
    SqlBIngredientesIDDETALLE: TIntegerField;
    SqlBIngredientesPRECIO: TFloatField;
    SqlBIngredientesITBS: TFloatField;
    SqlBIngredientesTOTAL: TFloatField;
    SqlBuscarCocina: TZReadOnlyQuery;
    SqlBuscarCocinaID: TIntegerField;
    SqlBuscarCocinaFECHA: TDateField;
    SqlBuscarCocinaNO_ORDEN: TIntegerField;
    SqlBuscarCocinaHORA: TTimeField;
    SqlBuscarCocinaCLIENTE: TWideStringField;
    SqlBuscarCocinaORDEN: TWideMemoField;
    SqlBuscarCocinaTIEMPO: TIntegerField;
    SqlBuscarCocinaTIEMPO_RESTANTA: TTimeField;
    SqlBuscarCocinaESTADO: TIntegerField;
    Config: TfrxDBDataset;
    master: TfrxDBDataset;
    PrintCocina: TfrxReport;
    detalle: TfrxDBDataset;
    MCocina: TfrxDBDataset;
    DCocina: TfrxDBDataset;
    BTMEsero: TcxButton;
    SqlBuscarDcocina: TZReadOnlyQuery;
    SqlBorrarDCocina: TZReadOnlyQuery;
    cxDBTextEdit2: TcxDBTextEdit;
    Label1: TLabel;
    SqlBuscarCocinaMESERO: TWideStringField;
    NumeroCodigo: TZQuery;
    NumeroCodigoGEN_ID: TLargeintField;
    Edit1: TEdit;
    BtnDGII: TcxButton;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxDBComboBox1: TcxDBComboBox;
    QBalanceCreditoCliente: TZReadOnlyQuery;
    QBalanceCreditoClienteBALANCE: TExtendedField;
    Antiguedad: TZReadOnlyQuery;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TExtendedField;
    AntiguedadV0_30: TExtendedField;
    AntiguedadV31_60: TExtendedField;
    AntiguedadV61_90: TExtendedField;
    AntiguedadV91_120: TExtendedField;
    AntiguedadV120: TExtendedField;
    AntiguedadACTUAL: TExtendedField;
    cxDBComboBox2: TcxDBComboBox;
    Label2: TLabel;
    Label9: TLabel;
    PreFact: TfrxReport;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    BtFacturaImpresas: TcxButton;
    Image3: TImage;
    Edit2: TEdit;
    formapago: TEdit;
    SHPropina: TToggleSwitch;
    cxDBImage3: TcxDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtNuevoClick(Sender: TObject);
    procedure DBLClasificacionPropertiesChange(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure nofraccional;
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BtAbajoClick(Sender: TObject);
    procedure BtarribaClick(Sender: TObject);
    procedure BtIngredientesClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView2Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView2Column2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView2Column3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure BTBuscarClick(Sender: TObject);
    procedure cxGrid1DBTableView1Column3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1Column3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtEliminarArticuloClick(Sender: TObject);
    procedure cxGrid1DBTableView1Column4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BTFactHoldClick(Sender: TObject);
    procedure Printcopia;
    procedure BtClienteClick(Sender: TObject);
    procedure TbMesasClick(Sender: TObject);
    procedure BTEnviarHoldClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Click(Sender: TObject);
    procedure BTCatNEXTClick(Sender: TObject);
    procedure addcat;
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure cxDBImage4Click(Sender: TObject);
    procedure cxDBLabel5Click(Sender: TObject);
    procedure addpizza;
    procedure DbCtrlGrid_PizzaClick(Sender: TObject);
    procedure cxDBImage1Click(Sender: TObject);
    procedure cxDBImage2Click(Sender: TObject);
    procedure cxDBLabel10Click(Sender: TObject);
    procedure cxDBLabel4Click(Sender: TObject);
    procedure BtDeliveryClick(Sender: TObject);
    procedure BTordenDeliberyClick(Sender: TObject);
    procedure BTCanelarClick(Sender: TObject);
    procedure Cancelar;
    procedure nuevo;
    procedure BTOrdenCocinaClick(Sender: TObject);
    procedure BTMEseroClick(Sender: TObject);
    procedure BtnDGIIClick(Sender: TObject);
    procedure BTCobrarClick(Sender: TObject);
    procedure pago;
    procedure cobrando;
    procedure totales;
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtFacturaImpresasClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure cxDBLabel9Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPizeria: TFrmPizeria;

implementation

{$R *.dfm}

uses Unit2, tools, Unit131, Unit132, UFinder, Unit107, UMesas, Unit68, Unit133,
  Unit134, Unit117, Unit120, Unit87, Unit47, UfraccionPiza, UFacturasImpresas, UInicio;



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



procedure TFrmPizeria.BtarribaClick(Sender: TObject);
begin
IbqRArticulos.prior;
end;

procedure TFrmPizeria.BtEliminarArticuloClick(Sender: TObject);
var
suma : Currency;
itbs : Currency;
descc : Currency;
begin
if statushold = 'HOLD' then
           begin

             if FAutorizacion.ShowModal = mrOk then
               begin
                 with Borrar do
                        begin
                          close;
                          sql.Clear;
                          sql.Add('delete from man_series where cod_arti =:codarti and no_fact =:numerofactura');
                          params[0].Value := datos.ZdetalleARTICULOID.Value;
                          params[1].Value := datos.ZdetalleMASTERID.Value;
                          ExecSQL;
                        end;


                        datos.Zdetalle.Delete;


                       totales;

               end;
           end ELSE begin
                        with Borrar do
                        begin
                          close;
                          sql.Clear;
                          sql.Add('delete from man_series where cod_arti =:codarti and no_fact =:numerofactura');
                          params[0].Value := datos.ZdetalleARTICULOID.Value;
                          params[1].Value := datos.ZdetalleMASTERID.Value;
                          ExecSQL;
                        end;


                        datos.Zdetalle.Delete;


                       totales;

                    end;




end;

procedure TFrmPizeria.BTordenDeliberyClick(Sender: TObject);
begin
if FrmDelivery = nil then
  begin
    FrmDelivery := TFrmDelivery.create(self);
    FrmDelivery.HOLD.Close;
    FrmDelivery.HOLD.open;
    FrmDelivery.showmodal;
    statushold := '';
  end;
end;

procedure TFrmPizeria.BTCanelarClick(Sender: TObject);
begin
        if datos.FbqMaster_Fact.Active = true then
         begin


         if statushold = 'HOLD' then
           begin

             if FAutorizacion.ShowModal = mrOk then
                         begin

                                       if application.MessageBox ('Esta seguro de cancelar este documento','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                             begin
                                                        datos.FbqMaster_Fact.Edit;
                                                        if datos.fbqMaster_factsituacion.text <>'PEDIDO' then BEGIN
                                                          datos.fbqMaster_factsituacion.text :='CANCELADA';
                                                        END;
                                                        datos.FbqMaster_FactCONDICION.text :='ACTIVA';
                                                        //DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
                                                        //datos.FbqMaster_Factterminal.Text := 'FACTURACION';
                                                        datos.FbqMaster_FactABONO.Value          := 0.00;
                                                        datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;


                                                        if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
                                                          begin
                                                            datos.FbqMaster_Factquees.Value := 'NO';
                                                          end;

                                                        if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
                                                          begin
                                                            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
                                                          end;


                              T1.ClEAR;
                              //t2.Clear;
                              t3.Clear;
                              t4.Clear;

                              DATOS.FbqMaster_Fact.ApplyUpdates;
                              DATOS.Zdetalle.ApplyUpdates;
                              datos.data.Commit;

                               datos.ZInventario.Close;
                              DATOS.FbqMaster_Fact.Close;
                              DATOS.Zdetalle.Close;

                              Cancelar;

                             end;


                         end;



           end ELSE begin

                                       if application.MessageBox ('Esta seguro de cancelar este documento','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                             begin
                                                        datos.FbqMaster_Fact.Edit;
                                                        if datos.fbqMaster_factsituacion.text <>'PEDIDO' then BEGIN
                                                          datos.fbqMaster_factsituacion.text :='CANCELADA';
                                                        END;
                                                        datos.FbqMaster_FactCONDICION.text :='ACTIVA';
                                                        //DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
                                                        //datos.FbqMaster_Factterminal.Text := 'FACTURACION';
                                                        datos.FbqMaster_FactABONO.Value          := 0.00;
                                                        datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;


                                                        if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
                                                          begin
                                                            datos.FbqMaster_Factquees.Value := 'NO';
                                                          end;

                                                        if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
                                                          begin
                                                            datos.FbqMaster_Factquees.Value := 'PENDIENTE';
                                                          end;


                              T1.ClEAR;
                              //t2.Clear;
                              t3.Clear;
                              t4.Clear;

                              DATOS.FbqMaster_Fact.ApplyUpdates;
                              DATOS.Zdetalle.ApplyUpdates;
                              datos.data.Commit;

                               datos.ZInventario.Close;
                              DATOS.FbqMaster_Fact.Close;
                              DATOS.Zdetalle.Close;

                              Cancelar;

                             end;

                    end;



 end;
end;

procedure TFrmPizeria.addcat;
begin

with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
  //  sql.add('where a.marca =:marca');
    sql.Add('WHERE b.cat =:categoria');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
  //  params[0].Value := 'Personal';
    params[0].Value := SQLCategoriaCAT.Value;
    OPEN;
  end;

  if SQLCategoriaCAT.Value ='PIZZAS' then
    begin
       cxPageControl1.ActivePageIndex :=0;
       DBLClasificacion.Enabled := true;
    end;

  if SQLCategoriaCAT.Value ='BEBIDAS' then
    begin
       cxPageControl1.ActivePageIndex :=1;
       DBLClasificacion.Enabled := false;
    end;

     if SQLCategoriaCAT.Value ='SERVICIOS' then
    begin
       cxPageControl1.ActivePageIndex :=2;
       DBLClasificacion.Enabled := false;
    end;

end;

procedure TFrmPizeria.addpizza;
var
SeparadaPorComas :string;
   n                :integer;
   CANTV : STRING;
   CODIGOV : STRING;
   codoriginal : string;
   cantoriginal :string;
begin

    if cantv ='' then
       begin
           cantoriginal := '1';
       end;



                                           //  edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
                                             edit11.Text := '1.00';

                                             t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             t2.Text     := ibqrArticulosarticulo.Value;

                                          //   Descc_t.Text := IbqRArticulosCOMISION.text;

                                           //  edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

                                                 if ibqclientescolor.Value = 'PRECIO 1' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_A.value;
                                                 END;


                                              if ibqclientescolor.Value = 'PRECIO 2' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_B.value;
                                                 END;

                                                  if ibqclientescolor.Value = 'PRECIO 3' then
                                                 BEGIN
                                                  t4.value    := ibqrArticulosprecio_D.value;
                                                 END;
//
                                       //     lunidad.Text := ibqrarticulosunidad.Value;
                                            t3.Text := cantoriginal;




                               cxbutton9.Click;
                               datos.FbCategorias.CLOSE;
                      

end;

procedure TFrmPizeria.BTCatNEXTClick(Sender: TObject);
begin
if SQLCategoria.Active = True then
   begin
       SQLCategoria.next;
   end;

end;

procedure TFrmPizeria.BTOrdenCocinaClick(Sender: TObject);
begin
if FrmPedidosCocina = Nil then
  begin
    FrmPedidosCocina := tFrmPedidosCocina.Create(self);
    FrmPedidosCocina.ShowModal;
  end;
end;

procedure TFrmPizeria.BTEnviarHoldClick(Sender: TObject);
var
SerieTXT : String;
begin

  if total.Value = 0.00 then
      begin
                Showmessage('Este no orden no está completa');
                end else begin

                    if datos.FbqMaster_Factcodven.Value > 0 then
                       begin

                      if (DATOS.FbqMaster_FactROTULO.Value ='FACTURACION') or (DATOS.FbqMaster_FactROTULO.Value ='COTIZACION') then
                                 BEGIN

                                edit2.Text                               := IntToStr(datos.FbqMaster_FactNO_FACT.Value);


                           if IbqClientesNUMEROPIN.Value ='MESAS' then
                             BEGIN

                              if datos.FbqMaster_FactCODIGO.Value < 1 then begin

                                   with numerocodigo do
                                    begin
                                       close;
                                       sql.Clear;
                                       sql.Add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
                                       open;
                                    end;
                                datos.FbqMaster_Fact.Edit;
                                datos.FbqMaster_FactCODIGO.Value         := NumeroCodigoGEN_ID.Value;
                                edit1.Text                               := IntToStr(datos.FbqMaster_Factcodigo.Value);

                              end;

                                datos.FbqMaster_Fact.Edit;
                                datos.fbqMaster_factsituacion.text       := 'HOLD';
                                datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
                                DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
                                datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
                                datos.FbqMaster_FactABONO.Value          := 0.00;
                                datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
                                //datos.FbqMaster_FactIDDR.Value           := 1;


                                if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
                                  begin
                                    datos.FbqMaster_Factquees.Value := 'NO';
                                  end;


                                if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
                                  begin
                                    datos.FbqMaster_Factquees.Value := 'PENDIENTE';
                                  end;


                                if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
                                  begin
                                    datos.Series.ApplyUpdates;
                                  end;

//
                                   totales;

                                DATOS.FbqMaster_Fact.ApplyUpdates;
                                DATOS.Zdetalle.ApplyUpdates;
                                datos.Series.ApplyUpdates;


                                datos.data.Commit;



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
                                                  sql.Add('where a.NO_FACT =:op1');
                                                  params[0].Value := StrToInt(edit2.Text);
                                                  open;
                                                end;
                                                    //showmessage(''+datos.FbqMaster_FactCODIGO.Text);
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

                                                with datos.Zdetalle do
                                                      begin

                                                          with SqlBuscarCocina do
                                                            begin
                                                              close;
                                                              sql.Clear;
                                                              sql.Add('select * from ENVIOCOCINA');
                                                              sql.Add('where no_orden =:orden');
                                                              params[0].Value := datos.FbqMaster_FactCodigo.Value;
                                                              open;
                                                            end;

                                                        if SqlBuscarCocina.RecordCount = 0 then begin

                                                          with SQLNumeroCocina do
                                                              begin
                                                                 close;
                                                                 sql.Clear;
                                                                 sql.Add('select gen_id(GEN_ENVIOCOCINA_ID, 1) from RDB$DATABASE');
                                                                 open;
                                                              end;

                                                              datos.SQLCocina.Open;
                                                              DATOS.SQLCocina.Append;
                                                              datos.SQLCocinaID.Value         := SQLNumeroCocinaGEN_ID.Value;
                                                              datos.SQLCocinaFECHA.Value      := Now();
                                                              datos.SQLCocinaHORA.Value       := time();
                                                              datos.SQLCocinaCLIENTE.Value    := datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value;
                                                              datos.SQLCocinaTIEMPO.Value     := 12;
                                                              datos.SQLCocinaESTADO.Value     := 1;
                                                              datos.SQLCocinaMESERO.Value     := datos.FbqMaster_FactNOMBRES_EMP.Value;
                                                              Datos.SQLCocinaNO_ORDEN.Value   := datos.FbqMaster_FactCODIGO.Value;
                                                        end;

                                                           first;

                                                            with SqlBuscarDcocina do
                                                                       begin
                                                                         close;
                                                                         sql.Clear;
                                                                         sql.Add('select * from D_ENVIOCOCINA');
                                                                         sql.Add('where no_orden =:no_orden');
                                                                         Params[0].Value := datos.FbqMaster_Factcodigo.Value;
                                                                         Open;
                                                                       end;

                                                                       if SqlBuscarDcocina.RecordCount > 0 then
                                                                           begin
                                                                              with SqlBorrarDCocina do
                                                                                begin
                                                                                  close;
                                                                                  sql.clear;
                                                                                  sql.Add('delete from D_ENVIOCOCINA where no_orden =:no_orden');
                                                                                  params[0].Value := datos.FbqMaster_Factcodigo.Value;
                                                                                  ExecSQL;
                                                                                end;



                                                                           end;



                                                            while not eof do
                                                              begin
                                                                if datos.ZdetalleBARRA.Value <>'' then
                                                                  begin
                                                                       SerieTXT := '';


                                                                      with SqlNumeroDCocina do
                                                                          begin
                                                                             close;
                                                                             sql.Clear;
                                                                             sql.Add('select gen_id(GEN_D_ENVIOCOCINA_ID, 1) from RDB$DATABASE');
                                                                             open;
                                                                          end;


                                                                       datos.SqlDCocina.Open;
                                                                       datos.SqlDCocina.Append;
                                                                       datos.SQLDCocinaID.Value         := SqlNumeroDCocinaGEN_ID.Value;
                                                                       datos.SqlDCocinaCANT.Value       := datos.ZdetalleCANTIDAD.AsInteger;
                                                                       datos.SqlDCocinaESTADO.Value     := 1;

                                                                       with SqlBIngredientes do
                                                                         begin
                                                                           close;
                                                                           sql.Clear;
                                                                           sql.Add('select * from man_series');
                                                                           sql.Add('where iddetalle =:codarti and no_fact =:numerofactura');
                                                                           params[0].Value := datos.ZdetalleNO_FACT.Value;
                                                                           params[1].Value := datos.FbqMaster_FactNO_FACT.Value;

                                                                           open;

                                                                           if RecordCount > 0 then
                                                                              begin

                                                                                SqlBIngredientes.first;

                                                                                while not eof do
                                                                                   begin

                                                                                     SerieTXT := SerieTXT +', '+SqlBIngredientesSERIES.Value;

                                                                                     next;
                                                                                   end;

                                                                              end;

                                                                         end;


                                                                       datos.SqlDCocinaPRODUCTOS.Value  := datos.ZdetalleTITULOPRN.Value;// +'  '+datos.ZdetalleBARRA.Value+'  ('+SerieTXT+') ';


                                                                  end;

                                                              Next;
                                                              end;





                                                      end;


                                T1.ClEAR;
                                //t2.Clear;
                                t3.Clear;
                                t4.Clear;



                                datos.SQLCocina.ApplyUpdates;
                                datos.SqlDCocina.ApplyUpdates;
                                datos.data.Commit;

                                 datos.ZInventario.Close;
                                DATOS.FbqMaster_Fact.Close;
                                DATOS.Zdetalle.Close;



                                 if application.MessageBox ('Desea Imprimir Ticket para Cocina....','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                           begin

                                                 with SqlBuscarCocina do
                                                   begin
                                                     close;
                                                     sql.Clear;
                                                     sql.Add('select * from ENVIOCOCINA');
                                                     sql.Add('where no_orden =:orden');
                                                     params[0].Value := StrToInt(edit1.Text);
                                                     open;
                                                   end;

                                                   with datos.SqlDCocina do
                                                     begin
                                                       close;
                                                       sql.Clear;

                                                       sql.Add('select * from D_ENVIOCOCINA');
                                                       sql.Add('where no_orden =:orden');
                                                       params[0].Value := SqlBuscarCocinaNO_ORDEN.Value;
                                                       open;
                                                     end;

                                                 PrintCocina.PrepareReport(true);
                                                 PrintCocina.ShowPreparedReport;

                                           end;


                                      //cxButton5.Enabled := true;

                                  cancelar;


                                   end;
                                 END ELSE begin
                                            MsgInformacion(' Este es un Cliente Express, Favor enviarlo a Delivery ');
                                          end;

                      END  else begin
                      MsgInformacion(' Debes Asignar Mesero');
                    end;

                end;


end;

procedure TFrmPizeria.TbMesasClick(Sender: TObject);
begin
if FrmMesas = nil then
  begin
      FrmMesas :=tFrmMesas.create(self);
  ///    FrmMesas.edit2.text := 'FACT';
FrmMesas.ibqclientes.Open;
FrmMesas.showmodal;

  end;
end;

procedure TFrmPizeria.BtClienteClick(Sender: TObject);
begin
if FrmConsultaCliente = nil then
  begin
      FrmConsultaCliente :=tFrmConsultaCliente.create(self);
      FrmConsultaCliente.edit2.text := 'FACT';
FrmConsultaCliente.ibqclientes.Open;
FrmConsultaCliente.showmodal;

  end;
end;

procedure TFrmPizeria.BTCobrarClick(Sender: TObject);
begin
if (datos.fbqmaster_factNOMBREDELDR.Value = 'Credito Fiscal') or (datos.fbqmaster_factNOMBREDELDR.Value = 'Gubernamental') then
    begin
           if (IbqClientesCEDULA.Value ='') or (IbqClientesDIRECCION.Value ='') then
              begin

                    MsgInformacion(' Este cliente no tiene las informaciones requeridas completa, favor camunicarse con el administrador');
              end else begin

                 if IbqClientesNUMEROPIN.Value ='MESAS' then
                             BEGIN
                            if datos.FbqMaster_Factcodven.Value > 0 then
                                 begin
                                      formapago.Text := 'EFECTIVO';
                                      pago;
                                 end else
                                     begin
                                        MsgInformacion(' Debes Asignar Mesero');
                                     end;
                             END else begin
                                        formapago.Text := 'EFECTIVO';
                                        pago;
                                      end;

              end;
end else begin

    if IbqClientesNUMEROPIN.Value ='MESAS' then
                             BEGIN
                            if datos.FbqMaster_Factcodven.Value > 0 then
                                 begin
                                      formapago.Text := 'EFECTIVO';
                                      pago;
                                 end else
                                     begin
                                        MsgInformacion(' Debes Asignar Mesero');
                                     end;
                             END else begin
                                        formapago.Text := 'EFECTIVO';
                                        pago;
                                      end;
end;
end;

procedure TFrmPizeria.BtFacturaImpresasClick(Sender: TObject);
begin
if FrmFacturasImpresas = nil then
   begin
     FrmFacturasImpresas := tFrmFacturasImpresas.Create(self);

     with FrmFacturasImpresas.facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
       sql.Add('and a.fecha_fac >=:fechas');

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';

        if FrmFacturasImpresas.OpCuando.ItemIndex = 0 then
           begin
                params[3].Value := now();
           end else begin
                      params[3].Value := now()-1;
                    end;
        open;
    end;

     FrmFacturasImpresas.ShowModal;
   end;

end;

procedure TFrmPizeria.BtIngredientesClick(Sender: TObject);
begin
if FrmIngredientes = nil then
  begin
     FrmIngredientes := TFrmIngredientes.Create(self);

     with FrmIngredientes.IbqRArticulos do
          begin
            close;
            sql.clear;
            sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
            SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
            sql.add('from mtartuculos a');
            sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
            sql.add('where a.marca =:marca');
            sql.Add('and b.cat =:categoria');
            sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
            SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
            params[0].Value := datos.ZdetalleBARRA.Value;
            params[1].Value := 'INGREDIENTES';
            OPEN;
          end;

     FrmIngredientes.QClasificaciones.Open;
     FrmIngredientes.ShowModal;
  end;
end;

procedure TFrmPizeria.BTMEseroClick(Sender: TObject);
begin
if FrmServicioInstalador = nil then
  begin
       FrmServicioInstalador := tFrmServicioInstalador.create(self);
       FrmServicioInstalador.Edit1.Text := '';
       FrmServicioInstalador.showmodal;
  end;
end;

procedure TFrmPizeria.BtnDGIIClick(Sender: TObject);
begin
if frmDGII = nil then
  begin
    frmDGII := tfrmDGII.Create(self);
    frmDGII.ShowModal;
  end;
end;

procedure TFrmPizeria.BtNuevoClick(Sender: TObject);
var
cero : string;
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin

with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.add('where a.marca =:marca');
    sql.Add('and b.cat =:categoria');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := 'Personal';
    params[1].Value := 'PIZZAS';
    OPEN;
  end;

//opmaster.Enabled := true;

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;

                              with numerocodigo do
                                    begin
                                       close;
                                       sql.Clear;
                                       sql.Add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
                                       open;
                                    end;




cxPageControl1.ActivePageIndex :=0;

datos.FbqMaster_Fact.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := numerogen_id.Value;
 datos.FbqMaster_FactCODIGO.Value  := NumeroCodigoGEN_ID.Value;
 datos.FbqMaster_FactNC.Value := 1;
 datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;

 edit3.Text := IntToStr(numerogen_id.Value);
  edit1.Text := IntToStr(NumeroCodigoGEN_ID.Value);
    if datos.FbqMaster_FactNO_FACT.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.FbqMaster_FactNO_FACT.Value >= 1000 then
        begin
           cero := '';
     end;

     datos.FbqMaster_FactNO_FACT1.Value := cero+intTostr(datos.FbqMaster_FactNO_FACT.Value);

      with ibqclientes do
        begin
          close;
          sql.Clear;
          sql.Add('select a.* from cliente a');
           sql.Add('where a.codigo = 1');
          open;
        end;


        datos.FbqMaster_FactCLIENTEID.Value         := ibqclientescodigo.Value;
        datos.FbqMaster_FactCLIENTENOMBRE.Value     := ibqclientesnombres.Value;
        datos.FbqMaster_FactCONDICIONVENTA.Value    := ibqclientescondicion.Value;
        datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
        datos.FbqMaster_FactCAJAID.Value            := datos.ZUconfiguracionCAJAID.Value;
        Datos.FbqMaster_FactTIPO.Value              := 'Contado';

     with zqusuario do
       begin
         close;
         sql.Clear;
         sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
         sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
         sql.Add('where a.usuarioId =:pp');
         params[0].Value := asignausuario;
         opeN;
       end;


       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Ninguno' then
       begin
          cxDBComboBox2.ItemIndex := 0;
       end;

     if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Cons. Final' then
       begin
          cxDBComboBox2.ItemIndex := 1;
       end;

       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Fiscal' then
       begin
          cxDBComboBox2.ItemIndex := 2;
       end;

       if datos.ZUconfiguracionCOMPROBANTEDEFAULT.Value ='Gubernamental' then
       begin
          cxDBComboBox2.ItemIndex := 3;
       end;




     datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;

      with datos.Zdetalle do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.articulo, c.unidad, b.itbis,b.taza_compra  from detailfact a');
          sql.Add('left join mtartuculos b On a.cod_art = b.codigotxt');
          Sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
          sql.Add('where a.no_fact =  0');
          open;
       end;

       with SQLCategoria do
         begin
           close;
           sql.Clear;
           sql.Add('select * from MTCATEGORIA where opcion = ''SI''');
           open;
         end;


QClasificaciones.Open;
IbqRArticulos.Open;

DBLClasificacion.ItemIndex := 0;

BTEnviarHold.Enabled := true;
Tbmesas.Enabled := true;
BTFactHold.Enabled := false;


nuevo;

end;

procedure TFrmPizeria.BtDeliveryClick(Sender: TObject);
var
serieTXT : string;
begin
  if total.Value = 0.00 then
              begin
                Showmessage('Este no orden no está completa');
              end else begin
            if (DATOS.FbqMaster_FactROTULO.Value ='FACTURACION') or (DATOS.FbqMaster_FactROTULO.Value ='COTIZACION') then
                       BEGIN
                     edit2.Text                               := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
                 if IbqClientesNUMEROPIN.Value <>'MESAS' then
                   begin

                      if datos.FbqMaster_FactCODIGO.Value < 1 then begin

                                   with numerocodigo do
                                    begin
                                       close;
                                       sql.Clear;
                                       sql.Add('select gen_id(GEN_MASTER_FACT_CODIGO, 1) from RDB$DATABASE');
                                       open;
                                    end;
                                datos.FbqMaster_Fact.Edit;
                                datos.FbqMaster_FactCODIGO.Value         := NumeroCodigoGEN_ID.Value;
                                edit1.Text                               := IntToStr(datos.FbqMaster_Factcodigo.Value);

                              end;

                                datos.FbqMaster_Fact.Edit;
                                datos.fbqMaster_factsituacion.text       := 'DELIVERY';
                                datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
                                DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
                                datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
                                datos.FbqMaster_FactABONO.Value          := 0.00;
                                datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
                                //datos.FbqMaster_FactIDDR.Value           := 1;
                                statushold := '';

                                if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
                                  begin
                                    datos.FbqMaster_Factquees.Value := 'NO';
                                  end;


                                if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
                                  begin
                                    datos.FbqMaster_Factquees.Value := 'PENDIENTE';
                                  end;


                                if datos.ZUconfiguracionINSERTARSERIAL.Value = 1 then
                                  begin
                                    datos.Series.ApplyUpdates;
                                  end;

                                DATOS.FbqMaster_Fact.ApplyUpdates;
                                DATOS.Zdetalle.ApplyUpdates;
                                datos.Series.ApplyUpdates;


                                datos.data.Commit;



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
                                                  sql.Add('where a.codigo =:op1');
                                                  params[0].Value := StrToInt(edit1.Text);
                                                  open;
                                                end;


                                                   // showmessage(''+datos.FbqMaster_FactCODIGO.Text);
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

                                                with datos.Zdetalle do
                                                      begin

                                                          with SqlBuscarCocina do
                                                            begin
                                                              close;
                                                              sql.Clear;
                                                              sql.Add('select * from ENVIOCOCINA');
                                                              sql.Add('where no_orden =:orden');
                                                              params[0].Value := datos.FbqMaster_FactCodigo.Value;
                                                              open;
                                                            end;

                                                        if SqlBuscarCocina.RecordCount = 0 then begin

                                                          with SQLNumeroCocina do
                                                              begin
                                                                 close;
                                                                 sql.Clear;
                                                                 sql.Add('select gen_id(GEN_ENVIOCOCINA_ID, 1) from RDB$DATABASE');
                                                                 open;
                                                              end;

                                                              datos.SQLCocina.Open;
                                                              DATOS.SQLCocina.Append;
                                                              datos.SQLCocinaID.Value         := SQLNumeroCocinaGEN_ID.Value;
                                                              datos.SQLCocinaFECHA.Value      := Now();
                                                              datos.SQLCocinaHORA.Value       := time();
                                                              datos.SQLCocinaCLIENTE.Value    := datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value;
                                                              datos.SQLCocinaTIEMPO.Value     := 12;
                                                              datos.SQLCocinaESTADO.Value     := 1;
                                                              datos.SQLCocinaMESERO.Value     := datos.FbqMaster_FactNOMBRES_EMP.Value;
                                                              Datos.SQLCocinaNO_ORDEN.Value   := datos.FbqMaster_FactCODIGO.Value;
                                                        end;
                                                             first;

                                                            with SqlBuscarDcocina do
                                                                       begin
                                                                         close;
                                                                         sql.Clear;
                                                                         sql.Add('select * from D_ENVIOCOCINA');
                                                                         sql.Add('where no_orden =:no_orden');
                                                                         Params[0].Value := datos.FbqMaster_Factcodigo.Value;
                                                                         Open;
                                                                       end;

                                                                       if SqlBuscarDcocina.RecordCount > 0 then
                                                                           begin
                                                                              with SqlBorrarDCocina do
                                                                                begin
                                                                                  close;
                                                                                  sql.clear;
                                                                                  sql.Add('delete from D_ENVIOCOCINA where no_orden =:no_orden');
                                                                                  params[0].Value := datos.FbqMaster_Factcodigo.Value;
                                                                                  ExecSQL;
                                                                                end;



                                                                           end;



                                                            while not eof do
                                                              begin
                                                                if datos.ZdetalleBARRA.Value <>'' then
                                                                  begin
                                                                       SerieTXT := '';


                                                                      with SqlNumeroDCocina do
                                                                          begin
                                                                             close;
                                                                             sql.Clear;
                                                                             sql.Add('select gen_id(GEN_D_ENVIOCOCINA_ID, 1) from RDB$DATABASE');
                                                                             open;
                                                                          end;


                                                                       datos.SqlDCocina.Open;
                                                                       datos.SqlDCocina.Append;
                                                                       datos.SQLDCocinaID.Value         := SqlNumeroDCocinaGEN_ID.Value;
                                                                       datos.SqlDCocinaCANT.Value       := datos.ZdetalleCANTIDAD.AsInteger;
                                                                       datos.SqlDCocinaESTADO.Value     := 1;

                                                                       with SqlBIngredientes do
                                                                         begin
                                                                           close;
                                                                           sql.Clear;
                                                                           sql.Add('select * from man_series');
                                                                           sql.Add('where iddetalle =:codarti and no_fact =:numerofactura');
                                                                           params[0].Value := datos.ZdetalleNO_FACT.Value;
                                                                           params[1].Value := datos.FbqMaster_FactNO_FACT.Value;

                                                                           open;

                                                                           if RecordCount > 0 then
                                                                              begin

                                                                                SqlBIngredientes.first;

                                                                                while not eof do
                                                                                   begin

                                                                                     SerieTXT := SerieTXT +', '+SqlBIngredientesSERIES.Value;

                                                                                     next;
                                                                                   end;

                                                                              end;

                                                                         end;


                                                                       datos.SqlDCocinaPRODUCTOS.Value  := datos.ZdetalleTITULOPRN.Value +'  '+datos.ZdetalleBARRA.Value+'  ('+SerieTXT+') ';


                                                                  end;

                                                              Next;
                                                              end;





                                                      end;


                                T1.ClEAR;
                                //t2.Clear;
                                t3.Clear;
                                t4.Clear;



                                datos.SQLCocina.ApplyUpdates;
                                datos.SqlDCocina.ApplyUpdates;
                                datos.data.Commit;

                                 datos.ZInventario.Close;
                                DATOS.FbqMaster_Fact.Close;
                                DATOS.Zdetalle.Close;



                                 if application.MessageBox ('Desea Imprimir Ticket para Cocina....','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                           begin

                                                 with SqlBuscarCocina do
                                                   begin
                                                     close;
                                                     sql.Clear;
                                                     sql.Add('select * from ENVIOCOCINA');
                                                     sql.Add('where no_orden =:orden');
                                                     params[0].Value := StrToInt(edit1.Text);
                                                     open;
                                                   end;

                                                   with datos.SqlDCocina do
                                                     begin
                                                       close;
                                                       sql.Clear;
                                                       sql.Add('select * from D_ENVIOCOCINA');
                                                       sql.Add('where no_orden =:orden');
                                                       params[0].Value := SqlBuscarCocinaNO_ORDEN.Value;
                                                       open;
                                                     end;

                                                 PrintCocina.PrepareReport(true);
                                                 PrintCocina.print;

                                           end;


                                      //cxButton5.Enabled := true;

                                  cancelar;


                                   end;

                       END else begin
                                  MsgInformacion(' Este es una MESA, debes enviarlo a Hold ')
                                end;
            END;
end;

procedure TFrmPizeria.BTFactHoldClick(Sender: TObject);
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

if FrmHold = nil then
  begin
       FrmHold := tFrmHold.create(self);
       frmhold.HOLD.Close;
       frmhold.HOLD.open;
       FrmHold.showmodal;
  end;

end;

procedure TFrmPizeria.Cancelar;
begin
    TbMesas.Enabled               := false;
    BtCliente.Enabled             := false;
    BtUnirCuenta.Enabled          := false;
    BTordenDelibery.Enabled       := true;
    BTFactHold.Enabled            := true;
    DBLClasificacion.Enabled      := false;
    op1.Enabled                   := true;
    BtNuevo.Enabled               := true;
    BTEnviarHold.Enabled          := false;
    BtDelivery.Enabled            := false;
    BtEliminarArticulo.Enabled    := False;
    BtIngredientes.Enabled        := false;
    BTCobrar.Enabled              := false;
    BTBuscar.Enabled              := false;
    Btarriba.Enabled              := false;
    BtAbajo.Enabled               := false;
    BTCanelar.Enabled             := false;
    BTMEsero.Enabled              := false;
    BtnDGII.Enabled               := false;
    BtFacturaImpresas.Enabled     := true;
   // BTPreFactura.Enabled          := false;


    IbqRArticulos.Close;
    SQLCategoria.Close;
    IbqClientes.Close;
    datos.FbqMaster_Fact.Close;
    datos.Zdetalle.Close;




end;

procedure TFrmPizeria.Click(Sender: TObject);
begin
if SQLCategoria.active = True then
   begin
       SQLCategoria.Prior;
   end;
end;

procedure TFrmPizeria.cobrando;
begin
if total.Value = 0.00 then
  begin
    Showmessage('Este Conduce no Esta Completa');
  end else begin
if asignaTurno = 0 then
  begin
      Showmessage(' ** No Hay Turno Abierto Disponible **');
  end else begin
if (DATOS.FbqMaster_FactROTULO.Value ='FACTURACION') or (DATOS.FbqMaster_FactROTULO.Value ='COTIZACION') then
 BEGIN



datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text       := 'ENVIADA';
datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';

datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
datos.FbqMaster_FactABONO.Value          := 0.00;
datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;

if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
  begin
    datos.FbqMaster_Factquees.Value := 'NO';
  end;


if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
  begin
    datos.FbqMaster_Factquees.Value := 'PENDIENTE';
  end;


   totales;

//datos.ZInventario.ApplyUpdates;
DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;
datos.data.Commit;

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
    params[0].Value := StrToInt(edit3.Text);
    open;
  end;


with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
   sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;



 with datos.Series do
                 begin
                   close;
             //      params[0].Value := datos.ZdetalleARTICULOID.Value;
              //     params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
                   open;
                 end;

T1.ClEAR;
//t2.Clear;
t3.Clear;
t4.Clear;


  if FrmCobro = nil  then
     begin
       FrmCobro :=tFrmCobro.create(self);
        if FormaPago.Text = 'EFECTIVO' then
         begin
           FrmCobro.Edit6.Text := 'EFECTIVO'
         end;

       if FormaPago.Text = 'TARJETA' then
         begin
           FrmCobro.Edit6.Text := 'TARJETA'
         end;

        if FormaPago.Text = 'MIXTO' then
         begin
           FrmCobro.Edit6.Text := 'MIXTO'
         end;

        if FormaPago.Text = 'CREDITO' then
         begin
           FrmCobro.Edit6.Text := 'CREDITO'
         end;

        if FormaPago.Text = 'CHEQUE' then
         begin
           FrmCobro.Edit6.Text := 'CHEQUE'
         end;

       FrmCobro.showmodal;
     end;


// datos.ZInventario.Close;

//frmConsultaFact.facturasEmitidas.Refresh;
//showmessage('');


  end;
end;




end;
end;

procedure TFrmPizeria.cxButton5Click(Sender: TObject);
begin

with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.Add('where b.cat =:categoria');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := 'BEBIDAS';
    OPEN;
  end;


end;

procedure TFrmPizeria.cxButton6Click(Sender: TObject);
begin

with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.add('where a.marca =:marca');
    sql.Add('and b.cat =:categoria');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := 'Personal';
    params[1].Value := 'PIZZAS';
    OPEN;
  end;

  cxPageControl1.ActivePageIndex :=0;
end;

procedure TFrmPizeria.BTBuscarClick(Sender: TObject);
var
itbs : Currency;
suma : Currency;
descc : Currency;
begin
if FrmFinder = nil then
  begin
    FrmFinder := tFrmFinder.create(self);
    FrmFinder.Edit2.Text := DBLClasificacion.Text;
    FrmFinder.showmodal;
  end;

end;

procedure TFrmPizeria.BtAbajoClick(Sender: TObject);
begin
IbqRArticulos.next;
end;

procedure TFrmPizeria.cxButton9Click(Sender: TObject);
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin


if ibqrarticulospolitica.Value <> 'fraccional' then
   begin


        nofraccional;


   end;

if ibqrarticulospolitica.Value = 'fraccional' then
    begin


        nofraccional;

    end;


  //*****



end;

procedure TFrmPizeria.cxDBImage1Click(Sender: TObject);
begin
addpizza;
end;

procedure TFrmPizeria.cxDBImage2Click(Sender: TObject);
begin
addpizza;
end;

procedure TFrmPizeria.cxDBImage4Click(Sender: TObject);
begin
addcat;
end;

procedure TFrmPizeria.cxDBLabel10Click(Sender: TObject);
begin
addpizza;
end;

procedure TFrmPizeria.cxDBLabel4Click(Sender: TObject);
begin
addpizza;
end;

procedure TFrmPizeria.cxDBLabel5Click(Sender: TObject);
begin
      addcat;
end;

procedure TFrmPizeria.cxDBLabel9Click(Sender: TObject);
begin
addpizza;
end;

procedure TFrmPizeria.cxGrid1DBTableView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin

if FrmFraccionPiza = NIL then
   begin
      FrmFraccionPiza := tFrmFraccionPiza.Create(self);
        with FrmFraccionPiza.IbqRArticulos do
          begin
            close;
            sql.clear;
            sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
            SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
            sql.add('from mtartuculos a');
            sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
            sql.add('where a.marca =:marca');
            sql.Add('and b.cat =:categoria');
            sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
            SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
            params[0].Value := datos.ZdetalleBARRA.Value;
            params[1].Value := 'PIZZAS';
            OPEN;
          end;
      FrmFraccionPiza.Edit2.Text := datos.ZdetalleBARRA.Text;
      FrmFraccionPiza.ShowModal;
   end;

end;

procedure TFrmPizeria.cxGrid1DBTableView1Column3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  x,y: Integer;
  Rect : TRect;
begin
//  Rect := AViewInfo.Bounds;
//  ACanvas.FillRect(Rect,clWhite);
//  SetBkMode(ACanvas.Handle, TRANSPARENT);
//  x := Rect.Left + ((Rect.Right - Rect.Left) div 2) - (Image1.Picture.Width div 2);
//  y := Rect.Top + ((Rect.Bottom - Rect.Top) div 2) - (Image1.Picture.Height div 2);
//  ACanvas.Draw(x,y,Image1.Picture.Graphic);
//  ADone := true;

end;

procedure TFrmPizeria.cxGrid1DBTableView1Column3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
if FrmGetIngredientes = nil then
  begin

    FrmGetIngredientes := TFrmGetIngredientes.Create(self);
    FrmGetIngredientes.ShowModal;
  end;
end;

procedure TFrmPizeria.cxGrid1DBTableView1Column4PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
  suma, itbs, descc : Currency;
begin
if AButtonIndex = 0 then
  begin

    datos.Zdetalle.Edit;


                  datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value + 1;
    if IbqRArticulosITBIS.Value = 'Si'  then
               begin


                // datos.ZdetallePRECIO.Value   := t4.Value / 1.18;
                 datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value     := (datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100)) * datos.ZdetalleCANTIDAD.Value;
                 datos.Zdetalleley.Value      := (datos.ZdetallePRECIO.Value * 0.10);

                 datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);


                totales;
           end;




           if IbqRArticulosITBIS.Value = 'No'  then begin

                 datos.ZdetalleITBiS.Value     := 'No';
                 datos.ZdetalleITBS_ART.Value  := 'N';
                 datos.ZdetalleEX.Value        := 'E';

                   if ibqclientescomision.Value >0  then
                    begin

               //  comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
                 datos.ZdetallePRECIO.Value := ((ibqrArticuloscosto_pr.Value * ((ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100))/100))) + ibqrArticuloscosto_pr.Value;
                    end else begin

                   //   datos.ZdetallePRECIO.Value   := t4.Value;

                    end;

              //   datos.ZdetalleIDTECNICO.Value := tecnico;
                 datos.ZdetalleIMPUESTO.Value  := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value      := 0.00;
                 datos.ZdetalleTOTAL.Value     := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value ;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);
               ///    datos.Zdetalleley.Value   := (datos.ZdetallePRECIO.Value * 0.10);

                totales;

        end;

  end;

  if AButtonIndex = 1 then
     begin

          datos.Zdetalle.Edit;
                if datos.ZdetalleCANTIDAD.Value  > 1then begin

                  datos.ZdetalleCANTIDAD.Value := datos.ZdetalleCANTIDAD.Value - 1;
                end;
if IbqRArticulosITBIS.Value = 'Si'  then
               begin




              //   datos.ZdetallePRECIO.Value   := t4.Value / 1.18;
                 datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value     := (datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100)) * datos.ZdetalleCANTIDAD.Value;
                 datos.Zdetalleley.Value      := (datos.ZdetallePRECIO.Value * 0.10);

                 datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);


                 datos.zdetalle.First;

                    while not datos.zdetalle.Eof do
                     begin
                        suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                       //  descc := (descc + datos.zdetalle.FieldByName('ley').Value);
                        datos.zdetalle.Edit;
                        datos.zdetalletotal.Value   := datos.zdetalletotal.Value;
                        datos.ZdetalleITBS.Value    := datos.ZdetalleITBS.Value;
                        datos.ZdetalleANCHO.Value   := datos.zdetalleancho.Value;
                       /// datos.ZdetalleITBIS2.Value  := datos.ZdetalleITBIS2.Value;

                     datos.zdetalle.Next;

               end;


            datos.FbqMaster_Fact.Edit;
            datos.FbqMaster_Factdescuento.Value := (suma - itbs) * 0.10;
            datos.FbqMaster_FactPOGXITBS.Value := itbs;

               datos.FbqMaster_FactMONTO.Value := suma - itbs;


              // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs ;
                //  end else begin
                  //    datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
               //   end;

           end;




           if IbqRArticulosITBIS.Value = 'No'  then begin

                 datos.ZdetalleITBiS.Value     := 'No';
                 datos.ZdetalleITBS_ART.Value  := 'N';
                 datos.ZdetalleEX.Value        := 'E';

                   if ibqclientescomision.Value >0  then
                    begin

               //  comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
                 datos.ZdetallePRECIO.Value := ((ibqrArticuloscosto_pr.Value * ((ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100))/100))) + ibqrArticuloscosto_pr.Value;
                    end else begin

                //      datos.ZdetallePRECIO.Value   := t4.Value;

                    end;

              //   datos.ZdetalleIDTECNICO.Value := tecnico;
                 datos.ZdetalleIMPUESTO.Value  := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value      := 0.00;
                 datos.ZdetalleTOTAL.Value     := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value ;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);
               ///    datos.Zdetalleley.Value   := (datos.ZdetallePRECIO.Value * 0.10);


                 totales;

        end;

     end;

end;

procedure TFrmPizeria.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  NADA : string;
  LEN : Integer;
  val, ValEstado, IsNulo, dias, SAN, ALQUILER,  COMPRAVENTA: Boolean;
begin

//   		ARec := AViewInfo.Bounds;
//
//         ValEstado := AViewInfo.GridRecord.Values[6] = 'Personal';
//         if  ValEstado then
//         	begin
//      	 	//	ACanvas.Canvas.Font.Style := [fsBold];
//       			ACanvas.Canvas.Font.Color := clblack;
//              end;
//
//          ValEstado := AViewInfo.GridRecord.Values[6] = 'Mediana';
//          if  ValEstado then
//         	begin
//      	 //		ACanvas.Canvas.Font.Style := [fsBold];
//       			ACanvas.Canvas.Font.Color := clNavy;
//              end;
//
//
//           ValEstado := AViewInfo.GridRecord.Values[6] = 'Grande';
//          if  ValEstado then
//         	begin
//      	 //		ACanvas.Canvas.Font.Style := [fsBold];
//       			ACanvas.Canvas.Font.Color := clMaroon;
//              end;
//
//              ValEstado := AViewInfo.GridRecord.Values[6] = 'Super Grande';
//          if  ValEstado then
//         	begin
//      	 //		ACanvas.Canvas.Font.Style := [fsBold];
//       			ACanvas.Canvas.Font.Color := clGreen;
//              end;




end;

procedure TFrmPizeria.cxGrid1DBTableView2Column2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  x,y: Integer;
  Rect : TRect;
begin
  Rect := AViewInfo.Bounds;
  ACanvas.FillRect(Rect,clWhite);
  SetBkMode(ACanvas.Handle, TRANSPARENT);
  x := Rect.Left + ((Rect.Right - Rect.Left) div 2) - (Image1.Picture.Width div 2);
  y := Rect.Top + ((Rect.Bottom - Rect.Top) div 2) - (Image1.Picture.Height div 2);
  ACanvas.Draw(x,y,Image1.Picture.Graphic);
  ADone := true;

end;

procedure TFrmPizeria.cxGrid1DBTableView2Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
  cValue : string;
begin


end;

procedure TFrmPizeria.cxGrid1DBTableView2Column3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 x,y: Integer;
  Rect : TRect;
begin
  Rect := AViewInfo.Bounds;
  ACanvas.FillRect(Rect,clWhite);
  SetBkMode(ACanvas.Handle, TRANSPARENT);
  x := Rect.Left + ((Rect.Right - Rect.Left) div 2) - (Image1.Picture.Width div 2);
  y := Rect.Top + ((Rect.Bottom - Rect.Top) div 2) - (Image1.Picture.Height div 2);
  ACanvas.Draw(x,y,Image1.Picture.Graphic);
  ADone := true;

end;

procedure TFrmPizeria.DBCtrlGrid1Click(Sender: TObject);
begin
addcat;
end;

procedure TFrmPizeria.DbCtrlGrid_PizzaClick(Sender: TObject);
begin
addpizza;
end;

procedure TFrmPizeria.DBLClasificacionPropertiesChange(Sender: TObject);
begin

with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.add('where a.marca =:marca');
    sql.Add('and b.cat =:categoria');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := DBLClasificacion.Text;
    params[1].Value := 'PIZZAS';
    OPEN;
  end;
end;

procedure TFrmPizeria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       FrmPizeria := nil;
       Action := caFree;

        FrmHome.pnl_Menu_Lateral.Visible := TRUE;
  FrmHome.pnlTop.Visible := TRUE;
  FrmHome.btnsalir.Enabled := TRUE;
  FrmHome.s1.Enabled := true;
  FrmHome.spSalir.Enabled := true;

  datos.FbqMaster_Fact.Close;
  datos.zdetalle.Close;

end;

procedure TFrmPizeria.FormCreate(Sender: TObject);
const
Enable: Array[Boolean] of Byte = (ESB_ENABLE_BOTH, ESB_DISABLE_BOTH);
begin
EnableScrollBar(DBCtrlGrid1.Handle,SB_VERT,Enable[Abs(VertScrollBar.Range - Height) < 3]);
ShowScrollbar(DBCtrlGrid1.Handle, SB_BOTH, false);
end;

procedure TFrmPizeria.Image3Click(Sender: TObject);
begin
addpizza;
end;

procedure TFrmPizeria.Image4Click(Sender: TObject);
begin


if FrmFinder = nil then
  begin
    FrmFinder := tFrmFinder.create(self);
    FrmFinder.Edit2.Text := DBLClasificacion.Text;
    FrmFinder.Edit3.Text :=IbqRArticulosCAT.Text;
    FrmFinder.showmodal;
  end;

end;
procedure TFrmPizeria.totales;
var
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
descc : Currency;
comision: double;
begin
    datos.zdetalle.First;

                    while not datos.zdetalle.Eof do
                     begin
                        suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        //descc := (descc + datos.zdetalle.FieldByName('ley').Value);
                        datos.zdetalle.Edit;
                        datos.zdetalletotal.Value   := datos.zdetalletotal.Value;
                        datos.ZdetalleITBS.Value    := datos.ZdetalleITBS.Value;
                        datos.ZdetalleANCHO.Value   := datos.zdetalleancho.Value;
                       /// datos.ZdetalleITBIS2.Value  := datos.ZdetalleITBIS2.Value;

                     datos.zdetalle.Next;

               end;


            datos.FbqMaster_Fact.Edit;

            datos.FbqMaster_FactPOGXITBS.Value := itbs;
            datos.FbqMaster_FactMONTO.Value := suma - itbs;

            if IbqClientesNUMEROPIN.Value = 'MESAS' then
              begin
                    if SHPropina.IsOn = TRUE then
                      begin

                      datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.10;
                      end else begin
                          datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.00;
                      end;

                  datos.FbqMaster_FactMONTOPAGO.Value := Round(datos.FbqMaster_FactMONTO.Value + itbs + datos.FbqMaster_Factleypropina.Value);
              end;

              IF IbqClientesNUMEROPIN.Value = 'NORMAL' THEN
                  begin

                       if SHPropina.IsOn = TRUE then
                           begin
                               datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.10;
                               datos.FbqMaster_FactMONTOPAGO.Value := Round(datos.FbqMaster_FactMONTO.Value + itbs);
                           end else begin
                               datos.FbqMaster_Factleypropina.Value := 0.00;
                               datos.FbqMaster_FactMONTOPAGO.Value := Round(datos.FbqMaster_FactMONTO.Value + itbs);
                           end;

                  end;

                if IbqClientesNUMEROPIN.Value = 'NCF' then
              begin
                   if SHPropina.IsOn = TRUE then
                      begin

                      datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.10;
                      end else begin
                          datos.FbqMaster_Factleypropina.Value := (suma - itbs) * 0.00;
                      end;


                  datos.FbqMaster_FactMONTOPAGO.Value := Round(datos.FbqMaster_FactMONTO.Value + itbs + datos.FbqMaster_Factleypropina.Value);
              end;


end;
procedure TFrmPizeria.nofraccional;
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
descc : Currency;
comision: double;
begin



 try
 with numero_detallegen do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
     open;
  end;


datos.Zdetalle.append;
datos.ZdetalleNO_FACT.Value := numero_detallegengen_id.Value;


datos.ZdetalleCANTIDAD.Value := 1.00;//Redondear_A((StrToFloat(t3.Text) / t4.Value),2);


    datos.ZdetalleTITULOPRN.Value := IbqRArticulosARTICULO.Value +' ('+IbqRArticulosMARCA.Value+')' ;
    datos.ZdetalleARTICULO.Value  := IbqRArticulosARTICULO.Value;
    datos.ZdetalleBARRA.Value     := IbqRArticulosMARCA.Value;
    datos.ZdetalleNO_FACT1.Value  := 'NORMAL';

   // datos.ZdetalleNO_FACT1.Value  := NCnumero.text;
      datos.Zdetallecod_art.Value := IntToStr(IbqRArticulosCOD_ART.Value);
      datos.ZdetalleARTICULOID.value :=IbqRArticulosCOD_ART.Value;

      ///////  *****************************   Inicio Politica UNITARIO *********************************
//
    if ibqrarticulospolitica.Value = 'Unitario' then begin
//


 if IbqRArticulosITBIS.Value = 'Si'  then
               begin

                      datos.ZdetalleITBiS.Value := 'Si';
                      datos.ZdetalleITBS_ART.Value := 'S';
                      datos.ZdetalleEX.Value := '';



                 datos.ZdetallePRECIO.Value   := t4.Value / 1.18;
                 datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value     := (datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100));
                 datos.Zdetalleley.Value      := (datos.ZdetallePRECIO.Value * 0.10);

                 datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);


               totales;


              // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin

                //  end else begin
                  //    datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
               //   end;

           end;




           if IbqRArticulosITBIS.Value = 'No'  then begin

                 datos.ZdetalleITBiS.Value     := 'No';
                 datos.ZdetalleITBS_ART.Value  := 'N';
                 datos.ZdetalleEX.Value        := 'E';

                   datos.ZdetallePRECIO.Value   := t4.Value;
                 datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value     := 0.00;
                 datos.Zdetalleley.Value      := datos.ZdetallePRECIO.Value;

                 datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);


                 datos.zdetalle.First;

                    while not datos.zdetalle.Eof do
                     begin
                        suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        //descc := (descc + datos.zdetalle.FieldByName('ley').Value);
                        datos.zdetalle.Edit;
                        datos.zdetalletotal.Value   := datos.zdetalletotal.Value;
                        datos.ZdetalleITBS.Value    := datos.ZdetalleITBS.Value;
                        datos.ZdetalleANCHO.Value   := datos.zdetalleancho.Value;
                       /// datos.ZdetalleITBIS2.Value  := datos.ZdetalleITBIS2.Value;

                     datos.zdetalle.Next;

               end;


            datos.FbqMaster_Fact.Edit;
            datos.FbqMaster_Factdescuento.Value := (suma - itbs) * 0.10;
            datos.FbqMaster_FactPOGXITBS.Value := itbs;
            datos.FbqMaster_FactMONTO.Value := suma - itbs;

           datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs ;

        end;







      end;
   ///////  *****************************   Fin Politica UNITARIO *********************************






except




end;





end;




procedure TFrmPizeria.nuevo;
begin

    TbMesas.Enabled               := true;
    BtCliente.Enabled             := true;
    BtUnirCuenta.Enabled          := true;
    BTordenDelibery.Enabled       := false;
    BTFactHold.Enabled            := false;
    DBLClasificacion.Enabled      := true;
    op1.Enabled                   := true;
    BtNuevo.Enabled               := false;
    BTEnviarHold.Enabled          := true;
    BtDelivery.Enabled            := true;
    BtEliminarArticulo.Enabled    := true;
    BtIngredientes.Enabled        := true;
    BTCobrar.Enabled              := true;
    BTBuscar.Enabled              := true;
    Btarriba.Enabled              := true;
    BtAbajo.Enabled               := true;
    BTCanelar.Enabled             := true;
    BTMEsero.Enabled              := true;
    BtnDGII.Enabled               := true;
    BtFacturaImpresas.Enabled     := false;
   // BTPreFactura.Enabled          := true;
    statushold := '';

end;

procedure TFrmPizeria.pago;
begin
 if (IbqClientesCODIGO.Value = 1) and (datos.fbqmaster_factTipo.Value ='CREDITO') then
  begin
      Showmessage(' Cliente no esta Autorizado para el Crédito ');
  end else begin

  if datos.FbqMaster_FactTIPO.Value ='CREDITO' then
    begin

      with QBalanceCreditoCliente do
        begin
          close;
          sql.Clear;
          sql.Add('select balance from cliente');
          sql.Add('where codigo =:opp');
          params[0].Value := IbqClientesCODIGO.Value;
          open;
        end;

      if datos.FbqMaster_FactMONTOPAGO.Value <= QBalanceCreditoClienteBALANCE.Value then
        begin
           cobrando;
         //  panel7.Enabled := false;
          //  PanelLTOP.Enabled := false;
        end else begin
                    Showmessage(' El monto de esta factura aumenta el Limete de credito asignado ');
                 end;
    end;

   if  datos.FbqMaster_FactTIPO.Value ='Contado' then
    begin

        cobrando;
       // panel7.Enabled := false;
       // PanelLTOP.Enabled := false;
    end;
end;
end;

procedure TFrmPizeria.Printcopia;
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

//      WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
 //     WriteRawDataToPrinter(DM.DsConfi.DataSet.FieldByName('IMPRESORATICKET').Value,DM.DsConfi.DataSet.FieldByName('RETROCEDER').Value);
   //   WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXGRANDE').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('EMPRESA').Value,StrToInt(longitud)));
     WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,FONTNORMAL);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('DIRECCION').Value,StrToInt(longitud)));
 //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,DM.DsConfi.DataSet.FieldByName('TEXCOMPRIMIDO').Value);
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('TEL. :'+DATOS.ZUconfiguracion.FieldByName('TELEFONO').Value+'/  RNC:'+DATOS.ZUconfiguracion.FieldByName('RNC').Value,StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString('PEDIDO A COCINA',StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace(DATOS.FbqMaster_Fact.FieldByName('NCF_NOMBRE').asstring),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('NCF:'+DATOS.FBQMASTER_FACT.FieldByName('NCF').AsString),StrToInt(longitud)));
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('VENTA DE CONTADO'),StrToInt(longitud)));

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
      if StrToInt(longitud) > 42 then
        begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'             '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
        end else  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('FECHA : '+DATETOSTR(FECHAFA)+'    '+'HORA: '+TIMETOSTR(HORAFA)),StrToInt(longitud),0));
        end;

      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace('No Fact: '+DATOS.FbqMaster_Fact.FieldByName('numero_factura').AsString),StrToInt(longitud),0));
         if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('NOMBRECLIENTE_PRN').Value),StrToInt(longitud),0));

      if DATOS.FbqMaster_FactRNC_CLIENTE.Value <>'' then  begin
            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('RNC CLIENTE  :'+DATOS.FbqMaster_Fact.FieldByName('RNC_CLIENTE').Value),StrToInt(longitud),0));
      end;

      if DATOS.FbqMaster_Factdireccion.Value <>'' then  begin
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,ESPACIOS(MyTextReplace('DIRECCION  :'+DATOS.FbqMaster_Fact.FieldByName('DIRECCION').Value),StrToInt(longitud),0));
      end;
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
//      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('DESCRIPCION',20,0)+espacios('ITBS',10,0)+espacios('VALOR.',10,0));


      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CANT',StrToInt(campoL),0)+espacios('PRODUCTO',StrToInt(campoC1),0)+espacios('ITBIS',StrToInt(campoC2),0)+espacios('PRECIO',StrToInt(campoC2),0)+espacios('TOTAL',StrToInt(campoD),0)+espacios('',StrToInt(campoF),0));
       if StrToInt(longitud) > 42 then
        begin
              WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------------------',StrToInt(longitud),0));
        end else begin
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      end;



    with DATOS.ZDETALLE do
      begin
          First;
          while not Eof do
          begin

           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('cantidad').value),StrToInt(campoL),0)+espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('TITULOPRN').AsString),0,36),StrToInt(longitud),0));

//            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(COPY(MyTextReplace(DATOS.Zdetalle.FieldByName('ARTICULO').AsString),1,StrToInt(longitud)),StrToInt(longitud),0));
//                                                                                   +''+espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),10,1)+''+
  //                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('TOTAL').value),10,1)+espacios('',3,0));

            if datos.ZdetalleCANTIDAD.Value > 1.00 then begin

            WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('total').value),StrToInt(ptotal),1)+''+
                                                                                                    espacios('',StrToInt(DcampoF),0));

            end else begin

//             if datos.ZdetalleTOTAL.value > 9999.00 then
//               begin
//                  ShowMessage('');

               WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios(MyTextReplace(DATOS.Zdetalle.FieldByName('EX').AsString),StrToInt(ex),0)+espacios(MyTextReplace(''),StrToInt(espacioA),0)+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('itbs').value),StrToInt(pitbis),0)+''+
                                                                                                    espacios(FormatFloat('#,##0.00',DATOS.ZDETALLE.FieldByName('precio').value),StrToInt(pprecio),1)+''+
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
      WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('---------------------------------------',StrToInt(longitud),0));
      end;

      if not datos.FbqMaster_Fact.FieldByName('MONTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.fbqmaster_fact.FieldByName('MONTO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(TpcampoF),1))
                                                          else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('SUB-TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
          if not datos.FbqMaster_Fact.FieldByName('DESCUENTO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('descuento').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                              else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('DESCUENTO:',StrToInt(tpcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('POGXITBS').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('POGXITBS').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('ITBIS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));



        if not datos.FbqMaster_Fact.FieldByName('MONTOPAGO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('MONTOPAGO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('TOTAL:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1));

      //  WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('ITEMS :   '+CUANTOSCOUNT.TEXT,StrToInt(longitud),0));

        if not datos.FbqMaster_Fact.FieldByName('EFECTIVO').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('EFECTIVO').Value),StrToInt(tPcampoc1),1)+ESPACIOS('',StrToInt(tpcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('EFECTIVO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',1),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(tpcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('bonos').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('BONOS:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('BONOS').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));
        if not datos.FbqMaster_Fact.FieldByName('DEVOLUCION').IsNull then WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',datos.FbqMaster_Fact.FieldByName('DEVOLUCION').Value),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1))
                                                                else WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios('CAMBIO:',StrToInt(tPcampoL),1)+Espacios(FormatFloat('#,##0.00',0),StrToInt(TPcampoC1),1)+ESPACIOS('',StrToInt(TPcampoF),1));


       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(MyTextReplace('Fecha de Vencimiento:'+DATOS.FBQMASTER_FACT.FieldByName('fecha_final').AsString),StrToInt(longitud)));
       WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.FbqMaster_Fact.FieldByName('observaciones').Value,StrToInt(longitud)));

         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,Espacios(MyTextReplace(''+DATOS.FbqMaster_FactCAJA.Text+'      '+'CAJERO: '+DATOS.FbqMaster_Factcajero.Text),StrToInt(longitud),0));
         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('----------------------------------',StrToInt(longitud),0));
//         WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE1').Value,StrToInt(longitud)));
 //        WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,CenterString(DATOS.ZUconfiguracion.FieldByName('MENSAJE_PIE2').Value,StrToInt(longitud)));
          WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
           WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,espacios('',StrToInt(longitud),0));
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

//WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,INICIARPRINT);
WriteRawDataToPrinter(DATOS.ZUconfiguracion.FieldByName('CONTACTO').Value,TEXTCORTE);




end;



end.
