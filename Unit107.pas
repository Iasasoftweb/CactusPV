unit Unit107;

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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxBarBuiltInMenu, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset,
  Vcl.ExtCtrls, cxContainer, cxLabel, dxGDIPlusClasses, Vcl.StdCtrls,
  cxGroupBox, cxRadioGroup, Vcl.Menus, cxButtons, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, acPNG, Vcl.Buttons;

type
  TFrmConsultaCliente = class(TForm)
    DsqCliente: TDataSource;
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
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel1: TPanel;
    Opb: TcxRadioGroup;
    Edit1: TEdit;
    Image1: TImage;
    cxLabel1: TcxLabel;
    Edit2: TEdit;
    ActualizaFact: TZReadOnlyQuery;
    Edit3: TEdit;
    Factura: TZReadOnlyQuery;
    FacturaNO_FACT: TIntegerField;
    FacturaFECHA_FAC: TDateField;
    FacturaTIPO: TWideStringField;
    FacturaCOD_CLIENT: TWideStringField;
    FacturaCOD_EMP: TWideStringField;
    FacturaNO_FACT1: TWideStringField;
    FacturaMONTO: TFloatField;
    FacturaHORA: TTimeField;
    FacturaPOGXITBS: TFloatField;
    FacturaTIPOPAGO: TWideStringField;
    FacturaMONTOPAGO: TFloatField;
    FacturaCONDICION: TWideStringField;
    FacturaRENTA: TWideStringField;
    FacturaCODIGO: TIntegerField;
    FacturaTIPOITBS: TWideStringField;
    FacturaVENDEDOR: TWideStringField;
    FacturaSITUACION: TWideStringField;
    FacturaCAJERO: TWideStringField;
    FacturaNCF: TWideStringField;
    FacturaRNC_CLIENTE: TWideStringField;
    FacturaNCF1: TFloatField;
    FacturaNOM_CLIENTE: TWideStringField;
    FacturaDESCUENTO: TFloatField;
    FacturaROTULO: TWideStringField;
    FacturaNO_AUTORIZA_NCF: TFloatField;
    FacturaMONTOFINANCIADO: TFloatField;
    FacturaCUOTAS: TIntegerField;
    FacturaINTERES: TFloatField;
    FacturaDIRECCION: TWideStringField;
    FacturaPAGADO: TFloatField;
    FacturaLEYPROPINA: TFloatField;
    FacturaCOMPROBANTE: TWideStringField;
    FacturaTERMINAL: TWideStringField;
    FacturaEFECTIVO: TFloatField;
    FacturaDEVOLUCION1: TFloatField;
    FacturaRESTANTE: TFloatField;
    FacturaABONO: TFloatField;
    FacturaCHEK: TWideStringField;
    FacturaNO_RECIBO: TIntegerField;
    FacturaPAGADOCXC: TFloatField;
    FacturaMESES: TIntegerField;
    FacturaDIAS: TIntegerField;
    FacturaPENDIENTE: TFloatField;
    FacturaESTADOPAGO: TWideStringField;
    FacturaDEVOLUCION: TFloatField;
    FacturaCONDICION_PAGO: TIntegerField;
    FacturaFECHAVENCIMIENTO: TDateField;
    FacturaCOMBO: TWideStringField;
    FacturaCOBRADO: TIntegerField;
    FacturaQUEES: TWideStringField;
    FacturaUSUARIOID: TIntegerField;
    FacturaCLIENTEID: TIntegerField;
    FacturaCONDICIONVENTA: TWideStringField;
    FacturaTIENDAID: TIntegerField;
    FacturaPINREFERIDO: TWideStringField;
    FacturaNC: TIntegerField;
    FacturaCODVEN: TIntegerField;
    FacturaCAJEROID: TIntegerField;
    FacturaNOMBRECLIENTE_PRN: TWideStringField;
    FacturaFECHA_FINAL: TDateField;
    FacturaINTERES_DIARIO: TFloatField;
    FacturaINTERES_ACUM: TFloatField;
    FacturaDIAS_TRANS: TIntegerField;
    FacturaFECHA_ULTIMO_PAGO: TDateField;
    FacturaDIAS_ATRASO: TIntegerField;
    FacturaINTERES_PAGADO: TFloatField;
    FacturaCAPITAL_PAGADO: TFloatField;
    FacturaDESC_CAPITAL: TFloatField;
    FacturaIDDR: TIntegerField;
    FacturaNOMBREDELDR: TWideStringField;
    FacturaCAJA: TWideStringField;
    FacturaNCF_NOMBRE: TWideStringField;
    FacturaMORA: TFloatField;
    FacturaNUMERO_FACTURA: TFloatField;
    FacturaBONOS: TFloatField;
    FacturaOBSERVACIONES: TWideMemoField;
    FacturaIDRUTA: TIntegerField;
    FacturaCAJAID: TIntegerField;
    FacturaTCREDITO: TFloatField;
    FacturaVEFECTIVA: TFloatField;
    FacturaIDTECNICO: TIntegerField;
    FacturaUBICACION: TWideStringField;
    FacturaPAGOXEFECTIVO: TFloatField;
    FacturaPAGOXCHEQUE: TFloatField;
    FacturaPAGOXTARJETA: TFloatField;
    FacturaPAGOXBONO: TFloatField;
    FacturaCLIENTENOMBRE: TWideStringField;
    FacturaNOMBRES_EMP: TWideStringField;
    FacturaDIR: TWideStringField;
    UpCredito: TZReadOnlyQuery;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1NOMBRES: TcxGridDBColumn;
    cxGridDBTableView1DIRECCION: TcxGridDBColumn;
    cxGridDBTableView1CEDULA: TcxGridDBColumn;
    cxGridDBTableView1TELEFONO: TcxGridDBColumn;
    cxGridDBTableView1CELULAR: TcxGridDBColumn;
    DsMC: TDataSource;
    MC: TZReadOnlyQuery;
    MCMNCID: TIntegerField;
    MCFECHA: TDateField;
    MCUSUARIOID: TIntegerField;
    MCNO_FACT: TIntegerField;
    MCCLIENTEID: TIntegerField;
    MCESTADO: TIntegerField;
    MCAFECTA_INV: TIntegerField;
    MCAFECTA_CAJA: TIntegerField;
    MCMONTO: TFloatField;
    MCOBSERVACION: TWideMemoField;
    MCCONIDICIONFACT: TWideStringField;
    MCIDTURNO: TIntegerField;
    MCNOTA: TWideStringField;
    MCNOMBRES_EMP: TWideStringField;
    MCNOMBRES: TWideStringField;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid1DBTableView1MONTO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DsMaster_Creditos: TDataSource;
    master_credito: TZReadOnlyQuery;
    master_creditoNO_FACT: TIntegerField;
    master_creditoFECHA_FAC: TDateField;
    master_creditoFECHAVENCIMIENTO: TDateField;
    master_creditoCLIENTENOMBRE: TWideStringField;
    master_creditoPENDIENTE: TFloatField;
    master_creditoNOMBRES_EMP: TWideStringField;
    master_creditoTELEFONO: TWideStringField;
    master_creditoDIAS: TIntegerField;
    master_creditoDIASATRASOS: TIntegerField;
    master_creditoESTADOCUENTA: TWideStringField;
    master_creditoCLIENTEID: TIntegerField;
    master_creditoABONO: TFloatField;
    cxGrid3: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    master_creditoMONTO: TExtendedField;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Label23: TLabel;
    Panel5: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    cod_txt: TEdit;
    Panel8: TPanel;
    cxButton1: TSpeedButton;
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaCliente: TFrmConsultaCliente;

