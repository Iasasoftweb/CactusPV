unit Umarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, Data.DB, ZAbstractRODataset, ZDataset, Vcl.Mask, Vcl.DBCtrls,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfMarca = class(TForm)
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
    Panel12: TPanel;
    Panel13: TPanel;
    SpeedButton1: TSpeedButton;
    dsDatos: TDataSource;
    qConsulta1: TZReadOnlyQuery;
    dsCons: TDataSource;
    qConsulta1ID: TIntegerField;
    qConsulta1MARCAS: TWideStringField;
    qConsulta1IDPROV: TIntegerField;
    PnlCentral: TPanel;
    pnlEdit: TPanel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Panel18: TPanel;
    Panel11: TPanel;
    Panel20: TPanel;
    btnnuevo: TSpeedButton;
    Panel10: TPanel;
    btnGuardar: TSpeedButton;
    Panel1: TPanel;
    BtnCanelar: TSpeedButton;
    pnlBuscar: TPanel;
    Panel15: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1IMP: TcxGridDBColumn;
    cxGrid1DBTableView1SUBCATEGORIA: TcxGridDBColumn;
    cxGrid1DBTableView1CAT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel14: TPanel;
    Panel16: TPanel;
    edtBuscar: TEdit;
    Panel17: TPanel;
    cxGrid2DBTableView1MARCAS: TcxGridDBColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMarca: TfMarca;

implementation

uses
  Unit2, Tools;

{$R *.dfm}

procedure TfMarca.BtnCanelarClick(Sender: TObject);
begin
          datos.qmarca.cancelUpdates;
          datos.Data.Rollback;

          btnnuevo.Enabled := true;
          btnGuardar.Enabled := false;
          BtnCanelar.Enabled := false;

          PnlCentral.Enabled := false;
          datos.qmarca.Close;
end;

procedure TfMarca.btnGuardarClick(Sender: TObject);
begin
  if dbedit2.Text =''then
        begin

                     Crear_Mensages('Error',
                    'Registro no puede ser guardado',
                    'Favor introducir verificar descripcion',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                    'OK') ;


        end else begin
                        ///  Application.HintHidePause := 1500000;

                          datos.qmarca.ApplyUpdates;
                          datos.Data.Commit;

                          btnnuevo.Enabled := true;
                          btnGuardar.Enabled := false;
                          BtnCanelar.Enabled := false;

                          PnlCentral.Enabled := false;
                          datos.qmarca.Close;
                 end;
end;

procedure TfMarca.btnnuevoClick(Sender: TObject);
begin
 PnlCentral.Enabled := true;
  btnnuevo.Enabled := false;
  BtnCanelar.Enabled := true;
  btnGuardar.Enabled := true;

  datos.qmarca.Open;
  datos.qmarca.Append;

  DBEdit2.SetFocus;
end;

procedure TfMarca.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfMarca.cxGrid2DBTableView1DblClick(Sender: TObject);
begin


   with datos.qmarca do
    begin
      close;
      sql.Clear;
      sql.Add('select a.* from PRODUCTOS_marca a');
      sql.Add('where id =:id1');
      params[0].Value := qConsulta1ID.Value;
      open;
    end;



  PnlCentral.Enabled := true;
  btnnuevo.Enabled := false;
  BtnCanelar.Enabled := true;
  btnGuardar.Enabled := true;



  DBEdit2.SetFocus;
  pnlBuscar.Visible := false;
end;

procedure TfMarca.edtBuscarChange(Sender: TObject);
begin
 with qconsulta1 do
    begin
      close;
      sql.Clear;
      sql.Add('select a.* from PRODUCTOS_marca a');
      sql.Add('where a.marcas like '+#39+'%'+edtbuscar.Text+'%'+#39);
      open;
    end;
end;

procedure TfMarca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fmarca := nil;
action := caFree;
end;

procedure TfMarca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    pnlBuscar.Visible := false;
  end;
end;

procedure TfMarca.FormShow(Sender: TObject);
begin
pnlBuscar.Visible := false;
qConsulta1.Close;
end;

procedure TfMarca.SpeedButton1Click(Sender: TObject);
begin
 pnlBuscar.Visible := true;
  qConsulta1.open;
  qConsulta1.Refresh;
  qConsulta1.First;
  cxGrid2.SetFocus;
  edtBuscar.SetFocus;
end;

end.
