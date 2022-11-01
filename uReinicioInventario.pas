unit uReinicioInventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset,
  cxContainer, cxCheckBox, acPNG;

type
  TfReinicioInventario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel25: TPanel;
    BtGuardar: TSpeedButton;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    DsAlmacenes: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    chk: TcxCheckBox;
    ReinciaInventario: TZReadOnlyQuery;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtGuardarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReinicioInventario: TfReinicioInventario;

implementation

uses
  Unit2, Tools, Unit117;

{$R *.dfm}

procedure TfReinicioInventario.BtGuardarClick(Sender: TObject);
begin
 if FAutorizacion.ShowModal = mrOk then
           begin

        if chk.Checked = true then
           begin
  if application.MessageBox ('Esta seguro de resetear todo el inventario ','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
                                     with ReinciaInventario do
                                       begin
                                         close;
                                         sql.Clear;
                                         sql.Add('delete from minventario where MINVENTARIOID > 0');
                                         ExecSQL;


                                       end;
                                      //   datos.ZInventario.ApplyUpdates;
                                         datos.Data.Commit;

                                         ShowMessage(' Inventario Reiniciado ........ ');

                                 end;
           end else begin
                        if application.MessageBox ('Esta seguro de resetear el inventario del almacen seleccionado? ','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
                                     with ReinciaInventario do
                                       begin
                                         close;
                                         sql.Clear;
                                         sql.Add('delete from minventario where MINVENTARIOID > 0 and cod_alm =:opp');
                                         params[0].Value := almacenesID.Value;
                                         ExecSQL;
                                       end;
                                      //   datos.ZInventario.ApplyUpdates;
                                         datos.Data.Commit;

                                         ShowMessage(' Inventario Reiniciado ........ ');

                                 end;

                    end;


           end;



           end;



procedure TfReinicioInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fReinicioInventario := nil;
action := caFree;
end;

procedure TfReinicioInventario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TfReinicioInventario.FormShow(Sender: TObject);
begin
almacenes.Open;
end;

procedure TfReinicioInventario.Image1Click(Sender: TObject);
begin
close;
end;

end.
