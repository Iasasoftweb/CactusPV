unit Unit127;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZSequence, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Data.DB,
  ZAbstractRODataset, ZDataset, cxControls, cxContainer, cxEdit, cxGroupBox,
  dxSkinSharp, dxSkinTheBezier;

type
  TFrmUpSecuencia = class(TForm)
    UpG: TZReadOnlyQuery;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    GArticulos: TEdit;
    Label2: TLabel;
    GProvArti: TEdit;
    Label3: TLabel;
    Gparticionado: TEdit;
    cxGroupBox2: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Gfactura: TEdit;
    GDetalle: TEdit;
    cxGroupBox3: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GNCFID: TEdit;
    GNCF_C: TEdit;
    GNCF_FISCAL: TEdit;
    Label9: TLabel;
    GNCF_GOB: TEdit;
    Label10: TLabel;
    GNCF_NC: TEdit;
    Label11: TLabel;
    GTurnos: TEdit;
    cxGroupBox4: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    GMAjuste: TEdit;
    GDAjuste: TEdit;
    GMdescarga: TEdit;
    Label15: TLabel;
    GInventario: TEdit;
    cxButton2: TcxButton;
    Ggastos: TEdit;
    Label16: TLabel;
    gen: TZReadOnlyQuery;
    genGEN_ID: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    function GetIDFromGenerator(const AGen_Name: string;
      const AIncrease: Boolean): Integer;

    { Private declarations }
  public

    { Public declarations }
  end;


  var
    FrmUpSecuencia :  TFrmUpSecuencia;

implementation

{$R *.dfm}

uses Unit2, UInicio;



//function TFrmUpSecuencia.GetIDFromGenerator(const AGen_Name: string; const AIncrease: Boolean = True): Integer;
//begin
//  with upg do
//  begin
//    if Active then
//      Close;
//    SQL.Clear;
//    if AIncrease then
//      SQL.Add('select gen_id(' + AGen_Name + ', 1) from rdb$database')
//    else
//      SQL.Add('select gen_id(' + AGen_Name + ', 0) from rdb$database');
//    Open;
//    First;
//    Result := FieldByName('GEN_ID').AsInteger;
//  end;
//end;

procedure TFrmUpSecuencia.cxButton1Click(Sender: TObject);
begin


//
//with gen do
//  begin
//     close;
//     sql.Clear;
//     sql.Add('select gen_id(numero_factura, 0) from RDB$DATABASE');
//     open;
//  end;

 // ShowMessage(''+genGEN_ID.Text);
with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator numero_factura to 0');
    ExecSQL;
  end;


//
//
//with gen do
//  begin
//     close;
//     sql.Clear;
//     sql.Add('select gen_id(numero_factura, 0) from RDB$DATABASE');
//     open;
//  end;

  //ShowMessage(''+genGEN_ID.Text);

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator G_NOFACT to 0');
    ExecSQL;
  end;



  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator ARTI_GEN to 0');

    ExecSQL;
  end;

   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_PROB_ARTI_ID to 0');
  //  params[0].Value := StrToInt(GProvArti.Text);
    ExecSQL;
  end;

   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_PARTICIONADO_ID to 0');
   // params[0].Value := StrToInt(Gparticionado.Text);
    ExecSQL;
  end;

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_DETAILFACT_ID to 0');
   // params[0].Value := StrToInt(GDetalle.Text);
    ExecSQL;
  end;

 with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_TURNOS_ID to 0');
   // params[0].Value := StrToInt(GTurnos.Text);
    ExecSQL;
  end;

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_MASTER_AJUSTE_ID to 0');
   // params[0].Value := StrToInt(GMAjuste.Text);
    ExecSQL;
  end;

with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_DETALLE_AJUSTE_ID to 0');
   // params[0].Value := StrToInt(GDAjuste.Text);
    ExecSQL;
  end;

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_MDESCARGAR_ID to 0');
   // params[0].Value := StrToInt(GMdescarga.Text);
    ExecSQL;
  end;

 with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_MINVENTARIO_ID to 0');
   // params[0].Value := StrToInt(GInventario.Text);
    ExecSQL;
  end;

with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_ID to 0');
  //  params[0].Value := StrToInt(GNCFID.Text);
    ExecSQL;
  end;

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_USO to 0');
   // params[0].Value := StrToInt(GNCF_C.Text);
    ExecSQL;
  end;


   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_USO_CF to 0');
   // params[0].Value := StrToInt(GNCF_FISCAL.Text);
    ExecSQL;
  end;

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_GOB to 0');
   // params[0].Value := StrToInt(GNCF_GOB.Text);
    ExecSQL;
  end;

   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_NC to 0');
  //  params[0].Value := StrToInt(GNCF_NC.Text);
    ExecSQL;
  end;

   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_CONTROL_GASTOS_ID to 0');
  //  params[0].Value := StrToInt(GNCF_NC.Text);
    ExecSQL;
  end;

   datos.Data.Commit;
   ShowMessage(' Proceso terminaro sastifactoriamente ');
