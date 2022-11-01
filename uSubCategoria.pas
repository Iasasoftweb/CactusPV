unit uSubCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UImpuesto, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFSubCategoria = class(Tform_01)
    SpeedButton2: TSpeedButton;
    qConsulta1: TZReadOnlyQuery;
    qConsulta1ID: TIntegerField;
    qConsulta1SUBCATEGORIA: TWideStringField;
    qConsulta1IDCATEGORIA: TIntegerField;
    qConsulta1CAT: TWideStringField;
    cxGrid1DBTableView1SUBCATEGORIA: TcxGridDBColumn;
    cxGrid1DBTableView1CAT: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1SUBCATEGORIA: TcxGridDBColumn;
    cxGrid2DBTableView1CAT: TcxGridDBColumn;
    Panel14: TPanel;
    Panel16: TPanel;
    edtBuscar: TEdit;
    Panel17: TPanel;
    dsCons: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSubCategoria: TFSubCategoria;

implementation

uses
  Unit2, Tools, Unit57;

{$R *.dfm}

procedure TFSubCategoria.BtnCanelarClick(Sender: TObject);
begin
  inherited;
 datos.qSubCategorias.cancelUpdates;
          datos.Data.Rollback;

          btnnuevo.Enabled := true;
          btnGuardar.Enabled := false;
          BtnCanelar.Enabled := false;

          PnlCentral.Enabled := false;
          datos.qSubCategorias.Close;
end;

procedure TFSubCategoria.btnGuardarClick(Sender: TObject);
begin
  inherited;

      if dbedit2.Text =''then
        begin

                     Crear_Mensages('Error',
                    'Registro no puede ser guardado',
                    'Favor introducir verificar descripcion',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                    'OK') ;


        end else begin
                          Application.HintHidePause := 1500000;

                          datos.qSubCategorias.ApplyUpdates;
                          datos.Data.Commit;

                          btnnuevo.Enabled := true;
                          btnGuardar.Enabled := false;
                          BtnCanelar.Enabled := false;

                          PnlCentral.Enabled := false;
                          datos.qSubCategorias.Close;
                 end;
end;

procedure TFSubCategoria.btnnuevoClick(Sender: TObject);
begin
  inherited;
PnlCentral.Enabled := true;
  btnnuevo.Enabled := false;
  BtnCanelar.Enabled := true;
  btnGuardar.Enabled := true;

  datos.qSubCategorias.Open;
  datos.qSubCategorias.Append;

  DBEdit2.SetFocus;
end;

procedure TFSubCategoria.btnsalirClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFSubCategoria.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  inherited;
 with datos.qSubCategorias do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.cat from producto_subcategoria a');
      sql.Add('left join mtcategoria b on a.idcategoria = b.codcat');
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

procedure TFSubCategoria.edtBuscarChange(Sender: TObject);
begin
  inherited;

 with qconsulta1 do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*, b.cat from producto_subcategoria a');
      sql.Add('left join mtcategoria b on a.idcategoria = b.codcat');
      sql.Add('where a.subcategoria like '+#39+'%'+edtbuscar.Text+'%'+#39);
      open;
    end;

end;

procedure TFSubCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
FSubCategoria := nil;
Action := caFree;
end;

procedure TFSubCategoria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key = VK_ESCAPE then
    begin
      pnlBuscar.Visible := false;
      qConsulta1.Close;
    end;
end;

procedure TFSubCategoria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #13 then
      begin
          Key := #0;
          Perform(WM_NEXTDLGCTL, 0, 0);
      end;
end;

procedure TFSubCategoria.FormShow(Sender: TObject);
begin
  inherited;
pnlBuscar.Visible := false;
qConsulta1.Close;
end;

procedure TFSubCategoria.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnlBuscar.Visible := true;
  qConsulta1.open;
  qConsulta1.Refresh;
  qConsulta1.First;
  cxGrid2.SetFocus;
  edtBuscar.SetFocus;

end;

procedure TFSubCategoria.SpeedButton2Click(Sender: TObject);
begin
  inherited;

 if FrmBuscarCategoria = nil then
      begin
         FrmBuscarCategoria := tFrmBuscarCategoria.Create(self);
         datos.FbCategorias.Open;
         FrmBuscarCategoria.edit1.text := 'Sub';
         FrmBuscarCategoria.showmodal;
      end;

end;

end.
