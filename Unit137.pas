unit Unit137;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Menus, cxButtons, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBarBuiltInMenu, cxPC, cxGroupBox,
  ZSqlUpdate, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxButtonEdit, cxRadioGroup;

type
  TFrmCorteInventario = class(TForm)
    Panel1: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    Label60: TLabel;
    cxImage3: TcxImage;
    Panel8: TPanel;
    Label61: TLabel;
    LbModo: TLabel;
    Panel2: TPanel;
    QCorteInventario: TZQuery;
    QCorteInventarioID: TIntegerField;
    QCorteInventarioFECHA_INICIAL: TDateField;
    QCorteInventarioFECHA_FINAL: TDateField;
    QCorteInventarioFECHA_HOY: TDateField;
    QCorteInventarioMONTOINVENTARIO: TFloatField;
    QCorteInventarioESTADO: TIntegerField;
    DsCorteInventario: TDataSource;
    Qnumero: TZReadOnlyQuery;
    QnumeroGEN_ID: TLargeintField;
    QHayCorte: TZReadOnlyQuery;
    pgCentral: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGroupBox2: TcxGroupBox;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    Qcortes: TZReadOnlyQuery;
    DsCortes: TDataSource;
    QCortesAbiertos: TZReadOnlyQuery;
    DsCortesAbiertos: TDataSource;
    cxGrid3DBTableView1FECHA_INICIAL: TcxGridDBColumn;
    cxGrid3DBTableView1FECHA_FINAL: TcxGridDBColumn;
    QcortesFECHA: TDateField;
    QcortesCOD_ART: TIntegerField;
    QcortesARTICULOS: TWideStringField;
    QcortesEXISTENCIA: TExtendedField;
    QcortesVENTAS: TExtendedField;
    QcortesENTRADAS: TExtendedField;
    QcortesSALIDAS: TExtendedField;
    QcortesEXACTUAL: TExtendedField;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULOS: TcxGridDBColumn;
    cxGrid2DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid2DBTableView1VENTAS: TcxGridDBColumn;
    cxGrid2DBTableView1ENTRADAS: TcxGridDBColumn;
    cxGrid2DBTableView1SALIDAS: TcxGridDBColumn;
    cxGrid2DBTableView1EXACTUAL: TcxGridDBColumn;
    cxButton3: TcxButton;
    QCortesAbiertosID: TIntegerField;
    QCortesAbiertosFECHA_INICIAL: TDateField;
    QCortesAbiertosFECHA_FINAL: TDateField;
    QCortesAbiertosFECHA_HOY: TDateField;
    QCortesAbiertosMONTOINVENTARIO: TFloatField;
    QCortesAbiertosESTADO: TIntegerField;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    DsExistencia: TDataSource;
    ZExistencia: TZReadOnlyQuery;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaCOSTO: TFloatField;
    ZExistenciaCOSTO_PR: TFloatField;
    ZExistenciaCOD_ALM: TIntegerField;
    ZExistenciaEXISTENCIA: TExtendedField;
    ZExistenciaTOTAL: TExtendedField;
    ZExistenciaCODIGOBARRA: TWideStringField;
    ZExistenciaREFERENCIA: TWideStringField;
    ZQuery1: TZQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    FloatField1: TFloatField;
    IntegerField2: TIntegerField;
    zCorteInventario: TZUpdateSQL;
    Qnum2: TZReadOnlyQuery;
    Qnum2GEN_ID: TLargeintField;
    QExiste: TZReadOnlyQuery;
    QExisteID: TIntegerField;
    QExisteFECHA_CORTE: TDateField;
    QExisteIDUSAURIO: TIntegerField;
    QExisteMONTO: TFloatField;
    QExisteCOD_ART: TIntegerField;
    QExisteEXISTENCIA: TFloatField;
    QExisteIDMASTER: TIntegerField;
    QCerrarCorte: TZReadOnlyQuery;
    cxButton6: TcxButton;
    Zactuliza: TZReadOnlyQuery;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Label2: TLabel;
    Image2: TImage;
    qConsultaCortesAbiertos: TZReadOnlyQuery;
    DsConsultaCortesAbiertos: TDataSource;
    QCortes2: TZReadOnlyQuery;
    DsCortes2: TDataSource;
    qConsultaCortesAbiertosID: TIntegerField;
    qConsultaCortesAbiertosFECHA_INICIAL: TDateField;
    qConsultaCortesAbiertosFECHA_FINAL: TDateField;
    qConsultaCortesAbiertosFECHA_HOY: TDateField;
    qConsultaCortesAbiertosMONTOINVENTARIO: TFloatField;
    qConsultaCortesAbiertosESTADO: TIntegerField;
    QCortes2FECHA: TDateField;
    QCortes2COD_ART: TIntegerField;
    QCortes2ARTICULOS: TWideStringField;
    QCortes2EXISTENCIA: TExtendedField;
    QCortes2VENTAS: TExtendedField;
    QCortes2ENTRADAS: TExtendedField;
    QCortes2SALIDAS: TExtendedField;
    QCortes2EXACTUAL: TExtendedField;
    cxButton7: TcxButton;
    pnlUpdate: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    cxButton5: TcxButton;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid4DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    cxGrid4DBTableView1Column3: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    cxButton8: TcxButton;
    p_TipoImpresion: TPanel;
    Op1: TcxRadioGroup;
    cxButton9: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton6Click(Sender: TObject);
    procedure cxGrid4DBTableView1Column3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid4DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
  private
     procedure actulizacorte;
    { Private declarations }
  public

    function fexiste(cod : integer): Boolean;
    { Public declarations }
  end;

