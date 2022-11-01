unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, cxControls, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, ZAbstractDataset,
  cxCurrencyEdit, Grids, DBGrids, Mask, DBCtrls, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmCobrar = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Master_cobro: TZReadOnlyQuery;
    Master_cobroNO_FACT: TIntegerField;
    Master_cobroFECHA_FAC: TDateField;
    Master_cobroTIPO: TWideStringField;
    Master_cobroCOD_CLIENT: TWideStringField;
    Master_cobroCOD_EMP: TWideStringField;
    Master_cobroNO_FACT1: TWideStringField;
    Master_cobroMONTO: TFloatField;
    Master_cobroHORA: TTimeField;
    Master_cobroPOGXITBS: TFloatField;
    Master_cobroTIPOPAGO: TWideStringField;
    Master_cobroMONTOPAGO: TFloatField;
    Master_cobroCONDICION: TWideStringField;
    Master_cobroRENTA: TWideStringField;
    Master_cobroCODIGO: TIntegerField;
    Master_cobroTIPOITBS: TWideStringField;
    Master_cobroVENDEDOR: TWideStringField;
    Master_cobroSITUACION: TWideStringField;
    Master_cobroCAJERO: TWideStringField;
    Master_cobroNCF: TWideStringField;
    Master_cobroRNC_CLIENTE: TWideStringField;
    Master_cobroNCF1: TFloatField;
    Master_cobroNOM_CLIENTE: TWideStringField;
    Master_cobroDESCUENTO: TFloatField;
    Master_cobroROTULO: TWideStringField;
    Master_cobroNO_AUTORIZA_NCF: TFloatField;
    Master_cobroMONTOFINANCIADO: TFloatField;
    Master_cobroCUOTAS: TIntegerField;
    Master_cobroINTERES: TFloatField;
    Master_cobroDIRECCION: TWideStringField;
    Master_cobroPAGADO: TFloatField;
    Master_cobroLEYPROPINA: TFloatField;
    Master_cobroCOMPROBANTE: TWideStringField;
    Master_cobroTERMINAL: TWideStringField;
    Master_cobroEFECTIVO: TFloatField;
    Master_cobroDEVOLUCION1: TFloatField;
    Master_cobroRESTANTE: TFloatField;
    Master_cobroABONO: TFloatField;
    Master_cobroCHEK: TWideStringField;
    Master_cobroNO_RECIBO: TIntegerField;
    Master_cobroPAGADOCXC: TFloatField;
    Master_cobroMESES: TIntegerField;
    Master_cobroDIAS: TIntegerField;
    Master_cobroPENDIENTE: TFloatField;
    Master_cobroESTADOPAGO: TWideStringField;
    Master_cobroDEVOLUCION: TFloatField;
    Master_cobroCONDICION_PAGO: TIntegerField;
    Master_cobroFECHAVENCIMIENTO: TWideStringField;
    dsMaster_cobro: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxButton6: TcxButton;
    op1: TRadioGroup;
    Edit1: TEdit;
    Label7: TLabel;
    Label1: TLabel;
    combo: TcxComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    balance: TZQuery;
    Balance1: TZQuery;
    Edit2: TcxCurrencyEdit;
    Edit3: TcxCurrencyEdit;
    Edit4: TcxCurrencyEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Label20: TLabel;
    Edit5: TEdit;
    cxButton7: TcxButton;
    Edit6: TEdit;
    Anular: TZQuery;
    descartar: TZQuery;
    ANULAR_DETALLE: TZQuery;
    Retornar: TZQuery;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    COTIZA: TZReadOnlyQuery;
    COTIZANO_FACT: TIntegerField;
    COTIZAFECHA_FAC: TDateField;
    COTIZATIPO: TWideStringField;
    COTIZACOD_CLIENT: TWideStringField;
    COTIZACOD_EMP: TWideStringField;
    COTIZANO_FACT1: TWideStringField;
    COTIZAMONTO: TFloatField;
    COTIZAHORA: TTimeField;
    COTIZAPOGXITBS: TFloatField;
    COTIZATIPOPAGO: TWideStringField;
    COTIZAMONTOPAGO: TFloatField;
    COTIZACONDICION: TWideStringField;
    COTIZARENTA: TWideStringField;
    COTIZACODIGO: TIntegerField;
    COTIZATIPOITBS: TWideStringField;
    COTIZAVENDEDOR: TWideStringField;
    COTIZASITUACION: TWideStringField;
    COTIZACAJERO: TWideStringField;
    COTIZANCF: TWideStringField;
    COTIZARNC_CLIENTE: TWideStringField;
    COTIZANCF1: TFloatField;
    COTIZANOM_CLIENTE: TWideStringField;
    COTIZADESCUENTO: TFloatField;
    COTIZAROTULO: TWideStringField;
    COTIZANO_AUTORIZA_NCF: TFloatField;
    COTIZAMONTOFINANCIADO: TFloatField;
    COTIZACUOTAS: TIntegerField;
    COTIZAINTERES: TFloatField;
    COTIZADIRECCION: TWideStringField;
    COTIZAPAGADO: TFloatField;
    COTIZALEYPROPINA: TFloatField;
    COTIZACOMPROBANTE: TWideStringField;
    COTIZATERMINAL: TWideStringField;
    COTIZAEFECTIVO: TFloatField;
    COTIZADEVOLUCION1: TFloatField;
    COTIZARESTANTE: TFloatField;
    COTIZAABONO: TFloatField;
    COTIZACHEK: TWideStringField;
    COTIZANO_RECIBO: TIntegerField;
    COTIZAPAGADOCXC: TFloatField;
    COTIZAMESES: TIntegerField;
    COTIZADIAS: TIntegerField;
    COTIZAPENDIENTE: TFloatField;
    COTIZAESTADOPAGO: TWideStringField;
    COTIZADEVOLUCION: TFloatField;
    COTIZACONDICION_PAGO: TIntegerField;
    COTIZAFECHAVENCIMIENTO: TWideStringField;
    COTIZACOMBO: TWideStringField;
    COTIZACOBRADO: TIntegerField;
    COTIZAQUEES: TWideStringField;
    dSCOTIZA: TDataSource;
    cxButton8: TcxButton;
    balanceTOTAL: TFloatField;
    Balance1TOTAL: TFloatField;
    Panel5: TPanel;
    Rebajar_Articulos: TZQuery;
    Rebajar_ArticulosNO_FACT: TIntegerField;
    Rebajar_ArticulosNO_FACT1: TWideStringField;
    Rebajar_ArticulosFECHA_FACT: TDateField;
    Rebajar_ArticulosTIPO: TWideStringField;
    Rebajar_ArticulosCOD_EMP: TWideStringField;
    Rebajar_ArticulosARTICULO: TWideStringField;
    Rebajar_ArticulosMARCA: TWideStringField;
    Rebajar_ArticulosMODELO: TWideStringField;
    Rebajar_ArticulosCANTIDAD: TFloatField;
    Rebajar_ArticulosPRECIO: TFloatField;
    Rebajar_ArticulosIMPUESTO: TFloatField;
    Rebajar_ArticulosITBS: TFloatField;
    Rebajar_ArticulosITBIS2: TFloatField;
    Rebajar_ArticulosTOTAL: TFloatField;
    Rebajar_ArticulosDESC1: TFloatField;
    Rebajar_ArticulosCOD_ART: TWideStringField;
    Rebajar_ArticulosITB: TWideStringField;
    Rebajar_ArticulosCOBROITB: TWideStringField;
    Rebajar_ArticulosUNID: TWideStringField;
    Rebajar_ArticulosCOSTOS: TFloatField;
    Rebajar_ArticulosESTADO: TWideStringField;
    Rebajar_ArticulosTIPOITBS: TWideStringField;
    Rebajar_ArticulosABREVIADO: TWideStringField;
    Rebajar_ArticulosIMPORTE: TFloatField;
    Rebajar_ArticulosCOD_CLIENT: TIntegerField;
    Rebajar_ArticulosDESCUENTO: TFloatField;
    Rebajar_ArticulosCOMBO: TWideStringField;
    Rebajar_ArticulosCONDICION_ART: TWideStringField;
    Rebajar_ArticulosLINEA: TIntegerField;
    Rebajar_ArticulosOPIT: TIntegerField;
    Rebajar_ArticulosPRECIO1: TFloatField;
    Rebajar_ArticulosEMPLEADO: TWideStringField;
    Rebajar_ArticulosCANT: TFloatField;
    Rebajar_ArticulosTURNO: TIntegerField;
    Rebajar_ArticulosCLAVE_COSTO: TWideStringField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    DsRebaja_articulos: TDataSource;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    cxButton9: TcxButton;
    Actualiza_Rebaja: TZQuery;
    actualizamonto: TZReadOnlyQuery;
    Label2: TLabel;
    Balance_credito: TZQuery;
    Balance_creditoTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton8Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCobrar: TFrmCobrar;

