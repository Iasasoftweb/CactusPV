unit Unit99;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxContainer, cxTextEdit, cxDBEdit, Vcl.StdCtrls, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, ZAbstractRODataset, ZDataset;

type
  TFrmMantBancos = class(TForm)
    nuevo: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Gp1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    guardar: TcxButton;
    cxButton1: TcxButton;
    DsBancos: TDataSource;
    cxButton2: TcxButton;
    consulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1BANCO: TcxGridDBColumn;
    cxGrid1DBTableView1SIGNO: TcxGridDBColumn;
    Numero: TZReadOnlyQuery;
    NumeroMAX: TIntegerField;
    consultaID: TIntegerField;
    consultaBANCO: TWideStringField;
    consultaMONEDA: TIntegerField;
    consultaSIGNO: TWideStringField;
    consultaNO_CTA: TWideStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxDBTextEdit3: TcxDBTextEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMantBancos: TFrmMantBancos;

implementation

{$R *.dfm}

uses Unit2, Unit98, UInicio;

procedure TFrmMantBancos.cxButton1Click(Sender: TObject);
begin
 datos.Zbancos.CancelUpdates;
       datos.Data.Rollback;
        nuevo.Enabled    := true;
        guardar.Enabled   := false;
        cxButton1.Enabled := false;

        gp1.Enabled := false;
end;

procedure TFrmMantBancos.cxButton2Click(Sender: TObject);
begin
frmbuscarmoneda.Edit1.Text := '2';
frmbuscarmoneda.showmodal;
end;

procedure TFrmMantBancos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  with datos.Zbancos do begin
                       close;
                       sql.Clear;
                       sql.Add('select a.*, b.signo from tb_bancos a');
                       SQL.Add('left join tb_moneda b on a.moneda = b.id');
                       sql.Add('where a.id =:op1');
                       params[0].Value := consultaID.Value;
                       open;
                   end;

   gp1.Enabled := true;
   cxDBTextEdit1.SetFocus;
  nuevo.Enabled := false;
guardar.Enabled := true;
cxButton1.Enabled := true;



end;

procedure TFrmMantBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmMantBancos := nil;
Action := caFree;
end;

procedure TFrmMantBancos.FormShow(Sender: TObject);
begin
//consulta.close;
consulta.Open;
end;

procedure TFrmMantBancos.guardarClick(Sender: TObject);
begin

  if (cxDBTextEdit1.Text <>'') and (cxDBTextEdit3.Text <>'') and (cxDBTextEdit2.Text <>'') then
      begin
         datos.Zbancos.ApplyUpdates;
         datos.Data.Commit;

         consulta.Refresh;
         datos.Zbancos.Close;


   nuevo.Enabled    := true;
   guardar.Enabled   := false;
   cxButton1.Enabled := false;
   gp1.Enabled := false;

   end else begin
              ShowMessage(' Registro no puede ser guardado, !!no puede existir campos vacios.!!');
            end;

end;

procedure TFrmMantBancos.nuevoClick(Sender: TObject);
begin
with numero do
   begin
     close;
     sql.Clear;
     sql.Add('select max(id) from tb_bancos');
     open;
   end;

   datos.Zbancos.Open;
   datos.Zbancos.insert;
   datos.ZbancosID.Value := Numeromax.Value + 1;
   gp1.Enabled := true;
   cxDBTextEdit1.SetFocus;
  nuevo.Enabled := false;
guardar.Enabled := true;
cxButton1.Enabled := true;
end;

end.
