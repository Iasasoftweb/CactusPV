unit Unit32;

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
  dxSkinXmas2008Blue, cxGroupBox, Data.DB, ZAbstractRODataset, ZDataset,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxTextEdit, cxCurrencyEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.Menus, cxButtons, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxRadioGroup, Vcl.WinXCtrls, ComObj, excel2000,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  cxImage, acPNG, Vcl.Buttons, dxBarBuiltInMenu, cxPC, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF, frxExportXLS;

type
  TFrmAdmInventario = class(TForm)
    ZExistencia: TZReadOnlyQuery;
    DsExistencia: TDataSource;
    DswInventario: TDataSource;
    FInvenatario: TZReadOnlyQuery;
    qRD: TZReadOnlyQuery;
    TotalLocal: TcxCurrencyEdit;
    TotalExterior: TcxCurrencyEdit;
    qexterior: TZReadOnlyQuery;
    Label2: TLabel;
    Label3: TLabel;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    DsAlmacenes: TDataSource;
    QMovimientos: TZReadOnlyQuery;
    QMovimientosCONCEPTOID: TIntegerField;
    QMovimientosDESCRIPCION: TWideStringField;
    QMovimientosTIPOUSUARIO: TIntegerField;
    DsMovimientos: TDataSource;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaCOSTO: TFloatField;
    ZExistenciaCOSTO_PR: TFloatField;
    ZExistenciaCOD_ALM: TIntegerField;
    ZExistenciaEXISTENCIA: TExtendedField;
    ZExistenciaTOTAL: TExtendedField;
    qexteriorTOTAL: TExtendedField;
    qRDTOTAL: TExtendedField;
    ZExistenciaCODIGOBARRA: TWideStringField;
    ZExistenciaREFERENCIA: TWideStringField;
    pIndicador: TPanel;
    AI: TActivityIndicator;
    Label4: TLabel;
    ProgressBar1: TProgressBar;
    FInvenatarioFECHA: TDateField;
    FInvenatarioCOD_ART: TIntegerField;
    FInvenatarioARTICULO: TWideStringField;
    FInvenatarioDESCRIPCION: TWideStringField;
    FInvenatarioCOD_CAT: TIntegerField;
    FInvenatarioENTRADA: TExtendedField;
    FInvenatarioSALIDA: TExtendedField;
    pnlBarTopDiv: TPanel;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    imgLogoTop: TImage;
    Panel5: TPanel;
    Panel6: TPanel;
    Label8: TLabel;
    Panel9: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Panel7: TPanel;
    Op21: TcxRadioGroup;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edit1: TEdit;
    op2: TcxGroupBox;
    cxButton2: TcxButton;
    Edit2: TEdit;
    Edit3: TEdit;
    cxPCentral: TcxPageControl;
    cxtbAcutal: TcxTabSheet;
    tbAnterior: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_A: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_B: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO_D: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label5: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel8: TPanel;
    Panel20: TPanel;
    btnnuevo: TSpeedButton;
    Panel10: TPanel;
    SpeedButton1: TSpeedButton;
    Panel11: TPanel;
    cxLookupComboBox1: TcxLookupComboBox;
    Label6: TLabel;
    Panel12: TPanel;
    SpeedButton2: TSpeedButton;
    Panel13: TPanel;
    spExportar: TSpeedButton;
    Panel14: TPanel;
    SpeedButton4: TSpeedButton;
    FInvenatarioLOTE: TWideStringField;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    Panel15: TPanel;
    Panel16: TPanel;
    Label1: TLabel;
    Panel19: TPanel;
    Label11: TLabel;
    Panel21: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    qLastInventario: TZReadOnlyQuery;
    qLastInventarioID: TIntegerField;
    qLastInventarioFECHA_CIERRE: TDateField;
    Panel22: TPanel;
    SpeedButton3: TSpeedButton;
    qImpInventario: TZReadOnlyQuery;
    qImpInventarioCOD_ART: TIntegerField;
    qImpInventarioCOSTO_PR: TFloatField;
    qImpInventarioARTICULO: TWideStringField;
    qImpInventarioCOSTO: TFloatField;
    qImpInventarioEMPAQUE: TIntegerField;
    qImpInventarioUNIDADCOMPRA: TWideStringField;
    qImpInventarioCOD_ALM: TIntegerField;
    qImpInventarioEXISTENCIA: TExtendedField;
    qImpInventarioTOTAL: TExtendedField;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Reporte: TfrxReport;
    FXConsulta: TfrxDBDataset;
    FxConfig: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    zqConsulta: TZReadOnlyQuery;
    zqConsultaCOD_ART: TIntegerField;
    zqConsultaCOSTO_PR: TFloatField;
    zqConsultaARTICULO: TWideStringField;
    zqConsultaCOSTO: TFloatField;
    zqConsultaEMPAQUE: TIntegerField;
    zqConsultaUNIDADCOMPRA: TWideStringField;
    zqConsultaCOD_ALM: TIntegerField;
    zqConsultaEXISTENCIA: TExtendedField;
    zqConsultaTOTAL: TExtendedField;
    frxXLSExport1: TfrxXLSExport;
    procedure FormShow(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Op21Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spExportarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxPCentralChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdmInventario: TFrmAdmInventario;

implementation

{$R *.dfm}

uses Unit2, Uinicio, UEliminaMOvimiento, Unit117, UInventarioEquivalencia, Tools;


function Token(Sub: string; var S: string): string;
begin
  Result:= '';
  while Length(S)>0 do
  begin
    if AnsiSameText(Copy(S, 1, Length(Sub)), Sub) then
    begin
      Delete(S, 1, Length(Sub));
      break;
    end;
    Result:= Result + Copy(S,1,1);
    Delete(S,1,1);
  end;
end;


procedure TFrmAdmInventario.btnnuevoClick(Sender: TObject);
begin

with FInventarioEquivalencia.consultar do
   begin
     close;
     sql.Clear;
     sql.Add('select * from INV_EQUIVALENCIA(:codigo)');
     params[0].Value := ZExistenciaCOD_ART.Value;
     open;
   end;


FInventarioEquivalencia.ShowModal;
end;

procedure TFrmAdmInventario.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmAdmInventario.cxButton2Click(Sender: TObject);
begin
almacenes.Open;
cxgrid3.Visible := true;
end;

procedure TFrmAdmInventario.cxButton3Click(Sender: TObject);
begin

//

end;

procedure TFrmAdmInventario.cxButton4Click(Sender: TObject);
Var
Plantilla : Variant;
Linha, cont : Integer;

Begin
pIndicador.Visible := true;
 ai.StartAnimation;
 Cont := zexistencia.RecordCount;

 ProgressBar1.Visible := true;
 ProgressBar1.Max := cont;
 ProgressBar1.Position := 0;
 zexistencia.Filtered := false;
 Label4.Caption :='Exportando Datos........';
  Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Reporte de Inventario';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PV';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'Repore de Inventario ';
        Plantilla.cells[4,1] := 'Fecha :'+ DateTostr(Now()) ;


       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
  Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'Codigo';
        Plantilla.cells[6,2]:= 'Referencia';
        Plantilla.cells[6,3]:= 'Nombre del Articulo';
        Plantilla.cells[6,4]:= 'Ultimo Costo';
        Plantilla.cells[6,5]:= 'Costo Promedio';
        Plantilla.cells[6,6]:= 'Almacen';
        Plantilla.cells[6,7]:= 'Existencia';
        Plantilla.cells[6,8]:= 'Monto Total';


        zexistencia.DisableControls;
        with zexistencia do begin
        try

            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= ZExistenciaCOD_ART.Value;
                     Plantilla.cells[Linha, 2]:= ZExistenciaREFERENCIA.Value;
                     Plantilla.cells[Linha, 3]:= ZExistenciaARTICULO.Value;
                     Plantilla.cells[Linha, 4]:= FormatFloat('#,##0.00', ZExistenciaCOSTO.Value);
                     Plantilla.cells[Linha, 5]:= FormatFloat('#,##0.00', ZExistenciaCOSTO_PR.Value);
                     Plantilla.cells[Linha, 6]:= ZExistenciaCOD_ALM.Value;
                     Plantilla.cells[Linha, 7]:= FormatFloat('#,##0.00', ZExistenciaEXISTENCIA.Value);
                     Plantilla.cells[Linha, 8]:= FormatFloat('#,##0.00', ZExistenciaTOTAL.Value);

                     Linha := Linha + 1;
                     ProgressBar1.Position := ProgressBar1.Position + 1;



                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            zexistencia.EnableControls;
            Plantilla := Unassigned;
            Label4.Caption :='Datos Exportados';
            ProgressBar1.Visible := False;
          pIndicador.Visible := false;
            ai.StopAnimation;
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

procedure TFrmAdmInventario.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (AViewInfo.GridRecord.Values[6] ='SI') then BEGIN
    ACanvas.Brush.Color := $009F7224;
    ACanvas.Font.Color := clWHITE;
   end;
//   if (AViewInfo.GridRecord.Values[6] = 2) then BEGIN
//    ACanvas.Brush.Color := clMaroon;
//    ACanvas.Font.Color := clWHITE;
//   END;
end;

procedure TFrmAdmInventario.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 with finvenatario do
  begin
    close;
    sql.Clear;
    sql.add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,Sum(a.entrada) entrada, sum(a.salida) salida, C.LOTE from minventario a');
    sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
    sql.add('where a.cod_art =:opcion');
    sql.add('and a.cod_alm =:op');
    sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo, C.LOTE');
    params[0].Value := zexistenciacod_art.Value;
    params[1].Value := StrToInt(edit2.Text);

    open;
  end;

end;

procedure TFrmAdmInventario.cxGridDBTableView1DblClick(Sender: TObject);
begin
        edit2.Text := almacenesid.text;
        edit3.Text := almacenesdescripcion.Value;
        cxgrid3.Visible := false;


        with zexistencia do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.cod_art, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo,b.costo_pr, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
                 sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                 sql.add('where b.politica <> ''Servicio''');
                 sql.add('and a.cod_alm =:op');
                 sql.add('and a.Lin =:LOTE ');
                 sql.Add('group by a.cod_art, b.articulo,b.costo, a.cod_alm, b.costo_pr,b.codigobarra, b.referencia');
                 params[0].Value := StrToInt(edit2.Text);
                 Params[1].Value := AsignaLote;
                 open;
               end;





end;

procedure TFrmAdmInventario.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin



  with finvenatario do
  begin
    close;
    sql.Clear;
    sql.add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,Sum(a.entrada) entrada, sum(a.salida) salida, C.LOTE from minventario a');
    sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');

    sql.add('where a.cod_art =:opcion');
    sql.add('and a.cod_alm =:op');
    sql.Add('and b.descripcion =:pAlmacen');
    sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo, C.LOTE');
    params[0].Value := zexistenciacod_art.Value;
    params[1].Value := StrToInt(edit2.Text);
    params[2].Value := cxLookupComboBox1.Text;

    open;
  end;

end;

procedure TFrmAdmInventario.cxPCentralChange(Sender: TObject);
begin
if cxPCentral.ActivePageIndex = 1 then
  begin
    with qLastInventario do
      begin
        close;
        sql.Clear;
        sql.Add('select fecha_cierre, id from inventario_lote');
        sql.Add('where estado =''CERRADO''');
        sql.Add('order by fecha_cierre DESCENDING');
        sql.Add('ROWs 1');
        OPEN;
      end;

      with zexistencia do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
                 sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                 sql.add('where b.politica <> ''Servicio''');
                 sql.add('and a.Lin =:LOTE ');
                 sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
                 Params[0].Value := qLastInventarioid.value;
                 open;
               end;

  end;


  if cxPCentral.ActivePageIndex = 0 then
  begin

      with zexistencia do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
                 sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                 sql.add('where b.politica <> ''Servicio''');
                 sql.add('and a.Lin =:LOTE ');
                 sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
                 Params[0].Value := AsignaLote;
                 open;
               end;

  end;
end;

procedure TFrmAdmInventario.Edit1Change(Sender: TObject);
var
T, ST, p1, p2, p3, p4  : string;
begin

 if op21.ItemIndex = 0 then begin

 with zexistencia do
   begin
     close;
     sql.Clear;
     sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
     sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
     sql.Add('where upper(b.articulo) CONTAINING :buscar AND b.articulo CONTAINING :PALABRA2 and b.articulo CONTAINING :PALABRA3 and b.articulo CONTAINING :PALABRA4');
    // sql.Add('where upper(b.articulo) like '+#39+'%'+Edit1.Text+'%'+#39);
     sql.add('and b.politica <> ''Servicio''');
     sql.add('and a.cod_alm =:op');
     sql.Add('group by a.cod_art, b.articulo,b.costo, b.codigobarra, b.referencia,a.cod_alm, b.costo_pr');

                 ST:= edit1.Text;
                while Length(ST) >0 do BEGIN
                  p1 := token(' ',ST);
                  p2 := token(' ',ST);
                  p3 := token(' ',ST);
                  p4 := token(' ',ST);

                END;

                Params[0].Value := p1;
                Params[1].Value := p2;
                Params[2].Value := p3;
                Params[3].Value := p4;
                params[4].Value := StrToInt(edit2.Text);
     open;
   end;



 end;


 if op21.ItemIndex = 2 then begin

 with zexistencia do
   begin
     close;
     sql.Clear;
     sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
     sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
     sql.Add('where upper(b.referencia) CONTAINING :buscar AND b.referencia CONTAINING :PALABRA2 and b.referencia CONTAINING :PALABRA3 and b.referencia CONTAINING :PALABRA4');
  //   sql.Add('where upper(b.articulo) like '+#39+'%'+Edit1.Text+'%'+#39);
     sql.add('and b.politica <> ''Servicio''');
      sql.add('and a.cod_alm =:op');
     sql.Add('group by a.cod_art, b.articulo,b.costo, b.codigobarra, b.referencia,a.cod_alm, b.costo_pr');

                 ST:= edit1.Text;
                while Length(ST) >0 do BEGIN
                  p1 := token(' ',ST);
                  p2 := token(' ',ST);
                  p3 := token(' ',ST);
                  p4 := token(' ',ST);

                END;

                Params[0].Value := p1;
                Params[1].Value := p2;
                Params[2].Value := p3;
                Params[3].Value := p4;
                params[4].Value := StrToInt(edit2.Text);
     open;
   end;




 end;



end;

procedure TFrmAdmInventario.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    if op21.ItemIndex = 1 then begin

 with zexistencia do
   begin
     close;
     sql.Clear;
     sql.Add('select a.cod_art, b.codigobarra, b.referencia, b.costo_pr, upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
     sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
   //  sql.Add('where upper(b.articulo) CONTAINING :buscar AND b.articulo CONTAINING :PALABRA2 and b.articulo CONTAINING :PALABRA3 and b.articulo CONTAINING :PALABRA4');
     sql.Add('where upper(b.codigobarra) = '+#39+Edit1.Text+#39);
     sql.add('and b.politica <> ''Servicio''');
      sql.add('and a.cod_alm =:op');
     sql.Add('group by a.cod_art, b.codigobarra, b.referencia, b.articulo,b.costo, a.cod_alm, b.costo_pr');

//                 ST:= edit1.Text;
//                while Length(ST) >0 do BEGIN
//                  p1 := token(' ',ST);
//                  p2 := token(' ',ST);
//                  p3 := token(' ',ST);
//                  p4 := token(' ',ST);
//
//                END;

//                Params[0].Value := p1;
//                Params[1].Value := p2;
//                Params[2].Value := p3;
//                Params[3].Value := p4;
                params[0].Value := StrToInt(edit2.Text);
     open;
   end;

//            WITH QRD DO
//            BEGIn
//              close;
//              sql.Clear;
//              sql.Add('select sUM(b.costo_pr * (a.entrada - a.salida)) Total  from minventario a');
//              sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
//              sql.Add('where b.politica <>:ps');
//              sql.Add('and b.moneda =:ppp');
//              sql.Add('and b.articulo like '+#39+'%'+Edit1.Text+'%'+#39);
//              params[0].Value := 'Servicio';
//              params[1].Value := 'SI';
//              open;
//            End;
     //       TotalLocal.Value := qrdtotal.value;

//           WITH Qexterior DO
//            BEGIn
//              close;
//              sql.Clear;
//              sql.Add('select sUM(b.costo * (a.entrada - a.salida)) Total  from minventario a');
//              sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
//              sql.Add('where b.politica <>:ps');
//              sql.Add('and b.moneda =:ppp');
//              sql.Add('and b.articulo like '+#39+'%'+Edit1.Text+'%'+#39);
//              params[0].Value := 'Servicio';
//              params[1].Value := 'NO';
//              open;
//            End;
//  Totalexterior.Value := qexteriortotal.value;
 end;

  end;
end;

procedure TFrmAdmInventario.edtBuscarChange(Sender: TObject);
var
T, ST, p1, p2, p3, p4  : string;
begin

 if op21.ItemIndex = 0 then begin

 with zexistencia do
   begin
     close;
     sql.Clear;
     sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
     sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
     sql.Add('where upper(b.articulo) CONTAINING :buscar AND b.articulo CONTAINING :PALABRA2 and b.articulo CONTAINING :PALABRA3 and b.articulo CONTAINING :PALABRA4');
    // sql.Add('where upper(b.articulo) like '+#39+'%'+Edit1.Text+'%'+#39);
       sql.add('and b.politica <> ''Servicio''');
      sql.add('and a.cod_alm =:op');
     sql.Add('group by a.cod_art, b.articulo,b.costo, b.codigobarra, b.referencia,a.cod_alm, b.costo_pr');

                 ST:= edit1.Text;
                while Length(ST) >0 do BEGIN
                  p1 := token(' ',ST);
                  p2 := token(' ',ST);
                  p3 := token(' ',ST);
                  p4 := token(' ',ST);

                END;

                Params[0].Value := p1;
                Params[1].Value := p2;
                Params[2].Value := p3;
                Params[3].Value := p4;
                params[4].Value := StrToInt(edit2.Text);
     open;
   end;



 end;


 if op21.ItemIndex = 2 then begin

 with zexistencia do
   begin
     close;
     sql.Clear;
     sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
     sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
     sql.Add('where upper(b.referencia) CONTAINING :buscar AND b.referencia CONTAINING :PALABRA2 and b.referencia CONTAINING :PALABRA3 and b.referencia CONTAINING :PALABRA4');
  //   sql.Add('where upper(b.articulo) like '+#39+'%'+Edit1.Text+'%'+#39);
     sql.add('and b.politica <> ''Servicio''');
      sql.add('and a.cod_alm =:op');
     sql.Add('group by a.cod_art, b.articulo,b.costo, b.codigobarra, b.referencia,a.cod_alm, b.costo_pr');

                 ST:= edit1.Text;
                while Length(ST) >0 do BEGIN
                  p1 := token(' ',ST);
                  p2 := token(' ',ST);
                  p3 := token(' ',ST);
                  p4 := token(' ',ST);

                END;

                Params[0].Value := p1;
                Params[1].Value := p2;
                Params[2].Value := p3;
                Params[3].Value := p4;
                params[4].Value := StrToInt(edit2.Text);
     open;
   end;




 end;




end;

procedure TFrmAdmInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmAdmInventario := nil;
Action := caFree;
end;

procedure TFrmAdmInventario.FormShow(Sender: TObject);
begin


cxPCentral.ActivePageIndex := 0;
with zexistencia do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
                 sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                 sql.add('where b.politica <> ''Servicio''');
                 sql.add('and a.Lin =:LOTE ');
                 sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
                 Params[0].Value := AsignaLote;
                 open;
               end;//


QMovimientos.Close;
QMovimientos.Open;





// WITH QRD DO
//  BEGIn
//    close;
//    sql.Clear;
//    sql.Add('select sUM(b.costo_pr * (a.entrada - a.salida)) Total  from minventario a');
//    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
//    sql.Add('where b.politica <>:ps');
//    sql.Add('and b.moneda =:ppp');
//    params[0].Value := 'Servicio';
//    params[1].Value := 'SI';
//    open;
//  End;
//  TotalLocal.Value := qrdtotal.value;
//
// WITH Qexterior DO
//  BEGIn
//    close;
//    sql.Clear;
//    sql.Add('select sUM(b.costo_pr * (a.entrada - a.salida)) Total  from minventario a');
//    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
//    sql.Add('where b.politica <>:ps');
//    sql.Add('and b.moneda =:ppp');
//    params[0].Value := 'Servicio';
//    params[1].Value := 'NO';
//    open;
//  End;
//  Totalexterior.Value := qexteriortotal.value / datos.ZUconfiguracionTAZA.Value;
  almacenes.Open;

  edit2.text := almacenesID.text;
  edit3.Text := almacenesDESCRIPCION.Value;
end;

procedure TFrmAdmInventario.Op21Click(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TFrmAdmInventario.SpeedButton1Click(Sender: TObject);
begin
if FAutorizacion.ShowModal = mrOk then
           begin





                  with Frmeliminamovimiento.FInvenatario do
                  begin
                    close;
                    sql.Clear;
                    sql.add(' select a.minventarioid, a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,a.entrada, a.salida  from minventario a');
                    sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
                    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
                    sql.add('where a.cod_art =:opcion');
                    sql.add('and a.cod_alm =:op');

                    params[0].Value := zexistenciacod_art.Value;
                    params[1].Value := StrToInt(edit2.Text);

                    open;
                  end;

  Frmeliminamovimiento.Showmodal;
           end;
end;

procedure TFrmAdmInventario.SpeedButton2Click(Sender: TObject);
begin

  with finvenatario do
  begin
    close;
    sql.Clear;
    sql.add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,Sum(a.entrada) entrada, sum(a.salida) salida, c.lote from minventario a');
    sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
    sql.add('where a.cod_art =:opcion');
    sql.add('and a.cod_alm =:op');
    sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo, c.lote');
    params[0].Value := zexistenciacod_art.Value;
    params[1].Value := StrToInt(edit2.Text);

    open;
  end;
end;

procedure TFrmAdmInventario.SpeedButton3Click(Sender: TObject);
begin
with zqConsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.costo_pr, upper(b.articulo) articulo, b.costo, b.empaque, b.unidadcompra, a.cod_alm, sum(a.entrada - a.salida) Existencia,');
    sql.Add('b.costo * sum(a.entrada - a.salida) Total  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('where b.politica <> ''Servicio''');
    sql.Add('and a.cod_alm =:almacen');
    sql.Add('group by a.cod_art, b.costo_pr,  upper(b.articulo),b.costo, a.cod_alm, b.unidadcompra,  b.empaque');
    sql.Add('order by upper(b.articulo) ASC');
    Params[0].Value :=  StrToInt(edit2.Text);
    open;
  end;

  reporte.variables['almacen']:=quotedstr(edit2.Text);
  reporte.PrepareReport(true);
  reporte.ShowPreparedReport;
end;

procedure TFrmAdmInventario.spExportarClick(Sender: TObject);
Var
Plantilla : Variant;
Linha, cont : Integer;

Begin
pIndicador.Visible := true;
 ai.StartAnimation;
 Cont := zexistencia.RecordCount;

 ProgressBar1.Visible := true;
 ProgressBar1.Max := cont;
 ProgressBar1.Position := 0;
 zexistencia.Filtered := false;
 Label4.Caption :='Exportando Datos........';
  Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Reporte de Inventario';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PV';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'Repore de Inventario ';
        Plantilla.cells[4,1] := 'Fecha :'+ DateTostr(Now()) ;


       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
  Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'Codigo';
        Plantilla.cells[6,2]:= 'Referencia';
        Plantilla.cells[6,3]:= 'Nombre del Articulo';
        Plantilla.cells[6,4]:= 'Ultimo Costo';
        Plantilla.cells[6,5]:= 'Costo Promedio';
        Plantilla.cells[6,6]:= 'Almacen';
        Plantilla.cells[6,7]:= 'Existencia';
        Plantilla.cells[6,8]:= 'Monto Total';


        zexistencia.DisableControls;
        with zexistencia do begin
        try

            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= ZExistenciaCOD_ART.Value;
                     Plantilla.cells[Linha, 2]:= ZExistenciaREFERENCIA.Value;
                     Plantilla.cells[Linha, 3]:= ZExistenciaARTICULO.Value;
                     Plantilla.cells[Linha, 4]:= FormatFloat('#,##0.00', ZExistenciaCOSTO.Value);
                     Plantilla.cells[Linha, 5]:= FormatFloat('#,##0.00', ZExistenciaCOSTO_PR.Value);
                     Plantilla.cells[Linha, 6]:= ZExistenciaCOD_ALM.Value;
                     Plantilla.cells[Linha, 7]:= FormatFloat('#,##0.00', ZExistenciaEXISTENCIA.Value);
                     Plantilla.cells[Linha, 8]:= FormatFloat('#,##0.00', ZExistenciaTOTAL.Value);

                     Linha := Linha + 1;
                     ProgressBar1.Position := ProgressBar1.Position + 1;



                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            zexistencia.EnableControls;
            Plantilla := Unassigned;
            Label4.Caption :='Datos Exportados';
            ProgressBar1.Visible := False;
          pIndicador.Visible := false;
            ai.StopAnimation;
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

procedure TFrmAdmInventario.SpeedButton4Click(Sender: TObject);
begin

 with zexistencia do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
                 sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                 sql.add('where b.politica <> ''Servicio''');
                 sql.add('and a.Lin =:LOTE ');
                 sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
                 Params[0].Value := AsignaLote;
                 open;
               end;

end;

end.