implementation

uses Unit2,tools, Unit11;

{$R *.dfm}

procedure TFrmCobrar.cxButton1Click(Sender: TObject);
begin

if master_cobrosituacion.Value ='ENVIADA' then
BEGIN
datos.FbqMaster_Fact.Open;
datos.Zdetalle.Open;

with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op');
    params[0].Value := master_cobrono_fact1.Value;
    open;
 end;

FrmGet_cobro.Edit2.Text := master_cobrono_fact1.Value;
FrmGet_cobro.Edit1.Text :='COBRAR';
FrmGet_cobro.Edit3.Text :='FACTURACION';
FrmGet_cobro.ShowModal;

//ShowForm(TFrmGet_cobro, FrmGet_cobro);
end
ELSE BEGIN
  MsgError('** Esta factura ya fue Impresa **'#13+
      	               '***************');
                       
END;


end;




procedure TFrmCobrar.cxButton2Click(Sender: TObject);
begin
  panel6.Visible := true;
  edit6.Text := 'ANULAR';
  EDIT5.SetFocus;
end;

procedure TFrmCobrar.cxButton3Click(Sender: TObject);
begin

datos.FbqMaster_Fact.Open;
datos.Zdetalle.Open;
 with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op');
    params[0].Value := master_cobrono_fact1.Value;
    open;
  end;


