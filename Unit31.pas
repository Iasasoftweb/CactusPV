unit Unit31;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, dxLayoutContainer, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutControl, cxPC, frxClass, frxDBSet, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.ExtCtrls, cxLabel, cxTextEdit,
  cxGroupBox, cxRadioGroup, cxCheckGroup, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier;

type
  TfrmConsultaFact = class(TForm)
    facturasEmitidas: TZReadOnlyQuery;
    facturasEmitidasNO_FACT: TIntegerField;
    facturasEmitidasFECHA_FAC: TDateField;
    facturasEmitidasTIPO: TWideStringField;
    facturasEmitidasCOD_CLIENT: TWideStringField;
    facturasEmitidasCOD_EMP: TWideStringField;
    facturasEmitidasNO_FACT1: TWideStringField;
    facturasEmitidasMONTO: TFloatField;
    facturasEmitidasHORA: TTimeField;
    facturasEmitidasPOGXITBS: TFloatField;
    facturasEmitidasTIPOPAGO: TWideStringField;
    facturasEmitidasMONTOPAGO: TFloatField;
    facturasEmitidasCONDICION: TWideStringField;
    facturasEmitidasRENTA: TWideStringField;
    facturasEmitidasCODIGO: TIntegerField;
    facturasEmitidasTIPOITBS: TWideStringField;
    facturasEmitidasVENDEDOR: TWideStringField;
    facturasEmitidasSITUACION: TWideStringField;
    facturasEmitidasCAJERO: TWideStringField;
    facturasEmitidasNCF: TWideStringField;
    facturasEmitidasRNC_CLIENTE: TWideStringField;
    facturasEmitidasNCF1: TFloatField;
    facturasEmitidasNOM_CLIENTE: TWideStringField;
    facturasEmitidasDESCUENTO: TFloatField;
    facturasEmitidasROTULO: TWideStringField;
    facturasEmitidasNO_AUTORIZA_NCF: TFloatField;
    facturasEmitidasMONTOFINANCIADO: TFloatField;
    facturasEmitidasCUOTAS: TIntegerField;
    facturasEmitidasINTERES: TFloatField;
    facturasEmitidasDIRECCION: TWideStringField;
    facturasEmitidasPAGADO: TFloatField;
    facturasEmitidasLEYPROPINA: TFloatField;
    facturasEmitidasCOMPROBANTE: TWideStringField;
    facturasEmitidasTERMINAL: TWideStringField;
    facturasEmitidasEFECTIVO: TFloatField;
    facturasEmitidasDEVOLUCION1: TFloatField;
    facturasEmitidasRESTANTE: TFloatField;
    facturasEmitidasABONO: TFloatField;
    facturasEmitidasCHEK: TWideStringField;
    facturasEmitidasNO_RECIBO: TIntegerField;
    facturasEmitidasPAGADOCXC: TFloatField;
    facturasEmitidasMESES: TIntegerField;
    facturasEmitidasDIAS: TIntegerField;
    facturasEmitidasPENDIENTE: TFloatField;
    facturasEmitidasESTADOPAGO: TWideStringField;
    facturasEmitidasDEVOLUCION: TFloatField;
    facturasEmitidasCONDICION_PAGO: TIntegerField;
    facturasEmitidasFECHAVENCIMIENTO: TWideStringField;
    facturasEmitidasCOMBO: TWideStringField;
    facturasEmitidasCOBRADO: TIntegerField;
    facturasEmitidasQUEES: TWideStringField;
    facturasEmitidasUSUARIOID: TIntegerField;
    facturasEmitidasCLIENTEID: TIntegerField;
    facturasEmitidasCLIENTENOMBRE: TWideStringField;
    facturasEmitidasNOMBRES_EMP: TWideStringField;
    facturasEmitidasTIENDAID: TIntegerField;
    facturasEmitidasCONDICIONVENTA: TWideStringField;
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
    DetalleFacturasLINEA: TIntegerField;
    DetalleFacturasARTICULOID: TIntegerField;
    DetalleFacturasARTICULO: TWideStringField;
    DsDetalleFacturas: TDataSource;
    DsFacturasEmitidas: TDataSource;
    cxPageControl1: TcxPageControl;
    Tab_Facturado: TcxTabSheet;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    opBuscar: TcxGroupBox;
    op: TcxRadioGroup;
    edit1: TcxTextEdit;
    label1: TcxLabel;
    cxButton2: TcxButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    PanelDesc: TcxGroupBox;
    Label17: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton3: TcxButton;
    Anular: TZReadOnlyQuery;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    ZExistencia: TZReadOnlyQuery;
    ZExistenciaIDTIENDA: TIntegerField;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaPRECIO_A: TFloatField;
    ZExistenciaPRECIO_B: TFloatField;
    ZExistenciaPRECIO_D: TFloatField;
    ZExistenciaEXISTENCIA: TFloatField;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1NO_FACT: TcxGridDBColumn;
    cxGridDBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGridDBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    cxGridDBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGridDBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    edit2: TcxTextEdit;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    facturasEmitidasNOMBRECLIENTE_PRN: TWideStringField;
    DetalleFacturasUNIDAD: TWideStringField;
    cxButton9: TcxButton;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    FacturasImpresas: TZReadOnlyQuery;
    cxButton10: TcxButton;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
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
    FacturasImpresasFECHAVENCIMIENTO: TWideStringField;
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
    FacturasImpresasCLIENTENOMBRE: TWideStringField;
    FacturasImpresasNOMBRES_EMP: TWideStringField;
    Fforma: TcxRadioGroup;
    series: TfrxDBDataset;
    combo: TfrxDBDataset;
    Config: TfrxDBDataset;
    master: TfrxDBDataset;
    detalle: TfrxDBDataset;
    rECIBO1: TfrxReport;
    Recibo2: TfrxReport;
    cxTabSheet1: TcxTabSheet;
    Impresas: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTextEdit2: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    Total: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cxButton16: TcxButton;
    CotizacionEmitidas: TZReadOnlyQuery;
    DsCotizaciones: TDataSource;
    CotizacionEmitidasNO_FACT: TIntegerField;
    CotizacionEmitidasFECHA_FAC: TDateField;
    CotizacionEmitidasTIPO: TWideStringField;
    CotizacionEmitidasCOD_CLIENT: TWideStringField;
    CotizacionEmitidasCOD_EMP: TWideStringField;
    CotizacionEmitidasNO_FACT1: TWideStringField;
    CotizacionEmitidasMONTO: TFloatField;
    CotizacionEmitidasHORA: TTimeField;
    CotizacionEmitidasPOGXITBS: TFloatField;
    CotizacionEmitidasTIPOPAGO: TWideStringField;
    CotizacionEmitidasMONTOPAGO: TFloatField;
    CotizacionEmitidasCONDICION: TWideStringField;
    CotizacionEmitidasRENTA: TWideStringField;
    CotizacionEmitidasCODIGO: TIntegerField;
    CotizacionEmitidasTIPOITBS: TWideStringField;
    CotizacionEmitidasVENDEDOR: TWideStringField;
    CotizacionEmitidasSITUACION: TWideStringField;
    CotizacionEmitidasCAJERO: TWideStringField;
    CotizacionEmitidasNCF: TWideStringField;
    CotizacionEmitidasRNC_CLIENTE: TWideStringField;
    CotizacionEmitidasNCF1: TFloatField;
    CotizacionEmitidasNOM_CLIENTE: TWideStringField;
    CotizacionEmitidasDESCUENTO: TFloatField;
    CotizacionEmitidasROTULO: TWideStringField;
    CotizacionEmitidasNO_AUTORIZA_NCF: TFloatField;
    CotizacionEmitidasMONTOFINANCIADO: TFloatField;
    CotizacionEmitidasCUOTAS: TIntegerField;
    CotizacionEmitidasINTERES: TFloatField;
    CotizacionEmitidasDIRECCION: TWideStringField;
    CotizacionEmitidasPAGADO: TFloatField;
    CotizacionEmitidasLEYPROPINA: TFloatField;
    CotizacionEmitidasCOMPROBANTE: TWideStringField;
    CotizacionEmitidasTERMINAL: TWideStringField;
    CotizacionEmitidasEFECTIVO: TFloatField;
    CotizacionEmitidasDEVOLUCION1: TFloatField;
    CotizacionEmitidasRESTANTE: TFloatField;
    CotizacionEmitidasABONO: TFloatField;
    CotizacionEmitidasCHEK: TWideStringField;
    CotizacionEmitidasNO_RECIBO: TIntegerField;
    CotizacionEmitidasPAGADOCXC: TFloatField;
    CotizacionEmitidasMESES: TIntegerField;
    CotizacionEmitidasDIAS: TIntegerField;
    CotizacionEmitidasPENDIENTE: TFloatField;
    CotizacionEmitidasESTADOPAGO: TWideStringField;
    CotizacionEmitidasDEVOLUCION: TFloatField;
    CotizacionEmitidasCONDICION_PAGO: TIntegerField;
    CotizacionEmitidasFECHAVENCIMIENTO: TWideStringField;
    CotizacionEmitidasCOMBO: TWideStringField;
    CotizacionEmitidasCOBRADO: TIntegerField;
    CotizacionEmitidasQUEES: TWideStringField;
    CotizacionEmitidasUSUARIOID: TIntegerField;
    CotizacionEmitidasCLIENTEID: TIntegerField;
    CotizacionEmitidasCONDICIONVENTA: TWideStringField;
    CotizacionEmitidasTIENDAID: TIntegerField;
    CotizacionEmitidasPINREFERIDO: TWideStringField;
    CotizacionEmitidasNC: TIntegerField;
    CotizacionEmitidasCODVEN: TIntegerField;
    CotizacionEmitidasCAJEROID: TIntegerField;
    CotizacionEmitidasNOMBRECLIENTE_PRN: TWideStringField;
    CotizacionEmitidasCLIENTENOMBRE: TWideStringField;
    CotizacionEmitidasNOMBRES_EMP: TWideStringField;
    cxButton15: TcxButton;
    cotizaprn: TfrxReport;
    DsFacturasImpresas: TDataSource;
    actualiza: TZReadOnlyQuery;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure opClick(Sender: TObject);
    procedure edit1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxPageControl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure FformaClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaFact: TfrmConsultaFact;

