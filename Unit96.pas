unit Unit96;

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
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset,
  cxDBEdit, cxGroupBox, frxClass, frxDBSet;

type
  TFrmComisionServicios = class(TForm)
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    consulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOTRABAJO: TcxGridDBColumn;
    cxGrid1DBTableView1COMISION: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    consultaID: TIntegerField;
    consultaID_EMP: TIntegerField;
    consultaID_FACT: TIntegerField;
    consultaMONTOSERVICIO: TFloatField;
    consultaMONTOCOMISION: TFloatField;
    consultaESTADO: TIntegerField;
    consultaFECHA: TDateField;
    consultaNOMBRES_EMP: TWideStringField;
    cxButton2: TcxButton;
    Tecnicos: TZReadOnlyQuery;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    DsTecnico: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    TecnicosCOD_EMP1: TIntegerField;
    cxButton5: TcxButton;
    FXConsulta: TfrxDBDataset;
    Reporte: TfrxReport;
    FxConfig: TfrxDBDataset;
    Ticket: TfrxReport;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComisionServicios: TFrmComisionServicios;

implementation

{$R *.dfm}

uses Unit2, Unit118, Unit63, UInicio;

procedure TFrmComisionServicios.cxButton1Click(Sender: TObject);
begin


with consulta do
   begin
     close;
     sql.Clear;
     sql.Add('select a.*, b.nombres_emp from COMISIONINSTALADOR a');
     sql.Add('left join mtempleado b On a.id_emp = b.cod_emp1');
     sql.Add('where a.fecha >=:fecha1');
     sql.Add('and a.fecha  <=:fecha2');

     if cxDBTextEdit1.Text <>'' then
       begin
          sql.add('AND a.id_emp =:op5');
       end;

     Params[0].Value := inicio.Date;
     Params[1].Value := fechafinal.Date;

     if cxDBTextEdit1.Text <>'' then
       begin
           Params[2].Value := TecnicosCOD_EMP1.Value;
       END;

     open;
   end;
end;

procedure TFrmComisionServicios.cxButton2Click(Sender: TObject);
begin
if FrmBuscarInstalador = nil then  begin
    FrmBuscarInstalador := tFrmBuscarInstalador.Create(self);
    FrmBuscarInstalador.Edit2.Text := 'CONS';
    FrmBuscarInstalador.showmodal;
end;
end;

procedure TFrmComisionServicios.cxButton4Click(Sender: TObject);
begin
            TICKET.variables['fecha1']:=quotedstr(inicio.Text);
             TICKET.variables['Empleado']:=quotedstr(cxDBTextEdit2.Text);
             TICKET.variables['fecha2']:=quotedstr(fechafinal.Text);
             TICKET.PrepareReport(true);
             TICKET.ShowPreparedReport;
end;

procedure TFrmComisionServicios.cxButton5Click(Sender: TObject);
begin
Tecnicos.Close;
end;

procedure TFrmComisionServicios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmComisionServicios := nil;
Action := caFree;
end;

procedure TFrmComisionServicios.FormShow(Sender: TObject);
begin
FECHAFINAL.Date := NOW();
inicio.Date := NOW();
end;

end.
