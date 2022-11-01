unit UEquivalencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, ZAbstractRODataset, ZDataset, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Mask, Vcl.DBCtrls, Vcl.Menus,
  cxButtons, cxButtonEdit, cxLabel;

type
  TFrmEquivalencia = class(TForm)
    Panel7: TPanel;
    Label3: TLabel;
    Label60: TLabel;
    cxImage3: TcxImage;
    DsArticulos: TDataSource;
    QEquivalentes: TZReadOnlyQuery;
    QEquivalentesCOD_ART: TIntegerField;
    QEquivalentesCODIGOTXT: TWideStringField;
    QEquivalentesARTICULO: TWideStringField;
    QEquivalentesMODELO: TWideStringField;
    QEquivalentesMARCA: TWideStringField;
    QEquivalentesCOLOR: TWideStringField;
    QEquivalentesCOD_CAT: TIntegerField;
    QEquivalentesCOD_SERIE: TIntegerField;
    QEquivalentesCOD_ALM: TIntegerField;
    QEquivalentesCOSTO: TFloatField;
    QEquivalentesCOD_PROV1: TIntegerField;
    QEquivalentesEXISTENCIA1: TFloatField;
    QEquivalentesITBIS: TWideStringField;
    QEquivalentesABREVIADO: TWideStringField;
    QEquivalentesCOD_BARRA: TWideStringField;
    QEquivalentesCOD_UV: TIntegerField;
    QEquivalentesUSUARIOMOD: TIntegerField;
    QEquivalentesFECHA_MOD: TDateField;
    QEquivalentesPOLITICA: TWideStringField;
    QEquivalentesCOSTO_PR: TFloatField;
    QEquivalentesIMAGEN: TBlobField;
    QEquivalentesCLA_COSTO: TWideStringField;
    QEquivalentesCLA_PRECIO: TWideStringField;
    QEquivalentesPRECIO_A: TFloatField;
    QEquivalentesPRECIO_B: TFloatField;
    QEquivalentesPRECIO_D: TFloatField;
    QEquivalentesESTADO: TIntegerField;
    QEquivalentesEXTFOTO: TWideStringField;
    QEquivalentesDESCRIPCIONWEB: TWideMemoField;
    QEquivalentesPUBLICARWEB: TIntegerField;
    QEquivalentesCODIGOBARRA: TWideStringField;
    QEquivalentesEMPAQUE: TIntegerField;
    QEquivalentesCANT_EMPA: TFloatField;
    QEquivalentesCOD_PROV2: TIntegerField;
    QEquivalentesCOD_PROV3: TIntegerField;
    QEquivalentesREFERENCIA: TWideStringField;
    QEquivalentesOPCION_SABOR: TWideStringField;
    QEquivalentesSTOCK_MA: TFloatField;
    QEquivalentesSTOCK_M: TFloatField;
    QEquivalentesFACTOR: TFloatField;
    QEquivalentesTIPO_PRODUCTOS: TWideStringField;
    QEquivalentesFACTURABLE: TIntegerField;
    QEquivalentesSTOCK: TFloatField;
    QEquivalentesOPCIONES_BOLA: TWideStringField;
    QEquivalentesPARTICIONADO: TWideStringField;
    QEquivalentesCOMPUESTO: TWideStringField;
    QEquivalentesBENEFICIOS: TFloatField;
    QEquivalentesMONEDA: TWideStringField;
    QEquivalentesUNIDAD: TWideStringField;
    QEquivalentesTAZA_COMPRA: TFloatField;
    QEquivalentesFECHA_COMPRA: TDateField;
    QEquivalentesINTERES_ACUMULADO: TFloatField;
    QEquivalentesALMACEN: TIntegerField;
    QEquivalentesPERCIO_COPA: TFloatField;
    QEquivalentesCOMISION: TFloatField;
    QEquivalentesARTICULOS_OMO: TWideStringField;
    QEquivalentesCODIGOUNICO: TWideStringField;
    QEquivalentesEMPRESA: TWideStringField;
    QEquivalentesCONDICION: TWideStringField;
    QEquivalentesUTILIDAD2: TFloatField;
    QEquivalentesUTILIDAD3: TFloatField;
    QEquivalentesPRECIO_BRUTO1: TFloatField;
    QEquivalentesPRECIO_BRUTO2: TFloatField;
    QEquivalentesPRECIO_BRUTO3: TFloatField;
    QEquivalentesMAYOREO1: TFloatField;
    QEquivalentesMAYOREO2: TFloatField;
    QEquivalentesMAYOREO3: TFloatField;
    QEquivalentesDESCRIPCION: TWideMemoField;
    QEquivalentesCOSTOPROMENO: TFloatField;
    QEquivalentesTIENECOMPACTIBILIDAD: TWideStringField;
    QEquivalentesCOMPACTIBLECON: TIntegerField;
    QEquivalentesUBICACION: TWideStringField;
    QEquivalentesOBS: TIntegerField;
    QEquivalentesTIPOB: TWideStringField;
    QEquivalentesESTADOCONDICION: TWideStringField;
    QEquivalentesIDMONEDA: TIntegerField;
    QEquivalentesCOSTO_DOLLARS: TFloatField;
    QEquivalentesCODEQUIVALENCIA: TWideStringField;
    QEquivalentesDESC_EQUIVALENCIA: TWideStringField;
    QEquivalentesCANTEQUIVALENCA: TFloatField;
    QEquivalentesPRE1: TFloatField;
    QEquivalentesPRE2: TFloatField;
    QEquivalentesPRE3: TFloatField;
    QEquivalentesCOSP: TFloatField;
    QEquivalentesCOST: TFloatField;
    QEquivalentesPRECIO_C: TFloatField;
    QEquivalentesUTILIDAD4: TFloatField;
    QEquivalentesMAYOREO4: TFloatField;
    QEquivalentesPRECIO_BRUTO4: TFloatField;
    QEquivalentesUTILIDADSOBREITBS: TWideStringField;
    DsEquivalente: TDataSource;
    cxGrid11: TcxGrid;
    cxGrid11DBTableView1: TcxGridDBTableView;
    cxGrid11DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid11DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid11DBTableView1OPCIONES_BOLA: TcxGridDBColumn;
    cxGrid11DBTableView1CODEQUIVALENCIA: TcxGridDBColumn;
    cxGrid11DBTableView1CANTEQUIVALENCA: TcxGridDBColumn;
    cxGrid11Level1: TcxGridLevel;
    GroupBox1: TGroupBox;
    Label36: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label23: TLabel;
    DBEdit4: TDBEdit;
    cxButton18: TcxButton;
    cxGrid11DBTableView1Column1: TcxGridDBColumn;
    pnlEdit: TPanel;
    cxButton1: TcxButton;
    Edit1: TEdit;
    Label1: TLabel;
    qActualiza: TZReadOnlyQuery;
    cxGrid11DBTableView1Column2: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    procedure cxButton18Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid11DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid11DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEquivalencia: TFrmEquivalencia;

