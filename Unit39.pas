unit Unit39;

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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, cxButtons, cxCheckBox, cxDropDownEdit,
  cxCalendar, Vcl.ExtCtrls, cxMemo, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCurrencyEdit, ZAbstractRODataset, ZDataset,
  frxClass, frxDBSet, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxRadioGroup,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmNC = class(TForm)
    cxGroupBox1: TcxGroupBox;
    DsMaster: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxGroupBox2: TcxGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Panel4: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsDetalle: TDataSource;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1CANT: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxButton10: TcxButton;
    t1: TcxTextEdit;
    t2: TcxTextEdit;
    Label10: TLabel;
    Label11: TLabel;
    t4: TcxCurrencyEdit;
    t3: TEdit;
    Label30: TLabel;
    Label7: TLabel;
    numero: TZReadOnlyQuery;
    numeroMAX: TIntegerField;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxButton9: TcxButton;
    panelarti: TcxGroupBox;
    Zarti: TZReadOnlyQuery;
    ZartiNO_FACT: TIntegerField;
    ZartiNO_FACT1: TWideStringField;
    ZartiMASTERID: TIntegerField;
    ZartiCANTIDAD: TFloatField;
    ZartiPRECIO: TFloatField;
    ZartiIMPUESTO: TFloatField;
    ZartiITBS: TFloatField;
    ZartiITBIS2: TFloatField;
    ZartiTOTAL: TFloatField;
    ZartiCOD_ART: TWideStringField;
    ZartiUNID: TWideStringField;
    ZartiCOMBO: TWideStringField;
    ZartiLINEA: TIntegerField;
    ZartiARTICULOID: TIntegerField;
    ZartiANCHO: TFloatField;
    ZartiALTO: TFloatField;
    ZartiTITULOPRN: TWideStringField;
    ZartiARTICULO: TWideStringField;
    DsArti: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    numeroD: TZReadOnlyQuery;
    numeroDMAX: TIntegerField;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    Recibo1: TfrxReport;
    master: TfrxDBDataset;
    detalle: TfrxDBDataset;
    Config: TfrxDBDataset;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosEXISTENCIA: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosUNIDAD: TWideStringField;
    Panel5: TPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    Panel6: TPanel;
    Label6: TLabel;
    cxButton3: TcxButton;
    PanelFinal: TPanel;
    Panel7: TPanel;
    Label8: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxDBMemo1: TcxDBMemo;
    Label12: TLabel;
    Facturas: TZReadOnlyQuery;
    FacturasNO_FACT: TIntegerField;
    FacturasFECHA_FAC: TDateField;
    FacturasTIPO: TWideStringField;
    FacturasCOD_CLIENT: TWideStringField;
    FacturasCOD_EMP: TWideStringField;
    FacturasNO_FACT1: TWideStringField;
    FacturasMONTO: TFloatField;
    FacturasHORA: TTimeField;
    FacturasPOGXITBS: TFloatField;
    FacturasTIPOPAGO: TWideStringField;
    FacturasMONTOPAGO: TFloatField;
    FacturasCONDICION: TWideStringField;
    FacturasRENTA: TWideStringField;
    FacturasCODIGO: TIntegerField;
    FacturasTIPOITBS: TWideStringField;
    FacturasVENDEDOR: TWideStringField;
    FacturasSITUACION: TWideStringField;
    FacturasCAJERO: TWideStringField;
    FacturasNCF: TWideStringField;
    FacturasRNC_CLIENTE: TWideStringField;
    FacturasNCF1: TFloatField;
    FacturasNOM_CLIENTE: TWideStringField;
    FacturasDESCUENTO: TFloatField;
    FacturasROTULO: TWideStringField;
    FacturasNO_AUTORIZA_NCF: TFloatField;
    FacturasMONTOFINANCIADO: TFloatField;
    FacturasCUOTAS: TIntegerField;
    FacturasINTERES: TFloatField;
    FacturasDIRECCION: TWideStringField;
    FacturasPAGADO: TFloatField;
    FacturasLEYPROPINA: TFloatField;
    FacturasCOMPROBANTE: TWideStringField;
    FacturasTERMINAL: TWideStringField;
    FacturasEFECTIVO: TFloatField;
    FacturasDEVOLUCION1: TFloatField;
    FacturasRESTANTE: TFloatField;
    FacturasABONO: TFloatField;
    FacturasCHEK: TWideStringField;
    FacturasNO_RECIBO: TIntegerField;
    FacturasPAGADOCXC: TFloatField;
    FacturasMESES: TIntegerField;
    FacturasDIAS: TIntegerField;
    FacturasPENDIENTE: TFloatField;
    FacturasESTADOPAGO: TWideStringField;
    FacturasDEVOLUCION: TFloatField;
    FacturasCONDICION_PAGO: TIntegerField;
    FacturasFECHAVENCIMIENTO: TDateField;
    FacturasCOMBO: TWideStringField;
    FacturasCOBRADO: TIntegerField;
    FacturasQUEES: TWideStringField;
    FacturasUSUARIOID: TIntegerField;
    FacturasCLIENTEID: TIntegerField;
    FacturasCONDICIONVENTA: TWideStringField;
    FacturasTIENDAID: TIntegerField;
    FacturasPINREFERIDO: TWideStringField;
    FacturasNC: TIntegerField;
    FacturasCODVEN: TIntegerField;
    FacturasCAJEROID: TIntegerField;
    FacturasNOMBRECLIENTE_PRN: TWideStringField;
    FacturasFECHA_FINAL: TDateField;
    FacturasINTERES_DIARIO: TFloatField;
    FacturasINTERES_ACUM: TFloatField;
    FacturasDIAS_TRANS: TIntegerField;
    FacturasFECHA_ULTIMO_PAGO: TDateField;
    FacturasDIAS_ATRASO: TIntegerField;
    FacturasINTERES_PAGADO: TFloatField;
    FacturasCAPITAL_PAGADO: TFloatField;
    FacturasDESC_CAPITAL: TFloatField;
    FacturasIDDR: TIntegerField;
    FacturasNOMBREDELDR: TWideStringField;
    FacturasCAJA: TWideStringField;
    FacturasNCF_NOMBRE: TWideStringField;
    FacturasMORA: TFloatField;
    FacturasNUMERO_FACTURA: TFloatField;
    FacturasBONOS: TFloatField;
    FacturasOBSERVACIONES: TWideMemoField;
    FacturasIDRUTA: TIntegerField;
    FacturasCAJAID: TIntegerField;
    FacturasTCREDITO: TFloatField;
    FacturasVEFECTIVA: TFloatField;
    FacturasIDTECNICO: TIntegerField;
    FacturasUBICACION: TWideStringField;
    FacturasPAGOXEFECTIVO: TFloatField;
    FacturasPAGOXCHEQUE: TFloatField;
    FacturasPAGOXTARJETA: TFloatField;
    FacturasPAGOXBONO: TFloatField;
    FacturasCLIENTENOMBRE: TWideStringField;
    FacturasNOMBRES_EMP: TWideStringField;
    FacturasDIR: TWideStringField;
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
    UpDetalle: TZReadOnlyQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    OpN: TcxRadioGroup;
    CBTipoProceso: TcxComboBox;
    Label9: TLabel;
    NumNCF: TZReadOnlyQuery;
    NumNCFGEN_ID: TLargeintField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure t3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNC: TfrmNC;

