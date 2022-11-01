unit Unit123;

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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Data.DB,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, Vcl.Menus, cxButtons;

type
  TFrmNotario = class(TForm)
    G1: TcxGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Consulta: TZReadOnlyQuery;
    ConsultaCOD_PROV: TIntegerField;
    ConsultaNOMBRE_PRO: TWideStringField;
    ConsultaNOM_CONTACTO: TWideStringField;
    ConsultaDIRECCION: TWideStringField;
    ConsultaTELF1: TWideStringField;
    ConsultaTELF2: TWideStringField;
    ConsultaEMAIL: TWideStringField;
    ConsultaWEBSITE: TWideStringField;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1NOMBRE_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton1: TcxButton;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotario: TFrmNotario;

implementation

{$R *.dfm}

uses Unit2, Unit63;

procedure TFrmNotario.cxButton1Click(Sender: TObject);
begin
datos.QNotarios.CancelUpdates;
datos.data.Rollback;

nuevo.Enabled := true;
      guardar.Enabled := false;
      cxButton1.Enabled := false;
     // cxButton2.Enabled := true;
         consulta.Refresh;

      datos.qnotarios.Close;
      g1.Enabled :=  false;
end;

procedure TFrmNotario.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
with datos.QNotarios do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MAN_PROVEDORES');
    sql.Add('where COD_PROV =:tt');
    params[0].Value := ConsultaCOD_PROV.Value;
    open;
  end;


   g1.Enabled := true;
   cxDBTextEdit1.SetFocus;
   nuevo.Enabled := false;
guardar.Enabled := true;
cxButton1.Enabled := true;
end;

procedure TFrmNotario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmnotario := nil;
Action := caFree;
end;

procedure TFrmNotario.FormShow(Sender: TObject);
begin
consulta.Open;
end;

procedure TFrmNotario.guardarClick(Sender: TObject);
begin
if cxDBTextEdit1.Text <>'' then
  begin
    datos.QNotarios.ApplyUpdates;
    datos.Data.Commit;

      nuevo.Enabled := true;
      guardar.Enabled := false;
      cxButton1.Enabled := false;
     // cxButton2.Enabled := true;
         consulta.Refresh;

      datos.qnotarios.Close;
      g1.Enabled :=  false;
  end;



end;

procedure TFrmNotario.nuevoClick(Sender: TObject);
begin
 with max do
   begin
     close;
     sql.Clear;
     sql.Add('select max(cod_prov) from MAN_PROVEDORES');
     open;
   end;

   datos.QNotarios.Open;
   datos.QNotarios.Append;
   datos.QNotariosCOD_PROV.Value := maxMAX.Value + 1;
   g1.Enabled := true;
   cxDBTextEdit1.SetFocus;
   nuevo.Enabled := false;
guardar.Enabled := true;
cxButton1.Enabled := true;
//cxButton2.Enabled := false;



end;

end.
