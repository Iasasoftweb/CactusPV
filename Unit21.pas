unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, dxLayoutContainer, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutControl, cxPC, dxSkinsdxBarPainter, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbon, dxBar, ZAbstractRODataset, ZDataset,
  dxLayoutLookAndFeels, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxGroupBox, frxClass, frxDBSet, cxLabel,
  cxRadioGroup, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.ExtCtrls, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  dxRibbonCustomizationForm;

type
  TFrmFact = class(TForm)
    cxPageControl1: TcxPageControl;
    Tab_Facturado: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    Tab_SinFact: TcxTabSheet;
    dxBarManager: TdxBarManager;
    BarMant: TdxBar;
    BarOperaciones: TdxBar;
    btnDiary: TdxBarLargeButton;
    btnPortfolio: TdxBarLargeButton;
    btnOfferBook: TdxBarLargeButton;
    btnOptions: TdxBarLargeButton;
    btnSMS: TdxBarButton;
    btnClientReview: TdxBarLargeButton;
    btnViewingsReview: TdxBarLargeButton;
    btnMatchesReview: TdxBarLargeButton;
    btnCustomReports: TdxBarLargeButton;
    btnActivityReport: TdxBarLargeButton;
    btnValuationReport: TdxBarLargeButton;
    btnMarketing: TdxBarLargeButton;
    btnLettings: TdxBarLargeButton;
    btnReports: TdxBarLargeButton;
    btnArchivedApps: TdxBarLargeButton;
    btnArchivedProperties: TdxBarLargeButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSeparator5: TdxBarSeparator;
    btnEmailMenu: TdxBarSubItem;
    btnBoardErector: TdxBarButton;
    btnChangePassword: TdxBarLargeButton;
    btnWhatsThis: TdxBarButton;
    btnActivePageHelp: TdxBarButton;
    btnSupport: TdxBarLargeButton;
    dxBarSeparator6: TdxBarSeparator;
    btnCascade: TdxBarButton;
    btnCarousel: TdxBarLargeButton;
    btnChildClose: TdxBarButton;
    btnChildRestore: TdxBarButton;
    btnForceError: TdxBarButton;
    btnViewingBook: TdxBarLargeButton;
    btnFAQ: TdxBarButton;
    btnTroubleshooting: TdxBarButton;
    btnPropertyReview: TdxBarLargeButton;
    btnFindEmailAddress: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarCombo1: TdxBarCombo;
    dxBarEdit1: TdxBarEdit;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarButton14: TdxBarButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarButton18: TdxBarButton;
    MainRibbon: TdxRibbon;
    TabInvetario1: TdxRibbonTab;
    dxBarLargeButton17: TdxBarLargeButton;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    facturasEmitidas: TZReadOnlyQuery;
    FacturasHold: TZReadOnlyQuery;
    DsFacturasEmitidas: TDataSource;
    DsfacturasHold: TDataSource;
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
    cxGridDBTableView1NO_FACT: TcxGridDBColumn;
    cxGridDBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGridDBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGridDBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    cxGridDBTableView1NOMBRES_EMP: TcxGridDBColumn;
    FacturasHoldNO_FACT: TIntegerField;
    FacturasHoldFECHA_FAC: TDateField;
    FacturasHoldTIPO: TWideStringField;
    FacturasHoldCOD_CLIENT: TWideStringField;
    FacturasHoldCOD_EMP: TWideStringField;
    FacturasHoldNO_FACT1: TWideStringField;
    FacturasHoldMONTO: TFloatField;
    FacturasHoldHORA: TTimeField;
    FacturasHoldPOGXITBS: TFloatField;
    FacturasHoldTIPOPAGO: TWideStringField;
    FacturasHoldMONTOPAGO: TFloatField;
    FacturasHoldCONDICION: TWideStringField;
    FacturasHoldRENTA: TWideStringField;
    FacturasHoldCODIGO: TIntegerField;
    FacturasHoldTIPOITBS: TWideStringField;
    FacturasHoldVENDEDOR: TWideStringField;
    FacturasHoldSITUACION: TWideStringField;
    FacturasHoldCAJERO: TWideStringField;
    FacturasHoldNCF: TWideStringField;
    FacturasHoldRNC_CLIENTE: TWideStringField;
    FacturasHoldNCF1: TFloatField;
    FacturasHoldNOM_CLIENTE: TWideStringField;
    FacturasHoldDESCUENTO: TFloatField;
    FacturasHoldROTULO: TWideStringField;
    FacturasHoldNO_AUTORIZA_NCF: TFloatField;
    FacturasHoldMONTOFINANCIADO: TFloatField;
    FacturasHoldCUOTAS: TIntegerField;
    FacturasHoldINTERES: TFloatField;
    FacturasHoldDIRECCION: TWideStringField;
    FacturasHoldPAGADO: TFloatField;
    FacturasHoldLEYPROPINA: TFloatField;
    FacturasHoldCOMPROBANTE: TWideStringField;
    FacturasHoldTERMINAL: TWideStringField;
    FacturasHoldEFECTIVO: TFloatField;
    FacturasHoldDEVOLUCION1: TFloatField;
    FacturasHoldRESTANTE: TFloatField;
    FacturasHoldABONO: TFloatField;
    FacturasHoldCHEK: TWideStringField;
    FacturasHoldNO_RECIBO: TIntegerField;
    FacturasHoldPAGADOCXC: TFloatField;
    FacturasHoldMESES: TIntegerField;
    FacturasHoldDIAS: TIntegerField;
    FacturasHoldPENDIENTE: TFloatField;
    FacturasHoldESTADOPAGO: TWideStringField;
    FacturasHoldDEVOLUCION: TFloatField;
    FacturasHoldCONDICION_PAGO: TIntegerField;
    FacturasHoldFECHAVENCIMIENTO: TWideStringField;
    FacturasHoldCOMBO: TWideStringField;
    FacturasHoldCOBRADO: TIntegerField;
    FacturasHoldQUEES: TWideStringField;
    FacturasHoldUSUARIOID: TIntegerField;
    FacturasHoldCLIENTEID: TIntegerField;
    FacturasHoldCLIENTENOMBRE: TWideStringField;
    FacturasHoldNOMBRES_EMP: TWideStringField;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    DetalleFacturas: TZReadOnlyQuery;
    DsDetalleFacturas: TDataSource;
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
    cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid3DBTableView1COMBO: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULO: TcxGridDBColumn;
    facturasEmitidasTIENDAID: TIntegerField;
    FacturasHoldTIENDAID: TIntegerField;
    facturasEmitidasCONDICIONVENTA: TWideStringField;
    FacturasHoldCONDICIONVENTA: TWideStringField;
    PanelDesc: TcxGroupBox;
    Label17: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton3: TcxButton;
    Anular: TZReadOnlyQuery;
    master: TfrxDBDataset;
    detalle: TfrxDBDataset;
    combo: TfrxDBDataset;
    Recibo1: TfrxReport;
    Dcombo: TZReadOnlyQuery;
    DcomboCOD_MANCOMBO: TIntegerField;
    DcomboMACOMBOID: TIntegerField;
    DcomboCOD_ART: TIntegerField;
    DcomboPRECIO: TFloatField;
    DcomboPRECIO2: TFloatField;
    DcomboPRECIO3: TFloatField;
    DcomboARTICULO: TWideStringField;
    DcomboCOSTO: TFloatField;
    DcomboCOSTO_PR: TFloatField;
    dxBarLargeButton18: TdxBarLargeButton;
    opBuscar: TcxGroupBox;
    op: TcxRadioGroup;
    edit1: TcxTextEdit;
    label1: TcxLabel;
    cxButton1: TcxButton;
    Panel1: TPanel;
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    dxBarLargeButton19: TdxBarLargeButton;
    dxLayoutControl2: TdxLayoutControl;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    procedure dxBarLargeButton16Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure dxBarLargeButton17Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure edit1PropertiesChange(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure opClick(Sender: TObject);
    procedure dxBarLargeButton19Click(Sender: TObject);
    procedure cxPageControl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFact: TFrmFact;

implementation

{$R *.dfm}

uses Unit22, Unit2, tools, Unit15;

procedure TFrmFact.cxButton1Click(Sender: TObject);
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
        sql.add('and a.tiendaid=:opcion3');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.Add('and a.tipo =:tipo');
        facturasemitidas.Params[0].Value := 'IMPRESA';
        facturasemitidas.Params[1].Value := Asignatienda;
        facturasemitidas.Params[2].Value := 'ACTIVA';
        facturasemitidas.Params[3].Value := 'FACTURACION';
        facturasemitidas.Params[4].Value := inicio.Date;
        facturasemitidas.Params[5].Value := fechafinal.Date;
        if cxPageControl1.ActivePageIndex = 0 then
          begin
        facturasemitidas.Params[6].Value := 'Contado';
          end;
        if cxPageControl1.ActivePageIndex = 1 then
          begin
        facturasemitidas.Params[6].Value := 'Credito';
          end;


      open;
    end;
  end;

  opbuscar.Visible := false;
end;

procedure TFrmFact.cxButton3Click(Sender: TObject);
begin
datos.ZUconfiguracion.Open;

  if cxTextEdit1.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
     begin

        with anular do
          begin
            close;
            sql.Clear;
            sql.Add('update master_fact set condicion =:op');
            sql.Add('where no_fact =:pp');
            params[0].Value := 'ANULADA';
            params[1].Value := facturasemitidasno_fact.Value;
            ExecSQL;
          end;

          datos.Data.Commit;
          facturasemitidas.Close;
          facturasemitidas.Params[0].Value := 'IMPRESA';
          facturasemitidas.Params[1].Value := Asignatienda;
          facturasemitidas.Params[2].Value := 'ACTIVA';
          facturasemitidas.Params[3].Value := 'FACTURACION';
          facturasemitidas.Open;

          cxTextEdit1.Clear;
          paneldesc.Visible := false;



     end else begin
          MsgError('Usted no esta autorizado para relaizar esa operación'#13+
      	               'Favor consultar con el Administrador');
          cxTextEdit1.Clear;
          paneldesc.Visible := false;

     end;
end;

procedure TFrmFact.cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
detallefacturas.Params[0].Value := facturasholdNo_fact.Value;
detallefacturas.close;
detallefacturas.Open;
end;

procedure TFrmFact.cxGrid2DBTableView1DblClick(Sender: TObject);
begin


with datos.FbqMaster_Fact do
  begin
     close;
     sql.Clear;
     Sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
     sql.Add('left join cliente b On a.clienteid = b.codigo');
     sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
     sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
     sql.Add('where no_fact1 =:op1');
     params[0].Value := FACTURASHOLDno_fact.Value;
     open;
  end;


     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b3.Enabled := true;
     FrmNFact.b4.Enabled := true;
    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := true;
   //  FrmNFact.Edit3.Text := 'MOD';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
     FrmNFact.ShowModal;



end;

procedure TFrmFact.cxGridDBTableView1DblClick(Sender: TObject);
begin

with detallefacturas do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo from detailfact a');
   sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := facturasemitidasNO_FACT.Value;
   open;
 end;

end;

procedure TFrmFact.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin

if cxPageControl1.ActivePageIndex = 1 then begin
 with facturasemitidas do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.tiendaid     =:opcion3');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.tipo         =:tipo');
        facturasemitidas.Params[0].Value := 'IMPRESA';
        facturasemitidas.Params[1].Value := Asignatienda;
        facturasemitidas.Params[2].Value := 'ACTIVA';
        facturasemitidas.Params[3].Value := 'FACTURACION';
        facturasemitidas.Params[4].Value := 'Contado';
        open;
      end;
