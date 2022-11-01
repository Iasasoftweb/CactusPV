unit Unit102;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, Vcl.StdCtrls, cxGroupBox, cxRadioGroup,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmBCtasBancos = class(TForm)
    consulta: TZReadOnlyQuery;
    consultaID: TIntegerField;
    consultaBANCO: TWideStringField;
    consultaMONEDA: TIntegerField;
    consultaSIGNO: TWideStringField;
    consultaNO_CTA: TWideStringField;
    DsConsulta: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1BANCO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1SIGNO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    Edit2: TEdit;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Op1: TcxRadioGroup;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edit1: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Op1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure Edit3Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBCtasBancos: TFrmBCtasBancos;

implementation

{$R *.dfm}

uses Unit2, Unit103, UCobroFactCxP;

procedure TFrmBCtasBancos.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmBCtasBancos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

if edit2.Text ='1' then
    begin
     datos.ZTBanco.Edit;
     datos.ZTBancoIDBANCO.Value := consultaID.Value;
     datos.ZTBancoBANCO.Value   := consultaBANCO.Value;
     datos.ZTBancoNO_CTA.Value  := consultaNO_CTA.Value;
     consulta.Close;
     edit1.Clear;
     edit2.Clear;
     close;
  end;

 if edit2.Text = '2' then
    begin
      FrmBalanceBanco.Edit1.Text := consultaBANCO.Value;
      FrmBalanceBanco.Edit2.Text := consultaNO_CTA.Value;
      FrmBalanceBanco.Edit3.Text := consultaID.text;

      consulta.Close;
      edit1.Clear;
      edit2.Clear;
      close;

    end;

  if edit2.Text ='3' then
     begin
       datos.TPagoCXPIDBANCO.Value   :=  consultaID.Value;
       datos.TPagoCXPBANCO.Text       := consultaBANCO.Value;
       FrmCobroCXP.cxDBTextEdit5.Text  :=  consultaNO_CTA.Value;

        consulta.Close;
      edit1.Clear;
      edit2.Clear;
      close;
     end;
end;

procedure TFrmBCtasBancos.Edit1Change(Sender: TObject);
begin
if op1.ItemIndex = 0 then begin

 with consulta do begin
                       close;
                       sql.Clear;
                       sql.Add('select a.*, b.signo from tb_bancos a');
                       SQL.Add('left join tb_moneda b on a.moneda = b.id');
                       sql.Add('where a.banco like '+#39+'%'+edit1.Text+'%'+#39);

                       open;
                   end;

   end;

 if op1.ItemIndex = 1 then begin

 with consulta do begin
                       close;
                       sql.Clear;
                       sql.Add('select a.*, b.signo from tb_bancos a');
                       SQL.Add('left join tb_moneda b on a.moneda = b.id');
                       sql.Add('where a.no_cta like '+#39+'%'+edit1.Text+'%'+#39);

                       open;
                   end;

         end;

end;

procedure TFrmBCtasBancos.Edit3Change(Sender: TObject);
begin
if op1.ItemIndex = 0 then begin

 with consulta do begin
                       close;
                       sql.Clear;
                       sql.Add('select a.*, b.signo from tb_bancos a');
                       SQL.Add('left join tb_moneda b on a.moneda = b.id');
                       sql.Add('where a.banco like '+#39+'%'+edit1.Text+'%'+#39);

                       open;
                   end;

   end;

 if op1.ItemIndex = 1 then begin

 with consulta do begin
                       close;
                       sql.Clear;
                       sql.Add('select a.*, b.signo from tb_bancos a');
                       SQL.Add('left join tb_moneda b on a.moneda = b.id');
                       sql.Add('where a.no_cta like '+#39+'%'+edit1.Text+'%'+#39);

                       open;
                   end;

         end;
end;

procedure TFrmBCtasBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmBCtasBancos := nil;
Action := caFree;
end;

procedure TFrmBCtasBancos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    consulta.Close;
    edit1.Clear;
    close;
  end;
end;





procedure TFrmBCtasBancos.FormShow(Sender: TObject);
begin
consulta.Open;
end;

procedure TFrmBCtasBancos.Op1Click(Sender: TObject);
begin
if op1.ItemIndex = 0  then
  begin
    label1.Caption := 'Digite el Nombre del Banco';
    edit1.SetFocus;
  end;

  if op1.ItemIndex = 1  then
  begin
    label1.Caption := 'Digite el No. de Cta';
    edit1.SetFocus;
  end;
end;

end.
