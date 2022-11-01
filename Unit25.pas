unit Unit25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxGroupBox, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit,
  Vcl.StdCtrls, Vcl.Menus, cxButtons, ZAbstractRODataset, ZDataset, RxDBComb,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ZAbstractDataset, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  cxPC, idHashMessageDigest, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxTLData, cxDBTL, cxCheckBox, Vcl.ComCtrls, dxtree, dxdbtree, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImage, Vcl.ExtCtrls,
  chash,  dxGDIPlusClasses, acPNG, Vcl.Buttons;

type
  TFrmUsuario = class(TForm)
    Opgeneral: TcxGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    ZqEmpleados: TZReadOnlyQuery;
    ZqEmpleadosNOMBRES_EMP: TWideStringField;
    ZqEmpleadosCOD_EMP1: TIntegerField;
    DsZqEmpleados: TDataSource;
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
    numero: TZQuery;
    numeroNUMERO: TIntegerField;
    Zqusuario: TZReadOnlyQuery;
    dsqusuario: TDataSource;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZqEmpleadosTIENDAID: TIntegerField;
    QSESSIONES: TZReadOnlyQuery;
    dSsECCIONES: TDataSource;
    ZqusuarioIDSESSION: TIntegerField;
    cxDBComboBox1: TcxDBComboBox;
    Label7: TLabel;
    SihayPass: TZReadOnlyQuery;
    SihayPassUSUARIOID: TIntegerField;
    SihayPassEMPLEADOID: TIntegerField;
    SihayPassTIPO: TIntegerField;
    SihayPassPASSW: TWideStringField;
    SihayPassIDAC: TWideStringField;
    SihayPassIDSESSION: TIntegerField;
    SihayPassESTADO1: TWideStringField;
    SihayPassDESCUENTO: TIntegerField;
    SihayPassNOMBRES_EMP: TWideStringField;
    Opbusca: TcxGroupBox;
    Edit1: TEdit;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    DsPerfil: TDataSource;
    NumeroPerfil: TZReadOnlyQuery;
    cxButton6: TcxButton;
    NumeroPerfilGEN_ID: TLargeintField;
    QconsultaPerfil: TZReadOnlyQuery;
    QconsultaPerfilID: TIntegerField;
    QconsultaPerfilNOMBRE_PANTALLAS: TWideStringField;
    QconsultaPerfilNOMBRE_FORM: TWideStringField;
    QconsultaPerfilSECCION: TWideStringField;
    QconsultaPerfilBOTON: TWideStringField;
    QconsultaPerfilESTADO: TWideStringField;
    QconsultaPerfilIDNIVEL: TIntegerField;
    QconsultaPerfilIDMODULO: TIntegerField;
    cxPageControl1: TcxPageControl;
    pG1: TcxTabSheet;
    pg3: TcxTabSheet;
    pg4: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1NOMBRE_PANTALLAS: TcxGridDBColumn;
    cxGrid3DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    pg2: TcxTabSheet;
    cxTabSheet1: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid9: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Panel1: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Label4: TLabel;
    Label5: TLabel;
    cxDBImage1: TcxDBImage;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    Edit2: TEdit;
    ePassword: TEdit;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Panel17: TPanel;
    SpeedButton9: TSpeedButton;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuario: TFrmUsuario;

implementation
uses tools, unit2, unit19, Unit63, Unit1, UInicio, UBuscarUsuarios, uGetSesion;
{$R *.dfm}

procedure TFrmUsuario.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmUsuario.cxButton2Click(Sender: TObject);
begin
zqtienda.Open;
datos.ZUsaurios.Open;

with numero do
  begin
    close;
    sql.Clear;
    sql.Add('select max(USUARIOID) numero  from MUSUARIO');
    open;
  end;

datos.ZUsaurios.Insert;
datos.ZUsauriosUSUARIOID.Value := numeronumero.Value + 1;
datos.ZUsauriosESTADO1.Value := 'ACTIVO';
opgeneral.Enabled := true;
cxButton3.Enabled := true;
cxButton4.Enabled := true;
cxButton2.Enabled := false;
cxButton6.Enabled := true;
qsessiones.Open;
cxPageControl1.Enabled := TRUE;


end;

procedure TFrmUsuario.cxButton3Click(Sender: TObject);
begin
if cxDBTextEdit1.Text ='' then
  begin
    Showmessage('**Regestro no puede ser guardado**');
  end else begin

     if ePassword.Text <>'' then
       begin
            datos.ZUsaurios.edit;
            datos.ZUsauriosPASSW.Value    := MD5DigestToHex(CalcMD5(ePassword.Text));
       end;

    datos.ZUsaurios.ApplyUpdates;
    datos.data.Commit;
    datos.ZUsaurios.Close;
    opgeneral.Enabled := false;
    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;
    cxButton6.Enabled := false;

   qsessiones.close;
   datos.Qperfil.Close;
   cxPageControl1.Enabled := FALSE;
  end;


end;

procedure TFrmUsuario.cxButton4Click(Sender: TObject);
begin
datos.ZUsaurios.CancelUpdates;
datos.Data.Rollback;

    opgeneral.Enabled := false;
    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;
     cxButton6.Enabled := false;
         datos.Qperfil.Close;
         cxPageControl1.Enabled := FALSE;
       close;

end;


