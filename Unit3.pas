unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls,ExtCtrls, FMTBcd, SqlExpr, Grids, DBGrids,
  ZAbstractRODataset, ZDataset, Buttons, ZAbstractDataset, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, Vcl.Menus, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  RxLookup, cxDBEdit, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxGroupBox,
  dxGDIPlusClasses, ZStoredProcedure, frxBarcode, frxClass, frxDBSet,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  acPNG;

type
  TFrmCliente = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DsqCliente: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBComboBox3: TDBComboBox;
    DsFqClientes: TDataSource;
    DBEdit4: TDBEdit;
    numero_cliente: TZQuery;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    Rutas: TZReadOnlyQuery;
    QRuta: TZReadOnlyQuery;
    QRutaID: TIntegerField;
    QRutaNOMBRE_RUTA: TWideStringField;
    QRutaIDVENDEDOR: TIntegerField;
    QRutaNOMBRE: TWideStringField;
    DsRuta: TDataSource;
    qREGION: TZReadOnlyQuery;
    qREGIONCODIGO_REGIONAL: TIntegerField;
    qREGIONDESC_REGIONAL: TWideStringField;
    PROVINCIA: TZReadOnlyQuery;
    PROVINCIACODIGO_PROVINCIA: TIntegerField;
    PROVINCIADESC_PROVINCIA: TWideStringField;
    MUNICIPIO: TZReadOnlyQuery;
    MUNICIPIOCODIGO_MUNICIPIO: TIntegerField;
    MUNICIPIODESC_MUNICIPIO: TWideStringField;
    dSrEGION: TDataSource;
    dSpROVINCIA: TDataSource;
    DSMUNICIPIO: TDataSource;
    PROVINCIACODIGO_REGIONAL: TIntegerField;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    DBComboBox1: TDBComboBox;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label19: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label20: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label21: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label42: TLabel;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    DBComboBox2: TDBComboBox;
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
    cxDBComboBox2: TcxDBComboBox;
    SP_BRNC: TZStoredProc;
    SP_BRNCFTCDOCUMENTOEXISTE: TWideStringField;
    DBEdit11: TDBEdit;
    PanelPin: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    DBEdit15: TDBEdit;
    cxButton4: TcxButton;
    NumeroPin: TZQuery;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    FrxConfig: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    CodBar1_3_sp: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Label23: TLabel;
    Panel5: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    cod_txt: TEdit;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    pnlEdit: TPanel;
    Label26: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    Panel6: TPanel;
    Panel10: TPanel;
    BtCancelar: TSpeedButton;
    Panel7: TPanel;
    g_cambios: TSpeedButton;
    Panel8: TPanel;
    cxButton1: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    function TraeNumeroOrden(codigo:Integer):Integer;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure IbClientesNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure SetCommitRollback (bState: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure g_cambiosClick(Sender: TObject);
    function PrimaL(const S: string): String;
    procedure cxDBLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxDBLookupComboBox3PropertiesChange(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
//    function RightStr(Const Str: String; Size: Word): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

uses tools, Unit2, Unit63, UInicio;

function TFrmcliente.TraeNumeroOrden(codigo:Integer):Integer;
begin

   with numero_cliente do
     begin
     close;
     open;
   end;
   if numero_cliente.Fields[0].IsNull then
      Result := 1
   else
      Result := numero_cliente.Fields[0].Value + 1;

end;

procedure TFrmCliente.SetCommitRollback (bState: Boolean);
Begin
   // update button state
  // g_cambios.Enabled   := bState;
//   btnRollback.Enabled := bState;
End;
procedure TFrmCliente.SpeedButton1Click(Sender: TObject);
var
lnom : string;
dia, mes, ano : word;
fec : TDate;
begin

   if datos.ZUconfiguracionTerminal.Value = 'Normal' then
               begin

                          if dbedit2.Text =''then
                            begin
                                MsgError('Cliente no puede ser guardado'#13+
                                           'Favor introducir el nombre del cliente');
                                dbedit2.SetFocus;
                            end else begin

                             if (dbedit8.Text='') then
                                 begin

                                   MsgError('Cliente no puede ser guardado'#13+
                                           'Favor Introducir Condición o Limite de Crédito');


                                end else begin

                              datos.fbtclientes.Edit;
                              lnom := primal(dbedit2.text);
                    //          if DBEdit11.Text ='' then
                    //            begin
                    //          fec := now();
                    //          decodedate(fec, ano, mes, dia);
                    //          //datos.FbtClientesNUMEROPIN.Value :=IntToStr(datos.FbtClientesCODIGO.Value)+lnom+IntToStr(dia)+intToStr(ano)+INtToStr(mes);
                    //            end;

                                   end;


          DATOS.FbtClientes.ApplyUpdates;
          // Commit and update button states

         datos.Data.Commit;
       //  ibqclientes.Refresh;
        //  SetCommitRollback (False);
            // refresh query resultset
       //  datos.FbtClientes.Refresh;
   // update AutoCommit button state
//        g_cambios.Down := datos.Data.AutoCommit;
//            If datos.Data.AutoCommit Then
//                 g_cambios.Font.Color := clgreen;
//            end;

           end;
            cxButton1.Enabled := true;
            g_cambios.Enabled := false;
            btcancelar.Enabled := false;
           // cxButton5.Enabled := true;
            IbqClientes.Close;
            IbqClientes.Open;

       end ELSE begin
                    if dbedit2.Text =''then
                            begin
                                MsgError('Cliente no puede ser guardado'#13+
                                           'Favor introducir el nombre del cliente');
                                dbedit2.SetFocus;
                            end else begin
                                 DATOS.FbtClientes.ApplyUpdates;
          // Commit and update button states

                                  datos.Data.Commit;
                                  cxButton1.Enabled := true;
            g_cambios.Enabled := false;
            btcancelar.Enabled := false;
            //cxButton5.Enabled := true;
            IbqClientes.Close;
            IbqClientes.Open;
            PanelPin.Visible := false;
                            end;
                end;




end;

procedure TFrmCliente.SpeedButton2Click(Sender: TObject);
begin
datos.FbtClientes.open;
datos.FbtClientes.insert;
datos.FbtClientescodigo.Value := TraeNumeroOrden(datos.FbtClientescodigo.Value);
datos.FbtClientescodigo_t.Value := '000'+INtToStr(datos.FbtClientescodigo.Value);
datos.FbtClientesCREDITOLIMITE.Value :=0.00;
datos.FbtClientesESTADO.Value := 'Activo';
datos.FbtClientesRENGLONCNF.Value :='Cons. Final';
datos.FbtClientesPAGOITB.Value :='No';
datos.FbtClientesBALANCE.Value := 0.00;
DATOS.FbtClientesCOLOR.Value := 'PRECIO 1';
datos.FbtClientesNUMEROPIN.Value := 'NORMAL';
datos.FbtClientesRUTA_ID.Value := 0;

 cxButton1.Enabled := false;
 g_cambios.Enabled := true;
 btcancelar.Enabled := true;
// cxButton5.Enabled := false;
 qruta.Open;
 qREGION.Open;
end;

procedure TFrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmCliente := nil;
Action := caFree;
end;

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
SetCommitRollback (true);
end;

procedure TFrmCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
      begin
          Key := #0;
          Perform(WM_NEXTDLGCTL, 0, 0);
      end;
end;

procedure TFrmCliente.fcShapeBtn2Click(Sender: TObject);
begin
{if datos.CLIENTE.State = dsinsert then
  begin
      if dbedit2.Text =''then
        begin
            MsgError('Cliente no puede ser guardado'#13+
      	               'Favor introducir el nombre del cliente');
            dbedit2.SetFocus;
        end else begin
        datos.CLIENTE.Post;
       // datos.Wt.Commit;
       // datos.Wt.StartTransaction;
        end;
  end;

 }

end;

procedure TFrmCliente.fcShapeBtn3Click(Sender: TObject);
begin
{datos.CLIENTE.Cancel;}

end;

procedure TFrmCliente.IbClientesNewRecord(DataSet: TDataSet);
begin
{datos.CLIENTEESTADO.Value :='Activo';

datos.CLIENTERENGLONCNF.Value :='Ninguno';
 }
end;

procedure TFrmCliente.FormShow(Sender: TObject);
begin
datos.FbtClientes.CLOSE;
IBQCLIENTES.CLOSE;
IBQCLIENTES.OPEN;
edtBuscar.SetFocus;
Label15.Visible := true;
cxDBComboBox2.Visible := true;
//    if (datos.ZUconfiguracionTerminal.Value = 'Pizzeria') or (datos.ZUconfiguracionTerminal.Value = 'Touch') then
//               begin
//                 Label15.Visible := true;
//                 cxDBComboBox2.Visible := true;
//
//               end else begin
//                            Label15.Visible := false;
//                            cxDBComboBox2.Visible := false;
//                        end;


end;

procedure TFrmCliente.BitBtn4Click(Sender: TObject);
begin
if datos.FbtClientesBALANCE.Value <= 0 then
begin
if application.MessageBox ('Realmente deseas eliminar a este cliente?','Precausion',Mb_YesNo+MB_IconStop) = Id_yes then
         begin
             datos.FbtClientes.Delete;
             datos.FbtClientes.ApplyUpdates;
              datos.Data.Commit;
             ibqclientes.Refresh;


         end;
end;
 if datos.FbtClientesBALANCE.Value > 0 then
begin
  MsgError('Cliente tiene cuenta pendiente'#13+
      	               'Favor Realizar de Alta a este expediente');

end;


end;

procedure TFrmCliente.btnGuardarClick(Sender: TObject);
begin
  datos.FbtClientes.CancelUpdates;
            cxButton1.Enabled := true;
            g_cambios.Enabled := false;
            btcancelar.Enabled := false;
           // cxButton5.Enabled := true;
            PanelPin.Visible := false;
end;

procedure TFrmCliente.btnsalirClick(Sender: TObject);
begin
 datos.FbtClientes.CancelUpdates;
           close;
end;

function TFrmcliente.PrimaL(const S: string): String;
var
  i: integer;
begin
  if IsCharAlphaNumeric(S[1]) and (S[1] <> ' ') then Result:= Result + S[1]
  else Result:= '';
  for i:= 1 to Length(S) do
    if (Not IsCharAlphaNumeric(S[i]) or (S[i] = ' ')) and (S[i+1]<>' ') then Result:= Result + S[i+1];
end;



procedure TFrmCliente.g_cambiosClick(Sender: TObject);
var
lnom : string;
dia, mes, ano : word;
fec : TDate;
begin

   if datos.ZUconfiguracionTerminal.Value = 'Normal' then
               begin

                          if dbedit2.Text =''then
                            begin
                                MsgError('Cliente no puede ser guardado'#13+
                                           'Favor introducir el nombre del cliente');
                                dbedit2.SetFocus;
                            end else begin

                             if (dbedit8.Text='') then
                                 begin

                                   MsgError('Cliente no puede ser guardado'#13+
                                           'Favor Introducir Condición o Limite de Crédito');


                                end else begin

                              datos.fbtclientes.Edit;
                              lnom := primal(dbedit2.text);
                    //          if DBEdit11.Text ='' then
                    //            begin
                    //          fec := now();
                    //          decodedate(fec, ano, mes, dia);
                    //          //datos.FbtClientesNUMEROPIN.Value :=IntToStr(datos.FbtClientesCODIGO.Value)+lnom+IntToStr(dia)+intToStr(ano)+INtToStr(mes);
                    //            end;

                                   end;


          DATOS.FbtClientes.ApplyUpdates;
          // Commit and update button states

         datos.Data.Commit;
       //  ibqclientes.Refresh;
        //  SetCommitRollback (False);
            // refresh query resultset
       //  datos.FbtClientes.Refresh;
   // update AutoCommit button state
//        g_cambios.Down := datos.Data.AutoCommit;
//            If datos.Data.AutoCommit Then
//                 g_cambios.Font.Color := clgreen;
//            end;

           end;
            cxButton1.Enabled := true;
            g_cambios.Enabled := false;
            btcancelar.Enabled := false;
           // cxButton5.Enabled := true;
            IbqClientes.Close;
            IbqClientes.Open;

       end ELSE begin
                    if dbedit2.Text =''then
                            begin
                                MsgError('Cliente no puede ser guardado'#13+
                                           'Favor introducir el nombre del cliente');
                                dbedit2.SetFocus;
                            end else begin
                                 DATOS.FbtClientes.ApplyUpdates;
          // Commit and update button states

                                  datos.Data.Commit;
                                  cxButton1.Enabled := true;
            g_cambios.Enabled := false;
            btcancelar.Enabled := false;
          //  cxButton5.Enabled := true;
            IbqClientes.Close;
            IbqClientes.Open;
            PanelPin.Visible := false;
                            end;
                end;




end;

procedure TFrmCliente.cxButton1Click(Sender: TObject);
begin
//SetCommitRollback (true);


end;

procedure TFrmCliente.cxButton2Click(Sender: TObject);
begin
if PanelPin.Visible = true then begin
                                  PanelPin.Visible := false;
                                end else begin
                                           PanelPin.Visible := true;
                                           if datos.FbtClientesPINVIP.Value <>'' then
                                             begin
                                               cxButton3.Enabled :=false;
                                             end else begin
                                                        cxButton3.Enabled := TRUE;
                                                      end;

                                         end;
end;

procedure TFrmCliente.cxButton3Click(Sender: TObject);
var
cero : string;
begin


with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_CLIENTE_ID, 1) from RDB$DATABASE');
     open;
  end;
  datos.FbtClientes.Edit;
  datos.FbtClientesPIN.Value := numeroGEN_ID.Value;

  if datos.FbtClientesPIN.Value  >= 1 then
        begin
           cero := '0000000';
     end;

     if datos.FbtClientesPIN.Value  >= 10 then
        begin
           cero := '000000';
     end;

     if datos.FbtClientesPIN.Value >= 100 then
        begin
           cero := '00000';
     end;

     if datos.FbtClientesPIN.Value >= 1000 then
        begin
           cero := '0000';
     end;

       if datos.FbtClientesPIN.Value >= 10000 then
        begin
           cero := '000';
     end;



     datos.FbtClientesPINVIP.Value := PrimaL(datos.FbtClientesNOMBRES.Value)+cero+InttoStr(datos.FbtClientesPIN.Value);
end;

procedure TFrmCliente.cxButton4Click(Sender: TObject);
var
BarCode1: TfrxBarCodeView;
begin
                 BarCode1         :=CodBar1_3_sp.FindObject('BarCode1') as TfrxBarCodeView;
                 Barcode1.Text    := datos.FbtClientesPINVIP.Value;
                 CodBar1_3_sp.PrepareReport;
                 CodBar1_3_sp.print;
end;

procedure TFrmCliente.cxDBLookupComboBox2PropertiesChange(Sender: TObject);
begin
 with provincia do
   begin
     close;
     sql.Clear;
     sql.Add('SELECT distinct CODIGO_provincia, DESC_provincia, codigo_regional FROM PROVINCIAS');
     sql.Add('where codigo_regional =:op1');
     params[0].Value := datos.FbtClientesREGIONID.Value;
     open;

   end;
end;

procedure TFrmCliente.cxDBLookupComboBox3PropertiesChange(Sender: TObject);
begin
 with municipio do
   begin
     close;
     sql.Clear;
     sql.Add('SELECT CODIGO_MUNICIPIO, DESC_MUNICIPIO FROM PROVINCIAS');
     sql.Add('where codigo_provincia =:op1');
     params[0].Value := datos.FbtClientesprovinciaID.Value;
     open;

   end;
end;

procedure TFrmCliente.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

 with datos.FbtClientes do
   begin
     close;
     sql.Clear;
     sql.Add('select * from cliente');
     sql.Add('where codigo_t=:opp');
     params[0].Value := ibqclientescodigo_t.Value;
     open;
   end;



 cxButton1.Enabled := false;
 g_cambios.Enabled := true;
 btcancelar.Enabled := true;
// cxButton5.Enabled := false;
   qruta.Open;
   qREGION.Open;

   datos.FbtClientes.Edit;

   datos.FbtClientesBALANCE.Value := datos.FbtClientesCREDITOLIMITE.Value - datos.FbtClientesMUSADOS.Value;

end;

procedure TFrmCliente.DBEdit8Exit(Sender: TObject);
begin
datos.FbtClientes.Edit;
datos.FbtClientesBALANCE.Value := datos.FbtClientesCREDITOLIMITE.Value - datos.FbtClientesMUSADOS.Value;
end;

procedure TFrmCliente.Edit1Change(Sender: TObject);
begin


  // SetCommitRollback (true);
end;
procedure TFrmCliente.edtBuscarChange(Sender: TObject);
begin

 with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.nombres like :value');
        params[0].Value := '%'+edtbuscar.text+'%';
        open;
      end;

end;

end.
