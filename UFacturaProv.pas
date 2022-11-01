unit UFacturaProv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxTrackBar,
  dxSparkline, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonCustomizationForm, dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbon,
  dxBar, cxBarEditItem, cxClasses, dxRibbonMiniToolbar, cxRadioGroup, cxTextEdit,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, cxCheckBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.ExtCtrls, cxDBEdit, cxSpinEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxGDIPlusClasses,
  cxImage, dxSkinSharp, dxSkinTheBezier, acPNG, Vcl.Buttons;

type
  TFrmFactProveedores = class(TForm)
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
    DsCosulta: TDataSource;
    GBConsultar: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    cxGroupBox1: TcxGroupBox;
    Dfinal: TcxDateEdit;
    DInicio: TcxDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    RGTipoFactura: TcxRadioGroup;
    RGEstado: TcxRadioGroup;
    Qproveedor: TZReadOnlyQuery;
    QproveedorCOD: TIntegerField;
    QproveedorCOD_FAB: TWideStringField;
    QproveedorDESCRIPCION: TWideStringField;
    QproveedorCONTACTO: TWideStringField;
    QproveedorTELEFONO: TWideStringField;
    QproveedorFAX: TWideStringField;
    QproveedorEMAIL: TWideStringField;
    QproveedorDIRECCION: TWideStringField;
    ChkFecha: TcxCheckBox;
    Panel1: TPanel;
    Label6: TLabel;
    ZuNCF: TZReadOnlyQuery;
    QConsultaNCF: TWideStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label7: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DataSource1: TDataSource;
    cxDBTextEdit5: TcxDBTextEdit;
    Panel2: TPanel;
    btnsalir: TSpeedButton;
    Panel4: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label19: TLabel;
    Panel12: TPanel;
    Label25: TLabel;
    lblEstado: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1NOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1PLAZO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_V: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOFACT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOPEND: TcxGridDBColumn;
    cxGrid1DBTableView1MONEDA: TcxGridDBColumn;
    cxGrid1DBTableView1CAMBIOMONEDA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel23: TPanel;
    SpeedButton8: TSpeedButton;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    Panel7: TPanel;
    SpeedButton2: TSpeedButton;
    Panel8: TPanel;
    SpeedButton3: TSpeedButton;
    Panel9: TPanel;
    SpeedButton4: TSpeedButton;
    Panel13: TPanel;
    SpeedButton5zzzz: TSpeedButton;
    Panel14: TPanel;
    SpeedButton5: TSpeedButton;
    Panel15: TPanel;
    SpeedButton6: TSpeedButton;
    Panel16: TPanel;
    SpeedButton7: TSpeedButton;
    Panel17: TPanel;
    SpeedButton9: TSpeedButton;
    QConsultaNOMBRE_PRO: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtNCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5zzzzClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFactProveedores: TFrmFactProveedores;

implementation

{$R *.dfm}

uses Unit2, Unit65, Unit61, Unit29, Unit108, UCobroFactCxP, UInicio;

procedure TFrmFactProveedores.BtNCClick(Sender: TObject);
var
cero:string;
begin
if FrmCobroCXP = nil then
  begin
    FrmCobroCXP := tFrmCobroCXP.Create(Self);

    with FrmCobroCXP.num do
            begin
               close;
               sql.Clear;
               sql.Add('select gen_id(GEN_PAGOCXP_ID, 1) from RDB$DATABASE');
               open;
            end;

       datos.TPagoCXP.Open;
       datos.TPagoCXP.Append;
       datos.TPagoCXPID.Value := FrmCobroCXP.NumGEN_ID.Value;
       FrmCobroCXP.Edit1.Text := IntToStr(FrmCobroCXP.NumGEN_ID.Value);
       datos.TPagoCXPFORMAPAGO.Value  := 'Cheque';


     if datos.TPagoCXPID.Value  >= 1 then
       begin
          cero := '0000000';
     end;

     if datos.TPagoCXPID.Value  >= 10 then
        begin
           cero := '000000';
     end;

     if datos.TPagoCXPID.Value  >= 100 then
        begin
           cero := '00000';
     end;

     if datos.TPagoCXPID.Value >= 1000 then
        begin
           cero := '0000';
     end;

     if datos.TPagoCXPID.Value >= 10000 then
        begin
           cero := '000';
     end;

     if datos.TPagoCXPID.Value >= 100000 then
        begin
           cero := '00';
     end;

     if datos.TPagoCXPID.Value >= 1000000 then
        begin
           cero := '0';
     end;

     if datos.TPagoCXPID.Value >= 10000000 then
        begin
           cero := '';
     end;

     datos.TPagoCXPNORECIBO.Value := cero+''+IntToStr(datos.TPagoCXPID.Value);
     datos.TPagoCXPFECHA.Value := now();

    FrmCobroCXP.ShowModal;
  end;
