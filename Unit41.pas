unit Unit41;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, Vcl.Menus, cxButtons, Data.DB, ZAbstractRODataset, ZDataset,
  frxClass, frxDBSet, cxCurrencyEdit, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, frxExportXLS,
  frxExportPDF, fs_ichartrtti, cxGroupBox, cxRadioGroup, dxSkinTheBezier,
  frxExportBaseDialog,  ComObj, excel2000;

type
  TFrmRVentas = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    Label3: TLabel;
    ticker: TfrxReport;
    mASTER: TfrxDBDataset;
    cuadre: TZReadOnlyQuery;
    Edit1: TEdit;
    RGastos: TZReadOnlyQuery;
    datagastos: TfrxDBDataset;
    gatos: TfrxReport;
    Config: TfrxDBDataset;
    UTILIDADBNB: TZReadOnlyQuery;
    UTILIDADBNBBNB: TFloatField;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label1: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label4: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label5: TLabel;
    QPagos: TZReadOnlyQuery;
    sumatoria: TfrxDBDataset;
    TContado: TZReadOnlyQuery;
    Tcreditos: TZReadOnlyQuery;
    SumpAgoCredito: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    QPagosEFECTIVO: TExtendedField;
    QPagosPTARJETA: TExtendedField;
    QPagosTOTAL: TExtendedField;
    TContadoTCONTADO: TExtendedField;
    RGastosFECHA: TDateField;
    RGastosBENEFICIADO: TWideStringField;
    RGastosDESCRIPCION: TWideStringField;
    RGastosSUMA: TExtendedField;
    TcreditosTCREDITO: TExtendedField;
    SumPagoContado: TfrxDBDataset;
    pagoCXC: TZReadOnlyQuery;
    pagoCXCTPCXC: TExtendedField;
    SumPagoCXC: TfrxDBDataset;
    cxButton2: TcxButton;
    Label6: TLabel;
    OpCondicion: TcxRadioGroup;
    cxButton1: TcxButton;
    cuadreNUMERO_FACTURA: TExtendedField;
    cuadreFECHA_FAC: TDateField;
    cuadreCLIENTEID: TIntegerField;
    cuadreCODVEN: TIntegerField;
    cuadreT: TWideStringField;
    cuadreMONTO: TFloatField;
    cuadreCOSTO2: TExtendedField;
    cuadrePOGXITBS: TFloatField;
    cuadrePAGOXEFECTIVO: TFloatField;
    cuadrePAGOXCHEQUE: TFloatField;
    cuadrePAGOXTARJETA: TFloatField;
    cuadreMONTOPAGO: TFloatField;
    cuadreDESCUENTO: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRVentas: TFrmRVentas;

implementation

{$R *.dfm}

uses Unit63, UInicio, Unit2;

procedure TFrmRVentas.cxButton1Click(Sender: TObject);
var
Plantilla : Variant;
Linha, cont : Integer;
begin