implementation
uses
unit2, unit19, tools, Unit40, Unit63, Unit91, Unit107, UInicio;
{$R *.dfm}

procedure TfrmNC.cxButton10Click(Sender: TObject);
begin
if cxDBSpinEdit2.Value > 0 then
  begin
with zarti do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo from detailfact a');
    sql.Add('left join mtartuculos b On a.cod_art = b.codigotxt');
    sql.Add('where a.masterid =:opcion');
    sql.Add('and a.alto > 0.00');
     params[0].Value := StrToInt(edit2.Text);
    open;
  end;

panelarti.Visible := true;
  end else begin
             ShowMessage(' Debes Seleccionar una Factura ');
           end;
end;

procedure TfrmNC.cxButton1Click(Sender: TObject);
begin
   if Notas_Credito = nil then
     begin
           Notas_Credito := tNotas_Credito.create(self);
           Notas_Credito.ShowModal;
     end;


end;

procedure TfrmNC.cxButton2Click(Sender: TObject);
begin
datos.MNc.Open;

with numero do
 begin
   close;
   open;
 end;

datos.MNc.Insert;
datos.MNcMNCID.Value := numeromax.Value + 1;
datos.MNcFECHA.Value := now();
datos.MNcESTADO.Value := 1;

cxButton2.Enabled := false;
cxButton3.Enabled := true;
cxButton4.Enabled := true;