FrmGet_cobro.Edit2.Text := master_cobrono_fact1.Value;
FrmGet_cobro.Edit1.Text :='REIMPRESION';
FrmGet_cobro.Edit3.Text :='FACTURACION';
FrmGet_cobro.ShowModal;


end;

procedure TFrmCobrar.cxButton4Click(Sender: TObject);
begin

          panel6.Visible := true;
          edit6.Text := 'BALANCE';
          edit5.Clear;
          edit5.SetFocus;

end;

procedure TFrmCobrar.cxButton5Click(Sender: TObject);
begin

  with retornar do
       begin
         close;
         sql.Clear;
         sql.Add('update master_fact set situacion =''RETORNAR''');
         SQL.Add('WHERE SITUACION =''ENVIADA''');
         sql.Add('and fecha_fac =:fecha');
         sql.Add('and no_fact1 =:op1');
         params[0].Value := now;
         params[1].Value := master_cobrono_fact1.Value;
         ExecSQL;
       end;

       datos.Data.Commit;
       master_cobro.Refresh;
end;

procedure TFrmCobrar.cxButton6Click(Sender: TObject);
begin
 panel6.Visible := true;
          edit6.Text := 'REBAJA';
          edit5.Clear;
          edit5.SetFocus;



end;

procedure TFrmCobrar.cxButton7Click(Sender: TObject);
begin

if edit6.Text ='REBAJA' then
  BEGIN

if master_cobrosituacion.Value ='IMPRESA' then
BEGIN
panel5.Visible := true;
panel6.Visible := true;
with rebajar_articulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from detailfact');
    sql.Add('where no_fact1 =:op1');
    sql.Add('and fecha_fact =:op2');
    params[0].Value := master_cobrono_fact1.Value;
    params[1].Value := master_cobrofecha_fac.Value;
    open;
  end;
  end else begin
          MsgError('Para ralizar esta operacion la Factura debe estar impresa'#13+
      	               'Favor consultar con el Administrador');


  END;
  END;




