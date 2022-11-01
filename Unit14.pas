unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxButtons, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, ZAbstractRODataset, ZDataset, Vcl.ExtDlgs,
  cxContainer, cxImage, cxDBEdit, jpeg,pngimage, GIFImg, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  acPNG, Vcl.Buttons;

type
  TFmrMant_Categoria = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DsQFabricantes: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    OpenPictureDialog1: TOpenPictureDialog;
    BuscaImagen: TOpenPictureDialog;
    cxDBComboBox1: TcxDBComboBox;
    Label1: TLabel;
    consultar: TZReadOnlyQuery;
    DsConsultar: TDataSource;
    consultarCODCAT: TIntegerField;
    consultarCAT: TWideStringField;
    consultarIMAGEN: TBlobField;
    consultarEXTFOTO: TWideStringField;
    consultarOPCION: TWideStringField;
    Qmax: TZReadOnlyQuery;
    Panel3: TPanel;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    pnlCentral: TPanel;
    Panel9: TPanel;
    Panel13: TPanel;
    Label6: TLabel;
    Panel14: TPanel;
    Image1: TImage;
    edtBuscar: TEdit;
    Panel15: TPanel;
    Panel11: TPanel;
    Panel10: TPanel;
    guardar: TSpeedButton;
    Panel12: TPanel;
    btnCancelar: TSpeedButton;
    Panel16: TPanel;
    pnlEdit: TPanel;
    DBEdit2: TDBEdit;
    Panel18: TPanel;
    Label7: TLabel;
    Panel19: TPanel;
    SpeedButton2: TSpeedButton;
    cxDBImage1: TcxDBImage;
    Panel20: TPanel;
    btnnuevo: TSpeedButton;
    btnElimina: TSpeedButton;
    procedure FormShow(Sender: TObject);
   //  function TraeNumeroOrden(codigo:Integer):Integer;
    procedure guardarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure DsQFabricantesDataChange(Sender: TObject; Field: TField);
    procedure DsQFabricantesUpdateData(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnEliminaClick(Sender: TObject);
  private
   var jpg: TJPEGImage;
    { Private declarations }
  public
    { Public declarations }
  end;
   const

 JPEGstarts = 'FFD8';
 BMPstarts = '424D';  //BM

var
  FmrMant_Categoria: TFmrMant_Categoria;

implementation

uses Unit2,tools, unit19, Unit5, Unit63, UInicio;

{$R *.dfm}


procedure TFmrMant_Categoria.btnsalirClick(Sender: TObject);
begin
 Close;
end;

procedure TFmrMant_Categoria.cxButton1Click(Sender: TObject);
var
  BitmapOriginal,BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
begin
    inherited;
  // verifica que la tabla estee en modo de edicion o de insercion segun sea el caso
     datos.FbCategorias.Edit;

     BitmapNew:= TBitmap.Create;
     BitmapOriginal := TBitmap.Create;
     stream:= TMemoryStream.Create;

     try
    BuscaImagen.Execute;
    FileExt := LowerCase(ExtractFileExt(BuscaImagen.FileName));
    if (FileExt = '.bmp') then
       Graphic:= TBitmap.Create;
    if (FileExt = '.ico') then
       Graphic:= TIcon.Create;
    if (FileExt = '.emf') or (FileExt = '.wmf') then
       Graphic:= TMetafile.Create;
    if (FileExt = '.jpg') or (FileExt = '.jpeg') or (FileExt = '.jpe') then
       Graphic:= TJPEGImage.Create;
    if (FileExt = '.png') then
       Graphic:= TPngImage.Create;
    if (FileExt = '.gif') then
       Graphic:= TGIFImage.Create;
    Graphic.LoadFromFile(BuscaImagen.FileName);
    BitmapOriginal.Assign(Graphic);
    try
       BitmapNew.Width:= 192;
       BitmapNew.Height:= 182;
       BitmapNew.PixelFormat:= pf24bit;
       //cambia el mapa de bits (la foto) original para el nuevo tamaño 192x182
       BitmapNew.Canvas.StretchDraw(BitmapNew.Canvas.ClipRect,BitmapOriginal);
     BitmapNew.SaveToStream(stream);
    finally
       FreeAndNil(BitmapNew);
    end;
  finally
    FreeAndNil(BitmapOriginal);
  end;
// almacena la foto en el campo blob
datos.FbCategoriasIMAGEN.LoadFromStream(stream);
datos.FbCategorias.ApplyUpdates;
FreeAndNil(stream);

end;

procedure TFmrMant_Categoria.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
panel16.Enabled := true;


with datos.FbCategorias do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MTCATEGORIA');
    sql.Add('where codcat=:fff');
    params[0].Value := consultarcodcat.Value;
    open;
  end;



//datos.FbqFabricantesCOD.Value := TraeNumeroOrden(datos.FbqFabricantesCOD.Value);
//datos.FbqFabricantesCOD_FAB.Value := '000'+IntTOStr(datos.FbqFabricantesCOD.Value);
dbedit2.SetFocus;
btnnuevo.Enabled := false;
guardar.Enabled := true;
btncancelar.Enabled := true;
btnelimina.Enabled := false;
end;

procedure TFmrMant_Categoria.DsQFabricantesDataChange(Sender: TObject;
  Field: TField);
var
stream :Tstream;
begin

end;

procedure TFmrMant_Categoria.DsQFabricantesUpdateData(Sender: TObject);
var
stream :Tstream;
begin

end;

procedure TFmrMant_Categoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FmrMant_Categoria := nil;
Action := caFree;
end;

procedure TFmrMant_Categoria.FormShow(Sender: TObject);
begin
consultar.open;

end;

procedure TFmrMant_Categoria.guardarClick(Sender: TObject);
begin

      if dbedit2.Text =''then
        begin
            MsgError('Categoria no puede ser guardado'#13+
      	               'Favor introducir el nombre de la categoria');
            dbedit2.SetFocus;
        end else begin

          datos.FbCategorias.ApplyUpdates;

           // Commit and update button states
          btnnuevo.Enabled := true;

         datos.Data.Commit;
         btnnuevo.Enabled := true;
         guardar.Enabled := false;
         btncancelar.Enabled := false;
         btnelimina.Enabled := true;
              consultar.Refresh;
             // FrmArticulos.qcategoria.close;
             // FrmArticulos.qcategoria.open;
///          SetCommitRollback (False);
            // refresh query resultset
        /// datos.FbtClientes.Refresh;
   // update AutoCommit button state
      ///  g_cambios.Down := datos.Data.AutoCommit;
     end;
end;

procedure TFmrMant_Categoria.SpeedButton1Click(Sender: TObject);
begin

      if dbedit2.Text =''then
        begin
            MsgError('Categoria no puede ser guardado'#13+
      	               'Favor introducir el nombre de la categoria');
            dbedit2.SetFocus;
        end else begin

          datos.FbCategorias.ApplyUpdates;

           // Commit and update button states
          btnnuevo.Enabled := true;

         datos.Data.Commit;
         btnnuevo.Enabled := true;
         guardar.Enabled := false;
        btnCancelar.Enabled := false;
         btnelimina.Enabled := true;
              consultar.Refresh;
             // FrmArticulos.qcategoria.close;
             // FrmArticulos.qcategoria.open;
///          SetCommitRollback (False);
            // refresh query resultset
        /// datos.FbtClientes.Refresh;
   // update AutoCommit button state
      ///  g_cambios.Down := datos.Data.AutoCommit;
     end;
end;

procedure TFmrMant_Categoria.SpeedButton2Click(Sender: TObject);
var
  BitmapOriginal,BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
begin
    inherited;
  // verifica que la tabla estee en modo de edicion o de insercion segun sea el caso
     datos.FbCategorias.Edit;

     BitmapNew:= TBitmap.Create;
     BitmapOriginal := TBitmap.Create;
     stream:= TMemoryStream.Create;

     try
    BuscaImagen.Execute;
    FileExt := LowerCase(ExtractFileExt(BuscaImagen.FileName));
    if (FileExt = '.bmp') then
       Graphic:= TBitmap.Create;
    if (FileExt = '.ico') then
       Graphic:= TIcon.Create;
    if (FileExt = '.emf') or (FileExt = '.wmf') then
       Graphic:= TMetafile.Create;
    if (FileExt = '.jpg') or (FileExt = '.jpeg') or (FileExt = '.jpe') then
       Graphic:= TJPEGImage.Create;
    if (FileExt = '.png') then
       Graphic:= TPngImage.Create;
    if (FileExt = '.gif') then
       Graphic:= TGIFImage.Create;
    Graphic.LoadFromFile(BuscaImagen.FileName);
    BitmapOriginal.Assign(Graphic);
    try
       BitmapNew.Width:= 192;
       BitmapNew.Height:= 182;
       BitmapNew.PixelFormat:= pf24bit;
       //cambia el mapa de bits (la foto) original para el nuevo tamaño 192x182
       BitmapNew.Canvas.StretchDraw(BitmapNew.Canvas.ClipRect,BitmapOriginal);
     BitmapNew.SaveToStream(stream);
    finally
       FreeAndNil(BitmapNew);
    end;
  finally
    FreeAndNil(BitmapOriginal);
  end;
// almacena la foto en el campo blob
datos.FbCategoriasIMAGEN.LoadFromStream(stream);
datos.FbCategorias.ApplyUpdates;
FreeAndNil(stream);

end;

procedure TFmrMant_Categoria.btnEliminaClick(Sender: TObject);
begin
if application.MessageBox ('Realmente deseas eliminar a este registro?','Precausion',Mb_YesNo+MB_IconStop) = Id_yes then
         begin
             datos.FbCategorias.Delete;
             datos.FbCategorias.ApplyUpdates;
             datos.Data.Commit;
              consultar.Refresh;
         end;
end;

procedure TFmrMant_Categoria.btnnuevoClick(Sender: TObject);
begin
panel16.Enabled := true;

with max do
  begin
    close;
    open;
  end;

datos.FbCategorias.Open;

datos.FbCategorias.Insert;
datos.FbCategoriasCODCAT.Value := maxmax.Value + 1;
DATOS.FbCategoriasOPCION.Value := 'SI';

//datos.FbqFabricantesCOD.Value := TraeNumeroOrden(datos.FbqFabricantesCOD.Value);
//datos.FbqFabricantesCOD_FAB.Value := '000'+IntTOStr(datos.FbqFabricantesCOD.Value);
dbedit2.SetFocus;
btnnuevo.Enabled := false;
guardar.Enabled := true;
btncancelar.Enabled := true;
btnElimina.Enabled := false;

end;

procedure TFmrMant_Categoria.SpeedButton4Click(Sender: TObject);
begin
datos.FbCategorias.CancelUpdates;
datos.Data.Rollback;
btnnuevo.Enabled := true;
guardar.Enabled := false;
btnCancelar.Enabled := false;
btnElimina.Enabled := true;
panel16.Enabled := false;
end;

end.
