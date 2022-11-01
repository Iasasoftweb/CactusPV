unit UentradaCredito;

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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Data.DB, ZAbstractRODataset, ZDataset, cxLabel, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxCurrencyEdit, ZAbstractDataset, cxDBEdit, cxSpinEdit, cxCalc, Vcl.ExtCtrls,
  dxSkinSharp, dxSkinTheBezier;

type
  TFrmEntradaCreditos = class(TForm)
    Gp1: TcxGroupBox;
    cxButton10: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Gp2: TcxGroupBox;
    QBalanceCreditoCliente: TZReadOnlyQuery;
    QBalanceCreditoClienteBALANCE: TExtendedField;
    UpCredito: TZReadOnlyQuery;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO: TIntegerField;
    IbqClientesNOMBRES: TWideStringField;
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
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesCOMISION: TFloatField;
    IbqClientesNUMEROPIN: TWideStringField;
    IbqClientesTELEFONO3: TWideStringField;
    IbqClientesEMAIL: TWideStringField;
    IbqClientesRUTA_ID: TIntegerField;
    IbqClientesREGIONID: TIntegerField;
    IbqClientesPROVINCIAID: TIntegerField;
    IbqClientesMUNICIPIOID: TIntegerField;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    cxGroupBox3: TcxGroupBox;
    cxButton1: TcxButton;
    Lnumero: TcxLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxGroupBox1: TcxGroupBox;
    Memo1: TMemo;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZqusuarioCARGO: TWideStringField;
    Edit5: TEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    DataSource1: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxButton3: TcxButton;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosUNIDAD: TWideStringField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosBENEFICIOS: TFloatField;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosOBS: TIntegerField;
    IbqRArticulosCOMISION: TFloatField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    Edit11: TEdit;
    t1: TEdit;
    t2: TEdit;
    Panel1: TPanel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label5: TLabel;
    cxButton4: TcxButton;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    numero_detallegen: TZQuery;
    numero_detallegenGEN_ID: TLargeintField;
    QTotales: TZReadOnlyQuery;
    QTotalesTOTAL: TExtendedField;
    QTotalesIMPUESTO: TExtendedField;
    QTotalesITBS: TExtendedField;
    QTotalesLEY: TExtendedField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure addcreditos;
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    procedure ejecutaradd;
    procedure totales;
    procedure pagos;
    procedure cobrando;
    { Private declarations }
  public
   var
   suma, itbs, descc : Currency;

      no_factpedido : integer;
      tecnico : integer;
    { Public declarations }
  end;

var
  FrmEntradaCreditos: TFrmEntradaCreditos;

implementation

{$R *.dfm}

uses Unit2, Unit59, tools, Unit107, Unit47;

procedure TFrmEntradaCreditos.addcreditos;
var
cero : string;
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
begin

//opmaster.Enabled := true;

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;


datos.FbqMaster_Fact.Open;

zqusuario.Open;

