unit uCocina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCGrids, Data.DB,
  ZAbstractRODataset, ZDataset, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel, cxDBLabel, dxCameraControl, dxGDIPlusClasses,
  cxImage, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxButtons, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridCardView, cxGridDBCardView, cxGridCustomView,
  cxGridCustomLayoutView, cxClasses, cxGridLevel, cxGrid, AdvCardList,
  DBAdvCardList, AdvCardListStyler;

type
  TfPedidosCocina = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    Shape1: TShape;
    Shape2: TShape;
    QPedidos: TZReadOnlyQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    QPedidosID: TIntegerField;
    QPedidosFECHA: TDateField;
    QPedidosNO_ORDEN: TIntegerField;
    QPedidosHORA: TTimeField;
    QPedidosCLIENTE: TWideStringField;
    QPedidosORDEN: TWideMemoField;
    QPedidosTIEMPO: TIntegerField;
    QPedidosTIEMPO_RESTANTA: TTimeField;
    QPedidosESTADO: TIntegerField;
    QPedidosMESERO: TWideStringField;
    DsPedidos: TDataSource;
    Panel2: TPanel;
    Panel8: TPanel;
    Label61: TLabel;
    LbModo: TLabel;
    Panel7: TPanel;
    Label16: TLabel;
    Label60: TLabel;
    cxImage3: TcxImage;
    ZUpdate: TZReadOnlyQuery;
    cxButton1: TcxButton;
    Panel3: TPanel;
    DsIngredientes: TDataSource;
    Panel4: TPanel;
    cxDBLabel1: TcxDBLabel;
    Label4: TLabel;
    Label3: TLabel;
    cxDBLabel2: TcxDBLabel;
    Label5: TLabel;
    cxDBLabel3: TcxDBLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure detalle;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fPedidosCocina: TfPedidosCocina;

implementation

{$R *.dfm}

uses Unit2, uDetalleCocina;

procedure TfPedidosCocina.cxButton1Click(Sender: TObject);
begin
  qpedidos.Refresh;
end;

procedure TfPedidosCocina.detalle;
begin

  if FDetalleCocina1  = nil then
   begin
     FDetalleCocina1  := TFDetalleCocina1.Create(self);

     with FdetalleCocina1.QDpedidos do
        begin
          close;
          sql.Clear;
          sql.Add('select * from D_ENVIOCOCINA where No_orden =:dd');
          params[0].Value := QPedidosNO_ORDEN.Value;
          open;
        end;

     FDetalleCocina1.ShowModal;
   end;


end;

procedure TfPedidosCocina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fPedidosCocina := nil;
       Action := caFree;
end;

procedure TfPedidosCocina.FormShow(Sender: TObject);
begin
with QPedidos do
  begin
    Close;
    sql.Clear;
    sql.Add('select * from ENVIOCOCINA');
    sql.Add('where estado = 1');
    sql.Add('order by no_orden asc');
    open;
  end;
end;

procedure TfPedidosCocina.Label1Click(Sender: TObject);
begin
 if application.MessageBox ('Esta al punto de Terminar una orden, Esta usted seguro?','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                       begin
                            with ZUpdate do
                               begin
                                       close;
                                       sql.Clear;
                                       sql.Add('update ENVIOCOCINA set estado = 2 where id = :id');
                                       params[0].Value := QPedidosID.Value;
                                       ExecSQL;
                               end;


                               datos.Data.Commit;
                               QPedidos.Refresh;


                       end;
end;

procedure TfPedidosCocina.Label2Click(Sender: TObject);
begin
detalle;
end;

end.
