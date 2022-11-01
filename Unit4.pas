unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, DBCtrls, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxButtons, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZDataset, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Clientes1: TMenuItem;
    Mantenimientos1: TMenuItem;
    Image2: TImage;
    Image1: TImage;
    Impresion1: TMenuItem;
    ReportedeClientesGeneral1: TMenuItem;
    ReportedeClientesxCriterios1: TMenuItem;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Mantenimientos2: TMenuItem;
    Clientes2: TMenuItem;
    ModificarArticulos1: TMenuItem;
    RecodificadordeCodigo1: TMenuItem;
    MantemientodeCategorias1: TMenuItem;
    ransferenciadeArticulos1: TMenuItem;
    Impresiones1: TMenuItem;
    ImpresiondeArticulosxCategoria1: TMenuItem;
    ImpresindeArticulosenBajas1: TMenuItem;
    AnalisisInventaria1: TMenuItem;
    MantenimientodeFabricantes1: TMenuItem;
    Facturacin1: TMenuItem;
    EmitirFactura1: TMenuItem;
    CrearCotizaciones1: TMenuItem;
    ConsultarFacturas1: TMenuItem;
    RealizarCuadredeCaja1: TMenuItem;
    CobrarFacturas1: TMenuItem;
    Edit1: TEdit;
    ConvertirCotizacionenFactura1: TMenuItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Clientes3: TMenuItem;
    Empleados1: TMenuItem;
    Mantenimientos3: TMenuItem;
    Reportes1: TMenuItem;
    ConsultarCotizaciones1: TMenuItem;
    CuentasxCobrar1: TMenuItem;
    ConsultarEstadodeCuenta1: TMenuItem;
    RealizarPagos1: TMenuItem;
    ConsultasxAntiguedad1: TMenuItem;
    ActualizarEstadosdeCuentas1: TMenuItem;
    EstadosdeCuentaGeneral1: TMenuItem;
    ZUconfiguracion: TZReadOnlyQuery;
    ZUconfiguracionCODIGO_COM: TWideStringField;
    ZUconfiguracionEMPRESA: TWideStringField;
    ZUconfiguracionRNC: TWideStringField;
    ZUconfiguracionTELEFONO: TWideStringField;
    ZUconfiguracionFAX: TWideStringField;
    ZUconfiguracionCELULAR: TWideStringField;
    ZUconfiguracionEMAIL: TWideStringField;
    ZUconfiguracionDIRECCION: TWideStringField;
    ZUconfiguracionCONTACTO: TWideStringField;
    ZUconfiguracionFACTIMPRIME: TWideStringField;
    ZUconfiguracionGENERART: TWideStringField;
    ZUconfiguracionITBIS: TFloatField;
    ZUconfiguracionAVG_GANANCIA: TFloatField;
    ZUconfiguracionCOBRAR_ITBS: TWideStringField;
    ZUconfiguracionTHEMS: TWideStringField;
    ZUconfiguracionANCHO: TIntegerField;
    ZUconfiguracionALTO: TIntegerField;
    ZUconfiguracionRUTABACKUP: TWideStringField;
    ZUconfiguracionABRIRCAJON: TIntegerField;
    ZUconfiguracionPTINTERTPV: TWideStringField;
    ZUconfiguracionCARGO_CARD: TFloatField;
    ZUconfiguracionCARGO_CHEQUE: TFloatField;
    ZUconfiguracionMSN_PIE_FACT: TWideStringField;
    ZUconfiguracionIMP_CANT: TWideStringField;
    ZUconfiguracionIMPRIMIRCREDITO: TWideStringField;
    ZUconfiguracionIMPRIMIRCONTADO: TWideStringField;
    ZUconfiguracionDESCUENTO: TWideStringField;
    ZUconfiguracionTIPOITBS: TWideStringField;
    ZUconfiguracionTERMINAL: TWideStringField;
    ZUconfiguracionSTOPVENTAS: TFloatField;
    ZUconfiguracionSTOPCOMPRAS: TFloatField;
    ZUconfiguracionCONTROLSTOPVENTAS: TWideStringField;
    ZUconfiguracionCONTROLSTOPCOMPRAS: TWideStringField;
    ZUconfiguracionNCF_CF_INICIO_NUMERO: TFloatField;
    ZUconfiguracionNCF_CF_INICIO_LETRA: TWideStringField;
    ZUconfiguracionNCF_CF_CONTADOR: TIntegerField;
    ZUconfiguracionNCF_CF_FINAL_NUMERO: TFloatField;
    ZUconfiguracionNCF_VF_INICIO_NUMERO: TFloatField;
    ZUconfiguracionNCF_VF_INICIO_LETRA: TWideStringField;
    ZUconfiguracionNCF_VF_CONTADOR: TIntegerField;
    ZUconfiguracionNCF_VF_FINAL_NUMERO: TFloatField;
    ZUconfiguracionNCF_ESP_INICIO_NUMERO: TFloatField;
    ZUconfiguracionNCF_ESP_INICIO_LETRA: TWideStringField;
    ZUconfiguracionNCF_ESP_CONTADOR: TIntegerField;
    ZUconfiguracionNCF_ESP_FINAL: TFloatField;
    ZUconfiguracionNO_AUTORIZACION2: TFloatField;
    ZUconfiguracionNO_AUTORIZACION3: TFloatField;
    ZUconfiguracionNO_AUTORIZACION: TFloatField;
    ZUconfiguracionUSAR_CF: TWideStringField;
    ZUconfiguracionUSAR_VF: TWideStringField;
    ZUconfiguracionUSAR_ESP: TWideStringField;
    ZUconfiguracionROTULO_FC: TWideStringField;
    ZUconfiguracionROTULO_FVF: TWideStringField;
    ZUconfiguracionROTULO_ESP: TWideStringField;
    ZUconfiguracionVARIABLE_DEDUCIBLE: TFloatField;
    ZUconfiguracionLOGO: TBlobField;
    ZUconfiguracionCLAVEAUTORIZACION: TWideStringField;
    ZUconfiguracionCLAVEANULAR: TWideStringField;
    ZUconfiguracionTERMINAL_TPV: TWideStringField;
    ZUconfiguracionMONTOCF: TFloatField;
    ZUconfiguracionREDONDEAR: TWideStringField;
    Ds_Config: TDataSource;
    Ds_PRn_Credito: TDataSource;
    Prn_Credito: TZReadOnlyQuery;
    Prn_CreditoCOD_CLIENT: TWideStringField;
    Prn_CreditoNOM_CLIENTE: TWideStringField;
    Prn_CreditoMONTO: TFloatField;
    Prn_CreditoABONO: TFloatField;
    Prn_CreditoPENDIENTE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Mantenimientos1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure MantenimientodeFabricantes1Click(Sender: TObject);
    procedure ModificarArticulos1Click(Sender: TObject);
    procedure EmitirFactura1Click(Sender: TObject);
    procedure CobrarFacturas1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Mantenimientos3Click(Sender: TObject);
    procedure MantemientodeCategorias1Click(Sender: TObject);
    procedure RealizarCuadredeCaja1Click(Sender: TObject);
    procedure ConsultarEstadodeCuenta1Click(Sender: TObject);
    procedure EstadosdeCuentaGeneral1Click(Sender: TObject);
    procedure RealizarPagos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation
