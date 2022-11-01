unit uLotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TfLotes = class(TForm)
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
    lblArticulos: TLabel;
    Panel3: TPanel;
    Panel7: TPanel;
    dsMlote: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Panel20: TPanel;
    btnnuevo: TSpeedButton;
    Panel10: TPanel;
    btnGuardar: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    edtCantidad: TEdit;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnnuevoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLotes: TfLotes;

implementation

uses
  Unit2, Tools, uConsultarLote;

{$R *.dfm}

procedure TfLotes.btnGuardarClick(Sender: TObject);
begin
  datos.QMlote.CancelUpdates;
  close;
end;

procedure TfLotes.btnnuevoClick(Sender: TObject);
begin
if dbedit2.Text <> '' then begin



 if edit1.Text = 'CONS' then
   begin
     if StrToInt(edtCantidad.Text) >= StrToInt(dbedit2.Text) then
        begin
          datos.QMlote.Edit;
          datos.QMloteEXIS_INI.Value  := StrToInt(DBEdit2.Text);
          datos.QMloteLIN.Value := AsignaLote;

          fConsultarLotes.edtUNT.Text :=   IntToStr(  StrToInt(edtCantidad.Text) - StrToInt(dbedit2.Text));

          datos.qmlote.ApplyUpdates;
          datos.Data.Commit;

          close;

        end else begin
                    Crear_Mensages('Error',
                    'Error en Cantidad',
                    'La cantiad introducida supera la existencia asignada',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                    'OK') ;
                    dbedit2.SetFocus;
                 end;


   end else begin
       if dbedit1.Text <>'' then
       begin
         datos.ZDdescarga.Edit;
         datos.ZDdescargaFV.Value := datos.QMloteFV.Value;

         datos.QMlote.ApplyUpdates;
         datos.Data.Commit;
         close;
       end;
   end;
end else begin
                   Crear_Mensages('Error',
                    'No hay cantidad',
                    'Favor introducir cantidad',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                    'OK') ;
                    dbedit2.SetFocus;
         end;
end;

procedure TfLotes.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fLotes := nil;
action := caFree;
end;

procedure TfLotes.FormShow(Sender: TObject);
begin
  dbedit1.SetFocus;
end;

end.