var
  FrmCorteInventario: TFrmCorteInventario;

implementation

{$R *.dfm}

uses Unit2, UgetCorteInventario, USelectorPrinters, Tools, UREcontero;

procedure TFrmCorteInventario.actulizacorte;
begin

with zexistencia do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
                 sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                 sql.add('where b.politica <> ''Servicio''');
                 sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
                 open;
               end;



         with ZExistencia do
           begin
             first;

             with qcortesabiertos do
                     begin
                       close;
                       sql.Clear;
                       sql.Add('select * from MCORTEINVENTARIO');
                       sql.Add('where estado =2 ');
                       open;
                     end;

             while not eof do
               begin


                if fexiste(ZExistenciaCOD_ART.Value) = false then
                  begin



                     datos.QCorteInventario.Open;

                     with qnum2 do
                         begin
                           close;
                           sql.Clear;
                           sql.Add('select gen_id(GEN_TB_INVENTARIOCORTE_ID, 1) from RDB$DATABASE');
                           open;
                         end;

                         datos.QCorteInventario.Append;
                         datos.QCorteInventarioID.Value             := Qnum2GEN_ID.Value;
                         datos.QCorteInventarioFECHA_CORTE.Value    := now();
                         datos.QCorteInventarioIDUSAURIO.Value      := AsignaUsuario;
                         datos.QCorteInventarioMONTO.Value          := ZExistenciaTOTAL.Value;
                         datos.QCorteInventarioCOD_ART.Value        := ZExistenciaCOD_ART.Value;
                         datos.QCorteInventarioEXISTENCIA.Value     := ZExistenciaEXISTENCIA.Value;
                         datos.QCorteInventarioIDMASTER.Value       := QCorteInventarioID.Value;
                         datos.QCorteInventarioRECONTEO.Value       := 0.00;
                  end else begin

                                with Zactuliza do
                                  begin
                                    Close;
                                    sql.Clear;
                                    sql.Add('update TB_INVENTARIOCORTE set existencia =:exis where cod_art =:cod');
                                    params[0].Value := ZExistenciaEXISTENCIA.Value;
                                    params[1].Value := ZExistenciaCOD_ART.Value;
                                    ExecSQL;
                                  end;




                           end;



                 next;
               end;

               datos.QCorteInventario.ApplyUpdates;
           end;


     qcorteinventario.ApplyUpdates;
     datos.data.Commit;




end;

procedure TFrmCorteInventario.cxButton1Click(Sender: TObject);
begin

with QHayCorte do
   begin
     close;
     sql.Clear;
     sql.Add('select * from MCORTEINVENTARIO');
     sql.Add('where estado =2 ');
     open;
   end;


   if QHayCorte.RecordCount > 0  then
       begin

           ShowMessage(' No es posible iniciar un nuevo corte, existe uno Abierto ');

       end else begin

                  if  fGetCorteInventario = nil then
                    begin
                       fGetCorteInventario := tfGetCorteInventario.Create(self);
                       fGetCorteInventario.ShowModal;
                    end;

                end;


end;

procedure TFrmCorteInventario.cxButton2Click(Sender: TObject);
begin


with qcortesabiertos do
   begin
     close;
     sql.Clear;
     sql.Add('select * from MCORTEINVENTARIO');
     sql.Add('where estado =2');
     open;
   end;

 with datos.QCorteInventario do
     begin
       close;
       sql.Clear;
       sql.Add('select a.*, b.articulo from TB_INVENTARIOCORTE a');
       sql.Add('left join mtartuculos b On a.cod_art = b.cod_art');
       sql.Add('where a.idmaster =:op ');
       params[0].Value := qcortesabiertosID.Value;
       open;
     end;



   pnlUpdate.Visible := true;

end;

procedure TFrmCorteInventario.cxButton3Click(Sender: TObject);
begin
  with qcortes do  begin
                     close;
                     sql.Clear;
                     sql.Add('SELECT * FROM consultar_corte_inventario(:FFINAL, :FCORTE,:F1, :F2)');
                     params[0].Value := now();
                     params[1].Value := QCortesAbiertosfecha_inicial.value;
                     params[2].Value := QCortesAbiertosfecha_inicial.value;
                     params[3].Value := now();
                     open;
                   end;


                   actulizacorte;
