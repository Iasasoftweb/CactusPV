unit Unit77;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit2, Data.DB, ZAbstractRODataset,
  ZDataset, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxGroupBox, cxRadioGroup, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus,
  cxButtons, frxClass, frxDBSet,  dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBEdit,  ComObj, excel2000,
  frxExportBaseDialog, frxExportPDF, acPNG, Vcl.Buttons;

type
  TFrmReporteVentaxVendedor = class(TForm)
    Panel1: TPanel;
    vendedor: TZReadOnlyQuery;
    vendedorID: TIntegerField;
    vendedorNOMBRE: TWideStringField;
    vendedorCEDULA: TWideStringField;
    vendedorTELEFONO: TWideStringField;
    vendedorESTADO: TIntegerField;
    inicio: TcxDateEdit;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    Label3: TLabel;
    Qconsulta: TZReadOnlyQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsConsulta: TDataSource;
    cxButton1: TcxButton;
    DETALLE: TZReadOnlyQuery;
    DsDetalle: TDataSource;
    cxButton2: TcxButton;
    consulta: TfrxDBDataset;
    PRNDetalle: TfrxDBDataset;
    reporte1: TfrxReport;
    Config: TfrxDBDataset;
    reporte2: TfrxReport;
    DETALLENOMBRE_RUTA: TWideStringField;
    DETALLEID: TIntegerField;
    DETALLENOMBRE: TWideStringField;
    DETALLESUM: TExtendedField;
    Tecnicos: TZReadOnlyQuery;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    TecnicosCOD_EMP1: TIntegerField;
    DsTecnico: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    QconsultaCOD_ART: TWideStringField;
    QconsultaCODVEN: TIntegerField;
    QconsultaCANTIDAD: TExtendedField;
    QconsultaARTICULO: TWideStringField;
    QconsultaCONDICION: TWideStringField;
    QconsultaTVENTA: TExtendedField;
    QconsultaBN: TExtendedField;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1TVENTA: TcxGridDBColumn;
    cxGrid1DBTableView1BN: TcxGridDBColumn;
    pnlImpresion: TPanel;
    cxButton4: TcxButton;
    RgTipo: TcxRadioGroup;
    Label6: TLabel;
    frxPDFExport1: TfrxPDFExport;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel6: TPanel;
    imgLogoTop: TImage;
    Panel7: TPanel;
    Panel10: TPanel;
    Label8: TLabel;
    Panel11: TPanel;
    Label23: TLabel;
    Label37: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReporteVentaxVendedor: TFrmReporteVentaxVendedor;

implementation

{$R *.dfm}

uses UInicio, Unit118;

procedure TFrmReporteVentaxVendedor.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmReporteVentaxVendedor.cxButton1Click(Sender: TObject);
begin




       with qconsulta do
         begin
           close;
           sql.Clear;
           sql.Add('select  a.cod_art, c.codven, Sum(a.cantidad) Cantidad, b.articulo, c.condicion, Sum(a.cantidad * (a.precio + a.itbs)) tVENTA, Sum((a.cantidad * (a.precio+a.itbs)) - (a.cantidad * b.costo)) BN from detailfact a');
           sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
           sql.Add('left join master_fact c On a.masterid = c.no_fact');
           sql.Add('where c.fecha_fac >=:fecha1');
           sql.Add('and c.fecha_fac <=:fecha2');
           sql.Add('and c.situacion =:op1');


           sql.Add('AND c.ROTULO =:OPCION5');
           sql.Add('AND c.codven =:OPCION6');

           sql.Add('group by a.cod_art, b.articulo, c.condicion,b.cod_cat, c.codven');
           Params[0].Value := inicio.Date;
           Params[1].Value := fechafinal.Date;
           params[2].Value := 'IMPRESA';
           Params[3].Value := 'FACTURACION';
           Params[4].Value := StrToInt(cxDBTextEdit1.Text);
           open;

         end;

    cxButton2.Enabled := true;
end;