ibqclientes.Open;


 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := numerogen_id.Value;
 datos.FbqMaster_FactNC.Value := 1;
 datos.FbqMaster_FactFECHA_FAC.Value := now();
 datos.FbqMaster_FactTIPO.Value   := 'CREDITO';


    if datos.FbqMaster_FactNO_FACT.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.FbqMaster_FactNO_FACT.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.FbqMaster_FactNO_FACT.Value >= 1000 then
        begin
           cero := '';
     end;



     datos.FbqMaster_FactNO_FACT1.Value := cero+intTostr(datos.FbqMaster_FactNO_FACT.Value);
     edit5.Text := datos.FbqMaster_FactNO_FACT1.Value;
     Lnumero.Caption :=datos.FbqMaster_FactNO_FACT1.Value;
    // RxDBComboBox1.ItemIndex := 0;
    // FrmNFact.RxDBComboBox2.ItemIndex := 1;
    // cxDBComboBox1.ItemIndex := 1;

   //  RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := true;
  //   cxDBComboBox1.Enabled := true;
   //  edit12.Clear;
   //  datos.FbqMaster_FactCODVEN.Value     := AsignaUsuario;

     with ibqclientes do
        begin
          close;
          sql.Clear;
          sql.Add('select a.* from cliente a');
      //    sql.Add('inner join ruta b On a.ruta_id = b.id');
       //   sql.Add('inner join vendedores c On b.idvendedor = c.id');
          sql.Add('where a.codigo = 1');
          open;
        end;


        datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
        datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
        datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
        datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
        datos.FbqMaster_FactCAJAID.Value            := datos.ZUconfiguracionCAJAID.Value;
        datos.FbqMaster_FactUSUARIOID.Value         := AsignaUsuario;


     with zqusuario do
       begin
         close;
         sql.Clear;
         sql.Add('select a.*, b.NOMBRES_EMP,B.CARGO from musuario a');
         sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
         sql.Add('where a.usuarioId =:pp');
         params[0].Value := asignausuario;
         opeN;
       end;

      // showmessage(''+IntToStr(AsignaUsuario));


     datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTurno;
   //  datos.FbqMaster_Factcaja.Value := datos.ConsultaCajaCAJA_NOMBRE.Value;



    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

    //opdetalle.Enabled := true;



      with datos.Zdetalle do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.articulo, c.unidad, b.itbis, b.taza_compra from detailfact a');
          sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
          Sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
          sql.Add('where a.no_fact =  0');
          open;
       end;

//     FrmNfact.cxButton5.Enabled := true;



end;

procedure TFrmEntradaCreditos.cobrando;
begin
if datos.FbqMaster_FactMONTOPAGO.Value = 0.00 then
    begin
      Showmessage('Este Conduce no Esta Completa');
    end else begin





                    datos.FbqMaster_Fact.Edit;
                    datos.fbqMaster_factsituacion.text       := 'IMPRESA';
                    datos.FbqMaster_FactCONDICION.text       := 'ACTIVA';
                    DATOS.FbqMaster_FactROTULO.text          := 'FACTURACION';

                    datos.FbqMaster_Factterminal.Text        := 'FACTURACION';
                    datos.FbqMaster_FactABONO.Value          := 0.00;
                    datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
                    DATOS.FbqMaster_FactLEYPROPINA.Value := 0.00;
                    datos.FbqMaster_Factquees.Value := 'PENDIENTE';


                    DATOS.FbqMaster_Fact.ApplyUpdates;
                    DATOS.Zdetalle.ApplyUpdates;
                    datos.data.Commit;

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
                        params[0].Value := StrToInt(edit5.Text);
                        open;
                      end;


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



                    T1.ClEAR;
                    //t2.Clear;

                    if datos.ZUconfiguracionTIPO_FACTURACION.Value = 2 then
                      begin

                      if FrmCobro = nil  then
                         begin

                           FrmCobro :=tFrmCobro.create(self);

                               FrmCobro :=tFrmCobro.create(self);


                               FrmCobro.Edit6.Text := 'CREDITO' ;

                               FrmCobro.showmodal;

                         end;


                          memo1.Clear;
                          cxcurrencyedit1.Value := 0.00;
                      end else begin
                                        T1.ClEAR;
                    //t2.Clear;

                    DATOS.FbqMaster_Fact.ApplyUpdates;
                    DATOS.Zdetalle.ApplyUpdates;
                    datos.data.Commit;

                     datos.ZInventario.Close;
                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;


                    //BtBuscarPedido.Enabled := true;

                           memo1.Clear;
                           cxcurrencyedit1.Value := 0.00;

                       end;




          end;

end;

procedure TFrmEntradaCreditos.cxButton10Click(Sender: TObject);
begin
if FrmConsultaCliente = nil then
  begin
      FrmConsultaCliente :=tFrmConsultaCliente.create(self);
      FrmConsultaCliente.edit2.text := 'CRFACT';
FrmConsultaCliente.ibqclientes.Open;
FrmConsultaCliente.showmodal;

   panel1.Visible := true;
   cxCurrencyEdit1.SetFocus;
  end;
