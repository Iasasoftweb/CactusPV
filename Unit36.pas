unit Unit36;

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
  dxSkinXmas2008Blue, cxGroupBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, Data.DB, ZAbstractRODataset, ZDataset, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus,
  cxButtons, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmCGastos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    zqcgastos: TZReadOnlyQuery;
    cxGroupBox2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsqcgastos: TDataSource;
    zqcgastosCONCEPTOSID: TIntegerField;
    zqcgastosDESCRIPCION: TWideStringField;
    zqcgastosESTADO: TIntegerField;
    zqcgastosC1: TIntegerField;
    zqcgastosC2: TIntegerField;
    zqcgastosC3: TIntegerField;
    cxGrid1DBTableView1CONCEPTOSID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCGastos: TFrmCGastos;

implementation
 uses unit2, unit19, Unit63;
{$R *.dfm}

procedure TFrmCGastos.cxButton1Click(Sender: TObject);
begin
with max do
 begin
   close;
   open;
 end;

 datos.ZConceptos_Gastos.Open;
 datos.ZConceptos_Gastos.Insert;
 datos.ZConceptos_GastosCONCEPTOSID.Value := maxmax.Value + 1;
 datos.ZConceptos_GastosESTADO.Value := 1;
 cxDBTextEdit1.SetFocus;

 cxButton1.Enabled := false;
 cxButton2.Enabled := true;
 cxButton3.Enabled := true;


end;

procedure TFrmCGastos.cxButton2Click(Sender: TObject);
begin
if cxDBTextEdit1.Text ='' then
  begin
    showmessage('** Registro no puede ser guardo **');
  end else begin
    datos.ZConceptos_Gastos.ApplyUpdates;
    datos.Data.Commit;
    zqcgastos.Close;
    zqcgastos.open;
    cxButton1.Enabled := true;
    cxButton2.Enabled := false;
    cxButton3.Enabled := false;
     datos.ZConceptos_Gastos.close;
  end;

end;

procedure TFrmCGastos.cxButton3Click(Sender: TObject);
begin
    datos.ZConceptos_Gastos.CancelUpdates;
    datos.Data.Rollback;
    zqcgastos.Close;
    zqcgastos.open;
     datos.ZConceptos_Gastos.close;
    cxButton1.Enabled := true;
    cxButton2.Enabled := false;
    cxButton3.Enabled := false;
end;

procedure TFrmCGastos.cxButton4Click(Sender: TObject);
begin
 datos.ZConceptos_Gastos.CancelUpdates;
    datos.Data.Rollback;
    zqcgastos.Close;
    zqcgastos.open;
    cxButton1.Enabled := true;
    cxButton2.Enabled := false;
    cxButton3.Enabled := false;
     datos.ZConceptos_Gastos.close;
    close;
end;

procedure TFrmCGastos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
with datos.ZConceptos_Gastos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from CONCEPTOS_GASTOS');
    sql.Add('where CONCEPTOSID =:op');
    params[0].Value := zqcgastosCONCEPTOSID.Value;
    open;
  end;

   cxDBTextEdit1.SetFocus;

 cxButton1.Enabled := false;
 cxButton2.Enabled := true;
 cxButton3.Enabled := true;

end;

procedure TFrmCGastos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmCGastos := nil;
Action := caFree;
end;

procedure TFrmCGastos.FormShow(Sender: TObject);
begin
zqcgastos.Close;
zqcgastos.Open;
end;

end.
