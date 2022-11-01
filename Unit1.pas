unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, DBCtrls, StdCtrls, DB,
  Buttons, FMTBcd, SqlExpr, Grids, DBGrids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  GIFImg, Menus, cxButtons, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  dxGDIPlusClasses, dxBevel, cxImage, RxCtrls, RxGIF, cxLabel, cxDBEdit,
  ZAbstractRODataset, ZDataset, dateUtils, vcl.fcimage, vcl.fcimageform,
  vcl.fcButton, vcl.fcImgBtn, ZAbstractDataset, cxCurrencyEdit, cxCheckBox,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier, chash, Router4d, Router4d.Interfaces,
  acPNG;

type
  TfrmLogin = class(TForm, iRouter4DComponent)
    DsEmpleados: TDataSource;
    DsConfig: TDataSource;
    zqcaja: TZReadOnlyQuery;
    zqcajaIDCAJA: TIntegerField;
    zqcajaCAJA_NOMBRE: TWideStringField;
    zqcajaESTADO: TIntegerField;
    zqcajaSECUENCIAFACT: TIntegerField;
    zqcajaNCFID: TIntegerField;
    zqcajaCONDICION: TWideStringField;
    zqcajaTABLAARTICULOS: TWideStringField;
    zqcajaTABLAMASTERFACT: TWideStringField;
    zqcajaTABLADETALLEFACT: TWideStringField;
    dscaja: TDataSource;
    usuario: TZReadOnlyQuery;
    usuarioUSUARIOID: TIntegerField;
    usuarioEMPLEADOID: TIntegerField;
    usuarioTIPO: TIntegerField;
    usuarioPASSW: TWideStringField;
    usuarioIDAC: TWideStringField;
    usuarioNOMBRES_EMP: TWideStringField;
    usuarioTIENDAID: TIntegerField;
    usuarioDESCRIPCION: TWideStringField;
    usuarioCARGO: TWideStringField;
    DataSource1: TDataSource;
    maxcaja: TZReadOnlyQuery;
    maxcajaMAX: TIntegerField;
    usuarioTIPOS: TWideStringField;
    zcaja1: TZQuery;
    zcaja1CUADRE1: TIntegerField;
    zcaja1FECHA: TDateField;
    zcaja1USAURIOID: TIntegerField;
    zcaja1MONTOINICIAL: TFloatField;
    zcaja1TOTAL_EFECTIVO: TFloatField;
    zcaja1VENTAS: TFloatField;
    zcaja1GASTOS: TFloatField;
    zcaja1COBRANZAS: TFloatField;
    zcaja1NOTACREDITO: TFloatField;
    zcaja1FECTIVO: TFloatField;
    zcaja1TARJETA: TFloatField;
    zcaja1CHEQUE: TFloatField;
    zcaja1ESTADO: TIntegerField;
    zcaja1NOMBRES_EMP: TWideStringField;
    zcaja1TOTAL_GASTOS: TFloatField;
    zcaja1ESTADO_1: TWideStringField;
    zcaja1BONOS: TFloatField;
    zcaja1CAJA: TWideStringField;
    Panel3: TPanel;
    montoinicial: TcxCurrencyEdit;
    Label1: TLabel;
    cxImage1: TcxImage;
    cxButton2: TcxButton;
    ZqTurno: TZReadOnlyQuery;
    ZqTurnoTURNOID: TIntegerField;
    ZqTurnoUSUARIOID: TIntegerField;
    ZqTurnoEFECTIVO_INICIAL: TFloatField;
    ZqTurnoESTADO: TIntegerField;
    ZqTurnoFECHA: TDateField;
    ZqTurnoIDTURNO: TIntegerField;
    ZqTurnoCAJA: TWideStringField;
    ZqTurnoHORA: TTimeField;
    usuarioIDSESSION: TIntegerField;
    usuarioESTADO1: TWideStringField;
    pnlLogin: TPanel;
    imgHidden: TImage;
    imgShow: TImage;
    btnExit: TSpeedButton;
    shpBorde: TShape;
    pnlImagen: TPanel;
    imgFondo: TImage;
    pnlUsuario: TPanel;
    Label5: TLabel;
    usuario1: TcxLookupComboBox;
    pnlBorde: TPanel;
    pnlPassword: TPanel;
    Label6: TLabel;
    Panel2: TPanel;
    clave: TcxTextEdit;
    pnlBtnEntrar: TPanel;
    btnEntrar: TSpeedButton;
    pnlCanlar: TPanel;
    spCancelar: TSpeedButton;
    Panel1: TPanel;
    Label9: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure claveKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure DsConfigDataChange(Sender: TObject; Field: TField);
    procedure ok1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgHiddenClick(Sender: TObject);
    procedure imgShowClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);

  
   // function RenombrarArchivo(RutaAnterior, NuevaRuta:string):boolean;
   private
    var jpg: TJPEGImage;
   veces : byte;

    function Render : TForm;
  procedure UnRender;

    { Private declarations }
  public
     Cierro : Boolean;
      usercontrol : string;
      class function ejecutar : Boolean;
  end;

