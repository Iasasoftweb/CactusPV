unit UActualizaDiasCredito;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Data.DB, ZAbstractRODataset, ZDataset, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxSpinEdit;

type
  TFrmActualizaDiasCredito = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    cxButton5: TcxButton;
    cxGroupBox2: TcxGroupBox;
    master_credito: TZReadOnlyQuery;
    master_creditoNO_FACT: TIntegerField;
    master_creditoNUMERO_FACTURA: TFloatField;
    master_creditoFECHA_FAC: TDateField;
    master_creditoFECHAVENCIMIENTO: TDateField;
    master_creditoCEDULA: TWideStringField;
    master_creditoDIRECCION: TWideStringField;
    master_creditoCLIENTENOMBRE: TWideStringField;
    master_creditoMONTO: TExtendedField;
    master_creditoABONO: TFloatField;
    master_creditoPENDIENTE: TFloatField;
    master_creditoNOMBRES_EMP: TWideStringField;
    master_creditoTELEFONO: TWideStringField;
    master_creditoDIAS: TIntegerField;
    master_creditoDIASATRASOS: TIntegerField;
    master_creditoESTADOCUENTA: TWideStringField;
    master_creditoCLIENTEID: TIntegerField;
    DsMaster_Creditos: TDataSource;
    Edit2: TEdit;
    b1: TcxButton;
    DsMasterG: TDataSource;
    master_credito_g: TZReadOnlyQuery;
    master_credito_gCLIENTENOMBRE: TWideStringField;
    master_credito_gCEDULA: TWideStringField;
    master_credito_gTELEFONO: TWideStringField;
    master_credito_gDIRECCION: TWideStringField;
    master_credito_gMONTO: TExtendedField;
    master_credito_gABONO: TExtendedField;
    master_credito_gPENDIENTE: TExtendedField;
    master_credito_gCLIENTEID: TIntegerField;
    master_credito_gCON_ATRASOS: TIntegerField;
    master_credito_gSIN_ATRASOS: TIntegerField;
    master_credito_gTFAC: TLargeintField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    Label2: TLabel;
    TDias: TcxSpinEdit;
    cxButton1: TcxButton;
    QActualizaDias: TZReadOnlyQuery;
    QActualizaVencimiento: TZReadOnlyQuery;
    procedure cxButton5Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    var
    codigo2 : Integer;
    { Public declarations }
  end;

var
  FrmActualizaDiasCredito: TFrmActualizaDiasCredito;

implementation

{$R *.dfm}

uses Unit2, UInicio, UBuscaCliente;

procedure TFrmActualizaDiasCredito.b1Click(Sender: TObject);
begin

with master_credito do
      begin
        close;
        sql.clear;
        sql.add('select A.no_fact, a.NUMERO_FACTURA, A.fecha_fac, b.cedula, b.direccion, A.fechavencimiento,B.nombres ClienteNombre, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente,d.nombres_emp,');
        sql.add('b.telefono, (A.fechavencimiento - A.fecha_fac) Dias, iif((current_date - A.fechavencimiento) >= 0, (current_date - A.fechavencimiento), 0) AS DiasAtrasos,');
        sql.add('IIF((current_date - A.fechavencimiento) >= 0, ''ATRASO'', ''NORMAL'') as EstadoCuenta, A.clienteid');
        sql.add('from master_fact a');

        sql.add('left join cliente b On a.clienteid = b.codigo');
        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
        sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
        sql.Add('and ((current_date - A.fechavencimiento) > 0)');

        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := StrToInt(edit2.Text);
        Params[4].Value := 'CREDITO';
        open;
      end;

end;

procedure TFrmActualizaDiasCredito.cxButton1Click(Sender: TObject);
begin
with QActualizaDias do
  begin
    close;
    sql.Clear;
    sql.Add('update cliente set ruta_id =ruta_id  + :dias where codigo =:cod');
    params[0].Value := TDias.Value;
    Params[1].Value := StrToInt(edit2.Text);
    ExecSQL;
  end;

  with QActualizaVencimiento do
    begin
      close;
      sql.Clear;
      sql.Add('update master_fact set fechavencimiento = DATEADD(:dias day to fechavencimiento)');
       sql.add('where situacion  =:opcion2');
       sql.add('and condicion    =:OPCION4');
        sql.Add('AND ROTULO       =:OPCION5');
        sql.Add('and clienteid    =:opcion66');
        sql.Add('and tipo         =:tipo1');
        sql.Add('and quees <>''SALDADA''');
        sql.Add('and ((current_date - fechavencimiento) > 0)');
         Params[0].Value := TDias.Value;
        Params[1].Value := 'IMPRESA';
        Params[2].Value := 'ACTIVA';
        Params[3].Value := 'FACTURACION';
        Params[4].Value := StrToInt(edit2.Text);
        Params[5].Value := 'CREDITO';
      ExecSQL;
    end;


    datos.Data.Commit;

    ShowMessage(' ** Acualización Exitosa **');

    master_credito.Close;
    master_credito_g.Close;
    edit1.Clear;
    edit2.Clear;


end;

procedure TFrmActualizaDiasCredito.cxButton5Click(Sender: TObject);
begin
if FrmBuscaCliente = nil then
  begin
    FrmBuscaCliente := TFrmBuscaCliente.Create(self);
    FrmBuscaCliente.Edit1.Text := 'ACTUALIZADIAS';
    FrmBuscaCliente.ShowModal;
  end;
end;

procedure TFrmActualizaDiasCredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmActualizaDiasCredito := nil;
Action := caFree;

 master_credito.Close;
    master_credito_g.Close;
    edit1.Clear;
    edit2.Clear;
end;

end.
