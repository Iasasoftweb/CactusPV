unit Unit61;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, cxRadioGroup, unit2, cxCalc,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxButtonEdit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmConsultaSuplidores = class(TForm)
    Panel1: TPanel;
    DsqProvee: TDataSource;
    Qproveedor: TZReadOnlyQuery;
    QproveedorCOD: TIntegerField;
    QproveedorCOD_FAB: TWideStringField;
    QproveedorDESCRIPCION: TWideStringField;
    QproveedorCONTACTO: TWideStringField;
    QproveedorTELEFONO: TWideStringField;
    QproveedorFAX: TWideStringField;
    QproveedorEMAIL: TWideStringField;
    QproveedorDIRECCION: TWideStringField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label5: TLabel;
    Label6: TLabel;
    cxButton5: TcxButton;
    Edit1: TEdit;
    Edit2: TEdit;
    op1: TcxRadioGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    DsConsulta: TDataSource;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPEND: TcxGridDBColumn;
    cxButton1: TcxButton;
    op2: TcxRadioGroup;
    ZqconsultaFECHA_V: TDateField;
    cxButton2: TcxButton;
    PanelDesc: TcxGroupBox;
    cxButton7: TcxButton;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    ZqconsultaMONEDA: TWideStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Panel2: TPanel;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    ZqconsultaCAMBIOMONEDA: TFloatField;
    Label10: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label11: TLabel;
    op3: TcxRadioGroup;
    ZqconsultaABONO: TFloatField;
    ZqconsultaPAGADO: TFloatField;
    abono1: TcxCurrencyEdit;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Detalle: TZReadOnlyQuery;
    DetalleDETALLEID: TIntegerField;
    DetalleMASTERID: TIntegerField;
    DetalleCOD_ART: TIntegerField;
    DetalleCANT: TFloatField;
    DetalleESTADO: TIntegerField;
    DetalleMONTOCOSTO: TFloatField;
    DetalleTOTALIMP: TFloatField;
    DetalleTOTALCOSTO: TFloatField;
    DetalleARTICULOSNOM: TWideStringField;
    DetalleMONEDA: TWideStringField;
    DetallePRECIOUNIT: TFloatField;
    DetalleOBS: TWideStringField;
    Panel4: TPanel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    DsDetalle: TDataSource;
    cxGrid3DBTableView1CANT: TcxGridDBColumn;
    cxGrid3DBTableView1MONTOCOSTO: TcxGridDBColumn;
    cxGrid3DBTableView1TOTALIMP: TcxGridDBColumn;
    cxGrid3DBTableView1TOTALCOSTO: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULOSNOM: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIOUNIT: TcxGridDBColumn;
    cxGrid3DBTableView1OBS: TcxGridDBColumn;
    procedure cxButton5Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure op3Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaSuplidores: TFrmConsultaSuplidores;

implementation

{$R *.dfm}

uses Unit63, UInicio;

procedure TFrmConsultaSuplidores.cxButton1Click(Sender: TObject);
var
fecha_v : Tdate;
begin
if op1.ItemIndex = 0 then
  begin
with zqconsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from master_ajuste a');
    sql.Add('where a.provid =:pp');
    params[0].Value := StrToInt(edit1.Text);
    open;
  end;
  end;

 if (op1.ItemIndex = 1) and (op2.ItemIndex = 2) then
  begin
with zqconsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from master_ajuste a');
    sql.Add('where a.provid =:pp');
    sql.Add('and a.estado <>2');
    params[0].Value := StrToInt(edit1.Text);
    open;
  end;
  end;

 if (op1.ItemIndex = 1) and (op2.ItemIndex = 0) then
  begin


with zqconsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from master_ajuste a');
    sql.Add('where a.provid =:pp');
    sql.Add('and a.estado <>2');
    sql.Add('and a.fecha_v <:rr');
    params[0].Value := StrToInt(edit1.Text);
    params[1].Value := date();
    open;
  end;
  end;

if (op1.ItemIndex = 1) and (op2.ItemIndex = 1) then
begin
with zqconsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from master_ajuste a');
    sql.Add('where a.provid =:pp');
     sql.Add('and a.estado <>2');
    sql.Add('and a.fecha_v BETWEEN CURRENT_DATE + 1 AND CURRENT_DATE + 5');
    params[0].Value := StrToInt(edit1.Text);
    open;
  end;
  end;


end;

procedure TFrmConsultaSuplidores.cxButton2Click(Sender: TObject);
begin


 abono1.Value := 0.00;
 op3.ItemIndex := 0;
paneldesc.Visible := true;


end;

procedure TFrmConsultaSuplidores.cxButton5Click(Sender: TObject);
begin
cxgrid2.Visible := true;
qproveedor.Open;

end;

