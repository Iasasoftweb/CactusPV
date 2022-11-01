unit Unit118;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  acPNG, Vcl.Buttons;

type
  TFrmBuscarInstalador = class(TForm)
    Tecnicos: TZReadOnlyQuery;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    DsTecnico: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1COD_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Image1: TImage;
    Edit2: TEdit;
    TecnicosCOD_EMP1: TIntegerField;
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
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edit1: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscarInstalador: TFrmBuscarInstalador;

implementation

{$R *.dfm}

uses Unit2, Unit120, Unit96, Unit125, UcajerroAnterior, Unit81, Unit77;

procedure TFrmBuscarInstalador.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmBuscarInstalador.cxGrid1DBTableView1DblClick(Sender: TObject);
begin


if edit2.Text ='LAVADERO' then
  begin
     datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factcodven.Value := TecnicosCOD_EMP1.value;
    datos.FbqMaster_FactNOMBRES_EMP.Value := TecnicosNOMBRES_EMP.Value;
   // datos.FbqMaster_Fact.ApplyUpdates;
        Tecnicos.Close;

  end;
if edit2.Text = 'SERV' then BEGIN

     with FrmServicioInstalador.Tecnicos do
       begin
         sql.Clear;
         sql.Add('select nombres_emp,cod_emp, descuento, cod_emp1 from mtempleado');
         sql.Add('where cod_emp =:opcion');
         sql.Add('and cargo = ''INSTALADOR''');
         params[0].Value := TecnicosCOD_EMP.Value;
         open;
       end;



       FrmServicioInstalador.Memo1.Text := 'DISEÑO  ('+FrmServicioInstalador.Tecnicosnombres_emp.Value+')';
   END;

if edit2.Text = 'CONS' then BEGIN
       with FrmComisionServicios.Tecnicos do
       begin
         sql.Clear;
         sql.Add('select nombres_emp,cod_emp, descuento, cod_emp1 from mtempleado');
         sql.Add('where cod_emp =:opcion');
         sql.Add('and cargo = ''INSTALADOR''');
         params[0].Value := TecnicosCOD_EMP.Value;
         open;
       end;
   end;

if edit2.Text = 'CONSVENTA' then BEGIN
       with FrmReporteVentaxVendedor.Tecnicos do
       begin
         sql.Clear;
         sql.Add('select nombres_emp,cod_emp, descuento, cod_emp1 from mtempleado');
         sql.Add('where cod_emp =:opcion');
         sql.Add('and cargo = ''INSTALADOR''');
         params[0].Value := TecnicosCOD_EMP.Value;
         open;
       end;
   end;

if edit2.Text = 'COMF' then BEGIN
       with FrmComsionFactura.Tecnicos do
       begin
         sql.Clear;
         sql.Add('select nombres_emp,cod_emp, descuento, cod_emp1 from mtempleado');
         sql.Add('where cod_emp =:opcion');
         sql.Add('and cargo = ''INSTALADOR''');
         params[0].Value := TecnicosCOD_EMP.Value;
         open;
       end;
   end;

   if edit2.Text = 'CUADRE' then BEGIN
       with FrmCajerosAnteriores.Tecnicos do
       begin
         sql.Clear;
         sql.Add('select nombres_emp,cod_emp, descuento, cod_emp1 from mtempleado');
         sql.Add('where cod_emp =:opcion');
         sql.Add('and cargo = ''INSTALADOR''');
         params[0].Value := TecnicosCOD_EMP.Value;
         open;
       end;
       end;

        if edit2.Text = 'RVENTAS' then BEGIN
       with FRProductosVendidos.Tecnicos do
       begin
         sql.Clear;
         sql.Add('select nombres_emp,cod_emp, descuento, cod_emp1 from mtempleado');
         sql.Add('where cod_emp =:opcion');
         sql.Add('and cargo = ''INSTALADOR''');
         params[0].Value := TecnicosCOD_EMP.Value;
         open;
       end;
            END;

       if edit2.Text = 'Touch' then
         begin
            datos.FbqMaster_Fact.Edit;
           datos.FbqMaster_Factcodven.Value := TecnicosCOD_EMP1.value;
           datos.FbqMaster_FactNOMBRES_EMP.Value := TecnicosNOMBRES_EMP.Value;
  //  datos.FbqMaster_Fact.Post;
   // datos.FbqMaster_Fact.ApplyUpdates;
          Tecnicos.Close;
      close;

         end;

       close;
end;



procedure TFrmBuscarInstalador.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_RETURN then
     begin
       cxGrid1.SetFocus;
     end;
end;

procedure TFrmBuscarInstalador.edtBuscarChange(Sender: TObject);
begin
with Tecnicos do
  begin
    close;
    sql.Clear;
    sql.Add('select nombres_emp,cod_emp, cod_emp1 from mtempleado');
    sql.Add('where nombres_emp like '+#39+'%'+edit1.Text+'%'+#39);
    sql.Add('and cargo = ''INSTALADOR''');
    open;
  end;
end;

procedure TFrmBuscarInstalador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmBuscarInstalador := nil;
Action := caFree;
end;

procedure TFrmBuscarInstalador.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    begin
      close;
    end;
end;

procedure TFrmBuscarInstalador.FormShow(Sender: TObject);
begin
Tecnicos.Open;
edit1.SetFocus;
end;

end.
