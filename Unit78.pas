unit Unit78;

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
  dxSkinXmas2008Blue, cxGroupBox, cxRadioGroup, Vcl.ExtCtrls, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.Menus, cxButtons, Data.DB, ZAbstractRODataset, ZDataset,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, frxClass,
  frxDBSet, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmRCompraXClientes = class(TForm)
    Panel1: TPanel;
    op1: TcxRadioGroup;
    fechafinal: TcxDateEdit;
    inicio: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Qconsulta: TZReadOnlyQuery;
    DETALLE: TZReadOnlyQuery;
    DsDetalle: TDataSource;
    DsConsulta: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1CLIENTEID: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid1DBTableView1SUM: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1ARTICULOID: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1CANT: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    Config: TfrxDBDataset;
    PRNDetalle: TfrxDBDataset;
    consulta: TfrxDBDataset;
    reporte2: TfrxReport;
    reporte1: TfrxReport;
    Edit1: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    QconsultaCLIENTEID: TIntegerField;
    QconsultaNOMBRES: TWideStringField;
    QconsultaSUM: TExtendedField;
    DETALLEARTICULOID: TIntegerField;
    DETALLEARTICULO: TWideStringField;
    DETALLECANT: TExtendedField;
    DETALLETOTAL: TExtendedField;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Edit2: TEdit;
    Label4: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRCompraXClientes: TFrmRCompraXClientes;

implementation

{$R *.dfm}

uses UInicio, UBuscaCliente;

procedure TFrmRCompraXClientes.cxButton1Click(Sender: TObject);
begin
if op1.ItemIndex = 0  then
    begin
        CXGRID1.Height := 436;
        CXGRID2.Visible := FALSE;
       with qconsulta do
         begin
           close;
           sql.Clear;
           sql.Add('select a.clienteid, b.nombres, sum(a.montopago) from master_fact a');
           sql.Add('left join cliente b On a.clienteid = b.codigo');
           sql.Add('where A.fecha_fac >=:fecha1');
           sql.Add('and a.fecha_fac <=:fecha2');
           sql.Add('and a.situacion =:op1');
          // sql.Add('AND a.tipo =:op2');
           sql.Add('AND A.MONTOPAGO >0');

           sql.Add('group by a.clienteid, b.nombres');

           Params[0].Value := inicio.Date;
           Params[1].Value := fechafinal.Date;
           params[2].Value := 'IMPRESA';
         //  params[3].Value := 'Contado';
           open;

         end;
    end;

    if op1.ItemIndex = 1  then
    begin
         CXGRID1.Height := 227;
        CXGRID2.Visible := TRUE;

       with qconsulta do
         begin
           close;
           sql.Clear;
           sql.Add('select a.clienteid, b.nombres, sum(a.montopago) from master_fact a');
           sql.Add('left join cliente b On a.clienteid = b.codigo');
           sql.Add('where A.fecha_fac >=:fecha1');
           sql.Add('and a.fecha_fac <=:fecha2');
           sql.Add('and a.situacion =:op1');
          // sql.Add('AND a.tipo =:op2');
           sql.Add('AND A.MONTOPAGO >0');

           sql.Add('group by a.clienteid, b.nombres');

           Params[0].Value := inicio.Date;
           Params[1].Value := fechafinal.Date;
           params[2].Value := 'IMPRESA';
          // params[3].Value := 'Contado';
           open;

         end;


       with DETALLE do
         begin
           close;
           sql.Clear;
           sql.Add('select a.articuloid, b.articulo, Sum(a.cantidad) Cant, Sum(a.total) total from detailfact a');
           sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
           sql.Add('left join master_fact c On a.masterid = c.no_fact');
           sql.Add('where c.clienteid  =:op01');
           sql.Add('and c.fecha_fac >=:fecha1');
           sql.Add('and c.fecha_fac <=:fecha2');
           sql.Add('and c.situacion =:op1');
          // sql.Add('AND c.tipo =:op2');
           sql.Add('AND c.MONTOPAGO >0');

           sql.Add('group by a.articuloid, b.articulo');
           Params[0].Value := qconsultaclienteid.Value;
           Params[1].Value := inicio.Date;
           Params[2].Value := fechafinal.Date;
           params[3].Value := 'IMPRESA';
         //  params[4].Value := 'Contado';


           open;

         end;
    end;


  if op1.ItemIndex = 2  then
    begin
         CXGRID1.Height := 227;
        CXGRID2.Visible := TRUE;

       with qconsulta do
         begin
           close;
           sql.Clear;
           sql.Add('select a.clienteid, b.nombres, sum(a.montopago) from master_fact a');
           sql.Add('left join cliente b On a.clienteid = b.codigo');
           sql.Add('where A.fecha_fac >=:fecha1');
           sql.Add('and a.fecha_fac <=:fecha2');
           sql.Add('and a.situacion =:op1');
          // sql.Add('AND a.tipo =:op2');
           sql.Add('AND A.MONTOPAGO >0');

           sql.Add('group by a.clienteid, b.nombres');

           Params[0].Value := inicio.Date;
           Params[1].Value := fechafinal.Date;
           params[2].Value := 'IMPRESA';
          // params[3].Value := 'Contado';
           open;

         end;


       with DETALLE do
         begin
           close;
           sql.Clear;
           sql.Add('select a.articuloid, b.articulo, Sum(a.cantidad) Cant, Sum(a.total) total from detailfact a');
           sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
           sql.Add('left join master_fact c On a.masterid = c.no_fact');
           sql.Add('where c.clienteid  =:op01');
           sql.Add('and c.fecha_fac >=:fecha1');
           sql.Add('and c.fecha_fac <=:fecha2');
           sql.Add('and c.situacion =:op1');
          // sql.Add('AND c.tipo =:op2');
           sql.Add('AND c.MONTOPAGO >0');

           sql.Add('group by a.articuloid, b.articulo');
           Params[0].Value := qconsultaclienteid.Value;
           Params[1].Value := inicio.Date;
           Params[2].Value := fechafinal.Date;
           params[3].Value := 'IMPRESA';
         //  params[4].Value := 'Contado';


           open;

         end;
    end;



    cxButton2.Enabled := true;


