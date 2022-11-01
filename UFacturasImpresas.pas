unit UFacturasImpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox,
  Vcl.ExtCtrls, ZAbstractRODataset, ZDataset, frxClass, frxDBSet,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinSharp,
  dxSkinTheBezier;

type
  TFrmFacturasImpresas = class(TForm)
    cxButton17: TcxButton;
    cxRadioGroup2: TcxRadioGroup;
    OpCuando: TcxRadioGroup;
    cxGrid20: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTextEdit2: TcxTextEdit;
    Panel11: TPanel;
    op10: TcxRadioGroup;
    cxButton18: TcxButton;
    Chkorinal: TcxCheckBox;
    FacturasImpresas: TZReadOnlyQuery;
    FacturasImpresasNO_FACT: TIntegerField;
    FacturasImpresasFECHA_FAC: TDateField;
    FacturasImpresasTIPO: TWideStringField;
    FacturasImpresasCOD_CLIENT: TWideStringField;
    FacturasImpresasCOD_EMP: TWideStringField;
    FacturasImpresasNO_FACT1: TWideStringField;
    FacturasImpresasMONTO: TFloatField;
    FacturasImpresasHORA: TTimeField;
    FacturasImpresasPOGXITBS: TFloatField;
    FacturasImpresasTIPOPAGO: TWideStringField;
    FacturasImpresasMONTOPAGO: TFloatField;
    FacturasImpresasCONDICION: TWideStringField;
    FacturasImpresasRENTA: TWideStringField;
    FacturasImpresasCODIGO: TIntegerField;
    FacturasImpresasTIPOITBS: TWideStringField;
    FacturasImpresasVENDEDOR: TWideStringField;
    FacturasImpresasSITUACION: TWideStringField;
    FacturasImpresasCAJERO: TWideStringField;
    FacturasImpresasNCF: TWideStringField;
    FacturasImpresasRNC_CLIENTE: TWideStringField;
    FacturasImpresasNCF1: TFloatField;
    FacturasImpresasNOM_CLIENTE: TWideStringField;
    FacturasImpresasDESCUENTO: TFloatField;
    FacturasImpresasROTULO: TWideStringField;
    FacturasImpresasNO_AUTORIZA_NCF: TFloatField;
    FacturasImpresasMONTOFINANCIADO: TFloatField;
    FacturasImpresasCUOTAS: TIntegerField;
    FacturasImpresasINTERES: TFloatField;
    FacturasImpresasDIRECCION: TWideStringField;
    FacturasImpresasPAGADO: TFloatField;
    FacturasImpresasLEYPROPINA: TFloatField;
    FacturasImpresasCOMPROBANTE: TWideStringField;
    FacturasImpresasTERMINAL: TWideStringField;
    FacturasImpresasEFECTIVO: TFloatField;
    FacturasImpresasDEVOLUCION1: TFloatField;
    FacturasImpresasRESTANTE: TFloatField;
    FacturasImpresasABONO: TFloatField;
    FacturasImpresasCHEK: TWideStringField;
    FacturasImpresasNO_RECIBO: TIntegerField;
    FacturasImpresasPAGADOCXC: TFloatField;
    FacturasImpresasMESES: TIntegerField;
    FacturasImpresasDIAS: TIntegerField;
    FacturasImpresasPENDIENTE: TFloatField;
    FacturasImpresasESTADOPAGO: TWideStringField;
    FacturasImpresasDEVOLUCION: TFloatField;
    FacturasImpresasCONDICION_PAGO: TIntegerField;
    FacturasImpresasFECHAVENCIMIENTO: TDateField;
    FacturasImpresasCOMBO: TWideStringField;
    FacturasImpresasCOBRADO: TIntegerField;
    FacturasImpresasQUEES: TWideStringField;
    FacturasImpresasUSUARIOID: TIntegerField;
    FacturasImpresasCLIENTEID: TIntegerField;
    FacturasImpresasCONDICIONVENTA: TWideStringField;
    FacturasImpresasTIENDAID: TIntegerField;
    FacturasImpresasPINREFERIDO: TWideStringField;
    FacturasImpresasNC: TIntegerField;
    FacturasImpresasCODVEN: TIntegerField;
    FacturasImpresasCAJEROID: TIntegerField;
    FacturasImpresasNOMBRECLIENTE_PRN: TWideStringField;
    FacturasImpresasFECHA_FINAL: TDateField;
    FacturasImpresasINTERES_DIARIO: TFloatField;
    FacturasImpresasINTERES_ACUM: TFloatField;
    FacturasImpresasDIAS_TRANS: TIntegerField;
    FacturasImpresasFECHA_ULTIMO_PAGO: TDateField;
    FacturasImpresasDIAS_ATRASO: TIntegerField;
    FacturasImpresasINTERES_PAGADO: TFloatField;
    FacturasImpresasCAPITAL_PAGADO: TFloatField;
    FacturasImpresasDESC_CAPITAL: TFloatField;
    FacturasImpresasIDDR: TIntegerField;
    FacturasImpresasNOMBREDELDR: TWideStringField;
    FacturasImpresasCAJA: TWideStringField;
    FacturasImpresasNCF_NOMBRE: TWideStringField;
    FacturasImpresasMORA: TFloatField;
    FacturasImpresasNUMERO_FACTURA: TFloatField;
    FacturasImpresasBONOS: TFloatField;
    FacturasImpresasOBSERVACIONES: TWideMemoField;
    FacturasImpresasIDRUTA: TIntegerField;
    FacturasImpresasCAJAID: TIntegerField;
    FacturasImpresasTCREDITO: TFloatField;
    FacturasImpresasVEFECTIVA: TFloatField;
    FacturasImpresasIDTECNICO: TIntegerField;
    FacturasImpresasUBICACION: TWideStringField;
    FacturasImpresasPAGOXEFECTIVO: TFloatField;
    FacturasImpresasPAGOXCHEQUE: TFloatField;
    FacturasImpresasPAGOXTARJETA: TFloatField;
    FacturasImpresasPAGOXBONO: TFloatField;
    FacturasImpresasCLIENTENOMBRE: TWideStringField;
    FacturasImpresasNOMBRES_EMP: TWideStringField;
    FacturasImpresasDIR: TWideStringField;
    DsFacturasImpresas: TDataSource;
    DetalleFacturas: TZReadOnlyQuery;
    DetalleFacturasNO_FACT: TIntegerField;
    DetalleFacturasNO_FACT1: TWideStringField;
    DetalleFacturasMASTERID: TIntegerField;
    DetalleFacturasCANTIDAD: TFloatField;
    DetalleFacturasPRECIO: TFloatField;
    DetalleFacturasIMPUESTO: TFloatField;
    DetalleFacturasITBS: TFloatField;
    DetalleFacturasITBIS2: TFloatField;
    DetalleFacturasTOTAL: TFloatField;
    DetalleFacturasCOD_ART: TWideStringField;
    DetalleFacturasUNID: TWideStringField;
    DetalleFacturasCOMBO: TWideStringField;
    DetalleFacturasARTICULOID: TIntegerField;
    DetalleFacturasARTICULO: TWideStringField;
    DetalleFacturasUNIDAD: TWideStringField;
    DetalleFacturasTITULOPRN: TWideStringField;
    DetalleFacturasANCHO: TFloatField;
    DetalleFacturasALTO: TFloatField;
    DetalleFacturasUNIDADID: TIntegerField;
    DetalleFacturasITBS_ART: TWideStringField;
    DetalleFacturasEX: TWideStringField;
    DetalleFacturasIDALMACEN: TIntegerField;
    DetalleFacturasBARRA: TWideStringField;
    DetalleFacturasIDTECNICO: TIntegerField;
    DetalleFacturasDESC: TIntegerField;
    DetalleFacturasOP: TWideStringField;
    DetalleFacturasLINEA: TIntegerField;
    DetalleFacturasEXIST1: TSingleField;
    DetalleFacturasLEY: TFloatField;
    UpdateNC: TZReadOnlyQuery;
    UpCredito: TZReadOnlyQuery;
    comisionCancelar: TZReadOnlyQuery;
    comisionCancelarID: TIntegerField;
    comisionCancelarID_EMP: TIntegerField;
    comisionCancelarID_FACT: TIntegerField;
    comisionCancelarMONTOSERVICIO: TFloatField;
    comisionCancelarMONTOCOMISION: TFloatField;
    comisionCancelarESTADO: TIntegerField;
    comisionCancelarFECHA: TDateField;
    Edit1: TEdit;
    cxButton28: TcxButton;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid3DBTableView1ITBS: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid3DBTableView1NO_FACT1: TcxGridDBColumn;
    cxGrid3DBTableView1MASTERID: TcxGridDBColumn;
    cxGrid3DBTableView1IMPUESTO: TcxGridDBColumn;
    cxGrid3DBTableView1ITBIS2: TcxGridDBColumn;
    cxGrid3DBTableView1UNID: TcxGridDBColumn;
    cxGrid3DBTableView1COMBO: TcxGridDBColumn;
    cxGrid3DBTableView1LINEA: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULOID: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    DsDetalleFacturas: TDataSource;
    master: TfrxDBDataset;
    config: TfrxDBDataset;
    detalle: TfrxDBDataset;
    prncopia: TfrxReport;
    series: TfrxDBDataset;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    Anular: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxButton28Click(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFacturasImpresas: TFrmFacturasImpresas;

implementation

{$R *.dfm}

uses Unit2, Pizeria, UInicio, Unit117, TOOLS;

procedure TFrmFacturasImpresas.cxButton17Click(Sender: TObject);
begin
if cxRadioGroup2.ItemIndex = 0 then begin
panel11.Visible := true;
OP10.ItemIndex := 0;
cxButton18.SetFocus;
end;

if cxRadioGroup2.ItemIndex = 1 then begin
panel11.Visible := true;
OP10.ItemIndex := 1;
cxButton18.SetFocus;
end;

if cxRadioGroup2.ItemIndex = 2 then begin
panel11.Visible := true;
OP10.ItemIndex := 0;
cxButton18.SetFocus;

end;

end;

procedure TFrmFacturasImpresas.cxButton18Click(Sender: TObject);
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


fechafa := Now;
horafa := Time;
Cursor:= crHourGlass;
cont:= 1;
numpag := 1;

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
    params[0].Value := facturasimpresasno_fact.Value;
    open;
  end;

with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
   sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;



                if OP10.ItemIndex = 0 then
                  BEGIN


                                                with datos.ZTurno do
                                                      begin
                                                        close;
                                                        sql.Clear;
                                                        sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                                                        sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                                                        sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                                                        sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                                                        sql.Add('where a.estado =:Est');
                                                        sql.Add('and a.usuarioID =:Usua');
                                                        params[0].Value := 1;
                                                        params[1].Value := AsignaUsuario;
                                                        open;
                                                      end;
                                            if datos.FbqMaster_FactNOMBREDELDR.Value ='Cons. Final' then
                                                    begin
                                                      if datos.ZTurnoCOBOSNUEVOS.value >= datos.ZTurnoCUBOSUSADOS.Value then
                                                           begin
                                                             cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketCopia'+'.fr3';
                                                                                 PrnCopia.LoadFromFile(cInf);
                                                           end ELSE BEGIN
                                                               cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicket_NO_NFC_COPIA'+'.fr3';
                                                                                 PrnCopia.LoadFromFile(cInf);
                                                           END;
                                                    end ELSE begin
                                                             cInf := datos.ZUconfiguracionROTULO_FC.value+'\FacturaTicketCopia'+'.fr3';
                                                             PrnCopia.LoadFromFile(cInf);

                                                             end;




                       PrnCopia.variables['titulos']  :=quotedstr('COPIA FACTURA');
                   //    PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
                          men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                          PrnCopia.variables['mensaje1'] :=quotedstr(men_pie);
                           PrnCopia.PrepareReport(true);
                       PrnCopia.print;

                       end;




                    datos.ZInventario.Close;
                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;

                    panel11.Visible := false;


                  END;
procedure TFrmFacturasImpresas.cxButton28Click(Sender: TObject);
begin

if FAutorizacion.ShowModal = mrOk then
           begin



     datos.ZInventario.Open;

     with detallefacturas do
         begin
            close;
            sql.Clear;
            sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
            sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
            sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
            sql.Add('where a.masterid =:ppp');
            params[0].Value := facturasIMPRESASNO_FACT.Value;
            open;
        end;

     with detallefacturas do
      begin

         first;
        while not eof do begin

         with updateNC do
           begin
              close;
              sql.Clear;
              sql.Add('update mnoc set afecta_inv = 1');
              sql.Add('where mncid =:opp');
              params[0].Value := StrToInt(facturasIMPRESASNO_FACT1.Value);
              ExecSQL;
            end;
            next;
        end;
   end;

   if FacturasImpresasABONO.Value <= 0 then
     begin

     with detallefacturas do
        begin
        FIRST;
        while not eof do
          begin




           with comisionCancelar do
             begin
               close;
               sql.Clear;
               sql.Add('delete from COMISIONINSTALADOR where id_fact =:opcion1');
               params[0].Value := DetalleFacturasMASTERID.Value;
               ExecSQL;
             end;

       with numeroinventario do
                  begin
                     close;
                     sql.Clear;
                     sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
                     open;
                  end;


              datos.ZInventario.Insert;
              datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
              datos.ZInventarioFECHA.Value          := now();
              datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
              datos.ZInventarioCOD_ART.Value        := detallefacturasarticuloID.Value;
              datos.ZInventarioCONCEPTOID.Value     := 7;
              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
              datos.ZInventarioSALIDA.Value         := 0.00;
              datos.ZInventarioENTRADA.Value        := detallefacturasCANTidad.Value;
              datos.ZInventarioCOD_ALM.Value        := 1;



                   with datos.MantArt do
                            begin
                              close;
                              sql.Clear;
                              sql.Add('select a.*, b.signo, c.cat from mtartuculos a');
                              sql.Add('left join tb_moneda b On a.idmoneda = b.id');
                              sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
                              sql.Add('where a.cod_art =:oo');
                                   params[0].Value :=  detallefacturasarticuloID.Value;
                                   OPEN;
                            end;




                 //showmessage(''+IntToStr(datos.MantArtCOD_ART.Value));
                 datos.MantArt.Edit;
                 datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value + detallefacturasCANTidad.Value;
                 datos.MantArt.ApplyUpdates;




              next;
          end;
        end;

//           with IbqClientes do
//            begin
//              close;
//              sql.Clear;
//              sql.Add('select * from cliente');
//              sql.Add('where codigo =:codigo');
//              Params[0].Value := facturasImpresasclienteid.Value;
//              open;
//           end;
//
//
//         //****** Actualiza Balance de Credito Cliente *-****
//
//
//               with UpCredito do
//                 begin
//                   close;
//                   sql.Clear;
//                   sql.Add('update cliente set Musados =:Musado, balance =:balance ');
//                   sql.add('where codigo =:codigo');
//                   params[0].Value := IbqClientesMUSADOS.Value - facturasImpresasPENDIENTE.Value;
//                   params[1].Value := IbqClientesCREDITOLIMITE.Value - (IbqClientesMUSADOS.Value - facturasImpresasPENDIENTE.Value);
//                   params[2].Value := IbqClientesCODIGo.Value;
//                   ExecSQL;
//                 end;

 //**************************************************

        with anular do
          begin
            close;
            sql.Clear;
            sql.Add('update master_fact set condicion =:op, SITUACION =:OP2');
            sql.Add('where no_fact =:pp');
            params[0].Value := 'ANULADA';
            params[1].Value := 'ANULADA';
            params[2].Value := FacturasImpresasno_fact.Value;
            ExecSQL;
          end;


          datos.ZInventario.ApplyUpdates;
          datos.Data.Commit;
         with facturasIMPRESAS do
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
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        open;
    end;
          datos.ZInventario.close;
         // EdClave.Clear;
        //  PanelAutorizacion.Visible := false;


      end else begin
                 ShowMessage(' Esta Factura Tiene Abono(s) aplicado(s) no pude ser anulada ');
               end;


  end;




end;

procedure TFrmFacturasImpresas.cxGridDBTableView3DblClick(Sender: TObject);
begin

  detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
      detallefacturas.Open;
      cxGrid2.Visible := true;

// with datos.FbqMaster_Fact do
//          begin
//            close;
//            sql.Clear;
//             sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, b.telefono, b.condicion, f.nombres_emp Caj  from master_fact a');
//            sql.Add('left join cliente b On a.clienteid = b.codigo');
//            sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
//            sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
//            sql.Add('LEFT JOIN MUSUARIO E oN a.usuarioid = e.usuarioid');
//            sql.Add('left JOIN mtempleado F On e.empleadoid = f.cod_emp1');
//            sql.Add('where a.NUMERO_FACTURA =:op1');
//            params[0].Value := facturasimpresasNUMERO_FACTURA.Value;
//            open;
//          end;
//
//          FacturasImpresas.Close;
//          close;
end;

procedure TFrmFacturasImpresas.cxTextEdit2PropertiesChange(Sender: TObject);
var
  Numero: String;
  Valor: Extended;
  codoriginal : string;
  iResult : integer;
begin


if cxRadioGroup2.ItemIndex = 0 then begin

with facturasIMPRESAS do
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
        sql.Add('and a.NUMERO_FACTURA like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
         if OpCuando.ItemIndex = 0 then
           begin
                    sql.Add('and a.fecha_fac >=:fechas');
         end;
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
             if OpCuando.ItemIndex = 0 then
           begin
                params[3].Value := now();
           end;
        open;

    end;
end;


if cxRadioGroup2.ItemIndex = 1 then begin

with facturasIMPRESAS do
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
        sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
        if OpCuando.ItemIndex = 0 then
           begin
        sql.Add('and a.fecha_fac >=:fechas');
           end;
        Params[0].Value := 'PEDIDO';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'PEDIDO';

         if OpCuando.ItemIndex = 0 then
           begin
                params[3].Value := now();
           end;
        open;
    end;
end;




end;

procedure TFrmFacturasImpresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmFacturasImpresas := nil;
Action := caFree;
end;

procedure TFrmFacturasImpresas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    cxgrid2.Visible := false;

    if panel11.Visible = true then
      begin
        Panel11.Visible := false;
      end;

  end;


end;

end.
