unit Unit58;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, Vcl.StdCtrls, cxButtons,
  cxGroupBox, cxRadioGroup, Data.DB, ZAbstractRODataset, ZDataset, frxClass,
  frxDBSet, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls,
  frxExportBaseDialog, frxExportPDF;

type
  TFrmPedido = class(TForm)
    op1: TcxRadioGroup;
    Op_cat: TcxGroupBox;
    cxButton2: TcxButton;
    CatTXT: TcxTextEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    Reporte_Normal: TfrxReport;
    Config: TfrxDBDataset;
    MASter: TfrxDBDataset;
    precio: TfrxDBDataset;
    Reporte_Normal101: TfrxReport;
    Reporte_Normal010: TfrxReport;
    consulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    FbqFabricantes: TDataSource;
    dscategoria: TDataSource;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CAT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    op_suplidores: TcxGroupBox;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    prove: TZReadOnlyQuery;
    provePROBEID: TIntegerField;
    proveCOD_ART: TIntegerField;
    proveREFERENCIA: TWideStringField;
    provePROVEID: TIntegerField;
    proveDESCRIPCION: TWideStringField;
    dsprov: TDataSource;
    consultaRECOMEDADO: TExtendedField;
    consultaCOD_ART: TIntegerField;
    consultaPRECIO_A: TFloatField;
    consultaPRECIO_B: TFloatField;
    consultaCODIGOBARRA: TWideStringField;
    consultaARTICULO: TWideStringField;
    consultaCAT: TWideStringField;
    consultaDESCRIPCION: TWideStringField;
    consultaCOSTO_PR: TFloatField;
    cxButton3: TcxButton;
    Panel1: TPanel;
    OpExport: TcxRadioGroup;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    frxPDFExport1: TfrxPDFExport;
    procedure op1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedido: TFrmPedido;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmPedido.cxButton1Click(Sender: TObject);
begin
/////  Consulta Todos  ///

if (op1.ItemIndex =0) then
  begin

  with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select (a.stock_ma - a.stock) recomedado, a.stock, a.cod_art,a.precio_a,a.precio_b,a.codigobarra, a.articulo,c.cat,b.descripcion,a.COSTO_PR from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('where COALESCE(a.stock,0) <=a.stock_m');
    sql.Add('order by a.cod_art');
    open;
  end;

   

  end;


//// Fin Todas ////


/////  Consulta Suplidor  ///

if (op1.ItemIndex =2) then
  begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select (a.stock_ma - a.stock) recomedado, a.stock, a.cod_art,a.precio_a,a.precio_b,a.codigobarra, a.articulo,c.cat,b.descripcion,a.COSTO_PR from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('left join prob_arti d On a.cod_art = d.cod_art');
    sql.Add('where d.proveid =:opp');
    sql.Add('and COALESCE(a.stock,0) <=a.stock_m');
    sql.Add('order by a.cod_art');
    params[0].Value := StrToInt(edit1.Text);
    open;
  end;



 
end;

//// Fin Suplidor ////
///
///


/////  Consulta Categoria  ///
if (op1.ItemIndex =1) then
  begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select (a.stock_ma - a.stock) recomedado, a.stock, a.cod_art,a.precio_a,a.precio_b,a.codigobarra, a.articulo,c.cat,b.descripcion,a.COSTO_PR from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('where c.codcat =:opp');
     sql.Add('and COALESCE(a.stock,0) <=a.stock_m');
    sql.Add('order by a.cod_art');
    params[0].Value := StrToInt(edit3.Text);
    open;
  end;


end;

   //// Fin Suplidor ////


end;

procedure TFrmPedido.cxButton2Click(Sender: TObject);
begin
if op1.ItemIndex = 1 then
  begin
      datos.FbCategorias.Open;
      cxGrid3.Visible := true;
  end;

  if op1.ItemIndex = 2 then
  begin
      datos.FbqFabricantes.Open;
      cxGrid5.Visible := true;
  end;

end;

procedure TFrmPedido.cxButton3Click(Sender: TObject);
begin
if (op1.ItemIndex =0) then
  begin

            reporte_normal.variables['opciones1']:=quotedstr('');
            reporte_normal.variables['opciones2']:=quotedstr('');
            reporte_normal.PrepareReport(true);
            reporte_normal.ShowPreparedReport;
            reporte_normal.Export(frxPDFExport1);

  end;

  if (op1.ItemIndex =1) then
  begin

            reporte_normal.variables['opciones1']:=quotedstr('Categoria  :'+Cattxt.text);
            reporte_normal.variables['opciones2']:=quotedstr('');
            reporte_normal.PrepareReport(true);
            reporte_normal.ShowPreparedReport;

  end;


  if (op1.ItemIndex =2) then
  begin

           reporte_normal.variables['opciones1']:=quotedstr('Proveedor  :'+Cattxt.text);
            reporte_normal.variables['opciones2']:=quotedstr('');
            reporte_normal.PrepareReport(true);
            reporte_normal.ShowPreparedReport;

  end;




end;

procedure TFrmPedido.cxButton4Click(Sender: TObject);
begin
if OpExport.ItemIndex = 1 then
  begin

  end;
end;

procedure TFrmPedido.cxButton5Click(Sender: TObject);
begin
  reporte_normal.variables['opciones1']:=quotedstr('');
            reporte_normal.variables['opciones2']:=quotedstr('');
            reporte_normal.PrepareReport(true);
            reporte_normal.Export(frxPDFExport1);
end;

procedure TFrmPedido.cxGrid1DBTableView1DblClick(Sender: TObject);
begin



  with prove do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.descripcion from prob_arti a');
      sql.Add('left join fabricantes b On a.proveid = b.cod');
      sql.Add('where a.cod_art =:ppp');
      params[0].Value := consultacod_art.Value;
      open;
    end;
    op_suplidores.Visible := true;
end;

procedure TFrmPedido.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
catTXT.Text := datos.FbCategoriasCAT.Value;
edit3.Text := INtToStr(datos.FbCategoriasCODCAT.Value);
CXGRID3.Visible := FALSE;
end;

procedure TFrmPedido.cxGridDBTableView1DblClick(Sender: TObject);
begin
CatTXT.Text := datos.FbqFabricantesnombre_pro.Value;
edit1.Text := IntTostr(datos.FbqFabricantesCOD_prov.Value);
cxgrid5.Visible := false;
end;

procedure TFrmPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmPedido :=nil;
Action := caFree;
end;

procedure TFrmPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key =vk_escape then
  begin
     op_suplidores.Visible := false;
  end;
end;

procedure TFrmPedido.op1Click(Sender: TObject);
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
