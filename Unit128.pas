unit Unit128;

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
  dxSkinXmas2008Blue, Data.DB, ZAbstractRODataset, ZDataset, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, cxButtons, frxClass, frxDBSet;

type
  TFrmDecomisos = class(TForm)
    Label1: TLabel;
    fechafinal: TcxDateEdit;
    inicio: TcxDateEdit;
    Label2: TLabel;
    Consulta: TZReadOnlyQuery;
    ConsultaFECHA: TDateField;
    ConsultaCOD_ART: TIntegerField;
    ConsultaARTICULO: TWideStringField;
    ConsultaDESCRIPCION: TWideStringField;
    ConsultaSALIDA: TExtendedField;
    DSconsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    FxConfig: TfrxDBDataset;
    FXConsulta: TfrxDBDataset;
    Reporte: TfrxReport;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDecomisos: TFrmDecomisos;

implementation

{$R *.dfm}

uses UInicio, Unit2;

procedure TFrmDecomisos.cxButton1Click(Sender: TObject);
begin

with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.fecha,a.cod_art, c.articulo, b.descripcion, sum(a.salida) salida from minventario a');
    sql.Add('left join conceptos b On a.conceptoid = b.conceptoid');
    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
    sql.Add('where a.costo_un = 1');
    sql.Add('and a.fecha >=:fecha1');
    sql.Add('and a.fecha <=:fecha2');
    sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo');
    params[0].Value := inicio.Date;
    params[1].Value := fechafinal.Date;
    open;
  end;
end;

procedure TFrmDecomisos.cxButton4Click(Sender: TObject);
begin
 reporte.variables['fecha1']:=quotedstr(inicio.Text);
         //    reporte.variables['Empleado']:=quotedstr(cxDBTextEdit2.Text);
             reporte.variables['fecha2']:=quotedstr(fechafinal.Text);
             reporte.PrepareReport(true);
             reporte.ShowPreparedReport;
end;

procedure TFrmDecomisos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmDecomisos := nil;
Action := caFree;
end;

end.
