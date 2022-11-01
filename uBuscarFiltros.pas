unit uBuscarFiltros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFbuscarFiltro = class(TForm)
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
    Label1: TLabel;
    edtBuscar: TEdit;
    Label5: TLabel;
    edtCodigo: TEdit;
    Label6: TLabel;
    edtCodigoBarra: TEdit;
    Label7: TLabel;
    edtCategorias: TEdit;
    Panel15: TPanel;
    SpeedButton6: TSpeedButton;
    Label8: TLabel;
    edtProveedor: TEdit;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    Panel7: TPanel;
    SpeedButton2: TSpeedButton;
    edtSustancia: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtIndicaciones: TEdit;
    Panel9: TPanel;
    SpeedButton3: TSpeedButton;
    Label11: TLabel;
    edtMarcas: TEdit;
    Panel10: TPanel;
    SpeedButton4: TSpeedButton;
    Panel11: TPanel;
    Panel12: TPanel;
    SpeedButton5: TSpeedButton;
    Panel13: TPanel;
    SpeedButton7: TSpeedButton;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure edtBuscarEnter(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoBarraEnter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure edtCodigoBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    procedure filtro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbuscarFiltro: TFbuscarFiltro;

implementation

uses
  Unit2, uInventario_Master, uBuscarSustancia, uBuscarIndicaciones,
  uBuscarMarcas, Unit57, uBuscarProveedores;

{$R *.dfm}


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





procedure TFbuscarFiltro.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFbuscarFiltro.edtBuscarChange(Sender: TObject);
var
T, ST, p1, p2, p3, p4  : string;
begin
 with fInventario_Master.ibqrarticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select upper(A.ARTICULO), b.nom_indicacion, i.signo, c.sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
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
      end;

end;

procedure TFbuscarFiltro.edtBuscarEnter(Sender: TObject);
begin

edtCodigo.Clear;
edtCodigoBarra.Clear;
end;

procedure TFbuscarFiltro.edtCodigoBarraEnter(Sender: TObject);
begin
edtBuscar.Clear;
edtCodigo.Clear;

end;

procedure TFbuscarFiltro.edtCodigoBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (edtBuscar.Text ='')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text <>'')
              and (edtCategorias.Text = '')
              and (edtProveedor.Text = '')
              and (edtSustancia.Text = '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin

  if key = VK_RETURN then  begin

    with fInventario_Master.ibqrarticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select upper(A.ARTICULO), b.nom_indicacion, i.signo, c.sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
        sql.Add('left join producto_indicaciones b on a.indicacion = b.id');
        sql.Add('left join productos_sustancia c On a.sustancia =c.id');
        sql.Add('left join productos_marca d On a.idmarca = d.id');
        sql.Add('left join man_provedores e On a.cod_prov1 = e.cod_prov');
        sql.Add('Left Join productos_clasificacion f on a.clasificacion = f.id');
        sql.Add('Left join mtcategoria g On a.cod_cat = g.codcat');
        sql.Add('Left join producto_subcategoria h on a.subcategoria = h.id');
        sql.Add('left join tb_moneda i On a.idmoneda = i.id');
        sql.Add('left join man_provedores J On a.cod_prov1 = J.cod_prov');
        sql.Add('where a.codigobarra =:buscar');
        Params[0].Value := edtCodigoBarra.Text;
        open;
      end;
      close;
  end;


            end;
end;

procedure TFbuscarFiltro.edtCodigoEnter(Sender: TObject);
begin

edtbuscar.Clear;
edtCodigoBarra.Clear;

end;

procedure TFbuscarFiltro.filtro;
var
T, ST, p1, p2, p3, p4  : string;
begin

    with fInventario_Master.ibqrarticulos do
      begin
        close;
        sql.Clear;
        sql.Add('select upper(A.ARTICULO), b.nom_indicacion, i.signo, c.sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
        sql.Add('left join producto_indicaciones b on a.indicacion = b.id');
        sql.Add('left join productos_sustancia c On a.sustancia =c.id');
        sql.Add('left join productos_marca d On a.idmarca = d.id');
        sql.Add('left join man_provedores e On a.cod_prov1 = e.cod_prov');
        sql.Add('Left Join productos_clasificacion f on a.clasificacion = f.id');
        sql.Add('Left join mtcategoria g On a.cod_cat = g.codcat');
        sql.Add('Left join producto_subcategoria h on a.subcategoria = h.id');
        sql.Add('left join tb_moneda i On a.idmoneda = i.id');
        sql.Add('left join man_provedores J On a.cod_prov1 = J.cod_prov');


        if (edtBuscar.Text <>'')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text = '')
              and (edtProveedor.Text = '')
              and (edtSustancia.Text = '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin
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

              ///  params[0].Value := edtBuscar.Text;
            end;



             if (edtBuscar.Text ='')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text <> '')
              and (edtProveedor.Text = '')
              and (edtSustancia.Text = '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin
                sql.Add('where g.cat CONTAINING :buscar');
                params[0].Value := edtCategorias.Text;
            end;

              if (edtBuscar.Text ='')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text = '')
              and (edtProveedor.Text <> '')
              and (edtSustancia.Text = '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin
                sql.Add('where e.nombre_pro CONTAINING :buscar');
                params[0].Value := edtProveedor.Text;
            end;


             if (edtBuscar.Text ='')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text = '')
              and (edtProveedor.Text = '')
              and (edtSustancia.Text <> '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin
                sql.Add('where c.sustancia CONTAINING :buscar');
                params[0].Value := edtSustancia.Text;
            end;


             if (edtBuscar.Text ='')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text = '')
              and (edtProveedor.Text = '')
              and (edtSustancia.Text = '')
              and (edtIndicaciones.Text <> '')
              and (edtMarcas.Text = '') then
            begin
                sql.Add('where b.nom_indicacion CONTAINING :buscar');
                params[0].Value := edtIndicaciones.Text;
            end;

             if (edtBuscar.Text ='')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text = '')
              and (edtProveedor.Text = '')
              and (edtSustancia.Text = '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text <> '') then
            begin
                sql.Add('where d.marcas CONTAINING :buscar');
                params[0].Value := edtMarcas.Text;
            end;

            if (edtBuscar.Text <>'')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text <> '')
              and (edtProveedor.Text = '')
              and (edtSustancia.Text = '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin
                 sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
                sql.Add('and g.cat CONTAINING :buscar2');
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
                params[4].Value := edtCategorias.Text;



            end;


            if (edtBuscar.Text <>'')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text <> '')
              and (edtProveedor.Text <> '')
              and (edtSustancia.Text = '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin
                sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
                sql.Add('and g.cat CONTAINING :buscar2');
                sql.Add('and e.nombre_pro CONTAINING :buscar3');

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
                params[4].Value := edtCategorias.Text;
                params[5].Value := edtProveedor.Text
            end;


            if (edtBuscar.Text <>'')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text <> '')
              and (edtProveedor.Text <> '')
              and (edtSustancia.Text <> '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin
                sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
                sql.Add('and g.cat CONTAINING :buscar2');
                sql.Add('and e.nombre_pro CONTAINING :buscar3');
                sql.Add('and c.sustancia CONTAINING :buscar4');

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

                params[4].Value := edtCategorias.Text;
                params[5].Value := edtProveedor.Text;
                params[6].Value := edtSustancia.Text
            end;



            if (edtBuscar.Text <>'')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text <> '')
              and (edtProveedor.Text <> '')
              and (edtSustancia.Text <> '')
              and (edtIndicaciones.Text <> '')
              and (edtMarcas.Text = '') then
            begin
                sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
                sql.Add('and g.cat CONTAINING :buscar2');
                sql.Add('and e.nombre_pro CONTAINING :buscar3');
                sql.Add('and c.sustancia CONTAINING :buscar4');
                sql.Add('and  b.nom_indicacion CONTAINING :buscar5');

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

                params[4].Value := edtCategorias.Text;
                params[5].Value := edtProveedor.Text;
                params[6].Value := edtSustancia.Text;
                params[7].Value := edtSustancia.Text;
            end;


            if (edtBuscar.Text <>'')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text <> '')
              and (edtProveedor.Text <> '')
              and (edtSustancia.Text <> '')
              and (edtIndicaciones.Text <> '')
              and (edtMarcas.Text <> '') then
            begin
                sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
                sql.Add('and g.cat CONTAINING :buscar2');
                sql.Add('and e.nombre_pro CONTAINING :buscar3');
                sql.Add('and c.sustancia CONTAINING :buscar4');
                sql.Add('and  b.nom_indicacion CONTAINING :buscar5');
                sql.Add('and  d.marcas CONTAINING :buscar6');


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




                params[4].Value := edtCategorias.Text;
                params[5].Value := edtProveedor.Text;
                params[6].Value := edtSustancia.Text;
                params[7].Value := edtIndicaciones.Text;
                params[8].Value := edtMarcas.Text;
            end;




             if (edtBuscar.Text <>'')
              and (edtCodigo.Text ='')
              and (edtCodigoBarra.Text ='')
              and (edtCategorias.Text <> '')
              and (edtProveedor.Text <> '')
              and (edtSustancia.Text <> '')
              and (edtIndicaciones.Text = '')
              and (edtMarcas.Text = '') then
            begin
                sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
                sql.Add('and g.cat CONTAINING :buscar2');
                sql.Add('and e.nombre_pro CONTAINING :buscar3');
                sql.Add('and c.sustancia CONTAINING :buscar4');


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


                params[4].Value := edtCategorias.Text;
                params[5].Value := edtProveedor.Text;
                params[5].Value := edtProveedor.Text
            end;

          if (edtBuscar.Text ='')
                and (edtCodigo.Text<>'')
                and (edtCodigoBarra.Text ='')
                and (edtCategorias.Text = '')
                and (edtProveedor.Text = '')
                and (edtSustancia.Text = '')
                and (edtIndicaciones.Text = '')
                and (edtMarcas.Text = '') then
            begin
                sql.Add('where a.cod_Art = :buscar');
                params[0].Value := StrToInt(edtCodigo.Text);
            end;

            if (edtBuscar.Text ='')
                  and (edtCodigo.Text='')
                  and (edtCodigoBarra.Text <>'')
                  and (edtCategorias.Text = '')
                  and (edtProveedor.Text = '')
                  and (edtSustancia.Text = '')
                  and (edtIndicaciones.Text = '')
                  and (edtMarcas.Text = '') then
            begin
                sql.Add('where a.codigobarra = :buscar');
                params[0].Value := edtcodigobarra.Text;

            end;





        open;
      end;