end;

if cxPageControl1.ActivePageIndex = 0 then begin
 with facturasemitidas do
      begin
        close;
        sql.clear;
        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.tiendaid     =:opcion3');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.tipo         =:tipo');
        facturasemitidas.Params[0].Value := 'IMPRESA';
        facturasemitidas.Params[1].Value := Asignatienda;
        facturasemitidas.Params[2].Value := 'ACTIVA';
        facturasemitidas.Params[3].Value := 'FACTURACION';
        facturasemitidas.Params[4].Value := 'Credito';
        open;
      end;
end;


end;

procedure TFrmFact.dxBarLargeButton16Click(Sender: TObject);
begin
    close;
end;

procedure TFrmFact.dxBarLargeButton17Click(Sender: TObject);
begin
 paneldesc.Visible := true;
 cxTextEdit1.SetFocus;
end;

procedure TFrmFact.dxBarLargeButton18Click(Sender: TObject);
begin
opbuscar.Visible := true;
end;

procedure TFrmFact.dxBarLargeButton19Click(Sender: TObject);
begin
frmcuadre_caja.showmodal;
end;

procedure TFrmFact.dxBarLargeButton5Click(Sender: TObject);
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
   //  FrmNFact.RxDBComboBox2.Enabled := false;
     FrmNFact.cxDBComboBox1.Enabled := false;

     //FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact.cxDBComboBox1.ItemIndex := 1;
     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact.zqusuarionombres_emp.Value;
     datos.FbqMaster_FactROTULO.Value := 'COTIZACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;
    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Cotizacion';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Imprimir Cotizacion';

    // FrmNFact.b5.Enabled := false;
     FrmNFact.b6.Enabled := FALSE;
     FrmNFact.Edit3.Text := 'NUEVO';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
   //  FrmNfact.cxButton5.Enabled := false;


