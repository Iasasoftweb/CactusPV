unit UCard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvCardList, DBAdvCardList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, dxBarCode, cxGridDBCardView, cxGridLevel, cxGridCustomTableView,
  cxGridCardView, cxGridCustomLayoutView, cxClasses, cxGridCustomView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset;

type
  TForm138 = class(TForm)
    QPedidos: TZReadOnlyQuery;
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
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1: TcxGrid;
    cxGrid1CardView1: TcxGridCardView;
    cxGrid1CardView1Row1: TcxGridCardViewRow;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1Row1: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row2: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row3: TcxGridDBCardViewRow;
    cxGrid1DBCardView2: TcxGridDBCardView;
    cxGrid1DBCardView2Row1: TcxGridDBCardViewRow;
    cxGrid1DBCardView2Row2: TcxGridDBCardViewRow;
    cxGrid1DBCardView2Row3: TcxGridDBCardViewRow;
    cxGrid1DBCardView2Row4: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row4: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row5: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row6: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row7: TcxGridDBCardViewRow;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form138: TForm138;

implementation

{$R *.dfm}

uses Unit2;

end.
