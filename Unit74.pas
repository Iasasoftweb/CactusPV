unit Unit74;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, unit2, ZAbstractRODataset, ZDataset, cxContainer, Vcl.StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, ZSqlUpdate, ZAbstractDataset, Vcl.Menus,
  cxButtons, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmBuscarPedido = class(TForm)
    DsConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid1DBTableView1MONTO: TcxGridDBColumn;
    cxGrid1DBTableView1POGXITBS: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    QRuta: TZReadOnlyQuery;
    QRutaID: TIntegerField;
    QRutaNOMBRE_RUTA: TWideStringField;
    QRutaIDVENDEDOR: TIntegerField;
    QRutaNOMBRE: TWideStringField;
    DsRuta: TDataSource;
    Label42: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    consulta: TZQuery;
    FRMaster_Fact: TZUpdateSQL;
    consultaNO_FACT: TIntegerField;
    consultaFECHA_FAC: TDateField;
    consultaTIPO: TWideStringField;
    consultaCOD_CLIENT: TWideStringField;
    consultaCOD_EMP: TWideStringField;
    consultaNO_FACT1: TWideStringField;
    consultaMONTO: TFloatField;
    consultaHORA: TTimeField;
    consultaPOGXITBS: TFloatField;
    consultaTIPOPAGO: TWideStringField;
    consultaMONTOPAGO: TFloatField;
    consultaCONDICION: TWideStringField;
    consultaRENTA: TWideStringField;
    consultaCODIGO: TIntegerField;
    consultaTIPOITBS: TWideStringField;
    consultaVENDEDOR: TWideStringField;
    consultaSITUACION: TWideStringField;
    consultaCAJERO: TWideStringField;
    consultaNCF: TWideStringField;
    consultaRNC_CLIENTE: TWideStringField;
    consultaNCF1: TFloatField;
    consultaNOM_CLIENTE: TWideStringField;
    consultaDESCUENTO: TFloatField;
    consultaROTULO: TWideStringField;
    consultaNO_AUTORIZA_NCF: TFloatField;
    consultaMONTOFINANCIADO: TFloatField;
    consultaCUOTAS: TIntegerField;
    consultaINTERES: TFloatField;
    consultaDIRECCION: TWideStringField;
    consultaPAGADO: TFloatField;
    consultaLEYPROPINA: TFloatField;
    consultaCOMPROBANTE: TWideStringField;
    consultaTERMINAL: TWideStringField;
    consultaEFECTIVO: TFloatField;
    consultaDEVOLUCION1: TFloatField;
    consultaRESTANTE: TFloatField;
    consultaABONO: TFloatField;
    consultaCHEK: TWideStringField;
    consultaNO_RECIBO: TIntegerField;
    consultaPAGADOCXC: TFloatField;
    consultaMESES: TIntegerField;
    consultaDIAS: TIntegerField;
    consultaPENDIENTE: TFloatField;
    consultaESTADOPAGO: TWideStringField;
    consultaDEVOLUCION: TFloatField;
    consultaCONDICION_PAGO: TIntegerField;
    consultaCOMBO: TWideStringField;
    consultaCOBRADO: TIntegerField;
    consultaQUEES: TWideStringField;
    consultaUSUARIOID: TIntegerField;
    consultaCLIENTEID: TIntegerField;
    consultaCONDICIONVENTA: TWideStringField;
    consultaTIENDAID: TIntegerField;
    consultaPINREFERIDO: TWideStringField;
    consultaNC: TIntegerField;
    consultaCODVEN: TIntegerField;
    consultaCAJEROID: TIntegerField;
    consultaNOMBRECLIENTE_PRN: TWideStringField;
    consultaFECHA_FINAL: TDateField;
    consultaINTERES_DIARIO: TFloatField;
    consultaINTERES_ACUM: TFloatField;
    consultaDIAS_TRANS: TIntegerField;
    consultaFECHA_ULTIMO_PAGO: TDateField;
    consultaDIAS_ATRASO: TIntegerField;
    consultaINTERES_PAGADO: TFloatField;
    consultaCAPITAL_PAGADO: TFloatField;
    consultaDESC_CAPITAL: TFloatField;
    consultaIDDR: TIntegerField;
    consultaNOMBREDELDR: TWideStringField;
    consultaCAJA: TWideStringField;
    consultaNCF_NOMBRE: TWideStringField;
    consultaMORA: TFloatField;
    consultaNUMERO_FACTURA: TFloatField;
    consultaBONOS: TFloatField;
    consultaOBSERVACIONES: TWideMemoField;
    consultaIDRUTA: TIntegerField;
    consultaCAJAID: TIntegerField;
    consultaCLIENTENOMBRE: TWideStringField;
    consultaNOMBRES_EMP: TWideStringField;
    consultaNOMBRE_RUTA: TWideStringField;
    consultaVENDEDOR_1: TWideStringField;
    cxButton1: TcxButton;
    Actualizar: TZReadOnlyQuery;
    cxButton2: TcxButton;
    NUMERO1: TZQuery;
    NUMERO1GEN_ID: TLargeintField;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesNOMBRES: TWideStringField;
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
    Qfraccionado: TZReadOnlyQuery;
    QfraccionadoID: TIntegerField;
    QfraccionadoCOD_ARTI: TIntegerField;
    QfraccionadoCANTI: TFloatField;
    QfraccionadoUNIDAD: TWideStringField;
    QfraccionadoCOD_PART: TFloatField;
    QfraccionadoID_UNIDAD: TIntegerField;
    QfraccionadoPRECIO1: TFloatField;
    QfraccionadoPRECIO2: TFloatField;
    QfraccionadoDESCRIPCION: TWideStringField;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    consultaFECHAVENCIMIENTO: TDateField;
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscarPedido: TFrmBuscarPedido;