procedure TFrmReporteVentaxVendedor.cxButton2Click(Sender: TObject);
begin
pnlImpresion.Visible := true;
//if op1.ItemIndex  =0 then begin
//
//            reporte2.variables['fecha1']:=quotedstr(inicio.Text);
//         //    reporte1.variables['Empleado']:=quotedstr('Reporte de Articulos Vendidos x Fecha');
//             reporte2.variables['fecha2']:=quotedstr(fechafinal.Text);
//
//             reporte2.PrepareReport(true);
//             reporte2.ShowPreparedReport;
//end;
//
//if op1.ItemIndex  =1 then begin
//
//            reporte1.variables['fecha1']:=quotedstr(inicio.Text);
//         //    reporte1.variables['Empleado']:=quotedstr('Reporte de Articulos Vendidos x Fecha');
//             reporte1.variables['fecha2']:=quotedstr(fechafinal.Text);
//
//             reporte1.PrepareReport(true);
//             reporte1.ShowPreparedReport;
//end;

end;

procedure TFrmReporteVentaxVendedor.cxButton3Click(Sender: TObject);
begin
if FrmBuscarInstalador = nil then  begin
    FrmBuscarInstalador := tFrmBuscarInstalador.Create(self);
    FrmBuscarInstalador.Edit2.Text := 'CONSVENTA';
    FrmBuscarInstalador.showmodal;
end;
end;

procedure TFrmReporteVentaxVendedor.cxButton4Click(Sender: TObject);
var
Plantilla : Variant;
Linha, cont : Integer;
begin

   if RgTipo.ItemIndex = 0 then  begin

     reporte1.variables['fecha1']:=quotedstr(inicio.Text);
             reporte1.variables['Vendedor']:=quotedstr(cxDBTextEdit2.Text);
             reporte1.variables['fecha2']:=quotedstr(fechafinal.Text);

             reporte1.PrepareReport(true);
             reporte1.ShowPreparedReport;
   end;

   if RgTipo.ItemIndex = 1 then  begin


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
        Plantilla.cells[3,1] := ' Ventas por Vendedor ';
       // Plantilla.cells[4,1] := 'Tipo :'+cxComboBox1.Text ;
         Plantilla.cells[5,1] := 'Desde :'+inicio.Text+' Hasta : '+fechafinal.Text;

       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
       Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'NO ART';
        Plantilla.cells[6,2]:= 'PRODUCTO';
        Plantilla.cells[6,3]:= 'CANTIDAD';
        Plantilla.cells[6,4]:= 'TOTAL VENTA';
        Plantilla.cells[6,5]:= 'BN';



        Qconsulta.DisableControls;
        with QCONSULTA do begin
        try
            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= QconsultaCOD_ART.Value;
                     Plantilla.cells[Linha, 2]:= QconsultaARTICULO.Value;
                     Plantilla.cells[Linha, 3]:= QconsultaCANTIDAD.Value ;
                     Plantilla.cells[Linha, 4]:= QconsultaTVENTA.Value;
                     Plantilla.cells[Linha, 5]:= QconsultaBN.Value;

                     Linha := Linha + 1;

                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            QCONSULTA.EnableControls;
            Plantilla := Unassigned;
           // ai.StopAnimation;
        end;
        end;


   end;





end;

procedure TFrmReporteVentaxVendedor.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
//             if op1.ItemIndex = 1  then
//    begin
//         CXGRID1.Height := 200;
//        CXGRID2.Visible := TRUE;
//
//
//       with DETALLE do
//         begin
//           close;
//           sql.Clear;
//           sql.Add('select b.nombre_ruta, b.id, c.nombre, Sum(a.montopago) from master_fact a');
//           sql.Add('left join ruta b On a.idruta = b.id');
//           SQL.Add('left join vendedores c On a.codven = c.id');
//           sql.Add('where A.fecha_fac >=:fecha1');
//           sql.Add('and a.fecha_fac <=:fecha2');
//           sql.Add('and a.situacion =:op1');
//           sql.Add('AND a.tipo =:op2');
//           sql.Add('AND A.MONTOPAGO >0');
//           SQL.Add('AND a.codven =:op3');
//           sql.Add('group by b.nombre_ruta, b.id, c.nombre');
//           Params[0].Value := inicio.Date;
//           Params[1].Value := fechafinal.Date;
//           params[2].Value := 'IMPRESA';
//           params[3].Value := 'Contado';
//           params[4].Value := qconsultaid.Value;
//
//           open;
//
//         end;
//    end;
end;

procedure TFrmReporteVentaxVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmReporteVentaxVendedor := nil;
Action := caFree;
end;

procedure TFrmReporteVentaxVendedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    pnlImpresion.Visible := false;
  end;
end;

procedure TFrmReporteVentaxVendedor.FormShow(Sender: TObject);
begin
pnlImpresion.Visible := false;
end;

end.