implementation

uses
  Unit2, Unit48, tools;

{$R *.dfm}

procedure TFrmEquivalencia.cxButton18Click(Sender: TObject);
begin
if datos.MantArtOPCIONES_BOLA.Value = 'Si' then begin

if FrmMAntArticulos = nil then
 begin
   FrmMAntArticulos := tFrmMAntArticulos.Create(self);
   FrmMAntArticulos.edit2.Text := 'EQUI';
   FrmMAntArticulos.ShowModal;
 end;
end else begin
           MsgError(' Debes Activar La Equivalencia')
         end;
end;

procedure TFrmEquivalencia.cxButton1Click(Sender: TObject);
begin
if StrToInt(edit1.Text) > 0  then
   begin
       with qActualiza do
         begin
           close;
           sql.Clear;
           sql.Add('update mtartuculos set CANTEQUIVALENCA = :pp');
           sql.Add('where cod_art =:op');
           params[0].Value := StrToInt(edit1.Text);
           params[1].Value  := QEquivalentesCOD_ART.Value;
           ExecSQL;

         end;

            With QEquivalentes do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.* from mtartuculos a where a.codequivalencia =:opp ');
                 params[0].value := datos.MantArtCOD_ART.Value;
                 open;
               end;

               Edit1.Clear;
               pnlEdit.Visible := false;
   end;
end;

procedure TFrmEquivalencia.cxGrid11DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
pnlEdit.Visible := true;
Edit1.SetFocus;
end;

procedure TFrmEquivalencia.cxGrid11DBTableView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  with qActualiza do
    begin
      close;
      sql.Clear;
      sql.Add('update mtartuculos set CODEQUIVALENCIA = :pp');
      sql.Add('where cod_art =:op');
      params[0].Value := '';
      params[1].Value  := QEquivalentesCOD_ART.Value;
      ExecSQL;

         end;

            With QEquivalentes do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.* from mtartuculos a where a.codequivalencia =:opp ');
                 params[0].value := datos.MantArtCOD_ART.Value;
                 open;
               end;

end;

procedure TFrmEquivalencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmEquivalencia := nil;
Action := caFree;
end;

procedure TFrmEquivalencia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    edit1.Clear;
    pnlEdit.Visible := false;
  end;
end;

end.