end;

procedure TFrmFactProveedores.btnsalirClick(Sender: TObject);
begin
Close;
end;

procedure TFrmFactProveedores.cxButton1Click(Sender: TObject);
begin
//with ZuNCF do
//  begin
//    close;
//    sql.Clear;
//    sql.Add('update MASTER_AJUSTE set ncf =:ncf1 where noid=:no');
//    Params[0].Value := edit3.Text;
//    Params[1].Value  := QConsultaNOID.Value;
//    ExecSQL;
//  end;

 
end;

procedure TFrmFactProveedores.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
if FrmCompras = nil then
  begin
    FrmCompras := TFrmCompras.Create(self);


with datos.ZAjusteM do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.nombre_pro, f.descripcion almacen from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join man_provedores e On a.provid = e.cod_prov');
    sql.Add('left join almacenes f On a.cod_alm = f.id ');
    sql.Add('where a.noId =:op1');
    params[0].Value := qconsultanoid.Value;
    open;
  end;




  datos.AjusteD.Open;
  frmcompras.opm.Enabled := true;


            FrmCompras := TFrmCompras.Create(self);
            frmcompras.OpDetalle.Enabled := true;
            frmcompras.cxButton3.Enabled := false;
            frmcompras.cxButton4.Enabled := false;
            frmcompras.cxButton6.Enabled := false;
//      frmcompras.cxButton7.Enabled := true;
            frmcompras.cxDBComboBox1.ItemIndex := 1;
   //close;
            FrmCompras.ShowModal;


//   frmcompras.cxButton2.Enabled := false;

  end;


end;


procedure TFrmFactProveedores.Edit2KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmFactProveedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmFactProveedores := nil;
Action := caFree;
FrmHome.pnl_Menu_Lateral.Visible := true;
  FrmHome.pnlTop.Visible := true;
  FrmHome.btnsalir.Enabled := true;

end;

procedure TFrmFactProveedores.FormCreate(Sender: TObject);
begin
QConsulta.Close;
QConsulta.Open;
end;

procedure TFrmFactProveedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    begin
          edit2.Clear;
          edit1.Clear;
          DInicio.Clear;
          Dfinal.Clear;
          edit4.Clear;
          ChkFecha.Checked := false;
          GBConsultar.Visible := false;
    end;
end;

procedure TFrmFactProveedores.SpeedButton1Click(Sender: TObject);
begin
  GBConsultar.Visible := true;
end;

procedure TFrmFactProveedores.SpeedButton2Click(Sender: TObject);
var
cero:string;
begin
if FrmCobroCXP = nil then
  begin
    FrmCobroCXP := tFrmCobroCXP.Create(Self);

    with FrmCobroCXP.num do
            begin
               close;
               sql.Clear;
               sql.Add('select gen_id(GEN_PAGOCXP_ID, 1) from RDB$DATABASE');
               open;
            end;

       datos.TPagoCXP.Open;
       datos.TPagoCXP.Append;
       datos.TPagoCXPID.Value := FrmCobroCXP.NumGEN_ID.Value;
       FrmCobroCXP.Edit1.Text := IntToStr(FrmCobroCXP.NumGEN_ID.Value);
       datos.TPagoCXPFORMAPAGO.Value  := 'Cheque';


     if datos.TPagoCXPID.Value  >= 1 then
       begin
          cero := '0000000';
     end;

     if datos.TPagoCXPID.Value  >= 10 then
        begin
           cero := '000000';
     end;

     if datos.TPagoCXPID.Value  >= 100 then
        begin
           cero := '00000';
     end;

     if datos.TPagoCXPID.Value >= 1000 then
        begin
           cero := '0000';
     end;

     if datos.TPagoCXPID.Value >= 10000 then
        begin
           cero := '000';
     end;

     if datos.TPagoCXPID.Value >= 100000 then
        begin
           cero := '00';
     end;

     if datos.TPagoCXPID.Value >= 1000000 then
        begin
           cero := '0';
     end;

     if datos.TPagoCXPID.Value >= 10000000 then
        begin
           cero := '';
     end;

     datos.TPagoCXPNORECIBO.Value := cero+''+IntToStr(datos.TPagoCXPID.Value);
     datos.TPagoCXPFECHA.Value := now();

    FrmCobroCXP.ShowModal;
  end;