implementation
 uses tools, unit2, unit19, Unit22, Unit47, Unit59;
{$R *.dfm}

procedure TfrmConsultaFact.cxButton10Click(Sender: TObject);
begin

with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
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
    impresas.Visible := true;
    cxTextEdit2.SetFocus;

    cxButton6.Enabled := FALSE;
    cxButton7.Enabled := FALSE;
    cxButton5.Enabled := FALSE;
    cxButton9.Enabled := FALSE;
    cxButton1.Enabled := true;
    cxButton4.Enabled := true;
end;

procedure TfrmConsultaFact.cxButton11Click(Sender: TObject);
var
cero : string;
begin
with datos.FbqMaster_Fact do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('AND A.tipo =:opcion6');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'COTIZACION';
        Params[3].Value := 'Contado';
        Params[4].Value := cotizacionemitidasno_fact.Value;

        open;
    end;


   with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;

 with FrmNFact.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;

  {
   with actualiza do
     begin
       close;
       sql.Clear;
       sql.Add('update master_fact set :P1no_fact = :P2n_fact');

     end;
   }
     FrmNFact.ibqclientes.Open;
     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Cotizacion';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Imprimir Cotizacion [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'MODI';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;





    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'MODI';
     FrmNFact.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);

     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
 //    FrmNfact.cxButton5.Enabled := false;

