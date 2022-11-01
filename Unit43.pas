unit Unit43;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxDBEdit,
  Vcl.StdCtrls, Vcl.Menus, cxButtons, Vcl.ExtCtrls, Vcl.ImgList, Vcl.ExtDlgs, jpeg,
  cxRadioGroup, cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxCalc, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.Mask,
  RxToolEdit, RxDBCtrl, RxDBComb, cxPCdxBarPopupMenu, cxPC, ZAbstractRODataset,
  ZDataset, Printers, AdvExplorerTreeview, Vcl.ComCtrls, TreeList, dxtree,
  cxMemo, dxGDIPlusClasses, cxImage, htmltv, RxClock, RxLookup, Vcl.FileCtrl,
  Winapi.ShlObj, cxShellCommon, cxShellComboBox, cxDBShellComboBox,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu, cxCalendar, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  dxSkinTheBezier, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, chash, IdHashMessageDigest, idHash, IdGlobal,
  acPNG, Vcl.Buttons;

type
  TFrmConfig = class(TForm)
    DsConfig: TDataSource;
    BuscaImagen: TOpenPictureDialog;
    RibbonImages16: TcxImageList;
    RibbonImages32: TcxImageList;
    DSNCF: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    existencia: TZReadOnlyQuery;
    existenciaCOD_ART: TIntegerField;
    existenciaCODIGOTXT: TWideStringField;
    existenciaARTICULO: TWideStringField;
    existenciaMODELO: TWideStringField;
    existenciaMARCA: TWideStringField;
    existenciaCOLOR: TWideStringField;
    existenciaCOD_CAT: TIntegerField;
    existenciaCOD_SERIE: TIntegerField;
    existenciaCOD_ALM: TIntegerField;
    existenciaCOSTO: TFloatField;
    existenciaCOD_PROV1: TIntegerField;
    existenciaEXISTENCIA1: TFloatField;
    existenciaITBIS: TWideStringField;
    existenciaABREVIADO: TWideStringField;
    existenciaCOD_BARRA: TWideStringField;
    existenciaCOD_UV: TIntegerField;
    existenciaUSUARIOMOD: TIntegerField;
    existenciaFECHA_MOD: TDateField;
    existenciaPOLITICA: TWideStringField;
    existenciaCOSTO_PR: TFloatField;
    existenciaIMAGEN: TBlobField;
    existenciaCLA_COSTO: TWideStringField;
    existenciaCLA_PRECIO: TWideStringField;
    existenciaPRECIO_A: TFloatField;
    existenciaPRECIO_B: TFloatField;
    existenciaPRECIO_D: TFloatField;
    existenciaESTADO: TIntegerField;
    existenciaEXTFOTO: TWideStringField;
    existenciaDESCRIPCIONWEB: TWideMemoField;
    existenciaPUBLICARWEB: TIntegerField;
    existenciaCODIGOBARRA: TWideStringField;
    existenciaEMPAQUE: TIntegerField;
    existenciaCANT_EMPA: TFloatField;
    existenciaCOD_PROV2: TIntegerField;
    existenciaCOD_PROV3: TIntegerField;
    existenciaREFERENCIA: TWideStringField;
    existenciaCONDICION: TIntegerField;
    existenciaOPCION_SABOR: TWideStringField;
    existenciaSTOCK_MA: TFloatField;
    existenciaSTOCK_M: TFloatField;
    existenciaFACTOR: TFloatField;
    existenciaTIPO_PRODUCTOS: TWideStringField;
    existenciaFACTURABLE: TIntegerField;
    existenciaSTOCK: TFloatField;
    existenciaOPCIONES_BOLA: TWideStringField;
    existenciaPARTICIONADO: TWideStringField;
    existenciaCOMPUESTO: TWideStringField;
    existenciaBENEFICIOS: TFloatField;
    existenciaMONEDA: TWideStringField;
    existenciaUNIDAD: TWideStringField;
    ZExistencia: TZReadOnlyQuery;
    ZExistenciaIDTIENDA: TIntegerField;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaPRECIO_A: TFloatField;
    ZExistenciaPRECIO_B: TFloatField;
    ZExistenciaPRECIO_D: TFloatField;
    ZExistenciaEXISTENCIA: TFloatField;
    PanelDesc: TcxGroupBox;
    Label24: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton7: TcxButton;
    Facturación: TcxTabSheet;
    cajas: TZReadOnlyQuery;
    cajasID: TIntegerField;
    cajasCAJAS: TWideStringField;
    DsCajas: TDataSource;
    Image1: TImage;
    Image2: TImage;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    DsAlmacenes: TDataSource;
    OpenDialog1: TOpenDialog;
    cxGroupBox5: TcxGroupBox;
    Label37: TLabel;
   // RxDBComboBox10: TRxDBComboBox;
    Label25: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxButton8: TcxButton;
    Label42: TLabel;
   // RxDBComboBox12: TRxDBComboBox;
    Label38: TLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    Label39: TLabel;
  //  RxDBComboBox11: TRxDBComboBox;
    Label47: TLabel;

    Label17: TLabel;
    cxGroupBox6: TcxGroupBox;
    Label19: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label33: TLabel;
    RxDBComboBox8: TRxDBComboBox;
    cxGroupBox7: TcxGroupBox;
    Label44: TLabel;
    Label53: TLabel;
    RxDBComboBox20: TRxDBComboBox;
    Label48: TLabel;
    RxDBComboBox13: TRxDBComboBox;
    Label41: TLabel;
    RxDBComboBox21: TRxDBComboBox;
    cxGroupBox8: TcxGroupBox;
    Label28: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label15: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label29: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label30: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    Label27: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label50: TLabel;
    RxDBComboBox17: TRxDBComboBox;
    Label51: TLabel;
    RxDBComboBox18: TRxDBComboBox;
    DirectoryEdit1: TDirectoryEdit;
    Label11: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxDBToggleSwitch2: TdxDBToggleSwitch;
    dxDBToggleSwitch3: TdxDBToggleSwitch;
    Label12: TLabel;
    RxDBComboBox1: TRxDBComboBox;
  //  RxDBComboBox7: TRxDBComboBox;
    Label13: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    Label14: TLabel;
    RxConfirmarArticulo: TRxDBComboBox;
  //  RxDBComboBox10: TRxDBComboBox;
    RxDBComboBox11: TRxDBComboBox;
    cxGroupBox10: TcxGroupBox;
    Label9: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    Label45: TLabel;
    Label46: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBComboBox2: TcxDBComboBox;
    cxDBComboBox3: TcxDBComboBox;
    cxDBComboBox4: TcxDBComboBox;
    cxDBComboBox1: TcxDBComboBox;
    ePassword: TEdit;
    Label5: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label31: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label18: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label8: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    cxTabSheet2: TcxTabSheet;
    Label35: TLabel;
    cxDBMemo3: TcxDBMemo;
    Label10: TLabel;
    cxDBMemo2: TcxDBMemo;
    Label34: TLabel;
    cxDBMemo4: TcxDBMemo;
    Image3: TImage;
    Label49: TLabel;
    RxDBComboBox16: TRxDBComboBox;
    Label20: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    Label21: TLabel;
    RxDBComboBox12: TRxDBComboBox;
    RxDBComboBox14: TRxDBComboBox;
    Label22: TLabel;
    Panel2: TPanel;
    btnsalir: TSpeedButton;
    Panel3: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label23: TLabel;
    Panel12: TPanel;
    Label26: TLabel;
    lblEstado: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    btnGuardar: TSpeedButton;
    Panel6: TPanel;
    BtnCanelar: TSpeedButton;
    procedure cxButton1Click(Sender: TObject);
    procedure DsConfigDataChange(Sender: TObject; Field: TField);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure dxTreeView1Click(Sender: TObject);
    procedure RxDBComboBox5Change(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure DirectoryEdit1Change(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);


  private
    var jpg: TJPEGImage;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation
 uses unit2, tools, Inicio_Principal, Unit5, uMd5;
{$R *.dfm}


function impresoraDefecto : string;
begin
  if (Printer.PrinterIndex > 0) then
    result := Printer.Printers [Printer.PrinterIndex]
  else
    Result := 'No hay impresora por defecto';
end;



procedure TFrmConfig.BtnCanelarClick(Sender: TObject);
begin
datos.Configuracion.CancelUpdates;
datos.NCF.CancelUpdates;
datos.Data.Rollback;
close;
end;

procedure TFrmConfig.btnGuardarClick(Sender: TObject);
begin

datos.Configuracion.Edit;

datos.ConfiguracionDIRECCION.Value := datos.configuracioncalle.Value+ ', '+datos.ConfiguracionSECTOR.Value+', '+datos.ConfiguracionCIUDAD.Value;

 if ePassword.Text <>'' then
       begin
            datos.configuracionCLAVEAUTORIZACION.Value :=  MD5DigestToHex(CalcMD5(ePassword.Text));
       end;

datos.Configuracion.ApplyUpdates;
datos.NCF.ApplyUpdates;
datos.Data.Commit;

 // FrmInicioHeladeria.imagen_frontal.Reset;
 // FrmInicioHeladeria.imagen_frontal.Left := datos.ZUconfiguracionLEFT_IMAGEN.Value;
 // FrmInicioHeladeria.imagen_frontal.Top := datos.ZUconfiguracionRIGHT_IMAGEN.Value;
 // FrmInicioHeladeria.imagen_frontal.Width := datos.ZUconfiguracionANCHO_IMG_FRONTAL.Value;
 // FrmInicioHeladeria.imagen_frontal.Height := datos.ZUconfiguracionALTO_IMG_FRONTAL.Value;



datos.ZUconfiguracion.Close;
datos.ZUconfiguracion.Open;

close;
end;

procedure TFrmConfig.btnsalirClick(Sender: TObject);
begin

        datos.Configuracion.Edit;

        datos.ConfiguracionDIRECCION.Value := datos.configuracioncalle.Value+ ', '+datos.ConfiguracionSECTOR.Value+', '+datos.ConfiguracionCIUDAD.Value;

         if ePassword.Text <>'' then
               begin
                    datos.configuracionCLAVEAUTORIZACION.Value :=  MD5DigestToHex(CalcMD5(ePassword.Text));
               end;

        datos.Configuracion.ApplyUpdates;
        datos.NCF.ApplyUpdates;
        datos.Data.Commit;
        datos.ZUconfiguracion.Close;
        datos.ZUconfiguracion.Open;

        close;
end;

procedure TFrmConfig.cxButton1Click(Sender: TObject);
var
Stream : TStream ; // TBlobStream does not work
m, f: TStream;
s: string;
Jpg : TJPEGImage;
begin

 if BUSCAimagen.Execute then
  begin
    Jpg := TJPEGImage.Create;
    try
      Jpg.LoadFromFile(BUSCAimagen.FileName);
      datos.Configuracion.Edit;
      datos.Configuracion.FieldByName('LOGO_FRONTAR').Assign(Jpg);
      datos.Configuracionlogof_txt.Value := 'JPG';
//       EDIT1.Clear;
    finally
      Jpg.Free;
    end;
  end;

end;

procedure TFrmConfig.cxButton3Click(Sender: TObject);
var
Stream : TStream ; // TBlobStream does not work
m, f: TStream;
s: string;
Jpg : TJPEGImage;
begin

 if BUSCAimagen.Execute then
  begin
    Jpg := TJPEGImage.Create;
    try
      Jpg.LoadFromFile(BUSCAimagen.FileName);
      datos.Configuracion.Edit;
      datos.Configuracion.FieldByName('LOGO').Assign(Jpg);
      datos.Configuracionlogop_txt.Value := 'JPG';
//       EDIT1.Clear;
    finally
      Jpg.Free;
    end;
  end;

end;

procedure TFrmConfig.cxButton4Click(Sender: TObject);
begin
datos.Configuracion.CancelUpdates;
datos.NCF.CancelUpdates;
datos.Data.Rollback;
close;
end;

procedure TFrmConfig.cxButton5Click(Sender: TObject);
begin




 if application.MessageBox ('Deseas colocar 0 el Contador','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin
               datos.NCF.Edit;
               datos.NCFUSO.Value := 0;
         end;

          datos.NCF.ApplyUpdates;
          datos.NCF.Edit;
          //OPNCF.Visible := FALSE;
end;

procedure TFrmConfig.cxButton6Click(Sender: TObject);
var
totalCoP : double;
TotalCoEx :Double;
begin

almacenes.Open;
//cxgrid2.Visible := true;


end;
 function RoundFives(Numero: Double): Integer;
var
  u, N: Integer;
begin
  N:= Trunc(Numero);
  u:= N - 10 * (N div 10);
  N:= N - u;
  Result:= N;
  if u in[1..5] then
    Result:= N + 5;
  if u in [6..9] then
    Result:= N + 10;
end;

procedure TFrmConfig.cxButton7Click(Sender: TObject);
begin


if cxTextEdit1.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
     begin



    with datos.MantArt do
      begin
        close;
        open;
        first;

        while not eof do
           begin

           if datos.MantArtmoneda.Value = 'NO' then begin

              //  showmessage(''+datos.MantArtARTICULO.Value);
                datos.MantArt.Edit;
                datos.MantArtCOSTO_PR.Value := (DATOS.MantArtcosto_pr.Value / datos.MantArtTAZA_COMPRA.Value) * datos.ZUconfiguracionTAZA.Value;
                datos.MantArtCOSTO.Value :=  (datos.MantArtCOSTO.Value / datos.MantArtTAZA_COMPRA.Value) * datos.ZUconfiguracionTAZA.Value;
//                  datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value + datos.AjusteDCANT.Value;
                datos.MantArttaza_compra.Value := datos.ZUconfiguracionTAZA.Value;
                if datos.mantartmodelo.Value = 'SI' then begin
                    datos.MantArt.Edit;
                  //  datos.MantArtPRECIO_A.Value := RoundFives((datos.MantArtCOSTO.Value * (datos.MantArtBENEFICIOS.Value/100)) + datos.MantArtCOSTO.Value);
                    datos.MantArtPRECIO_B.Value := RoundFives((datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100)) + datos.MantArtCOSTO.Value);
                end;

                if datos.mantartmodelo.Value = 'NO' then begin
                    datos.MantArt.Edit;
                   // datos.MantArtPRECIO_A.Value :=(datos.MantArtCOSTO.Value * (datos.MantArtBENEFICIOS.Value/100)) + datos.MantArtCOSTO.Value;
                    datos.MantArtPRECIO_B.Value := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100)) + datos.MantArtCOSTO.Value;
                    end;
             end;
              datos.MantArt.ApplyUpdates;
            next;
          end;

        end;

          datos.Data.Commit;
          datos.MantArt.close;

          cxTextEdit1.Clear;
          paneldesc.Visible := false;
   end;