implementation

{$R *.dfm}

uses Unit59, tools;

procedure TFrmBuscarPedido.cxButton1Click(Sender: TObject);
begin
if cxLookupComboBox1.Text <>'' then begin

with consulta do
  begin
    first;

    while not eof do
     begin
        with actualizar do
           begin
             close;
             sql.Clear;
             sql.Add('update master_fact set iddr=1');
             sql.Add('where no_fact=:op1');
             params[0].Value := consultano_fact.Value;
             ExecSQL;
           end;
         next;
     end;
  end;

with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, E.nombre_ruta, F.nombre VENDEDOR from master_fact a');
    sql.Add('LEFT join cliente b On a.clienteid = b.codigo');
    sql.Add('LEFT join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('LEFT join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('LEFT JOIN ruta e ON A.idruta = E.id');
    sql.Add('LEFT JOIN VENDEDORES F on E.idvendedor = F.id');
    sql.Add('WHERE a.situacion=''PEDIDO''');
    sql.Add('AND a.rotulo =''PEDIDO''');
    sql.Add('and e.nombre_ruta =:ppp');
    params[0].Value := cxLookupComboBox1.Text;
    open;
  end;

  cxbutton2.Enabled := true;
end else begin
  Showmessage(' Favor Seleccione la Ruta ');
  cxLookupComboBox1.SetFocus;
end;

end;

procedure TFrmBuscarPedido.cxButton2Click(Sender: TObject);
var
canfra : double;
cero1 : string;
nume : integer;
men_pie : string;
begin
with consulta do
  begin
    first;

    while not eof do
     begin

        if consultaiddr.Value = 1 then
           begin
               with datos.FbqMaster_Fact do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion, b.telefono, b.condicion  from master_fact a');
                        sql.Add('left join cliente b On a.clienteid = b.codigo');
                        sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
                        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
                        sql.Add('where a.no_fact =:op1');
                        params[0].Value := consultano_fact.Value;
                        open;
                      end;


                      datos.FbqMaster_Fact.Edit;

                      datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
                      datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
                      datos.FbqMaster_FactEFECTIVO.Value       := DATOS.FbqMaster_FactMONTOPAGO.Value;
                      datos.FbqMaster_FactIDDR.Value            := 2;
                      datos.FbqMaster_FactESTADOPAGO.Value     := 'EFECTIVO';


                      datos.FbqMaster_FactBONOS.Value := 0.00;

                      if DATOS.FBQMASTER_FACTTIPO.Value = 'Contado' then
                        begin
                          datos.FbqMaster_Factquees.Value := 'NO';
                        end;


                      if DATOS.FBQMASTER_FACTTIPO.Value = 'CREDITO' then
                        begin
                          datos.FbqMaster_Factquees.Value := 'PENDIENTE';
                        end;



                        with numero1 do
                              begin
                                 close;
                                 sql.Clear;
                                 sql.Add('select gen_id(numero_factura, 1) from RDB$DATABASE');
                                 open;
                              end;



                            datos.FbqMaster_FactNUMERO_FACTURA.Value := numero1gen_id.Value;
                            datos.fbqMaster_factsituacion.text       := 'IMPRESA';
                            datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
                            DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';
                            datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
                            datos.FbqMaster_FactABONO.Value          := 0.00;
                            datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
                            datos.FbqMaster_FactFECHA_FAC.Value       := now();








                           
                      //datos.ZInventario.ApplyUpdates;

                 next;
        end;
     end;


                      DATOS.FbqMaster_Fact.ApplyUpdates;
                      datos.FbqMaster_Fact.Close;
                      DATOS.Zdetalle.Close;
                      datos.data.Commit;

                      with consulta do
                            begin
                              close;
                              sql.Clear;
                              sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, E.nombre_ruta, F.nombre VENDEDOR from master_fact a');
                              sql.Add('LEFT join cliente b On a.clienteid = b.codigo');
                              sql.Add('LEFT join musuario c On a.usuarioid = c.usuarioid');
                              sql.Add('LEFT join mtempleado d On c.empleadoid = d.cod_emp');
                              sql.Add('LEFT JOIN ruta e ON A.idruta = E.id');
                              sql.Add('LEFT JOIN VENDEDORES F on E.idvendedor = F.id');
                              sql.Add('WHERE a.situacion=''PEDIDO''');
                              sql.Add('AND a.rotulo =''PEDIDO''');
                              sql.Add('and e.nombre_ruta =:ppp');
                              params[0].Value := cxLookupComboBox1.Text;
                              open;
                            end;

  end;





end;

procedure TFrmBuscarPedido.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
with datos.FbqMaster_Fact do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('AND A.tipo =:opcion6');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'PEDIDO';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'PEDIDO';
        Params[3].Value := 'Contado';
        Params[4].Value := consultaNO_FACT.Value;

        open;
    end;


   with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;




     FrmNFact_normal.ibqclientes.Open;
     FrmNFact_normal.b1.Enabled := false;
     FrmNFact_normal.b2.Enabled := true;
     FrmNFact_normal.b2.Caption := 'Cancelar Pedido';
     FrmNFact_normal.b3.Enabled := true;
     FrmNFact_normal.b4.Enabled := false;
     FrmNFact_normal.b3.Caption := 'Enviar Pedido [F4]';
     FrmNFact_normal.cxButton5.Enabled := FALSE;
     FrmNFact_normal.cxButton4.Enabled := TRUE;
     FrmNFact_normal.BTpedido.Enabled := true;
   //  FrmNFact_normal.BtBuscarPedido.Enabled := false;
     FrmNFact_normal.cerrar.Enabled := false;



    // FrmNFact.b5.Enabled := false;
     FrmNFact_normal.b6.Enabled := FALSE;
     FrmNFact_normal.Edit3.Text := 'MODI';
     FrmNFact_normal.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);

     FrmNFact_normal.opmaster.Enabled := true;
    // FrmNFact_normal.opdetalle.Enabled := true;
     FrmNFact_normal.cxButton4.Enabled := false;
 //    FrmNfact.cxButton5.Enabled := false;
 close;
