unit Unit90;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.Menus, cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ZAbstractRODataset, ZDataset,  frxClass,
  frxDBSet, frxExportXLS, ComObj, excel2000, Vcl.WinXCtrls, Vcl.ExtCtrls,
  dxActivityIndicator, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog;

type
  TFrmComprobanteEmitidos = class(TForm)
    GroupBox1: TGroupBox;
    Label8: TLabel;
    inicio: TcxDateEdit;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    Label3: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QConsultaMaster: TZReadOnlyQuery;
    cuadre: TZReadOnlyQuery;
    cuadreFECHA_FAC: TDateField;
    cuadreCLIENTENOMBRE: TWideStringField;
    cuadreNOMBRECLIENTE_PRN: TWideStringField;
    cuadreNCF_NOMBRE: TWideStringField;
    cuadreNCF: TWideStringField;
    cuadreGRABADO: TFloatField;
    cuadreNOGRABADO: TFloatField;
    cuadreMONTOPAGO: TFloatField;
    Dscuadre: TDataSource;
    cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1RNC: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn;
    cxGrid1DBTableView1NCF_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1NCF: TcxGridDBColumn;
    cxGrid1DBTableView1GRABADO: TcxGridDBColumn;
    cxGrid1DBTableView1NOGRABADO: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cuadreNOMBREDELDR: TWideStringField;
    cxComboBox1: TcxComboBox;
    cuadreCEDULA: TWideStringField;
    FxCuadre: TfrxDBDataset;
    reporte: TfrxReport;
    Config: TfrxDBDataset;
    cuadreNUMERO_FACTURA: TFloatField;
    frxXLSExport1: TfrxXLSExport;
    cuadrePAGOXEFECTIVO: TFloatField;
    cuadrePAGOXCHEQUE: TFloatField;
    cuadrePAGOXTARJETA: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    pIndicador: TPanel;
    Label4: TLabel;
    AI: TActivityIndicator;
    ProgressBar2: TProgressBar;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComprobanteEmitidos: TFrmComprobanteEmitidos;

implementation

{$R *.dfm}

uses Unit2, Unit63, UInicio, Unit135;

procedure TFrmComprobanteEmitidos.cxButton1Click(Sender: TObject);
begin


 with cuadre do
      begin
        close;
        sql.clear;
        sql.add('select a.fecha_fac, a.numero_factura, b.cedula ,b.nombres ClienteNombre, a.nombrecliente_prn, a.ncf_nombre, a.ncf, a.pogxitbs Grabado, a.monto NoGrabado, a.montopago, a.nombredeldr, a.pagoxefectivo, a.pagoxcheque, a.pagoxtarjeta   from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.add('and a.nombredeldr =:oppp');
        sql.add('and a.ncf is not null');
        sql.add('order by a.numero_factura');

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        Params[5].Value := cxComboBox1.Text;
        open;
      end;
end;

procedure TFrmComprobanteEmitidos.cxButton2Click(Sender: TObject);
begin

            reporte.variables['fecha1']:=quotedstr(inicio.Text);
             reporte.variables['tipo']:=quotedstr(cxcombobox1.Text);
             reporte.variables['fecha2']:=quotedstr(fechafinal.Text);

             reporte.PrepareReport(true);
             reporte.ShowPreparedReport;
end;

procedure TFrmComprobanteEmitidos.cxButton3Click(Sender: TObject);
begin
if FrmEditarNCF = nil then
  begin
    FrmEditarNCF := tFrmEditarNCF.Create(self);
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
    sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');
    sql.Add('where a.NUMERO_FACTURA =:op1');
     
            params[0].Value := cuadreNUMERO_FACTURA.Value;
            open;
          end;

    FrmEditarNCF.Edit1.Text := '1';
    FrmEditarNCF.ShowModal;
  end;

end;

procedure TFrmComprobanteEmitidos.cxButton4Click(Sender: TObject);
Var
Plantilla : Variant;
Linha, cont : Integer;

Begin



 // lblFrameDelay.Caption := 'Frame Delay (' + IntToStr(AI.FrameDelay) + ')';


 pIndicador.Visible := true;


// Ai.StartAnimation;
 Cont := cuadre.RecordCount;
ProgressBar2.Visible := true;
 ProgressBar2.Max := cont;
 ProgressBar2.Position := 0;
 AI.FrameDelay := 0;
 cuadre.Filtered := false;
 Label4.Caption :='Exportando Datos........';
  Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Emision de Comprobantes';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PVS';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'Reporte Comprobantes Emitidos';
        Plantilla.cells[4,1] := 'Tipo :'+cxComboBox1.Text ;
         Plantilla.cells[5,1] := 'Desde :'+inicio.Text+' Hasta : '+fechafinal.Text;

       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
  Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'Rnc/Cedula';
        Plantilla.cells[6,2]:= 'Tipo Identificacion';
        Plantilla.cells[6,3]:= 'Numero Combrobante';
        Plantilla.cells[6,4]:= 'Tipo de Ingreso';
        Plantilla.cells[6,5]:= 'Fecha de Comprobante';
        Plantilla.cells[6,6]:= 'Monto Facturado';
        Plantilla.cells[6,7]:= 'ITBS Facturado';
        Plantilla.cells[6,8]:= 'Efectivo';
        Plantilla.cells[6,9]:= 'Cheques';
        Plantilla.cells[6,10]:= 'Tarjetas';
        Plantilla.cells[6,11]:= 'Venta Credito';

        cuadre.DisableControls;
        with cuadre do begin
        try
            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= cuadreCEDULA.Value;
                     Plantilla.cells[Linha, 3]:= cuadreNCF.Value;
                     Plantilla.cells[Linha, 5]:= formatdatetime('yyyymmdd',cuadreFECHA_FAC.Value);
                     Plantilla.cells[Linha, 6]:=FormatFloat('#,##0.00', cuadreNOGRABADO.Value);
                     Plantilla.cells[Linha, 7]:= FormatFloat('#,##0.00', cuadreGRABADO.Value);
                     Plantilla.cells[Linha, 8]:= FormatFloat('#,##0.00', cuadrePAGOXEFECTIVO.Value);
                     Plantilla.cells[Linha, 9]:= FormatFloat('#,##0.00', cuadrePAGOXCHEQUE.Value);
                     Plantilla.cells[Linha, 10]:= FormatFloat('#,##0.00', cuadrePAGOXTARJETA.Value);

                     Linha := Linha + 1;
                     ProgressBar2.Position := ProgressBar1.Position + 1;
                      AI.FrameDelay := ProgressBar2.Position;



                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            cuadre.EnableControls;
            Plantilla := Unassigned;
            Label4.Caption :='Datos Exportados';
           ProgressBar2.Visible := False;
            pIndicador.Visible := false;
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

procedure TFrmComprobanteEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmComprobanteEmitidos := nil;
Action := caFree;
end;

procedure TFrmComprobanteEmitidos.FormShow(Sender: TObject);
begin
 Label1.Caption :='';
 ProgressBar1.Visible := false;
end;

end.
