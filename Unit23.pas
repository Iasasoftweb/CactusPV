unit Unit23;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  ZAbstractRODataset, ZDataset, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, cxDBEdit, cxMaskEdit,
  cxSpinEdit, cxDropDownEdit, RxDBComb, cxCurrencyEdit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, AdvSmoothLedLabel,
  cxDBLabel, acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmCombo = class(TForm)
    opbuscar: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DsqArticulos: TDataSource;
    NumeroCombo: TZReadOnlyQuery;
    NumeroComboMAX: TIntegerField;
    opmaster: TcxGroupBox;
    numeromaster: TZReadOnlyQuery;
    DsCombo: TDataSource;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosCOSTO: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    IbqRArticulosCODIGOTXT: TWideStringField;
    lCODIGO: TLabel;
    LProducto: TLabel;
    numeromasterGEN_ID: TLargeintField;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel11: TPanel;
    Panel20: TPanel;
    cxButton1: TSpeedButton;
    Panel10: TPanel;
    Btguardar: TSpeedButton;
    Panel7: TPanel;
    BtCancelar: TSpeedButton;
    Panel8: TPanel;
    Edit2: TEdit;
    Label6: TLabel;
    cxButton14: TcxButton;
    Label4: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label5: TLabel;
    Label9: TLabel;
    cant: TcxTextEdit;
    Panel1: TPanel;
    cxButton2: TSpeedButton;
    cxTextEdit3: TcxTextEdit;
    Label7: TLabel;
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton14Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCombo: TFrmCombo;

implementation

{$R *.dfm}

uses Unit2, unit19, tools, Unit20, Unit48, UInicio;

procedure TFrmCombo.BtnCanelarClick(Sender: TObject);
begin

datos.MaCombo.Cancel;
datos.MaCombo.CancelUpdates;
datos.ZCombo.Cancel;
datos.ZCombo.CancelUpdates;



datos.Data.Rollback;

datos.ZCombo.Close;
datos.MaCombo.Close;

// cxButton4.Enabled := false;
 cxButton1.Enabled := true;
 btguardar.Enabled := false;
 btcancelar.Enabled := true;
 opmaster.Enabled := false;
 cxGroupBox2.Enabled := false;
// edit1.Clear;
 close;
end;

procedure TFrmCombo.btnGuardarClick(Sender: TObject);
begin

      datos.ZCombo.ApplyUpdates;


      datos.Data.Commit;

      datos.ZCombo.Close;

      close;

end;

procedure TFrmCombo.cxButton1Click(Sender: TObject);
var
cero : string;
begin
datos.MaCombo.Open;
datos.MaCombo.Insert;

//EDIT1.Text := 'NUEVO';

with numeromaster do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(arti_gen, 1) from RDB$DATABASE');
     open;
  end;



  datos.MaComboCOMBOMASTER.Value := numeromastergen_id.Value;


    if datos.MaComboCOMBOMASTER.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.MaComboCOMBOMASTER.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.MaComboCOMBOMASTER.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.MaComboCOMBOMASTER.Value >= 1000 then
        begin
           cero := '';
     end;

     opmaster.Enabled := true;

     datos.MaComboCODIGOTXT.Value := 'C'+cero+intTostr(datos.MaComboCOMBOMASTER.Value);
     //datos.MaComboCODTIENDA.Value := Asignatienda;
     datos.MaComboESTADO.Value := 1;
     //cxButton4.Enabled := true;
     cxButton1.Enabled := false;
  //   cxDBTextEdit1.SetFocus;


end;

procedure TFrmCombo.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmCombo.cxButton14Click(Sender: TObject);
begin
if FrmMAntArticulos = nil then
 begin
   FrmMAntArticulos := tFrmMAntArticulos.Create(self);
   FrmMAntArticulos.edit2.Text := 'OFERTA';
   FrmMAntArticulos.ShowModal;
 end;
end;

procedure TFrmCombo.cxButton4Click(Sender: TObject);
begin


cxGroupBox2.Enabled := true;
opbuscar.Visible := true;
ibqrarticulos.Open;
cxTextEdit1.SetFocus;

end;

procedure TFrmCombo.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

 cxTextEdit2.Text       := IntToStr(Datos.ZComboCOD_ART.Value);
 cxTextEdit3.Text       := Datos.ZComboARTICULO.Value;
 
 //cxCurrencyEdit3.Value  := datos.ZComboPRECIO3.Value;
 cant.Text              := FloatTostr(datos.ZComboCANTIDAD.Value);

 datos.ZCombo.Delete;
 DATOS.ZCombo.ApplyUpdates;
 cxButton2.Enabled := true;
end;

procedure TFrmCombo.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

cxTextEdit2.text := IntTOStr(IbqRarticuloscod_art.Value);
cxTextEdit3.text := IbqRarticulosArticulo.Value;


//cxCurrencyEdit3.Value   := 0.00;
CANT.Text := '1';

cxButton2.Enabled := true;
opbuscar.Visible := false;
{}
end;

procedure TFrmCombo.cxTextEdit1PropertiesChange(Sender: TObject);
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where articulo like '+#39+'%'+cxTextEdit1.Text+'%'+#39);
    sql.Add('and politica =:oo');
    params[0].Value := 'Unitario';
    open;
  end;
end;

procedure TFrmCombo.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var
   Cadenaleida : string;
begin


if key = VK_RETURN then
  begin
  Cadenaleida := edit2.Text;
  StringReplace ( CadenaLeida, chr(39), '-', [ rfReplaceAll]);
    with ibqrarticulos do
          begin
            close;
            sql.Clear;
            sql.Add('select a.moneda,a.ubicacion, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra,sum(b.entrada - b.salida) Existencia');
            sql.Add('from mtartuculos a');
            sql.Add('left join minventario b On a.cod_art = b.cod_art');
            sql.Add('where a.CODIGOBARRA CONTAINING :OPP');
            sql.Add('and a.politica =''Unitario''');
            sql.Add('and a.condicion =''Productos''');
            sql.Add('and a.color =''Activo''');

            sql.Add('group by a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra, a.ubicacion');

            Params[0].Value :=StringReplace ( CadenaLeida, chr(39), '-', [ rfReplaceAll]);
            open;
          end;

              cxTextEdit2.Text := ibqrArticuloscodigoTXT.Value;
             cxTextEdit3.Text := ibqrArticulosarticulo.Value;

         Cant.SetFocus;

         edit2.Clear;
  end;

end;

procedure TFrmCombo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FrmCombo := nil;
    Action := caFree;
end;

procedure TFrmCombo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    opbuscar.Visible := false;
  end;
end;

procedure TFrmCombo.FormShow(Sender: TObject);
begin
//ibqrarticulos.Open;
end;

procedure TFrmCombo.cxButton2Click(Sender: TObject);
begin
with numeromaster do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_MANTCOMBO_ID, 1) from RDB$DATABASE');
     open;
  end;




 datos.ZCombo.Open;
 datos.ZCombo.Insert;
 datos.ZComboCOD_MANCOMBO.Value := numeromasterGEN_ID.Value;
 DATOS.ZComboDESC.Value := cxTextEdit3.Text;
 datos.ZComboCOD_ART.Value := StrToInt(cxTextEdit2.Text);
 datos.ZComboCANTIDAD.Value := StrToFloat(cant.Text);
 datos.ZCombo.Refresh;

 cxTextEdit2.Clear;
 cxTextEdit3.Clear;

// cxCurrencyEdit3.Clear;
 CANT.Clear;
 Btguardar.Enabled := true;
 BtCancelar.Enabled := true;

 opbuscar.Visible := false;
end;

end.