end;

procedure TFrmEntradaCreditos.cxButton1Click(Sender: TObject);
begin
addcreditos;
end;

procedure TFrmEntradaCreditos.cxButton2Click(Sender: TObject);
begin
pagos;
end;

procedure TFrmEntradaCreditos.cxButton3Click(Sender: TObject);
begin

 memo1.Clear;
 memo1.Top:=0;
 memo1.Text := 'CREDITO APLICADO POR EL MONTO CONSUMIDO(S), SEGUN FACTURA(S) #';

datos.FbCategorias.Open;


         with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a,a.codigobarra,a.comision, a.precio_b,a.referencia, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.OBS,');
                sql.Add(' a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,  a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion from mtartuculos a ');
                sql.Add('where a.codigobarra =:PPP');
                sql.Add('group by a.unidad,a.precio_a,a.codigobarra, a.comision, a.precio_b, a.precio_d, a.referencia, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, ');
                sql.Add('a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion,a.OBS');
                PARAMS[0].Value := 'SER001';
                open;
              end;


// edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
 edit11.Text := '1.00';
//
                                             t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             t2.Text     := Memo1.Text;

                                             DATOS.FbqMaster_FactMONTOPAGO.Value := cxCurrencyEdit1.Value;

                                          // Showmessage(''+ibqrArticulositbis.Value);
                                           //  EITBIS.Text  := ibqrArticulositbis.Text;

                                           //  edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

                                            // t4.value    := CURRENCYEDIT1.Value;
//

                                        //    lunidad.Text := ibqrarticulosunidad.Value;
//                                              //FrmNFact_normal.LUnid.ItemIndex := -1;
//                                             // FrmNFact_normal.LUnid.ItemIndex := 0;
                                         //     t3.Text := '1';

                                          //    linea.Text := 'ART';
//                                              taza.Text := ibqrarticulostaza_compra.Text;

                                          //    topcion.Text := 'UNI';



//                                              cxButton9.Enabled := true;



                                                try

                                                   ejecutaradd;
                                                except

                                                end;

                                              panel1.Visible := false;

//                                              MEMO1.Clear;
//                                              CXCURRENCYEDIT1.Value := 0.00;

                                          ///  label38.Caption := 'No Hay Instalador Asignado';
end;

procedure TFrmEntradaCreditos.cxButton4Click(Sender: TObject);
begin
cxButton3.click;
end;