end;

procedure TFrmRCompraXClientes.cxButton2Click(Sender: TObject);
begin

if op1.ItemIndex  =0 then begin

            reporte2.variables['fecha1']:=quotedstr(inicio.Text);
         //    reporte1.variables['Empleado']:=quotedstr('Reporte de Articulos Vendidos x Fecha');
             reporte2.variables['fecha2']:=quotedstr(fechafinal.Text);

             reporte2.PrepareReport(true);
             reporte2.ShowPreparedReport;
end;


if op1.ItemIndex  =1 then begin

            reporte1.variables['fecha1']:=quotedstr(inicio.Text);
         //    reporte1.variables['Empleado']:=quotedstr('Reporte de Articulos Vendidos x Fecha');
             reporte1.variables['fecha2']:=quotedstr(fechafinal.Text);

             reporte1.PrepareReport(true);
             reporte1.ShowPreparedReport;
end;


if op1.ItemIndex  =2 then begin

            reporte1.variables['fecha1']:=quotedstr(inicio.Text);
         //    reporte1.variables['Empleado']:=quotedstr('Reporte de Articulos Vendidos x Fecha');
             reporte1.variables['fecha2']:=quotedstr(fechafinal.Text);

             reporte1.PrepareReport(true);
             reporte1.ShowPreparedReport;
end;




end;

procedure TFrmRCompraXClientes.cxButton3Click(Sender: TObject);
begin

  if FrmBuscaCliente = nil then
    begin
      FrmBuscaCliente := tFrmBuscaCliente.Create(self);
      FrmBuscaCliente.Edit1.Text := 'CONSULTA1';
      FrmBuscaCliente.ShowModal;
    end;




end;

