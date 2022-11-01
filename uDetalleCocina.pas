unit uDetalleCocina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxLabel, cxDBLabel, cxCheckBox;

type
  TFdetalleCocina1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel8: TPanel;
    Label61: TLabel;
    LbModo: TLabel;
    QDpedidos: TZReadOnlyQuery;
    dsDPedidos: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    cxDBLabel1: TcxDBLabel;
    Label1: TLabel;
    Label2: TLabel;
    cxDBLabel2: TcxDBLabel;
    Label3: TLabel;
    cxDBLabel3: TcxDBLabel;
    QDpedidosID: TIntegerField;
    QDpedidosNO_ORDEN: TIntegerField;
    QDpedidosPRODUCTOS: TWideMemoField;
    QDpedidosCANT: TIntegerField;
    QDpedidosESTADO: TIntegerField;
    cxGrid1DBTableView1PRODUCTOS: TcxGridDBColumn;
    cxGrid1DBTableView1CANT: TcxGridDBColumn;
    QDpedidosIDMASTER: TIntegerField;
    QIngredientes: TZReadOnlyQuery;
    DsIngredientes: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    QIngredientesID: TIntegerField;
    QIngredientesIDARTICULOS: TIntegerField;
    QIngredientesIDDETALLE: TIntegerField;
    QIngredientesIDMASTER: TIntegerField;
    QIngredientesOP: TIntegerField;
    QIngredientesSELECCION: TWideStringField;
    QIngredientesINGREDIENTES: TWideStringField;
    cxGrid2DBTableView1SELECCION: TcxGridDBColumn;
    cxGrid2DBTableView1INGREDIENTES: TcxGridDBColumn;
    Qupdate: TZReadOnlyQuery;
    Panel5: TPanel;
    Label58: TLabel;
    Panel6: TPanel;
    Label59: TLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FdetalleCocina1: TFdetalleCocina1;

implementation

{$R *.dfm}

uses Unit2, uCocina;

procedure TFdetalleCocina1.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin


    with QIngredientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.*, b.ingredientes from d_ingredientes a');
        sql.Add('left Join ingredientes b on a.iddetalle = b.id');
        sql.Add('where idmaster =:ma');
        params[0].value := QDpedidosIDMASTER.value;
        open;
      end;
end;

procedure TFdetalleCocina1.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (AViewInfo.GridRecord.Values[2] = 1 ) then BEGIN
    ACanvas.Brush.Color := $00E1FFF9;
    ACanvas.Font.Color := clBlack;
   end;
   if (AViewInfo.GridRecord.Values[2] =2) then BEGIN
    ACanvas.Brush.Color := $00BB9E48;
    ACanvas.Font.Color := clBlack;
    Acanvas.font.Style := [fsBold];
   END;
end;

procedure TFdetalleCocina1.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
 if application.MessageBox ('Usted Terminó de elaborar este producto?','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                       begin
                             with Qupdate do
                                begin
                                  close;
                                  sql.Clear;
                                  sql.Add('update D_ENVIOCOCINA set estado = 2 where id =:id');
                                  params[0].Value := QDpedidosID.Value;
                                  ExecSQL;
                                end;
                       end else begin
                                    with Qupdate do
                                        begin
                                          close;
                                          sql.Clear;
                                          sql.Add('update D_ENVIOCOCINA set estado = 1 where id =:id');
                                          params[0].Value := QDpedidosID.Value;
                                          ExecSQL;
                                        end;
                                end;


                                QDpedidos.Refresh;


end;

procedure TFdetalleCocina1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FdetalleCocina1 := nil;
       Action := caFree;

       datos.Data.Commit;
end;

end.
