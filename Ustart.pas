unit Ustart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ComCtrls, dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridChartView,
  cxGridDBChartView, ZAbstractRODataset, ZDataset, cxProgressBar,
  dxLayoutContainer, dxLayoutControl, AdvGaugeCircle, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, dxCore, cxDateUtils, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFStart = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxImage1: TcxImage;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel5: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    PCinicio: TcxPageControl;
    TInicio: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Shape3: TShape;
    QventasDiarias: TZReadOnlyQuery;
    QventasDiariasFTDFECHAX: TDateField;
    QventasDiariasFTNTOTALX: TIntegerField;
    DsVentasDiarias: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Qventasmeses: TZReadOnlyQuery;
    Dsventasmensuales: TDataSource;
    QventasmesesFTCNOMBREMES: TWideStringField;
    QventasmesesFTNMONTO: TSingleField;
    cxStyle2: TcxStyle;
    QVentasHoy: TZReadOnlyQuery;
    QVentasHoyFTDFECHAX: TDateField;
    QVentasHoyFTNTOTALX: TIntegerField;
    QmasVEndido: TZReadOnlyQuery;
    QmasVEndidoARTICULOID: TIntegerField;
    QmasVEndidoTITULOPRN: TWideStringField;
    QmasVEndidoTCANTIDAD: TExtendedField;
    QTopVentas: TDataSource;
    Pcentral: TPanel;
    Panel15: TPanel;
    Panel10: TPanel;
    Panel16: TPanel;
    Panel11: TPanel;
    Image1: TImage;
    Lbfacturas: TLabel;
    Label10: TLabel;
    Panel13: TPanel;
    Label12: TLabel;
    Image2: TImage;
    Panel17: TPanel;
    Image3: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Panel18: TPanel;
    Label15: TLabel;
    Image4: TImage;
    Panel12: TPanel;
    Panel14: TPanel;
    Label8: TLabel;
    Shape7: TShape;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1ARTICULOID: TcxGridDBColumn;
    cxGrid3DBTableView1TITULOPRN: TcxGridDBColumn;
    cxGrid3DBTableView1TCANTIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Panel7: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBChartView2: TcxGridDBChartView;
    cxGridDBChartView2DataGroup1: TcxGridDBChartDataGroup;
    cxGridDBChartView2Series1: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    Panel6: TPanel;
    Label6: TLabel;
    lbTotalAyer: TLabel;
    lbVentasHoy: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Shape4: TShape;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    PopupMenu1: TPopupMenu;
    C1: TMenuItem;
    C2: TMenuItem;
    Finicio: TcxDateEdit;
    Ffinal: TcxDateEdit;
    Label7: TLabel;
    Label16: TLabel;
    cxButton1: TcxButton;
    Shape5: TShape;
    Label4: TLabel;
    Label17: TLabel;
    Finicio01: TcxDateEdit;
    Label18: TLabel;
    Ffinal01: TcxDateEdit;
    cxButton2: TcxButton;
    QproductosVendidos: TZReadOnlyQuery;
    QproductosVendidosARTICULOID: TIntegerField;
    QproductosVendidosTITULOPRN: TWideStringField;
    QproductosVendidosTCANTIDAD: TExtendedField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsPvendidos: TDataSource;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    FactCount: TZReadOnlyQuery;
    FactCountCOUNT: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure upDashboard;
    { Public declarations }
  end;

var
  FStart: TFStart;

implementation

{$R *.dfm}

uses Unit2, Unit96, Unit125, Unit41, Unit45, Unit77, Unit15, Unit81, Unit58,
  UFinder, Unit60, FReporteRestaurant, UcajerroAnterior;

procedure TFStart.C1Click(Sender: TObject);
begin
if FrmComisionServicios = nil then
  begin
    FrmComisionServicios := tFrmComisionServicios.Create(self);
    FrmComisionServicios.showmodal;
  end;

end;

procedure TFStart.C2Click(Sender: TObject);
begin
if FrmComsionFactura = nil then
  begin
    FrmComsionFactura := TFrmComsionFactura.create(self);
    FrmComsionFactura.showmodal;
  end;
