unit UCobroFactCxP;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGroupBox, Data.DB, cxDBEdit, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ZAbstractRODataset, ZDataset, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, frxClass,
  frxDBSet, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxSkinSharp, dxSkinTheBezier, acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmCobroCXP = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    DspagoCXP: TDataSource;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Num: TZReadOnlyQuery;
    NumGEN_ID: TLargeintField;
    Qproveedor: TZReadOnlyQuery;
    QproveedorCOD: TIntegerField;
    QproveedorCOD_FAB: TWideStringField;
    QproveedorDESCRIPCION: TWideStringField;
    QproveedorCONTACTO: TWideStringField;
    QproveedorTELEFONO: TWideStringField;
    QproveedorFAX: TWideStringField;
    QproveedorEMAIL: TWideStringField;
    QproveedorDIRECCION: TWideStringField;
    cxDBComboBox1: TcxDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    QBancos: TZReadOnlyQuery;
    QBancosID: TIntegerField;
    QBancosBANCO: TWideStringField;
    QBancosMONEDA: TIntegerField;
    QBancosNO_CTA: TWideStringField;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsDpagoCXP: TDataSource;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTO: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOC: TcxGridDBColumn;
    cxGrid1DBTableView1PAGADO: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1MODENA: TcxGridDBColumn;
    NumD: TZReadOnlyQuery;
    NumDGEN_ID: TLargeintField;
    cxButton6: TcxButton;
    cxDBTextEdit6: TcxDBTextEdit;
    Label9: TLabel;
    Actualiza: TZReadOnlyQuery;
    NUmero2: TZReadOnlyQuery;
    NUmero2MAX: TIntegerField;
    Balance: TZReadOnlyQuery;
    BalanceFECHA: TDateField;
    BalanceULTIMO: TFloatField;
    BalanceMAX: TIntegerField;
    FxConfig: TfrxDBDataset;
    FxPagos: TfrxDBDataset;
    Recibo: TfrxReport;
    Edit1: TEdit;
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
    Panel17: TPanel;
    SpeedButton9: TSpeedButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    Panel5: TPanel;
    SpeedButton3: TSpeedButton;
    Panel23: TPanel;
    SpeedButton8: TSpeedButton;
    Panel6: TPanel;
    SpeedButton4ddfdffff: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBSpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBSpinEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8dddddClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton4ddfdffffClick(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCobroCXP: TFrmCobroCXP;

implementation

{$R *.dfm}

uses Unit20, UInicio, Unit2, Unit108, Unit102, UConsultaFactCXP, tools;

procedure TFrmCobroCXP.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmCobroCXP.cxButton1Click(Sender: TObject);
var
  concep : string;
  Concep1 : string;
begin
if (cxDBComboBox1.ItemIndex = 0) and (cxDBTextEdit4.Text = '') then begin
         MsgPrecaucion('Debes introducir el banco');
  end else begin

with datos.TDpagoCxc do
  begin
    first;
    concep := '';
    Concep1 := '';
    while not eof do
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
              params[0].Value := datos.TDpagoCxcESTADO.Value;
              open;
            end;

                datos.ZAjusteM.Edit;
                datos.ZAjusteMestado.Value := 2;
                datos.ZAjusteMMONTOPAGO.Value :=datos.TDpagoCxcPAGADO.Value;
                datos.ZAjusteMMONTOPEND.Value := 0.00;
                datos.ZAjusteMABONO.Value := 0.00;
                datos.ZAjusteMPAGADO.Value := datos.ZAjusteMPAGADO.Value + 0.00;

               if concep = '' then
                  begin

                    concep := Datos.TDpagoCxcNO_FACT.Text;

                  end else begin
                             concep := concep+', '+ Datos.TDpagoCxcNO_FACT.Text;
                           end;


                datos.ZAjusteM.ApplyUpdates;
             //   cxTextEdit1.Clear;

        next;

      end;

      datos.TPagoCXP.Edit;

      datos.TPagoCXPMONTOPAGADO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];

      datos.TPagoCXPLETRAS.Value :=  Num2Words(datos.TPagoCXPMONTOPAGADO.Value);
      datos.TPagoCXPCONCEPTOS.Value :='Pago a la(s) Factura(s) : ' + concep;

  end;



  with Actualiza do
              begin
                close;
                sql.Clear;
                sql.Add('insert into TB_TRANSACIONES (id, fecha, id_cta, entrada, salida, tipo_transacion, estado, ultimo)');
                sql.Add(' values (:id, :fecha, :id_cta, :entrada, :salida, :tipo_transacion, :estado, :ultimo)');

                 with numero2 do
                   begin
                     close;
                     sql.Clear;
                     sql.Add('select max(id) from TB_TRANSACIONES');
                     open;
                   end;

                Params[0].Value := numero2max.Value + 1;
                params[1].Value := datos.TPagoCXPFECHA.Value;
                params[2].Value := datos.TPagoCXPIDBANCO.Value;
                PARAMS[3].Value := 0.00;
                PARAMS[4].Value := datos.TPagoCXPMONTOPAGADO.Value;
                params[5].Value := 5;
                params[6].Value := 1;



                 with balance do
                           begin
                             close;
                             sql.Clear;
                             sql.Add('select first 1 max(fecha) Fecha,   MAX(ID), ultimo from tb_transaciones');
                             sql.Add('where id_cta =:id_cta');
                             sql.Add('group by ultimo, ID');
                             sql.Add('ORDER by ID DESC');
                             params[0].Value :=cxDBSpinEdit2.Value;
                             open;
                            end;

                        ShowMessage(''+FloatToStr(BalanceULTIMO.Value));
                       if Balance.RecordCount > 0 then BEGIN
                            params[7].Value := BalanceULTIMO.Value - datos.TPagoCXPMONTOPAGADO.Value;
                       END ELSE BEGIN
                          if datos.ZTBancoTIPO.Value ='SALIDA' then begin
                            params[7].Value := datos.TPagoCXPMONTOPAGADO.Value;
                          end;


                       END;


                 ExecSQL;


              end;

      datos.TPagoCXP.ApplyUpdates;
      datos.TDpagoCxc.ApplyUpdates;
      datos.Data.Commit;


      with datos.TPagoCXP do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.descripcion, b.telefono, c.banco, c.no_cta from PAGOCXP a');
          sql.Add('left join fabricantes b On A.idprov = b.cod');
          sql.Add('left join tb_bancos c On a.idbanco = c.id');
          sql.Add('where a.id =:op1');
          params[0].Value := StrToInt(edit1.Text);
          open;
        end;

       if application.MessageBox ('Deseas Imprimir Este Recibo','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                    begin
                                         Recibo.PrepareReport(true);
                                         Recibo.ShowPreparedReport;
                                    end;




      edit1.Clear;
      datos.TPagoCXP.Close;
      datos.TDpagoCxc.Close;
      edit1.Clear;
      Close;


 end;


end;

procedure TFrmCobroCXP.cxDBSpinEdit1KeyDown(Sender: TObject; var Key: Word;
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
          Params[0].Value := cxDBSpinEdit1.Value;
          open;
        end;

       cxDBTextEdit1.Text := qproveedordescripcion.Value;
  end;
end;

procedure TFrmCobroCXP.cxDBSpinEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    with QBancos do
      begin
        close;
        sql.Clear;
        sql.Add('select * from tb_bancos where id =:op');
        Params[0].Value := cxDBSpinEdit2.Value;
        open;
      end;

      datos.TPagoCXPBANCO.Value := QBancosBANCO.Value;
      datos.TPagoCXPNO_CTA.Value := QBancosNO_CTA.Value;
  end;
end;

procedure TFrmCobroCXP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmCobroCXP := nil;
Action := caFree;
end;

procedure TFrmCobroCXP.SpeedButton1Click(Sender: TObject);
begin
if FrmBCtasBancos = nil then
  begin
    FrmBCtasBancos := tFrmBCtasBancos.Create(self);
    FrmBCtasBancos.Edit2.Text := '3';
    FrmBCtasBancos.ShowModal;
  end;
end;

procedure TFrmCobroCXP.SpeedButton3Click(Sender: TObject);
begin
datos.TDpagoCxc.Delete;
datos.TDpagoCxc.ApplyUpdates;
datos.Data.Commit;
end;

procedure TFrmCobroCXP.SpeedButton4ddfdffffClick(Sender: TObject);
begin
  datos.TPagoCXP.CancelUpdates;
      datos.TDpagoCxc.cancelUpdates;
      datos.Data.Rollback;


      datos.TPagoCXP.Close;
      datos.TDpagoCxc.Close;

      close;
end;

procedure TFrmCobroCXP.SpeedButton8Click(Sender: TObject);
var
  concep : string;
  Concep1 : string;
begin
if (cxDBComboBox1.ItemIndex = 0) and (cxDBTextEdit4.Text = '') then begin
         MsgPrecaucion('Debes introducir el banco');
  end else begin

with datos.TDpagoCxc do
  begin
    first;
    concep := '';
    Concep1 := '';
    while not eof do
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
              params[0].Value := datos.TDpagoCxcESTADO.Value;
              open;
            end;

                datos.ZAjusteM.Edit;
                datos.ZAjusteMestado.Value := 2;
                datos.ZAjusteMMONTOPAGO.Value :=datos.TDpagoCxcPAGADO.Value;
                datos.ZAjusteMMONTOPEND.Value := 0.00;
                datos.ZAjusteMABONO.Value := 0.00;
                datos.ZAjusteMPAGADO.Value := datos.ZAjusteMPAGADO.Value + 0.00;

               if concep = '' then
                  begin

                    concep := Datos.TDpagoCxcNO_FACT.Text;

                  end else begin
                             concep := concep+', '+ Datos.TDpagoCxcNO_FACT.Text;
                           end;


                datos.ZAjusteM.ApplyUpdates;
             //   cxTextEdit1.Clear;

        next;

      end;

      datos.TPagoCXP.Edit;

      datos.TPagoCXPMONTOPAGADO.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];

      datos.TPagoCXPLETRAS.Value :=  Num2Words(datos.TPagoCXPMONTOPAGADO.Value);
      datos.TPagoCXPCONCEPTOS.Value :='Pago a la(s) Factura(s) : ' + concep;

  end;



  with Actualiza do
              begin
                close;
                sql.Clear;
                sql.Add('insert into TB_TRANSACIONES (id, fecha, id_cta, entrada, salida, tipo_transacion, estado, ultimo)');
                sql.Add(' values (:id, :fecha, :id_cta, :entrada, :salida, :tipo_transacion, :estado, :ultimo)');

                 with numero2 do
                   begin
                     close;
                     sql.Clear;
                     sql.Add('select max(id) from TB_TRANSACIONES');
                     open;
                   end;

                Params[0].Value := numero2max.Value + 1;
                params[1].Value := datos.TPagoCXPFECHA.Value;
                params[2].Value := datos.TPagoCXPIDBANCO.Value;
                PARAMS[3].Value := 0.00;
                PARAMS[4].Value := datos.TPagoCXPMONTOPAGADO.Value;
                params[5].Value := 5;
                params[6].Value := 1;



                 with balance do
                           begin
                             close;
                             sql.Clear;
                             sql.Add('select first 1 max(fecha) Fecha,   MAX(ID), ultimo from tb_transaciones');
                             sql.Add('where id_cta =:id_cta');
                             sql.Add('group by ultimo, ID');
                             sql.Add('ORDER by ID DESC');
                             params[0].Value :=cxDBSpinEdit2.Value;
                             open;
                            end;

                        ShowMessage(''+FloatToStr(BalanceULTIMO.Value));
                       if Balance.RecordCount > 0 then BEGIN
                            params[7].Value := BalanceULTIMO.Value - datos.TPagoCXPMONTOPAGADO.Value;
                       END ELSE BEGIN
                          if datos.ZTBancoTIPO.Value ='SALIDA' then begin
                            params[7].Value := datos.TPagoCXPMONTOPAGADO.Value;
                          end;


                       END;


                 ExecSQL;


              end;

      datos.TPagoCXP.ApplyUpdates;
      datos.TDpagoCxc.ApplyUpdates;
      datos.Data.Commit;


      with datos.TPagoCXP do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*,b.descripcion, b.telefono, c.banco, c.no_cta from PAGOCXP a');
          sql.Add('left join fabricantes b On A.idprov = b.cod');
          sql.Add('left join tb_bancos c On a.idbanco = c.id');
          sql.Add('where a.id =:op1');
          params[0].Value := StrToInt(edit1.Text);
          open;
        end;

       if application.MessageBox ('Deseas Imprimir Este Recibo','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                    begin
                                         Recibo.PrepareReport(true);
                                         Recibo.ShowPreparedReport;
                                    end;




      edit1.Clear;
      datos.TPagoCXP.Close;
      datos.TDpagoCxc.Close;
      edit1.Clear;
      Close;


 end;


end;

procedure TFrmCobroCXP.SpeedButton8dddddClick(Sender: TObject);
begin
if cxDBSpinEdit1.Value > 0 then begin
   if FrmConsultaFactCXP = nil then
     begin
       FrmConsultaFactCXP := tFrmConsultaFactCXP.Create(self);
       FrmConsultaFactCXP.Edit1.Text := cxDBSpinEdit1.Text;
       FrmConsultaFactCXP.ShowModal;
     end;
end else begin
           ShowMessage(' Debes seleccionar un proveedor ');
         end;
end;

procedure TFrmCobroCXP.SpeedButton9Click(Sender: TObject);
begin
if FrmBProveedor = nil then
begin
   FrmBProveedor := tFrmBProveedor.Create(self);
    FrmBProveedor.Edit2.Text := 'COBROFACT';
   FrmBProveedor.qproveedor.Open;
   FrmBProveedor.ShowModal;
end;
end;

end.
