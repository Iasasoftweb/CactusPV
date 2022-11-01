unit UAperturaCaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, cxCurrencyEdit, Vcl.Menus, cxButtons, Data.DB,
  ZAbstractRODataset, ZDataset, cxSpinEdit, cxTimeEdit, dxSkinSharp,
  dxSkinTheBezier, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, frxClass, frxDBSet, acPNG,
  Vcl.Buttons;

type
  TFrmAperturaCaja = class(TForm)
    BAceptar: TcxButton;
    BCancelar: TcxButton;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZqusuarioCARGO: TWideStringField;
    ZqUsuarios: TZReadOnlyQuery;
    ZqUsuariosUSUARIOID: TIntegerField;
    ZqUsuariosEMPLEADOID: TIntegerField;
    ZqUsuariosTIPO: TIntegerField;
    ZqUsuariosPASSW: TWideStringField;
    ZqUsuariosIDAC: TWideStringField;
    ZqUsuariosNOMBRES_EMP: TWideStringField;
    ZqUsuariosTIENDAID: TIntegerField;
    ZqUsuariosCARGO: TWideStringField;
    ZqTurno: TZReadOnlyQuery;
    ZqTurnoTURNOID: TIntegerField;
    ZqTurnoUSUARIOID: TIntegerField;
    ZqTurnoEFECTIVO_INICIAL: TFloatField;
    ZqTurnoESTADO: TIntegerField;
    ZqTurnoFECHA: TDateField;
    ZqTurnoIDTURNO: TIntegerField;
    ZqTurnoCAJA: TWideStringField;
    ZqTurnoHORA: TTimeField;
    MaxTurno: TZReadOnlyQuery;
    MaxTurnoGEN_ID: TLargeintField;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosUNIDAD: TWideStringField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosBENEFICIOS: TFloatField;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosOBS: TIntegerField;
    IbqRArticulosCOMISION: TFloatField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    DsCubos: TDataSource;
    IbqRArticulosCAT: TWideStringField;
    MaxCubos: TZReadOnlyQuery;
    Qconsulta: TZReadOnlyQuery;
    Edit1: TEdit;
    config: TfrxDBDataset;
    PrnConsulta: TfrxReport;
    DBconsulta: TfrxDBDataset;
    Max2: TZReadOnlyQuery;
    MaxCubosMAX: TIntegerField;
    Max2MAX: TIntegerField;
    limpiar: TZReadOnlyQuery;
    QconsultaID: TIntegerField;
    QconsultaIDTURNO: TIntegerField;
    QconsultaFECHA: TDateField;
    QconsultaARTICULO: TWideStringField;
    QconsultaCOSTO: TFloatField;
    QconsultaPRECIO_A: TFloatField;
    QconsultaINVINICIAL: TExtendedField;
    QconsultaINFFINAL: TExtendedField;
    QconsultaTOTALSALIDA: TExtendedField;
    QconsultaCN_UN: TFloatField;
    QconsultaCU_OZ: TFloatField;
    btAperturaInventario: TcxButton;
    ZExistencia: TZReadOnlyQuery;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaCOSTO: TFloatField;
    ZExistenciaCOSTO_PR: TFloatField;
    ZExistenciaCOD_ALM: TIntegerField;
    ZExistenciaEXISTENCIA: TExtendedField;
    ZExistenciaTOTAL: TExtendedField;
    ZExistenciaCODIGOBARRA: TWideStringField;
    ZExistenciaREFERENCIA: TWideStringField;
    Panel2: TPanel;
    btnsalir: TSpeedButton;
    Panel3: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label13: TLabel;
    Panel12: TPanel;
    Label14: TLabel;
    lblEstado: TLabel;
    Panel4: TPanel;
    LNumeroCaja: TLabel;
    Label3: TLabel;
    TCajero: TEdit;
    Label1: TLabel;
    BFinder: TcxButton;
    TFecha: TcxDateEdit;
    Label2: TLabel;
    THora: TcxTimeEdit;
    Label5: TLabel;
    CEfectivo: TcxCurrencyEdit;
    Label4: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    cxMontoDiferencial: TcxCurrencyEdit;
    Panel5: TPanel;
    Panel7: TPanel;
    cxButton3: TSpeedButton;
    Panel8: TPanel;
    cxButton4: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure inventarioactual;
    procedure btAperturaInventarioClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAperturaCaja: TFrmAperturaCaja;

implementation

{$R *.dfm}

uses Unit2, Tools, UAperturaCuadreCubos;

procedure TFrmAperturaCaja.btAperturaInventarioClick(Sender: TObject);
begin
    FAperturaCuadreCubos.ShowModal;
end;

procedure TFrmAperturaCaja.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmAperturaCaja.cxButton3Click(Sender: TObject);
begin

with maxturno do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(GEN_TURNOS_ID, 1) from RDB$DATABASE');
    open;
  end;


datos.ZTurno.open;
datos.ZTurno.Append;
DATOS.ZTurnoIDTURNO.Value:= MaxTurnoGEN_ID.Value;
datos.ZTurnoTURNOID.Value := MaxTurnoGEN_ID.Value;
datos.ZTurnoUSUARIOID.Value := AsignaUsuario;
datos.ZTurnoEFECTIVO_INICIAL.Value := CEfectivo.Value;
datos.ZTurnoESTADO.Value := 1;
datos.ZTurnoFECHA.Value := TFecha.Date;
datos.ZTurnoCAJA.Value :=  LNumeroCaja.Caption;
datos.ZTurnoNOMBRES_EMP.Value := TCajero.Text;
datos.ZTurnoCOBOSNUEVOS.Value   := cxMontoDiferencial.Value;
Edit1.Text :=  IntTostr(DATOS.ZTurnoIDTURNO.Value);
datos.ZTurno.post;

//EDIT2.Clear;
 AsignaTurno := datos.ZTurnoIDTURNO.value;
 datos.ZTurno.ApplyUpdates;
 datos.Data.Commit;
 close;
end;

procedure TFrmAperturaCaja.cxButton4Click(Sender: TObject);
begin
close;
end;

procedure TFrmAperturaCaja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmAperturaCaja := nil;
  Action := caFree;
end;

procedure TFrmAperturaCaja.FormShow(Sender: TObject);
begin

//  if datos.ZUconfiguracionTerminal.Value = 'Touch' then begin
//               FrmAperturaCaja.Height := 359;
//               cxMontoDiferencial.Value := 20000.00
//
//
//  end else begin
//                  FrmAperturaCaja.Height := 285;
//           end;


  if datos.ZUconfiguracionTIPOINVENTARIO.Value ='POR TURNO' then
     begin
           btAperturaInventario.Visible := true;
     end else begin
                btAperturaInventario.Visible := false;
              end;

end;

procedure TFrmAperturaCaja.inventarioactual;
begin
/// inventario actual ///

end;

end.
