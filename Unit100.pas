unit Unit100;

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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, Data.DB, ZAbstractRODataset, ZDataset,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxDBEdit, cxDropDownEdit, cxMemo, cxCalc, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmTransaciones = class(TForm)
    GP1: TcxGroupBox;
    GP2: TcxGroupBox;
    Numero: TZReadOnlyQuery;
    NumeroMAX: TIntegerField;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton1: TcxButton;
    Label1: TLabel;
    DsZTBanco: TDataSource;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label4: TLabel;
    cxButton2: TcxButton;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton3: TcxButton;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label8: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Label9: TLabel;
    Actualiza: TZReadOnlyQuery;
    NUmero2: TZReadOnlyQuery;
    NUmero2MAX: TIntegerField;
    Edit1: TEdit;
    Balance: TZReadOnlyQuery;
    BalanceFECHA: TDateField;
    BalanceULTIMO: TFloatField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure nuevoClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTransaciones: TFrmTransaciones;

implementation

{$R *.dfm}

uses Unit2, Unit101, Unit102, UInicio;

procedure TFrmTransaciones.cxButton1Click(Sender: TObject);
begin

datos.ZTBanco.CancelUpdates;
datos.Data.Rollback;


datos.ZTBanco.Close;

         nuevo.Enabled    := true;
         guardar.Enabled   := false;
         cxButton1.Enabled := false;
         gp1.Enabled := false;
          gp2.Enabled := false;
end;

procedure TFrmTransaciones.cxButton2Click(Sender: TObject);
begin
if FrmBtransaciones = NIL then
  begin
    FrmBtransaciones := TFrmBtransaciones.Create(SELF);
    FrmBtransaciones.showmodal;
  end;

end;

procedure TFrmTransaciones.cxButton3Click(Sender: TObject);
begin
if FrmBCtasBancos = NIL then
  begin
   FrmBCtasBancos := TFrmBCtasBancos.Create(SELF);
   FrmBCtasBancos.Edit2.Text := '1';
   FrmBCtasBancos.showmodal;
  end;

end;

procedure TFrmTransaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmTransaciones := nil;
Action := caFree;
end;

procedure TFrmTransaciones.guardarClick(Sender: TObject);
begin
if (cxDBComboBox1.Text <>'') and (cxDBSpinEdit3.Text <>'') and (cxDBTextEdit3.Text <>'') and (cxDBCalcEdit1.Text <>'') then
    begin
         datos.ZTBanco.ApplyUpdates;
         datos.Data.Commit;

         datos.ZTBanco.Close;

         nuevo.Enabled    := true;
         guardar.Enabled   := false;
         cxButton1.Enabled := false;
         gp1.Enabled := false;
         gp2.Enabled := false;


         with datos.ZTBanco do
           begin
             close;
             sql.Clear;
             sql.Add('select a.*, b.transacion, c.banco, c.no_cta from TB_TBANCO a');
             sql.Add('inner join tb_tipotrans b On a.id_tipotrans = b.id');
             sql.Add('inner join tb_bancos c On a.idbanco = c.id');
             sql.Add('where a.id=:op1');
             params[0].Value := StrToInt(edit1.Text);
             open;
           end;


//          INSERT INTO TB_TIPOTRANS
//  (ID, TRANSACION)
//VALUES
//  (:ID, :TRANSACION)

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
                params[1].Value := datos.ZTBancoFECHA.Value;
                params[2].Value := datos.ZTBancoIDBANCO.Value;

                if datos.ZTBancoTIPO.Value ='ENTRADA' then
                  begin
                    PARAMS[3].Value := DATOS.ZTBancoMONTO.Value;
                  end else begin
                               PARAMS[3].Value := 0.00;
                           end;

                if datos.ZTBancoTIPO.Value ='SALIDA' then
                  begin
                    PARAMS[4].Value := DATOS.ZTBancoMONTO.Value;
                  end else begin
                               PARAMS[4].Value := 0.00;
                           end;

                 params[5].Value := datos.ZTBancoID_TIPOTRANS.Value;
                 params[6].Value := 1;

                    with balance do
                           begin
                             close;
                             sql.Clear;
                             sql.Add('select first 1 max(fecha) Fecha,   MAX(ID), ultimo from tb_transaciones');
                             sql.Add('where id_cta =:id_cta');
                             sql.Add('group by ultimo, ID');
                             sql.Add('ORDER by ID DESC');
                             params[0].Value := datos.ZTBancoIDBANCO.Value;
                             open;
                            end;

               
                       if Balance.RecordCount > 0 then BEGIN

                      if datos.ZTBancoTIPO.Value ='SALIDA' then begin
                            params[7].Value := BalanceULTIMO.Value - DATOS.ZTBancoMONTO.Value;
                          end;
                         if datos.ZTBancoTIPO.Value ='ENTRADA' then begin
                            params[7].Value := BalanceULTIMO.Value + DATOS.ZTBancoMONTO.Value;
                          end;
                       END ELSE BEGIN
                          if datos.ZTBancoTIPO.Value ='SALIDA' then begin
                            params[7].Value := DATOS.ZTBancoMONTO.Value;
                          end;
                         if datos.ZTBancoTIPO.Value ='ENTRADA' then begin
                            params[7].Value := DATOS.ZTBancoMONTO.Value;
                          end;

                       END;


                 ExecSQL;


              end;

              Edit1.Clear;
              datos.Data.Commit;
               datos.ZTBanco.Close;
    end else begin
               ShowMessage(' Registro no puede ser guardado, tienes que llenar todos los campos ');
             end;


end;

procedure TFrmTransaciones.nuevoClick(Sender: TObject);
begin

with numero do  begin
                  close;
                  open;
                end;

  datos.ZTBanco.Open;
  datos.ZTBanco.Insert;
  datos.ZTBancoID.Value := NumeroMAX.Value + 1;
  datos.ZTBancoFECHA.Value := now();

  edit1.Text := datos.ZTBancoID.text;
   gp1.Enabled := true;
   gp2.Enabled := true;

  nuevo.Enabled := false;
guardar.Enabled := true;
cxButton1.Enabled := true;
end;

end.
