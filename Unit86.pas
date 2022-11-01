unit Unit86;

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
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset, frxClass, cxTextEdit,
  Vcl.StdCtrls, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxGDIPlusClasses,
  cxImage, Vcl.ExtCtrls, dxSkinTheBezier;

type
  TFrmConsultaConduce = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Consulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ConsultaNO_FACT: TIntegerField;
    ConsultaFECHA_FAC: TDateField;
    ConsultaTIPO: TWideStringField;
    ConsultaCOD_CLIENT: TWideStringField;
    ConsultaCOD_EMP: TWideStringField;
    ConsultaNO_FACT1: TWideStringField;
    ConsultaMONTO: TFloatField;
    ConsultaHORA: TTimeField;
    ConsultaPOGXITBS: TFloatField;
    ConsultaTIPOPAGO: TWideStringField;
    ConsultaMONTOPAGO: TFloatField;
    ConsultaCONDICION: TWideStringField;
    ConsultaRENTA: TWideStringField;
    ConsultaCODIGO: TIntegerField;
    ConsultaTIPOITBS: TWideStringField;
    ConsultaVENDEDOR: TWideStringField;
    ConsultaSITUACION: TWideStringField;
    ConsultaCAJERO: TWideStringField;
    ConsultaNCF: TWideStringField;
    ConsultaRNC_CLIENTE: TWideStringField;
    ConsultaNCF1: TFloatField;
    ConsultaNOM_CLIENTE: TWideStringField;
    ConsultaDESCUENTO: TFloatField;
    ConsultaROTULO: TWideStringField;
    ConsultaNO_AUTORIZA_NCF: TFloatField;
    ConsultaMONTOFINANCIADO: TFloatField;
    ConsultaCUOTAS: TIntegerField;
    ConsultaINTERES: TFloatField;
    ConsultaDIRECCION: TWideStringField;
    ConsultaPAGADO: TFloatField;
    ConsultaLEYPROPINA: TFloatField;
    ConsultaCOMPROBANTE: TWideStringField;
    ConsultaTERMINAL: TWideStringField;
    ConsultaEFECTIVO: TFloatField;
    ConsultaDEVOLUCION1: TFloatField;
    ConsultaRESTANTE: TFloatField;
    ConsultaABONO: TFloatField;
    ConsultaCHEK: TWideStringField;
    ConsultaNO_RECIBO: TIntegerField;
    ConsultaPAGADOCXC: TFloatField;
    ConsultaMESES: TIntegerField;
    ConsultaDIAS: TIntegerField;
    ConsultaPENDIENTE: TFloatField;
    ConsultaESTADOPAGO: TWideStringField;
    ConsultaDEVOLUCION: TFloatField;
    ConsultaCONDICION_PAGO: TIntegerField;
    ConsultaCOMBO: TWideStringField;
    ConsultaCOBRADO: TIntegerField;
    ConsultaQUEES: TWideStringField;
    ConsultaUSUARIOID: TIntegerField;
    ConsultaCLIENTEID: TIntegerField;
    ConsultaCONDICIONVENTA: TWideStringField;
    ConsultaTIENDAID: TIntegerField;
    ConsultaPINREFERIDO: TWideStringField;
    ConsultaNC: TIntegerField;
    ConsultaCODVEN: TIntegerField;
    ConsultaCAJEROID: TIntegerField;
    ConsultaNOMBRECLIENTE_PRN: TWideStringField;
    ConsultaFECHA_FINAL: TDateField;
    ConsultaINTERES_DIARIO: TFloatField;
    ConsultaINTERES_ACUM: TFloatField;
    ConsultaDIAS_TRANS: TIntegerField;
    ConsultaFECHA_ULTIMO_PAGO: TDateField;
    ConsultaDIAS_ATRASO: TIntegerField;
    ConsultaINTERES_PAGADO: TFloatField;
    ConsultaCAPITAL_PAGADO: TFloatField;
    ConsultaDESC_CAPITAL: TFloatField;
    ConsultaIDDR: TIntegerField;
    ConsultaNOMBREDELDR: TWideStringField;
    ConsultaCAJA: TWideStringField;
    ConsultaNCF_NOMBRE: TWideStringField;
    ConsultaMORA: TFloatField;
    ConsultaNUMERO_FACTURA: TFloatField;
    ConsultaBONOS: TFloatField;
    ConsultaOBSERVACIONES: TWideMemoField;
    ConsultaIDRUTA: TIntegerField;
    ConsultaCAJAID: TIntegerField;
    ConsultaTCREDITO: TFloatField;
    ConsultaVEFECTIVA: TFloatField;
    ConsultaCLIENTENOMBRE: TWideStringField;
    ConsultaNOMBRES_EMP: TWideStringField;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn;
    Label32: TLabel;
    cxTextEdit2: TcxTextEdit;
    ConsultaFECHAVENCIMIENTO: TDateField;
    Panel11: TPanel;
    Label61: TLabel;
    LbModo: TLabel;
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaConduce: TFrmConsultaConduce;

