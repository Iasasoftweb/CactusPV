unit Unit130;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Data.DB, ZAbstractRODataset,
  ZDataset;

type
  TFrmHolder = class(TForm)
    HOLD: TZReadOnlyQuery;
    HOLDNO_FACT: TIntegerField;
    HOLDFECHA_FAC: TDateField;
    HOLDTIPO: TWideStringField;
    HOLDCOD_CLIENT: TWideStringField;
    HOLDCOD_EMP: TWideStringField;
    HOLDNO_FACT1: TWideStringField;
    HOLDMONTO: TFloatField;
    HOLDHORA: TTimeField;
    HOLDPOGXITBS: TFloatField;
    HOLDTIPOPAGO: TWideStringField;
    HOLDMONTOPAGO: TFloatField;
    HOLDCONDICION: TWideStringField;
    HOLDRENTA: TWideStringField;
    HOLDCODIGO: TIntegerField;
    HOLDTIPOITBS: TWideStringField;
    HOLDVENDEDOR: TWideStringField;
    HOLDSITUACION: TWideStringField;
    HOLDCAJERO: TWideStringField;
    HOLDNCF: TWideStringField;
    HOLDRNC_CLIENTE: TWideStringField;
    HOLDNCF1: TFloatField;
    HOLDNOM_CLIENTE: TWideStringField;
    HOLDDESCUENTO: TFloatField;
    HOLDROTULO: TWideStringField;
    HOLDNO_AUTORIZA_NCF: TFloatField;
    HOLDMONTOFINANCIADO: TFloatField;
    HOLDCUOTAS: TIntegerField;
    HOLDINTERES: TFloatField;
    HOLDDIRECCION: TWideStringField;
    HOLDPAGADO: TFloatField;
    HOLDLEYPROPINA: TFloatField;
    HOLDCOMPROBANTE: TWideStringField;
    HOLDTERMINAL: TWideStringField;
    HOLDEFECTIVO: TFloatField;
    HOLDDEVOLUCION1: TFloatField;
    HOLDRESTANTE: TFloatField;
    HOLDABONO: TFloatField;
    HOLDCHEK: TWideStringField;
    HOLDNO_RECIBO: TIntegerField;
    HOLDPAGADOCXC: TFloatField;
    HOLDMESES: TIntegerField;
    HOLDDIAS: TIntegerField;
    HOLDPENDIENTE: TFloatField;
    HOLDESTADOPAGO: TWideStringField;
    HOLDDEVOLUCION: TFloatField;
    HOLDCONDICION_PAGO: TIntegerField;
    HOLDCOMBO: TWideStringField;
    HOLDCOBRADO: TIntegerField;
    HOLDQUEES: TWideStringField;
    HOLDUSUARIOID: TIntegerField;
    HOLDCLIENTEID: TIntegerField;
    HOLDCONDICIONVENTA: TWideStringField;
    HOLDTIENDAID: TIntegerField;
    HOLDPINREFERIDO: TWideStringField;
    HOLDNC: TIntegerField;
    HOLDCLIENTENOMBRE: TWideStringField;
    HOLDNOMBRES_EMP: TWideStringField;
    HOLDNOMBRECLIENTE_PRN: TWideStringField;
    HOLDFECHAVENCIMIENTO: TDateField;
    DsHold: TDataSource;
    Actualiza: TZReadOnlyQuery;
    Zdetalle: TZReadOnlyQuery;
    ZdetalleNO_FACT: TIntegerField;
    ZdetalleNO_FACT1: TWideStringField;
    ZdetalleMASTERID: TIntegerField;
    ZdetalleCANTIDAD: TFloatField;
    ZdetallePRECIO: TFloatField;
    ZdetalleIMPUESTO: TFloatField;
    ZdetalleITBS: TFloatField;
    ZdetalleITBIS2: TFloatField;
    ZdetalleTOTAL: TFloatField;
    ZdetalleCOD_ART: TWideStringField;
    ZdetalleUNID: TWideStringField;
    ZdetalleCOMBO: TWideStringField;
    ZdetalleARTICULOID: TIntegerField;
    ZdetalleANCHO: TFloatField;
    ZdetalleALTO: TFloatField;
    ZdetalleTITULOPRN: TWideStringField;
    ZdetalleUNIDADID: TIntegerField;
    ZdetalleITBS_ART: TWideStringField;
    ZdetalleEX: TWideStringField;
    ZdetalleIDALMACEN: TIntegerField;
    ZdetalleBARRA: TWideStringField;
    ZdetalleIDTECNICO: TIntegerField;
    ZdetalleDESC: TIntegerField;
    ZdetalleARTICULO: TWideStringField;
    ZdetalleUNIDAD: TWideStringField;
    ZdetalleITBIS: TWideStringField;
    ZdetalleLINEA: TFloatField;
    ZdetalleOP: TWideStringField;
    DSdetalle: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHolder: TFrmHolder;

implementation

{$R *.dfm}

end.
