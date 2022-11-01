unit Unit132;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  ZAbstractRODataset, ZDataset, dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmGetIngredientes = class(TForm)
    DsIngredientes: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1COD_SERIES: TcxGridDBColumn;
    cxGrid1DBTableView1SERIES: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Borrar: TZReadOnlyQuery;
    SqlIngredientes: TZReadOnlyQuery;
    SqlIngredientesCOD_SERIES: TIntegerField;
    SqlIngredientesCOD_ARTI: TIntegerField;
    SqlIngredientesSERIES: TWideStringField;
    SqlIngredientesESTADO: TIntegerField;
    SqlIngredientesNO_FACT: TIntegerField;
    SqlIngredientesIDDETALLE: TIntegerField;
    SqlIngredientesPRECIO: TFloatField;
    SqlIngredientesITBS: TFloatField;
    SqlIngredientesTOTAL: TFloatField;
    Sqlarti: TZReadOnlyQuery;
    SqlartiARTICULO: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }

    Cod : Integer;
  public

    { Public declarations }
  end;

var
  FrmGetIngredientes: TFrmGetIngredientes;

implementation

{$R *.dfm}

uses UInicio, Unit2, Pizeria, touch;

procedure TFrmGetIngredientes.cxButton1Click(Sender: TObject);
var
itbs : Currency;
suma : Currency;
descc : Currency;

Ad : string;

begin

if application.MessageBox ('Esta seguro de eliminar este ingrediente','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin


                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'Si'  then
                                               begin
                                                  datos.Zdetalle.Edit;

                                                    datos.ZdetallePRECIO.Value    := datos.ZdetallePRECIO.Value - SqlIngredientesPRECIO.Value;
                                                    datos.ZdetalleIMPUESTO.Value  := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                                                    datos.ZdetalleITBS.Value      := datos.ZdetalleITBS.Value - SqlIngredientesITBS.Value;
                                                    datos.ZdetalleTOTAL.Value     := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value ;


                                             end;

                                        if FrmPizeria.IbqRArticulosITBIS.Value = 'No'  then
                                               begin
                                                    datos.Zdetalle.Edit;
                                                    datos.ZdetallePRECIO.Value    := datos.ZdetallePRECIO.Value - SqlIngredientesPRECIO.Value;
                                                    datos.ZdetalleIMPUESTO.Value  := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                                                    datos.ZdetalleITBS.Value      := 0.00;
                                                    datos.ZdetalleTOTAL.Value     := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value ;
                                             end;



                                 with borrar do
                                   begin
                                     close;
                                     sql.Clear;
                                     sql.Add('delete from man_series where cod_series =:op1');
                                     params[0].Value := SqlIngredientesCOD_SERIES.Value;
                                     ExecSQL;

                                   end;
                                      SqlIngredientes.Refresh;

                                 end;
end;

procedure TFrmGetIngredientes.cxButton2Click(Sender: TObject);
begin




close;
end;

procedure TFrmGetIngredientes.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
cod := datos.SeriesCOD_SERIES.Value;
end;

procedure TFrmGetIngredientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
itbs : Currency;
suma : Currency;
descc : Currency;
ad: string;
begin

 with datos.series do
                  begin
                    open;
                    Refresh;
                    first;
                    ad:='';
                    while not eof do
                      begin
                        ad := ad+'-'+datos.SeriesSERIES.Value;
                        next;
                      end;
                  end;


                               with Sqlarti do
                                 begin
                                   close;
                                   sql.Clear;
                                   sql.Add('select articulo from mtartuculos');
                                   sql.Add('where cod_art =:cod');
                                   params[0].Value := datos.ZdetalleARTICULOID.Value;
                                   Open;
                                 end;
                               datos.Zdetalle.Edit;
                               datos.Zdetalleadicional.Value := ad;

                              if datos.ZdetalleNO_FACT1.Value ='NORMAL' then
                                     begin
                                          datos.ZdetalleTITULOPRN.Value := SqlartiARTICULO.Value+' '+' ('+datos.ZdetalleBARRA.Value+')'+ad;
                                     end else begin
                                          datos.ZdetalleTITULOPRN.Value :=  SqlartiARTICULO.Value+' '+datos.ZdetalleFRACCION.Value+' -'+ad;
                                     end;


                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'Si'  then
                                               begin

                                                FrmPizeria.totales;

                                           end;

                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'No'  then
                                               begin
                                                    FrmPizeria.totales;
                                                 end;






FrmGetIngredientes := nil;
Action := caFree;
end;



procedure TFrmGetIngredientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE  then
  begin
    close;
  end;
end;

procedure TFrmGetIngredientes.FormShow(Sender: TObject);
begin
SqlIngredientes.open;

end;

end.