if EDIT6.Text ='BALANCE' then
BEGIN
datos.ZUconfiguracion.Open;
  if edit5.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
     begin
        panel6.Visible := false;
        panel3.Visible := true;
        EDIT6.CLEAR;
        with balance do
          begin
              close;
              sql.Clear;
              sql.Add('select sum(montopago) TOTAL from master_fact');
              sql.Add('where situacion =''IMPRESA''');
              SQL.Add('and tipo =''AL CONTADO''');
              sql.Add('and fecha_fac=:fecha_fac');
              SQL.Add('AND TERMINAL =''FACTURACION''');
              params[0].Value := now;
              open;
          end;

          with balance_credito do
          begin
              close;
              sql.Clear;
              sql.Add('select sum(monto) TOTAL from recibo_pago');
              sql.Add('where fecha=:fecha_fac');
              params[0].Value := now;
              open;
          end;


          edit2.Value := balanceTOTAL.Value;
          edit3.Value := balance_creditoTOTAL.Value;
          edit4.Value := balance_creditoTOTAL.Value + balanceTOTAL.Value;


     end else begin
          MsgError('Usted no esta autorizado para relaizar esa operación'#13+
      	               'Favor consultar con el Administrador');
          edit5.Clear;
          panel6.Visible := false;

     end;
END;

if EDIT6.Text = 'ANULAR' then
  BEGIN

  with anular do
  begin
    close;
    sql.Clear;
    sql.Add('update master_fact set situacion =''ANULADA''');
    SQL.Add('WHERE fecha_fac=:fecha_fac');
    sql.Add('AND SITUACION =''IMPRESA''');
    SQL.Add('AND NO_FACT =:NO_FACT');
    PARAMS[0].Value :=NOW;
    PARAMS[1].Value := master_cobrono_fact.Value;
    ExecSQL;
  end;


 with ANULAR_DETALLE do
 begin
    close;
    sql.Clear;
    sql.add ('update detailfact set combo =:combo');
    sql.add ('where no_fact =:no_fact');

    ParambyName('combo').AsString := 'NO';
    ParambyName('no_fact').AsInteger := MASTER_COBRONO_FACT.Value;
    //datos.Data.StartTransaction;
    ExecSQL;

 end;

      edit5.Clear;
          panel6.Visible := false;

  datos.Data.Commit;
  master_cobro.Refresh;
  END;


end;

procedure TFrmCobrar.cxButton8Click(Sender: TObject);
begin
cotiza.Open;
cotiza.Refresh;
panel4.Visible := true;
dbgrid1.SetFocus;
end;

procedure TFrmCobrar.cxButton9Click(Sender: TObject);
begin

if application.MessageBox ('Realmente quieres realizar esta operación?','Precausion',Mb_YesNo+MB_IconStop) = Id_yes then
         begin

with actualiza_rebaja do
  begin
    close;
    sql.Clear;
    sql.Add('update mtarticulo set existencia1 = existencia1 + :op');
    sql.Add('where codigo =:op2');
    params[0].Value := rebajar_articuloscantidad.Value;
    params[1].Value := rebajar_articuloscod_art.Value;
    ExecSQL;
  end;

 with actualizamonto do
   begin
     close;
     sql.Clear;
     sql.Add('update master_fact set');
     sql.Add('montopago = montopago - :op1');
     sql.Add('where no_fact =:op44');
     params[0].Value := rebajar_articulostotal.Value;
     params[1].Value := rebajar_articulosno_fact.Value;
     ExecSQL;
   end;


with actualiza_rebaja do
  begin
    close;
    sql.Clear;
    sql.Add('delete from detailfact');
    sql.Add('where cod_art=:op1');
    sql.Add('and no_fact1=:op2');
    params[0].Value := rebajar_articuloscod_art.Value;
    params[1].Value := rebajar_articulosno_fact1.Value;
    ExecSQL;
  end;

  datos.Data.Commit;
  rebajar_articulos.Refresh;
end;
end;

procedure TFrmCobrar.cxComboBox1PropertiesChange(Sender: TObject);
begin
if combo.ItemIndex = 0 then
begin
  with master_cobro do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where fecha_fac =:op');
    sql.Add('and terminal =''FACTURACION''');
    params[0].Value := now;
    open;
  end;