end;

procedure TfrmConsultaFact.cxButton13Click(Sender: TObject);
begin
 with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := CotizacionEmitidasno_fact.Value;
    open;
  end;

with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;

             COTIZAPRN.variables['titulos']:=quotedstr('COTIZACION');
             COTIZAPRN.PrepareReport(true);
             COTIZAPRN.ShowPreparedReport;
end;

procedure TfrmConsultaFact.cxButton14Click(Sender: TObject);
var
cero : string;
begin

with FrmNFact.numero1 do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(COTI_GEN, 1) from RDB$DATABASE');
     open;
  end;

 datos.FbqMaster_Fact.Open;
 FrmNFact.zqusuario.Open;
 FrmNFact.ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numero1gen_id.Value;


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
     FrmNFact.RxDBComboBox1.ItemIndex := 0;

     FrmNFact.RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := false;
     FrmNFact.cxDBComboBox1.Enabled := false;

   //  FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact.cxDBComboBox1.ItemIndex := 1;

     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact.zqusuarionombres_emp.Value;
     DATOS.FbqMaster_FactCLIENTEID.Value := 3;
     datos.FbqMaster_FactCLIENTENOMBRE.Value := 'AL PORTADOR';
     datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := datos.FbqMaster_FactCLIENTENOMBRE.Value;
     datos.FbqMaster_FactROTULO.Value := 'COTIZACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;


    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Cotizacion';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Imprimir Cotizacion [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'NUEVO';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
   //  FrmNfact.cxButton5.Enabled := false;