procedure TFrmRCompraXClientes.cxButton4Click(Sender: TObject);
begin
edit1.Clear;
end;

procedure TFrmRCompraXClientes.cxGrid1DBTableView1DblClick(Sender: TObject);
begin


           with DETALLE do
         begin
           close;
           sql.Clear;
           sql.Add('select a.articuloid, b.articulo, Sum(a.cantidad) Cant, Sum(a.total) total from detailfact a');
           sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
           sql.Add('left join master_fact c On a.masterid = c.no_fact');
           sql.Add('where c.clienteid  =:op01');
           sql.Add('and c.fecha_fac >=:fecha1');
           sql.Add('and c.fecha_fac <=:fecha2');
           sql.Add('and c.situacion =:op1');
           sql.Add('AND c.tipo =:op2');
           sql.Add('AND c.MONTOPAGO >0');

           sql.Add('group by a.articuloid, b.articulo');
           Params[0].Value := qconsultaclienteid.Value;
           Params[1].Value := inicio.Date;
           Params[2].Value := fechafinal.Date;
           params[3].Value := 'IMPRESA';
           params[4].Value := 'Contado';


           open;

         end;
    end;


procedure TFrmRCompraXClientes.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  label4.Caption := qconsultanombres.Value;
  panel2.Visible := false;
  edit1.Clear;

end;

procedure TFrmRCompraXClientes.Edit1Change(Sender: TObject);
begin

 with qconsulta do
         begin
           close;
           sql.Clear;
           sql.Add('select a.clienteid, b.nombres, sum(a.montopago) from master_fact a');
           sql.Add('left join cliente b On a.clienteid = b.codigo');
           sql.Add('where A.fecha_fac >=:fecha1');
           sql.Add('and a.fecha_fac <=:fecha2');
           sql.Add('and a.situacion =:op1');
           sql.Add('AND a.tipo =:op2');
           sql.Add('AND A.MONTOPAGO >0');
           sql.Add('and b.nombres like '+#39+'%'+edit1.Text+'%'+#39);

           sql.Add('group by a.clienteid, b.nombres');

           Params[0].Value := inicio.Date;
           Params[1].Value := fechafinal.Date;
           params[2].Value := 'IMPRESA';
           params[3].Value := 'Contado';
           open;

         end;

          with DETALLE do
         begin
           close;
           sql.Clear;
           sql.Add('select a.articuloid, b.articulo, Sum(a.cantidad) Cant, Sum(a.total) total from detailfact a');
           sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
           sql.Add('left join master_fact c On a.masterid = c.no_fact');
           sql.Add('where c.clienteid  =:op01');
           sql.Add('and c.fecha_fac >=:fecha1');
           sql.Add('and c.fecha_fac <=:fecha2');
           sql.Add('and c.situacion =:op1');
           sql.Add('AND c.tipo =:op2');
           sql.Add('AND c.MONTOPAGO >0');

           sql.Add('group by a.articuloid, b.articulo');
           Params[0].Value := qconsultaclienteid.Value;
           Params[1].Value := inicio.Date;
           Params[2].Value := fechafinal.Date;
           params[3].Value := 'IMPRESA';
           params[4].Value := 'Contado';


           open;

         end;

end;

procedure TFrmRCompraXClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmRCompraXClientes := nil;
Action := caFree;
end;

procedure TFrmRCompraXClientes.op1Click(Sender: TObject);
begin
if op1.ItemIndex = 0 then
  begin
    edit1.Enabled := false;
    edit1.Color  := clCream;
    cxButton1.Enabled := true;
  end;
  if op1.ItemIndex = 1 then
  begin
    edit1.Enabled := false;
    edit1.Color  := clCream;
    cxButton1.Enabled := true;

  end;

  if op1.ItemIndex = 2 then
  begin
    edit1.Enabled := true;
    edit1.Color  := clWhite;
    edit1.SetFocus;
    cxButton1.Enabled := false;
     cxButton2.Enabled := true;

  end;
end;

end.
