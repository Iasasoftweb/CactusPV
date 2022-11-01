unit Unit12;

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
  ZDataset, ZAbstractRODataset, ZAbstractDataset, StdCtrls, Mask, DBCtrls,
  Buttons, dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  cxContainer, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxCurrencyEdit, RxDBComb, Vcl.Menus, cxButtons, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ExtDlgs, jpeg, pngimage, GIFImg,
  cxImage, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxGDIPlusClasses, System.ImageList;

type
  TFrmEmpleados = class(TForm)
    numero_cliente: TZQuery;
    FbqEmpleados: TZReadOnlyQuery;
    DsEmpleados: TDataSource;
    Edit1: TEdit;
    FbqEmpleadosNOMBRES_EMP: TWideStringField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    numero_clienteNUMERO: TIntegerField;
    FbqEmpleadosCOD_EMP: TWideStringField;
    op: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox3: TDBComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label8: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Zqtienda: TZReadOnlyQuery;
    ZqtiendaTIENDAID: TIntegerField;
    ZqtiendaDESCRIPCION: TWideStringField;
    ZqtiendaESTADO: TIntegerField;
    ZqtiendaDIRECCCION: TWideStringField;
    ZqtiendaCIUDAD: TWideStringField;
    ZqtiendaTELEFONO1: TWideStringField;
    ZqtiendaTELEFONO2: TWideStringField;
    ZqtiendaRNC: TWideStringField;
    Dstienda: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    BuscaImagen: TOpenPictureDialog;
    RibbonImages16: TcxImageList;
    RibbonImages32: TcxImageList;
    b4: TcxButton;
    cxDBImage1: TcxDBImage;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label13: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    function TraeNumeroOrden(codigo:Integer):Integer;
    procedure BitBtn4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpleados: TFrmEmpleados;

implementation

{$R *.dfm}
 uses tools, Unit2, unit19, Unit63, UInicio;

function TFrmEmpleados.TraeNumeroOrden(codigo:Integer):Integer;
begin

   with numero_cliente do
     begin
     close;
     open;
   end;
   if numero_cliente.Fields[0].IsNull then
      Result := 1
   else
      Result := numero_cliente.Fields[0].Value + 1;

end;

procedure TFrmEmpleados.b4Click(Sender: TObject);
var
  BitmapOriginal,BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
begin
    inherited;
  // verifica que la tabla estee en modo de edicion o de insercion segun sea el caso
     DATOS.ZEmpleados.Edit;

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
DATOS.ZEmpleadosIMAGEN.LoadFromStream(stream);
DATOS.ZEmpleados.ApplyUpdates;
FreeAndNil(stream);

end;

procedure TFrmEmpleados.BitBtn4Click(Sender: TObject);
begin
if application.MessageBox ('Realmente deseas eliminar a este Empleado?','Precausion',Mb_YesNo+MB_IconStop) = Id_yes then
         begin
             datos.ZEmpleados.Delete;
             datos.ZEmpleados.ApplyUpdates;
             datos.Data.Commit;
             datos.ZEmpleados.Refresh;
             fbqempleados.Refresh;


         end;
end;

procedure TFrmEmpleados.cxButton1Click(Sender: TObject);
begin
datos.ZEmpleados.Open;
zqtienda.Open;
datos.ZEmpleados.insert;
datos.ZEmpleadosCOD_EMP1.Value := TraeNumeroOrden(datos.FbtClientescodigo.Value);
datos.ZEmpleadosCOD_EMP.Value := '000'+INtToStr(datos.ZEmpleadosCOD_EMP1.Value);
datos.ZEmpleadosESTADOS.Value := 1;

cxButton1.Enabled := false;
cxButton2.Enabled := true;
cxButton3.Enabled := true;
op.Enabled := true;


end;

procedure TFrmEmpleados.cxButton2Click(Sender: TObject);
begin

 if dbedit2.Text =''then
        begin
            MsgError('Empleado no puede ser guardado'#13+
      	               'Favor introducir el nombre del Empleado');
            dbedit2.SetFocus;
        end else begin

          DATOS.ZEmpleados.ApplyUpdates;
          // Commit and update button states
          fbqempleados.Refresh;
           datos.Data.Commit;

            // refresh query resultset
         DATOS.ZEmpleados.Refresh;
         zqtienda.Close;
         datos.ZEmpleados.Close;

          cxButton1.Enabled := true;
          cxButton2.Enabled := false;
          cxButton3.Enabled := false;
          op.Enabled := false;

end;
end;

procedure TFrmEmpleados.cxButton3Click(Sender: TObject);
begin
datos.ZEmpleados.CancelUpdates;
  zqtienda.Close;
  datos.ZEmpleados.Close;

          cxButton1.Enabled := true;
          cxButton2.Enabled := false;
          cxButton3.Enabled := false;
          op.Enabled := false;
end;

procedure TFrmEmpleados.cxButton4Click(Sender: TObject);
begin
datos.ZEmpleados.CancelUpdates;
  zqtienda.Close;
  datos.ZEmpleados.Close;

          cxButton1.Enabled := true;
          cxButton2.Enabled := false;
          cxButton3.Enabled := false;
          op.Enabled := false;

          close;
end;

procedure TFrmEmpleados.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

with datos.ZEmpleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where cod_emp =:oo');
    params[0].Value := fbqempleadoscod_emp.Value;
    open;
  end;

  zqtienda.Open;

cxButton1.Enabled := false;
cxButton2.Enabled := true;
cxButton3.Enabled := true;
op.Enabled := true;


end;

procedure TFrmEmpleados.Edit1Change(Sender: TObject);
begin
with fbqempleados do
  begin
    close;
    sql.Clear;
    sql.Add('select nombres_emp,cod_emp from mtempleado');
    sql.Add('where nombres_emp like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;

procedure TFrmEmpleados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEmpleados := nil;
Action := caFree;
end;

procedure TFrmEmpleados.FormCreate(Sender: TObject);
begin
datos.ZEmpleados.Open;
fbqempleados.Open;
end;


end.
