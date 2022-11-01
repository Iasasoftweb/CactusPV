unit Unit27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  Vcl.Menus, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset,
  ZDataset;

type
  TfrmCat = class(TForm)
    DsCategoria: TDataSource;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    guardar: TcxButton;
    nuevo: TcxButton;
    Numero: TZReadOnlyQuery;
    NumeroMAX: TIntegerField;
    qcategoria: TZReadOnlyQuery;
    qcategoriaCODCAT: TIntegerField;
    qcategoriaCAT: TWideStringField;
    Dsqcategoria: TDataSource;
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCat: TfrmCat;

implementation

uses
unit2, tools, unit19;
{$R *.dfm}

procedure TfrmCat.cxButton3Click(Sender: TObject);
begin

datos.FbCategorias.CancelUpdates;
datos.Data.Rollback;
nuevo.Enabled := true;
guardar.Enabled := false;

end;

procedure TfrmCat.cxButton4Click(Sender: TObject);
begin

if application.MessageBox ('Realmente deseas eliminar a este registro?','Precausion',Mb_YesNo+MB_IconStop) = Id_yes then
         begin
             datos.FbCategorias.Delete;
             datos.FbCategorias.ApplyUpdates;
             datos.Data.Commit;
             qcategoria.Refresh;
         end;

end;

procedure TfrmCat.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

with datos.FbCategorias do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtcategoria');
    sql.Add('where codcat =:pp');
    params[0].Value := qcategoriacodcat.Value;
    open;
  end;
  guardar.Enabled := true;
  nuevo.Enabled := false;
end;

procedure TfrmCat.FormShow(Sender: TObject);
begin
qcategoria.Close;
qcategoria.Open;
end;

procedure TfrmCat.guardarClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text =''then
        begin
            MsgError('Categoria no puede ser guardado'#13+
      	               'Favor introducir el nombre de la categoria');
           cxDBTextEdit1.SetFocus;
        end else begin

          datos.FbCategorias.ApplyUpdates;

           // Commit and update button states
          nuevo.Enabled := true;

         datos.Data.Commit;
         guardar.Enabled := false;
///          SetCommitRollback (False);
            // refresh query resultset
        /// datos.FbtClientes.Refresh;
   // update AutoCommit button state
      ///  g_cambios.Down := datos.Data.AutoCommit;
      ///
      qcategoria.Close;
      qcategoria.open;

     end;
end;

procedure TfrmCat.nuevoClick(Sender: TObject);
begin

datos.FbCategorias.Open;
with numero do
   begin
      close;
      open;
   end;


datos.FbCategorias.Insert;
datos.Fbcategoriascodcat.Value := numeromax.value + 1;
cxDBTextEdit1.SetFocus;
nuevo.Enabled := false;
guardar.Enabled := true;

end;
end.