end;

procedure TFrmFactProveedores.SpeedButton3Click(Sender: TObject);
begin

if FrmProvee = nil then
  begin
    FrmProvee := tFrmProvee.Create(self);
    FrmProvee.showmodal;
  end;
end;

procedure TFrmFactProveedores.SpeedButton4Click(Sender: TObject);
begin

if FrmCompras = nil then
  begin
    FrmCompras := TFrmCompras.Create(self);
    FrmCompras.ShowModal;
  end;
end;

procedure TFrmFactProveedores.SpeedButton5Click(Sender: TObject);
begin
   datos.ZAjusteM.ApplyUpdates;
     datos.data.Commit;


with QConsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.nombre_pro from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join man_provedores e On a.provid = e.cod_prov');
    sql.Add('Where a.condicion =''Compra''');
    open;
  end;



 // edit3.Clear;
  Panel1.Visible := false;
end;

procedure TFrmFactProveedores.SpeedButton5zzzzClick(Sender: TObject);
begin

with datos.ZAjusteM do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.nombre_pro, f.descripcion almacen from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join man_provedores e On a.provid = e.cod_prov');
    sql.Add('left join almacenes f On a.cod_alm = f.id ');
    sql.Add('where a.NOID =:p');
    params[0].Value := qconsultaNOID.Value;
    open;
  end;
Panel1.Visible := True;

end;

procedure TFrmFactProveedores.SpeedButton6Click(Sender: TObject);
begin

if FrmBProveedor = nil then
begin
   FrmBProveedor := tFrmBProveedor.Create(self);
   FrmBProveedor.Edit2.Text := 'COMPRA2';
   FrmBProveedor.qproveedor.Open;
   FrmBProveedor.ShowModal;
end;
end;

procedure TFrmFactProveedores.SpeedButton7Click(Sender: TObject);
begin

with QConsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.nombre_pro from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join man_provedores e On a.provid = e.cod_prov');
    sql.Add('Where a.condicion =''Compra''');

    if edit2.Text <> '' then
     begin
       sql.Add('and a.provid =:cod');
     end;

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

     if edit2.Text <> '' then
     begin
       params[0].Value := StrToInt(edit2.Text);
     end;

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
       if Edit2.Text <> '' then begin

        params[1].Value := DInicio.Date;
        params[2].Value := Dfinal.Date;
       end else begin
                     params[0].Value := DInicio.Date;
                     params[1].Value := Dfinal.Date;
                end;


       end;

       if RGEstado.ItemIndex = 0 then
       begin
          if (Edit2.Text <> '') and (ChkFecha.Checked = true) then begin

              params[3].Value := date();
          end;

           if (Edit2.Text <> '') and (ChkFecha.Checked = false) then begin

              params[1].Value := date();
          end;
          if (Edit2.Text ='') and (ChkFecha.Checked = true) then begin

                      params[2].Value := date();
                   end;

          if (Edit2.Text='') and (ChkFecha.Checked = false) then begin

                      params[0].Value := date();
                   end;

       end;




    open;



  end;


  edit2.Clear;
edit1.Clear;
DInicio.Clear;
Dfinal.Clear;
edit4.Clear;
ChkFecha.Checked := false;
GBConsultar.Visible := false;

end;

procedure TFrmFactProveedores.SpeedButton8Click(Sender: TObject);
begin

with QConsulta do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.nombre_pro from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join man_provedores e On a.provid = e.cod_prov');
    sql.Add('Where a.condicion =''Compra''');
    open;
  end;
end;

procedure TFrmFactProveedores.SpeedButton9Click(Sender: TObject);
begin
if FrmBProveedor = nil then
begin
   FrmBProveedor := tFrmBProveedor.Create(self);
    FrmBProveedor.Edit2.Text := 'CONSULTAFACT';
   FrmBProveedor.qproveedor.Open;
   FrmBProveedor.ShowModal;
end;
end;

end.


