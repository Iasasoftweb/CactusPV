unit UMesas;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Vcl.DBCGrids, Data.DB,
  ZAbstractRODataset, ZDataset, Vcl.ExtCtrls, cxLabel, cxDBLabel,
  dxGDIPlusClasses, Vcl.StdCtrls, Vcl.WinXCtrls, dxSkinSharp, dxSkinTheBezier,
  acPNG, Vcl.Buttons;

type
  TFrmMesas = class(TForm)
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
    DsqCliente: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    Image1: TImage;
    cxDBLabel1: TcxDBLabel;
    Panel1: TPanel;
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
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel45: TPanel;
    Label5: TLabel;
    Panel46: TPanel;
    edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure accion;
    procedure Image1DblClick(Sender: TObject);
    procedure cxDBLabel1DblClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure cxDBLabel1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure cxTextEdit2Change(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMesas: TFrmMesas;

implementation

{$R *.dfm}

uses Tools, UInicio, Unit2, Pizeria, touch;

procedure TFrmMesas.accion;
begin


             with hold do
                   begin
                     close;
                     sql.Clear;
                     sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
                     sql.Add('left join cliente b On a.clienteid = b.codigo');
                     sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
                     sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
                     sql.Add('WHERE a.situacion=''HOLD''');
                     sql.Add('and b.numeropin =''MESAS''');
                     sql.Add('and a.clienteid =:clientes');
                     params[0].Value := IbqClientesCODIGO.Value;
                     open;

                   end;



          if HOLD.RecordCount > 0 then
            begin
              MsgInformacion(' Esta MESA está abierta, favor seleccionar otra mesa ');
              Panel1.Color := clRed;
            end else begin

              datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCLIENTEID.Value := ibqclientescodigo.Value;
              datos.FbqMaster_FactCLIENTENOMBRE.Value := ibqclientesnombres.Value;
              datos.FbqMaster_FactCONDICIONVENTA.Value := ibqclientescondicion.Value;
              datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
              datos.FbqMaster_FactIDRUTA.Value := ibqclientesruta_id.Value;
              datos.FbqMaster_FactNOMBREDELDR.Value := ibqclientesRENGLONCNF.Value;
             // FrmNFact_normal.RxDBComboBox1.Enabled := FALSE;

           if datos.ZUconfiguracionTERMINAL.Value = 'Pizzeria' then
             begin

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



             if datos.ZUconfiguracionUSAR_VF.Value ='SI' then
                begin
                     FrmPizeria.SHPropina.State := tssOn;
                end;
                end;


          if datos.ZUconfiguracionTERMINAL.Value = 'Touch' then
             begin

               with Frmtouch.ibqclientes do
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

                      FrmTouch.edtHabitaciones.Text := FrmTouch.IbqClientesNUMEROPIN.Text;
                         if datos.ZUconfiguracionUSAR_VF.Value ='SI' then
                          begin
                                FrmTouch.SHPropina.State := tssOn;
                          end;
                end;


        close;
  end;
end;

procedure TFrmMesas.btnsalirClick(Sender: TObject);
begin
Close;
end;

procedure TFrmMesas.cxDBLabel1Click(Sender: TObject);
begin
accion;
end;

procedure TFrmMesas.cxDBLabel1DblClick(Sender: TObject);
begin
accion;
end;

procedure TFrmMesas.cxTextEdit2Change(Sender: TObject);
begin
 with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.NUMEROPIN = :value');
        sql.Add('and a.nombres like '+#39+'%'+edit1.Text+'%'+#39);
        params[0].Value := 'MESAS';
        open;
      end;
end;

procedure TFrmMesas.DBCtrlGrid1DblClick(Sender: TObject);
begin
accion;
end;

procedure TFrmMesas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmMesas := nil;
Action := caFree;
end;

procedure TFrmMesas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TFrmMesas.FormShow(Sender: TObject);
begin
   with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.NUMEROPIN = :value');
        params[0].Value := 'MESAS';
        open;
      end;

end;

procedure TFrmMesas.Image1Click(Sender: TObject);
begin
accion;
end;

procedure TFrmMesas.Image1DblClick(Sender: TObject);
begin
accion;
end;

end.