procedure TFrmEntradaCreditos.cxButton5Click(Sender: TObject);
begin
if datos.FbqMaster_Fact.Active = true then begin


 if application.MessageBox ('Esta seguro de cancelar este documento','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
datos.FbqMaster_Fact.Edit;
if datos.fbqMaster_factsituacion.text <>'PEDIDO' then BEGIN
  datos.fbqMaster_factsituacion.text :='CANCELADA';
END;
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
//DATOS.FbqMaster_FactROTULO.text := 'FACTURACION';
//datos.FbqMaster_Factterminal.Text := 'FACTURACION';
datos.FbqMaster_FactABONO.Value          := 0.00;
datos.FbqMaster_FactPENDIENTE.Value      := DATOS.FbqMaster_FactMONTOPAGO.Value;
datos.FbqMaster_Factquees.Value := 'PENDIENTE';




T1.ClEAR;
//t2.Clear;


DATOS.FbqMaster_Fact.ApplyUpdates;
DATOS.Zdetalle.ApplyUpdates;
datos.data.Commit;

 datos.ZInventario.Close;
DATOS.FbqMaster_Fact.Close;
DATOS.Zdetalle.Close;
  memo1.Clear;
  cxCurrencyEdit1.Value := 0.00;
//BtBuscarPedido.Enabled := true;

   close;
 end;


end;

end;

procedure TFrmEntradaCreditos.ejecutaradd;
VAR

Stexto : string;

comision: double;
Nregistro : Integer;
begin

 try
 with numero_detallegen do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
     open;
  end;


    datos.Zdetalle.append;
    datos.ZdetalleNO_FACT.Value := numero_detallegengen_id.Value;

    datos.ZdetalleCANTIDAD.Value := 1;
    datos.Zdetallealto.Value := 1;

    stexto := t1.Text;
    datos.ZdetalleUNID.Value :=ibqrarticulosunidad.Value;

    datos.ZdetalleITBS.Value        := 0.00;
    datos.ZdetalleCOMBO.Value       := 'UNI';
    datos.ZdetalleTITULOPRN.Value   := t2.Text;
    datos.ZdetalleARTICULO.Value    := t2.Text;

    datos.Zdetalleexist1.Value      := 0.00;

    datos.ZdetalleLINEA.Value       := 1;
    datos.Zdetallecod_art.Value     := T1.Text;
    datos.ZdetalleARTICULOID.value  :=StrToINt(t1.Text);


     if ibqrarticulospolitica.Value = 'Unitario' then begin

           if IbqRArticulosITBIS.Value = 'No'  then begin

                 datos.ZdetalleITBiS.Value     := 'No';
                 datos.ZdetalleITBS_ART.Value  := 'N';
                 datos.ZdetalleEX.Value        := 'E';

                   if ibqclientescomision.Value >0  then
                    begin

                         comision  := (ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100));
                         datos.ZdetallePRECIO.Value := ((ibqrArticuloscosto_pr.Value * ((ibqrArticulosBeneficios.Value * (ibqclientescomision.Value/100))/100))) + ibqrArticuloscosto_pr.Value;
                    end else begin

                      datos.ZdetallePRECIO.Value   := cxCurrencyEdit1.Value;

                    end;

              //   datos.ZdetalleIDTECNICO.Value := tecnico;
                 datos.ZdetalleIMPUESTO.Value  := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value      := 0.00;
                 datos.ZdetalleTOTAL.Value     := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value ;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);


//
               datos.Zdetalle.Post;
               Totales;


            datos.FbqMaster_Fact.Edit;
            datos.FbqMaster_Factdescuento.Value :=descc;
            datos.FbqMaster_FactPOGXITBS.Value := itbs;


            datos.FbqMaster_FactMONTO.Value := suma - itbs;
            datos.FbqMaster_FactLEYPROPINA.Value :=0.00;
            datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value);



        end;



t1.clear;
t2.Clear;

tecnico :=0;





      end;
   ///////  *****************************   Fin Politica UNITARIO *********************************






except




end;





end;



procedure TFrmEntradaCreditos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmEntradaCreditos := nil;
Action := caFree;
end;

procedure TFrmEntradaCreditos.pagos;
begin


  if (IbqClientesCODIGO.Value = 1) and (datos.fbqmaster_factTipo.Value ='CREDITO') then
    begin
        Showmessage(' Cliente no esta Autorizado para el Crédito ');
    end else begin



      with QBalanceCreditoCliente do
        begin
          close;
          sql.Clear;
          sql.Add('select balance from cliente');
          sql.Add('where codigo =:opp');
          params[0].Value := IbqClientesCODIGO.Value;
          open;
        end;
        //   ShowMessage('Monto Factura :'+datos.FbqMaster_FactMONTOPAGO.Text+'<= Monto Balance :'+QBalanceCreditoClienteBALANCE.text);

           cobrando;
         //  panel7.Enabled := false;
         //   PanelLTOP.Enabled := false;



  end;
end;

procedure TFrmEntradaCreditos.totales;

begin
suma := 0.00;
itbs := 0.00;
descc := 0.00;

with QTotales do
  begin
    close;
    sql.Clear;
    sql.Add('select Sum(a.total) Total, sum(a.impuesto) Impuesto, sum(a.itbs) ITBS, sum(a.ley) Ley from detailfact a');
    sql.Add('where a.masterid =:opp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;


                   SUMA := QTotalesTOTAL.Value;
                   itbs := QTotalesITBS.Value;
                 //  descc := QTotalesDESC.Value;

end;


end.