FrmNFact.showmodal;

end;

procedure TFrmFact.dxBarLargeButton7Click(Sender: TObject);
var
cero : string;
begin

with FrmNFact.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(g_nofact, 1) from RDB$DATABASE');
     open;
  end;
 datos.FbqMaster_Fact.Open;
 FrmNFact.zqusuario.Open;
 FrmNFact.ibqclientes.Open;

 datos.FbqMaster_Fact.Insert;
 datos.FbqMaster_FactNO_FACT.Value := FrmNFact.numerogen_id.Value;
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
    // FrmNFact.RxDBComboBox2.ItemIndex := 1;
     FrmNFact.cxDBComboBox1.ItemIndex := 1;

     FrmNFact.RxDBComboBox1.Enabled := false;
    // FrmNFact.RxDBComboBox2.Enabled := true;
     FrmNFact.cxDBComboBox1.Enabled := true;






     datos.FbqMaster_FactUSUARIOID.Value := AsignaUsuario;
     with FrmNFact.zqusuario do
       begin
         close;
         sql.Clear;
         sql.Add('select a.*, b.NOMBRES_EMP from musuario a');
         sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
         sql.Add('where a.usuarioId =:pp');
         params[0].Value := asignausuario;
         opeN;
       end;
     datos.FbqMaster_FactNOMBRES_EMP.Value := FrmNFact.zqusuarionombres_emp.Value;
     datos.FbqMaster_FactROTULO.Value := 'FACTURACION';
     datos.FbqMaster_FactFECHA_FAC.Value := now();
     datos.FbqMaster_FactTIENDAID.Value := AsignaTienda;
    // datos.FbqMaster_FactCONDICIONVENTA.Value := '1';
    // datos.FbqMaster_Factcomprobante.Value := 'NO';

     FrmNFact.b1.Enabled := false;
     FrmNFact.b2.Enabled := true;
     FrmNFact.b2.Caption := 'Cancelar Factura';
     FrmNFact.b3.Enabled := true;
     FrmNFact.b3.Caption := 'Pagar Factura';
     FrmNFact.b4.Enabled := true;
    // FrmNFact.b5.Enabled := false;


     FrmNFact.b6.Enabled := true;
     FrmNFact.Edit3.Text := 'NUEVO';
     FrmNFact.opmaster.Enabled := true;
     FrmNFact.opdetalle.Enabled := true;
    // FrmNfact.cxButton5.Enabled := true;