FrmNFact.showmodal;



end;

procedure TfrmConsultaFact.cxButton16Click(Sender: TObject);
begin

with datos.FbqMaster_Fact do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('AND A.tipo =:opcion6');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'COTIZACION';
        Params[3].Value := 'Contado';
        Params[4].Value := cotizacionemitidasno_fact.Value;

        open;
    end;

   with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;
   FrmNFact.ibqclientes.Open;


     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Cotizacion';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Imprimir Cotizacion [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'MODI';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;





    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'MODI';
     FrmNFact.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);

     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
 //    FrmNfact.cxButton5.Enabled := false;


FrmNFact.showmodal;

end;

procedure TfrmConsultaFact.cxButton1Click(Sender: TObject);
begin
fforma.Visible := true;
fforma.ItemIndex := -1;
end;

procedure TfrmConsultaFact.cxButton2Click(Sender: TObject);
begin

if op.ItemIndex = 2 then
  begin
    with facturasemitidas do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =:tipo');
        facturasemitidas.Params[0].Value := 'ENVIADA';
        facturasemitidas.Params[1].Value := 'ACTIVA';
        facturasemitidas.Params[2].Value := 'FACTURACION';
        facturasemitidas.Params[3].Value := inicio.Date;
        facturasemitidas.Params[4].Value := fechafinal.Date;
        if cxPageControl1.ActivePageIndex = 0 then
          begin
        facturasemitidas.Params[5].Value := 'Contado';
          end;
        if cxPageControl1.ActivePageIndex = 1 then
          begin
        facturasemitidas.Params[5].Value := 'CREDITO';
          end;
       open;
    end;
  end;

  opbuscar.Visible := false;
end;