end;


if combo.ItemIndex = 1 then
begin
  with master_cobro do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where tipo=''CREDITO''');
    sql.Add('and fecha_fac =:op');
    sql.Add('and terminal =''FACTURACION''');
    params[0].Value := now;
    open;
  end;
end;

if combo.ItemIndex = 2 then
begin
  with master_cobro do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where tipo=''AL CONTADO''');
    sql.Add('and fecha_fac =:op');
    sql.Add('and terminal =''FACTURACION''');
      params[0].Value := now;
    open;
  end;
end;

if combo.ItemIndex = 3 then
begin
  with master_cobro do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where SITUACION=''HOLD''');
    sql.Add('and fecha_fac =:op');
    sql.Add('and terminal =''FACTURACION''');
      params[0].Value := now;
    open;
  end;
end;

if combo.ItemIndex = 4 then
begin
  with master_cobro do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where SITUACION=''IMPRESA''');
    sql.Add('and fecha_fac =:op');
    sql.Add('and terminal =''FACTURACION''');
      params[0].Value := now;
    open;
  end;
end;

if combo.ItemIndex = 5 then
begin
  with master_cobro do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where SITUACION=''ENVIADA''');
    sql.Add('and fecha_fac =:op');
    sql.Add('and terminal =''FACTURACION''');
    params[0].Value := now;
    open;
  end;
end;

end;
procedure TFrmCobrar.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

if master_cobrosituacion.Value ='ENVIADA' then
BEGIN
datos.FbqMaster_Fact.Open;
datos.Zdetalle.Open;

with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op');
    params[0].Value := master_cobrono_fact1.Value;
    open;
 end;

FrmGet_cobro.Edit2.Text := master_cobrono_fact1.Value;
FrmGet_cobro.Edit1.Text :='COBRAR';
FrmGet_cobro.Edit3.Text :='FACTURACION';
FrmGet_cobro.ShowModal;

//ShowForm(TFrmGet_cobro, FrmGet_cobro);
end
ELSE BEGIN
  MsgError('** Esta factura ya fue Impresa **'#13+
      	               '***************');

END;

end;

procedure TFrmCobrar.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
begin
  if master_cobrosituacion.Value ='ENVIADA' then
BEGIN
datos.FbqMaster_Fact.Open;
datos.Zdetalle.Open;

with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op');
    params[0].Value := master_cobrono_fact1.Value;
    open;
 end;

FrmGet_cobro.Edit2.Text := master_cobrono_fact1.Value;
FrmGet_cobro.Edit1.Text :='COBRAR';
FrmGet_cobro.Edit3.Text :='FACTURACION';
FrmGet_cobro.ShowModal;

//ShowForm(TFrmGet_cobro, FrmGet_cobro);
end
ELSE BEGIN
  MsgError('** Esta factura ya fue Impresa **'#13+
      	               '***************');

END;

end;
end;

procedure TFrmCobrar.DBGrid1DblClick(Sender: TObject);
begin
datos.FbqMaster_Fact.Open;
datos.Zdetalle.Open;

with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op');
    params[0].Value := cotizano_fact1.Value;
    open;
 end;

FrmGet_cobro.Edit2.Text := cotizano_fact1.Value;
FrmGet_cobro.Edit1.Text :='COBRAR';
FrmGet_cobro.Edit3.Text :='COTIZACION';
PANEL4.Visible := FALSE;
FrmGet_cobro.ShowModal;
end;

procedure TFrmCobrar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_escape then
 begin
   panel4.Visible := false;
 end;
   if KEY =VK_RETURN then
     BEGIN
       datos.FbqMaster_Fact.Open;
datos.Zdetalle.Open;

with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op');
    params[0].Value := master_cobrono_fact1.Value;
    open;
 end;

FrmGet_cobro.Edit2.Text := master_cobrono_fact1.Value;
FrmGet_cobro.Edit1.Text :='COBRAR';
FrmGet_cobro.Edit3.Text :='COTIZACION';
PANEL4.Visible := FALSE;
FrmGet_cobro.ShowModal;
     END;
end;

