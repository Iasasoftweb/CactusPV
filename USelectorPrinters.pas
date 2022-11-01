unit USelectorPrinters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  cxRadioGroup, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, Data.DB, ZAbstractRODataset, ZDataset;

type
  TFSelectorPrinter = class(TForm)
    TipoImpresion: TcxRadioGroup;
    Formato: TcxRadioGroup;
    cxButton1: TcxButton;
    Edit1: TEdit;
    QCortes2: TZReadOnlyQuery;
    QCortes2FECHA: TDateField;
    QCortes2COD_ART: TIntegerField;
    QCortes2ARTICULOS: TWideStringField;
    QCortes2EXISTENCIA: TExtendedField;
    QCortes2VENTAS: TExtendedField;
    QCortes2ENTRADAS: TExtendedField;
    QCortes2SALIDAS: TExtendedField;
    QCortes2EXACTUAL: TExtendedField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure TipoImpresionClick(Sender: TObject);
  private
    procedure corte_02(FFINAL : TDateTime; FCORTE : TDateTime; F1 : TDateTime; F2 : TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelectorPrinter: TFSelectorPrinter;

implementation

{$R *.dfm}

uses Unit2, udataprint, Unit137;


procedure TFSelectorPrinter.corte_02(FFINAL : TDateTime; FCORTE : TDateTime; F1 : TDateTime; F2 : TDateTime);
begin


  with qcortes2 do  begin
                     close;
                     sql.Clear;
                     sql.Add('SELECT * FROM consultar_corte_inventario(:FFINAL1, :FCORTE1,:F11, :F21)');
                     params[0].Value := FFINAL;
                     params[1].Value := fcorte;
                     params[2].Value := f1;
                     params[3].Value := f2;
                     open;
                   end;



    if TipoImpresion.ItemIndex = 0 then
      begin

      if Formato.ItemIndex = 0 then
          begin
                                 DataPrint.PrnCorte02_normal.variables['FECHA_inicial']  :=quotedstr(DateToStr(fcorte));
                                 DataPrint.PrnCorte02_normal.variables['FECHA_final']  :=quotedstr(DateToStr(ffinal));

                                  DataPrint.PrnCorte02_normal.PrepareReport(true);
                                  DataPrint.PrnCorte02_normal.ShowPreparedReport;
          end;




      if Formato.ItemIndex = 1 then
          begin
               DataPrint.PrnCorte02_normal.variables['FECHA_inicial']  :=quotedstr(DateToStr(fcorte));
               DataPrint.PrnCorte02_normal.variables['FECHA_final']  :=quotedstr(DateToStr(ffinal));

                DataPrint.PrnCorte02_normal.PrepareReport(true);
                DataPrint.frxPDFExport1.Compressed := True;
                DataPrint.frxPDFExport1.EmbeddedFonts := False;
                DataPrint.frxPDFExport1.Background := True;
                DataPrint.frxPDFExport1.PrintOptimized := False;
                DataPrint.frxPDFExport1.Outline := False;
                DataPrint.frxPDFExport1.Transparency := True;
                DataPrint.frxPDFExport1.Quality := 95;
                DataPrint.frxPDFExport1.OpenAfterExport := False;
                DataPrint.frxPDFExport1.ShowProgress := False;
                DataPrint.frxPDFExport1.ShowDialog := False;
             //   DataPrint.frxPDFExport1.FileName := lcuadre;
                {Fill in the corresponding fields of the Information tab}
                DataPrint.frxPDFExport1.Title := 'Corte de Inventario';
                DataPrint.frxPDFExport1.Author := 'PrintSoft PV';
                DataPrint.frxPDFExport1.Subject := 'Your Subject';
                DataPrint.frxPDFExport1.Keywords := 'Your Keywords';
                DataPrint.frxPDFExport1.Creator := 'Iasasoft';
                DataPrint.frxPDFExport1.Producer := 'PrintSoft PV';
                 { Fill in the corresponding fields of the Security tab }
              //  DataPrint.frxPDFExport1.ProtectionFlags := [ePrint, eModify, eCopy, eAnnot];
                 {Set the Viewer settings (Viewer tab)}
                DataPrint.frxPDFExport1.HideToolbar := False;
                DataPrint.frxPDFExport1.HideMenubar := False;
                DataPrint.frxPDFExport1.HideWindowUI := False;
                DataPrint.frxPDFExport1.FitWindow := False;
                DataPrint.frxPDFExport1.CenterWindow := False;
                DataPrint.frxPDFExport1.PrintScaling := False;
                 {Export the report}
                DataPrint.PrnCorte01_normal.Export(DataPrint.frxPDFExport1);
                ShowMessage(' Archivo PDF Generado ');

          end;


      if Formato.ItemIndex = 2 then
          begin
                ShowMessage(' No diponible para esta versión');
          end;



      end;


      if TipoImpresion.ItemIndex = 1 then
      begin

      if Formato.ItemIndex = 0 then
          begin

            ShowMessage(' No diponible para esta versión');
//                                  DataPrint.PrnCorte02_ticket.variables['FECHA']  :=quotedstr(FrmCorteInventario.QCortesAbiertosFECHA_INICIAL.Text);

  //                                DataPrint.PrnCorte0_ticket.PrepareReport(true);
    //                              DataPrint.PrnCorte01_ticket.ShowPreparedReport;
          end;

      if Formato.ItemIndex = 1 then
          begin
               ShowMessage(' No diponible para esta versión');
          end;


      if Formato.ItemIndex = 2 then
          begin
                 ShowMessage(' No diponible para esta versión');
          end;

      end;


end;

procedure TFSelectorPrinter.cxButton1Click(Sender: TObject);
var
Lproducto, lcuadre, Lgastos : string;
myYear, myMonth, myDay : Word;
begin

 DecodeDate(now(), myYear, myMonth, myDay);


lcuadre := 'C:\PrintSoft PV\Data\PDF\Corte-'+IntToStr(myday)+'-'+IntToStr(mymonth)+'-'+IntToStr(myyear)+'.pdf';

if edit1.Text = 'Corte_02' then
   begin

     corte_02(FrmCorteInventario.qConsultaCortesAbiertosFECHA_FINAL.AsDateTime,
                FrmCorteInventario.qConsultaCortesAbiertosfecha_inicial.AsDateTime,
                FrmCorteInventario.qConsultaCortesAbiertosfecha_inicial.AsDateTime,
                FrmCorteInventario.qConsultaCortesAbiertosFECHA_FINAL.AsDateTime);

   end;


if Edit1.Text = 'Corte_01' then
  begin

   with FrmCorteInventario.qcortes do  begin
                     close;
                     sql.Clear;
                     sql.Add('SELECT * FROM consultar_corte_inventario(:FFINAL, :FCORTE,:F1, :F2)');
                     params[0].Value := now();
                     params[1].Value := FrmCorteInventario.QCortesAbiertosfecha_inicial.value;
                     params[2].Value := FrmCorteInventario.QCortesAbiertosfecha_inicial.value;
                     params[3].Value := now();
                     open;
                   end;

    if TipoImpresion.ItemIndex = 0 then
      begin

      if Formato.ItemIndex = 0 then
          begin
                                 DataPrint.PrnCorte01_normal.variables['FECHA']  :=quotedstr(FrmCorteInventario.QCortesAbiertosFECHA_INICIAL.Text);

                                  DataPrint.PrnCorte01_normal.PrepareReport(true);
                                  DataPrint.PrnCorte01_normal.ShowPreparedReport;
          end;




      if Formato.ItemIndex = 1 then
          begin
                DataPrint.PrnCorte01_normal.variables['FECHA']  :=quotedstr(FrmCorteInventario.QCortesAbiertosFECHA_INICIAL.Text);
                DataPrint.PrnCorte01_normal.PrepareReport(true);
                DataPrint.frxPDFExport1.Compressed := True;
                DataPrint.frxPDFExport1.EmbeddedFonts := False;
                DataPrint.frxPDFExport1.Background := True;
                DataPrint.frxPDFExport1.PrintOptimized := False;
                DataPrint.frxPDFExport1.Outline := False;
                DataPrint.frxPDFExport1.Transparency := True;
                DataPrint.frxPDFExport1.Quality := 95;
                DataPrint.frxPDFExport1.OpenAfterExport := False;
                DataPrint.frxPDFExport1.ShowProgress := False;
                DataPrint.frxPDFExport1.ShowDialog := False;
                DataPrint.frxPDFExport1.FileName := lcuadre;
                {Fill in the corresponding fields of the Information tab}
                DataPrint.frxPDFExport1.Title := 'Corte de Inventario';
                DataPrint.frxPDFExport1.Author := 'PrintSoft PV';
                DataPrint.frxPDFExport1.Subject := 'Your Subject';
                DataPrint.frxPDFExport1.Keywords := 'Your Keywords';
                DataPrint.frxPDFExport1.Creator := 'Iasasoft';
                DataPrint.frxPDFExport1.Producer := 'PrintSoft PV';
                 { Fill in the corresponding fields of the Security tab }
              //  DataPrint.frxPDFExport1.ProtectionFlags := [ePrint, eModify, eCopy, eAnnot];
                 {Set the Viewer settings (Viewer tab)}
                DataPrint.frxPDFExport1.HideToolbar := False;
                DataPrint.frxPDFExport1.HideMenubar := False;
                DataPrint.frxPDFExport1.HideWindowUI := False;
                DataPrint.frxPDFExport1.FitWindow := False;
                DataPrint.frxPDFExport1.CenterWindow := False;
                DataPrint.frxPDFExport1.PrintScaling := False;
                 {Export the report}
                DataPrint.PrnCorte01_normal.Export(DataPrint.frxPDFExport1);
                ShowMessage(' Archivo PDF Generado ');

          end;


      if Formato.ItemIndex = 2 then
          begin

          end;



      end;


      if TipoImpresion.ItemIndex = 1 then
      begin

      if Formato.ItemIndex = 0 then
          begin
                                  DataPrint.PrnCorte01_ticket.variables['FECHA']  :=quotedstr(FrmCorteInventario.QCortesAbiertosFECHA_INICIAL.Text);

                                  DataPrint.PrnCorte01_ticket.PrepareReport(true);
                                  DataPrint.PrnCorte01_ticket.ShowPreparedReport;
          end;

      if Formato.ItemIndex = 1 then
          begin

          end;


      if Formato.ItemIndex = 2 then
          begin

          end;

      end;
  end;
end;

procedure TFSelectorPrinter.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TFSelectorPrinter.TipoImpresionClick(Sender: TObject);
begin
if TipoImpresion.ItemIndex = 1 then
  begin
    formato.Enabled := False;
    formato.ItemIndex := 0;
  end else
     begin
         formato.Enabled := true;
     end;

end;

end.