end;

procedure TFbuscarFiltro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FbuscarFiltro := nil;
Action := caFree;

end;

procedure TFbuscarFiltro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    close;
  end;
end;

procedure TFbuscarFiltro.FormShow(Sender: TObject);
begin
edtCodigo.Clear;
edtCodigoBarra.Clear;
edtCategorias.clear;
edtProveedor.Clear;
edtSustancia.clear;
edtIndicaciones.Clear;
edtMarcas.Clear;
end;

procedure TFbuscarFiltro.SpeedButton1Click(Sender: TObject);
begin
if fBuscarProveedores = NIL then
  begin
    fBuscarProveedores := TfBuscarProveedores.Create(SELF);
    fBuscarProveedores.Edit1.Text :='3';
    fBuscarProveedores.ShowModal;
  end;
end;

procedure TFbuscarFiltro.SpeedButton2Click(Sender: TObject);
begin
if fbuscarsustancia = nil then
  begin
    fBuscarSustancia := Tfbuscarsustancia.Create(self);
    fBuscarSustancia.Edit1.text := '2';
    fBuscarSustancia.qConsulta1.Open;
    fBuscarSustancia.ShowModal;
  end;

end;

procedure TFbuscarFiltro.SpeedButton3Click(Sender: TObject);
begin
if FBuscarIndicaciones = nil then
  begin
    FBuscarIndicaciones := TFBuscarIndicaciones.Create(self);
    FBuscarIndicaciones.edit1.text := '2';
    FBuscarIndicaciones.qConsulta1.Open;
    FBuscarIndicaciones.ShowModal;
  end;