var
  frmLogin: TfrmLogin;

implementation
 uses tools, Unit2, acceso, Unit63, UInicio;
{$R *.dfm}

procedure TfrmLogin.claveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
    begin
      btnEntrar.Click;
    end;

end;

procedure TfrmLogin.cxButton1Click(Sender: TObject);
begin
//if edit1.Text = '1' then
//  begin
//  cierro := true;
//     close;
//     edit1.Clear;
//  end else begin
//datos.ibqempleados.Close;
//	Application.Terminate;
//  end;
end;

procedure TfrmLogin.cxButton2Click(Sender: TObject);
begin


                          with maxcaja do
                              begin
                                close;
                                open;
                              end;

                              //datos.zcaja.Open;
                              datos.zcaja.Insert;
                              datos.zcajaCUADRE1.Value := maxcajamax.Value + 1;
                              datos.zcajaFECHA.Value := now();
                              datos.zcajaUSAURIOID.Value := asignausuario;
                              datos.zcaja.Edit;
                              datos.zcajaMONTOINICIAL.Value       := montoinicial.Value;
                              datos.zcajaTOTAL_EFECTIVO.Value     := 0.00;
                              datos.zcajaESTADO.Value             := 1;
                              datos.zcajaESTADO_1.Value           := 'NO';
                              datos.zcajaVENTAS.Value             := 0.00;
                              datos.zcajaCOBRANZAS.Value          := 0.00;
                              datos.zcajaFECTIVO.Value            := 0.00;
                              datos.zcajaTARJETA.Value            := 0.00;
                              datos.zcajaCHEQUE.Value             := 0.00;
                              datos.zcajaNOTACREDITO.Value        := 0.00;
                              datos.zcajaGASTOS.Value             := 0.00;
                              datos.zcajaBONOS.Value              := 0.00;
                              datos.zcajaTOTAL_GASTOS.Value       := 0.00;
                              datos.zcajaTOTAL_EFECTIVO.Value     := 0.00;
                              if datos.ZUconfiguracionUSOAPLICACION.Value = 'Caja-Unica' then begin
                                    datos.zcajacaja.Value               := asignacaja;
                              end else begin
                               //     datos.zcajacaja.Value               := DBLookupComboBox1.Text;
                              end;
                              datos.zcaja.ApplyUpdates;
                              datos.Data.Commit;



                               inicioMDI.barrastatus.Panels.Items[4].Text :='Usuario  :'+asignaNusuario;
                 inicioMDI.barrastatus.Panels.Items[5].Text :='Tipo Usuario :'+asignatipo;

                 if asignacaja ='' then
                   begin
                          inicioMDI.barrastatus.Panels.Items[6].Text :='No Existe Caja Abierta';
                          //InicioMDI.AdvGlowButton1.Enabled := false;
                   end else begin
                          inicioMDI.barrastatus.Panels.Items[6].Text :='Caja Abierta    :'+asignacaja+'  ';
                         // InicioMDI.AdvGlowButton1.Enabled := true;
                   end;

                 cierro := true;
                 close;
                 panel3.Visible := false;
end;

procedure TfrmLogin.cxCheckBox1PropertiesChange(Sender: TObject);
begin
//if cxCheckBox1.Checked = true then
//   begin
//         clave.Properties.EchoMode :=eemNormal;
//   end else begin
//               clave.Properties.EchoMode := eemPassword;
//            end;
end;

procedure TfrmLogin.DsConfigDataChange(Sender: TObject; Field: TField);
var
stream :Tstream;
begin



end;

class function TfrmLogin.ejecutar: Boolean;
begin
    with TfrmLogin.Create(nil) do
    try
      Result := ShowModal = mrOk;
    finally

        Free;
    end;
end;

function RenombrarArchivo(RutaAnterior, NuevaRuta:string):boolean;
begin
    if (RenameFile(RutaAnterior, NuevaRuta)) then
    begin
        //Renombrado
        Result:=true;
    end
    else
    begin
        //No renombrado
        Result:=false;
    end;
end;



procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin

datos.ZUconfiguracion.Open;
Veces := Veces + 1;

