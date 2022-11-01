unit UIngredientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxGroupBox, Vcl.Menus, cxButtons,
  cxTextEdit, cxDBEdit, Data.DB, cxLabel, cxDBLabel, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFGetIngredientes = class(TForm)
    Panel8: TPanel;
    Label61: TLabel;
    LbModo: TLabel;
    Op1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DataSource2: TDataSource;
    Label2: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1INGREDIENTES: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGetIngredientes: TFGetIngredientes;

implementation

{$R *.dfm}

uses Unit2;

procedure TFGetIngredientes.cxButton1Click(Sender: TObject);
begin
datos.TbIngredientes.Insert;
cxDBTextEdit1.SetFocus;
end;

procedure TFGetIngredientes.cxButton2Click(Sender: TObject);
begin
datos.TbIngredientes.Delete;
end;

procedure TFGetIngredientes.cxButton3Click(Sender: TObject);
begin

datos.TbIngredientes.ApplyUpdates;
datos.Data.Commit;
close;

end;

procedure TFGetIngredientes.cxButton4Click(Sender: TObject);
begin

        datos.TbIngredientes.CancelUpdates;
        datos.Data.Rollback;
        close;
end;

end.