cxButton1.Enabled := true;

end;

procedure TfrmNC.cxButton3Click(Sender: TObject);
begin
CBTipoProceso.ItemIndex := 1;
PanelFinal.Visible := true;
cxCurrencyEdit1.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];



end;

procedure TfrmNC.cxButton4Click(Sender: TObject);
begin
datos.MNc.CancelUpdates;
datos.DNC.CancelUpdates;
datos.Data.Rollback;

datos.MNc.Close;
datos.DNC.Close;

cxButton2.Enabled := true;
cxButton3.Enabled := false;
cxButton4.Enabled := false;
cxButton1.Enabled := false;


end;

procedure TfrmNC.cxButton5Click(Sender: TObject);
begin

datos.MNc.CancelUpdates;
datos.DNC.CancelUpdates;
datos.Data.Rollback;

datos.MNc.Close;
datos.DNC.Close;

close;
end;

procedure TfrmNC.cxButton6Click(Sender: TObject);
begin

if FrmConsultaNotaC = nil then
   begin
     FrmConsultaNotaC := tFrmConsultaNotaC.Create(self);
     FrmConsultaNotaC.ShowModal;
   end;


end;

procedure TfrmNC.cxButton7Click(Sender: TObject);
var
Monto : Currency;
nume : integer;
cero1 : string;
begin