///***** aUTENTICAR /**


      with datos.ZqUsuarios do
           begin
             close;
             sql.clear;
             sql.Add('select a.*, b.NOMBRES_EMP,B.tiendaid,C.nombre_session,b.cargo, B.TIPO TIPOS from musuario a');
             sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
             sql.Add('left join tb_sesion c On A.idsession = C.id');
             sql.Add('where a.PASSW ='#39+MD5DigestToHex(CalcMD5(clave.Text))+#39);
             sql.Add('and NOMBRES_EMP ='#39+Trim(usuario1.Text)+#39);
            open;
           end;


            if datos.ZqUsuarios.RecordCount = 0 then
             begin

                    MsgViewError('Clave Incorrecta !!');
                  if veces < 3 then
                    begin
                        Clave.Text := '';
                        Clave.SetFocus;
                       end else        begin
                          MsgViewError('Acceso Denegado... Adios!!');
                          //datos.ZqUsuarios.Close;
                          usercontrol := '';
                          Application.Terminate;
                      end;

                   end else IF datos.ZqUsuarios.RecordCount > 0 THEN begin

                                 with zqturno do
                                    begin
                                      close;
                                      sql.Clear;
                                      sql.Add('select * from turnos');
                                      sql.Add('where estado =:Est');
                                      sql.Add('and usuarioId =:Usua');
                                      params[0].Value := 1;
                                      params[1].Value := datos.ZqUsuariosUSUARIOID.Value;
                                      open;
                                    end;

                                 if zqturno.RecordCount > 0 then
                                    begin
                                   //   InicioMDI.BTCerrarTurno.Caption := 'Cerrar o  Consultar Turno';
                                   FrmHome.barrastatus.Panels.Items[3].Text :='Ya hay un turno abierto *****  ';
                                    end else begin
                                //      InicioMDI.BTCerrarTurno.Caption := 'Abrir Turno';
                                 FrmHome.barrastatus.Panels.Items[3].Text :='No Existe Turno Abierto *****  ';
                                    end;

                                // FrmHome.barrastatus.Panels.Items[2].Text :='Usuario Activo : '+Datos.ZqUsuariosNOMBRES_EMP.Value;
                                 frmHome.lblUsuario.Caption     := Datos.zqusuariosnombre_session.value;
                                 frmhome.Label6.Caption         := Datos.ZqUsuariosNOMBRES_EMP.Value;
                                 ClaveAnular    := datos.ZUconfiguracionCLAVEAUTORIZACION.value;
//                                 ShowMessage(''+ClaveAnular);
                                 AsignaTienda   := datos.ZqUsuariostipo.Value;
                                 AsignaUsuario  := datos.ZqUsuariosUSUARIOID.Value;
                                 asignaNusuario := datos.ZqUsuariosNOMBRES_EMP.Value;
                                // asignatipo     := datos.ZqUsuariostipos.Value;
                                 AsignaTurno    := zqturnoIdTurno.Value;
                                 AsignaPerfil   := datos.ZqUsuariosIDSESSION.Value;
//
//                                    if edit2.Text <>'' then begin
//                                        begin
//                                            FrmHome.permisos;
//                                        end;
//                                    end;
//
//                                    edit2.Clear;
                                 close;


                              //   AsignaCaja    := DBLookupComboBox1.Text;

                   end;
end;

procedure TfrmLogin.btnExitClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure SetTransparent ( Aform : TForm ; AValue : Boolean );
begin
  Aform.TransparentColor := AValue ;
  Aform.TransparentColorValue := Aform.Color ;
end ;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
frmLogin := Nil;
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssAlt in Shift) and (Key = VK_F4)) then
    Key := 0;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
{if Key = #13 then
  	begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  	end;
 }
end;

procedure TfrmLogin.FormResize(Sender: TObject);
begin
pnllogin.Top := (screen.Height div 2) - (pnllogin.Height div 2);
pnllogin.Left := (screen.Width div 2) - (pnllogin.Width div 2);

end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
//panel1.left:= (screen.width div 2) - panel1.width div 2;
//panel1.top:= (screen.height div 2) - panel1.height div 2;
//frmLogin.WindowState := wsMaximized;



   	Cierro := False;


  datos.ZUconfiguracion.Open;
  datos.ZqUsuarios.Close;
  datos.ZqUsuarios.Open;
  zqcaja.Close;
  zqcaja.open;
  usuario.Open;

  if datos.ZUconfiguracionUSOAPLICACION.Value ='Caja-Unica' then
     begin

       //CxLabel5.Visible := false;

       //DBLookupComboBox1.Text := 'CAJA 1';
       //DBLookupComboBox1.Visible := false;

     end else  begin
      // CxLabel5.Visible := true;

     //  DBLookupComboBox1.Text := 'CAJA 1';
      // DBLookupComboBox1.Visible := true;
     end;
