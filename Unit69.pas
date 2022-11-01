unit Unit69;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit,
  Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset,
  ZDataset;

type
  TFrmstart = class(TForm)
    Zqconsulta: TZReadOnlyQuery;
    ZqconsultaNOID: TIntegerField;
    ZqconsultaFECHA: TDateField;
    ZqconsultaUSUARIOID: TIntegerField;
    ZqconsultaTIENDAID: TIntegerField;
    ZqconsultaCONDICION: TWideStringField;
    ZqconsultaPROVID: TIntegerField;
    ZqconsultaNOFACT: TWideStringField;
    ZqconsultaFECHA_COMPRA: TDateField;
    ZqconsultaPLAZO: TIntegerField;
    ZqconsultaMONTOFACT: TFloatField;
    ZqconsultaMONTOPAGO: TFloatField;
    ZqconsultaMONTOPEND: TFloatField;
    ZqconsultaESTADO: TIntegerField;
    ZqconsultaFECHA_V: TDateField;
    ZqconsultaMONEDA: TWideStringField;
    ZqconsultaCAMBIOMONEDA: TFloatField;
    DsConsulta: TDataSource;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField4: TIntegerField;
    WideStringField2: TWideStringField;
    DateField2: TDateField;
    IntegerField5: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField6: TIntegerField;
    DateField3: TDateField;
    WideStringField3: TWideStringField;
    FloatField4: TFloatField;
    DataSource1: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOFACT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label3: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    DsConfiguracion: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmstart: TFrmstart;

implementation

{$R *.dfm}

end.