uses tools, Unit1, Unit3, Unit5, unit6, unit7, unit8, Unit9, Unit12, Unit14,
  Unit15, Unit17, Unit16, Unit18;
{$R *.dfm}

procedure TFrmPrincipal.Clientes2Click(Sender: TObject);
begin
ShowForm(TFrmArticulos, FrmArticulos);
end;

procedure TFrmPrincipal.CobrarFacturas1Click(Sender: TObject);
begin
     showform(Tfrmcobrar, frmcobrar);
end;

procedure TFrmPrincipal.ConsultarEstadodeCuenta1Click(Sender: TObject);
begin
 frmcxc.showmodal;
end;

procedure TFrmPrincipal.cxButton1Click(Sender: TObject);
begin

Frm_Control_Fact.SHOWMODAL;


//ShowForm(tFrmfacturacion, Frmfacturacion);
end;

procedure TFrmPrincipal.cxButton2Click(Sender: TObject);
begin
   showform(Tfrmcobrar, frmcobrar);
end;

procedure TFrmPrincipal.cxButton3Click(Sender: TObject);
begin
ShowForm(TFrmArticulos, FrmArticulos);
end;

procedure TFrmPrincipal.cxButton4Click(Sender: TObject);
begin
ShowForm(TFrmCodBar, FrmCodBar);
end;

procedure TFrmPrincipal.EmitirFactura1Click(Sender: TObject);
begin
ShowForm(tFrmfacturacion, Frmfacturacion);
end;

procedure TFrmPrincipal.EstadosdeCuentaGeneral1Click(Sender: TObject);
begin
  with prn_credito do
  begin
    close;
    sql.Clear;
    sql.Add('select cod_client,nom_cliente,sum(monto) Monto,Sum(abono) Abono,sum(pendiente) Pendiente from master_fact');
    sql.Add('where tipo =''CREDITO''');
    sql.Add('and quees <>''SALDADA''');
    SQL.Add('group by cod_client,nom_cliente');
    open;
  end;

 // print1.PrepareReport(true);
  //print1.ShowPreparedReport;

end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
Application.HintHidePause := 1500000;
//shortdateformat := 'dd/mm/yyyy';
 //	Application.OnException:= DataError;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
ShowForm(TFrmlogin, Frmlogin);
end;

procedure TFrmPrincipal.MantemientodeCategorias1Click(Sender: TObject);
begin
showform(TFmrMant_Categoria, FmrMant_Categoria);
end;

procedure TFrmPrincipal.MantenimientodeFabricantes1Click(Sender: TObject);
begin
showForm(TFrmFab, FrmFab);
end;

procedure TFrmPrincipal.Mantenimientos1Click(Sender: TObject);
begin
showform(TfrmCliente, Frmcliente);
end;

procedure TFrmPrincipal.Mantenimientos3Click(Sender: TObject);
begin
  ShowForm(TfrmEmpleados, frmEmpleados);
end;

procedure TFrmPrincipal.ModificarArticulos1Click(Sender: TObject);
begin
ShowForm(TFrmCodBar, FrmCodBar);
end;

procedure TFrmPrincipal.RealizarCuadredeCaja1Click(Sender: TObject);
begin
    showform(Tfrmcuadre_caja, frmcuadre_caja);
end;

procedure TFrmPrincipal.RealizarPagos1Click(Sender: TObject);
begin
  FrmGet_CXC.showmodal;
end;

end.
