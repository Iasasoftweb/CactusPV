unit Unit89;

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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, cxButtons, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFrmAlmacenes = class(TForm)
    Gp1: TcxGroupBox;
    DsAlamacen: TDataSource;
    Qmax: TZReadOnlyQuery;
    QmaxMAX: TIntegerField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    QConsulta: TZReadOnlyQuery;
    QConsultaID: TIntegerField;
    QConsultaDESCRIPCION: TWideStringField;
    DsQConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton3: TcxButton;
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlmacenes: TFrmAlmacenes;

implementation

{$R *.dfm}

uses Unit63, Unit2, Tools;

procedure TFrmAlmacenes.cxButton3Click(Sender: TObject);
begin
datos.QAlmacen.CancelUpdates;
datos.Data.Rollback;
nuevo.Enabled := true;
guardar.Enabled := false;
cxButton3.Enabled := false;
//cxButton4.Enabled := true;
gp1.Enabled := false;

end;

procedure TFrmAlmacenes.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
gp1.Enabled := true;


with datos.QAlmacen do
  begin
    close;
    sql.Clear;
    sql.Add('select * from almacenes');
    sql.Add('where id=:fff');
    params[0].Value := QConsultaID.Value;
    open;
  end;



//datos.FbqFabricantesCOD.Value := TraeNumeroOrden(datos.FbqFabricantesCOD.Value);
//datos.FbqFabricantesCOD_FAB.Value := '000'+IntTOStr(datos.FbqFabricantesCOD.Value);
cxDBTextEdit1.SetFocus;
nuevo.Enabled := false;
guardar.Enabled := true;
cxButton3.Enabled := true;
//cxButton4.Enabled := false;
end;

procedure TFrmAlmacenes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmAlmacenes := nil;
Action := caFree;
end;

procedure TFrmAlmacenes.FormShow(Sender: TObject);
begin

QConsulta.Open;

end;

procedure TFrmAlmacenes.guardarClick(Sender: TObject);
begin

      if cxDBTextEdit1.Text =''then
        begin
            MsgError('Categoria no puede ser guardado'#13+
      	               'Favor introducir el nombre de la categoria');
            cxDBTextEdit1.SetFocus;
        end else begin

          datos.QAlmacen.ApplyUpdates;

           // Commit and update button states
          nuevo.Enabled := true;

         datos.Data.Commit;
         nuevo.Enabled := true;
         guardar.Enabled := false;
         cxButton3.Enabled := false;
   //      cxButton4.Enabled := true;
              QConsulta.Refresh;
            Gp1.Enabled := false;
            // refresh query resultset
        /// datos.FbtClientes.Refresh;
   // update AutoCommit button state
      ///  g_cambios.Down := datos.Data.AutoCommit;
     end;

end;

procedure TFrmAlmacenes.nuevoClick(Sender: TObject);
begin
gp1.Enabled := true;

with qmax do
  begin
    close;
    open;
  end;

datos.QAlmacen.Open;

datos.QAlmacen.Insert;
datos.QAlmacenid.Value := qmaxmax.Value + 1;
//datos.FbqFabricantesCOD.Value := TraeNumeroOrden(datos.FbqFabricantesCOD.Value);
//datos.FbqFabricantesCOD_FAB.Value := '000'+IntTOStr(datos.FbqFabricantesCOD.Value);
cxDBTextEdit1.SetFocus;
nuevo.Enabled := false;
guardar.Enabled := true;
cxButton3.Enabled := true;
//cxButton4.Enabled := false
end;

end.