end;

procedure TFrmConfig.cxButton8Click(Sender: TObject);
begin
datos.Configuracion.Edit;
datos.ConfiguracionCONTACTO.Value := impresoraDefecto;
end;

procedure TFrmConfig.cxButton9Click(Sender: TObject);
begin
//OpenDialog1;
end;

procedure TFrmConfig.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
//OPNCF.Visible := TRUE;
//cxDBTextEdit8.SetFocus;
end;

procedure TFrmConfig.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
datos.Configuracion.Edit;
datos.ConfiguracionALMACENRMA.Value := almacenesID.Value;
datos.ConfiguracionALMACENNOMBRE.Value := almacenesDESCRIPCION.Value;
//cxgrid2.Visible := false;
almacenes.Close;
end;



procedure TFrmConfig.DirectoryEdit1Change(Sender: TObject);
begin
datos.Configuracion.Edit;
 datos.ConfiguracionROTULO_FC.Value := DirectoryEdit1.Text;
 end;

procedure TFrmConfig.DsConfigDataChange(Sender: TObject; Field: TField);
var
stream :Tstream;
begin

Try

               Stream := TMemoryStream.Create;
               TBlobField(datos.Configuracion.FieldByName('LOGO_FRONTAR')).SaveToStream(Stream);
               if Stream.Size > 0 then
               begin
                 Stream.Position := 0;
                 if Pos(TRIM((datos.Configuracion['logof_txt'])),'.JPEG.JPG')>0 then
                 begin
                     jpg := TJpegImage.Create;
                     jpg.LoadFromStream(Stream);
                    // imagefoto1.Picture.Assign(Jpg);
                     jpg.free;

               stream.Free;
                 end;
               end;
             except
               showmessage('El formato del Archivo o Fotografia es Invalido');
             end;



