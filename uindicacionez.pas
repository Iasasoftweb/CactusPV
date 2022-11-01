unit uindicacionez;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, acPNG, Vcl.ExtCtrls, Vcl.Buttons,
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
  TfIndicaciones = class(TForm)
    dsDatos: TDataSource;
    qConsulta1: TZReadOnlyQuery;
    dsCons: TDataSource;
    qConsulta1ID: TIntegerField;
    qConsulta1NOM_INDICACION: TWideStringField;
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
    cxGrid2DBTableView1SUSTANCIA: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Panel14: TPanel;
    Panel16: TPanel;
    edtBuscar: TEdit;
    Panel17: TPanel;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnnuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIndicaciones: TfIndicaciones;

implementation

uses
  Unit2, Tools;

{$R *.dfm}

procedure TfIndicaciones.BtnCanelarClick(Sender: TObject);
begin
 datos.qindicaciones.cancelUpdates;
          datos.Data.Rollback;

          btnnuevo.Enabled := true;
          btnGuardar.Enabled := false;
          BtnCanelar.Enabled := false;

          PnlCentral.Enabled := false;
          datos.qindicaciones.Close;
end;

procedure TfIndicaciones.btnGuardarClick(Sender: TObject);
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

                         datos.qindicaciones.ApplyUpdates;
                          datos.Data.Commit;

                          btnnuevo.Enabled := true;
                          btnGuardar.Enabled := false;
                          BtnCanelar.Enabled := false;

                          PnlCentral.Enabled := false;
                          datos.qindicaciones.Close;
                 end;
end;

procedure TfIndicaciones.btnnuevoClick(Sender: TObject);
begin
PnlCentral.Enabled := true;
  btnnuevo.Enabled := false;
  BtnCanelar.Enabled := true;
  btnGuardar.Enabled := true;

  datos.qindicaciones.Open;
  datos.qindicaciones.Append;

  DBEdit2.SetFocus;
end;

procedure TfIndicaciones.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfIndicaciones.cxGrid2DBTableView1DblClick(Sender: TObject);
begin



   with datos.qindicaciones do
    begin
      close;
      sql.Clear;
      sql.Add('select a.* from PRODUCTO_INDICACIONES a');
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

procedure TfIndicaciones.edtBuscarChange(Sender: TObject);
begin
 with qconsulta1 do
    begin
      close;
      sql.Clear;
      sql.Add('select a.* from PRODUCTO_INDICACIONES a');
      sql.Add('where a.NOM_INDICACION like '+#39+'%'+edtbuscar.Text+'%'+#39);
      open;
    end;
end;

procedure TfIndicaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fIndicaciones := nil;
Action := caFree;
end;

procedure TfIndicaciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
     pnlBuscar.Visible := false;
     qConsulta1.Close;
  end;
end;

procedure TfIndicaciones.FormShow(Sender: TObject);
begin
   pnlBuscar.Visible := true;
   qConsulta1.open;
end;

procedure TfIndicaciones.SpeedButton1Click(Sender: TObject);
begin
 pnlBuscar.Visible := true;
  qConsulta1.open;
  qConsulta1.Refresh;
  qConsulta1.First;
  //cxGrid2.SetFocus;
  edtBuscar.SetFocus;
end;

end.
