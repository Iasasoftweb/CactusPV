unit Unit72;

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
  dxSkinXmas2008Blue, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls, unit2, ZAbstractRODataset, ZDataset,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, cxButtons, unit63, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFrmVendedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    consulta: TZReadOnlyQuery;
    consultaID: TIntegerField;
    consultaNOMBRE: TWideStringField;
    consultaCEDULA: TWideStringField;
    consultaTELEFONO: TWideStringField;
    consultaESTADO: TIntegerField;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1CEDULA: TcxGridDBColumn;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton3: TcxButton;
    Edit1: TEdit;
    Label5: TLabel;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedores: TFrmVendedores;

implementation

{$R *.dfm}

uses UInicio;

procedure TFrmVendedores.cxButton3Click(Sender: TObject);
begin
      datos.TbVendedor.CancelUpdates;
      datos.Data.Rollback;

      panel1.Enabled := false;
      nuevo.Enabled := true;
      guardar.Enabled := false;
      cxButton3.Enabled := false;

end;

procedure TFrmVendedores.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
with datos.tbvendedor do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vendedores');
    sql.Add('where id =:pp');
    params[0].Value := consultaid.Value;
    open;
  end;

  panel1.Enabled := true;
cxDBTextEdit1.SetFocus;

nuevo.Enabled := true;
guardar.Enabled := true;
cxButton3.Enabled := true;

end;

procedure TFrmVendedores.Edit1Change(Sender: TObject);
begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vendedores');
    sql.Add('where nombre like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;


end;

procedure TFrmVendedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmVendedores := nil;
Action := caFree;
end;

procedure TFrmVendedores.FormShow(Sender: TObject);
begin
consulta.Close;
consulta.Open;
end;

procedure TFrmVendedores.guardarClick(Sender: TObject);
begin

if cxDBTextEdit1.Text ='' then
  begin
      Showmessage(' Registro no puede ser guardado ');
  end  else begin
      datos.TbVendedor.ApplyUpdates;
      datos.Data.Commit;

      panel1.Enabled := false;
      nuevo.Enabled := true;
      guardar.Enabled := false;
      cxButton3.Enabled := false;

      consulta.Close;
      consulta.Open;

  end;


end;

procedure TFrmVendedores.nuevoClick(Sender: TObject);
begin


with max do
  begin
    close;
    open;
  end;


datos.TbVendedor.Open;
datos.TbVendedor.Insert;
datos.TbVendedorID.Value := maxmax.value + 1;

panel1.Enabled := true;
cxDBTextEdit1.SetFocus;

nuevo.Enabled := true;
guardar.Enabled := true;
cxButton3.Enabled := true;


end;

end.
