unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Mask, DBCtrls,
  ZAbstractRODataset, ZDataset, StdCtrls, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxPCdxBarPopupMenu, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxContainer, acPNG, Vcl.Buttons, cxGroupBox, cxRadioGroup;

type
  TFrmCunsulta_Precio = class(TForm)
    panel: TcxTabControl;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DsARticulos: TDataSource;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
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
    IbqRArticulosCOMISION: TFloatField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    IbqRArticulosPRECIO_C: TFloatField;
    IbqRArticulosUNIDADVENTA: TWideStringField;
    IbqRArticulosSERIE: TWideStringField;
    IbqRArticulosLOTE: TWideStringField;
    IbqRArticulosPERMITIRDESC: TWideStringField;
    IbqRArticulosIDIMPUESTO: TIntegerField;
    IbqRArticulosDESCPERMITIDO: TIntegerField;
    optipo: TcxRadioGroup;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    Panel17: TPanel;
    Label1: TLabel;
    Panel18: TPanel;
    edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure optipoClick(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCunsulta_Precio: TFrmCunsulta_Precio;

implementation

uses
  Unit53, Unit59;

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
     else Result:=Copy(Cadena,1,Posicion-Length(Separador));
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


procedure TFrmCunsulta_Precio.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmCunsulta_Precio.Edit1Change(Sender: TObject);
VAR
CODORIGINAL : string;
BuscarSerie : String;
Cantv :String;
n : Integer;
T, ST, p1, p2, p3, p4  : string;
begin
FrmNFact_normal.txtMayor.Text := 'NO';


              if optipo.ItemIndex = 0 then
                begin

              CODORIGINAL := edit1.Text;

              with ibqrarticulos do
                            begin
                              close;
                              sql.Clear;
                              sql.Add('select a.unidad,a.precio_a,a.codigobarra, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                              sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                              sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                              sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
                           //   sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
                           //   sql.Add('OR a.CONDICION_EMPENO IS NULL');
                             // sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
                              sql.Add('group by a.unidad,a.precio_a, a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                              sql.add('a.codigotxt,a.itbis,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.codigobarra, a.comision, a.costo_pr, a.beneficios,');
                              sql.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');

                               ST:= edit1.Text;
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

               if optipo.ItemIndex = 1 then
                      begin
                    CODORIGINAL := edit1.Text;
                              with ibqrarticulos do
                                            begin
                                              close;
                                              sql.Clear;
                                              sql.Add('select a.unidad,a.precio_a, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                                              sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                                              sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                                              sql.Add('where a.referencia like '+#39+'%'+codoriginal+'%'+#39);
                                          //    sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
                                          //    sql.Add('OR a.CONDICION_EMPENO IS NULL');

                                              sql.Add('group by a.unidad,a.precio_a, precio_c, a.precio_b,a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                                              sql.add('a.codigotxt,a.itbis,a.taza_compra,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.comision, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
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
                                          sql.Add('select a.unidad,a.precio_a, precio_c, a.comision,a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
                                          sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                                          sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                                          sql.Add('where a.codigobarra like '+#39+'%'+edit1.Text+'%'+#39);
                                       //   sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
                                       //   sql.Add('OR a.CONDICION_EMPENO IS NULL');
                                          sql.Add('group by a.unidad,a.precio_a, precio_c, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
                                          sql.add('a.codigotxt,a.itbis,a.taza_compra,a.comision,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
                                          open;
                                        end;

                            end;







end;

procedure TFrmCunsulta_Precio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmCunsulta_Precio := nil;
Action := caFree;
end;

procedure TFrmCunsulta_Precio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then begin
close;
end;

end;

procedure TFrmCunsulta_Precio.FormShow(Sender: TObject);
begin
   with IbqRArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select FIRST 25 a.unidad, precio_c, a.costo_pr, a.codigobarra,a.comision,a.referencia, a.ubicacion, a.beneficios,a.precio_a, a.precio_b, a.precio_d, a.codigobarra, a.obs,');
    sql.Add('a.cod_art,upper(a.articulo) articulo, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.TIENECOMPACTIBILIDAD,');
    sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
    sql.Add('where a.condicion =:opp');

    sql.Add('group by a.unidad,a.precio_a, precio_c, a.comision,a.precio_b, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,');
    sql.Add('a.marca,a.codigotxt,a.itbis,a.codigobarra, a.taza_compra,a.costo_pr, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3,  a.referencia,a.ubicacion, a.obs');
    params[0].Value := 'Productos';
    open;
  end;
  Edit1.SetFocus;
end;

procedure TFrmCunsulta_Precio.optipoClick(Sender: TObject);
begin
if optipo.ItemIndex = 0  then
   begin
     label1.Caption := 'Nombre del Producto';
     edit1.TextHint := '';
     edit1.SetFocus;
   end;
if optipo.ItemIndex = 1  then
   begin
     label1.Caption := 'Referencias';
      edit1.TextHint := '';
     edit1.SetFocus;
   end;


   if optipo.ItemIndex = 2  then
   begin
     label1.Caption := 'Codigo de Barra';
      edit1.TextHint := '';
     edit1.SetFocus;
   end;
end;

end.