implementation

{$R *.dfm}

uses Unit2, Unit59, Unit3, tools, UInicio, UFactRapida, UentradaCredito,
  Pizeria;

procedure TFrmConsultaCliente.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaCliente.cxButton1Click(Sender: TObject);
begin
if frmcliente = nil then
  begin
    FrmCliente := tFrmCliente.Create(self);
    FrmCliente.ShowModal;
  end;

end;

procedure TFrmConsultaCliente.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  with mc do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, c.nombres_emp, d.nombres from mnoc a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
    sql.Add('left join cliente d On a.clienteid = d.codigo');
    sql.Add('where a.AFECTA_INV = 1');
   sql.Add('and a.clienteid =:opp');
    Params[0].Value := IbqClientesCODIGO.Value;
    open;
end;


with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, A.fecha_fac, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := IbqClientesCODIGO.Value;
        Params[4].Value := 'CREDITO';
        open;
      end;



end;

procedure TFrmConsultaCliente.cxGridDBTableView1DblClick(Sender: TObject);
begin



if EDIT2.Text ='FACT'then
  begin



              datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
              datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
              datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
              datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
              datos.FbqMaster_FactIDRUTA.Value := ibqclientesruta_id.Value;
              datos.FbqMaster_FactNOMBREDELDR.Value := ibqclientesRENGLONCNF.Value;
             // FrmNFact_normal.RxDBComboBox1.Enabled := FALSE;


            if datos.ZUconfiguracionTERMINAL.Value = 'Normal' then begin

               with FrmNFact_normal.ibqclientes do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('select a.*, b.nombre_ruta, c.nombre vendedor from cliente a');
                        sql.Add('left join ruta b On a.ruta_id = b.id');
                        sql.Add('left join vendedores c On b.idvendedor = c.id');
                        sql.Add('where codigo =:p');
                        params[0].Value := IbqClientesCODIGO.Value;
                        open;
                      end;
            end;


            if datos.ZUconfiguracionTERMINAL.Value = 'Pizzeria' then begin

               with FrmPizeria.ibqclientes do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('select a.*, b.nombre_ruta, c.nombre vendedor from cliente a');
                        sql.Add('left join ruta b On a.ruta_id = b.id');
                        sql.Add('left join vendedores c On b.idvendedor = c.id');
                        sql.Add('where codigo =:p');
                        params[0].Value := IbqClientesCODIGO.Value;
                        open;
                      end;



            end;



        close;
