unit Unit51;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer,
  cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxImage, cxDBEdit, cxGroupBox, cxRadioGroup,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, RxDBComb, cxDropDownEdit,
  cxCalc, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtons, RxLookup,
  cxTextEdit, cxMaskEdit, Vcl.Mask, Vcl.DBCtrls, cxPC, ZAbstractRODataset,
  ZDataset, jpeg,pngimage, GIFImg, Vcl.ExtDlgs;

type
  TFrmGustos = class(TForm)
    op11: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxButton7: TcxButton;
    Edit2: TEdit;
    Edit3: TEdit;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    Label4: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    cxButton1: TcxButton;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxDBImage1: TcxDBImage;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxDBCalcEdit3: TcxDBCalcEdit;
    DsGustos: TDataSource;
    op1: TRxDBComboBox;
    dscategoria: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    b2: TcxButton;
    b3: TcxButton;
    b1: TcxButton;
    numero: TZReadOnlyQuery;
    numeroMAX: TIntegerField;
    btmodi: TcxButton;
    BuscaImagen: TOpenPictureDialog;
    consulta: TZReadOnlyQuery;
    consultaID_SABOR: TIntegerField;
    consultaIDARTICULO: TIntegerField;
    consultaDESCRIPCION: TWideStringField;
    consultaIMAGEN: TBlobField;
    consultaESTADO: TIntegerField;
    consultaCOD_CAT: TIntegerField;
    consultaSTOCK: TFloatField;
    consultaSTOCK_MIN: TFloatField;
    consultaSTOCK_MAX: TFloatField;
    consultaOP: TIntegerField;
    consultaCOSTOS: TFloatField;
    consultaPRECIO: TFloatField;
    consultaCOSTO_PROMEDIO: TFloatField;
    consultaCAT: TWideStringField;
    DsConsulta: TDataSource;
    cxGrid3DBTableView1ID_SABOR: TcxGridDBColumn;
    cxGrid3DBTableView1DESCRIPCION: TcxGridDBColumn;
    Consultar: TcxButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure btmodiClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ConsultarClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGustos: TFrmGustos;

implementation
    uses unit2, tools;
{$R *.dfm}

procedure TFrmGustos.b1Click(Sender: TObject);
begin
with numero do
  begin
    close;
    open;
  end;
  op11.Enabled := true;
  datos.ZqGustos.Open;
  datos.zqgustos.Insert;
  datos.ZqGustosID_SABOR.Value := numeromax.Value + 1;
  op1.ItemIndex := 0;

  dbedit2.SetFocus;

  b2.Enabled := true;
  b3.Enabled := true;
  b1.Enabled := false;
  btmodi.Enabled := false;
end;

procedure TFrmGustos.b2Click(Sender: TObject);
begin
 if dbedit2.Text =''then
        begin
            MsgError('Articulo no puede ser guardado'#13+
      	               'Favor introducir el nombre del cliente');
            dbedit2.SetFocus;
        end else begin


           datos.ZqGustos.ApplyUpdates;
          // Commit and update button states
        //  ibqRarticulos.Refresh;

         datos.Data.Commit;

///          SetCommitRollback (False);
             //refresh query resultset
        /// datos.FbtClientes.Refresh;
   // update AutoCommit button state
      ///  g_cambios.Down := datos.Data.AutoCommit;
      ///
      ///
      //EDIT1.Clear;

      //cxButton5.Enabled := true;

      op11.Enabled := false;
       datos.ZqGustos.Close;

      cxGrid3.Visible := false;

         b2.Enabled := false;
         b3.Enabled := false;
         b1.Enabled := true;
         btmodi.Enabled := true;
         op11.Enabled := false;
     end;
end;

procedure TFrmGustos.b3Click(Sender: TObject);
begin
datos.ZqGustos.Cancel;
datos.ZqGustos.CancelUpdates;
datos.Data.Rollback;
 b2.Enabled := false;
         b3.Enabled := false;
         b1.Enabled := true;
         btmodi.Enabled := true;
         op11.Enabled := false;
end;

procedure TFrmGustos.btmodiClick(Sender: TObject);
begin
close;
end;

procedure TFrmGustos.ConsultarClick(Sender: TObject);
begin
cxGrid3.Visible := true;
consulta.Open;
end;

procedure TFrmGustos.cxButton1Click(Sender: TObject);
var
  BitmapOriginal,BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
begin
    inherited;
  // verifica que la tabla estee en modo de edicion o de insercion segun sea el caso
     datos.MantArt.Edit;

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
datos.MantArtIMAGEN.LoadFromStream(stream);
datos.MantArt.ApplyUpdates;
FreeAndNil(stream);

end;

procedure TFrmGustos.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
with datos.ZqGustos do
 begin
   close;
   sql.Clear;
   sql.Add('select a.*, c.cat from db_sabores a');
   sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
   sql.Add('where a.id_sabor=:oo');
   params[0].Value := consultaid_sabor.Value;
   open;
   end;

    op11.Enabled := true;
     b2.Enabled := true;
  b3.Enabled := true;
  b1.Enabled := false;
  btmodi.Enabled := false;
  cxGrid3.Visible := false;
end;

end.
