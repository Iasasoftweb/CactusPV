unit UBuscarUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset,
  ZDataset, acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFBuscarUsuarios = class(TForm)
    dsqusuario: TDataSource;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZqusuarioIDSESSION: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    label5444: TLabel;
    Edit2: TEdit;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuscarUsuarios: TFBuscarUsuarios;

implementation

{$R *.dfm}

uses Unit2, Unit25, UInicio;

procedure TFBuscarUsuarios.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFBuscarUsuarios.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

with datos.ZUsaurios do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP,B.tiendaid, C.nombre_session from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.Add('left join tb_sesion c On A.idsession = C.id');
    sql.Add('where a.USUARIOID =:ooo');
    params[0].Value := zqusuarioUSUARIOID.Value;
    open;
  end;

 //    edit3.Text := datos.ZUsauriosPASSW.Value;
 FrmUsuario.opgeneral.Enabled := true;
 FrmUsuario.cxButton3.Enabled := true;
 FrmUsuario.cxButton4.Enabled := true;
 FrmUsuario.cxButton2.Enabled := false;
 FrmUsuario.cxButton6.Enabled := true;
 FrmUsuario.qsessiones.Open;
 FrmUsuario.cxPageControl1.Enabled := TRUE;


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
    close;
end;

procedure TFBuscarUsuarios.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TFBuscarUsuarios.Edit2Change(Sender: TObject);
begin

with datos.ZUsaurios do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP,B.tiendaid, C.nombre_session from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.Add('left join tb_sesion c On A.idsession = C.id');
    sql.Add('where b.nombres_emp like '+#39+'%'+Edit2.Text+'%'+#39);
    open;
  end;


end;

procedure TFBuscarUsuarios.FormShow(Sender: TObject);
begin
  zqusuario.Open;
end;

end.
