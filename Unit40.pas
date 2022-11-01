unit Unit40;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxLabel, cxTextEdit, cxDBEdit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, dxGDIPlusClasses;

type
  TNotas_Credito = class(TForm)
    facturas: TZReadOnlyQuery;
    DsFacturas: TDataSource;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    facturasNO_FACT: TIntegerField;
    facturasFECHA_FAC: TDateField;
    facturasTIPO: TWideStringField;
    facturasCOD_CLIENT: TWideStringField;
    facturasCOD_EMP: TWideStringField;
    facturasNO_FACT1: TWideStringField;
    facturasMONTO: TFloatField;
    facturasHORA: TTimeField;
    facturasPOGXITBS: TFloatField;
    facturasTIPOPAGO: TWideStringField;
    facturasMONTOPAGO: TFloatField;
    facturasCONDICION: TWideStringField;
    facturasRENTA: TWideStringField;
    facturasCODIGO: TIntegerField;
    facturasTIPOITBS: TWideStringField;
    facturasVENDEDOR: TWideStringField;
    facturasSITUACION: TWideStringField;
    facturasCAJERO: TWideStringField;
    facturasNCF: TWideStringField;
    facturasRNC_CLIENTE: TWideStringField;
    facturasNCF1: TFloatField;
    facturasNOM_CLIENTE: TWideStringField;
    facturasDESCUENTO: TFloatField;
    facturasROTULO: TWideStringField;
    facturasNO_AUTORIZA_NCF: TFloatField;
    facturasMONTOFINANCIADO: TFloatField;
    facturasCUOTAS: TIntegerField;
    facturasINTERES: TFloatField;
    facturasDIRECCION: TWideStringField;
    facturasPAGADO: TFloatField;
    facturasLEYPROPINA: TFloatField;
    facturasCOMPROBANTE: TWideStringField;
    facturasTERMINAL: TWideStringField;
    facturasEFECTIVO: TFloatField;
    facturasDEVOLUCION1: TFloatField;
    facturasRESTANTE: TFloatField;
    facturasABONO: TFloatField;
    facturasCHEK: TWideStringField;
    facturasNO_RECIBO: TIntegerField;
    facturasPAGADOCXC: TFloatField;
    facturasMESES: TIntegerField;
    facturasDIAS: TIntegerField;
    facturasPENDIENTE: TFloatField;
    facturasESTADOPAGO: TWideStringField;
    facturasDEVOLUCION: TFloatField;
    facturasCONDICION_PAGO: TIntegerField;
    facturasCOMBO: TWideStringField;
    facturasCOBRADO: TIntegerField;
    facturasQUEES: TWideStringField;
    facturasUSUARIOID: TIntegerField;
    facturasCLIENTEID: TIntegerField;
    facturasCONDICIONVENTA: TWideStringField;
    facturasTIENDAID: TIntegerField;
    facturasPINREFERIDO: TWideStringField;
    facturasNC: TIntegerField;
    facturasCLIENTENOMBRE: TWideStringField;
    facturasNOMBRES_EMP: TWideStringField;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCUENTO: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENTENOMBRE: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    edit1: TcxTextEdit;
    facturasCODVEN: TIntegerField;
    facturasCAJEROID: TIntegerField;
    facturasNOMBRECLIENTE_PRN: TWideStringField;
    facturasFECHA_FINAL: TDateField;
    facturasINTERES_DIARIO: TFloatField;
    facturasINTERES_ACUM: TFloatField;
    facturasDIAS_TRANS: TIntegerField;
    facturasFECHA_ULTIMO_PAGO: TDateField;
    facturasDIAS_ATRASO: TIntegerField;
    facturasINTERES_PAGADO: TFloatField;
    facturasCAPITAL_PAGADO: TFloatField;
    facturasDESC_CAPITAL: TFloatField;
    facturasIDDR: TIntegerField;
    facturasNOMBREDELDR: TWideStringField;
    facturasCAJA: TWideStringField;
    facturasNCF_NOMBRE: TWideStringField;
    facturasMORA: TFloatField;
    facturasNUMERO_FACTURA: TFloatField;
    facturasBONOS: TFloatField;
    facturasOBSERVACIONES: TWideMemoField;
    facturasIDRUTA: TIntegerField;
    facturasCAJAID: TIntegerField;
    facturasTCREDITO: TFloatField;
    facturasVEFECTIVA: TFloatField;
    facturasIDTECNICO: TIntegerField;
    facturasUBICACION: TWideStringField;
    facturasPAGOXEFECTIVO: TFloatField;
    facturasPAGOXCHEQUE: TFloatField;
    facturasPAGOXTARJETA: TFloatField;
    facturasPAGOXBONO: TFloatField;
    Panel2: TPanel;
    Label1: TLabel;
    inicio: TcxDateEdit;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    Image1: TImage;
    Op3: TcxComboBox;
    Label3: TLabel;
    facturasFECHAVENCIMIENTO: TDateField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure Op3PropertiesChange(Sender: TObject);
    procedure inicioPropertiesChange(Sender: TObject);
    procedure fechafinalPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Notas_Credito: TNotas_Credito;

