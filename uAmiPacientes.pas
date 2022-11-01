unit uAmiPacientes;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, cxGroupBox,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxRadioGroup, Vcl.ExtCtrls;

type
  TFrmPacientes = class(TForm)
    cxGroupBox1: TcxGroupBox;
    QPacientes: TZReadOnlyQuery;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO: TIntegerField;
    IbqClientesNOMBRES: TWideStringField;
    IbqClientesDIRECCION: TWideStringField;
    IbqClientesCEDULA: TWideStringField;
    IbqClientesTELEFONO: TWideStringField;
    IbqClientesCELULAR: TWideStringField;
    IbqClientesCOLOR: TWideStringField;
    IbqClientesCONTACTO: TWideStringField;
    IbqClientesRENGLONCNF: TWideStringField;
    IbqClientesTXTCNF: TWideStringField;
    IbqClientesCREDITOLIMITE: TFloatField;
    IbqClientesTIPO: TWideStringField;
    IbqClientesRNC: TWideStringField;
    IbqClientesCONDICION: TWideStringField;
    IbqClientesINICIO: TDateField;
    IbqClientesSUELDO: TFloatField;
    IbqClientesPAGOITB: TWideStringField;
    IbqClientesCREDITO: TWideStringField;
    IbqClientesBALANCE: TFloatField;
    IbqClientesESTADO: TWideStringField;
    IbqClientesMOVIL: TWideStringField;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesCOMISION: TFloatField;
    IbqClientesNUMEROPIN: TWideStringField;
    IbqClientesTELEFONO3: TWideStringField;
    IbqClientesEMAIL: TWideStringField;
    IbqClientesRUTA_ID: TIntegerField;
    IbqClientesREGIONID: TIntegerField;
    IbqClientesPROVINCIAID: TIntegerField;
    IbqClientesMUNICIPIOID: TIntegerField;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    DsqCliente: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    IbqClientesIDARS: TIntegerField;
    IbqClientesTIPOPLAN: TWideStringField;
    IbqClientesNO_CARNET: TWideStringField;
    IbqClientesESTADOARS: TWideStringField;
    IbqClientesARS: TWideStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView1CEDULA: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONO: TcxGridDBColumn;
    cxGrid1DBTableView1CELULAR: TcxGridDBColumn;
    cxGrid1DBTableView1ARS: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel1: TPanel;
    op1: TcxRadioGroup;
    Edit1: TEdit;
    Label22: TLabel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    Label1: TLabel;
    Numero: TZReadOnlyQuery;
    NumeroGEN_ID: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPacientes: TFrmPacientes;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TFrmPacientes.cxButton1Click(Sender: TObject);
begin


if FrmCliente = nil then begin
    FrmCliente := tFrmCliente.Create(self);
          datos.FbtClientes.open;
          datos.FbtClientes.append;


          with numero do
            begin
               close;
               sql.Clear;
               sql.Add('select gen_id(GEN_CLIENTE_ID, 1) from RDB$DATABASE');
               open;
            end;

          datos.FbtClientescodigo.Value := NumeroGEN_ID.Value;
          datos.FbtClientescodigo_t.Value := '000'+INtToStr(datos.FbtClientescodigo.Value);
          datos.FbtClientesCREDITOLIMITE.Value :=0.00;
          datos.FbtClientesESTADO.Value := 'Activo';
          datos.FbtClientesRENGLONCNF.Value :='Cons. Final';
          datos.FbtClientesPAGOITB.Value :='No';
          datos.FbtClientesBALANCE.Value := 0.00;
          DATOS.FbtClientesCOLOR.Value := 'PRECIO 1';
          datos.FbtClientesNUMEROPIN.Value := 'NORMAL';
          datos.FbtClientesRUTA_ID.Value := 0;

          // FrmCliente.cxButton1.Enabled := false;
           FrmCliente.g_cambios.Enabled := true;
           FrmCliente.btcancelar.Enabled := true;
          // FrmCliente.cxButton5.Enabled := false;
           FrmCliente.qruta.Open;
           FrmCliente.ARS.Open;
           FrmCliente.qREGION.Open;
            FrmCliente.ShowModal;

      end;
end;

procedure TFrmPacientes.cxButton2Click(Sender: TObject);
begin
if FrmCliente = nil then begin
    FrmCliente := tFrmCliente.Create(self);


 with datos.FbtClientes do
   begin
     close;
     sql.Clear;
     sql.Add('select * from cliente');
     sql.Add('where codigo=:opp');
     params[0].Value := ibqclientescodigo.Value;
     open;
   end;



// FrmCliente.cxButton1.Enabled := false;
 FrmCliente.g_cambios.Enabled := true;
 FrmCliente.btcancelar.Enabled := true;
// FrmCliente.cxButton5.Enabled := false;
   FrmCliente.qruta.Open;
   FrmCliente.qREGION.Open;
   FrmCliente.ARS.Open;

   datos.FbtClientes.Edit;

   datos.FbtClientesBALANCE.Value := datos.FbtClientesCREDITOLIMITE.Value - datos.FbtClientesMUSADOS.Value;
   FrmCliente.ShowModal;
end;

end;

procedure TFrmPacientes.cxButton3Click(Sender: TObject);
begin
edit1.Clear;
panel1.Visible := true;
end;

procedure TFrmPacientes.cxButton5Click(Sender: TObject);
begin

Panel1.Visible := false;



end;

procedure TFrmPacientes.cxButton6Click(Sender: TObject);
begin
 with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.ars from cliente a');
        sql.Add('left join tbars b on a.idars = b.id');

        open;
      end;
end;

procedure TFrmPacientes.Edit1Change(Sender: TObject);
begin

if op1.ItemIndex = 0 then begin

 with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.ars from cliente a');
        sql.Add('left join tbars b on a.idars = b.id');
        sql.Add('where a.nombres like :value');
        params[0].Value := '%'+edit1.text+'%';
        open;
      end;
end;

if op1.ItemIndex = 1 then begin
    with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.ars from cliente a');
        sql.Add('left join tbars b on a.idars = b.id');
        sql.Add('where a.cedula like :value');
        params[0].Value := '%'+edit1.text+'%';
        open;
      end;

end;

end;

procedure TFrmPacientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_ESCAPE then
   begin
     if panel1.Visible = true then
        begin
          panel1.Visible := false;

        end;
   end;
end;

procedure TFrmPacientes.FormShow(Sender: TObject);
begin
  IbqClientes.Close;
  ibqclientes.Open;
end;

procedure TFrmPacientes.op1Click(Sender: TObject);
begin
if op1.ItemIndex = 0 then
  begin
    label22.Caption := 'Introducir Nombre del Cliente';
    edit1.SetFocus;
  end;

  if op1.ItemIndex = 1 then
  begin
    label22.Caption := 'Introducir Número Cédula';
    edit1.SetFocus;
  end;
end;

end.