//  usuario1.SetFocus;

//function RenombrarArchivo(RutaAnterior, NuevaRuta:string):boolean;

RenameFIle('c:\windows\system\TimeDate.Cpl', 'c:\windows\system\XXTimeDate.Cpl');
end;

procedure TfrmLogin.imgHiddenClick(Sender: TObject);
begin
   clave.Properties.EchoMode :=eemNormal;
   imgHidden.Visible := false;
   imgshow.Visible := true;
end;

procedure TfrmLogin.imgShowClick(Sender: TObject);
begin
   clave.Properties.EchoMode :=eemPassword;
   imgHidden.Visible := true;
   imgshow.Visible := false;
end;

procedure TfrmLogin.ok1Click(Sender: TObject);
begin
Cierro := True;

          with datos.ZqUsuarios do
           begin
             close;
             sql.clear;
             sql.Add('select a.*, b.NOMBRES_EMP,B.tiendaid,c.descripcion,b.cargo from musuario a');
             sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
             sql.Add('left JOIN TIENDA C On b.tiendaid = c.tiendaid');
             sql.Add('where a.PASSW ='#39+clave.Text+#39);
           //  sql.Add('and NOMBRES_EMP ='#39+Trim(datos.ibqempleadosnombres_emp.Value)+#39);
            open;
           end;

//           frmprincipal.DBText1.Caption := datos.ibqempleadosnombres_emp.Value;
  //         frmprincipal.DBText2.Caption := datos.ibqempleadostipo.Value;
    //       frmprincipal.edit1.text := datos.ibqempleadosnombres_emp.Value;
             AsignaTienda  := datos.ZqUsuariostipo.Value;
             AsignaUsuario := datos.ZqUsuariosUSUARIOID.Value;






           if datos.ZqUsuariosTIPO.Value = 2 then
               BEGIN
                 { inicio.MainMenu1.Items[0].Items[0].Enabled := false;
                   inicio.MainMenu1.Items[0].Items[1].Enabled := false;
                   inicio.MainMenu1.Items[0].Items[3].Enabled := false;
                   inicio.MainMenu1.Items[3].Enabled := false;
                   inicio.MainMenu1.Items[4].Enabled := false;
                   inicio.dxNavBar1Item1.Enabled := false;
                   inicio.dxNavBar1Item2.Enabled := false;
                   inicio.dxNavBar1Item3.Enabled := false;
                   inicio.dxNavBar1Item4.Enabled := false;
                   inicio.dxNavBar1Item5.Enabled := false;
                   inicio.dxNavBar1Item6.Enabled := false;
                   inicio.dxNavBar1Item7.Enabled := false;
                   inicio.dxNavBar1Item19.Enabled := false;
                   inicio.dxNavBar1Item11.Enabled := false;
                   inicio.dxNavBar1Item8.Enabled := false;
                    inicio.dxNavBar1Item17.Enabled := false;    }

      //           frmprincipal.cxButton2.Enabled := TRUE;
        //         frmprincipal.cxButton3.Enabled := TRUE;
          //       frmprincipal.cxButton4.Enabled := TRUE;
            //     frmprincipal.MainMenu1.Items[0].Enabled := true;
 //                frmprincipal.MainMenu1.Items[1].Enabled := true;
 //                frmprincipal.MainMenu1.Items[2].Enabled := true;
 //                frmprincipal.MainMenu1.Items[3].Enabled := true;
//                 frmprincipal.MainMenu1.Items[4].Enabled := true;
               END

               ELSE BEGIN
//                 frmprincipal.cxButton2.Enabled := FALSE;
//                 frmprincipal.cxButton3.Enabled := FALSE;
//                 frmprincipal.cxButton4.Enabled := FALSE;
//                 frmprincipal.MainMenu1.Items[0].Enabled := false;
//                 frmprincipal.MainMenu1.Items[1].Enabled := false;
//                 frmprincipal.MainMenu1.Items[2].Enabled := false;
//                 frmprincipal.MainMenu1.Items[3].Enabled := false;
//                 frmprincipal.MainMenu1.Items[4].Enabled := false;
               END;

  	 //	datos.ibqempleados.Close;



   		Close
end;



function TfrmLogin.Render: TForm;
begin
 Result := Self;
 // Panel1.Color := COLOR_BACKGROUND;
end;

procedure TfrmLogin.UnRender;
begin

end;

end.