procedure TfrmConsultaFact.cxButton3Click(Sender: TObject);
begin
datos.ZUconfiguracion.Open;

  if cxTextEdit1.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
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
        FIRST;
        while not eof do
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
              datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
              datos.ZInventarioCOD_ART.Value        := detallefacturasarticuloID.Value;
              datos.ZInventarioCONCEPTOID.Value     := 7;
              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
              datos.ZInventarioSALIDA.Value         := 0.00;
              datos.ZInventarioENTRADA.Value        := detallefacturasCANTidad.Value;



                with datos.MantArt do
                 begin
                   close;
                   sql.Clear;
                   sql.Add('select * from MTARTUCULOS');
                   sql.Add('where cod_art =:op12');
                   params[0].Value := detallefacturasarticuloID.Value;
                   open;
                 end;


                 //showmessage(''+IntToStr(datos.MantArtCOD_ART.Value));
                 datos.MantArt.Edit;
                 datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value + detallefacturasCANTidad.Value;
                 datos.MantArt.ApplyUpdates;



              next;
          end;
        end;



        with anular do
          begin
            close;
            sql.Clear;
            sql.Add('update master_fact set condicion =:op');
            sql.Add('where no_fact =:pp');
            params[0].Value := 'ANULADA';
            params[1].Value := FacturasImpresasno_fact.Value;
            ExecSQL;
          end;

          datos.ZInventario.ApplyUpdates;
          datos.Data.Commit;
         with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
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
          cxTextEdit1.Clear;
          paneldesc.Visible := false;



     end else begin
          MsgError('Usted no esta autorizado para relaizar esa operación'#13+
      	               'Favor consultar con el Administrador');
          cxTextEdit1.Clear;
          paneldesc.Visible := false;

     end;
end;

procedure TfrmConsultaFact.cxButton4Click(Sender: TObject);
begin

if facturasIMPRESASfecha_fac.Value <> date() then
  begin
    Showmessage('*** Esta Factura no Puede Ser Anulada ***');
  end else begin
paneldesc.Visible := true;
 cxTextEdit1.SetFocus;
  end;
end;

procedure TfrmConsultaFact.cxButton5Click(Sender: TObject);
begin
opbuscar.Visible := true;
end;

procedure TfrmConsultaFact.cxButton6Click(Sender: TObject);
var
cero : string;
begin
FrmNFact_normal.showmodal;
end;

procedure TfrmConsultaFact.cxButton7Click(Sender: TObject);
begin

with datos.FbqMaster_Fact do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'ENVIADA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := facturasemitidasno_fact.Value;

        open;
    end;

   with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;

FrmCobro.showmodal;
end;

procedure TfrmConsultaFact.cxButton8Click(Sender: TObject);
begin
with Cotizacionemitidas do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        Params[0].Value := 'ENVIADA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'COTIZACION';
        open;
    end;
end;

procedure TfrmConsultaFact.cxButton9Click(Sender: TObject);
begin

with datos.FbqMaster_Fact do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('AND A.tipo =:opcion6');
        sql.Add('and a.no_fact =:oppp');
        Params[0].Value := 'ENVIADA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := 'Contado';
        Params[4].Value := facturasemitidasno_fact.Value;

        open;
    end;


   with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;



     Application.CreateForm(TFrmNFact_normal, FrmNFact_normal);



     FrmNFact_normal.ibqclientes.Open;
     FrmNFact_normal.b1.Enabled := false;
     FrmNFact_normal.b2.Enabled := true;
     FrmNFact_normal.b2.Caption := 'Cancelar Pedido';
     FrmNFact_normal.b3.Enabled := true;
     FrmNFact_normal.b3.Caption := 'Enviar Pedido [F4]';

    // FrmNFact.b5.Enabled := false;
     FrmNFact_normal.b6.Enabled := FALSE;
     FrmNFact_normal.Edit3.Text := 'MODI';
     FrmNFact_normal.Edit5.Text := IntTOStr(datos.FbqMaster_FactNO_FACT.Value);

     FrmNFact_normal.opmaster.Enabled := true;
     //FrmNFact_normal.opdetalle.Enabled := true;
 //    FrmNfact.cxButton5.Enabled := false;

 FrmNFact_normal.Show;

 close;
//FrmNFact_normal.showmodal;

end;

procedure TfrmConsultaFact.cxGridDBTableView1DblClick(Sender: TObject);
begin
detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasemitidasNo_fact.Value;
      detallefacturas.Open;
      cxGrid3.Visible := true;
end;