procedure TFrmCobrar.Edit1Change(Sender: TObject);
begin
if op1.ItemIndex = 0 then
begin
with master_cobro do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 like '+#39+'%'+edit1.Text+'%'+#39);
    sql.Add('and fecha_fac =:op');
    params[0].Value := now;
    open;
  end;
end;

if op1.ItemIndex = 1 then
begin
with master_cobro do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where nom_cliente like '+#39+'%'+edit1.Text+'%'+#39);
    sql.Add('and fecha_fac =:op');
    params[0].Value := now;
    open;
  end;
end;
end;

procedure TFrmCobrar.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     begin
          cxButton7.Click;
     end;

end;

procedure TFrmCobrar.FormCreate(Sender: TObject);
begin

with master_cobro do
  begin
      close;
      sql.Clear;
      sql.Add('select * from master_fact');
      sql.Add('where situacion =''ENVIADA''');
      sql.Add('and fecha_fac =:op');
      sql.Add('and terminal =''FACTURACION''');
      params[0].Value := now;
      open;
  end;

end;

procedure TFrmCobrar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =vk_escape then
  begin
    panel3.Visible := false;
    panel5.Visible := false;
    panel6.Visible := false;
  end;

 if key = vk_f2  then begin
      if master_cobrosituacion.Value ='ENVIADA' then
BEGIN
datos.FbqMaster_Fact.Open;
datos.Zdetalle.Open;

with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op');
    params[0].Value := master_cobrono_fact1.Value;
    open;
 end;

FrmGet_cobro.Edit2.Text := master_cobrono_fact1.Value;
FrmGet_cobro.Edit1.Text :='COBRAR';
FrmGet_cobro.Edit3.Text :='FACTURACION';
FrmGet_cobro.ShowModal;

//ShowForm(TFrmGet_cobro, FrmGet_cobro);
end
ELSE BEGIN
  MsgError('** Esta factura ya fue Impresa **'#13+
      	               '***************');

END;

 end;

 if key =vk_f4 then
   begin
          panel6.Visible := true;
          edit6.Text := 'REBAJA';
          edit5.Clear;
          edit5.SetFocus;

  end;

//   ********* Retornar *********************
 if key =vk_f8 then
   begin
      with retornar do
       begin
         close;
         sql.Clear;
         sql.Add('update master_fact set situacion =''RETORNAR''');
         SQL.Add('WHERE SITUACION =''ENVIADA''');
         sql.Add('and fecha_fac =:fecha');
         sql.Add('and no_fact1 =:op');
         params[0].Value := now;
         params[1].Value := master_cobrono_fact1.Value;
         ExecSQL;
       end;
       datos.Data.Commit;
       master_cobro.Refresh;
   end;

//   ********* Actualiza Cobro *********************
if key =vk_f3 then
  begin
    master_cobro.Refresh;
 end;
//   ********* Consulta de Balance *********************
if key =vk_f11 then
  begin
     panel6.Visible := true;
          edit6.Text := 'BALANCE';
          edit5.Clear;
          edit5.SetFocus;
 
end;

  //******************** Decartar *************
   if KEY=vk_f9 then
     BEGIN
     with descartar do
       begin
         close;
         sql.Clear;
         sql.Add('update master_fact set situacion =''DESCARTADA''');
         SQL.Add('WHERE SITUACION =''ENVIADA''');
         sql.Add('and fecha_fac =:fecha');
         sql.Add('and no_fact1 =:op');
         params[0].Value := now;
         params[1].Value := master_cobrono_fact1.Value;
         ExecSQL;
       end;
       datos.Data.Commit;
       master_cobro.Refresh;
     END;

//*********************** Anular ***************
if key = vk_f5 then
  begin
    panel6.Visible := true;
    edit6.Text := 'ANULAR';
    EDIT5.SetFocus;
  end;

end;

procedure TFrmCobrar.op1Click(Sender: TObject);
begin
if op1.ItemIndex = 0  then
   begin
     label7.Caption := 'Por # de Facturas';
     edit1.SetFocus;
   end;
if op1.ItemIndex = 1  then
   begin
     label7.Caption := 'Nombres de Clientes';
     edit1.SetFocus;
   end;

end;

end.
