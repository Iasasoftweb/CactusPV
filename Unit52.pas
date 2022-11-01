unit Unit52;

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
  dxSkinXmas2008Blue, cxGroupBox, unit2, Data.DB, cxTimeEdit, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Vcl.Menus,
  ZAbstractRODataset, ZDataset, cxButtons, ZAbstractDataset, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, tools,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmMturnos = class(TForm)
    Op1: TcxGroupBox;
    Op2: TcxGroupBox;
    DsMTurnos: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label4: TLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    ZQMturnos: TZReadOnlyQuery;
    DSQmTurnos: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ZQMturnosID_TURNOS: TIntegerField;
    ZQMturnosDESCRICPCION: TWideStringField;
    ZQMturnosINICIO: TTimeField;
    ZQMturnosFINAL: TTimeField;
    cxGrid1DBTableView1ID_TURNOS: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICPCION: TcxGridDBColumn;
    cxGrid1DBTableView1INICIO: TcxGridDBColumn;
    cxGrid1DBTableView1FINAL: TcxGridDBColumn;
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMturnos: TFrmMturnos;

implementation

{$R *.dfm}

procedure TFrmMturnos.cxButton3Click(Sender: TObject);
begin
datos.ZManTurnos.CancelUpdates;
datos.Data.Rollback;
nuevo.Enabled := true;
guardar.Enabled := false;
cxButton3.Enabled := false;
cxButton4.Enabled := true;
op1.Enabled := false;
ZqmTurnos.Close;
ZqmTurnos.Open;
end;

procedure TFrmMturnos.cxButton4Click(Sender: TObject);
begin
if application.MessageBox ('Realmente deseas eliminar a este registro?','Precausion',Mb_YesNo+MB_IconStop) = Id_yes then
         begin
             datos.ZManTurnos.Delete;
             datos.ZManTurnos.ApplyUpdates;
             datos.Data.Commit;
             ZqmTurnos.Close;
             ZqmTurnos.Open;
         end;
end;

procedure TFrmMturnos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin


with datos.ZManTurnos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MANT_TURNOS');
    sql.Add('where ID_TURNOS =:ppp');
    params[0].Value := zqmturnosid_turnos.Value;
    open;
  end;

   op1.Enabled := true;

   cxDBTextEdit1.SetFocus;

  nuevo.Enabled := false;
  guardar.Enabled := true;
  cxButton3.Enabled := true;
  cxButton4.Enabled := false;
end;

procedure TFrmMturnos.FormShow(Sender: TObject);
begin
datos.ZManTurnos.Close;
ZqmTurnos.Close;
ZqmTurnos.Open;
end;

procedure TFrmMturnos.guardarClick(Sender: TObject);
begin

      if cxDBTextEdit1.Text =''then
        begin
            MsgError('Categoria no puede ser guardado'#13+
      	               'Favor introducir el nombre de la categoria');
            cxDBTextEdit1.SetFocus;
        end else begin

          datos.ZManTurnos.ApplyUpdates;

           // Commit and update button states
          nuevo.Enabled := true;

         datos.Data.Commit;
         nuevo.Enabled := true;
         guardar.Enabled := false;
         cxButton3.Enabled := false;
         cxButton4.Enabled := true;

         DATOS.ZManTurnos.Close;
         ZqmTurnos.Close;
         ZqmTurnos.Open;


///          SetCommitRollback (False);
            // refresh query resultset
        /// datos.FbtClientes.Refresh;
   // update AutoCommit button state
      ///  g_cambios.Down := datos.Data.AutoCommit;
end;
end;

procedure TFrmMturnos.nuevoClick(Sender: TObject);
begin
with max do
  begin
    close;
    open;
  end;

  datos.ZManTurnos.Open;
  datos.ZManTurnos.Insert;
  datos.ZManTurnosID_TURNOS.Value := maxmax.Value + 1;
  op1.Enabled := true;
  cxDBTextEdit1.SetFocus;

  nuevo.Enabled := false;
  guardar.Enabled := true;
  cxButton3.Enabled := true;
  cxButton4.Enabled := false;
end;

end.