procedure TfrmConsultaFact.cxGridDBTableView2DblClick(Sender: TObject);
begin
detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
      detallefacturas.Open;
      cxGrid3.Visible := true;


end;

procedure TfrmConsultaFact.cxGridDBTableView3DblClick(Sender: TObject);
begin
detallefacturas.Close;
      detallefacturas.Params[0].Value := COTIZACIONemitidasNo_fact.Value;
      detallefacturas.Open;
      cxGrid3.Visible := true;
end;

procedure TfrmConsultaFact.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin

{if cxPageControl1.ActivePageIndex = 1 then
 begin
      facturasemitidas.close;
      facturasemitidas.Params[0].Value := 'IMPRESA';
      facturasemitidas.Params[1].Value := 'ACTIVA';
      facturasemitidas.Params[2].Value := 'FACTURACION';
      facturasemitidas.Params[3].Value := 'Contado';
      facturasemitidas.Open;


      detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasemitidasNo_fact.Value;
      detallefacturas.Open;
 end;

if cxPageControl1.ActivePageIndex = 0 then
 begin
      facturasemitidas.close;
      facturasemitidas.Params[0].Value := 'IMPRESA';
      facturasemitidas.Params[1].Value := 'ACTIVA';
      facturasemitidas.Params[2].Value := 'FACTURACION';
      facturasemitidas.Params[3].Value := 'CREDITO';
      facturasemitidas.Open;

      detallefacturas.Close;
      detallefacturas.Params[0].Value := facturasemitidasNo_fact.Value;
      detallefacturas.Open;
 end;
      }
end;

procedure TfrmConsultaFact.cxTextEdit2PropertiesChange(Sender: TObject);
begin
with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+cxTextEdit2.Text+'%'+#39);
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
       open;
    end;
end;

procedure TfrmConsultaFact.edit1PropertiesChange(Sender: TObject);
begin

with facturasemitidas do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.NOMBRECLIENTE_PRN like '+#39+'%'+edit2.Text+'%'+#39);
        Params[0].Value := 'ENVIADA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        open;
    end;


{
if op.ItemIndex = 1 then
  begin
    with facturasemitidas do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and b.nombres like '+#39+'%'+edit1.Text+'%'+#39);
        sql.Add('and a.tipo =:tipo');
        facturasemitidas.Params[0].Value := 'IMPRESA';
        facturasemitidas.Params[1].Value := 'ACTIVA';
        facturasemitidas.Params[2].Value := 'FACTURACION';
        if cxPageControl1.ActivePageIndex = 0 then
          begin
        facturasemitidas.Params[3].Value := 'Contado';
          end;
        if cxPageControl1.ActivePageIndex = 1 then
          begin
        facturasemitidas.Params[3].Value := 'CREDITO';
          end;
      open;
    end;
  end;

if op.ItemIndex = 3 then
  begin
    with facturasemitidas do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.montopago >:op2');
        sql.Add('and a.tipo =:tipo');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        params[3].Value := StrToFloat(edit1.Text);
        if cxPageControl1.ActivePageIndex = 0 then
          begin
        facturasemitidas.Params[4].Value := 'Contado';
          end;
        if cxPageControl1.ActivePageIndex = 1 then
          begin
        facturasemitidas.Params[4].Value := 'CREDITO';
          end;
      open;
    end;
  end;
  }

end;


procedure TfrmConsultaFact.edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    cxGrid1.SetFocus;
  end;
end;

procedure TfrmConsultaFact.FformaClick(Sender: TObject);
begin
if fforma.ItemIndex = 0 then
  begin

  with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := facturasimpresasno_fact.Value;
    open;
  end;

