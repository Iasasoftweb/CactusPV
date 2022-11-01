unit Unit64;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvShapeButton, AdvToolBar,
  AdvGlowButton, Vcl.ImgList, cxGraphics, AdvToolBarStylers, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, Data.DB,
  cxCurrencyEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxGroupBox, cxCheckGroup, ZAbstractRODataset,
  ZDataset;

type
  TCombiotaza = class(TForm)
    Label8: TLabel;
    cxButton6: TcxButton;
    DsConfig: TDataSource;
    taza1: TcxCurrencyEdit;
    op1: TcxCheckGroup;
    Pendientes: TZReadOnlyQuery;
    actualiza: TZReadOnlyQuery;
    PendientesCLIENTENOMBRE: TWideStringField;
    PendientesCEDULA: TWideStringField;
    PendientesTELEFONO: TWideStringField;
    PendientesDIRECCION: TWideStringField;
    PendientesMONTO: TExtendedField;
    PendientesABONO: TExtendedField;
    PendientesPENDIENTE: TExtendedField;
    PendientesCLIENTEID: TIntegerField;
    PendientesCON_ATRASOS: TIntegerField;
    PendientesSIN_ATRASOS: TIntegerField;
    PendientesTFAC: TLargeintField;
    procedure cxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Combiotaza: TCombiotaza;

implementation

{$R *.dfm}

uses Unit2, tools;

 function RoundFives(Numero: Double): Integer;
var
  u, N: Integer;
begin
  N:= Trunc(Numero);
  u:= N - 10 * (N div 10);
  N:= N - u;
  Result:= N;
  if u in[1..5] then
    Result:= N + 5;
  if u in [6..9] then
    Result:= N + 10;
end;


procedure TCombiotaza.cxButton6Click(Sender: TObject);
var
oldtaza : Currency;
begin

  oldtaza := datos.ZUconfiguracionTAZA.Value;
   datos.Configuracion.Edit;
   datos.ConfiguracionTAZA.Value := taza1.Value;
   datos.Configuracion.ApplyUpdates;
   datos.Data.Commit;
   datos.MantArt.Close;

  //  showmessage(''+FloatToStr(datos.Configuraciontaza.Value));

  if op1.States[2] = cbsChecked then
    begin
       with Pendientes do
  begin
     open;
     first;
     while not eof do
        begin


            with actualiza do
                   begin

                       close;
                       sql.Clear;
                       sql.Add('update master_fact set pendiente =:pendiente ');
                       sql.add('where pendiente > 0.00');
                       sql.Add('and tipo =:op1');
                       params[0].Value := PendientesPENDIENTE.Value + (PendientesPENDIENTE.Value / taza1.Value);
                       params[1].Value := 'CREDITO';

                       ExecSQL;

                   end;



        Next;
        end;
       datos.data.Commit;
       ShowMessage(' Procesor Terminado ');
  end;

    end;
end;
procedure TCombiotaza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

end.