implementation

{$R *.dfm}

uses Unit2, Unit59, tools;

procedure TFrmConsultaConduce.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

  NumeroFactura := 0;

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
    sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('and a.no_fact =:oppp');

        Params[0].Value := 'CONDUCE';
        Params[1].Value := 'ACTIVA';
        //    Params[3].Value := 'Contado';
        Params[2].Value := CONSULTAno_fact.Value;

        open;
  end;


   NumeroFactura := datos.FbqMaster_FactNO_FACT.Value;
//
//with datos.FbqMaster_Fact do
//    begin
//        Close;
//        sql.Clear;
//         sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj  from master_fact a');
//    sql.Add('left join cliente b On a.clienteid = b.codigo');
//    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
//    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
//    sql.Add('LEFT JOIN MUSUARIO E oN a.usuarioid = e.usuarioid');
//    sql.Add('left JOIN mtempleado F On e.empleadoid = f.cod_emp1');
//        sql.Add('where a.situacion  =:opcion2');
//        sql.Add('and a.condicion =:OPCION4');
//        sql.Add('and a.no_fact =:oppp');
//
//        Params[0].Value := 'CONDUCE';
//        Params[1].Value := 'ACTIVA';
//        //    Params[3].Value := 'Contado';
//        Params[2].Value := CONSULTAno_fact.Value;
//
//        open;
//    end;
//


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



     WITH FrmNFact_normal.ibqclientes DO
       BEGIN
         close;
         sql.Clear;
         sql.Add('select a.* from cliente a');
         sql.Add('where a.codigo =:opp');
         params[0].Value := datos.FbqMaster_Factclienteid.Value;
         open;

       END;


  FrmNFact_normal.BtnConduce.Enabled := false;
      FrmNFact_normal.cxButton4.Enabled := false;
      FrmNFact_normal.BTpedido.Enabled := false;

     FrmNFact_normal.b1.Enabled := false;
     FrmNFact_normal.b2.Enabled := False;
     FrmNFact_normal.b2.Caption := 'Cancelar';
     FrmNFact_normal.b3.Enabled := true;
     FrmNFact_normal.b4.Enabled := true;
     FrmNFact_normal.b6.Enabled := true;
      FrmNFact_normal.BtnPrintConduce.Enabled := true;

     FrmNFact_normal.b3.Caption := 'Enviar Pedido [F4]';
     FrmNFact_normal.cxButton5.Enabled := FALSE;


    // FrmNFact.b5.Enabled := false;

     FrmNFact_normal.Edit3.Text := 'MODI';
     FrmNFact_normal.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);
   //  FrmNFact_normal.BtBuscarPedido.Enabled := false;

     FrmNFact_normal.opmaster.Enabled := true;
     FrmNFact_normal.cxButton14.Enabled := true;
  //   FrmNFact_normal.opdetalle.Enabled := true;
     FrmNFact_normal.cxButton11.Enabled := true;


        FrmNFact_normal.BtBorrar.Enabled := true;
     FrmNFact_normal.b6.Enabled := true;
     FrmNFact_normal.b2.Enabled := true;
     FrmNFact_normal.cxButton12.Enabled := true;
     FrmNFact_normal.cxButton13.Enabled := true;
     FrmNFact_normal.cerrar.Enabled := false;
 //    FrmNfact.cxButton5.Enabled := false;
 close;


end;

procedure TFrmConsultaConduce.cxTextEdit2PropertiesChange(Sender: TObject);
begin
 with consulta do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and A.nombrecliente_prn like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
        Params[0].Value := 'CONDUCE';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        open;
    end;
end;

procedure TFrmConsultaConduce.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmConsultaConduce := nil;
end;

procedure TFrmConsultaConduce.FormShow(Sender: TObject);
begin
consulta.Close;
consulta.Open;
end;

end.