with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;

 {with dcombo do
   begin
     close;
     sql.Clear;
     sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
     sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
     sql.Add('where a.macomboid =:ppl');
     params[0].Value := datos.ZdetalleARTICULOID.Value;
     open;
   end;
  }

    RECIBO2.variables['titulos']:=quotedstr('FACTURA');
              RECIBO2.variables['cajero']:=quotedstr(edit2.text);
              RECIBO2.PrepareReport(true);
              //RECIBO2.ShowPreparedReport;
              RECIBO2.Print;
             FForma.Visible := false;
  end;

  if fforma.ItemIndex = 1 then begin
    with datos.FbqMaster_Fact do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
    sql.Add('left join cliente b On a.clienteid = b.codigo');
    sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
    sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
    sql.Add('where a.no_fact =:op1');
    params[0].Value := facturasimpresasno_fact.Value;
    open;
  end;

with datos.Zdetalle do
 begin
  close;
   sql.Clear;
   sql.Add('select a.*, b.articulo,c.unidad from detailfact a');
   sql.Add('left join mtartuculos b On a.cod_art = b.codigoTXT');
   sql.add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;

 {with dcombo do
   begin
     close;
     sql.Clear;
     sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
     sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
     sql.Add('where a.macomboid =:ppl');
     params[0].Value := datos.ZdetalleARTICULOID.Value;
     open;
   end;
  }

 recibo1.variables['titulos']:=quotedstr('FACTURA');
 recibo1.PrepareReport(true);
 recibo1.ShowPreparedReport;
//recibo1.Print;
 FForma.Visible := false;

  end;
end;

procedure TfrmConsultaFact.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
   if (impresas.Visible = false) and (cxGrid3.Visible = true) then begin
       cxGrid3.Visible := false;
       detallefacturas.Close;

   end else if (impresas.Visible = true) and (cxGrid3.Visible = true) then begin
        cxGrid3.Visible := false;
        impresas.Visible := true;
        detallefacturas.Close;
    end else  if (impresas.Visible = true) and (cxGrid3.Visible = false) then begin
        impresas.Visible := false;
        facturasimpresas.Close;
        cxButton6.Enabled := true;
        cxButton7.Enabled := true;
        cxButton5.Enabled := true;
        cxButton9.Enabled := true;
        cxButton1.Enabled := false;
        cxButton4.Enabled := false;
     end;

  end;
end;

procedure TfrmConsultaFact.FormShow(Sender: TObject);
begin
datos.ZqUsuarios.Refresh;


with cotizacionemitidas do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'COTIZACION';
        open;
    end;




cxPageControl1.ActivePageIndex := 0;

with facturasemitidas do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        Params[0].Value := 'ENVIADA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        open;
    end;

edit2.SetFocus;
facturasemitidas.Open;

if datos.ZUconfiguracionTIPO_FACTURACION.Value = 2 then
  begin
       cxButton7.Enabled := false;
       cxButton6.Enabled := false;
  end else begin


//if (datos.zqusuarioscargo.Value ='CAJERO') then
//   begin
//     if datos.ZqUsuariosTIPO.Value = 1 then
//        begin
//           cxButton7.Enabled := true;
//           cxButton6.Enabled := true;
//        end else begin
//          cxButton4.Enabled := false;
//          cxButton5.Enabled := false;
//          cxButton6.Enabled := false;
//        end;
//   end else begin
//     cxButton7.Enabled := false;
////     cxButton6.Enabled := true;
//   end;
//  end;




//detallefacturas.Params[0].Value := facturasemitidasNo_fact.Value;
//detallefacturas.Open;
end;
end;

procedure TfrmConsultaFact.opClick(Sender: TObject);
begin

if op.ItemIndex = 0 then
  begin
    panel1.Visible := false;
    edit1.SetFocus;
  end;

if op.ItemIndex = 1 then
  begin
    panel1.Visible := false;
    edit1.SetFocus;
  end;

if op.ItemIndex = 2 then
  begin
   EDIT1.Clear;
    panel1.Visible := true;
    //edit1.SetFocus;
  end;

if op.ItemIndex = 3 then
  begin
    EDIT1.Clear;
    panel1.Visible := false;
    edit1.SetFocus;
  end;

end;

end.
