unit Unit92;

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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  Vcl.ExtCtrls, Data.DB, ZAbstractRODataset, ZDataset, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGroupBox, cxRadioGroup, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, frxClass, frxDBSet, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxCalc, cxSpinEdit, ZSqlUpdate, ZAbstractDataset,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, cHash;

type
  TFrmConsultaPagosxClientes = class(TForm)
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesCODIGO: TIntegerField;
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
    IbqClientesCOMISION: TFloatField;
    IbqClientesNUMEROPIN: TWideStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    cod: TcxTextEdit;
    cxButton3: TcxButton;
    caj: TcxTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    OpBuscarCLiente: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Edit1: TEdit;
    Edit4: TEdit;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Consulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    ConsultaNO_RECIBO: TWideStringField;
    ConsultaDESCRIPCION: TWideStringField;
    ConsultaMONTO: TFloatField;
    ConsultaLETRAS1: TWideStringField;
    ConsultaFECHA: TDateField;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NO_RECIBO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1MONTO: TcxGridDBColumn;
    cxGrid1DBTableView1LETRAS1: TcxGridDBColumn;
    DsqCliente: TDataSource;
    cxButton2: TcxButton;
    Reporte: TfrxReport;
    FrConsutal: TfrxDBDataset;
    Config: TfrxDBDataset;
    cxButton4: TcxButton;
    master_cobro: TfrxDBDataset;
    print0: TfrxReport;
    cxButton5: TcxButton;
    Panel2: TPanel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label7: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label9: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxButton6: TcxButton;
    detalle: TZReadOnlyQuery;
    detalleNO_RECIBO: TIntegerField;
    detalleNO_FACT: TIntegerField;
    detalleFECHA: TDateField;
    detalleMONTO: TFloatField;
    detalleABONO: TFloatField;
    detallePENDIENTE: TFloatField;
    DsDetalle: TDataSource;
    ConsultaNO_RECIBO1: TIntegerField;
    No: TcxDBSpinEdit;
    actualizar: TZReadOnlyQuery;
    DateField1: TDateField;
    cxTextEdit1: TcxTextEdit;
    Label10: TLabel;
    cxButton7: TcxButton;
    Panel3: TPanel;
    inicio: TcxDateEdit;
    Label11: TLabel;
    fechafinal: TcxDateEdit;
    Label12: TLabel;
    cxButton8: TcxButton;
    ReporteG: TfrxReport;
    IbqClientesNOMBRES: TWideStringField;
    ConsultaNOMBRES: TWideStringField;
    PUpdate: TZReadOnlyQuery;
    procedure cxButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaPagosxClientes: TFrmConsultaPagosxClientes;

implementation

{$R *.dfm}

uses Unit2, Unit63, tools, UInicio;

procedure TFrmConsultaPagosxClientes.cxButton1Click(Sender: TObject);
begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.fecha , B.nombres, a.no_recibo, a.descripcion, a.monto, a.letras1, a.no_recibo1  from RECIBO_PAGO a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('where clienteid =:opp');
    sql.Add('and a.cod_cliente is null');
    params[0].Value := StrToInt(cod.Text);
    open;

   end;
end;

procedure TFrmConsultaPagosxClientes.cxButton2Click(Sender: TObject);
begin
Reporte.PrepareReport(true);
Reporte.ShowPreparedReport;

end;

procedure TFrmConsultaPagosxClientes.cxButton3Click(Sender: TObject);
begin
ibqclientes.Close;
ibqclientes.Open;
Opbuscarcliente.Visible := true;
edit1.SetFocus;
end;

procedure TFrmConsultaPagosxClientes.cxButton4Click(Sender: TObject);
begin
print0.PrepareReport(true);
print0.ShowPreparedReport;
end;

procedure TFrmConsultaPagosxClientes.cxButton5Click(Sender: TObject);
begin
panel2.Visible := true;
cxButton6.Enabled := false;
cxTextEdit1.SetFocus;
end;

procedure TFrmConsultaPagosxClientes.cxButton6Click(Sender: TObject);
begin