end;

procedure TFrmBuscarPedido.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_return then
  begin
    with datos.FbqMaster_Fact do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('AND A.tipo =:opcion6');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'PEDIDO';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'PEDIDO';
        Params[3].Value := 'Contado';
        Params[4].Value := consultaNO_FACT.Value;

        open;
    end;


   with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;




     FrmNFact_normal.ibqclientes.Open;
     FrmNFact_normal.b1.Enabled := false;
     FrmNFact_normal.b2.Enabled := true;
     FrmNFact_normal.b2.Caption := 'Cancelar Pedido';
     FrmNFact_normal.b3.Enabled := true;
     FrmNFact_normal.b4.Enabled := true;
     FrmNFact_normal.b3.Caption := 'Enviar Pedido [F4]';
     FrmNFact_normal.cxButton5.Enabled := FALSE;
           FrmNFact_normal.cxButton4.Enabled := TRUE;

    // FrmNFact.b5.Enabled := false;
     FrmNFact_normal.b6.Enabled := FALSE;
     FrmNFact_normal.Edit3.Text := 'MODI';
     FrmNFact_normal.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);

     FrmNFact_normal.opmaster.Enabled := true;
    // FrmNFact_normal.opdetalle.Enabled := true;
 //    FrmNfact.cxButton5.Enabled := false;
 close;


  end;
end;

procedure TFrmBuscarPedido.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, E.nombre_ruta, F.nombre VENDEDOR from master_fact a');
    sql.Add('LEFT join cliente b On a.clienteid = b.codigo');
    sql.Add('LEFT join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('LEFT join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('LEFT JOIN ruta e ON A.idruta = E.id');
    sql.Add('LEFT JOIN VENDEDORES F on E.idvendedor = F.id');
    sql.Add('WHERE a.situacion=''PEDIDO''');
    sql.Add('AND a.rotulo =''PEDIDO''');
    sql.Add('and e.nombre_ruta =:ppp');
    params[0].Value := cxLookupComboBox1.Text;
    open;
  end;


end;

procedure TFrmBuscarPedido.Edit1Change(Sender: TObject);
begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, E.nombre_ruta, F.nombre VENDEDOR from master_fact a');
    sql.Add('LEFT join cliente b On a.clienteid = b.codigo');
    sql.Add('LEFT join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('LEFT join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('LEFT JOIN ruta e ON A.idruta = E.id');
    sql.Add('LEFT JOIN VENDEDORES F on E.idvendedor = F.id');
    sql.Add('WHERE a.situacion=''PEDIDO''');
    sql.Add('AND a.rotulo =''PEDIDO''');
   sql.Add('AND a.NOMBRECLIENTE_PRN like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;

end;

procedure TFrmBuscarPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
  consulta.Close;
  qruta.Close;
    close;
  end;
end;

procedure TFrmBuscarPedido.FormShow(Sender: TObject);
begin
QRUTA.Open;
end;

end.
