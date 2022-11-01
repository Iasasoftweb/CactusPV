unit Unit45;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxRadioGroup, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, ZAbstractRODataset, ZDataset, cxTextEdit, frxClass,
  frxDBSet, cxCheckGroup, cxCurrencyEdit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier;

type
  TFrmConsultaArticulos = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    op1: TcxRadioGroup;
    op2: TcxRadioGroup;
    cxButton1: TcxButton;
    consulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CAT: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    op_prov: TcxGroupBox;
    cxButton10: TcxButton;
    provTXT: TcxTextEdit;
    Op_cat: TcxGroupBox;
    cxButton2: TcxButton;
    CatTXT: TcxTextEdit;
    FbqFabricantes: TDataSource;
    DSCP: TDataSource;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    Edit1: TEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Edit2: TEdit;
    Edit3: TEdit;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    dscategoria: TDataSource;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    Config: TfrxDBDataset;
    precio: TfrxDBDataset;
    MASter: TfrxDBDataset;
    OpPrint: TcxGroupBox;
    Op1_p: TcxCheckGroup;
    cxButton3: TcxButton;
    Reporte_Normal: TfrxReport;
    Precios: TZReadOnlyQuery;
    PreciosCPID: TIntegerField;
    PreciosNO_ART: TIntegerField;
    PreciosUNIDAD_M: TIntegerField;
    PreciosPRECIO1: TFloatField;
    PreciosPRECIO2: TFloatField;
    PreciosPRECIO3: TFloatField;
    PreciosUNIDAD: TWideStringField;
    Reporte_Normal010: TfrxReport;
    Reporte_Normal001: TfrxReport;
    Reporte_Normal100: TfrxReport;
    Reporte_Normal101: TfrxReport;
    consultaCOD_ART: TIntegerField;
    consultaCODIGOBARRA: TWideStringField;
    consultaARTICULO: TWideStringField;
    consultaCAT: TWideStringField;
    consultaDESCRIPCION: TWideStringField;
    consultaCOSTO_PR: TFloatField;
    consultaPRECIO_A: TFloatField;
    consultaPRECIO_B: TFloatField;
    consultaSTOCK: TFloatField;
    cxButton4: TcxButton;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    consultaCOSTO: TFloatField;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);

    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaArticulos: TFrmConsultaArticulos;

implementation
   uses tools, unit2, unit19;
{$R *.dfm}

procedure TFrmConsultaArticulos.cxButton10Click(Sender: TObject);
begin
cxGrid5.Visible := true;
end;

procedure TFrmConsultaArticulos.cxButton1Click(Sender: TObject);
begin
/////  Consulta Todos  ///
if (op1.ItemIndex =0) and (op2.ItemIndex = 0) then
  begin

with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, a.precio_a, a.costo, a.precio_b,a.codigobarra,a.articulo,c.cat,b.descripcion,a.COSTO_PR, a.stock from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('order by a.cod_art');
    open;
  end;


end;

if (op1.ItemIndex =0) and (op2.ItemIndex = 1) then
  begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, a.precio_a, a.precio_b, a.costo, a.codigobarra,a.articulo,c.cat,b.descripcion,a.COSTO_PR, a.costo,  a.stock from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('order by a.articulo');
    open;
  end;
end;

//// Fin Todas ////


/////  Consulta Suplidor  ///

if (op1.ItemIndex =2) and (op2.ItemIndex = 0) then
  begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, a.precio_a, a.precio_b, a.costo, a.codigobarra,a.articulo,c.cat,b.descripcion,a.COSTO_PR, a.stock from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('left join prob_arti d On a.cod_art = d.cod_art');
    sql.Add('where d.proveid =:opp');
    sql.Add('order by a.cod_art');
    params[0].Value := StrToInt(edit1.Text);
    open;
  end;
end;

if (op1.ItemIndex =2) and (op2.ItemIndex = 1) then
  begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, a.precio_a, a.precio_b, a.costo, a.codigobarra,a.articulo,c.cat,b.descripcion,a.COSTO_PR, a.stock from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('left join prob_arti d On a.cod_art = d.cod_art');
    sql.Add('where d.proveid =:opp');
    sql.Add('order by a.articulo');
    params[0].Value := StrToInt(edit1.Text);
    open;
  end;
