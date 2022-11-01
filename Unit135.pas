unit Unit135;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, cxDBEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, Vcl.StdCtrls, Data.DB,
  Vcl.Menus, cxButtons, dxSkinSharp, dxSkinTheBezier;

type
  TFrmEditarNCF = class(TForm)
    cxGroupBox1: TcxGroupBox;
    DsFact: TDataSource;
    Label1: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Edit1: TEdit;
    BTBuscar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure permiso;
    procedure FormShow(Sender: TObject);
    procedure BTBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditarNCF: TFrmEditarNCF;

implementation

{$R *.dfm}

uses Unit2, UInicio, Unit90, Tools, UFacturasImpresas;

procedure TFrmEditarNCF.BTBuscarClick(Sender: TObject);
begin
if FrmFacturasImpresas = nil then
  begin
    FrmFacturasImpresas := TFrmFacturasImpresas.Create(self);

    with FrmFacturasImpresas.facturasIMPRESAS do
    begin
        Close;
        sql.Clear;
        sql.Add('select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion as dir  from master_fact a');
        sql.Add('left join cliente b On a.clienteid = b.codigo');
        sql.Add('left join musuario c On a.codven = c.usuarioid');
        sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.Add('where a.situacion  =:opcion2');
        sql.Add('and a.condicion =:OPCION4');
        sql.Add('AND A.ROTULO =:OPCION5');
       sql.Add('and a.fecha_fac >=:fechas');

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';

        if FrmFacturasImpresas.OpCuando.ItemIndex = 0 then
           begin
                params[3].Value := now();
           end else begin
                      params[3].Value := now()-1;
                    end;
        open;
    end;
    FrmFacturasImpresas.Edit1.Text := '1';
    FrmFacturasImpresas.ShowModal;
  end;
end;

procedure TFrmEditarNCF.cxButton1Click(Sender: TObject);
begin
 datos.FbqMaster_Fact.ApplyUpdates;
 datos.Data.Commit;
 datos.FbqMaster_Fact.Active := False;
 if edit1.Text ='1' then
     begin
       FrmComprobanteEmitidos.cuadre.Refresh;
     end;
 close;
end;

procedure TFrmEditarNCF.cxButton2Click(Sender: TObject);
begin
datos.FbqMaster_Fact.CancelUpdates;
datos.Data.Rollback;
datos.FbqMaster_Fact.Active := False;
close;
end;

procedure TFrmEditarNCF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

FrmEditarNCF := nil;
Action := caFree;
end;

procedure TFrmEditarNCF.FormShow(Sender: TObject);
begin
if EDIT1.Text = '1' then
  begin
    BTBUSCAR.Visible := FALSE;
  end;

if EDIT1.Text = '2' then
  begin
    BTBUSCAR.Visible := TRUE;
  end;

end;

procedure TFrmEditarNCF.permiso;
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
               if Btn = 'BTBUSCAR'  then
                 begin
                     if datos.QperfilESTADO.Value = 'True' then
                       begin
                         BTBUSCAR.Enabled := true;
                       end else begin
                                 BTBUSCAR.Enabled := false;
                                end;
                 end;







            //   Btn.Tag := 2;
//                btn.Enabled := true;
               datos.Qperfil.Next;
               end;




          end;

end;

end.
