unit Unit66;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, cxLabel, cxTextEdit, cxGroupBox,
  cxRadioGroup, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  ZAbstractRODataset, ZDataset, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmBuscarCompras = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1FECHA: TcxGridDBColumn;
    cxGrid3DBTableView1NOMBRE_PRO: TcxGridDBColumn;
    cxGrid3DBTableView1NOFACT: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    DsqCompra: TDataSource;
    QCompras: TZReadOnlyQuery;
    QComprasNOID: TIntegerField;
    QComprasFECHA: TDateField;
    QComprasUSUARIOID: TIntegerField;
    QComprasTIENDAID: TIntegerField;
    QComprasCONDICION: TWideStringField;
    QComprasPROVID: TIntegerField;
    QComprasNOFACT: TWideStringField;
    QComprasFECHA_COMPRA: TDateField;
    QComprasPLAZO: TIntegerField;
    QComprasMONTOFACT: TFloatField;
    QComprasMONTOPAGO: TFloatField;
    QComprasMONTOPEND: TFloatField;
    QComprasESTADO: TIntegerField;
    QComprasNOMBRES_EMP: TWideStringField;
    QComprasDESCRIPCION: TWideStringField;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column2: TcxGridDBColumn;
    cxGrid3DBTableView1Column3: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxButton7: TcxButton;
    op: TcxRadioGroup;
    cxTextEdit1: TcxTextEdit;
    Label1: TcxLabel;
    Panel1: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure opClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscarCompras: TFrmBuscarCompras;

implementation
     uses unit2, tools, Unit65;
{$R *.dfm}

procedure TFrmBuscarCompras.cxButton7Click(Sender: TObject);
begin
if op.ItemIndex = 0 then
  begin

with qcompras do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.descripcion from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join fabricantes e On a.provid = e.COD');
    sql.Add('where e.descripcion like '+#39+'%'+cxTextedit1.Text+'%'+#39);
    sql.Add('and a.condicion =:p');
    params[0].Value := 'Compra';
    open;
  end;
end;


if op.ItemIndex = 1 then
  begin

with qcompras do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.descripcion from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join fabricantes e On a.provid = e.COD');
    sql.Add('where a.fecha >=:fecha1');
    sql.Add('and a.fecha <=:fecha2');
    sql.Add('and a.condicion =:p');
    Params[0].Value := inicio.Date;
    Params[1].Value := fechafinal.Date;
    params[2].Value := 'Compra';
    open;
  end;
end;

if op.ItemIndex = 2 then
  begin

with qcompras do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.descripcion from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join fabricantes e On a.provid = e.COD');
    sql.Add('where a.nofact like '+#39+'%'+cxTextedit1.Text+'%'+#39);
    sql.Add('and a.condicion =:p');
    params[0].Value := 'Compra';
    open;
  end;
end;

end;

procedure TFrmBuscarCompras.cxGrid3DBTableView1DblClick(Sender: TObject);

begin

with datos.ZAjusteM do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.descripcion, f.descripcion almacen from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join fabricantes e On a.provid = e.COD');
    sql.Add('left join almacenes f On a.cod_alm = f.id');
    sql.Add('where a.noId =:op1');
    params[0].Value := qcomprasnoid.Value;
    open;
  end;



  datos.AjusteD.Open;
  frmcompras.opm.Enabled := true;
frmcompras.OpDetalle.Enabled := true;
  // frmcompras.cxButton2.Enabled := true;
   frmcompras.cxButton3.Enabled := true;
   frmcompras.cxButton4.Enabled := true;
   frmcompras.cxButton6.Enabled := true;
    frmcompras.cxDBComboBox1.ItemIndex := 1;
   close;

end;

procedure TFrmBuscarCompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmBuscarCompras := nil;
Action := caFree;
end;

procedure TFrmBuscarCompras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    close;
  end;
end;

procedure TFrmBuscarCompras.FormShow(Sender: TObject);
begin
qcompras.Open;
end;

procedure TFrmBuscarCompras.opClick(Sender: TObject);
begin
if op.ItemIndex = 0 then
  begin
     PANEL1.Visible := false;
    label1.Caption := 'Introduce Nombre del Proveedor';
    CXTEXTedit1.SetFocus;
  end;

if op.ItemIndex = 1 then
  begin
    PANEL1.Visible := TRUE;
  end;

if op.ItemIndex = 2 then
  begin
     PANEL1.Visible := false;
    label1.Caption := 'Introduce el Numero de Factura';
    CXTEXTedit1.SetFocus;
  end;

end;

end.