end;
//// Fin Suplidor ////
///
///


/////  Consulta Categoria  ///
if (op1.ItemIndex =1) and (op2.ItemIndex = 0) then
  begin


 with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, a.precio_a, a.costo, a.precio_b,a.codigobarra,a.articulo,c.cat,b.descripcion,a.COSTO_PR, a.stock from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('where c.codcat =:opp');
    sql.Add('order by a.cod_art');
    params[0].Value := StrToInt(edit3.Text);
    open;
  end;


end;

if (op1.ItemIndex =1) and (op2.ItemIndex = 1) then
  begin

   with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, a.precio_a, a.costo, a.precio_b,a.codigobarra,a.articulo,c.cat,b.descripcion,a.COSTO_PR, a.stock from mtartuculos a');
    sql.Add('left join fabricantes b On a.cod_prov1 = b.cod_fab');
    sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
    sql.Add('where c.codcat =:opp');
    sql.Add('order by a.articulo');
    params[0].Value := StrToInt(edit3.Text);
    open;
  end;


//// Fin CAT ////

  end;





end;

procedure TFrmConsultaArticulos.cxButton2Click(Sender: TObject);
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


procedure TFrmConsultaArticulos.cxButton3Click(Sender: TObject);
begin

////  Todos////

if op1.ItemIndex = 0 then
  begin
    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
            reporte_normal.variables['opciones1']:=quotedstr('');
            reporte_normal.variables['opciones2']:=quotedstr('');
            reporte_normal.PrepareReport(true);
            reporte_normal.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal010.variables['opciones1']:=quotedstr('');
            reporte_normal010.variables['opciones2']:=quotedstr('');
            reporte_normal010.PrepareReport(true);
            reporte_normal010.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsChecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal001.variables['opciones1']:=quotedstr('');
            reporte_normal001.variables['opciones2']:=quotedstr('');
            reporte_normal001.PrepareReport(true);
            reporte_normal001.ShowPreparedReport;
       end;


    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal100.variables['opciones1']:=quotedstr('');
            reporte_normal100.variables['opciones2']:=quotedstr('');
            reporte_normal100.PrepareReport(true);
            reporte_normal100.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
           ShowMEssage('** No es necesario activar la segunda Opción ');
           op1_p.States[op1_p.Properties.Items[1].Index] := cbsUnchecked;
       end;

        if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsChecked)
        then //, cbsChecked, cbsGrayed
      begin
          precios.Open;
            reporte_normal101.variables['opciones1']:=quotedstr('');
            reporte_normal101.variables['opciones2']:=quotedstr('');
            reporte_normal101.PrepareReport(true);
            reporte_normal101.ShowPreparedReport;
       end;

  end;
/// Fin Todos ///


////  Categoria ////

if op1.ItemIndex = 1 then
  begin
    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin

            reporte_normal.variables['opciones1']:=quotedstr('Categoria  :'+Cattxt.text);
            reporte_normal.variables['opciones2']:=quotedstr('');
            reporte_normal.PrepareReport(true);
            reporte_normal.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal010.variables['opciones1']:=quotedstr('Categoria  :'+Cattxt.text);
            reporte_normal010.variables['opciones2']:=quotedstr('');
            reporte_normal010.PrepareReport(true);
            reporte_normal010.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsChecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal001.variables['opciones1']:=quotedstr('Categoria  :'+Cattxt.text);
            reporte_normal001.variables['opciones2']:=quotedstr('');
            reporte_normal001.PrepareReport(true);
            reporte_normal001.ShowPreparedReport;
       end;


    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal100.variables['opciones1']:=quotedstr('Categoria  :'+Cattxt.text);
            reporte_normal100.variables['opciones2']:=quotedstr('');
            reporte_normal100.PrepareReport(true);
            reporte_normal100.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
           ShowMEssage('** No es necesario activar la segunda Opción ');
           op1_p.States[op1_p.Properties.Items[1].Index] := cbsUnchecked;
       end;

        if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsChecked)
        then //, cbsChecked, cbsGrayed
      begin
          precios.Open;
            reporte_normal101.variables['opciones1']:=quotedstr('Categoria  :'+Cattxt.text);
            reporte_normal101.variables['opciones2']:=quotedstr('');
            reporte_normal101.PrepareReport(true);
            reporte_normal101.ShowPreparedReport;
       end;

  end;