end;

procedure TFbuscarFiltro.SpeedButton4Click(Sender: TObject);
begin
if fBuscarmarcas = nil then
  begin
    fBuscarmarcas := tfBuscarmarcas.create(self);
    fBuscarMarcas.Edit1.Text := '2';
    fBuscarmarcas.qConsulta1.Open;
    fBuscarmarcas.showmodal;
  end;
end;

procedure TFbuscarFiltro.SpeedButton5Click(Sender: TObject);
begin

if  (edtBuscar.Text ='')
                and (edtCodigo.Text = '')
                and (edtCodigoBarra.Text ='')
                and (edtCategorias.Text = '')
                and (edtProveedor.Text = '')
                and (edtSustancia.Text = '')
                and (edtIndicaciones.Text = '')
                and (edtMarcas.Text = '') then begin

                end else begin
                   filtro;
                end;


                close;

  end;


procedure TFbuscarFiltro.SpeedButton6Click(Sender: TObject);
begin
if FrmBuscarCategoria = nil then
      begin
         FrmBuscarCategoria := tFrmBuscarCategoria.Create(self);
         datos.FbCategorias.Open;
         FrmBuscarCategoria.edit1.text := '10';
        // fBuscarProveedores.qConsulta1.open;
         FrmBuscarCategoria.showmodal;
      end;
end;


end.