end;

procedure TFrmUpSecuencia.cxButton2Click(Sender: TObject);
var
valor : integer;
begin
if Gfactura.Text <>'' then
   begin

with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator NUMERO_FACTURA to '+Gfactura.Text);
   // params[0].Value := StrToInt(Gfactura.Text);
    ExecSQL;
  end;

    end;

if GArticulos.Text <>'' then begin

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator ARTI_GEN to '+GArticulos.Text);
    //params[0].Value := StrToInt(GArticulos.Text);
    ExecSQL;
  end;
end;

if GProvArti.Text<>'' then begin

   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_PROV_ARTI_ID to '+GProvArti.Text);
   // params[0].Value := StrToInt(GProvArti.Text);
    ExecSQL;
  end;
end;

if Gparticionado.Text<>'' then begin

   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_PARTICIONADO_ID to '+Gparticionado.Text);
   // params[0].Value := StrToInt(Gparticionado.Text);
    ExecSQL;
  end;
end;

if GDetalle.Text<>'' then begin

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_DETAILFACT_ID to '+GDetalle.Text);
   // params[0].Value := StrToInt(GDetalle.Text);
    ExecSQL;
  end;
end;

if GTurnos.Text<>'' then begin

 with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_TURNOS_ID to '+GTurnos.Text);
   // params[0].Value := StrToInt(GTurnos.Text);
    ExecSQL;
  end;
end;

if GMAjuste.Text<>'' then begin

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_MASTER_AJUSTE_ID to '+GMAjuste.Text);
   // params[0].Value := StrToInt(GMAjuste.Text);
    ExecSQL;
  end;
end;

if GDAjuste.Text<>'' then begin

with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_DETALLE_AJUSTE_ID to '+GDAjuste.Text);
   // params[0].Value := StrToInt(GDAjuste.Text);
    ExecSQL;
  end;
end;

if GMdescarga.Text<>'' then begin


  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_MDESCARGAR_ID to '+GMdescarga.Text);
   // params[0].Value := StrToInt(GMdescarga.Text);
    ExecSQL;
  end;
end;

if GInventario.Text<>'' then begin

 with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_MINVENTARIO_ID to '+GInventario.Text);
   // params[0].Value := StrToInt(GInventario.Text);
    ExecSQL;
  end;
end;

if GNCFID.Text<>'' then begin


with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_ID to '+GNCFID.Text);
   // params[0].Value := StrToInt(GNCFID.Text);
    ExecSQL;
  end;
end;

if GNCF_C.Text <>'' then begin


  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_USO to '+GNCF_C.Text);
    //params[0].Value := StrToInt(GNCF_C.Text);
    ExecSQL;
  end;
end;


 if GNCF_FISCAL.Text<>'' then begin

   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_USO_CF to '+GNCF_FISCAL.Text);
    //params[0].Value := StrToInt(GNCF_FISCAL.Text);
    ExecSQL;
  end;
 end;

 if GNCF_GOB.Text<>'' then begin

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_GOB to '+GNCF_GOB.Text);
   // params[0].Value := StrToInt(GNCF_GOB.Text);
    ExecSQL;
  end;
 end;

 if GNCF_NC.Text<>'' then begin

   with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_NCF_NC to '+GNCF_NC.Text);
   // params[0].Value := StrToInt(GNCF_NC.Text);
    ExecSQL;
  end;
 end;


if Ggastos.Text<>'' then begin

  with UpG do
  begin
    Close;
    sql.Clear;
    sql.Add('set generator GEN_CONTROL_GASTOS_ID to '+Ggastos.Text);
  //  params[0].Value := StrToInt(GNCF_NC.Text);
    ExecSQL;
  end;
end;


 ShowMessage(' Proceso terminaro sastifactoriamente ');

end;

procedure TFrmUpSecuencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmUpSecuencia := nil;
Action := caFree;
end;

function TFrmUpSecuencia.GetIDFromGenerator(const AGen_Name: string;
  const AIncrease: Boolean): Integer;
begin
     with upg do
  begin
    if Active then
      Close;
    SQL.Clear;
    if AIncrease then
      SQL.Add('select gen_id(' + AGen_Name + ', 1) from rdb$database')
    else
      SQL.Add('select gen_id(' + AGen_Name + ', 0) from rdb$database');
    Open;
    First;
    Result := FieldByName('GEN_ID').AsInteger;
  end;
end;

end.
