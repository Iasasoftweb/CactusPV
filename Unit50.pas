unit Unit50;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, Vcl.StdCtrls, cxButtons, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmRxProveedor = class(TForm)
    Panel1: TPanel;
    Precios: TZReadOnlyQuery;
    PreciosCPID: TIntegerField;
    PreciosNO_ART: TIntegerField;
    PreciosUNIDAD: TWideStringField;
    PreciosUNIDAD_M: TIntegerField;
    PreciosPRECIO1: TFloatField;
    PreciosPRECIO2: TFloatField;
    PreciosPRECIO3: TFloatField;
    consulta: TZReadOnlyQuery;
    consultaCOD_ART: TIntegerField;
    consultaARTICULO: TWideStringField;
    consultaCAT: TWideStringField;
    consultaDESCRIPCION: TWideStringField;
    consultaCODIGOBARRA: TWideStringField;
    consultaCOSTO_PR: TFloatField;
    DsConsulta: TDataSource;
    DSCP: TDataSource;
    FbqFabricantes: TDataSource;
    op_prov: TcxGroupBox;
    cxButton10: TcxButton;
    provTXT: TcxTextEdit;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Qproveedor: TZReadOnlyQuery;
    QproveedorCOD: TIntegerField;
    QproveedorCOD_FAB: TWideStringField;
    QproveedorDESCRIPCION: TWideStringField;
    QproveedorCONTACTO: TWideStringField;
    QproveedorTELEFONO: TWideStringField;
    QproveedorFAX: TWideStringField;
    QproveedorEMAIL: TWideStringField;
    QproveedorDIRECCION: TWideStringField;
    DsqProvee: TDataSource;
    Edit1: TEdit;
    cxButton1: TcxButton;
    consultaCOSTO: TFloatField;
    procedure cxButton10Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRxProveedor: TFrmRxProveedor;

implementation
  uses unit2, tools, unit19;
{$R *.dfm}

procedure TFrmRxProveedor.cxButton10Click(Sender: TObject);
begin
cxGrid5.Visible := true;

Qproveedor.close;
Qproveedor.Open;
end;

procedure TFrmRxProveedor.cxGridDBTableView1DblClick(Sender: TObject);
begin
provTxt.Text := Qproveedordescripcion.Text;
edit1.Text := IntTostr(QproveedorCOD.Value);
cxgrid5.Visible := false;
end;

end.
