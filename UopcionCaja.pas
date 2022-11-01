unit UopcionCaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  dxSkinSharp, dxSkinTheBezier, acPNG, Vcl.Buttons;

type
  TFrmOpcionCaja = class(TForm)
    Panel2: TPanel;
    btnsalir: TSpeedButton;
    Panel4: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label19: TLabel;
    Panel12: TPanel;
    Label25: TLabel;
    lblEstado: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    Panel22: TPanel;
    SpeedButton7: TSpeedButton;
    Panel23: TPanel;
    BCerrarCaja: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BCerrarCajaClick(Sender: TObject);
    procedure permisos;
    procedure FormShow(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOpcionCaja: TFrmOpcionCaja;

implementation

{$R *.dfm}

uses Unit2, Unit33, UAperturaCaja, Tools, Unit117, UcajerroAnterior;

procedure TFrmOpcionCaja.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmOpcionCaja.BCerrarCajaClick(Sender: TObject);
begin

if datos.ZUconfiguracionGENERART.Value = 'SI' then
   begin
if FAutorizacion.ShowModal = mrOk then
           begin


               if FrmTurno = nil then
                  begin
                    FrmTurno := tFrmTurno.Create(self);
                       with datos.ZTurno do
                              begin
                                close;
                                sql.Clear;
                                sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                                sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                                sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                                sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                                sql.Add('where a.estado =:Est');
                                sql.Add('and a.usuarioID =:Usua');
                                params[0].Value := 1;
                                params[1].Value := AsignaUsuario;
                                open;
                              end;
                    if datos.ZTurno.RecordCount > 0 then
                        begin

                            FrmTurno.ShowModal;
                        end else begin
                                   MsgInformacion(' ! No exite turno abierto para este usuario !')

                                 end;
                  end;
           end;
   end else begin

         if FrmTurno = nil then
                  begin
                  //ShowMessage('');
                    FrmTurno := tFrmTurno.Create(self);
                       with datos.ZTurno do
                              begin
                                close;
                                sql.Clear;
                                sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                                sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                                sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                                sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                                sql.Add('where a.estado =:Est');
                                sql.Add('and a.usuarioID =:Usua');
                                params[0].Value := 1;
                                params[1].Value := AsignaUsuario;
                                open;
                              end;
                    if datos.ZTurno.RecordCount > 0 then
                        begin

                            FrmTurno.ShowModal;
                        end else begin
                                   MsgInformacion(' ! No exite turno abierto para este usuario !')

                                 end;
                  end;
   end;


end;

procedure TFrmOpcionCaja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmOpcionCaja := nil;
Action := caFree;
end;

procedure TFrmOpcionCaja.FormShow(Sender: TObject);
begin
//permisos;
end;

procedure TFrmOpcionCaja.permisos;
var
BTn : String;
Av : Boolean;
begin



 with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where a.idnivel =:usuarioID');
          Params[0].Value := AsignaUsuario;
          open;
        end;
//
       if datos.Qperfil.RecordCount > 0 then
          begin
            datos.qperfil.first;


            while not datos.Qperfil.eof do
               begin

               BTn := datos.QperfilNOMBRE_FORM.Text;
              // ShowMessage(''+Btn);
               if Btn = 'BCerrarCaja'  then
                 begin

                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         BCerrarCaja.Enabled := true;
                       end else begin
                                 BCerrarCaja.Enabled := false;
                                end;
                 end;










            //   Btn.Tag := 2;
//                btn.Enabled := true;
               datos.Qperfil.Next;
               end;




          end;


end;

procedure TFrmOpcionCaja.SpeedButton2Click(Sender: TObject);
begin
 if FrmAperturaCaja = nil then
     begin
       FrmAperturaCaja := TFrmAperturaCaja.Create(self);
                         if FileExists(ChangeFileExt(Application.ExeName,'.ini')) then
                                        begin
                                           try
                                               IniFile := ChangeFileExt(Application.ExeName,'.ini');

                                               FrmAperturaCaja.LNumeroCaja.Caption := ReadString_Ini(IniFile,'OPCIONES', 'NoCaja','');


                                             //  Control;
                                           except
                                               on E: Exception do
                                                      begin

                                           Crear_Mensages('Error',
                                          'Se produjo el siguiente error al ejecutar la aplicación',
                                          'Esto provoca que no se pueda iniciar, Si el problema persiste, llamar al soporte',
                                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                                          'OK') ;
                                                 Application.Terminate;
                                               end;
                                           end;
                                         end
                                      else begin

                                         Crear_Mensages('Error',
                                          'El Archivo de configuracion de la aplicación no existe, llamar al soporte',
                                          'La aplicacion cargara la base de datos local',
                                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                                          'OK') ;
                                  end;



with FrmAperturaCaja.ZqUsuarios do
           begin
             close;
             sql.clear;
             sql.Add('select a.*, b.NOMBRES_EMP,B.tiendaid,b.cargo from musuario a');
             sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
             sql.Add('where a.usuarioID =:IdUsuario');
             params[0].Value := AsignaUsuario;
           //  sql.Add('and NOMBRES_EMP ='#39+Trim(datos.ibqempleadosnombres_emp.Value)+#39);
            open;
           end;


      FrmAperturaCaja.TCajero.Text := FrmAperturaCaja.ZqusuariosNOMBRES_EMP.Value;

        with FrmAperturaCaja.zqturno do
          begin
            close;
            sql.Clear;
            sql.Add('select * from turnos');
            sql.Add('where estado =:Est');
            sql.Add('and usuarioId =:Usua');
            sql.Add('and caja =:Caja');
            params[0].Value := 1;
            params[1].Value := FrmAperturaCaja.ZqUsuariosUSUARIOID.Value;
            Params[2].Value := FrmAperturaCaja.LNumeroCaja.Caption;
            open;
          end;

          if FrmAperturaCaja.zqturno.RecordCount > 0 then
              begin

              ShowMessage(' Este Cajero ya tiene un Turno Abierto');
//                BAceptar.Enabled := false;
//                TCajero.Enabled := false;
//                BFinder.Enabled := false;
//                CEfectivo.Enabled := false;
//                TFecha.Enabled := false;
//
//
//                CEfectivo.Value := ZqTurnoEFECTIVO_INICIAL.Value;
//                TFecha.Date := ZqTurnoFECHA.Value;
//                THora.Time  := ZqTurnoHORA.Value;
//                LNumeroCaja.Caption := ZqTurnoCAJA.Text;
                  FrmAperturaCaja := nil;
              end else begin



                          FrmAperturaCaja.BAceptar.Enabled := true;
                          FrmAperturaCaja.TCajero.Enabled := true;
                          FrmAperturaCaja.BFinder.Enabled := true;
                          FrmAperturaCaja.CEfectivo.Enabled := true;
                          FrmAperturaCaja.TFecha.Enabled := true;


                          FrmAperturaCaja.CEfectivo.Value := 0.00;
                          FrmAperturaCaja.TFecha.Date := now();
                          FrmAperturaCaja.THora.Time  := now();
                          FrmAperturaCaja.ShowModal;
                       end;




     end;
end;

procedure TFrmOpcionCaja.SpeedButton7Click(Sender: TObject);
begin


if FAutorizacion.ShowModal = mrOk then
           begin

               if FrmCajerosAnteriores = nil then
                  begin
                   FrmCajerosAnteriores := tFrmCajerosAnteriores.Create(self);

                    FrmCajerosAnteriores.ShowModal;
                  end;
           end;
end;

procedure TFrmOpcionCaja.SpeedButton8Click(Sender: TObject);
begin

if datos.ZUconfiguracionGENERART.Value = 'SI' then
   begin
if FAutorizacion.ShowModal = mrOk then
           begin


               if FrmTurno = nil then
                  begin
                    FrmTurno := tFrmTurno.Create(self);
                       with datos.ZTurno do
                              begin
                                close;
                                sql.Clear;
                                sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                                sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                                sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                                sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                                sql.Add('where a.estado =:Est');
                                sql.Add('and a.usuarioID =:Usua');
                                params[0].Value := 1;
                                params[1].Value := AsignaUsuario;
                                open;
                              end;
                    if datos.ZTurno.RecordCount > 0 then
                        begin

                            FrmTurno.ShowModal;
                        end else begin
                                      Crear_Mensages('Aviso',
                                          'Error de Turno',
                                          '! No exite turno abierto para este usuario !',
                                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\Aviso.png',
                                          'OK') ;


                                 end;
                  end;
           end;
   end else begin

         if FrmTurno = nil then
                  begin
                  //ShowMessage('');
                    FrmTurno := tFrmTurno.Create(self);
                       with datos.ZTurno do
                              begin
                                close;
                                sql.Clear;
                                sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                                sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                                sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                                sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                                sql.Add('where a.estado =:Est');
                                sql.Add('and a.usuarioID =:Usua');
                                params[0].Value := 1;
                                params[1].Value := AsignaUsuario;
                                open;
                              end;
                    if datos.ZTurno.RecordCount > 0 then
                        begin

                            FrmTurno.ShowModal;
                        end else begin
                                          Crear_Mensages('Aviso',
                                          'Error de Turno',
                                          '! No exite turno abierto para este usuario !',
                                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\Aviso.png',
                                          'OK') ;


                                 end;
                  end;
   end;

end;

end.