procedure TFrmConsultaSuplidores.cxButton7Click(Sender: TObject);
begin
if op3.ItemIndex = 0 then
   begin


          with datos.ZAjusteM do
            begin
              close;
              sql.Clear;
              sql.Add('select a.*, c.nombres_emp, e.descripcion, f.descripcion almacen from master_ajuste a');
              sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
              sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
              sql.Add('left join fabricantes e On a.provid = e.COD');
              sql.Add('left join almacenes f On a.cod_alm = f.id');
              sql.Add('where a.noid =:ppp');
              params[0].Value := zqconsultanoid.Value;
              open;
            end;

             //  showmessage(''+datos.MantArtARTICULO.Value);
                datos.ZAjusteM.Edit;
                datos.ZAjusteMestado.Value := 2;
                datos.ZAjusteMMONTOPAGO.Value := datos.ZAjusteMMONTOFACT.Value;
                datos.ZAjusteMMONTOPEND.Value := 0.00;
                datos.ZAjusteMABONO.Value := 0.00;
                datos.ZAjusteMPAGADO.Value := datos.ZAjusteMPAGADO.Value + 0.00;
                datos.ZAjusteM.ApplyUpdates;
                datos.Data.Commit;
             //   cxTextEdit1.Clear;
                paneldesc.Visible := false;

     end;

if op3.ItemIndex = 1 then
   begin
if abono1.Value =0.00 then begin
  showmessage('*** No hay Valor para Abonar ***');

   end else begin


          with datos.ZAjusteM do
            begin
              close;
              sql.Clear;
              sql.Add('select a.*, c.nombres_emp, e.descripcion, f.descripcion almacen from master_ajuste a');
              sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
              sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
              sql.Add('left join fabricantes e On a.provid = e.COD');
              sql.Add('left join almacenes f On a.cod_alm = f.id');
              sql.Add('where a.noid =:ppp');
              params[0].Value := zqconsultanoid.Value;
              open;
            end;

             //  showmessage(''+datos.MantArtARTICULO.Value);
                datos.ZAjusteM.Edit;
                datos.ZAjusteMestado.Value := 1;
                datos.ZAjusteMmontoPAGo.Value := datos.ZAjusteMmontoPAGo.Value + ABONO1.Value;
                datos.ZAjusteMMONTOPEND.Value := datos.ZAjusteMMONTOFACT.Value - datos.ZAjusteMMONTOPAGO.Value;
                datos.ZAjusteM.ApplyUpdates;
                datos.Data.Commit;

                paneldesc.Visible := false;




   end;






   end;



end;

procedure TFrmConsultaSuplidores.cxGrid1DBTableView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin

  With detalle do
    begin
      close;
      sql.Clear;
      sql.Add('select * from detalle_ajuste');
      sql.Add('where masterID =:opp');
      params[0].value := ZqconsultaNOID.value;
      open;
    end;

    panel4.Visible := true;
end;

procedure TFrmConsultaSuplidores.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (AViewInfo.GridRecord.Values[6] = 'US') then BEGIN
    ACanvas.Brush.Color := clMaroon;
    ACANVAS.Font.Color := CLWHITE;
    ACANVAS.Font.Style := [fsBold];


end;

 {
 if (AViewInfo.GridRecord.Values[6] = 'RD') then BEGIN
    ACanvas.Brush.Color := clblue;
    ACANVAS.Font.Color := CLWHITE;
    ACANVAS.Font.Style := [fsBold];
 with cxGrid1DBTableView1 do
        begin

{          OptionsBehavior.BestFitMaxRecordCount :=
           ViewInfo.VisibleRecordCount;

          BeginUpdate;
 }

      {    VisibleColumns[3].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[3].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'RD$,0.00;(RD$,0.00)';
          end;

          VisibleColumns[4].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[4].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'RD$,0.00;(RD$,0.00)';
          end;

          VisibleColumns[5].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[5].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'RD$,0.00;(RD$,0.00)';
          end;
   end;
 END;

    }



end;

procedure TFrmConsultaSuplidores.cxGridDBTableView1DblClick(Sender: TObject);
begin

edit1.text := IntToStr(qproveedorcod.Value);
edit2.Text  := qproveedordescripcion.Value;
cxgrid2.Visible := false;
end;

procedure TFrmConsultaSuplidores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmConsultaSuplidores := nil;
Action := caFree;
end;

procedure TFrmConsultaSuplidores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    PanelDesc.Visible := false;
    if panel4.Visible = True then
      panel4.Visible := false;
  end;
end;

procedure TFrmConsultaSuplidores.op1Click(Sender: TObject);
begin
if op1.ItemIndex = 0 then
  begin
    op2.Enabled := false;
  end;

if op1.ItemIndex = 1 then
  begin
    op2.Enabled := true;
  end;
end;

procedure TFrmConsultaSuplidores.op3Click(Sender: TObject);
begin
if op3.ItemIndex = 0 then
   begin
     abono1.Properties.ReadOnly := true;
   end;

   if op3.ItemIndex = 1 then
   begin
     abono1.Properties.ReadOnly := false;

     abono1.SetFocus;
   end;


end;

end.
