unit Unit104;

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
  dxSkinXmas2008Blue, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmArticulosBuscar = class(TForm)
    cxRadioGroup1: TcxRadioGroup;
    optipo: TcxRadioGroup;
    Edit1: TEdit;
    DsqArticulos: TDataSource;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosEXISTENCIA: TFloatField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosUNIDAD: TWideStringField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosBENEFICIOS: TFloatField;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosOBS: TIntegerField;
    s: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1MODELO: TcxGridDBColumn;
    cxGrid2DBTableView1MARCA: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    procedure optipoClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArticulosBuscar: TFrmArticulosBuscar;

implementation

{$R *.dfm}

uses Unit2, Unit59;

procedure TFrmArticulosBuscar.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
 var
  ARec: TRect;
  NADA : string;
  LEN : Integer;
  val, ValEstado, IsNulo, pRESTAMOS, SAN, ALQUILER, COMPRAVENTA: Boolean;
begin
// 	if AViewInfo.Item.ID = 0 then

   		ARec := AViewInfo.Bounds;



         ValEstado := AViewInfo.GridRecord.Values[7] = 2;


         if  ValEstado then
         	begin
      	 		ACanvas.Canvas.Font.Style := [fsBold];
        			ACanvas.Canvas.Font.Color := clGreen;
              end;



end;
function GetToken(Cadena:string; Separador:char; Token:integer):string; overload
  {
  Cadena     es la string en la que buscar el token
  Separador  es la string que separa cada token
  Token      es el número de token que buscamos

  Cadena     is the string in that look for the token
  Separador  is the token separator
  Token      is the desired token number
  }
  var
    Posicion:integer;
  begin
     while Token > 1 do begin
       Delete(Cadena,1,Pos(Separador,Cadena));
       Dec(Token);
     end;
     Posicion:=Pos(Separador,Cadena);
     if Posicion=0
     then result:=cadena
     else Result:=Copy(Cadena,1,Posicion-Length(Separador));
  end;

  function GetToken(Cadena, Separador: String; Token: Integer): String; overload
  var
    Posicion: Integer;
  begin
     while Token > 1 do begin
       Delete(Cadena, 1, Pos(Separador,Cadena)+Length(Separador)-1);
       Dec(Token);
     end;
     Posicion:= Pos(Separador, Cadena);
     if Posicion = 0
     then  Result:= Cadena
     else  Result:= Copy(Cadena, 1, Posicion-1);
  end;

  function GetTokenCount(Cadena:string; Separador:char):integer; overload;
  var
     Posicion:integer;
  begin
    Posicion:=Pos(Separador,Cadena);
    Result:=1;

    if Cadena <> '' then begin
      if Posicion <> 0 then begin
        while Posicion <> 0 do
        begin
          Delete(Cadena,1,Posicion);
          Posicion:=Pos(Separador,Cadena);
          Inc (Result);
        end;
      end;
    end else Result:=0;
  end;

  function GetTokenCount(Cadena, Separador: String): Integer; overload;
  var
     Posicion: Integer;
  begin
    if Cadena <> '' then begin
      Posicion:= Pos(Separador, Cadena);
      Result:= 1;
      while Posicion <> 0 do begin
        Inc(Result);
        Delete(Cadena, 1, Posicion+Length(Separador)-1);
        Posicion:= Pos(Separador, Cadena);
      end;
    end else
      Result:=0;
  end;

procedure TFrmArticulosBuscar.cxGrid2DBTableView1DblClick(Sender: TObject);
var
SeparadaPorComas :string;
   n                :integer;
   CANTV : STRING;
   CODIGOV : STRING;
   codoriginal : string;
   cantoriginal :string;
begin
SeparadaPorComas := FrmNFact_normal.BARRA.Text;


//
   for n:=1 to GetTokenCount(SeparadaPorComas,'+') do
     begin
      if n=1 then
        begin
          cantv := GetToken(SeparadaPorComas,'+',n);
        end;

         if n=2 then
        begin
          codigov := GetToken(SeparadaPorComas,'+',n);
        end;

     end;

   if codigov ='' then
     begin
         codoriginal := cantv;
         cantoriginal := '1';
     end;

     if codigov <>'' then
     begin
         codoriginal := codigov;
         cantoriginal := cantv;
     end;

    if cantv ='' then
       begin
           cantoriginal := '1';
       end;



                                             FrmNFact_normal.edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
                                             FrmNFact_normal.edit11.Text := '1.00';

                                             FrmNFact_normal.t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             FrmNFact_normal.t2.Text     := ibqrArticulosarticulo.Value;

                                             FrmNFact_normal.edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

                                                 if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 1' then
                                                 BEGIN
                                                  FrmNFact_normal.t4.value    := ibqrArticulosprecio_A.value;
                                                 END;


                                              if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 2' then
                                                 BEGIN
                                                  FrmNFact_normal.t4.value    := ibqrArticulosprecio_B.value;
                                                 END;

                                                  if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 3' then
                                                 BEGIN
                                                  FrmNFact_normal.t4.value    := ibqrArticulosprecio_D.value;
                                                 END;
//
                                            FrmNFact_normal.lunidad.Text := ibqrarticulosunidad.Value;
                                            FrmNFact_normal.t3.Text := cantoriginal;

                                              FrmNFact_normal.linea.Text := 'ART';


                                            if IbqRArticulosPOLITICA.value = 'Unitario' then
                                            begin
                                              FrmNFact_normal.topcion.Text := 'UNI';
                                            end;

                                            if IbqRArticulosPOLITICA.value = 'servicio' then
                                            begin
                                              FrmNFact_normal.topcion.Text := 'SER';
                                            end;



                                FrmNFact_normal.cxbutton9.Click;
                               datos.FbCategorias.CLOSE;

                               //FrmNFact_normal.buscararticulos.Visible := false;

if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
                begin
                   FrmNFact_normal.barra.SetFocus;
                   FrmNFact_normal.BARRA.Clear;
                  // FrmNFact_normal.edit19.Clear;
                end else begin
                            FrmNFact_normal.barra1.clear;
                            FrmNFact_normal.BARRA1.SetFocus;
                    ///       FrmNFact_normal.edit19.Clear;
                         end;
           IbqRArticulos.Close;

end;

procedure TFrmArticulosBuscar.Edit1Change(Sender: TObject);
VAR
CODORIGINAL : string;
BuscarSerie : String;
Cantv :String;
n : Integer;
T : string;
begin
if optipo.ItemIndex = 0 then
  begin

CODORIGINAL := edit1.Text;
with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                open;
              end;
  end;

 if optipo.ItemIndex = 1 then
  begin
CODORIGINAL := edit1.Text;
with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                sql.Add('where a.referencia like '+#39+'%'+codoriginal+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                open;
              end;

  end;

 if optipo.ItemIndex = 2 then
  begin
CODORIGINAL := edit1.Text;
with ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join minventario b On a.cod_art = b.cod_art');
                sql.Add('where a.cod_art like '+#39+'%'+codoriginal+'%'+#39);
                sql.Add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                open;
              end;

  end;

end;

procedure TFrmArticulosBuscar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmArticulosBuscar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
     begin
       close;
     end;
end;

procedure TFrmArticulosBuscar.optipoClick(Sender: TObject);
begin
if optipo.ItemIndex = 0 then
  begin
    edit1.SetFocus;
  end;
  if optipo.ItemIndex = 1 then
  begin
    edit1.SetFocus;
  end;
  if optipo.ItemIndex = 2 then
  begin
    edit1.SetFocus;
  end;
end;

end.