end;

procedure TFStart.cxButton1Click(Sender: TObject);
begin

      with QmasVEndido do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT first 10 a.articuloid, a.tituloprn, sum(a.cantidad) as Tcantidad  FROM detailfact a');
          sql.Add('left join Master_fact b On a.masterid = b.no_fact');
          sql.Add('where b.fecha_fac >=:fecha1 and b.fecha_fac <=:fecha2');
          sql.Add('GROUP BY a.articuloid, a.tituloprn');
          sql.Add('Order by SUM(a.CANTIDAD) desc');

          params[0].Value := Finicio.Date;
          params[1].Value := Ffinal.Date;

          open;
        end;
end;

procedure TFStart.cxButton2Click(Sender: TObject);
begin
if (Finicio01.Text ='') OR (Ffinal01.text ='') then
BEGIN
     ShowMessage(' Favor entra las fechas');
END ELSE BEGIN

if FrmFinder = nil then
  begin
    FrmFinder := tFrmFinder.create(self);
    FrmFinder.Edit2.Text := 'DASH';
    FrmFinder.showmodal;
  end;
END;
end;

procedure TFStart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FStart := nil;
end;

procedure TFStart.FormShow(Sender: TObject);
begin

if datos.ZUconfiguracionTerminal.Value = 'Touch' then
   begin
      SpeedButton10.Visible := true;

   end else begin
                    SpeedButton10.Visible := false;
            end;
upDashboard;
end;

procedure TFStart.SpeedButton10Click(Sender: TObject);
begin

     if FReporteResturant= nil then
      begin
         FReporteResturant := TFReporteResturant.Create(self);
         FReporteResturant.Showmodal;
       end;


end;

procedure TFStart.SpeedButton1Click(Sender: TObject);
begin
if FrmRVentas = nil then begin
FrmRVentas := tFrmRVentas.Create(self);
FrmRVentas.Caption := 'Reporte de Gastos x Fecha';
FrmRVentas.Edit1.Text := 'GASTOS';
FrmRVentas.OpCondicion.Visible := false;

FrmRVentas.showmodal;
end;
end;

procedure TFStart.SpeedButton2Click(Sender: TObject);
begin
if FrmRVFecha = nil then begin
                           FrmRVFecha := tFrmRVFecha.Create(self);
                         //  FrmRVFecha.Op_cat.visible := false;
                                FrmRVFecha.showmodal;
                         end;

end;

procedure TFStart.SpeedButton3Click(Sender: TObject);
begin

if FrmCajerosAnteriores = nil then
  begin
    FrmCajerosAnteriores := tFrmCajerosAnteriores.Create(self);
    FrmCajerosAnteriores.ShowModal;
  end;




//if frmcuadre_caja = nil then
//  begin
//    frmcuadre_caja := tfrmcuadre_caja.Create(self);
//    frmcuadre_caja.ShowModal;
//  end;
end;

procedure TFStart.SpeedButton4Click(Sender: TObject);
begin
if FrmRVentas = nil then
   begin
     FrmRVentas := tFrmRVentas.Create(self);
      FrmRVentas.Caption := 'Reporte de Ventas x Fecha';
      FrmRVentas.Edit1.Text := 'VENTAS';
      FrmRventas.OpCondicion.Visible := true;
      FrmRVentas.showmodal;
   end;
end;

procedure TFStart.SpeedButton5Click(Sender: TObject);
begin
if FrmReporteVentaxVendedor = nil then
  begin
    FrmReporteVentaxVendedor := tFrmReporteVentaxVendedor.Create(self);
    FrmReporteVentaxVendedor.ShowModal;
  end;
end;

procedure TFStart.SpeedButton6Click(Sender: TObject);
begin
  FRProductosVendidos.ShowModal;
end;

procedure TFStart.SpeedButton7Click(Sender: TObject);
begin
if FrmConsultaArticulos = nil then
  begin
    FrmConsultaArticulos := tFrmConsultaArticulos.Create(self);
    FrmConsultaArticulos.ShowModal;
  end;
end;

