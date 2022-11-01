unit UbuscarArticulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, cxRadioGroup;

type
  TfBuscarArticulos = class(TForm)
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
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    Panel7: TPanel;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    Panel10: TPanel;
    SpeedButton2: TSpeedButton;
    Op: TcxRadioGroup;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure OpClick(Sender: TObject);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscarArticulos: TfBuscarArticulos;

implementation

{$R *.dfm}

uses UAdminArticulos, uInventario_Master;


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

procedure TfBuscarArticulos.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfBuscarArticulos.edtBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TfBuscarArticulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 fBuscarArticulos := nil;
   Action := caFree;
end;

procedure TfBuscarArticulos.OpClick(Sender: TObject);
begin
if op.ItemIndex = 0 then
  begin
    Label7.Caption := 'Buscar por Código';
    edtBuscar.TextHint := 'DIGITE EL CODIGO DEL ARTICULO';
    edtBuscar.SetFocus;
  end;

  if op.ItemIndex = 1 then
  begin
    Label7.Caption := 'Buscar por Código de Barra';
    edtBuscar.TextHint := 'DIGITE EL CODIGO DE BARRA DEL ARTICULO';
        edtBuscar.SetFocus;
  end;

  if op.ItemIndex = 2 then
  begin
    Label7.Caption := 'Buscar por Nombre del Articulo';
    edtBuscar.TextHint := 'DIGITE EL NOMBRE DEL ARTICULO';
        edtBuscar.SetFocus;
  end;
end;

procedure TfBuscarArticulos.SpeedButton1Click(Sender: TObject);
var
T, ST, p1, p2, p3, p4  : string;
begin

if op.ItemIndex = 2 then
  begin

    with fInventario_Master.ibqrarticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select upper(A.ARTICULO), b.nom_indicacion, i.signo, c. sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
        sql.Add('left join producto_indicaciones b on a.indicacion = b.id');
        sql.Add('left join productos_sustancia c On a.sustancia =c.id');
        sql.Add('left join productos_marca d On a.idmarca = d.id');
        sql.Add('left join man_provedores e On a.cod_prov1 = e.cod_prov');
        sql.Add('Left Join productos_clasificacion f on a.clasificacion = f.id');
        sql.Add('Left join mtcategoria g On a.cod_cat = g.codcat');
        sql.Add('Left join producto_subcategoria h on a.subcategoria = h.id');
        sql.Add('left join tb_moneda i On a.idmoneda = i.id');
        sql.Add('left join man_provedores J On a.cod_prov1 = J.cod_prov');



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

if op.ItemIndex = 0 then
  begin
     with fInventario_Master.ibqrarticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select upper(A.ARTICULO), b.nom_indicacion, i.signo, c. sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
        sql.Add('left join producto_indicaciones b on a.indicacion = b.id');
        sql.Add('left join productos_sustancia c On a.sustancia =c.id');
        sql.Add('left join productos_marca d On a.idmarca = d.id');
        sql.Add('left join man_provedores e On a.cod_prov1 = e.cod_prov');
        sql.Add('Left Join productos_clasificacion f on a.clasificacion = f.id');
        sql.Add('Left join mtcategoria g On a.cod_cat = g.codcat');
        sql.Add('Left join producto_subcategoria h on a.subcategoria = h.id');
        sql.Add('left join tb_moneda i On a.idmoneda = i.id');
        sql.Add('left join man_provedores J On a.cod_prov1 = J.cod_prov');

        sql.Add('where a.cod_art =:codigo');
        Params[0].Value := StrtoInt(edtBuscar.Text);
        open;
      end;
  end;


  if op.ItemIndex = 1 then
  begin
     with fInventario_Master.ibqrarticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select upper(A.ARTICULO), b.nom_indicacion, i.signo, c. sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
        sql.Add('left join producto_indicaciones b on a.indicacion = b.id');
        sql.Add('left join productos_sustancia c On a.sustancia =c.id');
        sql.Add('left join productos_marca d On a.idmarca = d.id');
        sql.Add('left join man_provedores e On a.cod_prov1 = e.cod_prov');
        sql.Add('Left Join productos_clasificacion f on a.clasificacion = f.id');
        sql.Add('Left join mtcategoria g On a.cod_cat = g.codcat');
        sql.Add('Left join producto_subcategoria h on a.subcategoria = h.id');
        sql.Add('left join tb_moneda i On a.idmoneda = i.id');
        sql.Add('left join man_provedores J On a.cod_prov1 = J.cod_prov');

        sql.Add('where a.codigobarra =:codigo');
        Params[0].Value := edtBuscar.Text;
        open;
      end;
  end;

   close;

end;

procedure TfBuscarArticulos.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
