unit Unit133;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, frxClass, frxDBSet,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinSharp,
  dxSkinTheBezier, Vcl.WinXCtrls;

type
  TFrmDelivery = class(TForm)
    HOLD: TZReadOnlyQuery;
    HOLDNO_FACT: TIntegerField;
    HOLDFECHA_FAC: TDateField;
    HOLDTIPO: TWideStringField;
    HOLDCOD_CLIENT: TWideStringField;
    HOLDCOD_EMP: TWideStringField;
    HOLDNO_FACT1: TWideStringField;
    HOLDMONTO: TFloatField;
    HOLDHORA: TTimeField;
    HOLDPOGXITBS: TFloatField;
    HOLDTIPOPAGO: TWideStringField;
    HOLDMONTOPAGO: TFloatField;
    HOLDCONDICION: TWideStringField;
    HOLDRENTA: TWideStringField;
    HOLDCODIGO: TIntegerField;
    HOLDTIPOITBS: TWideStringField;
    HOLDVENDEDOR: TWideStringField;
    HOLDSITUACION: TWideStringField;
    HOLDCAJERO: TWideStringField;
    HOLDNCF: TWideStringField;
    HOLDRNC_CLIENTE: TWideStringField;
    HOLDNCF1: TFloatField;
    HOLDNOM_CLIENTE: TWideStringField;
    HOLDDESCUENTO: TFloatField;
    HOLDROTULO: TWideStringField;
    HOLDNO_AUTORIZA_NCF: TFloatField;
    HOLDMONTOFINANCIADO: TFloatField;
    HOLDCUOTAS: TIntegerField;
    HOLDINTERES: TFloatField;
    HOLDDIRECCION: TWideStringField;
    HOLDPAGADO: TFloatField;
    HOLDLEYPROPINA: TFloatField;
    HOLDCOMPROBANTE: TWideStringField;
    HOLDTERMINAL: TWideStringField;
    HOLDEFECTIVO: TFloatField;
    HOLDDEVOLUCION1: TFloatField;
    HOLDRESTANTE: TFloatField;
    HOLDABONO: TFloatField;
    HOLDCHEK: TWideStringField;
    HOLDNO_RECIBO: TIntegerField;
    HOLDPAGADOCXC: TFloatField;
    HOLDMESES: TIntegerField;
    HOLDDIAS: TIntegerField;
    HOLDPENDIENTE: TFloatField;
    HOLDESTADOPAGO: TWideStringField;
    HOLDDEVOLUCION: TFloatField;
    HOLDCONDICION_PAGO: TIntegerField;
    HOLDCOMBO: TWideStringField;
    HOLDCOBRADO: TIntegerField;
    HOLDQUEES: TWideStringField;
    HOLDUSUARIOID: TIntegerField;
    HOLDCLIENTEID: TIntegerField;
    HOLDCONDICIONVENTA: TWideStringField;
    HOLDTIENDAID: TIntegerField;
    HOLDPINREFERIDO: TWideStringField;
    HOLDNC: TIntegerField;
    HOLDCLIENTENOMBRE: TWideStringField;
    HOLDNOMBRES_EMP: TWideStringField;
    HOLDNOMBRECLIENTE_PRN: TWideStringField;
    HOLDFECHAVENCIMIENTO: TDateField;
    DsHold: TDataSource;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid4DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid4DBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    Zdetalle: TZReadOnlyQuery;
    ZdetalleNO_FACT: TIntegerField;
    ZdetalleNO_FACT1: TWideStringField;
    ZdetalleMASTERID: TIntegerField;
    ZdetalleCANTIDAD: TFloatField;
    ZdetallePRECIO: TFloatField;
    ZdetalleIMPUESTO: TFloatField;
    ZdetalleITBS: TFloatField;
    ZdetalleITBIS2: TFloatField;
    ZdetalleTOTAL: TFloatField;
    ZdetalleCOD_ART: TWideStringField;
    ZdetalleUNID: TWideStringField;
    ZdetalleCOMBO: TWideStringField;
    ZdetalleARTICULOID: TIntegerField;
    ZdetalleANCHO: TFloatField;
    ZdetalleALTO: TFloatField;
    ZdetalleTITULOPRN: TWideStringField;
    ZdetalleUNIDADID: TIntegerField;
    ZdetalleITBS_ART: TWideStringField;
    ZdetalleEX: TWideStringField;
    ZdetalleIDALMACEN: TIntegerField;
    ZdetalleBARRA: TWideStringField;
    ZdetalleIDTECNICO: TIntegerField;
    ZdetalleARTICULO: TWideStringField;
    ZdetalleUNIDAD: TWideStringField;
    ZdetalleITBIS: TWideStringField;
    ZdetalleOP: TWideStringField;
    ZdetalleLINEA: TIntegerField;
    ZdetalleEXIST1: TSingleField;
    ZdetalleLEY: TFloatField;
    DSdetalle: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Actualiza: TZReadOnlyQuery;
    cxButton1: TcxButton;
    SqlBuscarCocina: TZReadOnlyQuery;
    SqlBuscarCocinaID: TIntegerField;
    SqlBuscarCocinaFECHA: TDateField;
    SqlBuscarCocinaNO_ORDEN: TIntegerField;
    SqlBuscarCocinaHORA: TTimeField;
    SqlBuscarCocinaCLIENTE: TWideStringField;
    SqlBuscarCocinaORDEN: TWideMemoField;
    SqlBuscarCocinaTIEMPO: TIntegerField;
    SqlBuscarCocinaTIEMPO_RESTANTA: TTimeField;
    SqlBuscarCocinaESTADO: TIntegerField;
    MCocina: TfrxDBDataset;
    DCocina: TfrxDBDataset;
    Config: TfrxDBDataset;
    master: TfrxDBDataset;
    detalle: TfrxDBDataset;
    SqlBuscarCocinaMESERO: TWideStringField;
    PrintCocina: TfrxReport;
    BtPrintTicket: TcxButton;
    prncopia: TfrxReport;
    series: TfrxDBDataset;
    ZdetalleADICIONAL: TWideStringField;
    BTPreFactura: TcxButton;
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
    PreFact: TfrxReport;
    FbqMaster_Fact: TZReadOnlyQuery;
    FbqMaster_FactNO_FACT: TIntegerField;
    FbqMaster_FactFECHA_FAC: TDateField;
    FbqMaster_FactTIPO: TWideStringField;
    FbqMaster_FactCOD_CLIENT: TWideStringField;
    FbqMaster_FactCOD_EMP: TWideStringField;
    FbqMaster_FactNO_FACT1: TWideStringField;
    FbqMaster_FactMONTO: TFloatField;
    FbqMaster_FactHORA: TTimeField;
    FbqMaster_FactPOGXITBS: TFloatField;
    FbqMaster_FactTIPOPAGO: TWideStringField;
    FbqMaster_FactMONTOPAGO: TFloatField;
    FbqMaster_FactCONDICION: TWideStringField;
    FbqMaster_FactRENTA: TWideStringField;
    FbqMaster_FactCODIGO: TIntegerField;
    FbqMaster_FactTIPOITBS: TWideStringField;
    FbqMaster_FactVENDEDOR: TWideStringField;
    FbqMaster_FactSITUACION: TWideStringField;
    FbqMaster_FactCAJERO: TWideStringField;
    FbqMaster_FactNCF: TWideStringField;
    FbqMaster_FactRNC_CLIENTE: TWideStringField;
    FbqMaster_FactNCF1: TFloatField;
    FbqMaster_FactNOM_CLIENTE: TWideStringField;
    FbqMaster_FactDESCUENTO: TFloatField;
    FbqMaster_FactROTULO: TWideStringField;
    FbqMaster_FactNO_AUTORIZA_NCF: TFloatField;
    FbqMaster_FactMONTOFINANCIADO: TFloatField;
    FbqMaster_FactCUOTAS: TIntegerField;
    FbqMaster_FactINTERES: TFloatField;
    FbqMaster_FactDIRECCION: TWideStringField;
    FbqMaster_FactPAGADO: TFloatField;
    FbqMaster_FactLEYPROPINA: TFloatField;
    FbqMaster_FactCOMPROBANTE: TWideStringField;
    FbqMaster_FactTERMINAL: TWideStringField;
    FbqMaster_FactEFECTIVO: TFloatField;
    FbqMaster_FactDEVOLUCION1: TFloatField;
    FbqMaster_FactRESTANTE: TFloatField;
    FbqMaster_FactABONO: TFloatField;
    FbqMaster_FactCHEK: TWideStringField;
    FbqMaster_FactNO_RECIBO: TIntegerField;
    FbqMaster_FactPAGADOCXC: TFloatField;
    FbqMaster_FactMESES: TIntegerField;
    FbqMaster_FactDIAS: TIntegerField;
    FbqMaster_FactPENDIENTE: TFloatField;
    FbqMaster_FactESTADOPAGO: TWideStringField;
    FbqMaster_FactDEVOLUCION: TFloatField;
    FbqMaster_FactCONDICION_PAGO: TIntegerField;
    FbqMaster_FactFECHAVENCIMIENTO: TDateField;
    FbqMaster_FactCOMBO: TWideStringField;
    FbqMaster_FactCOBRADO: TIntegerField;
    FbqMaster_FactQUEES: TWideStringField;
    FbqMaster_FactUSUARIOID: TIntegerField;
    FbqMaster_FactCLIENTEID: TIntegerField;
    FbqMaster_FactCONDICIONVENTA: TWideStringField;
    FbqMaster_FactTIENDAID: TIntegerField;
    FbqMaster_FactPINREFERIDO: TWideStringField;
    FbqMaster_FactNC: TIntegerField;
    FbqMaster_FactCODVEN: TIntegerField;
    FbqMaster_FactCAJEROID: TIntegerField;
    FbqMaster_FactNOMBRECLIENTE_PRN: TWideStringField;
    FbqMaster_FactFECHA_FINAL: TDateField;
    FbqMaster_FactINTERES_DIARIO: TFloatField;
    FbqMaster_FactINTERES_ACUM: TFloatField;
    FbqMaster_FactDIAS_TRANS: TIntegerField;
    FbqMaster_FactFECHA_ULTIMO_PAGO: TDateField;
    FbqMaster_FactDIAS_ATRASO: TIntegerField;
    FbqMaster_FactINTERES_PAGADO: TFloatField;
    FbqMaster_FactCAPITAL_PAGADO: TFloatField;
    FbqMaster_FactDESC_CAPITAL: TFloatField;
    FbqMaster_FactIDDR: TIntegerField;
    FbqMaster_FactNOMBREDELDR: TWideStringField;
    FbqMaster_FactCAJA: TWideStringField;
    FbqMaster_FactNCF_NOMBRE: TWideStringField;
    FbqMaster_FactMORA: TFloatField;
    FbqMaster_FactNUMERO_FACTURA: TFloatField;
    FbqMaster_FactBONOS: TFloatField;
    FbqMaster_FactOBSERVACIONES: TWideMemoField;
    FbqMaster_FactIDRUTA: TIntegerField;
    FbqMaster_FactCAJAID: TIntegerField;
    FbqMaster_FactTCREDITO: TFloatField;
    FbqMaster_FactVEFECTIVA: TFloatField;
    FbqMaster_FactIDTECNICO: TIntegerField;
    FbqMaster_FactUBICACION: TWideStringField;
    FbqMaster_FactPAGOXEFECTIVO: TFloatField;
    FbqMaster_FactPAGOXCHEQUE: TFloatField;
    FbqMaster_FactPAGOXTARJETA: TFloatField;
    FbqMaster_FactPAGOXBONO: TFloatField;
    FbqMaster_FactPAGOCXC: TFloatField;
    FbqMaster_FactIDESTACION: TIntegerField;
    FbqMaster_FactESTACION: TWideStringField;
    FbqMaster_FactCLIENTENOMBRE: TWideStringField;
    FbqMaster_FactNOMBRES_EMP: TWideStringField;
    FbqMaster_FactDIR: TWideStringField;
    FbqMaster_FactCAJ: TWideStringField;
    FbqMaster_FactTECNICO: TWideStringField;
    ToggleSwitch1: TToggleSwitch;
    qActualizaPre: TZReadOnlyQuery;
    ZdetalleDESC: TFloatField;
    procedure cxGrid4DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid4DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure BtPrintTicketClick(Sender: TObject);
    procedure BTPreFacturaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDelivery: TFrmDelivery;