procedure TFStart.SpeedButton8Click(Sender: TObject);
begin
if FrmPedido = nil then
  begin
    FrmPedido  := tFrmPedido.Create(Self);
    FrmPedido.ShowModal;
  end;
end;

procedure TFStart.SpeedButton9Click(Sender: TObject);
begin
if FrmComisionServicios = nil then
  begin
    FrmComisionServicios := tFrmComisionServicios.Create(self);
    FrmComisionServicios.ShowModal;
  end;
end;

procedure TFStart.upDashboard;
var

nDias:tdate;
myYear, myMonth, myDay : Word;
begin
nDias:=Now - 3 ;
                with FactCount do
                   begin
                     close;
                     sql.Clear;
                     sql.add('select count(*)  from master_fact a');
                     sql.add('left join cliente b On a.clienteid = b.codigo');
                     sql.add('left join musuario c On a.usuarioid = c.usuarioid');
                     sql.add('left join mtempleado d On c.empleadoid = d.cod_emp1');
                     sql.add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
                     sql.add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
                     sql.add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
                     sql.add('left JOIN mtempleado h On a.codven = h.cod_emp1');
                     sql.Add('WHERE (a.situacion=''HOLD'')');
                     sql.Add('OR (a.situacion=''ENVIADA'')');
                     sql.Add('and a.fecha_fac =:fecha');
                     
                     params[0].value := now();
                     open;

                   end;


                 label13.Caption := IntTostr(FactCountCOUNT.Value);


                  with FactCount do
                   begin
                     close;
                     sql.Clear;
                     sql.add('select count(*)  from master_fact a');
                     sql.add('left join cliente b On a.clienteid = b.codigo');
                     sql.add('left join musuario c On a.usuarioid = c.usuarioid');
                     sql.add('left join mtempleado d On c.empleadoid = d.cod_emp1');
                     sql.add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
                     sql.add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
                     sql.add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
                     sql.add('left JOIN mtempleado h On a.codven = h.cod_emp1');
                     sql.Add('WHERE a.situacion=''IMPRESA''');
                     sql.Add('and a.fecha_fac =:fecha');

                     params[0].value := now();
                     open;

                   end;


                 Lbfacturas.Caption := IntTostr(FactCountCOUNT.Value);


//label7.Caption := 'Ventas realizadas en los ultimos '+IntToStr(datos.ZUconfiguracionDSBDIASVENTAS.Value)+' Dias';

WITH QventasDiarias DO
  begin
    close;
    sql.Clear;
    sql.Add('select * from ventas_diarias( (CURRENT_TIMESTAMP)-4, CURRENT_TIMESTAMP )');
//    params[0].Value := '22.05.2020';//DateToStr(nDias);
//    params[1].value := '26.05.2020';// DateToStr(now());
    open;


  end;
  PCinicio.Properties.HideTabs :=  true;

   DecodeDate(NOW(), myYear, myMonth, myDay);
  with qventasmeses do
    begin
      close;
      sql.clear;
      sql.Add('select compras_por_mes.ftcnombremes,  cast(compras_por_mes.ftnmonto as float) as ftnmonto from compras_por_mes(:ANNO,0)');
//      sql.Add('order by ftcnombremes asc ');
      PARAMS[0].Value := myYear;
      open;
  end;

    with QVentasHoy do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT * FROM  VENTAS_DIARIAS(current_date, current_date)');

        open;
      end;



      lbVentasHoy.Caption := FormatCurr('RD$ #,##0.00', QVentasHoyFTNTOTALX.Value);


       with QVentasHoy do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT * FROM  VENTAS_DIARIAS(current_date-1, current_date-1)');

        open;
      end;



      lbtotalayer.Caption := FormatCurr('RD$ #,##0.00', QVentasHoyFTNTOTALX.Value);

      with QmasVEndido do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT first 10 a.articuloid, a.tituloprn, sum(a.cantidad) as Tcantidad  FROM detailfact a');
          sql.Add('GROUP BY a.articuloid, a.tituloprn');
          sql.Add('Order by SUM(a.CANTIDAD) desc');
          open;
        end;
end;

end.