implementation

{$R *.dfm}
 uses
 unit2, unit19, tools, unit39;

procedure TNotas_Credito.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

datos.MNc.Edit;
datos.MNcNO_FACT.Value    := trunc(facturasNUMERO_FACTURA.Value);
datos.MNcCLIENTEID.Value  := facturasclienteid.Value;
datos.MNcNOMBRES.Value    := facturasclientenombre.Value;
datos.MNcCONIDICIONFACT.Value := facturastipo.Value;
frmNC.Edit2.Text := facturasNO_FACT.Text;
facturas.Close;
close;
end;

procedure TNotas_Credito.cxTextEdit1PropertiesChange(Sender: TObject);
begin

if op3.ItemIndex = 2 then
   begin
     with facturas do
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
        sql.Add('and a.NUMERO_FACTURA like '+#39+'%'+edit1.Text+'%'+#39);
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');

        facturas.Params[0].Value := 'IMPRESA';
        facturas.Params[1].Value := 'ACTIVA';
        facturas.Params[2].Value := 'FACTURACION';
        facturas.Params[3].Value := inicio.Date;
        facturas.Params[4].Value := fechafinal.Date;

      open;
      end;
  end;


  if op3.ItemIndex = 1 then
   begin
     with facturas do
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
        sql.Add('and a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');

        facturas.Params[0].Value := 'IMPRESA';
        facturas.Params[1].Value := 'ACTIVA';
        facturas.Params[2].Value := 'FACTURACION';
        facturas.Params[3].Value := inicio.Date;
        facturas.Params[4].Value := fechafinal.Date;

      open;
      end;
  end;
end;

procedure TNotas_Credito.fechafinalPropertiesChange(Sender: TObject);
begin
with facturas do
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

        facturas.Params[0].Value := 'IMPRESA';
        facturas.Params[1].Value := 'ACTIVA';
        facturas.Params[2].Value := 'FACTURACION';
        facturas.Params[3].Value := inicio.Date;
        facturas.Params[4].Value := fechafinal.Date;

      open;
      end;
end;

procedure TNotas_Credito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Notas_Credito := nil;
      Action := caFree;
end;

procedure TNotas_Credito.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    facturas.Close;
    close;
  end;
end;

procedure TNotas_Credito.FormShow(Sender: TObject);
begin

      inicio.Date := now();
      fechafinal.Date := now();
      with facturas do
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
        facturas.Params[0].Value := 'IMPRESA';
        facturas.Params[1].Value := 'ACTIVA';
        facturas.Params[2].Value := 'FACTURACION';
        facturas.Params[3].Value := inicio.Date;
        facturas.Params[4].Value := fechafinal.Date;

      open;
      end;
end;

procedure TNotas_Credito.inicioPropertiesChange(Sender: TObject);
begin
with facturas do
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

        facturas.Params[0].Value := 'IMPRESA';
        facturas.Params[1].Value := 'ACTIVA';
        facturas.Params[2].Value := 'FACTURACION';
        facturas.Params[3].Value := inicio.Date;
        facturas.Params[4].Value := fechafinal.Date;

      open;
      end;
end;

procedure TNotas_Credito.Op3PropertiesChange(Sender: TObject);
begin
if op3.ItemIndex = 0 then
  begin

     with facturas do
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

        facturas.Params[0].Value := 'IMPRESA';
        facturas.Params[1].Value := 'ACTIVA';
        facturas.Params[2].Value := 'FACTURACION';
        facturas.Params[3].Value := inicio.Date;
        facturas.Params[4].Value := fechafinal.Date;


      open;
      end;

  end;
end;

end.
