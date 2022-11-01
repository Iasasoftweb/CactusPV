unit Unit42;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, ZAbstractRODataset, ZDataset,
  Vcl.Menus, cxTextEdit, cxDBEdit, cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmComision = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    dsqusuario: TDataSource;
    QEmpleados: TZReadOnlyQuery;
    QEmpleadosCOD_EMP: TWideStringField;
    QEmpleadosNOMBRES_EMP: TWideStringField;
    QEmpleadosDIRECCION: TWideStringField;
    QEmpleadosCEDULA: TWideStringField;
    QEmpleadosTELEFONO: TWideStringField;
    QEmpleadosCELULAR: TWideStringField;
    QEmpleadosTIPO: TWideStringField;
    QEmpleadosLOGIN: TWideStringField;
    QEmpleadosPIN: TWideStringField;
    QEmpleadosMODIFICAR_ARTICULOS: TWideStringField;
    QEmpleadosELIMINAR: TWideStringField;
    QEmpleadosIMPRIMIR: TWideStringField;
    QEmpleadosCONTABILIDAD: TWideStringField;
    QEmpleadosMODIFICAR_FACTURAS: TWideStringField;
    QEmpleadosMODIFICAR_UTILIDAD: TWideStringField;
    QEmpleadosIMPRIMIR_CUADRE: TWideStringField;
    QEmpleadosIMPRIMIR_FINACIERO: TWideStringField;
    QEmpleadosCOD_EMP1: TIntegerField;
    QEmpleadosINICIO: TDateField;
    QEmpleadosSUELDO: TFloatField;
    QEmpleadosCOD: TIntegerField;
    QEmpleadosCARGO: TWideStringField;
    QEmpleadosFECHA_ING: TDateField;
    QEmpleadosESTADOS: TIntegerField;
    QEmpleadosTIENDAID: TIntegerField;
    OpBuscarEmpleado: TcxGroupBox;
    Edit2: TEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxButton5: TcxButton;
    Label26: TLabel;
    inicio: TcxDateEdit;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    Label3: TLabel;
    cxButton1: TcxButton;
    consulta: TZReadOnlyQuery;
    cxtextEdit1: TcxTextEdit;
    procedure cxButton5Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComision: TFrmComision;

implementation
  uses tools, unit2, unit19;
{$R *.dfm}

procedure TFrmComision.cxButton5Click(Sender: TObject);
begin
OpbuscarEMPLEADO.Visible := true;
edit2.SetFocus;
with qEmpleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where cargo =:oo');
    params[0].Value := 'DESIGN';
    open;
  end;
end;

procedure TFrmComision.cxGridDBTableView2DblClick(Sender: TObject);
begin

cxTextEdit1.Text := Qempleadosnombres_emp.Value;
Opbuscarempleado.Visible := false;

end;

procedure TFrmComision.Edit2Change(Sender: TObject);
begin

with qempleados do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtempleado');
    sql.Add('where nombres_emp like '+#39+'%'+Edit2.Text+'%'+#39);
    sql.Add('and cargo =:oo');
    params[0].Value := 'DESIGN';
    open;
  end;
end;

end.