FrmNFact.showmodal;
end;

procedure TFrmFact.dxBarLargeButton8Click(Sender: TObject);
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
    params[0].Value := facturasemitidasno_fact.Value;
    open;
  end;

with datos.Zdetalle do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, b.articulo from detailfact a');
   sql.Add('left join mtartuculos b On a.articuloid = b.cod_art');
   sql.Add('where a.masterid =:ppp');
   params[0].Value := datos.FbqMaster_FactNO_FACT.Value;
   open;
 end;

 with dcombo do
   begin
     close;
     sql.Clear;
     sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
     sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
     sql.Add('where a.macomboid =:ppl');
     params[0].Value := datos.ZdetalleARTICULOID.Value;
     open;
   end;


 recibo1.variables['titulos']:=quotedstr('FACTURACION');
 recibo1.PrepareReport(true);
 recibo1.ShowPreparedReport;
end;

procedure TFrmFact.edit1PropertiesChange(Sender: TObject);
begin
if op.ItemIndex = 0 then
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
        sql.add('and a.tiendaid=:opcion3');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.tipo =:tipo');
        sql.Add('and a.no_fact1 like '+#39+'%'+edit1.Text+'%'+#39);
        facturasemitidas.Params[0].Value := 'IMPRESA';
        facturasemitidas.Params[1].Value := Asignatienda;
        facturasemitidas.Params[2].Value := 'ACTIVA';
        facturasemitidas.Params[3].Value := 'FACTURACION';
        if cxPageControl1.ActivePageIndex = 0 then
          begin
        facturasemitidas.Params[4].Value := 'Contado';
          end;
        if cxPageControl1.ActivePageIndex = 1 then
          begin
        facturasemitidas.Params[4].Value := 'Credito';
          end;
      open;
    end;
  end;

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
        sql.add('and a.tiendaid=:opcion3');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and b.nombres like '+#39+'%'+edit1.Text+'%'+#39);
        sql.Add('and a.tipo =:tipo');
        facturasemitidas.Params[0].Value := 'IMPRESA';
        facturasemitidas.Params[1].Value := Asignatienda;
        facturasemitidas.Params[2].Value := 'ACTIVA';
        facturasemitidas.Params[3].Value := 'FACTURACION';
        if cxPageControl1.ActivePageIndex = 0 then
          begin
        facturasemitidas.Params[4].Value := 'Contado';
          end;
        if cxPageControl1.ActivePageIndex = 1 then
          begin
        facturasemitidas.Params[4].Value := 'Credito';
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
        sql.add('and a.tiendaid=:opcion3');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.montopago >:op2');
        sql.Add('and a.tipo =:tipo');
        Params[0].Value := 'IMPRESA';
        params[1].Value := Asignatienda;
        Params[2].Value := 'ACTIVA';
        Params[3].Value := 'FACTURACION';
        params[4].Value := StrToFloat(edit1.Text);
        if cxPageControl1.ActivePageIndex = 0 then
          begin
        facturasemitidas.Params[5].Value := 'Contado';
          end;
        if cxPageControl1.ActivePageIndex = 1 then
          begin
        facturasemitidas.Params[5].Value := 'Credito';
          end;
      open;
    end;
  end;


end;

procedure TFrmFact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Frmfact.MainRibbon.Tabs.Items[0].Active := true;

FreeAndNil(Frmfact);

end;

procedure TFrmFact.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    paneldesc.Visible := false;
  end;
end;

procedure TFrmFact.FormShow(Sender: TObject);
begin

facturasemitidas.Params[0].Value := 'IMPRESA';
facturasemitidas.Params[1].Value := Asignatienda;
facturasemitidas.Params[2].Value := 'ACTIVA';
facturasemitidas.Params[3].Value := 'FACTURACION';
cxPageControl1.ActivePageIndex := 0;

facturasemitidas.Open;

facturashold.Params[0].Value := 'HOLD';
facturashold.Params[1].Value := Asignatienda;
facturashold.Open;

detallefacturas.Params[0].Value := facturasemitidasNo_fact.Value;
detallefacturas.Open;
end;

procedure TFrmFact.opClick(Sender: TObject);
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
    panel1.Visible := true;
    //edit1.SetFocus;
  end;

if op.ItemIndex = 3 then
  begin
    panel1.Visible := false;
    edit1.SetFocus;
  end;



end;

end.
