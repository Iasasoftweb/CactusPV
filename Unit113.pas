unit Unit113;

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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, Data.DB, ZAbstractRODataset, ZDataset,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, Vcl.StdCtrls, Vcl.Menus,
  cxButtons, cxDropDownEdit, cxCalendar, cxTimeEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmConduce = class(TForm)
    GP1: TcxGroupBox;
    gp2: TcxGroupBox;
    numero: TZReadOnlyQuery;
    numeroGEN_ID: TLargeintField;
    DsConduceD: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label1: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxButton1: TcxButton;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label7: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    FacturasImpresas: TZReadOnlyQuery;
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
    FacturasImpresasFECHAVENCIMIENTO: TDateField;
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
    FacturasImpresasFECHA_FINAL: TDateField;
    FacturasImpresasINTERES_DIARIO: TFloatField;
    FacturasImpresasINTERES_ACUM: TFloatField;
    FacturasImpresasDIAS_TRANS: TIntegerField;
    FacturasImpresasFECHA_ULTIMO_PAGO: TDateField;
    FacturasImpresasDIAS_ATRASO: TIntegerField;
    FacturasImpresasINTERES_PAGADO: TFloatField;
    FacturasImpresasCAPITAL_PAGADO: TFloatField;
    FacturasImpresasDESC_CAPITAL: TFloatField;
    FacturasImpresasIDDR: TIntegerField;
    FacturasImpresasNOMBREDELDR: TWideStringField;
    FacturasImpresasCAJA: TWideStringField;
    FacturasImpresasNCF_NOMBRE: TWideStringField;
    FacturasImpresasMORA: TFloatField;
    FacturasImpresasNUMERO_FACTURA: TFloatField;
    FacturasImpresasBONOS: TFloatField;
    FacturasImpresasOBSERVACIONES: TWideMemoField;
    FacturasImpresasIDRUTA: TIntegerField;
    FacturasImpresasCAJAID: TIntegerField;
    FacturasImpresasTCREDITO: TFloatField;
    FacturasImpresasVEFECTIVA: TFloatField;
    FacturasImpresasIDTECNICO: TIntegerField;
    FacturasImpresasUBICACION: TWideStringField;
    FacturasImpresasPAGOXEFECTIVO: TFloatField;
    FacturasImpresasPAGOXCHEQUE: TFloatField;
    FacturasImpresasPAGOXTARJETA: TFloatField;
    FacturasImpresasPAGOXBONO: TFloatField;
    FacturasImpresasCLIENTENOMBRE: TWideStringField;
    FacturasImpresasNOMBRES_EMP: TWideStringField;
    FacturasImpresasDIR: TWideStringField;
    DsFacturasImpresas: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1CANTI: TcxGridDBColumn;
    cxGrid1DBTableView1CANT_REST: TcxGridDBColumn;
    cxGrid1DBTableView1CANT_SAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxDBSpinEdit1Exit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConduce: TFrmConduce;

implementation

{$R *.dfm}

uses Unit2, Unit63, Unit114, Unit116;

procedure TFrmConduce.cxButton1Click(Sender: TObject);
begin
FrmConsultaFacturas.showmodal;
end;

procedure TFrmConduce.cxButton2Click(Sender: TObject);
begin
with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_CONDUCEM_ID, 1) from RDB$DATABASE');
     open;
  end;

  datos.ConduceM.Append;
  datos.conducem.Insert;
  datos.ConduceMID.Value :=  numeroGEN_ID.Value;
  datos.ConduceMFECHA.Value := now();
  datos.ConduceMHORA.Value  := time();

  GP1.Enabled := true;
  gp2.Enabled := true;

end;

procedure TFrmConduce.cxDBSpinEdit1Exit(Sender: TObject);
begin
with facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('and a.numero_factura like '+#39+'%'+cxDBSpinEdit1.Text+'%'+#39);
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';

        open;

    end;

    datos.ConduceM.Edit;
    datos.ConduceMCLIENTES.Value := FacturasImpresasNOMBRECLIENTE_PRN.Value;

    with FrmDetalleFact.DetalleFacturas do
      begin
      Close;
      FrmDetalleFact.detallefacturas.Params[0].Value := facturasImpresasNo_fact.Value;
      FrmDetalleFact.detallefacturas.Open;

      end;

      FrmDetalleFact.ShowModal;
end;


end.