end;

if EDIT2.Text ='CRFACT'then
  begin



              datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
              datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
              datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
              datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
              datos.FbqMaster_FactIDRUTA.Value := ibqclientesruta_id.Value;
              datos.FbqMaster_FactNOMBREDELDR.Value := ibqclientesRENGLONCNF.Value;
             // FrmNFact_normal.RxDBComboBox1.Enabled := FALSE;



               with FrmEntradaCreditos.ibqclientes do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('select a.*, b.nombre_ruta, c.nombre vendedor from cliente a');
                        sql.Add('left join ruta b On a.ruta_id = b.id');
                        sql.Add('left join vendedores c On b.idvendedor = c.id');
                        sql.Add('where codigo =:p');
                        params[0].Value := IbqClientesCODIGO.Value;
                        open;
                      end;

        close;
end;

if EDIT2.Text ='FACTR'then
  begin



              datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
              datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
              datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
              datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
              datos.FbqMaster_FactIDRUTA.Value := ibqclientesruta_id.Value;
              datos.FbqMaster_FactNOMBREDELDR.Value := ibqclientesRENGLONCNF.Value;
             // FrmNFact_normal.RxDBComboBox1.Enabled := FALSE;



               with FrmFactRapida.ibqclientes do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('select a.*, b.nombre_ruta, c.nombre vendedor from cliente a');
                        sql.Add('left join ruta b On a.ruta_id = b.id');
                        sql.Add('left join vendedores c On b.idvendedor = c.id');
                        sql.Add('where codigo =:p');
                        params[0].Value := IbqClientesCODIGO.Value;
                        open;
                      end;

        close;
end;