Try

               Stream := TMemoryStream.Create;
               TBlobField(datos.Configuracion.FieldByName('LOGo')).SaveToStream(Stream);
               if Stream.Size > 0 then
               begin
                 Stream.Position := 0;
                 if Pos(TRIM((datos.Configuracion['logop_txt'])),'.JPEG.JPG')>0 then
                 begin
                     jpg := TJpegImage.Create;
                     jpg.LoadFromStream(Stream);
                  //   imagefoto2.Picture.Assign(Jpg);
                     jpg.free;

               stream.Free;
                 end;
               end;
             except
               showmessage('El formato del Archivo o Fotografia es Invalido');
             end;


    end;

procedure TFrmConfig.dxTreeView1Click(Sender: TObject);
begin

//if dxTreeView1.Selected.StateIndex = 1 then
//  begin
//  cxPageControl1.ActivePageIndex := 0;
//  end;
//
//if dxTreeView1.Selected.StateIndex = 2 then
//  begin
//  cxPageControl1.ActivePageIndex := 4;
//  end;
//
//if dxTreeView1.Selected.StateIndex = 3 then
//  begin
//  cxPageControl1.ActivePageIndex := 1;
//  end;
//
//if dxTreeView1.Selected.StateIndex = 5 then
//  begin
//  cxPageControl1.ActivePageIndex := 3;
//  end;
//
//  if dxTreeView1.Selected.StateIndex = 6 then
//  begin
//  cxPageControl1.ActivePageIndex := 5;
//  end;
end;

procedure TFrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmConfig := nil;
Action := caFree;
end;

procedure TFrmConfig.FormShow(Sender: TObject);
begin

with datos.NCF do
  begin
    close;
    sql.Clear;
    sql.Add('select * from ncf');
    open;

  end;

datos.Configuracion.Close;
datos.Configuracion.open;

datos.Configuracion.Edit;
ePassword.Clear;
//cxDBTextEdit11.text := MD5DigestToHex(CalcMD5(datos.configuracionCLAVEAUTORIZACION.Value));

cxPageControl1.ActivePageIndex := 0;

end;

procedure TFrmConfig.RxDBComboBox5Change(Sender: TObject);
begin
// if RxDBComboBox5.ItemIndex = 0 then
//       begin
//            FrmArticulos.label22.Visible := true;
//            FrmArticulos.redondeocompleto.Visible := true;
//       end else
//          if RxDBComboBox5.ItemIndex = 1 then
//       begin
//            FrmArticulos.label22.Visible := false;
//            FrmArticulos.redondeocompleto.Visible := false;
//       end;
end;

end.