/// Fin Todos ///


 ////  Proveedores////

if op1.ItemIndex = 2 then
  begin
    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin

            reporte_normal.variables['opciones1']:=quotedstr('Proveedor  :'+Cattxt.text);
            reporte_normal.variables['opciones2']:=quotedstr('');
            reporte_normal.PrepareReport(true);
            reporte_normal.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal010.variables['opciones1']:=quotedstr('Proveedor  :'+Cattxt.text);
            reporte_normal010.variables['opciones2']:=quotedstr('');
            reporte_normal010.PrepareReport(true);
            reporte_normal010.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsChecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal001.variables['opciones1']:=quotedstr('Proveedor  :'+Cattxt.text);
            reporte_normal001.variables['opciones2']:=quotedstr('');
            reporte_normal001.PrepareReport(true);
            reporte_normal001.ShowPreparedReport;
       end;


    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
            precios.Open;
            reporte_normal100.variables['opciones1']:=quotedstr('Proveedor  :'+Cattxt.text);
            reporte_normal100.variables['opciones2']:=quotedstr('');
            reporte_normal100.PrepareReport(true);
            reporte_normal100.ShowPreparedReport;
       end;

    if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsUnchecked)
        then //, cbsChecked, cbsGrayed
      begin
           ShowMEssage('** No es necesario activar la segunda Opción ');
           op1_p.States[op1_p.Properties.Items[1].Index] := cbsUnchecked;
       end;

        if  (Op1_p.States[op1_p.Properties.Items[0].Index] = cbsChecked) and
          (Op1_p.States[op1_p.Properties.Items[1].Index] = cbsUnchecked) and
          (Op1_p.States[op1_p.Properties.Items[2].Index] = cbsChecked)
        then //, cbsChecked, cbsGrayed
      begin
          precios.Open;
            reporte_normal101.variables['opciones1']:=quotedstr('Proveedor  :'+Cattxt.text);
            reporte_normal101.variables['opciones2']:=quotedstr('');
            reporte_normal101.PrepareReport(true);
            reporte_normal101.ShowPreparedReport;
       end;

  end;
/// Fin Todos ///

end;

procedure TFrmConsultaArticulos.cxButton4Click(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaArticulos.cxGrid3DBTableView1DblClick(Sender: TObject);
begin

catTXT.Text := datos.FbCategoriasCAT.Value;
edit3.Text := INtToStr(datos.FbCategoriasCODCAT.Value);
CXGRID3.Visible := FALSE;
end;

procedure TFrmConsultaArticulos.cxGridDBTableView1DblClick(Sender: TObject);
begin
CatTXT.Text := datos.FbqFabricantesnombre_pro.Value;
edit1.Text := IntTostr(datos.FbqFabricantesCOD_prov.Value);
cxgrid5.Visible := false;
end;

procedure TFrmConsultaArticulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmConsultaArticulos := nil;
end;

procedure TFrmConsultaArticulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_escape then
  begin
    cxgrid5.Visible := false;
    cxgrid3.Visible := false;
  end;
end;

procedure TFrmConsultaArticulos.op1Click(Sender: TObject);
begin
if op1.ItemIndex = 0 then
  begin
    op_prov.Enabled := false;
    op_cat.Enabled := false;
    provtxt.Clear;
    catTXT.Clear;
  end;

  {
   }

 if op1.ItemIndex = 1 then
  begin
    op_prov.Enabled := false;
    op_cat.Enabled  := true;
    op_cat.Caption := 'Categoria';
    provtxt.Clear;

    catTXT.Clear;
  end;

  if op1.ItemIndex = 2 then
  begin
    op_prov.Enabled := true;
    op_cat.Enabled := true;
    op_cat.Caption := 'Proveedores';
    provtxt.Clear;
    catTXT.Clear;
  end;


end;


procedure RTodos(var Op1_p : TcxCheckGroup);
begin


end;


end.