implementation

{$R *.dfm}

uses UInicio, Unit2, Pizeria, touch, tools;

procedure TFrmDelivery.BTPreFacturaClick(Sender: TObject);
var
canfra : double;
cero1 : string;
nume : integer;
men_pie : string;
cInf : String;
diascondicioncredito : Integer;
 NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion : String;
begin


 with datos.FbqMaster_Fact do
    begin
        Close;
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
        sql.Add('AND A.ROTULO =:OPCION5');
      //  sql.Add('AND A.tipo =:opcion6');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'DELIVERY';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
    //    Params[3].Value := 'Contado';
        Params[3].Value := HOLDno_fact.Value;

        open;
    end;

        with ibqclientes do
                  begin
                    close;
                    sql.Clear;
                    sql.Add('select a.* from cliente a');
                     sql.Add('where a.codigo =:cod');
                     params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
                    open;
                  end;

         datos.FbqMaster_Fact.Edit;
        if IbqClientesNUMEROPIN.Value = 'MESAS' THEN
          BEGIN
            //  datos.FbqMaster_FactLEYPROPINA.Value := datos.FbqMaster_FactMONTO.Value * 0.10;
              DATOS.FbqMaster_FactMONTOPAGO.Value :=         DATOS.FbqMaster_FactMONTOPAGO.Value + datos.FbqMaster_FactLEYPROPINA.Value;
              datos.FbqMaster_FactDEVOLUCION.Value := datos.FbqMaster_FactEFECTIVO.Value - datos.FbqMaster_FactMONTOPAGO.Value;
          END ELSE begin

                   datos.FbqMaster_FactLEYPROPINA.Value := 0.00;
                   datos.FbqMaster_FactDEVOLUCION.Value := datos.FbqMaster_FactEFECTIVO.Value - datos.FbqMaster_FactMONTOPAGO.Value;
                   end;
           datos.FbqMaster_Fact.ApplyUpdates;
           datos.Data.Commit;

 with datos.FbqMaster_Fact do
    begin
        Close;
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
        sql.Add('AND A.ROTULO =:OPCION5');
      //  sql.Add('AND A.tipo =:opcion6');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'DELIVERY';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
    //    Params[3].Value := 'Contado';
        Params[3].Value := HOLDno_fact.Value;

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

    if DATOS.FbqMaster_FactIDESTACION.Value >= datos.ZUconfiguracionTIMPRESIONPRE.Value  then
          begin
                  MsgViewError(' Ha superadao la cantidad de reimpresión para la PRE-FACTURA, favor consultar con el Administrador');
                    close;

                                        datos.FbqMaster_Fact.Close;
                                        datos.Zdetalle.Close;
          end else begin

               if application.MessageBox ('Deseas Imprimir Esta Pre Factura','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                        begin

                                           if datos.FbqMaster_FactNOMBREDELDR.Value ='Cons. Final' then
                                                    begin


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

                                                   //   ShowMessage(''+datos.ZTurnoCOBOSNUEVOS.Text +'  '+datos.ZTurnoCUBOSUSADOS.Text);
                                                     if datos.ZTurnoCOBOSNUEVOS.value >= datos.ZTurnoCUBOSUSADOS.Value then
                                                           begin
                                                             cInf := datos.ZUconfiguracionROTULO_FC.value+'\PreFacturaTicket'+'.fr3';
                                                                                 PreFact.LoadFromFile(cInf);
                                                           end ELSE
                                                           if datos.ZTurnoCOBOSNUEVOS.value < datos.ZTurnoCUBOSUSADOS.Value then
                                                            BEGIN

                                                               cInf := datos.ZUconfiguracionROTULO_FC.value+'\PreFacturaTicket_ncf'+'.fr3';
                                                                                 PreFact.LoadFromFile(cInf);
                                                           END;
                                                    end ELSE begin
                                                             cInf := datos.ZUconfiguracionROTULO_FC.value+'\PreFacturaTicket'+'.fr3';
                                                             PreFact.LoadFromFile(cInf);

                                                             end;

                                             PreFact.variables['titulos']  :=quotedstr('FACTURA');
                                           //  PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
                                             men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                                             PreFact.variables['mensaje1'] :=quotedstr(men_pie);

                                             PreFact.PrepareReport(true);

                                             PreFact.print;
                                        end;
          end;

                                      //  ShowMessage(''+FbqMaster_FactSITUACION.Text);

end;

procedure TFrmDelivery.BtPrintTicketClick(Sender: TObject);
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
    params[0].Value := holdno_fact.Value;
    open;
  end;

with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad, b.itbis,b.taza_compra  from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;


                       PrnCopia.variables['titulos']  :=quotedstr('COPIA FACTURA');
                     //  PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
                       men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
                       PrnCopia.variables['mensaje1'] :=quotedstr(men_pie);
                       PrnCopia.PrepareReport(true);
                       PrnCopia.print;

                    DATOS.FbqMaster_Fact.Close;
                    DATOS.Zdetalle.Close;


END;

procedure TFrmDelivery.cxButton1Click(Sender: TObject);
begin

  if application.MessageBox ('Desea Imprimir Ticket para Cocina....','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin

                                       with SqlBuscarCocina do
                                         begin
                                           close;
                                           sql.Clear;
                                           sql.Add('select * from ENVIOCOCINA');
                                           sql.Add('where no_orden =:orden');
                                           params[0].Value := HOLDcodigo.Value;
                                           open;
                                         end;

                                         with datos.SqlDCocina do
                                           begin
                                             close;
                                             sql.Clear;
                                             sql.Add('select * from D_ENVIOCOCINA');
                                             sql.Add('where no_orden =:orden');
                                             params[0].Value := SqlBuscarCocinaNO_ORDEN.Value;
                                             open;
                                           end;

                                       PrintCocina.PrepareReport(true);
                                       PrintCocina.print;

                                 end;



end;

procedure TFrmDelivery.cxGrid4DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
with zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo, c.unidad, b.itbis from detailfact a');
    sql.Add('left join mtartuculos b On a.cod_art = b.codigotxt');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:op1');
    params[0].Value := HOLDNO_FACT.Value;
    open;
  end;
end;

procedure TFrmDelivery.cxGrid4DBTableView1DblClick(Sender: TObject);
begin

  with datos.FbqMaster_Fact do
    begin
        Close;
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
        sql.Add('AND A.ROTULO =:OPCION5');
      //  sql.Add('AND A.tipo =:opcion6');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'DELIVERY';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
    //    Params[3].Value := 'Contado';
        Params[3].Value := HOLDno_fact.Value;

        open;
    end;


    with datos.Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo,c.unidad, b.itbis, b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On  a.articuloid =  b.cod_art');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:ppp');
    params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
  end;



if datos.ZUconfiguracionTERMINAL.Value ='Pizzeria' then begin


     WITH FrmPizeria.ibqclientes DO
       BEGIN
         close;
         sql.Clear;
         sql.Add('select a.* from cliente a');
         sql.Add('where a.codigo =:opp');
         params[0].Value := datos.FbqMaster_Factclienteid.Value;
         open;

       END;


        with FrmPizeria.SQLCategoria do
         begin
           close;
           sql.Clear;
           sql.Add('select * from MTCATEGORIA where opcion = ''SI''');
           open;
         end;

//        FrmPizeria.cxPageControl1.ActivePageIndex :=0;
//      datos.FbqMaster_Fact.Open;
//       FrmPizeria.op1.Enabled := true;
//       FrmPizeria.QClasificaciones.Open;
//       FrmPizeria.IbqRArticulos.Open;
//       FrmPizeria.DBLClasificacion.ItemIndex := 0;

       FrmPizeria.QClasificaciones.Open;
FrmPizeria.IbqRArticulos.Open;
//FrmPizeria.DBLClasificacion.ItemIndex := 0;
FrmPizeria.nuevo;
 statushold := 'HOLD';

FrmPizeria.edit1.Text := IntToStr(FbqMaster_Factcodigo.Value);
 FrmPizeria.edit3.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
end;


if datos.ZUconfiguracionTERMINAL.Value ='Touch' then begin


     WITH FrmTouch.ibqclientes DO
       BEGIN
         close;
         sql.Clear;
         sql.Add('select a.* from cliente a');
         sql.Add('where a.codigo =:opp');
         params[0].Value := datos.FbqMaster_Factclienteid.Value;
         open;

       END;


        with FrmTouch.SQLCategoria do
         begin
           close;
           sql.Clear;
           sql.Add('select * from MTCATEGORIA where opcion = ''SI''');
           open;
         end;


       FrmTouch.QClasificaciones.Open;
       FrmTouch.edit1.Text := IntToStr(datos.FbqMaster_Factcodigo.Value);
       FrmTouch.edit3.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
       FrmTouch.IbqRArticulos.Open;
       //FrmTouch.DBLClasificacion.ItemIndex := 0;
       FrmTouch.nuevo;

       FrmTouch.SHPropina.State := tssOff;
       FrmTouch.totales;

       statushold := 'HOLD';
Frmtouch.edit1.Text := IntToStr(datos.FbqMaster_Factcodigo.Value);
Frmtouch.edit3.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);


end;



 close;
end;

procedure TFrmDelivery.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       FrmDelivery := NIL;
       Action := caFree;
end;

end.
