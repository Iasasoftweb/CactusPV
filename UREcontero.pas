unit UREcontero;

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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxDBLabel,
  Data.DB, cxTextEdit, cxMaskEdit, cxSpinEdit, ZAbstractRODataset, ZDataset;

type
  TFReconteo = class(TForm)
    spValor: TcxSpinEdit;
    DsCorteInventario: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxButton1: TcxButton;
    qactualiza: TZReadOnlyQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure spValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReconteo: TFReconteo;

implementation

{$R *.dfm}

uses Unit137, Unit2;

procedure TFReconteo.cxButton1Click(Sender: TObject);
begin

with qactualiza do
  begin
    close;
    sql.Clear;
    sql.Add('update TB_INVENTARIOCORTE set reconteo = :valor where id =:ids');
    params[0].Value := spValor.Value;
    params[1].Value := datos.QCorteInventarioID.Value;
    ExecSQL;
  end;

  datos.Data.Commit;


  with FrmCorteInventario.qcortesabiertos do
   begin
     close;
     sql.Clear;
     sql.Add('select * from MCORTEINVENTARIO');
     sql.Add('where estado =2');
     open;
   end;

with datos.QCorteInventario do
     begin
       close;
       sql.Clear;
       sql.Add('select a.*, b.articulo from TB_INVENTARIOCORTE a');
       sql.Add('left join mtartuculos b On a.cod_art = b.cod_art');
       sql.Add('where a.idmaster =:op ');
       params[0].Value := FrmCorteInventario.qcortesabiertosID.Value;
       open;
     end;

close;
end;

procedure TFReconteo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TFReconteo.FormShow(Sender: TObject);
begin
spValor.Value   := 0;
spValor.SetFocus;
end;

procedure TFReconteo.spValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    cxButton1.Click;
  end;
end;

end.
