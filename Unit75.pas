unit Unit75;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit2, Data.DB, ZAbstractRODataset,
  ZDataset, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.Menus, cxButtons, frxClass, frxDBSet, Vcl.ExtCtrls,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, ComObj, excel2000, cxGroupBox, cxRadioGroup, Vcl.WinXCtrls;

type
  TPackingList = class(TForm)
    QRuta: TZReadOnlyQuery;
    QRutaID: TIntegerField;
    QRutaNOMBRE_RUTA: TWideStringField;
    QRutaIDVENDEDOR: TIntegerField;
    QRutaNOMBRE: TWideStringField;
    DsRuta: TDataSource;
    consulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    Label42: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1TITULOPRN: TcxGridDBColumn;
    cxGrid1DBTableView1SUM: TcxGridDBColumn;
    cxGrid1DBTableView1SUM_1: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Reporte: TfrxReport;
    detalle: TfrxDBDataset;
    Config: TfrxDBDataset;
    Edit1: TEdit;
    cxButton3: TcxButton;
    Panel1: TPanel;
    Edit2: TEdit;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1NOMBRE_RUTA: TcxGridDBColumn;
    Edit3: TEdit;
    consultaCOD_ART: TWideStringField;
    consultaTITULOPRN: TWideStringField;
    consultaSUM: TExtendedField;
    consultaSUM_1: TExtendedField;
    Panel2: TPanel;
    Op: TcxRadioGroup;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ReporteT: TfrxReport;
    pIndicador: TPanel;
    Label4: TLabel;
    AI: TActivityIndicator;
    ProgressBar2: TProgressBar;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2Change(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PackingList: TPackingList;

implementation

{$R *.dfm}

procedure TPackingList.cxButton1Click(Sender: TObject);
begin
with consulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, a.tituloprn, sum(a.cantidad), sum(a.total) from detailfact a');
    sql.Add('inner join master_fact b On a.masterid = b.no_fact');
    sql.Add('where b.idruta =:ppp');
    sql.Add('and b.situacion=''HOLD''');
      sql.Add('and b.condicion =''ACTIVA''');
    sql.Add('group by a.cod_art, a.tituloprn');
    params[0].Value := StrToInt(edit3.Text);
    open;


  end;

end;

procedure TPackingList.cxButton2Click(Sender: TObject);
begin
Panel2.Visible := true;
end;

procedure TPackingList.cxButton3Click(Sender: TObject);
begin
panel1.Visible := true;
qruta.Open;
edit2.SetFocus;
end;

procedure TPackingList.cxButton4Click(Sender: TObject);
begin
  if op.ItemIndex = 1 then
    begin
  reporte.variables['VENDEDOR']   :=quotedstr(edit1.Text);
  reporte.PrepareReport(true);
  reporte.ShowPreparedReport;
    end;

    if op.ItemIndex = 0 then
    begin
  reportet.variables['VENDEDOR']   :=quotedstr(edit1.Text);
  reportet.PrepareReport(true);
  reportet.print;
    end;
    panel2.Visible := false;
end;

procedure TPackingList.cxButton5Click(Sender: TObject);
Var
Plantilla : Variant;
Linha, cont : Integer;

Begin

 pIndicador.Visible := true;


// Ai.StartAnimation;
 Cont := consulta.RecordCount;
ProgressBar2.Visible := true;
 ProgressBar2.Max := cont;
 ProgressBar2.Position := 0;
 AI.FrameDelay := 0;
 consulta.Filtered := false;
 Label4.Caption :='Exportando Datos........';
  Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Emision de Comprobantes';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PVS';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'PACKING LIST';
        Plantilla.cells[4,1] := 'Ruta :'+Edit1.Text ;
      //   Plantilla.cells[5,1] := 'Desde :'+inicio.Text+' Hasta : '+fechafinal.Text;

       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
  Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'Codigo';
        Plantilla.cells[6,2]:= 'Articulo';
        Plantilla.cells[6,3]:= 'Cantidad';
        Plantilla.cells[6,4]:= 'Total';

        consulta.DisableControls;
        with consulta do begin
        try
            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= consultaCOD_ART.Value;
                     Plantilla.cells[Linha, 2]:= consultaTITULOPRN.Value;
                     Plantilla.cells[Linha, 3]:= consultaSUM.Value;
                     Plantilla.cells[Linha, 4]:=FormatFloat('#,##0.00', consultaSUM_1.Value);


                     Linha := Linha + 1;
                     ProgressBar2.Position := ProgressBar2.Position + 1;
                      AI.FrameDelay := ProgressBar2.Position;



                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            Consulta.EnableControls;
            Plantilla := Unassigned;
            Label4.Caption :='Datos Exportados';
           ProgressBar2.Visible := False;
            pIndicador.Visible := false;
           // ai.StopAnimation;
        end;
        end;

    panel2.Visible := false;

end;

procedure TPackingList.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
edit1.Text := qrutanombre_ruta.Value;
edit3.Text := qrutaid.Text;
edit2.Clear;
qruta.Close;
panel1.Visible := false;
end;

procedure TPackingList.Edit2Change(Sender: TObject);
begin
with qruta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.nombre from ruta a');
    sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
    sql.Add('where a.nombre_ruta like '+#39+'%'+edit2.Text+'%'+#39);
    open;
  end;
end;

procedure TPackingList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    PackingList := nil;
    Action := caFree;
end;

procedure TPackingList.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin

    edit2.Clear;
    panel1.Visible := false;
    qruta.Close;

    panel2.Visible := false;
  end;
end;

procedure TPackingList.FormShow(Sender: TObject);
begin
qruta.Open;
end;

end.
