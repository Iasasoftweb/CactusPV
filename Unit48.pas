unit Unit48;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, cxContainer,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxGroupBox,
  cxRadioGroup, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmMAntArticulos = class(TForm)
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosPOLITICA: TWideStringField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    DsqArticulos: TDataSource;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1POLITICA: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO1: TcxGridDBColumn;
    tipo: TcxRadioGroup;
    cxButton5: TcxButton;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    DsUnidad: TDataSource;
    dscategoria: TDataSource;
    Edit1: TEdit;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosCOSTOPROMENO: TFloatField;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    IbqRArticulosUPPER: TWideStringField;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosCOSTO: TFloatField;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    Almacenes1: TZReadOnlyQuery;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    DsAlmacenes01: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Edit2: TEdit;
    IbqRArticulosCODIGOTXT: TWideStringField;
    QupEQ: TZReadOnlyQuery;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel8: TPanel;
    Panel1: TPanel;
    imgLogoTop: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    op: TcxRadioGroup;
    Panel6: TPanel;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure opClick(Sender: TObject);
    procedure tipoClick(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMAntArticulos: TFrmMAntArticulos;

implementation

{$R *.dfm}

uses Unit5, Unit2, Unit23, UEquivalencia;

function Token(Sub: string; var S: string): string;
begin
  Result:= '';
  while Length(S)>0 do
  begin
    if AnsiSameText(Copy(S, 1, Length(Sub)), Sub) then
    begin
      Delete(S, 1, Length(Sub));
      break;
    end;
    Result:= Result + Copy(S,1,1);
    Delete(S,1,1);
  end;
end;

procedure TFrmMAntArticulos.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmMAntArticulos.cxButton5Click(Sender: TObject);
var
cero : string;
begin

FrmArticulos.op11.Enabled := true;
datos.FbCategorias.Open;
datos.MantArt.open;
datos.MantArt.Insert;
datos.Zunidad.Open;
datos.Control_Precio.Open;
DATOS.ZqProv_Arti.close;
FrmArticulos.Edit5.Text := 'NUEV';
with FrmArticulos.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(arti_gen, 1) from RDB$DATABASE');
     open;
  end;


datos.MantArtCOD_ART.Value := FrmArticulos.numerogen_id.Value;
datos.MantArtCODIGOBARRA.Value := intToStr(datos.MantArtCOD_ART.Value);
Datos.MantArtMODELO.Value := 'SI';
DATOS.MantArtMONEDA.Value := 'SI';
 datos.MantArtEXTFOTO.Value := 'JPG';

    if datos.MantArtCOD_ART.Value  >= 1 then
        begin
          cero := '000';
     end;

     if datos.MantArtCOD_ART.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.MantArtCOD_ART.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.MantArtCOD_ART.Value >= 1000 then
        begin
           cero := '';
     end;

     datos.MantArtCODIGOTXT.Value := cero+intTostr(datos.MantArtCOD_ART.Value);
     FrmArticulos.Edit1.Text := 'NUEVO';
     datos.MantArtITBIS.Value := '1';
     DATOS.MantArtOPCION_SABOR.Value := 'NO';
     datos.MantArtOPCIONES_BOLA.Value := 'NO';
   //  FrmArticulos.cxDBComboBox2.ItemIndex := 0;

  // FrmArticulos.cxDBRadioGroup1.ItemIndex := 1;
     datos.MantArtCOSTO.Value := 0.00;
     datos.MantArtCOSTO_PR.Value := 0.00;
     //cxButton5.Enabled := false;
                FrmArticulos.Btguardar.Enabled := true;
                FrmArticulos.Btcancelar.Enabled := true;
                FrmArticulos.btmodi.Enabled := false;
     DATOS.ZqProv_Arti.Open;

         FrmArticulos.ShowModal;
end;

procedure TFrmMAntArticulos.cxGrid2DBTableView1CellClick(
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

procedure TFrmMAntArticulos.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

if EDIT2.Text ='ARTI' then
  BEGIN
with datos.MantArt do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.signo from mtartuculos a');
    sql.Add('left join tb_moneda c On a.idmoneda = c.id');
    sql.Add('where a.cod_art =:oo');
    params[0].Value := ibqRarticuloscod_art.value;
    open;
  end;




datos.FbCategorias.Open;
FrmArticulos.Edit1.Text := 'MOD';
datos.Zunidad.Open;
//cxButton5.Enabled := false;
     FrmArticulos.Btcancelar.Enabled := true;
     FrmArticulos.BTguardar.Enabled := true;
     FrmArticulos.btmodi.Enabled := false;

     datos.Control_Precio.Open;
     DATOS.ZqProv_Arti.Open;

   close;
  END;

  IF EDIT2.Text = 'EQUI' THEN begin


          //

      //   ShowMessage(''+);
             with QupEQ do
               begin
                 close;
                 sql.Clear;
                 sql.Add('update mtartuculos set codequivalencia  =:cod, ');
                 sql.Add('desc_equivalencia=:desc,');
                 sql.Add('cantequivalenca =1 ');
                 sql.Add('where cod_art =:codd');

                 params[0].Value := datos.MantArtCOD_ART.Value;
                 params[1].Value := datos.MantArtARTICULO.Value;
                 params[2].Value := IbqRArticuloscod_art.text;
                 ExecSQL;
               end;
//
               datos.Data.Commit;
            //   ShowMessage(''+datos.MantArtCOD_ART.Text);

             With FrmEquivalencia.QEquivalentes do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.* from mtartuculos a where a.codequivalencia =:opp ');
                 params[0].value := datos.MantArtCOD_ART.Value;
                 open;
               end;

             IbqRArticulos.Close;
             EDIT2.Clear;
             CLOSE;
           end;

    if Edit2.Text ='OFERTA' then
      begin
          FrmCombo.cxTextEdit2.Text := ibqrArticuloscodigoTXT.Value;
             FrmCombo.cxTextEdit3.Text := ibqrArticulosarticulo.Value;


         FrmCombo.Cant.SetFocus;
         CLOSE;
      end;
     //FrmArticulos.ShowModal;
end;

procedure TFrmMAntArticulos.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TFrmMAntArticulos.cxGridDBTableView1DblClick(Sender: TObject);
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo), a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.cod_cat =:politica');
    params[0].Value := datos.FbCategoriasCODCAT.Value;
    open;
  end;
end;

procedure TFrmMAntArticulos.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{if key = vk_return then
  begin

  with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.codigobarra ='+#39+cxTextEdit1.Text+#39);
    open;
  end;
  //
   end;}
  if key = vk_return then
    begin
     //    cxButton6.click;
    end;
end;

procedure TFrmMAntArticulos.cxTextEdit1PropertiesChange(Sender: TObject);
var
T, ST, p1, p2, p3, p4  : string;
begin
if op.ItemIndex = 0 then
begin

with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo),a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.codigobarra like '+#39+'%'+edtBuscar.Text+'%'+#39);


    open;
  end;
