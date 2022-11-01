unit UEstadoCXP;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxRadioGroup, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, frxClass, frxDBSet,
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog,
  frxExportPDF;

type
  TFrmEstadoCxp = class(TForm)
    cxGroupBox1: TcxGroupBox;
    QConsulta: TZReadOnlyQuery;
    QConsultaNOID: TIntegerField;
    QConsultaFECHA: TDateField;
    QConsultaUSUARIOID: TIntegerField;
    QConsultaTIENDAID: TIntegerField;
    QConsultaCONDICION: TWideStringField;
    QConsultaPROVID: TIntegerField;
    QConsultaNOFACT: TWideStringField;
    QConsultaFECHA_COMPRA: TDateField;
    QConsultaPLAZO: TIntegerField;
    QConsultaMONTOFACT: TFloatField;
    QConsultaMONTOPAGO: TFloatField;
    QConsultaMONTOPEND: TFloatField;
    QConsultaESTADO: TIntegerField;
    QConsultaFECHA_V: TDateField;
    QConsultaMONEDA: TWideStringField;
    QConsultaCAMBIOMONEDA: TFloatField;
    QConsultaFLETE: TFloatField;
    QConsultaOTROSGASTOS: TFloatField;
    QConsultaDESCUENTO: TFloatField;
    QConsultaABONO: TFloatField;
    QConsultaPAGADO: TFloatField;
    QConsultaCOD_ALM: TIntegerField;
    QConsultaNOMBREALMACEN: TWideStringField;
    QConsultaNOMBRES_EMP: TWideStringField;
    QConsultaDESCRIPCION: TWideStringField;
    QConsultaNCF: TWideStringField;
    DsCosulta: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1NOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_V: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPEND: TcxGridDBColumn;
    cxGrid1DBTableView1MONEDA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Edit2: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    cxButton5: TcxButton;
    Qproveedor: TZReadOnlyQuery;
    QproveedorCOD: TIntegerField;
    QproveedorCOD_FAB: TWideStringField;
    QproveedorDESCRIPCION: TWideStringField;
    QproveedorCONTACTO: TWideStringField;
    QproveedorTELEFONO: TWideStringField;
    QproveedorFAX: TWideStringField;
    QproveedorEMAIL: TWideStringField;
    QproveedorDIRECCION: TWideStringField;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    GBConsultar: TGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Dfinal: TcxDateEdit;
    DInicio: TcxDateEdit;
    ChkFecha: TcxCheckBox;
    RGTipoFactura: TcxRadioGroup;
    RGEstado: TcxRadioGroup;
    cxButton4: TcxButton;
    FxConsulta: TfrxDBDataset;
    FxConfig: TfrxDBDataset;
    Reporte: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure cxButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstadoCxp: TFrmEstadoCxp;

implementation

{$R *.dfm}

uses Unit2, UInicio, Unit108;

procedure TFrmEstadoCxp.cxButton1Click(Sender: TObject);
begin
  reporte.PrepareReport(true);
  reporte.ShowPreparedReport;
end;

procedure TFrmEstadoCxp.cxButton2Click(Sender: TObject);
begin

GBConsultar.Visible := true;

end;

procedure TFrmEstadoCxp.cxButton4Click(Sender: TObject);
begin
with QConsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.descripcion from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join fabricantes e On a.provid = e.COD');
    sql.Add('Where a.condicion =''Compra''');
    sql.Add('and a.provid =:cod');

     if ChkFecha.Checked = true then
       begin
        sql.Add('and a.fecha_compra >=:fecha1');
        sql.Add('and a.fecha_compra <=:fecha2');
       end;

     if RGTipoFactura.ItemIndex = 0 then
       begin
         sql.Add('and a.estado <>2');
       end;

       if RGTipoFactura.ItemIndex = 1 then
       begin
         sql.Add('and a.estado =2');
       end;

    if RGEstado.ItemIndex = 0 then
       begin
          sql.Add('and a.fecha_v <:rr');
       end;

     if RGEstado.ItemIndex = 1 then
       begin
       sql.Add('and a.fecha_v BETWEEN CURRENT_DATE + 1 AND CURRENT_DATE + 5');
       end;


       params[0].Value := StrToInt(edit2.Text);


     if ChkFecha.Checked = true then
       begin

        params[1].Value := DInicio.Date;
        params[2].Value := Dfinal.Date;

       end;

       if RGEstado.ItemIndex = 0 then
       begin
          if (ChkFecha.Checked = true) then begin

              params[3].Value := date();
          end;

           if (ChkFecha.Checked = false) then begin

              params[1].Value := date();
          end;

          if (ChkFecha.Checked = true) then begin

                      params[2].Value := date();
                   end;

          if (ChkFecha.Checked = false) then begin

                      params[0].Value := date();
                   end;

       end;




    open;



  end;

   GBConsultar.Visible := false;
end;

procedure TFrmEstadoCxp.cxButton5Click(Sender: TObject);
begin
if FrmBProveedor = nil then
begin
   FrmBProveedor := tFrmBProveedor.Create(self);
    FrmBProveedor.Edit2.Text := 'ESTADOCUENTA';
   FrmBProveedor.qproveedor.Open;
   FrmBProveedor.ShowModal;
end;
end;

procedure TFrmEstadoCxp.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    with qproveedor do
        begin
          close;
          sql.Clear;
          sql.Add('select * from fabricantes');
          sql.Add('where cod  =:cop');
          Params[0].Value := StrToInt(edit2.Text);
          open;
        end;

        Edit1.Text := qproveedordescripcion.Value;
  end;
end;

procedure TFrmEstadoCxp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FrmEstadoCxp := NIL;
    Action := caFree;

end;

end.
