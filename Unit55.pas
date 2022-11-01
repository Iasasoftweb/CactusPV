unit Unit55;

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
  dxSkinXmas2008Blue, Data.DB, ZAbstractRODataset, ZDataset, cxGroupBox,
  cxRadioGroup, Vcl.Menus, cxTextEdit, Vcl.StdCtrls, cxButtons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, frxClass, frxDBSet,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier;

type
  TFrmRMecanciaInvManual = class(TForm)
    op1: TcxRadioGroup;
    consulta: TZReadOnlyQuery;
    consultaCOD_ART: TIntegerField;
    consultaCODIGOBARRA: TWideStringField;
    consultaARTICULO: TWideStringField;
    consultaCAT: TWideStringField;
    consultaDESCRIPCION: TWideStringField;
    consultaCOSTO_PR: TFloatField;
    consultaPRECIO_A: TFloatField;
    consultaPRECIO_B: TFloatField;
    DsConsulta: TDataSource;
    dscategoria: TDataSource;
    FbqFabricantes: TDataSource;
    Op_cat: TcxGroupBox;
    cxButton2: TcxButton;
    CatTXT: TcxTextEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    cxButton1: TcxButton;
    MASter: TfrxDBDataset;
    precio: TfrxDBDataset;
    Config: TfrxDBDataset;
    Reporte_Normal: TfrxReport;
    Reporte_Normal010: TfrxReport;
    Reporte_Normal101: TfrxReport;
    procedure cxButton2Click(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRMecanciaInvManual: TFrmRMecanciaInvManual;

implementation

{$R *.dfm}

uses Unit2, Unit57, Unit56;

procedure TFrmRMecanciaInvManual.cxButton1Click(Sender: TObject);
begin
if (op1.ItemIndex =0) then
  begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art,a.precio_a,a.precio_b,a.codigobarra, a.articulo,c.cat,b.descripcion,a.COSTO_PR from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('order by a.articulo');
    open;
  end;

  reporte_normal.variables['opciones1']:=quotedstr('');
  reporte_normal.variables['opciones2']:=quotedstr('');
  reporte_normal.PrepareReport;
  reporte_normal.ShowReport;

end;

if (op1.ItemIndex =1) then
  begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art,a.precio_a,a.precio_b,a.codigobarra, a.articulo,c.cat,b.descripcion,a.COSTO_PR from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('where c.codcat =:opp');
    sql.Add('order by a.articulo');
    params[0].Value := StrToInt(edit3.Text);
    open;
  end;
            reporte_normal010.variables['opciones1']:=quotedstr('Categoria  :'+Cattxt.text);
            reporte_normal010.variables['opciones2']:=quotedstr('');
            reporte_normal010.PrepareReport(true);
            reporte_normal010.ShowPreparedReport;

end;

if (op1.ItemIndex =2) then
  begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art,a.precio_a,a.precio_b,a.codigobarra, a.articulo,c.cat,b.descripcion,a.COSTO_PR from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('left join prob_arti d On a.cod_art = d.cod_art');
    sql.Add('where d.proveid =:opp');
    sql.Add('order by a.articulo');
    params[0].Value := StrToInt(edit1.Text);
    open;
  end;
  reporte_normal101.variables['opciones1']:=quotedstr('Proveedor  :'+Cattxt.text);
reporte_normal101.variables['opciones2']:=quotedstr('');
reporte_normal101.PrepareReport(true);
reporte_normal101.ShowPreparedReport;
end;





end;

procedure TFrmRMecanciaInvManual.cxButton2Click(Sender: TObject);
begin

if op1.ItemIndex = 1 then
  begin
      datos.FbCategorias.Open;
      FrmBuscarCategoria.edit1.text := '1';
      FrmBuscarCategoria.showmodal;
     // cxGrid3.Visible := true;
  end;

  if op1.ItemIndex = 2 then
  begin
      datos.FbqFabricantes.Open;
      FrmBuscarCategoria.edit1.text := '1';
      FrmBuscarProveedores.showmodal;
  end;


end;

procedure TFrmRMecanciaInvManual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmRMecanciaInvManual := nil;
Action := caFree;
end;

procedure TFrmRMecanciaInvManual.op1Click(Sender: TObject);
begin
if op1.ItemIndex = 0 then
  begin
   // op_prov.Enabled := false;
    op_cat.Enabled := false;
   // provtxt.Clear;
    catTXT.Clear;
  end;

  {
   }

 if op1.ItemIndex = 1 then
  begin
  //  op_prov.Enabled := false;
    op_cat.Enabled  := true;
    op_cat.Caption := 'Categoria';
   // provtxt.Clear;

    catTXT.Clear;
  end;

  if op1.ItemIndex = 2 then
  begin
   // op_prov.Enabled := true;
    op_cat.Enabled := true;
    op_cat.Caption := 'Proveedores';
   // provtxt.Clear;
    catTXT.Clear;
  end;
end;

end.
