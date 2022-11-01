unit Unit110;

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
  cxTextEdit, cxDBEdit, Vcl.StdCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, cxButtons;

type
  TFrmTiposEquipos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Numero: TZReadOnlyQuery;
    NumeroMAX: TIntegerField;
    DataSource1: TDataSource;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Consulta: TZReadOnlyQuery;
    ConsultaID: TIntegerField;
    ConsultaTIPOEQUIPO: TWideStringField;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOEQUIPO: TcxGridDBColumn;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton1: TcxButton;
    DsConsultar: TDataSource;
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTiposEquipos: TFrmTiposEquipos;

implementation

{$R *.dfm}

uses Unit2, Unit63;

procedure TFrmTiposEquipos.cxButton1Click(Sender: TObject);
begin

  datos.zTipoEquipos.CancelUpdates;
  datos.Data.Rollback;

 cxGroupBox1.Enabled := false;
        nuevo.Enabled := true;
         guardar.Enabled := false;
         cxButton1.Enabled := false;


         consulta.Refresh;
end;

procedure TFrmTiposEquipos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

with datos.zTipoEquipos do
   begin
       close;
       sql.Clear;
       sql.Add('select * from tipoequipo');
       sql.Add('where id =:op1');
       params[0].Value := ConsultaID.Value;
       open;
     end;


 cxGroupBox1.Enabled := true;
 cxDBTextEdit1.SetFocus;


 nuevo.Enabled := false;
guardar.Enabled := true;
cxButton1.Enabled := true;

end;

procedure TFrmTiposEquipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmTiposEquipos := nil;
Action := caFree;
end;

procedure TFrmTiposEquipos.FormShow(Sender: TObject);
begin
cxGroupBox1.Enabled := false;
consulta.Open;
end;

procedure TFrmTiposEquipos.guardarClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text <>'' then
    begin
      datos.zTipoEquipos.Edit;
      datos.zTipoEquipos.ApplyUpdates;
      datos.Data.Commit;
        cxGroupBox1.Enabled := false;
        nuevo.Enabled := true;
         guardar.Enabled := false;
         cxButton1.Enabled := false;


         consulta.Refresh;
    end;

end;

procedure TFrmTiposEquipos.nuevoClick(Sender: TObject);
begin
with numero do
    begin
      close;
      open;
    end;

 datos.zTipoEquipos.Open;
 datos.zTipoEquipos.Append;
 datos.zTipoEquiposID.Value := NumeroMAX.Value + 1;

 cxGroupBox1.Enabled := true;
 cxDBTextEdit1.SetFocus;


 nuevo.Enabled := false;
guardar.Enabled := true;
cxButton1.Enabled := true;



end;

end.
