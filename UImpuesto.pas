unit UImpuesto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, Data.DB, Vcl.Mask, Vcl.DBCtrls, ZAbstractRODataset, ZDataset,
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
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  Tform_01 = class(TForm)
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
    dsDatos: TDataSource;
    PnlCentral: TPanel;
    pnlEdit: TPanel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Panel18: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel20: TPanel;
    btnnuevo: TSpeedButton;
    Panel10: TPanel;
    btnGuardar: TSpeedButton;
    Panel1: TPanel;
    BtnCanelar: TSpeedButton;
    Panel12: TPanel;
    Panel13: TPanel;
    SpeedButton1: TSpeedButton;
    pnlBuscar: TPanel;
    Panel15: TPanel;
    qConsultar: TZReadOnlyQuery;
    qConsultarID: TIntegerField;
    qConsultarDESCRIPCION: TWideStringField;
    qConsultarABREVIADO: TWideStringField;
    qConsultarIMP: TExtendedField;
    qConsultarESTADO: TWideStringField;
    dsConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1IMP: TcxGridDBColumn;
    procedure btnsalirClick(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGuardarClick(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_01: Tform_01;

implementation

uses
  Unit2, Tools;

{$R *.dfm}

procedure Tform_01.BtnCanelarClick(Sender: TObject);
begin
  datos.QImpuestos.cancelUpdates;
          datos.Data.Rollback;

          btnnuevo.Enabled := true;
          btnGuardar.Enabled := false;
          BtnCanelar.Enabled := false;

          PnlCentral.Enabled := false;
end;

procedure Tform_01.btnGuardarClick(Sender: TObject);
begin

      if dbedit2.Text =''then
        begin

                     Crear_Mensages('Error',
                    'Registro no puede ser guardado',
                    'Favor introducir verificar descripcion',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                    'OK') ;


        end else begin
                     Application.HintHidePause := 1500000;

                          datos.QImpuestos.ApplyUpdates;
                          datos.Data.Commit;

                          btnnuevo.Enabled := true;
                          btnGuardar.Enabled := false;
                          BtnCanelar.Enabled := false;

                          PnlCentral.Enabled := false;
                 end;
end;

procedure Tform_01.btnnuevoClick(Sender: TObject);
begin
  PnlCentral.Enabled := true;
  btnnuevo.Enabled := false;
  BtnCanelar.Enabled := true;
  btnGuardar.Enabled := true;

  datos.QImpuestos.Open;
  datos.QImpuestos.Append;

  DBEdit2.SetFocus;
end;

procedure Tform_01.btnsalirClick(Sender: TObject);
begin
  close;
end;

procedure Tform_01.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

  with datos.QImpuestos do
    begin
      close;
      sql.Clear;
      sql.Add('select * from tb_impuesto');
      sql.Add('where id =:id1');
      params[0].Value := qConsultarID.Value;
      open;
    end;

  PnlCentral.Enabled := true;
  btnnuevo.Enabled := false;
  BtnCanelar.Enabled := true;
  btnGuardar.Enabled := true;

 

  DBEdit2.SetFocus;
  pnlBuscar.Visible := false;
end;

procedure Tform_01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form_01 := nil;
Action := caFree;
end;

procedure Tform_01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    begin
      pnlBuscar.Visible := false;
      qConsultar.Close;
    end;
end;

procedure Tform_01.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
      begin
          Key := #0;
          Perform(WM_NEXTDLGCTL, 0, 0);
      end;
end;

procedure Tform_01.FormShow(Sender: TObject);
begin
  pnlBuscar.Visible := false;

                          btnnuevo.Enabled := true;
                          btnGuardar.Enabled := false;
                          BtnCanelar.Enabled := false;

                          PnlCentral.Enabled := false;
end;

procedure Tform_01.SpeedButton1Click(Sender: TObject);
begin
  pnlBuscar.Visible := true;

  qConsultar.open;
  qConsultar.Refresh;
  qConsultar.First;
  cxGrid1.SetFocus;
end;

end.