procedure TFrmUsuario.cxButton5Click(Sender: TObject);
begin

   datos.ZUsaurios.Close;
    opgeneral.Enabled := false;
    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;
     cxButton6.Enabled := false;
     cxPageControl1.Enabled := FALSE;
   close;


end;

procedure TFrmUsuario.cxButton7Click(Sender: TObject);
var
  BitmapOriginal,BitmapNew: TBitmap;
  FileExt: string;
  Graphic: TGraphic;
  stream: TMemoryStream;
begin
    inherited;
  // verifica que la tabla estee en modo de edicion o de insercion segun sea el caso

//    ZqAvatar.Edit;
//
//     BitmapNew:= TBitmap.Create;
//     BitmapOriginal := TBitmap.Create;
//     stream:= TMemoryStream.Create;
//
//     try
//    BuscaImagen.Execute;
//    FileExt := LowerCase(ExtractFileExt(BuscaImagen.FileName));
//    if (FileExt = '.bmp') then
//       Graphic:= TBitmap.Create;
//    if (FileExt = '.ico') then
//       Graphic:= TIcon.Create;
//    if (FileExt = '.emf') or (FileExt = '.wmf') then
//       Graphic:= TMetafile.Create;
//    if (FileExt = '.jpg') or (FileExt = '.jpeg') or (FileExt = '.jpe') then
//       Graphic:= TJPEGImage.Create;
//    if (FileExt = '.png') then
//       Graphic:= TPngImage.Create;
//    if (FileExt = '.gif') then
//       Graphic:= TGIFImage.Create;
//    Graphic.LoadFromFile(BuscaImagen.FileName);
//    BitmapOriginal.Assign(Graphic);
//    try
//       BitmapNew.Width:= 192;
//       BitmapNew.Height:= 182;
//       BitmapNew.PixelFormat:= pf24bit;
//       //cambia el mapa de bits (la foto) original para el nuevo tamaño 192x182
//       BitmapNew.Canvas.StretchDraw(BitmapNew.Canvas.ClipRect,BitmapOriginal);
//       BitmapNew.SaveToStream(stream);
//    finally
//       FreeAndNil(BitmapNew);
//    end;
//  finally
//    FreeAndNil(BitmapOriginal);
//  end;
//// almacena la foto en el campo blob
//ZqAvatarIMAGEN.LoadFromStream(stream);
////datos.MantArt.post;
//FreeAndNil(stream);


end;

procedure TFrmUsuario.cxButton8Click(Sender: TObject);
begin
FBuscarUsuarios.showmodal;
end;

procedure TFrmUsuario.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

datos.ZUsaurios.Edit;
datos.ZUsauriosEMPLEADOID.Value := ZqempleadosCOD_EMP1.Value;
datos.ZUsauriosNOMBRES_EMP.Value := zqempleadosnombres_emp.Value;
datos.ZUsauriosTIENDAID.Value := zqempleadostiendaID.Value;
opbusca.Visible := false;

end;

procedure TFrmUsuario.cxPageControl1Change(Sender: TObject);
begin
 if cxPageControl1.ActivePageIndex = 0 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          Params[0].Value := 'Operacion';
          open;
        end;
   end;


   if cxPageControl1.ActivePageIndex = 1 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          Params[0].Value := 'Inventario';
          open;
        end;
   end;

    if cxPageControl1.ActivePageIndex = 2 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          Params[0].Value := 'Contabilidad';
          open;
        end;
   end;

      if cxPageControl1.ActivePageIndex = 3 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          Params[0].Value := 'Facturacion';
          open;
        end;
   end;

     if cxPageControl1.ActivePageIndex = 4 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          Params[0].Value := 'Reportes';
          open;
        end;
   end;

    if cxPageControl1.ActivePageIndex = 5 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          Params[0].Value := 'Utilidad';
          open;
        end;
   end;

   if cxPageControl1.ActivePageIndex = 6 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          Params[0].Value := 'Mantenimiento';
          open;
        end;
   end;
end;

procedure TFrmUsuario.Edit1Change(Sender: TObject);
begin
with zqempleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where nombres_emp like '+#39+'%'+Edit1.Text+'%'+#39);
    open;
  end;
end;

procedure TFrmUsuario.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = vk_return then
  begin
    cxGrid2.SetFocus;
  end;

end;
procedure TFrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmUsuario := nil;
Action := caFree;
end;

procedure TFrmUsuario.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
datos.ZUsaurios.CancelUpdates;
datos.Data.Rollback;

    opgeneral.Enabled := false;
    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    cxButton2.Enabled := true;
     cxButton6.Enabled := false;
         datos.Qperfil.Close;
         cxPageControl1.Enabled := FALSE;
       close;
end;

procedure TFrmUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = vk_escape then
  begin
    opbusca.Visible := false;
  end;

end;
procedure TFrmUsuario.FormShow(Sender: TObject);
begin
zqusuario.Open;
cxPageControl1.Enabled := FALSE;
end;

procedure TFrmUsuario.SpeedButton1Click(Sender: TObject);
begin
if FGetSession = nil then
  begin
    FGetSession := TFGetSession.Create(self);
    FGetSession.edit1.text := 'USUARIO';
    FGetSession.ShowModal;
  end;

end;

procedure TFrmUsuario.SpeedButton9Click(Sender: TObject);
begin
zqEmpleados.Open;
opbusca.Visible := true;
edit1.SetFocus;
end;

end.
