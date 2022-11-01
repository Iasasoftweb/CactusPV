unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, DB, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Mask, DBCtrls, cxGroupBox,
  dxSkinscxPCPainter, Menus, cxButtons, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ZAbstractRODataset, ZDataset, ZSqlUpdate, ZAbstractDataset, cxCurrencyEdit,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxPCdxBarPopupMenu,
  cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmfacturacion = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DsMaster_fact: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    panel: TcxTabControl;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    nuevo: TcxButton;
    guardar: TcxButton;
    hold: TcxButton;
    cerrar: TcxButton;
    descuento: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxComboBox1: TcxComboBox;
    Label6: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    op1: TRadioGroup;
    Edit1: TEdit;
    Label7: TLabel;
    DsARticulos: TDataSource;
    FbRArticulos: TZReadOnlyQuery;
    FbRArticulosCODIGO: TWideStringField;
    FbRArticulosARTICULO: TWideStringField;
    FbRArticulosMODELO: TWideStringField;
    FbRArticulosMARCA: TWideStringField;
    FbRArticulosCOLOR: TWideStringField;
    FbRArticulosCATEGORIA: TWideStringField;
    FbRArticulosCANT_MINI: TFloatField;
    FbRArticulosSERIE: TWideStringField;
    FbRArticulosALMACEN: TWideStringField;
    FbRArticulosPRECIO1: TFloatField;
    FbRArticulosPRECIO2: TFloatField;
    FbRArticulosCOSTO: TFloatField;
    FbRArticulosCOMENTARIO: TMemoField;
    FbRArticulosPROVEEDOR1: TWideStringField;
    FbRArticulosPROVEEDOR2: TWideStringField;
    FbRArticulosIMPUESTO: TFloatField;
    FbRArticulosEXISTENCIA: TFloatField;
    FbRArticulosITBIS: TWideStringField;
    FbRArticulosABREVIADO1: TWideStringField;
    FbRArticulosUNIDAD_VENTA: TWideStringField;
    FbRArticulosCODIGO1: TWideStringField;
    FbRArticulosMODIFUSUARIO: TWideStringField;
    FbRArticulosFECHAMODI: TDateField;
    FbRArticulosEXISTENCIA1: TFloatField;
    FbRArticulosABREVIADO: TWideStringField;
    FbRArticulosPOLITICA: TWideStringField;
    FbRArticulosCODIGOXTR: TIntegerField;
    FbRArticulosTIPOCOD: TWideStringField;
    FbRArticulosCONDICION: TWideStringField;
    FbRArticulosESTADO: TWideStringField;
    FbRArticulosCANTIDAD_MAXIMA: TFloatField;
    FbRArticulosCOD1: TIntegerField;
    FbRArticulosIMAGEN: TBlobField;
    FbRArticulosTIPO: TWideStringField;
    FbRArticulosBENEF: TFloatField;
    FbRArticulosBENEF_PORC: TWideStringField;
    FbRArticulosPRECIOABIERTO: TWideStringField;
    FbRArticulosCOD_ART1: TIntegerField;
    FbRArticulosCOCINA: TWideStringField;
    FbRArticulosCLA_COSTO: TWideStringField;
    FbRArticulosCLA_PRECIO: TWideStringField;
    Label8: TLabel;
    Panel3: TPanel;
    Zvendedor: TZReadOnlyQuery;
    ZvendedorCOD_EMP: TWideStringField;
    ZvendedorNOMBRES_EMP: TWideStringField;
    ZvendedorDIRECCION: TWideStringField;
    ZvendedorCEDULA: TWideStringField;
    ZvendedorTELEFONO: TWideStringField;
    ZvendedorCELULAR: TWideStringField;
    ZvendedorTIPO: TWideStringField;
    ZvendedorLOGIN: TWideStringField;
    ZvendedorPIN: TWideStringField;
    ZvendedorMODIFICAR_ARTICULOS: TWideStringField;
    ZvendedorELIMINAR: TWideStringField;
    ZvendedorIMPRIMIR: TWideStringField;
    ZvendedorCONTABILIDAD: TWideStringField;
    ZvendedorMODIFICAR_FACTURAS: TWideStringField;
    ZvendedorMODIFICAR_UTILIDAD: TWideStringField;
    ZvendedorIMPRIMIR_CUADRE: TWideStringField;
    ZvendedorIMPRIMIR_FINACIERO: TWideStringField;
    ZvendedorCOD_EMP1: TIntegerField;
    Zvendedordescmax: TFloatField;
    ZvendedorINICIO: TDateField;
    ZvendedorSUELDO: TFloatField;
    ZvendedorCOD: TIntegerField;
    ZvendedorCARGO: TWideStringField;
    ZvendedorFECHA_ING: TDateField;
    DsZvendedor: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    Label9: TLabel;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    DSZdetalle: TDataSource;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column2: TcxGridDBColumn;
    cxGrid3DBTableView1Column3: TcxGridDBColumn;
    cxGrid3DBTableView1Column4: TcxGridDBColumn;
    cxGrid3DBTableView1Column5: TcxGridDBColumn;
    Currency2: TcxCurrencyEdit;
    Currency1: TcxCurrencyEdit;
    Currency3: TcxCurrencyEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Currency4: TcxCurrencyEdit;
    Panel4: TPanel;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    Panel5: TPanel;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    Edit2: TEdit;
    Edit3: TEdit;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    Master_Hold: TZReadOnlyQuery;
    Master_HoldNO_FACT: TIntegerField;
    Master_HoldFECHA_FAC: TDateField;
    Master_HoldTIPO: TWideStringField;
    Master_HoldCOD_CLIENT: TWideStringField;
    Master_HoldCOD_EMP: TWideStringField;
    Master_HoldNO_FACT1: TWideStringField;
    Master_HoldMONTO: TFloatField;
    Master_HoldHORA: TTimeField;
    Master_HoldPOGXITBS: TFloatField;
    Master_HoldTIPOPAGO: TWideStringField;
    Master_HoldMONTOPAGO: TFloatField;
    Master_HoldCONDICION: TWideStringField;
    Master_HoldRENTA: TWideStringField;
    Master_HoldCODIGO: TIntegerField;
    Master_HoldTIPOITBS: TWideStringField;
    Master_HoldVENDEDOR: TWideStringField;
    Master_HoldSITUACION: TWideStringField;
    Master_HoldCAJERO: TWideStringField;
    Master_HoldNCF: TWideStringField;
    Master_HoldRNC_CLIENTE: TWideStringField;
    Master_HoldNCF1: TFloatField;
    Master_HoldNOM_CLIENTE: TWideStringField;
    Master_HoldDESCUENTO: TFloatField;
    Master_HoldROTULO: TWideStringField;
    Master_HoldNO_AUTORIZA_NCF: TFloatField;
    Master_HoldMONTOFINANCIADO: TFloatField;
    Master_HoldCUOTAS: TIntegerField;
    Master_HoldINTERES: TFloatField;
    Master_HoldDIRECCION: TWideStringField;
    Master_HoldPAGADO: TFloatField;
    Master_HoldLEYPROPINA: TFloatField;
    Master_HoldCOMPROBANTE: TWideStringField;
    Master_HoldTERMINAL: TWideStringField;
    Master_HoldEFECTIVO: TFloatField;
    Master_HoldDEVOLUCION1: TFloatField;
    Master_HoldRESTANTE: TFloatField;
    Master_HoldABONO: TFloatField;
    Master_HoldCHEK: TWideStringField;
    Master_HoldNO_RECIBO: TIntegerField;
    Master_HoldPAGADOCXC: TFloatField;
    Master_HoldMESES: TIntegerField;
    Master_HoldDIAS: TIntegerField;
    Master_HoldPENDIENTE: TFloatField;
    Master_HoldESTADOPAGO: TWideStringField;
    Master_HoldDEVOLUCION: TFloatField;
    Master_HoldCONDICION_PAGO: TIntegerField;
    Master_HoldFECHAVENCIMIENTO: TWideStringField;
    DsMaster_Hold: TDataSource;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    cxGrid4DBTableView1Column3: TcxGridDBColumn;
    Master_Devueltos: TZReadOnlyQuery;
    Master_DevueltosNO_FACT: TIntegerField;
    Master_DevueltosNO_FACT1: TWideStringField;
    Master_DevueltosFECHA_FACT: TDateField;
    Master_DevueltosTIPO: TWideStringField;
    Master_DevueltosCOD_EMP: TWideStringField;
    Master_DevueltosARTICULO: TWideStringField;
    Master_DevueltosMARCA: TWideStringField;
    Master_DevueltosMODELO: TWideStringField;
    Master_DevueltosCANTIDAD: TFloatField;
    Master_DevueltosPRECIO: TFloatField;
    Master_DevueltosIMPUESTO: TFloatField;
    Master_DevueltosITBS: TFloatField;
    Master_DevueltosITBIS2: TFloatField;
    Master_DevueltosTOTAL: TFloatField;
    Master_DevueltosDESC1: TFloatField;
    Master_DevueltosCOD_ART: TWideStringField;
    Master_DevueltosITB: TWideStringField;
    Master_DevueltosCOBROITB: TWideStringField;
    Master_DevueltosUNID: TWideStringField;
    Master_DevueltosCOSTOS: TFloatField;
    Master_DevueltosESTADO: TWideStringField;
    Master_DevueltosTIPOITBS: TWideStringField;
    Master_DevueltosABREVIADO: TWideStringField;
    Master_DevueltosIMPORTE: TFloatField;
    Master_DevueltosCOD_CLIENT: TIntegerField;
    Master_DevueltosDESCUENTO: TFloatField;
    Master_DevueltosCOMBO: TWideStringField;
    Master_DevueltosCONDICION_ART: TWideStringField;
    Master_DevueltosLINEA: TIntegerField;
    Master_DevueltosOPIT: TIntegerField;
    Master_DevueltosPRECIO1: TFloatField;
    Master_DevueltosEMPLEADO: TWideStringField;
    Master_DevueltosCANT: TFloatField;
    Master_DevueltosTURNO: TIntegerField;
    Master_DevueltosCLAVE_COSTO: TWideStringField;
    op2: TRadioGroup;
    Label19: TLabel;
    Edit4: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit5: TEdit;
    Label20: TLabel;
    currency7: TcxCurrencyEdit;
    Label21: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    buscar_cliente: TcxButton;
    cxButton4: TcxButton;
    cxGrid3DBTableView1Column6: TcxGridDBColumn;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBComboBox1: TDBComboBox;
    Label25: TLabel;
    MontoUpdate: TZQuery;
    WideStringField1: TWideStringField;
    rehabilitar: TcxButton;
    verifica: TZReadOnlyQuery;
    FbRetorno: TZReadOnlyQuery;
    dSRETORNO: TDataSource;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    FbRetornoNO_FACT: TIntegerField;
    FbRetornoFECHA_FAC: TDateField;
    FbRetornoTIPO: TWideStringField;
    FbRetornoCOD_CLIENT: TWideStringField;
    FbRetornoCOD_EMP: TWideStringField;
    FbRetornoNO_FACT1: TWideStringField;
    FbRetornoMONTO: TFloatField;
    FbRetornoHORA: TTimeField;
    FbRetornoPOGXITBS: TFloatField;
    FbRetornoTIPOPAGO: TWideStringField;
    FbRetornoMONTOPAGO: TFloatField;
    FbRetornoCONDICION: TWideStringField;
    FbRetornoRENTA: TWideStringField;
    FbRetornoCODIGO: TIntegerField;
    FbRetornoTIPOITBS: TWideStringField;
    FbRetornoVENDEDOR: TWideStringField;
    FbRetornoSITUACION: TWideStringField;
    FbRetornoCAJERO: TWideStringField;
    FbRetornoNCF: TWideStringField;
    FbRetornoRNC_CLIENTE: TWideStringField;
    FbRetornoNCF1: TFloatField;
    FbRetornoNOM_CLIENTE: TWideStringField;
    FbRetornoDESCUENTO: TFloatField;
    FbRetornoROTULO: TWideStringField;
    FbRetornoNO_AUTORIZA_NCF: TFloatField;
    FbRetornoMONTOFINANCIADO: TFloatField;
    FbRetornoCUOTAS: TIntegerField;
    FbRetornoINTERES: TFloatField;
    FbRetornoDIRECCION: TWideStringField;
    FbRetornoPAGADO: TFloatField;
    FbRetornoLEYPROPINA: TFloatField;
    FbRetornoCOMPROBANTE: TWideStringField;
    FbRetornoTERMINAL: TWideStringField;
    FbRetornoEFECTIVO: TFloatField;
    FbRetornoDEVOLUCION1: TFloatField;
    FbRetornoRESTANTE: TFloatField;
    FbRetornoABONO: TFloatField;
    FbRetornoCHEK: TWideStringField;
    FbRetornoNO_RECIBO: TIntegerField;
    FbRetornoPAGADOCXC: TFloatField;
    FbRetornoMESES: TIntegerField;
    FbRetornoDIAS: TIntegerField;
    FbRetornoPENDIENTE: TFloatField;
    FbRetornoESTADOPAGO: TWideStringField;
    FbRetornoDEVOLUCION: TFloatField;
    FbRetornoCONDICION_PAGO: TIntegerField;
    FbRetornoFECHAVENCIMIENTO: TWideStringField;
    FbRetornoCOMBO: TWideStringField;
    FbRetornoCOBRADO: TIntegerField;
    FbRetornoQUEES: TWideStringField;
    cxButton3: TcxButton;
    Label26: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure op1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton8Click(Sender: TObject);
    procedure cerrarClick(Sender: TObject);
    procedure holdClick(Sender: TObject);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxPageControl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure cxGrid4DBTableView1DblClick(Sender: TObject);
    procedure cxGrid4DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure op2Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure descuentoClick(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure currency7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure buscar_clienteClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Label25Click(Sender: TObject);
    procedure rehabilitarClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
  private
    Cierro : Boolean;
  public
    { Public declarations }
  end;

var
  Frmfacturacion: TFrmfacturacion;

implementation

uses Unit2,tools, Unit10, Unit13, Unit17;

{$R *.dfm}

procedure TFrmfacturacion.guardarClick(Sender: TObject);
var
hoy : tdate;
bal1 : currency;
begin
{
bal1 :=  StrToFloat(edit7.Text) + currency4.Value;
if bal1 > StrToFloat(edit6.Text) then
begin
   MsgError('Este cliente ha excedido del Limite de credito'#13+
      	               'Favor consultar con el Administrador');

end else begin

 }

try
if datos.fbqMaster_factsituacion.text ='HOLD' then
BEGIN
hoy := now;
datos.FbqMaster_Fact.Edit;

datos.fbqMaster_factsituacion.text    :='ENVIADA';
datos.FbqMaster_FactCONDICION.text   :='ACTIVA';
datos.FbqMaster_FactTIPO.Value      := 'AL CONTADO';
DATOS.FbqMaster_FactROTULO.text     := cxComboBox1.Text;
DATOS.FbqMaster_FactFECHA_FAC.Value := hoy;
datos.FbqMaster_FactDESCUENTO.Value := currency2.Value;
datos.fbqmaster_factmontopago.Value := currency4.Value;

currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;


//datos.FbqMaster_Fact.Post;
datos.FbqMaster_Fact.ApplyUpdates;

//datos.zdetalle1.edit;
//datos.zdetalle1.Post;
//datos.zdetalle1.ApplyUpdates;

datos.Data.Commit;


datos.FbqMaster_Fact.Close;
//datos.zdetalle1.Close;
FbrArticulos.Close;


label8.Caption :='Cerrada';
panel.Enabled := false;
guardar.Enabled := false;
hold.Enabled := false;
NUEVO.Enabled := TRUE;
descuento.Enabled := false;

cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;

//master_hold.Open;
//master_hold.Refresh;



END
ELSE BEGIN
hoy := now;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text :='ENVIADA';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
datos.FbqMaster_FactTIPO.Value      := 'AL CONTADO';
DATOS.FbqMaster_FactROTULO.text := cxComboBox1.Text;
DATOS.FbqMaster_FactFECHA_FAC.Value := hoy;


if DBComboBox1.ItemIndex = 0 then begin
datos.FbqMaster_Factterminal.Text := 'FACTURACION';
end;

if DBComboBox1.ItemIndex = 1 then begin
datos.FbqMaster_Factterminal.text := 'COTIZACION';
end;

datos.FbqMaster_Factmonto.Value := currency1.Value;
datos.FbqMaster_Factdescuento.Value := currency2.Value;
datos.FbqMaster_Factmontopago.Value := currency4.Value;

currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;


//datos.FbqMaster_Fact.Post;
datos.FbqMaster_Fact.ApplyUpdates;

//datos.zdetalle1.edit;
//datos.zdetalle1.Post;
//datos.zdetalle1.ApplyUpdates;

datos.Data.Commit;

datos.FbqMaster_Fact.Close;
//datos.zdetalle1.Close;
FbrArticulos.Close;

label8.Caption :='Cerrada';
panel.Enabled := false;
guardar.Enabled := false;
hold.Enabled := false;
NUEVO.Enabled := TRUE;
descuento.Enabled := false;

cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;

//master_hold.Open;
//master_hold.Refresh;
end;
except

end;

 cierro := true;
// Frm_Control_Fact.master_cobro.refresh;
 close;
end;

procedure TFrmfacturacion.holdClick(Sender: TObject);
begin
try
if datos.fbqMaster_factsituacion.text <>'HOLD' then
BEGIN
master_hold.Open;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text :='HOLD';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
DATOS.FbqMaster_FactROTULO.text := cxComboBox1.Text;
datos.FbqMaster_Factterminal.Text := 'FACTURACION';

datos.FbqMaster_Factmonto.Value := currency1.Value;
datos.FbqMaster_Factdescuento.Value := currency2.Value;
datos.FbqMaster_Factmontopago.Value := currency4.Value;
 {
with montoupdate do
  begin
    close;
    sql.Clear;
    SQL.Add('update master_fact set');
    sql.add('NO_FACT=:NO_FACT, fecha_fac=:fecha_fac, TIPO=:TIPO, no_fact1=:no_fact1, hora=:hora, condicion=:condicion, VENDEDOR=:vendedor,TERMINAL=:TERMINAL,'+
              'SITUACION=:situacion,NOM_CLIENTE=:NOM_CLIENTE,'+
              'ROTULO=:ROTULO');

     sql.Add('where no_fact =:no_fact11');
     ParamByName('no_fact').AsInteger := datos.FbqMaster_Factno_fact.Value;
     ParamByName('fecha_fac').AsDate := datos.FbqMaster_Factfecha_fac.Value;
     ParamByName('tipo').AsString := datos.FbqMaster_Facttipo.Value;
     ParamByName('hora').AsTime := datos.FbqMaster_Facthora.Value;
     ParamByName('condicion').AsString := datos.FbqMaster_Factcondicion.Value;
     ParamByName('vendedor').AsString := datos.FbqMaster_Factvendedor.Value;
     ParamByName('terminal').AsString := datos.FbqMaster_Factterminal.Value;
     ParamByName('situacion').AsString := datos.FbqMaster_Factsituacion.Value;
     ParamByName('nom_cliente').AsString := datos.FbqMaster_Factnom_cliente.Value;
     ParamByName('rotulo').AsString := datos.FbqMaster_Factrotulo.Value;
     ParamByName('no_fact11').AsInteger := datos.FbqMaster_Factno_fact.Value;
    
end;
  }
currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;

datos.FbqMaster_Fact.Post;
datos.FbqMaster_Fact.ApplyUpdates;

//datos.zdetalle1.Edit;
///datos.zdetalle1.Post;
//datos.zdetalle1.ApplyUpdates;
datos.Data.Commit;

datos.FbqMaster_Fact.Close;
//datos.zdetalle1.Close;
FbrArticulos.Close;

label8.Caption :='Cerrada';
panel.Enabled := false;
guardar.Enabled := false;
hold.Enabled := false;
NUEVO.Enabled := TRUE;
descuento.Enabled := false;
cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;
//master_hold.Refresh;

END else begin
master_hold.Open;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text :='HOLD';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
DATOS.FbqMaster_FactROTULO.text := cxComboBox1.Text;
datos.FbqMaster_Factterminal.Text := 'FACTURACION';

datos.FbqMaster_Factmonto.Value := currency1.Value;
datos.FbqMaster_Factdescuento.Value := currency2.Value;
datos.FbqMaster_Factmontopago.Value := currency4.Value;


 {
with montoupdate do
  begin
    close;
    sql.Clear;
    SQL.Add('update master_fact set');
    sql.add('NO_FACT=:NO_FACT, fecha_fac=:fecha_fac, TIPO=:TIPO, no_fact1=:no_fact1, hora=:hora, condicion=:condicion, VENDEDOR=:vendedor,TERMINAL=:TERMINAL,'+
              'SITUACION=:situacion,NOM_CLIENTE=:NOM_CLIENTE,'+
              'ROTULO=:ROTULO');

     sql.Add('where no_fact =:no_fact11');
     ParamByName('no_fact').AsInteger := datos.FbqMaster_Factno_fact.Value;
     ParamByName('fecha_fac').AsDate := datos.FbqMaster_Factfecha_fac.Value;
     ParamByName('tipo').AsString := datos.FbqMaster_Facttipo.Value;
     ParamByName('hora').AsTime := datos.FbqMaster_Facthora.Value;
     ParamByName('condicion').AsString := datos.FbqMaster_Factcondicion.Value;
     ParamByName('vendedor').AsString := datos.FbqMaster_Factvendedor.Value;
     ParamByName('terminal').AsString := datos.FbqMaster_Factterminal.Value;
     ParamByName('situacion').AsString := datos.FbqMaster_Factsituacion.Value;
     ParamByName('nom_cliente').AsString := datos.FbqMaster_Factnom_cliente.Value;
     ParamByName('rotulo').AsString := datos.FbqMaster_Factrotulo.Value;
     ParamByName('no_fact11').AsInteger := datos.FbqMaster_Factno_fact.Value;
     ExecSQL;

end;
  }
currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;

datos.FbqMaster_Fact.Post;
datos.FbqMaster_Fact.ApplyUpdates;

//datos.zdetalle1.Edit;
//datos.zdetalle1.Post;
//datos.zdetalle1.ApplyUpdates;
datos.Data.Commit;

datos.FbqMaster_Fact.Close;
//datos.zdetalle1.Close;
FbrArticulos.Close;

label8.Caption :='Cerrada';
panel.Enabled := false;
guardar.Enabled := false;
hold.Enabled := false;
NUEVO.Enabled := TRUE;
descuento.Enabled := false;
cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;
//master_hold.Refresh;



end;
except

end;
  cierro := true;
  close;
end;




procedure TFrmfacturacion.cerrarClick(Sender: TObject);
begin
guardar.Enabled := true;
cerrar.Enabled := false;
nuevo.Enabled := true;
panel.Enabled := false;
hold.Enabled := true;
dbedit5.SetFocus;
edit1.Clear;
rehabilitar.Enabled := true;

end;


procedure TFrmfacturacion.currency7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return  then begin
  cxButton1.Click;
end;

end;

procedure TFrmfacturacion.cancelarClick(Sender: TObject);
begin

if guardar.Enabled = true then   begin

if (datos.fbqMaster_factsituacion.text <>'HOLD') or  (datos.fbqMaster_factsituacion.text <>'RETORNAR') then
BEGIN
datos.FbqMaster_Fact.CancelUpdates;
//datos.zdetalle1.CancelUpdates;
datos.Data.Rollback;

datos.FbqMaster_Fact.close;
fbrArticulos.close;
label8.Caption :='Cerrada';
zvendedor.close;
panel3.Visible := false;
nuevo.Enabled := true;
cerrar.Enabled := false;
guardar.Enabled := false;

descuento.Enabled := false;

cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;
cxPageControl1.ActivePageIndex := 1;


currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;
END
ELSE BEGIN
    SHOWMESSAGE('**** Reenvie esta factura a Hold ó Enviearla a Caja ****');

END;
end;
end;

procedure TFrmfacturacion.descuentoClick(Sender: TObject);
begin
panel6.Visible := true;
edit5.Clear;
currency7.Clear;
edit5.SetFocus;
end;

procedure TFrmfacturacion.cxButton1Click(Sender: TObject);
var
suma : currency;
begin

   {
 datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
    while not datos.zdetalle1.Eof do
         begin

         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

          datos.zdetalle1.Edit;
          datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle1.Next;

         Currency1.Value := suma;
         Currency2.Value := currency7.Value;
         Currency3.Value := 0.00;
         Currency4.Value := ((suma - currency2.Value) + currency3.Value);
   end;
   edit5.Clear;
   panel6.Visible := false;
   }
end;

procedure TFrmfacturacion.cxButton2Click(Sender: TObject);
begin
MASTER_HOLD.Open;
master_hold.Refresh;
end;

procedure TFrmfacturacion.cxButton3Click(Sender: TObject);
begin
fbretorno.Open;
fbretorno.Refresh;

end;

procedure TFrmfacturacion.rehabilitarClick(Sender: TObject);
begin
guardar.Enabled := False;
cerrar.Enabled := True;
nuevo.Enabled := False;
panel.Enabled := True;
hold.Enabled := False;
//dbedit5.SetFocus;
rehabilitar.Enabled := false;
//edit1.Clear;
end;

procedure TFrmfacturacion.buscar_clienteClick(Sender: TObject);
begin
FrbBusqCliente.edit2.Text :='FACT';
FrbBusqCliente.ShowModal;

end;

procedure TFrmfacturacion.cxButton4Click(Sender: TObject);
var
suma : currency;
begin

   {
with datos.zdetalle1 do
  begin
      delete;
  end;

 datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
    while not datos.zdetalle1.Eof do
         begin
         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
         datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle1.Next;

         Currency1.Value := suma;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := ((suma + currency2.Value) - currency3.Value);
   end;

   if datos.zdetalle1.RecordCount = 0 then

                            begin

         Currency1.Value := 0.00;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := 0.00;
   end;



  }

end;

procedure TFrmfacturacion.cxButton7Click(Sender: TObject);
var
suma : currency;
begin
{
if cxComboBox1.ItemIndex =0 then begin

  if datos.zdetalle1PRECIO.Value < datos.zdetalle1PRECIO1.Value then
    begin
         MsgError('El monto introducido no esta autorizado'#13+
      	               'Favor consultar con el Administrador');

         dbedit11.SetFocus;

    end
    else begin

datos.zdetalle1.Edit;
datos.zdetalle1IMPORTE.Value := datos.zdetalle1CANTIDAD.Value * datos.zdetalle1PRECIO.Value;
datos.zdetalle1TOTAL.Value := datos.zdetalle1CANTIDAD.Value * datos.zdetalle1PRECIO.Value;
datos.zdetalle1.Post;
datos.zdetalle1.ApplyUpdates;
panel4.Visible := false;



 datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
    while not datos.zdetalle1.Eof do
         begin

         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

          datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle1.Next;

         Currency1.Value := suma;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := ((suma + currency2.Value) - currency3.Value);
   end;
end;



end;


if cxComboBox1.ItemIndex =1 then begin
datos.zdetalle1.Open;
datos.zdetalle1.Edit;
  if datos.zdetalle1PRECIO.Value < datos.zdetalle1costos.Value then
    begin
         MsgError('El monto introducido no esta autorizado'#13+
      	               'Favor consultar con el Administrador');

         dbedit11.SetFocus;

    end
    else begin


datos.zdetalle1IMPORTE.Value := datos.zdetalle1CANTIDAD.Value * datos.zdetalle1PRECIO.Value;
datos.zdetalle1TOTAL.Value := datos.zdetalle1CANTIDAD.Value * datos.zdetalle1PRECIO.Value;
datos.zdetalle1.Post;
datos.zdetalle1.ApplyUpdates;
panel4.Visible := false;




 datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
    while not datos.zdetalle1.Eof do
         begin

         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

          datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle1.Next;

         Currency1.Value := suma;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := ((suma + currency2.Value) - currency3.Value);
   end;
end;



end;



    }

end;

procedure TFrmfacturacion.cxButton8Click(Sender: TObject);
begin

//datos.zdetalle1cantidad.text := edit3.Text;
//datos.zdetalle1PRECIO.text   := edit2.Text;

panel4.Visible := false;

end;

procedure TFrmfacturacion.cxGrid1DBTableView1DblClick(Sender: TObject);
var
suma : currency;
begin
if FBrarticulosexistencia1.Value <= 0 then
begin
     MsgError('No hay existencia disponible'#13+
      	               'Favor consultar con el Administrador');

end else begin

with verifica do
 begin
    close;
    sql.clear;
    sql.Add('select * from detailfact');
    sql.Add('where cod_art =:op1');
    sql.Add('and no_fact=:op2');
    params[0].Value := FbrArticulosCodigo.Value;
    params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
 end;


 if verifica.RecordCount =0 then begin

//datos.zdetalle1.Params[0].Value := datos.FbqMaster_FactNO_FACT1.Value;
datos.zdetalle1.append;
datos.zdetalle1NO_FACT.Value      := datos.FbqMaster_FactNO_FACT.Value;
datos.zdetalle1NO_FACT1.Value     := datos.FbqMaster_FactNO_FACT1.Value;
datos.zdetalle1FECHA_FACT.Value   := datos.FbqMaster_FactFECHA_FAC.Value;
datos.zdetalle1COD_EMP.Value      := datos.FbqMaster_FactCOD_EMP.Value;
datos.zdetalle1ARTICULO.Value     := FBrArticulosarticulo.Value;
datos.zdetalle1CANTIDAD.Text      := '1';
datos.zdetalle1PRECIO.Value       := FbrArticulosPrecio2.Value;
datos.zdetalle1PRECIO1.Value      := fbrarticulosprecio1.Value;
datos.zdetalle1MARCA.Value        := fbrarticulosmarca.Value;

datos.zdetalle1TOTAL.text         := CurrToStr(FbrArticulosPrecio2.Value * 1);
datos.zdetalle1IMPORTE.text       := CurrToStr(FbrArticulosPrecio2.Value * 1);
datos.zdetalle1COSTOS.value       := FbrArticulosCosto.Value;
datos.zdetalle1COD_ART.Value      := FbrArticulosCodigo.Value;
datos.zdetalle1CLAVE_COSTO.Value  := fbrarticulosCla_costo.Value;

datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');

while not datos.zdetalle1.Eof do
         begin
         if datos.zdetalle1cod_art.Value <> '' then
         begin
         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
         end;

         datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
         datos.zdetalle1.Next;

         Frmfacturacion.Currency1.Value := suma;
         Frmfacturacion.Currency2.Value := 0.00;
         Frmfacturacion.Currency3.Value := 0.00;
         Frmfacturacion.Currency4.Value := ((suma - Frmfacturacion.currency2.Value) + Frmfacturacion.currency3.Value);
      end;


    edit1.SetFocus;
end;
end;
end;

procedure TFrmfacturacion.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
suma : currency;
begin

if key = vk_return then


if FBrarticulosexistencia1.Value <= 0 then
begin
     MsgError('No hay existencia disponible'#13+
      	               'Favor consultar con el Administrador');

end else begin
  with verifica do
 begin
    close;
    sql.clear;
    sql.Add('select * from detailfact');
    sql.Add('where cod_art =:op1');
    sql.Add('and no_fact=:op2');
    params[0].Value := FbrArticulosCodigo.Value;
    params[1].Value := datos.FbqMaster_FactNO_FACT.Value;
    open;
 end;


 if verifica.RecordCount =0 then begin

//datos.zdetalle1.Open;
//datos.zdetalle1.Params[0].Value := datos.FbqMaster_FactNO_FACT1.Value;
datos.zdetalle1.append;
datos.zdetalle1NO_FACT.Value := datos.FbqMaster_FactNO_FACT.Value;
datos.zdetalle1NO_FACT1.Value := datos.FbqMaster_FactNO_FACT1.Value;
datos.zdetalle1FECHA_FACT.Value := datos.FbqMaster_FactFECHA_FAC.Value;
datos.zdetalle1COD_EMP.Value := datos.FbqMaster_FactCOD_EMP.Value;
datos.zdetalle1ARTICULO.Value := FBrArticulosarticulo.Value;
datos.zdetalle1CANTIDAD.Text := '1';
datos.zdetalle1PRECIO.Value := FbrArticulosPrecio2.Value;
datos.zdetalle1PRECIO1.Value := fbrarticulosprecio1.Value;
datos.zdetalle1MARCA.Value := fbrarticulosmarca.Value;

datos.zdetalle1TOTAL.text := CurrToStr(FbrArticulosPrecio2.Value * 1);
datos.zdetalle1IMPORTE.text := CurrToStr(FbrArticulosPrecio2.Value * 1);
datos.zdetalle1COSTOS.value := FbrArticulosCosto.Value;
datos.zdetalle1COD_ART.Value := FbrArticulosCodigo.Value;
datos.zdetalle1CLAVE_COSTO.Value := fbrarticulosCla_costo.Value;

 datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
    while not datos.zdetalle1.Eof do
         begin
         if datos.zdetalle1cod_art.Value <> '' then
         begin
         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
         end;
         datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle1.Next;

         Currency1.Value := suma;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := ((suma - currency2.Value) + currency3.Value);
      end;

    edit1.SetFocus;

 end;
    end;


end;

procedure TFrmfacturacion.cxGrid2DBTableView1DblClick(Sender: TObject);
var
cero :string;
begin
datos.FbqMaster_Fact.Open;
fbrArticulos.Open;
 datos.zdetalle1.Open;


label8.Caption :='Abierta';

datos.FbqMaster_Fact.append;

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;

  datos.FbqMaster_FactNO_FACT.Value := numerogen_id.Value;
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
     PANEL3.Visible :=  FALSE;
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactVENDEDOR.Value := zvendedornombres_emp.Value;
     datos.FbqMaster_FactHORA.Value := time();
     datos.FbqMaster_FactCOD_CLIENT.Value :='3322222';
     datos.FbqMaster_FactNOM_CLIENTE.Value := 'EXPRESS';
     panel.Enabled := true;
     descuento.Enabled := true;
     buscar_cliente.Enabled := true;
     edit1.SetFocus;
     cxPageControl1.ActivePageIndex := 0;
     cxPageControl1.Pages[0].Enabled := true;
     cxPageControl1.Pages[1].Enabled := false;
     cxPageControl1.Pages[2].Enabled := false;
     cxComboBox1.ItemIndex := 0;
     DBComboBox1.ItemIndex := 0;
     DBComboBox1.Text := 'FACTURACION';


     datos.zdetalle1.Open;
  datos.zdetalle1.Refresh;



  end;

procedure TFrmfacturacion.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  VAR CERO : STRING;
begin
  if KEY = vk_return then
  begin
  datos.FbqMaster_Fact.Open;
  fbrArticulos.Open;
  datos.zdetalle1.Open;
  datos.FbqMaster_Fact.insert;

  label8.Caption :='Abierta';

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;

    datos.FbqMaster_FactNO_FACT.Value := numerogen_id.Value;
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
     PANEL3.Visible :=  FALSE;
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactVENDEDOR.Value := zvendedornombres_emp.Value;
     datos.FbqMaster_FactHORA.Value := time();
     datos.FbqMaster_FactCOD_CLIENT.Value :='3322222';
     datos.FbqMaster_FactNOM_CLIENTE.Value := 'EXPRESS';
     panel.Enabled := true;
     descuento.Enabled := true;
     buscar_cliente.Enabled := true;

     edit1.setfocus;
     cxPageControl1.ActivePageIndex := 0;
     cxPageControl1.Pages[0].Enabled := true;
     cxPageControl1.Pages[1].Enabled := false;
     cxPageControl1.Pages[2].Enabled := false;
     cxComboBox1.ItemIndex := 0;
     DBComboBox1.ItemIndex := 0;
     DBComboBox1.Text := 'FACTURACION';
     datos.zdetalle1.Open;
     datos.zdetalle1.Refresh;

  end;
end;

procedure TFrmfacturacion.cxGrid3DBTableView1DblClick(Sender: TObject);
begin

panel4.Visible := true;
dbedit10.SetFocus;
edit2.Text := datos.zdetalle1PRECIO.Text;
edit3.Text := datos.zdetalle1cantidad.Text;

end;

procedure TFrmfacturacion.cxGrid4DBTableView1DblClick(Sender: TObject);
var
suma : currency;
begin

with datos.FbqMaster_Fact do
  begin
     close;
     sql.Clear;
     sql.Add('select * from master_fact');
     sql.Add('where no_fact1 =:op1');
     params[0].Value := master_holdno_fact1.Value;
     open;
  end;

  datos.zdetalle1.Open;

  cxPageControl1.Pages[0].Enabled := true;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Pages[1].Enabled := false;
  cxPageControl1.Pages[2].Enabled := false;

  datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
 while not datos.zdetalle1.Eof do
         begin
         if datos.zdetalle1cod_art.Value <> '' then
         begin
         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

         end;
         datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
         datos.zdetalle1.Next;

         Currency1.Value := suma;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := ((suma - currency2.Value) + currency3.Value);
      end;


  nuevo.Enabled := false;
  cerrar.Enabled := true;
  descuento.Enabled := true;

  fbrArticulos.Open;
label8.Caption :='Abierta de HOLD';
zvendedor.Open;


panel.Enabled := true;
//cxGrid2.SetFocus;
edit1.SetFocus;



end;

procedure TFrmfacturacion.cxGrid4DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_return  then
begin
  with datos.FbqMaster_Fact do
  begin
     close;
     sql.Clear;
     sql.Add('select * from master_fact');
     sql.Add('where no_fact1 =:op1');
     params[0].Value := master_holdno_fact1.Value;
     open;
  end;

    datos.zdetalle1.open;
       {
  with datos.zdetalle1 do
      begin
       close;
       sql.Clear;
       sql.Add('select * from detailfact');
       sql.Add('where no_fact1=:op1');
       params[0].Value := master_holdno_fact1.Value;
       opeN;
      end;
        }
  cxPageControl1.Pages[0].Enabled := true;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Pages[1].Enabled := false;
  cxPageControl1.Pages[2].Enabled := false;

  currency1.Value :=datos.FbqMaster_FactMONTO.Value;
  currency4.Value :=datos.FbqMaster_FactMONTOPAGO.Value;
  currency2.Value := datos.FbqMaster_FactDESCUENTO.Value;
  currency3.Value :=datos.FbqMaster_FactPAGADOCXC.Value;
  nuevo.Enabled := false;
  cerrar.Enabled := true;

  fbrArticulos.Open;
label8.Caption :='Abierta de HOLD';
zvendedor.Open;
nuevo.Enabled := false;
cerrar.Enabled := true;

panel.Enabled := true;
//cxGrid2.SetFocus;
edit1.SetFocus;



end;
end;

procedure TFrmfacturacion.cxGridDBTableView1DblClick(Sender: TObject);
var
suma : currency;
begin

with datos.FbqMaster_Fact do
  begin
     close;
     sql.Clear;
     sql.Add('select * from master_fact');
     sql.Add('where no_fact1 =:op1');
     params[0].Value := fbretornono_fact1.Value;
     open;
  end;
  datos.zdetalle1.Open;

  cxPageControl1.Pages[0].Enabled := true;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Pages[1].Enabled := false;
  cxPageControl1.Pages[2].Enabled := false;

  datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
 while not datos.zdetalle1.Eof do
         begin
         if datos.zdetalle1cod_art.Value <> '' then
         begin
         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

         end;
         datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
         datos.zdetalle1.Next;

         Currency1.Value := suma;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := ((suma - currency2.Value) + currency3.Value);
      end;


  nuevo.Enabled := false;
  cerrar.Enabled := true;
  descuento.Enabled := true;

  fbrArticulos.Open;
label8.Caption :='Abierta';
zvendedor.Open;


panel.Enabled := true;
//cxGrid2.SetFocus;
edit1.SetFocus;


end;

procedure TFrmfacturacion.cxPageControl1Change(Sender: TObject);
begin
     if cxPageControl1.ActivePageIndex = 1 then
     begin

        master_hold.Open;
        master_hold.Refresh;
     end;

if cxPageControl1.ActivePageIndex = 2 then
     begin

        FBRETORNO.Open;
        FBRETORNO.Refresh;
     end;

end;

procedure TFrmfacturacion.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
if cxPageControl1.ActivePageIndex = 1 then
     begin

        master_hold.Open;
        master_hold.Refresh;
     end;

if cxPageControl1.ActivePageIndex = 2 then
     begin

        FBRETORNO.Open;
        FBRETORNO.Refresh;
     end;

end;

procedure TFrmfacturacion.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
begin
  dbedit11.SetFocus;
end;
end;

procedure TFrmfacturacion.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
begin
  cxButton7.SetFocus;
end;
end;

procedure TFrmfacturacion.Edit1Change(Sender: TObject);
begin
if op1.ItemIndex = 0 then
begin
with FbrArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtarticulo');
    sql.Add('where articulo like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;

if op1.ItemIndex = 1 then
begin
with FbrArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtarticulo');
    sql.Add('where marca like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;
end;

procedure TFrmfacturacion.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
 begin
   cxGrid1.SetFocus;
 end;
end;

procedure TFrmfacturacion.Edit4Change(Sender: TObject);
begin

if op2.ItemIndex = 0 then begin
with master_hold do
  begin
    close;
    sql.Clear;
    sql.add('Select * from master_fact');
    sql.Add('Where situacion =:op1');
    sql.Add('and no_fact like '+#39+'%'+edit4.Text+'%'+#39);
    params[0].Value := 'HOLD';
    open;
  end;
end;

if op2.ItemIndex = 1 then begin
with master_hold do
  begin
    close;
    sql.Clear;
    sql.add('Select * from master_fact');
    sql.Add('Where situacion =:op1');
    sql.Add('and nom_cliente like '+#39+'%'+edit4.Text+'%'+#39);
    params[0].Value := 'HOLD';
    open;
  end;
end;


end;

procedure TFrmfacturacion.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
begin
datos.ZUconfiguracion.Open;
  if edit5.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
     begin
        currency7.Enabled := true;
        currency7.SetFocus;
     end else begin
          MsgError('Usted no esta autorizado para relaizar esa operación'#13+
      	               'Favor consultar con el Administrador');
          edit5.Clear;
          panel6.Visible := false;

     end;

end;
end;

procedure TFrmfacturacion.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    CanClose := Cierro;
    Frm_Control_Fact.cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmfacturacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  suma : currency;
  hoy  :tdate;
begin
if key = vk_f12 then
begin
//showform(tFrmCunlta_Precio, FrmCunlta_Precio);

end;


if key = vk_escape then begin
  panel4.Visible := false;
  panel6.Visible := false;
end;

if key =vk_F2 then
begin

if nuevo.Enabled =true  THEN
begin
zvendedor.Open;
panel3.Visible := true;
nuevo.Enabled := false;
cerrar.Enabled := true;

cxGrid2.SetFocus;
end;
end;

if key = vk_f3 then
  begin
    with datos.zdetalle1 do
  begin
      delete;
  end;

 datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
    while not datos.zdetalle1.Eof do
         begin

         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

          datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle1.Next;

         Currency1.Value := suma;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := ((suma + currency2.Value) - currency3.Value);
   end;

    if datos.zdetalle1.RecordCount = 0 then

                            begin

         Currency1.Value := 0.00;
         Currency2.Value := 0.00;
         Currency3.Value := 0.00;
         Currency4.Value := 0.00;
   end;



 end;

 if key =vk_f7 then
 begin
if cerrar.Enabled = true then
begin
 guardar.Enabled := true;
cerrar.Enabled := false;
nuevo.Enabled := true;
panel.Enabled := false;
hold.Enabled := true;
rehabilitar.Enabled := true;
dbedit5.SetFocus;
edit1.Clear;
end;
end;


if key = vk_f5 then
  begin
    if guardar.Enabled = true then
      begin
      try
if datos.fbqMaster_factsituacion.text ='HOLD' then
BEGIN
hoy := now;
datos.FbqMaster_Fact.Edit;

datos.fbqMaster_factsituacion.text :='ENVIADA';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
datos.FbqMaster_FactTIPO.Value      := 'AL CONTADO';
DATOS.FbqMaster_FactROTULO.text := cxComboBox1.Text;
DATOS.FbqMaster_FactFECHA_FAC.Value := hoy;
datos.FbqMaster_FactDESCUENTO.Value := currency2.Value;
datos.fbqmaster_factmontopago.Value := currency4.Value;



currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;

//datos.FbqMaster_Fact.Post;
datos.FbqMaster_Fact.ApplyUpdates;

//datos.zdetalle1.edit;
//datos.zdetalle1.Post;
datos.zdetalle1.ApplyUpdates;

datos.Data.Commit;

datos.FbqMaster_Fact.Close;
datos.zdetalle1.Close;
FbrArticulos.Close;

label8.Caption :='Cerrada';
panel.Enabled := false;
guardar.Enabled := false;
hold.Enabled := false;
NUEVO.Enabled := TRUE;
descuento.Enabled := false;

cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;

master_hold.Open;
master_hold.Refresh;

END
ELSE BEGIN
hoy := now;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text :='ENVIADA';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
datos.FbqMaster_FactTIPO.Value      := 'AL CONTADO';
DATOS.FbqMaster_FactROTULO.text := cxComboBox1.Text;
DATOS.FbqMaster_FactFECHA_FAC.Value := hoy;


if DBComboBox1.ItemIndex = 0 then begin
datos.FbqMaster_Factterminal.Text := 'FACTURACION';
end;

if DBComboBox1.ItemIndex = 1 then begin
datos.FbqMaster_Factterminal.text := 'COTIZACION';
end;

datos.FbqMaster_Factmonto.Value := currency1.Value;
datos.FbqMaster_Factdescuento.Value := currency2.Value;
datos.FbqMaster_Factmontopago.Value := currency4.Value;


currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;

//datos.FbqMaster_Fact.Post;
datos.FbqMaster_Fact.ApplyUpdates;

//datos.zdetalle1.edit;
//datos.zdetalle1.Post;
datos.zdetalle1.ApplyUpdates;

datos.Data.Commit;

datos.FbqMaster_Fact.Close;
datos.zdetalle1.Close;
FbrArticulos.Close;

label8.Caption :='Cerrada';
panel.Enabled := false;
guardar.Enabled := false;
hold.Enabled := false;
NUEVO.Enabled := TRUE;
descuento.Enabled := false;

cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;

//master_hold.Open;
//master_hold.Refresh;
end;
      except

  end;
   cierro := true;
  // Frm_Control_Fact.master_cobro.refresh;
 close;
  end;

 end;

if key = vk_f11 then
  begin
    if hold.Enabled = true then
      begin
         try
         if datos.fbqMaster_factsituacion.text <>'HOLD' then
BEGIN
master_hold.Open;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text :='HOLD';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
DATOS.FbqMaster_FactROTULO.text := cxComboBox1.Text;
datos.FbqMaster_Factterminal.Text := 'FACTURACION';

datos.FbqMaster_Factmonto.Value := currency1.Value;
datos.FbqMaster_Factdescuento.Value := currency2.Value;
datos.FbqMaster_Factmontopago.Value := currency4.Value;
       {
with montoupdate do
  begin
    close;
    sql.Clear;
    SQL.Add('update master_fact set');
    sql.add('NO_FACT=:NO_FACT, fecha_fac=:fecha_fac, TIPO=:TIPO, no_fact1=:no_fact1, hora=:hora, condicion=:condicion, VENDEDOR=:vendedor,TERMINAL=:TERMINAL,'+
              'SITUACION=:situacion,NOM_CLIENTE=:NOM_CLIENTE,'+
              'ROTULO=:ROTULO');

     sql.Add('where no_fact =:no_fact11');
     ParamByName('no_fact').AsInteger := datos.FbqMaster_Factno_fact.Value;
     ParamByName('fecha_fac').AsDate := datos.FbqMaster_Factfecha_fac.Value;
     ParamByName('tipo').AsString := datos.FbqMaster_Facttipo.Value;
     ParamByName('hora').AsTime := datos.FbqMaster_Facthora.Value;
     ParamByName('condicion').AsString := datos.FbqMaster_Factcondicion.Value;
     ParamByName('vendedor').AsString := datos.FbqMaster_Factvendedor.Value;
     ParamByName('terminal').AsString := datos.FbqMaster_Factterminal.Value;
     ParamByName('situacion').AsString := datos.FbqMaster_Factsituacion.Value;
     ParamByName('nom_cliente').AsString := datos.FbqMaster_Factnom_cliente.Value;
     ParamByName('rotulo').AsString := datos.FbqMaster_Factrotulo.Value;
     ParamByName('no_fact11').AsInteger := datos.FbqMaster_Factno_fact.Value;
     ExecSQL;

end;
    }
currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;

datos.FbqMaster_Fact.Post;
datos.FbqMaster_Fact.ApplyUpdates;

datos.zdetalle1.Edit;
datos.zdetalle1.Post;
datos.zdetalle1.ApplyUpdates;
datos.Data.Commit;

datos.FbqMaster_Fact.Close;
datos.zdetalle1.Close;
FbrArticulos.Close;

label8.Caption :='Cerrada';
panel.Enabled := false;
guardar.Enabled := false;
hold.Enabled := false;
NUEVO.Enabled := TRUE;
descuento.Enabled := false;
cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;
master_hold.Refresh;

END else begin
master_hold.Open;
datos.FbqMaster_Fact.Edit;
datos.fbqMaster_factsituacion.text :='HOLD';
datos.FbqMaster_FactCONDICION.text :='ACTIVA';
DATOS.FbqMaster_FactROTULO.text := cxComboBox1.Text;
datos.FbqMaster_Factterminal.Text := 'FACTURACION';

datos.FbqMaster_Factmonto.Value := currency1.Value;
datos.FbqMaster_Factdescuento.Value := currency2.Value;
datos.FbqMaster_Factmontopago.Value := currency4.Value;


 {
with montoupdate do
  begin
    close;
    sql.Clear;
    SQL.Add('update master_fact set');
    sql.add('NO_FACT=:NO_FACT, fecha_fac=:fecha_fac, TIPO=:TIPO, no_fact1=:no_fact1, hora=:hora, condicion=:condicion, VENDEDOR=:vendedor,TERMINAL=:TERMINAL,'+
              'SITUACION=:situacion,NOM_CLIENTE=:NOM_CLIENTE,'+
              'ROTULO=:ROTULO');

     sql.Add('where no_fact =:no_fact11');
     ParamByName('no_fact').AsInteger := datos.FbqMaster_Factno_fact.Value;
     ParamByName('fecha_fac').AsDate := datos.FbqMaster_Factfecha_fac.Value;
     ParamByName('tipo').AsString := datos.FbqMaster_Facttipo.Value;
     ParamByName('hora').AsTime := datos.FbqMaster_Facthora.Value;
     ParamByName('condicion').AsString := datos.FbqMaster_Factcondicion.Value;
     ParamByName('vendedor').AsString := datos.FbqMaster_Factvendedor.Value;
     ParamByName('terminal').AsString := datos.FbqMaster_Factterminal.Value;
     ParamByName('situacion').AsString := datos.FbqMaster_Factsituacion.Value;
     ParamByName('nom_cliente').AsString := datos.FbqMaster_Factnom_cliente.Value;
     ParamByName('rotulo').AsString := datos.FbqMaster_Factrotulo.Value;
     ParamByName('no_fact11').AsInteger := datos.FbqMaster_Factno_fact.Value;
     ExecSQL;

end;
  }
currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;

datos.FbqMaster_Fact.Post;
datos.FbqMaster_Fact.ApplyUpdates;

datos.zdetalle1.Edit;
datos.zdetalle1.Post;
datos.zdetalle1.ApplyUpdates;
datos.Data.Commit;

datos.FbqMaster_Fact.Close;
datos.zdetalle1.Close;
FbrArticulos.Close;

label8.Caption :='Cerrada';
panel.Enabled := false;
guardar.Enabled := false;
hold.Enabled := false;
NUEVO.Enabled := TRUE;
descuento.Enabled := false;
cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;
master_hold.Refresh;
end;
         except

         end;
          cierro := true;
          close;
end;
  end;

 if key =vk_f6  then
 begin
   if descuento.Enabled = true then
   begin
       panel6.Visible := true;
edit5.Clear;
currency7.Clear;
edit5.SetFocus;
   end;

 end;
       {
if key =vk_f10 then
begin
if guardar.Enabled = true then   begin
 if datos.fbqMaster_factsituacion.text <>'HOLD' then
BEGIN
datos.FbqMaster_Fact.CancelUpdates;
datos.zdetalle1.CancelUpdates;
datos.Data.Rollback;

datos.FbqMaster_Fact.close;
fbrArticulos.close;
label8.Caption :='Cerrada';
zvendedor.close;
panel3.Visible := false;
nuevo.Enabled := true;
cerrar.Enabled := false;
guardar.Enabled := false;
cancelar.Enabled := false;
descuento.Enabled := false;

cxPageControl1.Pages[0].Enabled := false;
cxPageControl1.Pages[1].Enabled := true;
cxPageControl1.Pages[2].Enabled := true;
cxPageControl1.ActivePageIndex := 1;

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, -1) from RDB$DATABASE');
     open;
  end;
currency1.Value := 0.00;
currency2.Value := 0.00;
currency3.Value := 0.00;
currency4.Value := 0.00;

END
ELSE BEGIN
    SHOWMESSAGE('**** Reenvie esta factura a Hold ó Enviearla a Caja ****');

END;
end;
end;
      }
end;
procedure TFrmfacturacion.FormShow(Sender: TObject);
begin
   cierro := false;
end;

procedure TFrmfacturacion.Label10Click(Sender: TObject);
begin


if Frmfacturacion.EDIT8.Text ='HOLD' then
begin


  Frmfacturacion.fbrArticulos.Open;
  Frmfacturacion.zvendedor.Open;


Frmfacturacion.panel.Enabled := true;
cxPageControl1.Enabled := true;
//cxGrid2.SetFocus;
Frmfacturacion.edit1.SetFocus;
end else begin
    panel3.Visible  := true;
  cxGrid2.SetFocus;
end;
//cancelar.Enabled := false;
//cerrar.Enabled := false;
//nuevo.Enabled := true;
//descuento.Enabled := false;

end;

procedure TFrmfacturacion.Label25Click(Sender: TObject);
begin
  if (LABEL8.Caption ='Abierta') and (edit8.Text <> 'HOLD') then
   begin
    //     MsgError('Esta Ventana no puede ser cerrada'#13+
      //	               'Favor Cierra la Factura');


datos.FbqMaster_Fact.close;
fbrArticulos.close;

datos.FbqMaster_Fact.CancelUpdates;
datos.zdetalle1.CancelUpdates;
datos.Data.Rollback;

with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, -1) from RDB$DATABASE');
     open;
  end;


zvendedor.close;
panel3.Visible := false;
nuevo.Enabled := true;
cerrar.Enabled := false;
guardar.Enabled := false;
descuento.Enabled := false;
cierro := true;
CLOSE;

end;

if (LABEL8.Caption ='Abierta') and (edit8.Text = 'HOLD') or  (edit8.Text = 'DEV') then
begin
datos.FbqMaster_Fact.CancelUpdates;
datos.zdetalle1.CancelUpdates;
datos.Data.Rollback;

datos.FbqMaster_Fact.close;
fbrArticulos.close;
zvendedor.close;
panel3.Visible := false;
nuevo.Enabled := true;
cerrar.Enabled := false;
guardar.Enabled := false;

descuento.Enabled := false;
cierro := true;
CLOSE;

end;

if LABEL8.Caption ='Cerrada' then begin

datos.FbqMaster_Fact.CancelUpdates;
datos.zdetalle1.CancelUpdates;
datos.Data.Rollback;

datos.FbqMaster_Fact.close;
fbrArticulos.close;
zvendedor.close;
panel3.Visible := false;
nuevo.Enabled := true;
cerrar.Enabled := false;
guardar.Enabled := false;

descuento.Enabled := false;
cierro := true;
  CLOSE;

end;




end;



procedure TFrmfacturacion.op1Click(Sender: TObject);
begin
if op1.ItemIndex = 0  then
   begin
     label1.Caption := 'Por Articulos';
     edit1.SetFocus;
   end;
if op1.ItemIndex = 1  then
   begin
     label1.Caption := 'Por Referencias';
     edit1.SetFocus;
   end;
end;

procedure TFrmfacturacion.op2Click(Sender: TObject);
begin
if op2.ItemIndex =0 then
begin
  edit4.SetFocus;
  label19.Caption := 'Por Numero de Fact'
end;

if op2.ItemIndex =1 then
begin
  edit4.SetFocus;
  label19.Caption := 'Por Nombre de Cliente'
end;



end;

end.
