unit uinventario_lote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, Data.DB, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit;

type
  TFInventarioLote = class(TForm)
    Panel1: TPanel;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    cod_txt: TEdit;
    Panel11: TPanel;
    Panel20: TPanel;
    btnnuevo: TSpeedButton;
    Panel10: TPanel;
    btnGuardar: TSpeedButton;
    DsInventarioLote: TDataSource;
    cxDBDateEdit1: TcxDBDateEdit;
    Label6: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnnuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInventarioLote: TFInventarioLote;

implementation

uses
  Unit2, Tools;

{$R *.dfm}

procedure TFInventarioLote.btnGuardarClick(Sender: TObject);
begin
DATOS.QInventarioLote.ApplyUpdates;
 DATOS.Data.Commit;


with datos.QInventarioLote do
   begin
     close;
     sql.Clear;
     sql.Add('select * from inventario_lote where estado = ''ABIERTO''');
     OPEN;
   end;

   if DATOS.QInventarioLote.RecordCount > 0  then
      begin
        AsignaLote := datos.QInventarioLoteID.value;
      end;

      btnnuevo.Enabled := true;
      btnGuardar.Enabled := false;
   close;
end;

procedure TFInventarioLote.btnnuevoClick(Sender: TObject);
begin
 datos.QInventarioLote.Open;
 datos.QInventarioLote.Append;
 datos.QInventarioLoteFECHA_INICIAL.Value := now();
 datos.QInventarioLoteESTADO.Value := 'ABIERTO';
 
      btnGuardar.Enabled :=true;
      btnnuevo.Enabled := false;

end;

procedure TFInventarioLote.btnsalirClick(Sender: TObject);
begin
datos.QInventarioLote.CancelUpdates;
datos.Data.Rollback;
close;

end;

procedure TFInventarioLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FInventarioLote := nil;
Action := caFree;
end;

end.
