unit Unit97;

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
  dxSkinXmas2008Blue, cxGroupBox, Data.DB, ZAbstractRODataset, ZDataset,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxDBEdit, Vcl.StdCtrls, Vcl.Menus, cxButtons;

type
  TFrmMoneda = class(TForm)
    Gp1: TcxGroupBox;
    consulta: TZReadOnlyQuery;
    consultaID: TIntegerField;
    consultaMONEDA: TWideStringField;
    consultaSIGNO: TWideStringField;
    DsConsula: TDataSource;
    DsMoneda: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1MONEDA: TcxGridDBColumn;
    cxGrid1DBTableView1SIGNO: TcxGridDBColumn;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton1: TcxButton;
    Max: TZReadOnlyQuery;
    MaxMAX: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMoneda: TFrmMoneda;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmMoneda.cxButton1Click(Sender: TObject);
begin


       datos.ZMoneda.CancelUpdates;
       datos.Data.Rollback;
        nuevo.Enabled    := true;
        guardar.Enabled   := false;
        cxButton1.Enabled := false;

        gp1.Enabled := false;
end;

procedure TFrmMoneda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmMoneda := nil;
Action := caFree;
end;

procedure TFrmMoneda.FormShow(Sender: TObject);
begin
consulta.close;
consulta.open;
end;

procedure TFrmMoneda.guardarClick(Sender: TObject);
begin
if True then
  if cxDBTextEdit1.Text <>'' then
      begin
        datos.ZMoneda.ApplyUpdates;
        datos.Data.Commit;

        consulta.Close;
        consulta.Open;


         nuevo.Enabled    := true;
        guardar.Enabled   := false;
        cxButton1.Enabled := false;

         gp1.Enabled := false;

         datos.ZMoneda.Close
      end;
end;

procedure TFrmMoneda.nuevoClick(Sender: TObject);
begin
with datos.ZMoneda do
   begin
     open;
       with max do
           begin
             close;
             sql.Clear;
             sql.Add('select max(id) from tb_moneda');
             open;
           end;

        insert;
         gp1.Enabled := true;
        datos.ZMonedaID.Value := MaxMAX.Value + 1;
        cxDBTextEdit1.SetFocus;



   end;


  nuevo.Enabled := false;
guardar.Enabled := true;
cxButton1.Enabled := true;

end;

end.
