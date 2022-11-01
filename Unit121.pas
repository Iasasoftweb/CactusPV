unit Unit121;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Data.DB,
  ZAbstractRODataset, ZDataset, cxDropDownEdit, cxCalendar, Vcl.Menus, cxButtons,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier;

type
  TFrmControlNCF = class(TForm)
    GroupBox1: TGroupBox;
    Op1: TGroupBox;
    DataSource1: TDataSource;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    QConsulta: TZReadOnlyQuery;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    QConsultaNCFID: TIntegerField;
    QConsultaNUNTEXT: TWideStringField;
    QConsultaDESDE: TIntegerField;
    QConsultaHASTA: TIntegerField;
    QConsultaUSO: TIntegerField;
    QConsultaTIPO: TWideStringField;
    QConsultaIDCONFIG: TIntegerField;
    QConsultaSIGUIENTE: TWideStringField;
    QConsultaCAJA: TIntegerField;
    QConsultaTITULO: TWideStringField;
    QConsultaFECHA_VENC: TDateField;
    Numero: TZReadOnlyQuery;
    NumeroGEN_ID: TLargeintField;
    B1: TcxButton;
    B2: TcxButton;
    B3: TcxButton;
    DsQConsulta: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NUNTEXT: TcxGridDBColumn;
    cxGrid1DBTableView1DESDE: TcxGridDBColumn;
    cxGrid1DBTableView1HASTA: TcxGridDBColumn;
    cxGrid1DBTableView1USO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1TITULO: TcxGridDBColumn;
    UpG: TZReadOnlyQuery;
    procedure B1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmControlNCF: TFrmControlNCF;

implementation

{$R *.dfm}

uses Unit2, UInicio;

procedure TFrmControlNCF.B1Click(Sender: TObject);
begin
with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_NCF_ID, 1) from RDB$DATABASE');
     open;
  end;

  datos.NCF.Open;
  datos.ncf.Append;
  datos.NCFNCFID.Value := NumeroGEN_ID.Value;
  Op1.Enabled := true;
  B1.Enabled := FALSE;
  b2.Enabled := true;
  b3.Enabled := true;

end;

procedure TFrmControlNCF.B2Click(Sender: TObject);
begin

if cxDBTextEdit1.Text <> '' then begin

   if datos.NCFNUNTEXT.Value = 'B01' then
       begin

       with UpG do
            begin
              Close;
              sql.Clear;
              sql.Add('set generator GEN_NCF_USO_CF to '+cxDBSpinEdit1.Text);
              //params[0].Value := StrToInt(GNCF_FISCAL.Text);
              ExecSQL;
            end;
       end;


        if datos.NCFNUNTEXT.Value = 'B15' then
       begin

              with UpG do
                  begin
                    Close;
                    sql.Clear;
                    sql.Add('set generator GEN_NCF_GOB to '+cxDBSpinEdit1.Text);
                   // params[0].Value := StrToInt(GNCF_GOB.Text);
                    ExecSQL;
                  end;

       end;




        if datos.NCFNUNTEXT.Value = 'B02' then
               begin
                   with UpG do
                        begin
                          Close;
                          sql.Clear;
                          sql.Add('set generator GEN_NCF_USO to '+cxDBSpinEdit1.Text);
                          //params[0].Value := StrToInt(GNCF_C.Text);
                          ExecSQL;
                        end;


               end;

      datos.NCF.ApplyUpdates;
      datos.Data.Commit;
      QConsulta.Close;
      QConsulta.Open;

      b1.Enabled := true;
      b2.Enabled := false;
      b3.Enabled := false;

      op1.Enabled := false;




end;
end;

procedure TFrmControlNCF.B3Click(Sender: TObject);
begin
datos.NCF.CancelUpdates;
datos.data.Rollback;


      b1.Enabled := true;
      b2.Enabled := false;
      b3.Enabled := false;

      op1.Enabled := false;
end;

procedure TFrmControlNCF.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
with datos.NCF do
  begin
    close;
    sql.Clear;
    sql.Add('select * from ncf');
    sql.Add('where ncfid =:opcion');
    params[0].Value := QConsultaNCFID.Value;
    open;
  end;

   Op1.Enabled := true;
  B1.Enabled := FALSE;
  b2.Enabled := true;
  b3.Enabled := true;

end;

procedure TFrmControlNCF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FrmControlNCF := nil;
     Action := caFree;
end;

end.