end;


if op.ItemIndex = 1 then
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo), a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
     sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');

     ST:= edtBuscar.Text;
                while Length(ST) >0 do BEGIN
                  p1 := token(' ',ST);
                  p2 := token(' ',ST);
                  p3 := token(' ',ST);
                  p4 := token(' ',ST);

                END;


                Params[0].Value := p1;
                Params[1].Value := p2;
                Params[2].Value := p3;
                Params[3].Value := p4;

                open;
    open;
  end;
end;

end;

procedure TFrmMAntArticulos.edtBuscarChange(Sender: TObject);
var
T, ST, p1, p2, p3, p4  : string;
begin
if op.ItemIndex = 0 then
begin

with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo),a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.codigobarra like '+#39+'%'+edtBuscar.Text+'%'+#39);


    open;
  end;
end;


if op.ItemIndex = 1 then
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo), a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
     sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');

     ST:= edtBuscar.Text;
                while Length(ST) >0 do BEGIN
                  p1 := token(' ',ST);
                  p2 := token(' ',ST);
                  p3 := token(' ',ST);
                  p4 := token(' ',ST);

                END;


                Params[0].Value := p1;
                Params[1].Value := p2;
                Params[2].Value := p3;
                Params[3].Value := p4;

                open;
    open;
  end;

end;
end;

procedure TFrmMAntArticulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmMAntArticulos := nil;
Action := caFree;
end;

procedure TFrmMAntArticulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    close;
  end;
end;

procedure TFrmMAntArticulos.FormShow(Sender: TObject);
begin

datos.FbCategorias.Open;
//IbqRArticulos.Close;
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select first  15 upper(a.articulo),a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');

    open;
  end;
 edtBuscar.SetFocus;
 cxButton5.Enabled := true;
end;

procedure TFrmMAntArticulos.opClick(Sender: TObject);
begin
if op.ItemIndex = 0 then
  begin
  //  label1.Caption := 'Introduce el Codido';
    edtbuscar.SetFocus;
  end;

if op.ItemIndex = 1 then
  begin
   // label1.Caption := 'Introduce el Nombre del Articulo';
    edtbuscar.SetFocus;
  end;



end;

procedure TFrmMAntArticulos.tipoClick(Sender: TObject);
begin
if tipo.ItemIndex = 0 then
   begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo), a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.politica =:politica');
    params[0].Value := 'Unitario';
    open;
  end;
end;

if tipo.ItemIndex = 1 then
   begin

with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.politica =:politica');
    params[0].Value := 'fraccional';
    open;
  end;
end;

if tipo.ItemIndex = 2 then
   begin

with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo), a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.politica =:politica');
    params[0].Value := 'Compuesto';
    open;
  end;
end;


if tipo.ItemIndex = 3 then
   begin

with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo), a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.politica =:politica');
    params[0].Value := 'Insumo';
    open;
  end;
end;

if tipo.ItemIndex = 4 then
   begin

with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo), a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.politica =:politica');
    params[0].Value := 'servicio';
    open;
  end;
end;

end;
end.
