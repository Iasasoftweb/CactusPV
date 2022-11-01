unit Unit112;

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
  dxSkinXmas2008Blue, cxGroupBox, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset;

type
  TFConsultaArtiRMA = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Image1: TImage;
    Edit1: TEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsqArticulos: TDataSource;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_A: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn;
    IbqRArticulos: TZReadOnlyQuery;
    Almacenes1: TZReadOnlyQuery;
    DsAlmacenes01: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid2DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    numero: TZReadOnlyQuery;
    numeroGEN_ID: TLargeintField;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    IbqRArticulosUNIDAD: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosBENEFICIOS: TFloatField;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosEXISTENCIA: TExtendedField;
    IbqRArticulosOBS: TIntegerField;
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaArtiRMA: TFConsultaArtiRMA;

implementation

{$R *.dfm}

uses Unit2;

procedure TFConsultaArtiRMA.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
with almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;
end;

procedure TFConsultaArtiRMA.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_RMAD_ID, 1) from RDB$DATABASE');
     open;
  end;

  datos.RMAD.Open;
  datos.rmad.Append;
  datos.RMADID.Value         := numeroGEN_ID.Value;
  datos.RMADIDARTICULO.Value := IbqRArticulosCOD_ART.Value;
  datos.RMADPRECIO.Value     := IbqRArticulosPRECIO_A.Value;
  datos.RMADARTICULO.Value   := IbqRArticulosARTICULO.Value;
  datos.RMADITB.Value        := 0.00;
  datos.RMADARTICULOTXT.Value:= IbqRArticulosARTICULO.Value;
  datos.RMADCANT.Value       := 1;
  datos.rmad.Refresh;
  close;
end;

procedure TFConsultaArtiRMA.Edit1Change(Sender: TObject);
begin
with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                sql.Add('where upper(a.articulo) like '+#39+'%'+edit1.Text+'%'+#39);
                sql.Add('and a.cod_alm =:oppp');
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                params[0].Value := datos.ZUconfiguracionALMACENRMA.Value;
                open;
              end;



  end;

procedure TFConsultaArtiRMA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FConsultaArtiRMA := nil;
Action := caFree;
end;

procedure TFConsultaArtiRMA.FormShow(Sender: TObject);
begin
showmessage(''+datos.ZUconfiguracionALMACENRMA.text);
with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                sql.Add('where a.cod_alm =:oppp');
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                params[0].Value := datos.ZUconfiguracionALMACENRMA.Value;
                open;

              end;
end;

end.