end;

procedure TFrmCorteInventario.cxButton4Click(Sender: TObject);
begin
FSelectorPrinter.Edit1.Text     := 'Corte_01';
FSelectorPrinter.ShowModal;
end;

procedure TFrmCorteInventario.cxButton5Click(Sender: TObject);
begin
with qcortesabiertos do
   begin
     close;
     sql.Clear;
     sql.Add('select * from MCORTEINVENTARIO');
     sql.Add('where estado =2 ');
     open;
   end;

   with QCerrarCorte do
     begin
       close;
       sql.Clear;
       sql.Add('update MCORTEINVENTARIO set estado = 1, FECHA_FINAL =:FECHA');
       Params[0].Value  := NOW();
       ExecSQL;
     end;

     MsgInformacion(' Proceso terminado... ');
     pnlUpdate.Visible := False;

with qcortesabiertos do
   begin
     close;
     sql.Clear;
     sql.Add('select * from MCORTEINVENTARIO');
     sql.Add('where estado =2 ');
     open;
   end;


   Qcortes.Close;

end;

procedure TFrmCorteInventario.cxButton6Click(Sender: TObject);
begin

with qConsultaCortesAbiertos do
   begin
     close;
     sql.Clear;
     sql.Add('select * from MCORTEINVENTARIO');
     sql.Add('where estado =1 ');
     open;
   end;

pgcentral.ActivePage := cxTabSheet2;
end;

procedure TFrmCorteInventario.cxButton7Click(Sender: TObject);
begin
pgcentral.ActivePage := cxTabSheet1;
end;

procedure TFrmCorteInventario.cxButton8Click(Sender: TObject);
begin


 with qcortes2 do  begin
                     close;
                     sql.Clear;
                     sql.Add('SELECT * FROM consultar_corte_inventario(:FFINAL, :FCORTE,:F1, :F2)');
                     params[0].Value := qConsultaCortesAbiertosFECHA_FINAL.Value;
                     params[1].Value := qConsultaCortesAbiertosfecha_inicial.value;
                     params[2].Value := qConsultaCortesAbiertosfecha_inicial.value;
                     params[3].Value := qConsultaCortesAbiertosFECHA_FINAL.Value;
                     open;
                   end;

FSelectorPrinter.Edit1.Text     := 'Corte_02';
FSelectorPrinter.ShowModal;
end;

procedure TFrmCorteInventario.cxGrid4DBTableView1Column3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FReconteo.ShowModal;
end;

procedure TFrmCorteInventario.cxGrid4DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (AViewInfo.GridRecord.Values[2] > AViewInfo.GridRecord.Values[3] ) then BEGIN
    ACanvas.Brush.Color := $00E1FFF9;
    ACanvas.Font.Color := clBlack;
   end;
   if (AViewInfo.GridRecord.Values[2] < AViewInfo.GridRecord.Values[3]) then BEGIN
    ACanvas.Brush.Color := $00FFEBDF;
    ACanvas.Font.Color := clBlack;
   END;
end;

procedure TFrmCorteInventario.cxGridDBTableView1DblClick(Sender: TObject);
begin
 with qcortes2 do  begin
                     close;
                     sql.Clear;
                     sql.Add('SELECT * FROM consultar_corte_inventario(:FFINAL, :FCORTE,:F1, :F2)');
                     params[0].Value := qConsultaCortesAbiertosFECHA_FINAL.Value;
                     params[1].Value := qConsultaCortesAbiertosfecha_inicial.value;
                     params[2].Value := qConsultaCortesAbiertosfecha_inicial.value;
                     params[3].Value := qConsultaCortesAbiertosFECHA_FINAL.Value;
                     open;
                   end;


end;

function TFrmCorteInventario.fexiste(cod: integer): Boolean;
var
quepaso : Integer;
begin

 quepaso := 0;
 with FrmCorteInventario.QExiste do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_INVENTARIOCORTE where cod_art=:op');
     params[0].Value := cod;
     open;
   end;

   quepaso := FrmCorteInventario.QExiste.RecordCount;
   if quepaso > 0 then
     begin
       Result := true;
     end else
         begin
            Result := false;
         end;



end;

procedure TFrmCorteInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmCorteInventario := nil;
Action := caFree;
end;

procedure TFrmCorteInventario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
   begin
     pnlUpdate.Visible := false;

     if p_TipoImpresion.Visible = true then
       begin
         p_TipoImpresion.Visible := false;
       end;
   end;
end;

procedure TFrmCorteInventario.FormShow(Sender: TObject);
begin
pnlUpdate.Visible := false;
pgcentral.Properties.HideTabs := true;
pgcentral.ActivePage := cxTabSheet1;


with qcortesabiertos do
   begin
     close;
     sql.Clear;
     sql.Add('select * from MCORTEINVENTARIO');
     sql.Add('where estado =2 ');
     open;
   end;


end;

end.