if EDIT1.Text = 'VENTAS' then
  BEGIN


 with cuadre do
      begin
        close;
        sql.clear;
        sql.add('SELECT a.numero_factura, a.fecha_fac, a.clienteid, a.codven, IIF(A.TIPO =''Contado'', ''C'',''CR'') T, a.monto,');
        sql.add('(select sum((b1.costo * a1.cantidad)) from detailfact a1');
        sql.add('left join mtartuculos b1 On a1.articuloid = b1.cod_art');
        sql.add('where a1.masterid = a.no_fact');
        sql.add('group by a1.masterid) Costo2,');
        sql.Add('a.pogxitbs,  a.pagoxefectivo, a.pagoxcheque, a.pagoxtarjeta, a.montopago, a.descuento');

        sql.Add('FROM MASTER_FACT A');
        sql.Add('LEFT JOIN CLIENTE B ON A.CLIENTEID = B.CODIGO');
        sql.Add('LEFT JOIN MUSUARIO C ON A.USUARIOID = C.USUARIOID');
        sql.Add('LEFT JOIN MTEMPLEADO D ON C.EMPLEADOID = D.COD_EMP');
        sql.Add('WHERE A.SITUACION =:situac');

        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        if OpCondicion.ItemIndex <> 2 then
          begin
            sql.Add('and a.tipo =:Tcondicion');
          end;
        sql.add('order by a.numero_factura');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;

        if OpCondicion.ItemIndex = 0 then
          begin
             Params[5].Value := 'Contado';
          end;

          if OpCondicion.ItemIndex = 1 then
          begin
             Params[5].Value := 'CREDITO';
          end;
        open;
      end;


       with Qpagos do
      begin
        close;
        sql.clear;
        sql.add('select Sum(a.pagoxefectivo) Efectivo, sum(a.pagoxtarjeta) Ptarjeta, sum(a.pagoxefectivo + a.pagoxtarjeta) Total  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        open;
      end;


     with tcreditos do
      begin
        close;
        sql.clear;
        sql.add('select Sum(a.montopago) Tcredito from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =''CREDITO''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        open;
      end;

 with pagoCXC do
      begin
        close;
        sql.clear;
        sql.add('select Sum(a.pagoxefectivo) Tpcxc from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =''CREDITO''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        open;
      end;

     with TContado do
      begin
        close;
        sql.clear;
        sql.add('select Sum(a.montopago) Tcontado  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =''Contado''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        open;
      end;





if EDIT1.Text = 'CREDITO' then
  BEGIN
 with cuadre do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =:tipo');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        Params[5].Value := 'CREDITO';
        open;
      end;




  END;










Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Resumen de Venta por Fecha';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PVS';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'Resumen de Venta por Fecha';
       // Plantilla.cells[4,1] := 'Tipo :'+cxComboBox1.Text ;
         Plantilla.cells[5,1] := 'Desde :'+inicio.Text+' Hasta : '+fechafinal.Text;

       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
       Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'FECHA';
        Plantilla.cells[6,2]:= 'NO FACT';
        Plantilla.cells[6,3]:= 'ID CLIENTE';
        Plantilla.cells[6,4]:= 'ID VENDEDOR';
        Plantilla.cells[6,5]:= 'TIPO';
        Plantilla.cells[6,6]:= 'IMPORTE';
        Plantilla.cells[6,7]:= 'COSTO';
        Plantilla.cells[6,8]:= 'DESC';
        Plantilla.cells[6,9]:= 'SUB TOTAL';
        Plantilla.cells[6,10]:= 'IMPUESTO';
        Plantilla.cells[6,11]:= 'TOTAL';


        cuadre.DisableControls;
        with cuadre do begin
        try
            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= cuadreFECHA_FAC.Value;
                     Plantilla.cells[Linha, 2]:= cuadreNUMERO_FACTURA.Value;
                     Plantilla.cells[Linha, 3]:= cuadreCLIENTEID.Value ;
                     Plantilla.cells[Linha, 4]:= cuadreCODVEN.Value;
                     Plantilla.cells[Linha, 5]:= cuadreT.Value;
                     Plantilla.cells[Linha, 6]:= cuadreMONTO.Value;
                     Plantilla.cells[Linha, 7]:= cuadreCOSTO2.Value;
                     Plantilla.cells[Linha, 8]:= cuadreDESCUENTO.Value;
                     Plantilla.cells[Linha, 9]:= cuadreMONTO.Value;
                     Plantilla.cells[Linha, 10]:=cuadrePOGXITBS.Value;
                     Plantilla.cells[Linha, 11]:=cuadreMONTOPAGO.Value;

                     Linha := Linha + 1;

                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            cuadre.EnableControls;
            Plantilla := Unassigned;
           // ai.StopAnimation;
        end;
        end;



  END;




end;

procedure TFrmRVentas.cxButton2Click(Sender: TObject);

begin


if EDIT1.Text = 'VENTAS' then
  BEGIN


 with cuadre do
      begin
        close;
        sql.clear;
        sql.add('SELECT a.numero_factura, a.fecha_fac, a.clienteid, a.codven, IIF(A.TIPO =''Contado'', ''C'',''CR'') T, a.monto,');
        sql.add('(select sum((b1.costo * a1.cantidad)) from detailfact a1');
        sql.add('left join mtartuculos b1 On a1.articuloid = b1.cod_art');
        sql.add('where a1.masterid = a.no_fact');
        sql.add('group by a1.masterid) Costo2,');
        sql.Add('a.pogxitbs,  a.pagoxefectivo, a.pagoxcheque, a.pagoxtarjeta, a.montopago, a.descuento');

        sql.Add('FROM MASTER_FACT A');
        sql.Add('LEFT JOIN CLIENTE B ON A.CLIENTEID = B.CODIGO');
        sql.Add('LEFT JOIN MUSUARIO C ON A.USUARIOID = C.USUARIOID');
        sql.Add('LEFT JOIN MTEMPLEADO D ON C.EMPLEADOID = D.COD_EMP');
        sql.Add('WHERE A.SITUACION =:situac');

        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        if OpCondicion.ItemIndex <> 2 then
          begin
            sql.Add('and a.tipo =:Tcondicion');
          end;
        sql.add('order by a.numero_factura');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;

        if OpCondicion.ItemIndex = 0 then
          begin
             Params[5].Value := 'Contado';
          end;

          if OpCondicion.ItemIndex = 1 then
          begin
             Params[5].Value := 'CREDITO';
          end;
        open;
      end;


       with Qpagos do
      begin
        close;
        sql.clear;
        sql.add('select Sum(a.pagoxefectivo) Efectivo, sum(a.pagoxtarjeta) Ptarjeta, sum(a.pagoxefectivo + a.pagoxtarjeta) Total  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        open;
      end;


     with tcreditos do
      begin
        close;
        sql.clear;
        sql.add('select Sum(a.montopago) Tcredito from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =''CREDITO''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        open;
      end;

 with pagoCXC do
      begin
        close;
        sql.clear;
        sql.add('select Sum(a.pagoxefectivo) Tpcxc from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =''CREDITO''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        open;
      end;

     with TContado do
      begin
        close;
        sql.clear;
        sql.add('select Sum(a.montopago) Tcontado  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =''Contado''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        open;
      end;

             ticker.variables['fecha1']:=quotedstr(inicio.Text);
             ticker.variables['Empleado']:=quotedstr('Reporte de Ventas al Contado');
             ticker.variables['fecha2']:=quotedstr(fechafinal.Text);
            // showmessage('');
             ticker.PrepareReport(true);
             ticker.ShowPreparedReport;

             inicio.Clear;
             fechafinal.Clear;

          //   FrmRVentas.Height := 162;
             //close;
  END;

if EDIT1.Text = 'CREDITO' then
  BEGIN
 with cuadre do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =:tipo');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        Params[5].Value := 'CREDITO';
        open;
      end;

             ticker.variables['fecha1']:=quotedstr(inicio.Text);
             ticker.variables['Empleado']:=quotedstr('Reporte de Ventas Crédito');
             ticker.variables['fecha2']:=quotedstr(fechafinal.Text);
             ticker.PrepareReport(true);
             ticker.ShowPreparedReport;

             inicio.Clear;
             fechafinal.Clear;
             FrmRVentas.Height := 151;
           //  close;
  END;



 if EDIT1.Text = 'GASTOS' then
  BEGIN

 with rgastos do
    begin
      close;
      sql.Clear;
      sql.Add('select a.fecha, a.beneficiado, b.descripcion,Sum(a.Importe) suma from control_gastos a');
      sql.Add('left join conceptos_gastos b On a.conceptosid = b.conceptosid');
      sql.Add('where a.fecha >=:fecha1');
      sql.Add('and a.fecha <=:fecha2');
      sql.Add('group by b.descripcion, a.fecha, a.beneficiado');
      Params[0].Value := inicio.Date;
      Params[1].Value := fechafinal.Date;
      open;
    end;


                gatos.variables['fecha1']:=quotedstr(inicio.Text);
             gatos.variables['fecha2']:=quotedstr(fechafinal.Text);
             gatos.PrepareReport(true);
             gatos.ShowPreparedReport;

             inicio.Clear;
             fechafinal.Clear;
         //    close;

      //   FrmRVentas.Height := 151;


  END;


   if EDIT1.Text = 'BNB' then
  BEGIN

  with UTILIDADBNB do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT SUM(A.precio * A.cantidad) - SUM(B.costo_pr * A.cantidad) BNB FROM detailfact A');
      sql.Add('LEFT JOIN mtartuculos B ON A.articuloid = B.cod_art');
      sql.Add('LEFT JOIN master_fact C oN A.masterid = C.no_fact');
      sql.Add('where c.fecha_fac >=:fecha1');
      sql.Add('and   c.fecha_fac <=:fecha2');
      Params[0].Value := inicio.Date;
      Params[1].Value := fechafinal.Date;
      open;
    end;


    with rgastos do
    begin
      close;
      sql.Clear;
      sql.Add('select b.descripcion,Sum(a.Importe) suma from control_gastos a');
      sql.Add('left join conceptos_gastos b On a.conceptosid = b.conceptosid');
      sql.Add('and a.fecha >=:fecha1');
      sql.Add('and a.fecha <=:fecha2');
      sql.Add('group by b.descripcion');
      Params[0].Value := inicio.Date;
      Params[1].Value := fechafinal.Date;
      open;
    end;

           //showmessage(''+FloatToStr(utilidadbnbbnb.Value));
             cxCurrencyEdit1.Value := utilidadbnbbnb.Value;
             cxCurrencyEdit2.Value  := rgastossuma.Value;
             cxCurrencyEdit3.Value  := cxCurrencyEdit1.Value - cxCurrencyEdit2.Value;



             //inicio.Clear;
             //fechafinal.Clear;
         //    close;

     //    FrmRVentas.Height := 393;


  END;



end;

procedure TFrmRVentas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmRVentas := nil;
Action := caFree;
end;

procedure TFrmRVentas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    close;
  end;
end;

procedure TFrmRVentas.FormShow(Sender: TObject);
begin
//FrmRVentas.Height := 162;
end;

end.
