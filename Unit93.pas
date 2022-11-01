unit Unit93;

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
  cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Vcl.Menus, cxButtons,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmRepInventario = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Qprov: TZReadOnlyQuery;
    IncluirProveedor: TcxCheckBox;
    DsPRov: TDataSource;
    QprovCOD: TIntegerField;
    QprovCOD_FAB: TWideStringField;
    QprovDESCRIPCION: TWideStringField;
    QprovCONTACTO: TWideStringField;
    QprovTELEFONO: TWideStringField;
    QprovFAX: TWideStringField;
    QprovEMAIL: TWideStringField;
    QprovDIRECCION: TWideStringField;
    LCproveedor: TcxLookupComboBox;
    Label1: TLabel;
    IncluirCategoria: TcxCheckBox;
    QCategoria: TZReadOnlyQuery;
    DsCategoria: TDataSource;
    QCategoriaCODCAT: TIntegerField;
    QCategoriaCAT: TWideStringField;
    QCategoriaIMAGEN: TBlobField;
    QCategoriaEXTFOTO: TWideStringField;
    QCategoriaOPCION: TWideStringField;
    cxLookupComboBox1: TcxLookupComboBox;
    Label2: TLabel;
    cxCheckBox1: TcxCheckBox;
    NombreArticulos: TEdit;
    Label3: TLabel;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QConsulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    QConsultaCOD_ART: TIntegerField;
    QConsultaARTICULO: TWideStringField;
    QConsultaCAT: TWideStringField;
    QConsultaDESCRIPCION: TWideStringField;
    QConsultaCOSTO: TFloatField;
    QConsultaPRECIO_A: TFloatField;
    QConsultaPRECIO_B: TFloatField;
    QConsultaPRECIO_D: TFloatField;
    QConsultaENTRADA: TFloatField;
    QConsultaSALIDA: TFloatField;
    QConsultaEXISTENCIA: TFloatField;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CAT: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_A: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_B: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_D: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRepInventario: TFrmRepInventario;

implementation

{$R *.dfm}

uses Unit2, Unit63;

procedure TFrmRepInventario.cxButton1Click(Sender: TObject);
begin
with qconsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, c.articulo,d.cat,e.descripcion, c.costo, c.precio_a, c.precio_b, c.precio_d, sum(a.entrada) entrada,  sum(a.salida) salida, (Sum(a.entrada) - Sum(a.salida)) Existencia from minventario a');
    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
    sql.Add('left Join mtcategoria D On c.cod_cat = d.codcat');
    sql.Add('Left Join fabricantes E On c.cod_prov1 = e.cod');



    sql.Add('group by a.cod_art,d.cat, c.articulo, e.descripcion, c.costo, c.precio_a, c.precio_b, c.precio_d');
    open;

  end;


end;

procedure TFrmRepInventario.FormShow(Sender: TObject);
begin

  qProv.close;
  Qprov.Open;

  QCategoria.Close;
  QCategoria.Open;
end;

end.