monto := 0.00;


          if opn.ItemIndex = 0 then begin

                  if cxDBSpinEdit3.Value = 1 then
                    begin
                         ShowMessage('El Cliente "AL PORTADOR" no puede mantener la Nota de Crédito para futuras compras');
                         PanelFinal.Visible := false;
                    end else begin


                        datos.MNc.Edit;
                        datos.MNcMONTO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
                        datos.MNcAFECTA_INV.Value := 1;



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
                                                            sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
                                                            sql.Add('where a.numero_factura =:op1');
                                                            params[0].Value := datos.MNcNO_FACT.Value;;
                                                            open;
                                                          end;




                        with facturas do
                              begin
                                close;
                                sql.clear;
                                sql.add('update master_fact set ncf1 =ncf1 +:op1');
                                sql.add('where numero_factura =:op11');
                                facturas.Params[0].Value :=datos.MNcMONTO.Value;
                                facturas.Params[1].Value := datos.MNcNO_FACT.Value;
                                ExecSQL;
                          end;


                                if CBTipoProceso.ItemIndex = 0 then
                                begin


                                     with datos.NCF do
                                       begin
                                         close;
                                         sql.Clear;
                                         sql.Add('select * from ncf');
                                         sql.Add('where NUNTEXT =:prefijo');
                                         params[0].Value := 'B04';
                                         OPEN;
                                       end;

                                        with NumNCF do
                                          begin
                                            close;
                                            sql.Clear;
                                            sql.Add('select gen_id(GEN_NCF_NC, 1) from RDB$DATABASE');
                                            open;
                                          end;

                               nume := NumNCFGEN_ID.Value;

                                if nume  >= 1 then
                                      begin
                                         cero1 := '0000000';
                                      end;

                                   if nume  >= 10 then
                                      begin
                                         cero1 := '000000';
                                      end;

                                   if nume  >= 100 then
                                      begin
                                         cero1 := '00000';
                                      end;

                                   if nume >= 1000 then
                                      begin
                                         cero1 := '0000';
                                      end;

                                    if nume >= 10000 then
                                       begin
                                         cero1 := '000';
                                       end;

                                    if nume >= 100000 then
                                      begin
                                         cero1 := '00';
                                   end;

                                    if nume >= 1000000 then
                                      begin
                                         cero1 := '0';
                                   end;


                                   datos.MNc.Edit;
                                   datos.MNcTIPO_NCF.Value := datos.NCFTITULO.Value;
                                   datos.MNcNCF.Value := datos.ncfnuntext.Value +cero1+IntToStr(nume);
                                   datos.MNcNFC_AFECTADA.Value := datos.FbqMaster_FactNCF.Value;

                                end;


                                if datos.MNcCONIDICIONFACT.Value = 'CREDITO' then
                                   BEGIN

                                    with IbqClientes do
                                            begin
                                              close;
                                              sql.Clear;
                                              sql.Add('select * from cliente');
                                              sql.Add('where codigo =:codigo');
                                              Params[0].Value := datos.MNcCLIENTEID.Value;
                                              open;
                                           end;


                                        with UpCredito do
                                                 begin
                                                   close;
                                                   sql.Clear;
                                                   sql.Add('update cliente set Musados =:Musado, balance =:balance ');
                                                   sql.add('where codigo =:codigo');
                                                   params[0].Value := IbqClientesMUSADOS.Value - datos.MNcMONTO.Value;
                                                   params[1].Value := IbqClientesCREDITOLIMITE.Value - (IbqClientesMUSADOS.Value - datos.MNcMONTO.Value);
                                                   params[2].Value := IbqClientesCODIGo.Value;
                                                   ExecSQL;
                                                 end;

                                     monto := datos.MNcMONTO.Value;

                                                    if monto >= datos.FbqMaster_FactPENDIENTE.Value  then
                                                         begin
                                                                datos.FbqMaster_Fact.Edit;
                                                                datos.FbqMaster_FactPENDIENTE.Value := 0.00;
                                                                datos.FbqMaster_FactABONO.Value := 0.00;
                                                                datos.fbqMaster_fact.Post;
                                                         end;

                                                      if monto <= datos.FbqMaster_FactPENDIENTE.Value then
                                                        begin
                                                              datos.fbqmaster_fact.Edit;
                                                              datos.FbqMaster_FactPENDIENTE.Value := datos.FbqMaster_FactPENDIENTE.Value - monto;
                                                              datos.fbqmaster_factquees.Value := 'NC';
                                                              datos.fbqmaster_fact.post;

                                                        end;

                                            end;


                                         with datos.DNC do
                                            begin

                                              first;

                                                 while not eof do
                                                     begin
                                                     ////     ShowMessage(''+datos.DNCCANT.text+' '+datos.DNCIDRUTA.text+' '+datos.DNCCOD_ART.text);
                                                       with updetalle do
                                                          begin
                                                            close;
                                                            sql.Clear;
                                                            sql.Add('update detailfact set alto = cantidad - :op1');
                                                            sql.Add('where masterid =:op2');
                                                            sql.Add('and articuloid =:op3');
                                                            params[0].Value := datos.DNCCANT.Value;
                                                            params[1].Value := datos.DNCIDRUTA.Value;
                                                            params[2].Value := datos.DNCCOD_ART.Value;
                                                            ExecSQL;
                                                          end;
                                                        next;
                                                     end;

                                            end;

                                datos.MNc.ApplyUpdates;
                                datos.DNC.ApplyUpdates;


                                      datos.ZInventario.Open;
                                     with datos.DNC do begin
                                        first;
                                        while not eof  do
                                        begin
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
                                              datos.ZInventarioCOD_ART.Value        := datos.DNCCOD_ART.Value;
                                              datos.ZInventarioCONCEPTOID.Value     := 8;
                                              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
                                              datos.ZInventarioSALIDA.Value         := 0.00;
                                              datos.ZInventarioENTRADA.Value        := datos.DNCCANT.Value;
                                              datos.ZInventarioCOD_ALM.Value        := 1;

                                //
                                //              with datos.MantArt do
                                //                begin
                                //                  close;
                                //                  sql.Clear;
                                //                  sql.Add('select * from mtartuculos');
                                //                  sql.Add('where cod_art =:oo');
                                //                  params[0].Value := datos.DNCCOD_ART.Value;
                                //                  open;
                                //                end;
                                //                 datos.MantArt.Edit;
                                //                 datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value + datos.DNCCANT.Value;

                                              next;
                                           end;
                                     end;






                                   datos.ZInventario.ApplyUpdates;
                                datos.MantArt.ApplyUpdates;
                                datos.FbqMaster_Fact.ApplyUpdates;





                                         if application.MessageBox ('Deseas Imprimir Esta Nota de Crédito','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                                 begin
                                                    recibo1.variables['titulos']:=quotedstr('NOTA DE CREDITO');
                                                     recibo1.PrepareReport(true);
                                                     recibo1.ShowPreparedReport;
                                                  end;

                                                datos.Data.Commit;

                                                cxButton2.Enabled := true;
                                                cxButton3.Enabled := false;
                                                cxButton4.Enabled := false;
                                                cxButton1.Enabled := false;
                                                        panelfinal.Visible := false;
                                                        datos.DNC.Close;
                                                        datos.MNc.Close;

                         end;
          end;
end;

procedure TfrmNC.cxButton8Click(Sender: TObject);
begin

if FrmConsultaCliente = nil then
  begin
    FrmConsultaCliente := tFrmConsultaCliente.Create(self);
    FrmConsultaCliente.EDIT3.Text :=  cxDBSpinEdit1.Text;
    FrmConsultaCliente.EDIT2.Text := 'NOTAC';
   FrmConsultaCliente.showmodal;

  end;


end;

procedure TfrmNC.cxButton9Click(Sender: TObject);
begin

with numerod do
 begin
   close;
   open;
 end;

datos.DNC.Open;
datos.DNC.Insert;
datos.DNCDNCID.Value := numerodmax.Value + 1;
datos.DNCCOD_ART.Value := StrToInt(t1.Text);
datos.DNCARTICULO.Value := t2.Text;
datos.DNCCANT.Value := StrToFloat(t3.Text);
datos.DNCPRECIO.Value := t4.Value;
datos.DNCTOTAL.Value := datos.DNCCANT.Value * datos.DNCPRECIO.Value;
datos.DNCIDRUTA.Value := StrToInt(edit2.Text);
datos.DNC.Post;

t1.Clear;
t2.Clear;
t3.Clear;
t4.Clear;
cxbutton9.Enabled := false;
t3.Enabled := false;


end;

procedure TfrmNC.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

t1.text := IntToStr(datos.DNCCOD_ART.Value);
t2.text := datos.DNCARTICULO.Value;
t3.text := FloatToStr(datos.DNCCANT.Value);
t4.Value := datos.DNCPRECIO.Value;
cxbutton9.Enabled := true;
datos.DNC.Edit;
datos.DNC.Delete;
datos.DNC.ApplyUpdates;
end;

procedure TfrmNC.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
t3.Enabled := true;
t1.Text := zarticod_art.Value;
t2.Text := zartitituloprn.Value;
t3.Text := Zartialto.Text;


t3.SetFocus;
t4.value := zartiprecio.Value;
panelarti.Visible := false;
cxbutton9.Enabled := true;
end;

procedure TfrmNC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmNC := nil;
Action := Cafree;
end;

procedure TfrmNC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_escape then
  begin
    panelarti.Visible := false;
  end;
end;

procedure TfrmNC.t3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (t3.Text <>'0.00') then
  begin
  if t3.Text <>'' then begin

if key = VK_RETURN then
  begin
    cxButton9.setfocus;
  end;
  end;
 end;
end;

end.
