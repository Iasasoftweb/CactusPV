unit UConsultaFactCXP;

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
  ZDataset, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.Menus, cxButtons,
  cxRadioGroup, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinSharp,
  dxSkinTheBezier, Vcl.Buttons, Vcl.ExtCtrls, acPNG;

type
  TFrmConsultaFactCXP = class(TForm)
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
    Label4: TLabel;
    Edit4: TEdit;
    cxGroupBox2: TcxGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Dfinal: TcxDateEdit;
    DInicio: TcxDateEdit;
    ChkFecha: TcxCheckBox;
    RGTipoFactura: TcxRadioGroup;
    RGEstado: TcxRadioGroup;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1NOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1PLAZO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_V: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPEND: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DsCosulta: TDataSource;
    Edit1: TEdit;
    Panel23: TPanel;
    SpeedButton8: TSpeedButton;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaFactCXP: TFrmConsultaFactCXP;

implementation

{$R *.dfm}

uses Unit2, UInicio, uCobroFact, UCobroFactCxP, tools;

procedure TFrmConsultaFactCXP.cxButton2Click(Sender: TObject);
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

     if edit4.Text <>'' then
       begin
         sql.Add('and a.nofact like '+#39+'%'+Edit4.Text+'%'+#39);
       end;

     if RGTipoFactura.ItemIndex = 0 then
       begin
         sql.Add('and a.estado <>2');
       end;

       if RGTipoFactura.ItemIndex = 1 then
       begin
         sql.Add('and a.estado =2');
       end;


       params[0].Value := StrToInt(edit1.Text);

     if RGEstado.ItemIndex = 0 then
       begin
          sql.Add('and a.fecha_v <:rr');
       end;

     if RGEstado.ItemIndex = 1 then
       begin
       sql.Add('and a.fecha_v BETWEEN CURRENT_DATE + 1 AND CURRENT_DATE + 5');
       end;

     if ChkFecha.Checked = true then
       begin
       if Edit1.Text <> '' then begin

        params[1].Value := DInicio.Date;
        params[2].Value := Dfinal.Date;
       end else begin
                     params[0].Value := DInicio.Date;
                     params[1].Value := Dfinal.Date;
                end;


       end;

       if RGEstado.ItemIndex = 0 then
       begin
          if (Edit1.Text <> '') and (ChkFecha.Checked = true) then begin

              params[3].Value := date();
          end;

           if (Edit1.Text <> '') and (ChkFecha.Checked = false) then begin

              params[1].Value := date();
          end;
          if (Edit1.Text ='') and (ChkFecha.Checked = true) then begin

                      params[2].Value := date();
                   end;

          if (Edit1.Text='') and (ChkFecha.Checked = false) then begin

                      params[0].Value := date();
                   end;

       end;




    open;



  end;
end;

procedure TFrmConsultaFactCXP.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if QConsultaMONTOPEND.Value  > 0.00 then begin

  with FrmCobroCXP.numd do
            begin
               close;
               sql.Clear;
               sql.Add('select gen_id(GEN_DPAGOCXP_ID, 1) from RDB$DATABASE');
               open;
            end;

    datos.TDpagoCxc.Open;
    datos.TDpagoCxc.Append;
    datos.TDpagoCxcID.Value         := FrmCobroCXP.NumDGEN_ID.Value;
    datos.TDpagoCxcNO_FACT.Value    := QConsultaNOFACT.Value;
    datos.TDpagoCxcMODENA.Value     := QConsultaMONEDA.Value;
    datos.TDpagoCxcMONTO.Value      := QConsultaMONTOFACT.Value;
    datos.TDpagoCxcMONTOC.Value     := QConsultaMONTOPAGO.Value;
    datos.TDpagoCxcPAGADO.Value     := QConsultaMONTOFACT.Value;
    datos.TDpagoCxcESTADO.Value     := QConsultaNOID.Value;

    datos.TDpagoCxc.ApplyUpdates;
    datos.Data.Commit;
    close;
  end else begin
       MsgInformacion(' Esta Factura ya Esta pagada ');
  end;
end;

procedure TFrmConsultaFactCXP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FrmConsultaFactCXP := nil;
    Action := caFree;
end;

procedure TFrmConsultaFactCXP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TFrmConsultaFactCXP.FormShow(Sender: TObject);
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
    params[0].Value := StrToInt(edit1.Text);
    open;
  end;
end;

procedure TFrmConsultaFactCXP.SpeedButton8Click(Sender: TObject);
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

     if edit4.Text <>'' then
       begin
         sql.Add('and a.nofact like '+#39+'%'+Edit4.Text+'%'+#39);
       end;

     if RGTipoFactura.ItemIndex = 0 then
       begin
         sql.Add('and a.estado <>2');
       end;

       if RGTipoFactura.ItemIndex = 1 then
       begin
         sql.Add('and a.estado =2');
       end;


       params[0].Value := StrToInt(edit1.Text);

     if RGEstado.ItemIndex = 0 then
       begin
          sql.Add('and a.fecha_v <:rr');
       end;

     if RGEstado.ItemIndex = 1 then
       begin
       sql.Add('and a.fecha_v BETWEEN CURRENT_DATE + 1 AND CURRENT_DATE + 5');
       end;

     if ChkFecha.Checked = true then
       begin
       if Edit1.Text <> '' then begin

        params[1].Value := DInicio.Date;
        params[2].Value := Dfinal.Date;
       end else begin
                     params[0].Value := DInicio.Date;
                     params[1].Value := Dfinal.Date;
                end;


       end;

       if RGEstado.ItemIndex = 0 then
       begin
          if (Edit1.Text <> '') and (ChkFecha.Checked = true) then begin

              params[3].Value := date();
          end;

           if (Edit1.Text <> '') and (ChkFecha.Checked = false) then begin

              params[1].Value := date();
          end;
          if (Edit1.Text ='') and (ChkFecha.Checked = true) then begin

                      params[2].Value := date();
                   end;

          if (Edit1.Text='') and (ChkFecha.Checked = false) then begin

                      params[0].Value := date();
                   end;

       end;




    open;



  end;
end;

end.
