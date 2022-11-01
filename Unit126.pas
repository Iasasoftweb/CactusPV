unit Unit126;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, cxDropDownEdit,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxCalendar, frxClass,
  frxDBSet;

type
  TComprobantesAnulados = class(TForm)
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxComboBox1: TcxComboBox;
    cuadre: TZReadOnlyQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn;
    cxGrid1DBTableView1RNC: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn;
    cxGrid1DBTableView1NCF_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Dscuadre: TDataSource;
    cuadreFECHA_FAC: TDateField;
    cuadreNUMERO_FACTURA: TFloatField;
    cuadreCEDULA: TWideStringField;
    cuadreCLIENTENOMBRE: TWideStringField;
    cuadreNOMBRECLIENTE_PRN: TWideStringField;
    cuadreNCF_NOMBRE: TWideStringField;
    cuadreNCF: TWideStringField;
    cuadreGRABADO: TFloatField;
    cuadreNOGRABADO: TFloatField;
    cuadreMONTOPAGO: TFloatField;
    cuadreNOMBREDELDR: TWideStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Config: TfrxDBDataset;
    FxCuadre: TfrxDBDataset;
    reporte: TfrxReport;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComprobantesAnulados: TComprobantesAnulados;

implementation

{$R *.dfm}

uses UInicio, Unit2;

procedure TComprobantesAnulados.cxButton1Click(Sender: TObject);
begin

 with cuadre do
      begin
        close;
        sql.clear;
        sql.add('select a.fecha_fac, a.numero_factura, b.cedula ,b.nombres ClienteNombre, a.nombrecliente_prn, a.ncf_nombre, a.ncf, a.pogxitbs Grabado, a.monto NoGrabado, a.montopago, a.nombredeldr  from master_fact a');
        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');

        sql.add('where a.situacion =:opcion2');
        sql.add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
        sql.Add('ANd a.fecha_fac >=:fecha1');
        sql.Add('and a.fecha_fac <=:fecha2');
        sql.add('and a.nombredeldr =:oppp');
        sql.add('and a.ncf is not null');

        sql.add('order by a.numero_factura');

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ANULADA';
        Params[2].Value := 'FACTURACION';

        Params[3].Value := inicio.Date;
        Params[4].Value := fechafinal.Date;
        Params[5].Value := cxComboBox1.Text;

        open;
      end;

 end;

procedure TComprobantesAnulados.cxButton2Click(Sender: TObject);
begin
 reporte.variables['fecha1']:=quotedstr(inicio.Text);
             reporte.variables['tipo']:=quotedstr(cxcombobox1.Text);
             reporte.variables['fecha2']:=quotedstr(fechafinal.Text);

             reporte.PrepareReport(true);
             reporte.ShowPreparedReport;
end;

procedure TComprobantesAnulados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     ComprobantesAnulados := nil;
     Action := caFree;
end;

end.
