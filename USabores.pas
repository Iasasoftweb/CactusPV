unit USabores;

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
  cxImage, cxDBEdit, Vcl.ExtDlgs, cxTextEdit, Data.DB, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFrmClasificaciones = class(TForm)
    op1: TGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    BuscaImagen: TOpenPictureDialog;
    cxDBImage1: TcxDBImage;
    cxButton1: TcxButton;
    b1: TcxButton;
    b2: TcxButton;
    b3: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QConsulta: TZReadOnlyQuery;
    DsConsulta: TDataSource;
    QConsultaID_SABOR: TIntegerField;
    QConsultaIDARTICULO: TIntegerField;
    QConsultaDESCRIPCION: TWideStringField;
    QConsultaIMAGEN: TBlobField;
    QConsultaESTADO: TIntegerField;
    QConsultaCOD_CAT: TIntegerField;
    QConsultaSTOCK: TFloatField;
    QConsultaSTOCK_MIN: TFloatField;
    QConsultaSTOCK_MAX: TFloatField;
    QConsultaOP: TIntegerField;
    QConsultaCOSTOS: TFloatField;
    QConsultaPRECIO: TFloatField;
    QConsultaCOSTO_PROMEDIO: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Max: TZReadOnlyQuery;
    MaxMAX: TIntegerField;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClasificaciones: TFrmClasificaciones;

implementation

{$R *.dfm}

uses Unit2, UInicio;

procedure TFrmClasificaciones.b1Click(Sender: TObject);
begin
if cxDBTextEdit1.Text <>'' then
  begin
    datos.QCalificaciones.ApplyUpdates;
    datos.Data.Commit;
    QConsulta.Refresh;
    b1.Enabled := false;
    b2.Enabled := false;
    b3.Enabled := true;
    op1.Enabled := false;



  end;
end;

procedure TFrmClasificaciones.b2Click(Sender: TObject);
begin
    datos.QCalificaciones.CancelUpdates;
    datos.Data.Rollback;
     b1.Enabled := false;
    b2.Enabled := false;
    b3.Enabled := true;
    op1.Enabled := false;
end;
procedure TFrmClasificaciones.b3Click(Sender: TObject);
begin
op1.Enabled := true;
with max do
  begin
    close;
    open;
  end;

  datos.QCalificaciones.Open;
  datos.QCalificaciones.Append;
  datos.QCalificacionesID_SABOR.Value := MaxMAX.Value + 1;
  b3.Enabled := false;
  b2.Enabled := true;
  b1.Enabled := true ;
end;

procedure TFrmClasificaciones.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    with datos.QCalificaciones do
      begin
        close;
        sql.Clear;
        sql.Add('select * from DB_SABORES');
        sql.Add('where id_sabor =:id');
        Params[0].Value := QConsultaID_SABOR.Value;
        open;
      end;

      op1.Enabled := true;
       b3.Enabled := false;
       b2.Enabled := true;
       b1.Enabled := true ;


end;


 procedure TFrmClasificaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      FrmClasificaciones := Nil;
      Action := caFree;
end;

end.
