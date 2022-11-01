unit Unit68;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxTextEdit, Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ZDataset,
  ZAbstractRODataset, Vcl.Menus, cxButtons, frxClass, frxDBSet,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxGDIPlusClasses, Vcl.ExtCtrls, dxBarBuiltInMenu,
  cxPC, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, cxLabel, cxDBLabel,
  Vcl.DBCGrids, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinTheBezier, Vcl.WinXCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  acPNG, Vcl.Buttons;

type
  TFrmHold = class(TForm)
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
    DsHold: TDataSource;
    HOLDNOMBRECLIENTE_PRN: TWideStringField;
    cxButton20: TcxButton;
    cxButton4: TcxButton;
    cxButton11: TcxButton;
    cxButton5: TcxButton;
    cxButton28: TcxButton;
    detalle: TfrxDBDataset;
    PrintDelivery: TfrxReport;
    Config: TfrxDBDataset;
    master: TfrxDBDataset;
    HOLDFECHAVENCIMIENTO: TDateField;
    Actualiza: TZReadOnlyQuery;
    Zdetalle: TZReadOnlyQuery;
    DSdetalle: TDataSource;
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
    cxPageControl1: TcxPageControl;
    ch: TcxTabSheet;
    Image1: TImage;
    cxTabSheet2: TcxTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    Image2: TImage;
    cxDBLabel1: TcxDBLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    MCocina: TfrxDBDataset;
    DCocina: TfrxDBDataset;
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
    Image3: TImage;
    SqlBuscarCocinaMESERO: TWideStringField;
    PrintCocina: TfrxReport;
    PreFact: TfrxReport;
    Image4: TImage;
    Label2: TLabel;
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
    Label3: TLabel;
    Edit1: TEdit;
    HOLDDIR: TWideStringField;
    HOLDCAJ: TWideStringField;
    HOLDTECNICO: TWideStringField;
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
    QbuscarMesa: TZReadOnlyQuery;
    QbuscarMesaNO_FACT: TIntegerField;
    QbuscarMesaCLIENTEID: TIntegerField;
    cxDBLabel3: TcxDBLabel;
    Label1: TLabel;
    Image5: TImage;
    HOLDIDDR: TIntegerField;
    Panel2: TPanel;
    btnsalir: TSpeedButton;
    Panel7: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label4: TLabel;
    Panel12: TPanel;
    Label60: TLabel;
    lblEstado: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid4DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid4DBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel45: TPanel;
    Label5: TLabel;
    Panel46: TPanel;
    cxTextEdit2: TEdit;
    Panel26: TPanel;
    BTPreFactura: TSpeedButton;
    ZdetalleDESC: TFloatField;
    ZdetalleLIN: TIntegerField;
    ZdetallePORCENTDESC: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxGrid4DBTableView1DblClick(Sender: TObject);
    procedure cxGrid4DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton28Click(Sender: TObject);
    procedure cxGrid4DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure accionMesa;
    procedure Image2Click(Sender: TObject);
    procedure cxDBLabel1Click(Sender: TObject);
    procedure cxDBCalcEdit1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure cxTextEdit2Change(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHold: TFrmHold;

implementation

{$R *.dfm}

uses Unit2, Unit59, Pizeria, Touch, UFactRapida, Tools, uDetalleMesa;

procedure TFrmHold.accionMesa;
begin

    statushold := 'HOLD';
    datos.Data.Commit;

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
      sql.Add('where a.situacion  =:opcion2');
      sql.Add('and a.condicion =:OPCION4');
      sql.Add('AND A.ROTULO =:OPCION5');
      // sql.Add('AND A.tipo =:opcion6');
      sql.Add('and a.no_fact =:oppp');
      params[0].Value := 'HOLD';
      params[1].Value := 'ACTIVA';
      params[2].Value := 'FACTURACION';
      // Params[3].Value := 'Contado';
      params[3].Value := HOLDNO_FACT.Value;

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

    if datos.ZUconfiguracionTerminal.Value = 'Pizzeria' then
    begin

      WITH FrmPizeria.IbqClientes DO
      BEGIN
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;

      END;

      with FrmPizeria.SQLCategoria do
      begin
        close;
        sql.Clear;
        sql.Add('select * from MTCATEGORIA where opcion = ''SI''');
        open;
      end;

      // FrmPizeria.cxPageControl1.ActivePageIndex :=0;
      // datos.FbqMaster_Fact.Open;
      // FrmPizeria.op1.Enabled := true;
      // FrmPizeria.QClasificaciones.Open;
      // FrmPizeria.IbqRArticulos.Open;
      // FrmPizeria.DBLClasificacion.ItemIndex := 0;

      FrmPizeria.QClasificaciones.open;
      FrmPizeria.Edit1.Text := IntToStr(datos.FbqMaster_FactCODIGO.Value);
      FrmPizeria.edit3.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
      FrmPizeria.IbqRArticulos.open;
      FrmPizeria.DBLClasificacion.ItemIndex := 0;
      FrmPizeria.nuevo;

    end;

    if datos.ZUconfiguracionTerminal.Value = 'Touch' then
    begin

      WITH FrmTouch.IbqClientes DO
      BEGIN
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;

      END;

      with FrmTouch.SQLCategoria do
      begin
        close;
        sql.Clear;
        sql.Add('select * from MTCATEGORIA where opcion = ''SI''');
        open;
      end;

      FrmTouch.SHPropina.State := tssOn;
      FrmTouch.SHPropina.Enabled := false;
      FrmTouch.tbley.Visible := true;
      FrmTouch.QClasificaciones.open;
      FrmTouch.Edit1.Text := IntToStr(datos.FbqMaster_FactCODIGO.Value);
      FrmTouch.edit3.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
      FrmTouch.IbqRArticulos.open;
      // FrmTouch.DBLClasificacion.ItemIndex := 0;
      FrmTouch.nuevo;
      FrmTouch.totales;

    end;



end;


procedure TFrmHold.BtCancelarClick(Sender: TObject);
var
men_pie : string;
cInf : String;
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
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');
    params[0].Value := 'HOLD';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    // Params[3].Value := 'Contado';
    params[3].Value := HOLDNO_FACT.Value;

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

  cInf := datos.ZUconfiguracionROTULO_FC.Value + '\PreFacturaTicket' + '.fr3';
  PrintDelivery.LoadFromFile(cInf);
  PrintDelivery.variables['titulos'] := quotedstr('PRE FACTURA');
 // PrintDelivery.variables['cajero'] := quotedstr(edit2.Text);
  men_pie := datos.ZUconfiguracionMensaje_pie1.Value;
  PrintDelivery.variables['mensaje1'] := quotedstr(men_pie);
  PrintDelivery.PrintOptions.Copies := 1;
  PrintDelivery.PrepareReport(true);
  PrintDelivery.print;


end;

procedure TFrmHold.btnsalirClick(Sender: TObject);
begin
  close;
end;

procedure TFrmHold.cxButton28Click(Sender: TObject);
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
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');
    params[0].Value := 'HOLD';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    // Params[3].Value := 'Contado';
    params[3].Value := HOLDNO_FACT.Value;

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

  PrintDelivery.variables['titulos'] := quotedstr('DELIVERY');
  // PrintDelivery.variables['cajero']   :=quotedstr(edit2.text);

  if datos.FbqMaster_FactTIPO.Value = 'Contado' then
  begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie1.Value;
    // PrintDelivery.variables['mensaje1'] :=quotedstr(men_pie);
  end;

  if datos.FbqMaster_FactTIPO.Value = 'CREDITO' then
  begin
    // men_pie :=datos.ZUconfiguracionMensaje_pie2.Value;
    // imprime_grande.variables['mensaje1'] :=quotedstr(men_pie);
  end;

  if datos.ZUconfiguracionAPLICAR_AUMENTO_TAZA.Value = 'NO' then
  BEGIN
    PrintDelivery.PrintOptions.Copies := 1;
  END
  ELSE
  begin
    PrintDelivery.PrintOptions.Copies := 2;

  end;

  // recibo1.PrintOptions.Printer := trim(datos.ZUconfiguracionCONTACTO.Value);
  PrintDelivery.PrepareReport(true);
  // recibo2.ShowPreparedReport;
  PrintDelivery.print;

end;

procedure TFrmHold.cxDBCalcEdit1Click(Sender: TObject);
begin
  accionMesa;
  close;
end;

procedure TFrmHold.cxDBLabel1Click(Sender: TObject);
begin
  accionMesa;
  close;
end;

procedure TFrmHold.cxGrid4DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  with Zdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo, c.unidad, b.itbis, b.taza_compra from detailfact a');
    sql.Add('left join mtartuculos b On a.cod_art = b.codigotxt');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:op1');
    params[0].Value := HOLDNO_FACT.Value;
    open;
  end;

end;

procedure TFrmHold.cxGrid4DBTableView1DblClick(Sender: TObject);
begin
  //

  if HOLDIDDR.Value = 1 then
  begin

    with Actualiza do
    begin
      close;
      sql.Clear;
      sql.Add('update master_fact set iddr = 2 where no_fact =:pp');
      params[0].Value := HOLDNO_FACT.Value;
      ExecSQL;
    end;

    datos.Data.Commit;

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
      sql.Add('where a.situacion  =:opcion2');
      sql.Add('and a.condicion =:OPCION4');
      sql.Add('AND A.ROTULO =:OPCION5');
      // sql.Add('AND A.tipo =:opcion6');
      sql.Add('and a.no_fact =:oppp');
      params[0].Value := 'HOLD';
      params[1].Value := 'ACTIVA';
      params[2].Value := 'FACTURACION';
      // Params[3].Value := 'Contado';
      params[3].Value := HOLDNO_FACT.Value;

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

    if datos.ZUconfiguracionTerminal.Value = 'Supermerca' then
    begin

      WITH FrmFactRapida.IbqClientes DO
      BEGIN
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;

      END;

      FrmFactRapida.BtnConduce.Enabled := false;
      FrmFactRapida.cxButton4.Enabled := false;
      FrmFactRapida.BTpedido.Enabled := false;

      FrmFactRapida.b1.Enabled := false;
      FrmFactRapida.b2.Enabled := false;
      FrmFactRapida.b2.Caption := 'Cancelar';
      FrmFactRapida.b3.Enabled := true;
      FrmFactRapida.b4.Enabled := true;
      FrmFactRapida.b6.Enabled := true;
      FrmFactRapida.BtnPrintConduce.Enabled := true;
      FrmFactRapida.cerrar.Enabled := false;
      FrmFactRapida.b3.Caption := 'Enviar Pedido [F4]';
      FrmFactRapida.cxButton5.Enabled := false;


      // FrmNFact.b5.Enabled := false;

      FrmFactRapida.edit3.Text := 'MODI';
      FrmFactRapida.Edit5.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
      // FrmNFact_normal.BtBuscarPedido.Enabled := false;

      FrmFactRapida.opmaster.Enabled := true;
      FrmFactRapida.cxButton14.Enabled := true;
      FrmFactRapida.opdetalle.Enabled := true;
      FrmFactRapida.cxButton11.Enabled := true;

      FrmFactRapida.BtBorrar.Enabled := true;
      FrmFactRapida.b6.Enabled := true;
      FrmFactRapida.b2.Enabled := true;
      FrmFactRapida.cxButton12.Enabled := true;
      FrmFactRapida.cxButton13.Enabled := true;
    end
    else
    begin

      WITH FrmNFact_normal.IbqClientes DO
      BEGIN
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;

      END;

      FrmNFact_normal.BtnConduce.Enabled := false;
      FrmNFact_normal.cxButton4.Enabled := false;
      FrmNFact_normal.BTpedido.Enabled := false;

      FrmNFact_normal.b1.Enabled := false;
      FrmNFact_normal.b2.Enabled := false;
      FrmNFact_normal.b2.Caption := 'Cancelar';
      FrmNFact_normal.b3.Enabled := true;
      FrmNFact_normal.b4.Enabled := true;
      FrmNFact_normal.b6.Enabled := true;
      FrmNFact_normal.BtnPrintConduce.Enabled := true;
      FrmNFact_normal.BtDelivey02.Enabled := true;

      FrmNFact_normal.b3.Caption := 'Cobrar [F4]';
      FrmNFact_normal.cxButton5.Enabled := false;


      // FrmNFact.b5.Enabled := false;

      FrmNFact_normal.edit3.Text := 'MODI';
      FrmNFact_normal.Edit5.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
      // FrmNFact_normal.BtBuscarPedido.Enabled := false;

      FrmNFact_normal.opmaster.Enabled := true;
      FrmNFact_normal.cxButton14.Enabled := true;
      // FrmNFact_normal.opdetalle.Enabled := true;
      FrmNFact_normal.cxButton11.Enabled := true;

      FrmNFact_normal.BtBorrar.Enabled := true;
      FrmNFact_normal.b6.Enabled := true;
      FrmNFact_normal.b2.Enabled := true;
      FrmNFact_normal.cxButton12.Enabled := true;
      FrmNFact_normal.cxButton13.Enabled := true;
      FrmNFact_normal.cerrar.Enabled := false;
      FrmNFact_normal.Panel7.Enabled := true;
      FrmNFact_normal.PanelLTOP.Enabled := true;

      if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value = 1 then
      begin
        // FrmNFact_normal.Panel11.Color := clTeal;
        // FrmNFact_normal.LbModo.Font.Color := clWhite;
        // FrmNFact_normal.lbRotulo.Font.Color := clWhite;
        // FrmNFact_normal.LbModo.Caption := 'Modo Solidaridad';

              FrmNFact_normal.pnlEstado.Color := clTeal;
              FrmNFact_normal.pnlEstado.Caption := 'Factura Solidaridad';
              FrmNFact_normal.pnlEstado.Font.Color := clWhite;

      end
      else
      begin
              FrmNFact_normal.pnlEstado.Color := clwhite;
              FrmNFact_normal.pnlEstado.Caption := 'Factura Estandar';
              FrmNFact_normal.pnlEstado.Font.Color := clblack;

      end;

      FrmNFact_normal.Nregistro := FrmNFact_normal.DBGrid1.Datasource.Dataset.
        Recordcount;
      FrmNFact_normal.edit4.Text := IntToStr(FrmNFact_normal.Nregistro);
    end;
    // FrmNfact.cxButton5.Enabled := false;
    close;
  end
  else
  begin
    MsgInformacion(' Esta Factura ya esta abierta por otro usurio');
  end;
end;

procedure TFrmHold.cxGrid4DBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
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
      sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
      sql.Add('where a.situacion  =:opcion2');
      sql.Add('and a.condicion =:OPCION4');
      sql.Add('AND A.ROTULO =:OPCION5');
      // sql.Add('AND A.tipo =:opcion6');
      sql.Add('and a.no_fact =:oppp');
      params[0].Value := 'HOLD';
      params[1].Value := 'ACTIVA';
      params[2].Value := 'FACTURACION';
      // Params[3].Value := 'Contado';
      params[3].Value := HOLDNO_FACT.Value;

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

    if datos.ZUconfiguracionTerminal.Value = 'Supermerca' then
    begin

      WITH FrmFactRapida.IbqClientes DO
      BEGIN
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;

      END;

      FrmFactRapida.BtnConduce.Enabled := false;
      FrmFactRapida.cxButton4.Enabled := false;
      FrmFactRapida.BTpedido.Enabled := false;

      FrmFactRapida.b1.Enabled := false;
      FrmFactRapida.b2.Enabled := false;
      FrmFactRapida.b2.Caption := 'Cancelar';
      FrmFactRapida.b3.Enabled := true;
      FrmFactRapida.b4.Enabled := true;
      FrmFactRapida.b6.Enabled := true;
      FrmFactRapida.BtnPrintConduce.Enabled := true;
      FrmFactRapida.cerrar.Enabled := false;
      FrmFactRapida.b3.Caption := 'Enviar Pedido [F4]';
      FrmFactRapida.cxButton5.Enabled := false;


      // FrmNFact.b5.Enabled := false;

      FrmFactRapida.edit3.Text := 'MODI';
      FrmFactRapida.Edit5.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
      // FrmNFact_normal.BtBuscarPedido.Enabled := false;

      FrmFactRapida.opmaster.Enabled := true;
      FrmFactRapida.cxButton14.Enabled := true;
      FrmFactRapida.opdetalle.Enabled := true;
      FrmFactRapida.cxButton11.Enabled := true;

      FrmFactRapida.BtBorrar.Enabled := true;
      FrmFactRapida.b6.Enabled := true;
      FrmFactRapida.b2.Enabled := true;
      FrmFactRapida.cxButton12.Enabled := true;
      FrmFactRapida.cxButton13.Enabled := true;
    end
    else
    begin

      WITH FrmNFact_normal.IbqClientes DO
      BEGIN
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.codigo =:opp');
        params[0].Value := datos.FbqMaster_FactCLIENTEID.Value;
        open;

      END;

      FrmNFact_normal.BtnConduce.Enabled := false;
      FrmNFact_normal.cxButton4.Enabled := false;
      FrmNFact_normal.BTpedido.Enabled := false;

      FrmNFact_normal.b1.Enabled := false;
      FrmNFact_normal.b2.Enabled := false;
      FrmNFact_normal.b2.Caption := 'Cancelar';
      FrmNFact_normal.b3.Enabled := true;
      FrmNFact_normal.b4.Enabled := true;
      FrmNFact_normal.b6.Enabled := true;
      FrmNFact_normal.BtnPrintConduce.Enabled := true;
      FrmNFact_normal.cerrar.Enabled := false;
      FrmNFact_normal.b3.Caption := 'Enviar Pedido [F4]';
      FrmNFact_normal.cxButton5.Enabled := false;


      // FrmNFact.b5.Enabled := false;

      FrmNFact_normal.edit3.Text := 'MODI';
      FrmNFact_normal.Edit5.Text := IntToStr(datos.FbqMaster_FactNO_FACT.Value);
      // FrmNFact_normal.BtBuscarPedido.Enabled := false;

      FrmNFact_normal.opmaster.Enabled := true;
      FrmNFact_normal.cxButton14.Enabled := true;
      // FrmNFact_normal.opdetalle.Enabled := true;
      FrmNFact_normal.cxButton11.Enabled := true;

      FrmNFact_normal.BtBorrar.Enabled := true;
      FrmNFact_normal.b6.Enabled := true;
      FrmNFact_normal.b2.Enabled := true;
      FrmNFact_normal.cxButton12.Enabled := true;
      FrmNFact_normal.cxButton13.Enabled := true;
    end;
    // FrmNfact.cxButton5.Enabled := false;
    close;

  end;
end;

procedure TFrmHold.Edit1Change(Sender: TObject);
begin
  with HOLD do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On g.empleadoid = h.cod_emp1');

    sql.Add('WHERE a.situacion=''HOLD''');
    // sql.Add('and b.numeropin =''MESAS''');
    sql.Add('and A.nombrecliente_prn like ' + #39 + '%' + Edit1.Text +
      '%' + #39);
    open;

  end;
end;

procedure TFrmHold.cxTextEdit2Change(Sender: TObject);
begin

  with HOLD do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
    sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
    sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
    sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');

    sql.Add('where a.situacion =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    sql.Add('and A.nombrecliente_prn like ' + #39 + '%' + cxTextEdit2.Text +
      '%' + #39);
    // sql.Add('and a.iddr =1');
    // sql.Add('and b.numeropin <>''MESAS''');
    params[0].Value := 'HOLD';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    open;
  end;
end;

procedure TFrmHold.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmHold := nil;
  Action := Cafree;
end;

procedure TFrmHold.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    close;
  end;
end;

procedure TFrmHold.FormShow(Sender: TObject);
begin

  if (datos.ZUconfiguracionTerminal.Value = 'Pizzeria') or
    (datos.ZUconfiguracionTerminal.Value = 'Touch') then
  begin
    // Label29.Visible := true;
    cxPageControl1.Properties.HideTabs := true;
    cxPageControl1.ActivePageIndex := 1;

    with HOLD do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
      sql.Add('left join cliente b On a.clienteid = b.codigo');
      sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
      sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
      sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
      sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');

      sql.Add('WHERE a.situacion=''HOLD''');

      open;

    end;

    if (datos.ZUconfiguracionTerminal.Value = 'Pizzeria') then
    begin
      Image3.Visible := true;
      // Label1.Visible := true;

    end;

    if (datos.ZUconfiguracionTerminal.Value = 'Touch') then
    begin
      Image3.Visible := true;
      // Label1.Visible := false;

    end;

  end
  else
  begin
    cxPageControl1.Properties.HideTabs := true;
    cxPageControl1.ActivePageIndex := 0;

    with HOLD do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir, f.nombres_emp Caj, h.nombres_emp Tecnico  from master_fact a');
      sql.Add('left join cliente b On a.clienteid = b.codigo');
      sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
      sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid');
      sql.Add('left JOIN mtempleado F On e.empleadoid= f.cod_emp1');
      sql.Add('LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid');
      sql.Add('left JOIN mtempleado h On a.codven = h.cod_emp1');

      sql.Add('WHERE a.situacion=''HOLD''');
      // sql.Add('and a.iddr = 1');
      // sql.Add('and b.numeropin <>''MESAS''');
      open;
    end;

  end;

end;

procedure TFrmHold.Image2Click(Sender: TObject);
begin
  accionMesa;
  close;
end;

procedure TFrmHold.Image3Click(Sender: TObject);
begin

  if application.MessageBox('Desea Imprimir Ticket para Cocina....',
    'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
  begin

    with SqlBuscarCocina do
    begin
      close;
      sql.Clear;
      sql.Add('select * from ENVIOCOCINA');
      sql.Add('where no_orden =:orden');
      params[0].Value := HOLDCODIGO.Value;
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

procedure TFrmHold.Image4Click(Sender: TObject);
var
  canfra: double;
  cero1: string;
  nume: integer;
  men_pie: string;
  cInf: String;
  diascondicioncredito: integer;
  NombreImpresoraTicke, NombreImpresoraNormal, Tipoimpresion: String;
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
    sql.Add('left JOIN mtempleado h On A.CODVEN = h.cod_emp1');
    sql.Add('where a.situacion  =:opcion2');
    sql.Add('and a.condicion =:OPCION4');
    sql.Add('AND A.ROTULO =:OPCION5');
    // sql.Add('AND A.tipo =:opcion6');
    sql.Add('and a.no_fact =:oppp');
    params[0].Value := 'HOLD';
    params[1].Value := 'ACTIVA';
    params[2].Value := 'FACTURACION';
    // Params[3].Value := 'Contado';
    params[3].Value := HOLDNO_FACT.Value;

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

  if datos.FbqMaster_FactIDESTACION.Value >= datos.ZUconfiguracionTIMPRESIONPRE.Value
  then
  begin
    MsgViewError
      (' Ha superadao la cantidad de reimpresión para la PRE-FACTURA, favor consultar con el Administrador');
    close;

    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;
  end
  else
  begin

    if application.MessageBox('Deseas Imprimir Esta Pre Factura', 'Precausion',
      Mb_YesNo + MB_ICONQUESTION) = Id_yes then
    begin

      if datos.FbqMaster_FactNOMBREDELDR.Value = 'Cons. Final' then
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
        if datos.ZTurnoCOBOSNUEVOS.Value >= datos.ZTurnoCUBOSUSADOS.Value then
        begin
          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\PreFacturaTicket' + '.fr3';
          PreFact.LoadFromFile(cInf);
        end
        ELSE if datos.ZTurnoCOBOSNUEVOS.Value < datos.ZTurnoCUBOSUSADOS.Value
        then
        BEGIN

          cInf := datos.ZUconfiguracionROTULO_FC.Value +
            '\PreFacturaTicket_ncf' + '.fr3';
          PreFact.LoadFromFile(cInf);
        END;
      end
      ELSE
      begin
        cInf := datos.ZUconfiguracionROTULO_FC.Value +
          '\PreFacturaTicket' + '.fr3';
        PreFact.LoadFromFile(cInf);

      end;

      PreFact.variables['titulos'] := quotedstr('FACTURA');
      // PrnCopia.variables['cajero']   :=quotedstr(edit2.text);
      men_pie := datos.ZUconfiguracionMensaje_pie1.Value;
      PreFact.variables['mensaje1'] := quotedstr(men_pie);

      PreFact.PrepareReport(true);

      PreFact.print;

      with qActualizaPre do
      begin
        close;
        sql.Clear;
        sql.Add('update master_fact set idestacion = idestacion + 1 where no_fact =:oppp');
        params[0].Value := HOLDNO_FACT.Value;
        ExecSQL;
      end;

      datos.Data.Commit;

    end;

    close;

    datos.FbqMaster_Fact.close;
    datos.Zdetalle.close;

  end;
end;

procedure TFrmHold.Image5Click(Sender: TObject);
begin

  with fDetalleMesas.Zdetalle do
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

  fDetalleMesas.ShowModal;

end;

procedure TFrmHold.Label1Click(Sender: TObject);
begin
  if application.MessageBox('Desea Imprimir Ticket para Cocina....',
    'Precausion', Mb_YesNo + MB_ICONQUESTION) = Id_yes then
  begin

    with SqlBuscarCocina do
    begin
      close;
      sql.Clear;
      sql.Add('select * from ENVIOCOCINA');
      sql.Add('where no_orden =:orden');
      params[0].Value := HOLDCODIGO.Value;
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

end.