with detalle do
   begin
     close;
     sql.Clear;
     sql.Add('select * from DETALLE_PAGO');
     sql.Add('where no_recibo =:norecibo');
     sql.Add('order by fecha');
     Params[0].Value := no.Value;
     open;
   end;


   with detalle do
        begin
           first;
           while not eof do
           begin

                        with actualizar do
                         begin
                           close;
                           sql.Clear;
                           sql.Add('execute procedure cxc_retornarpagos(:no_recibo,:abono,:no_fact)');
                           params[0].Value := detalleNO_RECIBO.Value;
                           params[1].Value := detalleabono.Value;
                           params[2].Value := detalleno_fact.Value;

                           ExecSQL;
                           end;


            next;
         END;
        end;


         with datos.Zrecibo_pago do
           begin
             close;
             sql.Clear;
             sql.Add('select A.*, b.nombres Nombre_Cliente from recibo_pago A');
             sql.Add('left join cliente b On a.clienteid = b.codigo');
             sql.Add('where a.no_recibo1 =:pp');
             params[0].Value := ConsultaNO_RECIBO1.Value;
             open;
           end;


           datos.Zrecibo_pago.Edit;
           datos.Zrecibo_pagoCOD_CLIENTE.Value := '2';
           datos.Zrecibo_pago.ApplyUpdates;


       datos.Data.Commit;
       panel2.Visible := false;


    with consulta do
          begin
            close;
            sql.Clear;
            sql.Add('select a.fecha , B.nombres, a.no_recibo, a.descripcion, a.monto, a.letras1, a.no_recibo1  from RECIBO_PAGO a');
            sql.Add('left join cliente b On a.clienteid = b.codigo');
            sql.Add('where a.cod_cliente is null');
            open;

           end;
end;

procedure TFrmConsultaPagosxClientes.cxButton7Click(Sender: TObject);
begin
panel3.Visible := true;
end;

procedure TFrmConsultaPagosxClientes.cxButton8Click(Sender: TObject);
begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.fecha , B.nombres, a.no_recibo, a.descripcion, a.monto, a.letras1, a.no_recibo1  from RECIBO_PAGO a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('where a.cod_cliente is null');
    sql.Add('and a.fecha >=:fecha1');
    sql.Add('and a.fecha <=:fecha2');
    sql.add('and a.monto > 0.00');
    Params[0].Value := inicio.Date;
    Params[1].Value := fechafinal.Date;
    open;

   end;


   Reporteg.PrepareReport(true);
   Reporteg.ShowPreparedReport;
   Panel3.Visible := false;
end;

procedure TFrmConsultaPagosxClientes.cxGridDBTableView1DblClick(
  Sender: TObject);
begin

cod.text :=IntToStr(ibqclientescodigo.Value);
caj.text := ibqclientesnombres.Value;
Opbuscarcliente.Visible := false;

end;

procedure TFrmConsultaPagosxClientes.cxTextEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  VAR
CPASS : STRING;
begin
  CPASS := MD5DigestToHex(CalcMD5(trim(cxTextEdit1.Text)));


if key = vk_return then
begin
datos.ZUconfiguracion.Open;
  if cpass = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
     begin
        cxButton6.Enabled := true;
          cxButton6.Click;;
     end else begin
          MsgError('Usted no esta autorizado para relaizar esa operación'#13+
      	               'Favor consultar con el Administrador');
          cxTextEdit1.Clear;
             cxButton6.Enabled := false;
          panel2.Visible := false;

     end;

end;
end;

procedure TFrmConsultaPagosxClientes.Edit1Change(Sender: TObject);
begin

with ibqclientes do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cliente');
    sql.Add('where nombres like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
 

end;

procedure TFrmConsultaPagosxClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmConsultaPagosxClientes := nil;
Action := caFree;
end;

procedure TFrmConsultaPagosxClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    OpBuscarCLiente.Visible := false;
    Panel3.Visible := false;
  end;
end;

procedure TFrmConsultaPagosxClientes.FormShow(Sender: TObject);
begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.fecha , B.nombres, a.no_recibo, a.descripcion, a.monto, a.letras1, a.no_recibo1  from RECIBO_PAGO a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('where a.cod_cliente is null');
    open;

   end;
end;

end.
