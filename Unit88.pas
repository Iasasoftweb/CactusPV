unit Unit88;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, ZSqlUpdate, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxDBEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, Vcl.Menus, cxButtons, dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFrmModulos = class(TForm)
    Op1: TcxGroupBox;
    numero: TZReadOnlyQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxDBComboBox2: TcxDBComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Consulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1NOMBRE_PANTALLAS: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE_FORM: TcxGridDBColumn;
    cxGrid1DBTableView1SECCION: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ConsultaID: TIntegerField;
    ConsultaNOMBRE_PANTALLAS: TWideStringField;
    ConsultaNOMBRE_FORM: TWideStringField;
    ConsultaSECCION: TWideStringField;
    ConsultaBOTON: TWideStringField;
    ConsultaESTADO: TWideStringField;
    ConsultaIDNIVEL: TIntegerField;
    numeroGEN_ID: TLargeintField;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    Panel6: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBComboBox3: TcxDBComboBox;
    Label8: TLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModulos: TFrmModulos;

implementation

{$R *.dfm}

uses Unit2, UInicio;

procedure TFrmModulos.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmModulos.Button1Click(Sender: TObject);
var
S : string;
begin


// Label1.Caption :=  StringReplace( edit1.Text, '''', '', [rfReplaceAll]);


end;

procedure TFrmModulos.cxButton2Click(Sender: TObject);
begin

with numero do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(GEN_TB_MODULOS_ID, 1) from RDB$DATABASE');
    open;
  end;

  datos.Qmodulos.Open;
  datos.Qmodulos.Append;
  datos.QmodulosID.Value := numeroGEN_ID.Value;

  Op1.Enabled := true;

cxButton3.Enabled := true;
cxButton4.Enabled := true;
cxButton2.Enabled := false;
end;

procedure TFrmModulos.cxButton3Click(Sender: TObject);
begin
if cxDBTextEdit1.Text <>'' then
  begin
    datos.Qmodulos.ApplyUpdates;
    datos.Data.Commit;

    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;

    Consulta.Close;
    Consulta.Open;

    op1.Enabled := false;

  end;
end;

procedure TFrmModulos.cxButton4Click(Sender: TObject);
begin
 datos.Qmodulos.CancelUpdates;
    datos.Data.Rollback;

    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;

    Consulta.Close;
    Consulta.Open;

    op1.Enabled := false;
end;

procedure TFrmModulos.cxButton5Click(Sender: TObject);
begin
close;
end;

procedure TFrmModulos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
with datos.QModulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from TB_MODULOS');
    sql.Add('where id =:Opp');
    params[0].Value := ConsultaID.Value;
    open;

  end;

  Op1.Enabled := true;

cxButton3.Enabled := true;
cxButton4.Enabled := true;
cxButton2.Enabled := false;



end;

procedure TFrmModulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmModulos := nil;
Action := caFree;
end;

procedure TFrmModulos.FormShow(Sender: TObject);
begin
CONSULTA.Open;
end;

end.

