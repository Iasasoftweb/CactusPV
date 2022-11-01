unit UProformaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxExportDOCX, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
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
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, cxCalc, cxDBEdit, cxMemo, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Data.DB,
  Vcl.Menus, cxButtons, frxDBSet;

type
  TFrmProformaCreditos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBMemo2: TcxDBMemo;
    Label7: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBComboBox2: TcxDBComboBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    master: TfrxDBDataset;
    ConduceMC: TfrxReport;
    Config: TfrxDBDataset;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProformaCreditos: TFrmProformaCreditos;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmProformaCreditos.cxButton1Click(Sender: TObject);
begin
 ConduceMC.PrepareReport(true);
 ConduceMC.ShowReport;
end;

procedure TFrmProformaCreditos.cxButton2Click(Sender: TObject);
begin

    datos.QProformaCredito.ApplyUpdates;
    datos.Data.Commit;

    close;
end;

procedure TFrmProformaCreditos.cxButton3Click(Sender: TObject);
begin
datos.QProformaCredito.CancelUpdates;
datos.Data.Rollback;

close;
end;

end.