if EDIT2.Text ='NOTAC'then
  begin


              with factura do
                begin
                  close;
                  sql.clear;
                  sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp,  b.direccion as dir  from master_fact a');
                  sql.add('left join cliente b On a.clienteid = b.codigo');
                  sql.add('left join musuario c On a.usuarioid = c.usuarioid');
                  sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
                  sql.add('where a.no_fact =:opcion2');
                  Params[0].Value := StrToInt(edit3.text);
                  open;
                end;

              if FacturaTIPO.Value ='Contado' then
                begin
              with ActualizaFact do
                begin
                  close;
                  sql.Clear;
                  sql.Add('update master_fact set clienteid =:op1, nombrecliente_prn =:op2');
                  sql.Add('where no_fact =:op3');
                  params[0].Value := IbqClientesCODIGO.Value;
                  params[1].Value := IbqClientesNOMBRES.Value;
                  params[0].Value := FacturaNO_FACT.Value;
                  ExecSQL;
                end;
              end;


              if FacturaTIPO.Value ='CREDITO' then
                begin


                        with ActualizaFact do
                          begin
                            close;
                            sql.Clear;
                            sql.Add('update master_fact set clienteid =:op1, nombrecliente_prn =:op2');
                            sql.Add('where no_fact =:op3');
                            params[0].Value := IbqClientesCODIGO.Value;
                            params[1].Value := IbqClientesNOMBRES.Value;
                            params[0].Value := FacturaNO_FACT.Value;
                            ExecSQL;
                          end;

                         with UpCredito do
                               begin
                                 close;
                                 sql.Clear;
                                 sql.Add('update cliente set Musados =:Musado, balance =:balance ');
                                 sql.add('where codigo =:codigo');
                                 params[0].Value := IbqClientesMUSADOS.Value + (FacturaMONTOPAGO.Value - FacturaABONO.Value);
                                 params[1].Value := IbqClientesCREDITOLIMITE.Value - (IbqClientesMUSADOS.Value + (facturaMONTOPAGO.Value - datos.FbqMaster_FactABONO.Value));
                                 params[2].Value := IbqClientesCODIGo.Value;
                                 ExecSQL;
                               end;



              end;


                  datos.MNc.Edit;
                  datos.MNcCLIENTEID.Value  := IbqClientesCODIGO.Value;
                  datos.MNcNOMBRES.Value    := IbqClientesNOMBRES.Value;

             
            edit3.Clear;
        close;

        end;


 if edit2.Text ='RMA' then
    BEGIN
        DATOS.MRma.Edit;
        DATOS.MRmaIDCLIENTE.Value := IbqClientesCODIGO.Value;
        datos.MRmaNOMBRES.Value   := IbqClientesNOMBRES.Value;
        datos.MRmaDIRECCION.Value := IbqClientesDIRECCION.Value;
        datos.MRmaTELEFONO.Value  := IbqClientesTELEFONO.Value;
        close;

    END;


end;

procedure TFrmConsultaCliente.Edit1Change(Sender: TObject);
VAR
 quien : string;

begin
  quien := edit1.Text;
if opb.ItemIndex = 0 then
 begin

     with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.nombres like :value');
        sql.Add('and a.numeropin <>''MESAS''');
        params[0].Value := '%'+edit1.Text+'%';
        open;
      end;

 end;

if opb.ItemIndex = 1 then
 begin

    with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.cedula like :value');
        sql.Add('and a.numeropin <>''MESAS''');
        params[0].Value := '%'+edit1.Text+'%';
        open;
      end;

 end;
end;

procedure TFrmConsultaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmConsultaCliente := nil;
end;

procedure TFrmConsultaCliente.FormShow(Sender: TObject);
begin

//if datos.ZqUsuariosIDSESSION.Value = 1 then
//          begin
//            cxButton1.Enabled := false;
//
//          end;
//
//      if datos.ZqUsuariosIDSESSION.Value = 3 then
//          begin
//           cxButton1.Enabled := true;
//          end;
//
//            if datos.ZqUsuariosIDSESSION.Value = 2 then
//          begin
//           cxButton1.Enabled := false;
//          end;
edit1.SetFocus;
end;

procedure TFrmConsultaCliente.SpeedButton1Click(Sender: TObject);
begin
if frmcliente = nil then
  begin
    FrmCliente := tFrmCliente.Create(self);
    FrmCliente.ShowModal;
  end;

end;

end.
