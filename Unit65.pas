unit Unit65;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxDropDownEdit, cxDBEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxGroupBox, Vcl.Menus,
  cxButtons,  cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxCurrencyEdit, cxCalc, RxClock,
  frxClass, frxDBSet, cxCheckBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, Vcl.Grids,
  Vcl.DBGrids, dxSkinTheBezier, dxGDIPlusClasses, cxImage, acPNG, Vcl.Buttons,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TFrmCompras = class(TForm)
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    numeroD: TZReadOnlyQuery;
    numeroDMAX: TIntegerField;
    Qproveedor: TZReadOnlyQuery;
    QproveedorCOD: TIntegerField;
    QproveedorCOD_FAB: TWideStringField;
    QproveedorDESCRIPCION: TWideStringField;
    QproveedorCONTACTO: TWideStringField;
    QproveedorTELEFONO: TWideStringField;
    QproveedorFAX: TWideStringField;
    QproveedorEMAIL: TWideStringField;
    QproveedorDIRECCION: TWideStringField;
    numero: TZReadOnlyQuery;
    numeroMAX: TIntegerField;
    zAjustePRN: TZReadOnlyQuery;
    zAjustePRNNOID: TIntegerField;
    zAjustePRNFECHA: TDateField;
    zAjustePRNUSUARIOID: TIntegerField;
    zAjustePRNTIENDAID: TIntegerField;
    zAjustePRNCONDICION: TWideStringField;
    zAjustePRNPROVID: TIntegerField;
    zAjustePRNNOFACT: TWideStringField;
    zAjustePRNFECHA_COMPRA: TDateField;
    zAjustePRNPLAZO: TIntegerField;
    zAjustePRNMONTOFACT: TFloatField;
    zAjustePRNMONTOPAGO: TFloatField;
    zAjustePRNMONTOPEND: TFloatField;
    zAjustePRNESTADO: TIntegerField;
    zAjustePRNNOMBRES_EMP: TWideStringField;
    zAjustePRNDESCRIPCION: TWideStringField;
    zAjustePRNNOMBRE_PRO: TWideStringField;
    QCompras: TZReadOnlyQuery;
    QComprasNOID: TIntegerField;
    QComprasFECHA: TDateField;
    QComprasUSUARIOID: TIntegerField;
    QComprasTIENDAID: TIntegerField;
    QComprasCONDICION: TWideStringField;
    QComprasPROVID: TIntegerField;
    QComprasNOFACT: TWideStringField;
    QComprasFECHA_COMPRA: TDateField;
    QComprasPLAZO: TIntegerField;
    QComprasMONTOFACT: TFloatField;
    QComprasMONTOPAGO: TFloatField;
    QComprasMONTOPEND: TFloatField;
    QComprasESTADO: TIntegerField;
    QComprasNOMBRES_EMP: TWideStringField;
    QComprasDESCRIPCION: TWideStringField;
    QReposicion: TZReadOnlyQuery;
    QReposicionNOID: TIntegerField;
    QReposicionFECHA: TDateField;
    QReposicionUSUARIOID: TIntegerField;
    QReposicionTIENDAID: TIntegerField;
    QReposicionCONDICION: TWideStringField;
    QReposicionPROVID: TIntegerField;
    QReposicionNOFACT: TWideStringField;
    QReposicionFECHA_COMPRA: TDateField;
    QReposicionPLAZO: TIntegerField;
    QReposicionMONTOFACT: TFloatField;
    QReposicionMONTOPAGO: TFloatField;
    QReposicionMONTOPEND: TFloatField;
    QReposicionESTADO: TIntegerField;
    QReposicionNOMBRES_EMP: TWideStringField;
    QReposicionDESCRIPCION: TWideStringField;
    QReposicionNOMBRE_PRO: TWideStringField;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZExistencia: TZReadOnlyQuery;
    DsqProvee: TDataSource;
    DsqCompra: TDataSource;
    DsReposicion: TDataSource;
    DsAjusteD: TDataSource;
    DataSource1: TDataSource;
    OpM: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    ComboMoneda: TcxDBComboBox;
    Label21: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label9: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Opdetalle: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Arti_TXT: TcxTextEdit;
    Cant_TXT: TcxCalcEdit;
    MONTOCOSTO_TXT: TcxCurrencyEdit;
    TOTALIMPUESTO_TXT: TcxCurrencyEdit;
    totalcosto_txt: TcxCurrencyEdit;
    Edit1: TEdit;
    Panel2: TPanel;
    RxClock1: TRxClock;
    config: TfrxDBDataset;
    recibo: TfrxReport;
    Btconsultar: TcxButton;
    zAjustePRNFECHA_V: TDateField;
    zAjustePRNMONEDA: TWideStringField;
    zAjustePRNCAMBIOMONEDA: TFloatField;
    zAjustePRNFLETE: TFloatField;
    zAjustePRNOTROSGASTOS: TFloatField;
    zAjustePRNDESCUENTO: TFloatField;
    MaxAlmacen: TZReadOnlyQuery;
    MaxAlmacenMAX: TIntegerField;
    Panel3: TPanel;
    Button1: TButton;
    Memo1: TEdit;
    numero12: TZReadOnlyQuery;
    numero12GEN_ID: TLargeintField;
    NUMEROMA: TZReadOnlyQuery;
    NUMEROMAGEN_ID: TLargeintField;
    cxGroupBox1: TcxGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    flete: TcxDBCalcEdit;
    gastos: TcxDBCalcEdit;
    descuento: TcxDBCalcEdit;
    cxCheckBox1: TcxCheckBox;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label20: TLabel;
    ZExistenciaIDTIENDA: TIntegerField;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaPRECIO_A: TFloatField;
    ZExistenciaPRECIO_B: TFloatField;
    ZExistenciaPRECIO_D: TFloatField;
    ZExistenciaEXISTENCIA: TExtendedField;
    DBGrid1: TDBGrid;
    Label22: TLabel;
    Edit4: TEdit;
    QTotales: TZReadOnlyQuery;
    QTotalesTIMPUESTO: TExtendedField;
    QTotalesTCOSTO: TExtendedField;
    CxTotal: TcxCurrencyEdit;
    Edit2: TEdit;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosMONEDA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosCOSTO: TFloatField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosEXISTENCIA: TExtendedField;
    Edit3: TEdit;
    ITbs12: TEdit;
    Label23: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label4: TLabel;
    Label24: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    SPactualizaEquivalenciaCostos: TZReadOnlyQuery;
    Panel1: TPanel;
    btnsalir: TSpeedButton;
    Panel4: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label19: TLabel;
    Panel12: TPanel;
    Label25: TLabel;
    lblEstado: TLabel;
    Panel17: TPanel;
    SpeedButton9: TSpeedButton;
    Panel15: TPanel;
    SpeedButton6: TSpeedButton;
    Panel23: TPanel;
    SpeedButton8: TSpeedButton;
    edFechaVencimiento: TcxDateEdit;
    lblFechaVencimiento: TLabel;
    edtLote: TEdit;
    Panel5: TPanel;
    cxButton1: TSpeedButton;
    Panel6: TPanel;
    cxButton8: TSpeedButton;
    Edit5: TEdit;
    IbqRArticulosLOTE: TWideStringField;
    IbqRArticulosSERIE: TWideStringField;
    Panel7: TPanel;
    cxButton3: TSpeedButton;
    Panel8: TPanel;
    cxButton4: TSpeedButton;
    Panel9: TPanel;
    cxButton6: TSpeedButton;
    detalle: TfrxDBDataset;
    master: TfrxDBDataset;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TOTALIMPUESTO_TXTExit(Sender: TObject);
    procedure ComboMonedaPropertiesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MONTOCOSTO_TXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TOTALIMPUESTO_TXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Cant_TXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure totales;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtconsultarClick(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1ffffffffClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4ddClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure edFechaVencimientoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private


  procedure Inventario;
    { Private declarations }
  public
   suma, itbs, descc : Currency;

    { Public declarations }
  end;

var
  FrmCompras: TFrmCompras;

implementation
     uses unit2, tools, Unit26, Unit66, Uinicio, Unit108, Unit109, Unit29;
{$R *.dfm}



procedure TFrmCompras.BtconsultarClick(Sender: TObject);
begin
    if FrmBuscarCompras = nil then
begin
FrmBuscarCompras := tFrmBuscarCompras.Create(self);
FrmBuscarCompras.showmodal;
end;
end;

procedure TFrmCompras.btnsalirClick(Sender: TObject);
begin
datos.AjusteD.CancelUpdates;
datos.ZAjusteM.CancelUpdates;
datos.Data.Rollback;

 datos.ZAjusteM.Close;
    datos.AjusteD.Close;

     //cxButton2.Enabled := true;
     cxButton3.Enabled := false;
     cxButton4.Enabled := false;
     cxButton6.Enabled := FALSE;

  arti_txt.Clear;
  cant_txt.Value := 1;
  montocosto_txt.Value := 0.00;
  totalimpuesto_txt.Value := 0.00;
  totalcosto_txt.Value := 0.00;
   CxTotal.Value := 0.00;
      edit4.Clear;
     close;
end;

procedure TFrmCompras.Button1Click(Sender: TObject);
begin
Panel3.Visible := false;
end;

procedure TFrmCompras.Cant_TXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
   begin
     MONTOCOSTO_TXT.SetFocus;
   end;
end;

procedure TFrmCompras.ComboMonedaPropertiesChange(Sender: TObject);
begin
if combomoneda.ItemIndex = 0 then
  begin
    montocosto_txt.Properties.DisplayFormat :='RD$,0.00;(RD$,0.00)';
    flete.Properties.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
    gastos.Properties.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
    descuento.Properties.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
    label13.Caption := 'Costo RD$';
    label15.Caption := 'Total Costo RD$';
  end;

if combomoneda.ItemIndex = 1 then
  begin
    montocosto_txt.Properties.DisplayFormat :='US$,0.00;(US$,0.00)';
    flete.Properties.DisplayFormat := 'US$,0.00;(US$,0.00)';
    gastos.Properties.DisplayFormat := 'US$,0.00;(US$,0.00)';
    descuento.Properties.DisplayFormat := 'US$,0.00;(US$,0.00)';
    label13.Caption := 'Costo US$';
    label15.Caption := 'Total Costo US$';

  end;

end;

procedure TFrmCompras.cxButton1Click(Sender: TObject);
var
nregistro : Integer;
begin

//if cxDBComboBox1.ItemIndex = 0 then
//  begin
//  datos.AjusteD.Open;
//
// with numero12 do
//  begin
//     close;
//     sql.Clear;
//     sql.Add('select gen_id(GEN_DETALLE_AJUSTE_ID, 1) from RDB$DATABASE');
//     open;
//  end;
//
//
//
//  datos.AjusteD.Insert;
//  datos.AjusteDDETALLEID.Value := numero12GEn_id.Value;
//  datos.AjusteDCOD_ART.Value := StrToInt(Edit3.Text);
//  datos.AjusteDARTICULOSNOM.Value := arti_txt.Text;
//  datos.AjusteDCANT.Value := cant_txt.Value;
//  datos.AjusteDESTADO.Value :=1;
//  datos.AjusteDMONTOCOSTO.Value := 0.00;
//  datos.AjusteDoBS.Value := Memo1.Text;
//
//
//  if combomoneda.ItemIndex = 0 then
//    begin
//        datos.AjusteDMONTOCOSTO.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
//        datos.AjusteDTOTALIMP.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
//        datos.AjusteDTOTALCOSTO.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
//        datos.AjusteDPRECIOUNIT.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
//     end;
//
//  if combomoneda.ItemIndex = 1 then
//    begin
//        datos.AjusteDMONTOCOSTO.DisplayFormat := 'US$,0.00;(US$,0.00)';
//        datos.AjusteDTOTALIMP.DisplayFormat := 'US$,0.00;(US$,0.00)';
//        datos.AjusteDTOTALCOSTO.DisplayFormat := 'US$,0.00;(US$,0.00)';
//        datos.AjusteDPRECIOUNIT.DisplayFormat := 'US$,0.00;(US$,0.00)';
//    end;
//
//
//  datos.AjusteDTOTALIMP.Value := 0.00;
//  datos.AjusteDTOTALCOSTO.Value := 0.00;
//  datos.AjusteDMONEDA.Value := EDIT1.Text;
//
//  datos.AjusteD.Post;
// // cod_txt.Clear;
//  arti_txt.Clear;
//  cant_txt.Value := 1;
//  edit2.SetFocus;
//
//
//  end;


if cxDBComboBox1.ItemIndex = 1 then
  begin
//  ShowMessage('Antes :'+TOTALIMPUESTO_TXT.text );
//TOTALIMPUESTO_TXT.Value := (MONTOCOSTO_TXT.Value * (IbqRArticulosTAZA_COMPRA.Value / 100));
//ShowMessage('Despues :'+TOTALIMPUESTO_TXT.text );
totalcosto_txt.Value := cant_txt.Value * (montocosto_txt.Value + totalimpuesto_txt.Value);
datos.AjusteD.Open;

  with numero12 do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_DETALLE_AJUSTE_ID, 1) from RDB$DATABASE');
     open;
  end;

  datos.AjusteD.Insert;

  datos.AjusteDDETALLEID.Value := numero12GEn_id.Value;;
  datos.AjusteDCOD_ART.Value := StrToInt(Edit3.Text);
  datos.AjusteDARTICULOSNOM.Value := arti_txt.Text;
  datos.AjusteDCANT.Value := cant_txt.Value;
  datos.AjusteDESTADO.Value :=1;
   datos.AjusteDoBS.Value := Memo1.Text;

  if combomoneda.ItemIndex = 0 then
    begin
        datos.AjusteDMONTOCOSTO.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
        datos.AjusteDTOTALIMP.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
        datos.AjusteDTOTALCOSTO.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
        datos.AjusteDPRECIOUNIT.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
     end;

  if combomoneda.ItemIndex = 1 then
    begin
        datos.AjusteDMONTOCOSTO.DisplayFormat := 'US$,0.00;(US$,0.00)';
        datos.AjusteDTOTALIMP.DisplayFormat := 'US$,0.00;(US$,0.00)';
        datos.AjusteDTOTALCOSTO.DisplayFormat := 'US$,0.00;(US$,0.00)';
        datos.AjusteDPRECIOUNIT.DisplayFormat := 'US$,0.00;(US$,0.00)';
    end;

  datos.AjusteDMONTOCOSTO.Value := montocosto_txt.Value * cant_txt.Value;
  datos.AjusteDTOTALIMP.Value   :=totalimpuesto_txt.Value * cant_txt.Value;
  datos.AjusteDTOTALCOSTO.Value := totalcosto_txt.Value;
  datos.AjusteDPRECIOUNIT.Value := MONTOCOSTO_TXT.Value;
  datos.AjusteDMONEDA.Value := EDIT1.Text;
  datos.AjusteD.Post;
  //cod_txt.Clear;
   totales;
  arti_txt.Clear;
  cant_txt.Value := 1;
  montocosto_txt.Value := 0.00;
  totalimpuesto_txt.Value := 0.00;
  totalcosto_txt.Value := 0.00;

  end;

  // CxTotal.Value := suma;
   Nregistro :=DBGrid1.Datasource.Dataset.Recordcount;
   edit4.Text := IntTostr(Nregistro);

  cxButton1.Enabled := false;
  memo1.Clear;
  ITbs12.Clear;
  edit3.Clear;
  edit2.SetFocus;

end;

function RoundFives(Numero: Double): Integer;
var
  u, N: Integer;
begin
  N:= Trunc(Numero);
  u:= N - 10 * (N div 10);
  N:= N - u;
  Result:= N;
  if u in[1..5] then
    Result:= N + 5;
  if u in [6..9] then
    Result:= N + 10;
end;

procedure TFrmCompras.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

if (AViewInfo.GridRecord.Values[8] = 'NO') then BEGIN
 //            ACanvas.Brush.Color := clMaroon;
// with cxGrid1DBTableView1 do
//        begin
//
//{          OptionsBehavior.BestFitMaxRecordCount :=
//           ViewInfo.VisibleRecordCount;
//
//          BeginUpdate;
// }
//          VisibleColumns[3].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
//          with TcxCurrencyEditProperties(VisibleColumns[3].Properties) do
//          begin
//            Alignment.Horz := taRightJustify;
//            DisplayFormat := 'US$,0.00;(US$,0.00)';
//          end;
//
//          VisibleColumns[4].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
//          with TcxCurrencyEditProperties(VisibleColumns[4].Properties) do
//          begin
//            Alignment.Horz := taRightJustify;
//            DisplayFormat := 'US$,0.00;(US$,0.00)';
//          end;
//
//          VisibleColumns[5].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
//          with TcxCurrencyEditProperties(VisibleColumns[5].Properties) do
//          begin
//            Alignment.Horz := taRightJustify;
//            DisplayFormat := 'US$,0.00;(US$,0.00)';
//          end;
//
//          VisibleColumns[6].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
//          with TcxCurrencyEditProperties(VisibleColumns[6].Properties) do
//          begin
//            Alignment.Horz := taRightJustify;
//            DisplayFormat := 'US$,0.00;(US$,0.00)';
//          end;
//        end;
//END;
end;
end;

procedure TFrmCompras.DBGrid1DblClick(Sender: TObject);
var
Nregistro : Integer;
begin
 if application.MessageBox ('Deseas Eliminar este Item ?','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin

  CxTotal.Value :=  CxTotal.Value - (datos.AjusteDtotalcosto.Value);
   Nregistro :=DBGrid1.Datasource.Dataset.Recordcount;
   edit4.Text := IntTostr(Nregistro);
  datos.AjusteD.Edit;
  datos.AjusteD.Delete;
  datos.AjusteD.ApplyUpdates;

  cxButton1.Enabled := true;
         end;
end;

procedure TFrmCompras.edFechaVencimientoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
   cxButton1.Click;
  end;
end;

procedure TFrmCompras.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
   var
   Cadenaleida : string;
begin


if key = VK_RETURN then
  begin
  Cadenaleida := edit2.Text;
  StringReplace ( CadenaLeida, chr(39), '-', [ rfReplaceAll]);
    with ibqrarticulos do
          begin
            close;
            sql.Clear;
            sql.Add('select a.moneda,a.ubicacion, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra,sum(b.entrada - b.salida) Existencia, a. lote, a.serie');
            sql.Add('from mtartuculos a');
            sql.Add('left join minventario b On a.cod_art = b.cod_art');
            sql.Add('where a.CODIGOBARRA CONTAINING :OPP');
            sql.Add('group by a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra, a.ubicacion, a. lote, a.serie');
            Params[0].Value :=StringReplace ( CadenaLeida, chr(39), '-', [ rfReplaceAll]);
            open;
          end;

             Frmcompras.edit3.Text := ibqrArticuloscodigoTXT.Value;
             Frmcompras.Arti_TXT.Text := ibqrArticulosarticulo.Value;
             Frmcompras.cxButton1.Enabled := true;
             Frmcompras.Label13.Caption := 'Costo RD$';
             Frmcompras.Label15.Caption := 'Total Costo RD$';
             Frmcompras.Edit1.Text := 'SI';

             FrmCompras.edtLote.Text := IbqRArticulosLOTE.Text;

             if FrmCompras.edtLote.Text = 'SI' then
               begin
                  FrmCompras.lblFechaVencimiento.Visible := true;
                  FrmCompras.edFechaVencimiento.Visible  := true;
               end else begin
                          FrmCompras.lblFechaVencimiento.Visible := false;
                          FrmCompras.edFechaVencimiento.Visible  := false;
                        end;


              FrmCompras.MONTOCOSTO_TXT.Value := IbqRArticulosCOSTO.Value;
         Frmcompras.TOTALIMPUESTO_TXT.Properties.DisplayFormat :='RD$,0.00;(RD$,0.00)';
         itbs12.Text := FloatTostr(IbqRArticulosTAZA_COMPRA.Value);
         Cant_TXT.SetFocus;

        // edit2.Clear;
  end;
end;

procedure TFrmCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmCompras := nil;
Action := caFree;
end;

procedure TFrmCompras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = vk_f2 then
  begin

   if FrmBuscarArticulos =nil then
   begin
       FrmBuscarArticulos := tFrmBuscarArticulos.Create(self);
       FrmBuscarArticulos.edit2.Text := 'COMPRA';
       FrmBuscarArticulos.showmodal;
   end;

  end;



end;

procedure TFrmCompras.Inventario;
var
totalCoP : double;
TotalCoEx :Double;
totalviejo : double;
totalnuevo : double;
ITB : Currency;
BN  : Currency;
begin
 datos.ZInventario.Open;

    with datos.AjusteD do
      begin
        first;

        while not eof do
           begin
                                with datos.MantArt do
                                        begin
                                          close;
                                          sql.Clear;
                                          sql.Add('select b.nom_indicacion, i.signo, c. sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
                                          sql.Add('left join producto_indicaciones b on a.indicacion = b.id');
                                          sql.Add('left join productos_sustancia c On a.sustancia =c.id');
                                          sql.Add('left join productos_marca d On a.idmarca = d.id');
                                          sql.Add('left join man_provedores e On a.cod_prov1 = e.cod_prov');
                                          sql.Add('Left Join productos_clasificacion f on a.clasificacion = f.id');
                                          sql.Add('Left join mtcategoria g On a.cod_cat = g.codcat');
                                          sql.Add('Left join producto_subcategoria h on a.subcategoria = h.id');
                                          sql.Add('left join tb_moneda i On a.idmoneda = i.id');
                                          SQL.ADD('left join man_provedores j On a.cod_prov2 = J.cod_prov');;
                                          sql.Add('where a.cod_Art =:oo');
                                          params[0].Value := datos.AjusteDCOD_ART.Value;
                                          open;
                                      end;


                  


                if DATOS.MantArtOPCIONES_BOLA.Value ='Si' then
                             begin

                                       with datos.QCodMin do
                                              begin
                                                close;
                                                sql.Clear;
                                                sql.Add('select * from SP_EQMINIMO(:no)');
                                                params[0].Value := datos.AjusteDCOD_ART.Value;
                                                open;
                                              end;

                                with numeroinventario do
                                    begin
                                       close;
                                       sql.Clear;
                                       sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
                                       open;
                                    end;


                                    datos.ZInventario.Insert;
                                    datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
                                    datos.ZInventarioFECHA.Value          := now();
                                    datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
                                    datos.ZInventarioCOD_ART.Value        := datos.qCodMinCODIGOMINIMO.Value;
                                    datos.ZInventarioCONCEPTOID.Value     := 3;
                                    datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
                                    datos.ZInventarioCONCEPTOID.Value     := 5;
                                    datos.ZInventarioSALIDA.Value         := 0.00;
                                    datos.ZInventarioENTRADA.Value        := datos.AjusteDCANT.Value * (datos.qCodMinCANTEMP.Value);
                                    datos.ZInventarioCOD_ALM.Value        := datos.ZAjusteMCOD_ALM.Value;
                                    datos.ZInventarioLIN.Value            := AsignaLote;

                             end else begin
                         with numeroinventario do
                              begin
                                 close;
                                 sql.Clear;
                                 sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
                                 open;
                              end;


                                  datos.ZInventario.Insert;
                                  datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
                                  datos.ZInventarioFECHA.Value          := now();
                                  datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
                                  datos.ZInventarioCOD_ART.Value        := datos.AjusteDCOD_ART.Value;
                                  datos.ZInventarioCONCEPTOID.Value     := 3;
                                  datos.ZInventarioSALIDA.Value         := 0.00;
                                  datos.ZInventarioENTRADA.Value        := datos.AjusteDCANT.Value;
                                  datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
                                  datos.ZInventarioCOD_ALM.Value        := datos.ZAjusteMCOD_ALM.Value;
                                  datos.ZInventarioLIN.Value            := AsignaLote;

                                end;


                                     if datos.AjusteDLOTE.Value = 'SI' then begin


                                          datos.QMlote.open;
                                          datos.QMlote.Append;
                                          datos.QMloteIDARTICULO.Value := datos.AjusteDCOD_ART.Value;
                                          datos.QMloteESTADO.Value     := 1;
                                          datos.QMloteEXIS_INI.Value   := datos.AjusteDCANT.Value;
                                          datos.QMloteNO_LOTE.Value    := 'COM00'+iNTtOSTR(numeroinventariogen_id.Value);
                                          datos.QMloteFV.Value         := DATOS.AjusteDFV.Value;
                                          datos.QMloteCANT.Value       := datos.AjusteDCANT.Value;
                                          datos.QMloteLIN.Value        := AsignaLote;
                                          datos.qmlote.ApplyUpdates;
                                        end;

                                   if cxDBComboBox1.ItemIndex = 1 then begin
                                   datos.MantArt.Edit;

                                         ITB := 0.00;
                                         bn  := 0.00;
                                       if cxCheckBox1.Checked = true then begin

                                        totalviejo := zexistenciaexistencia.Value * datos.MantArtCOSTO.Value; //datos.AjusteDCANT.Value;
                                        Totalnuevo := (datos.AjusteDPRECIOUNIT.Value * datos.AjusteDCANT.Value);
                                        TotalcoEx :=  zexistenciaexistencia.Value + datos.AjusteDCANT.Value;

                                        totalCoP  := (totalviejo + totalnuevo) / TotalcoEx;

                                        datos.MantArtCOSTO.Value := datos.AjusteDPRECIOUNIT.Value;
                                        datos.MantArtCOSTO_DOLLARS.Value      := datos.AjusteDPRECIOUNIT.Value + ((datos.AjusteDPRECIOUNIT.Value *(datos.MantArtTAZA_COMPRA.Value/100)));
                                     //   datos.MantArtCOSTO_PR.Value := totalCoP;

                                        ITB :=  ((datos.AjusteDPRECIOUNIT.Value *(datos.MantArtTAZA_COMPRA.Value/100)));

                                        if DATOS.MantArtUTILIDADSOBREITBS.Value = 'No' then
                                           begin
                                                   Bn  := (datos.AjusteDPRECIOUNIT.Value * ((datos.MantArtBENEFICIOS.Value)/100));
                                           end else begin
                                                       Bn  := ((datos.AjusteDPRECIOUNIT.Value + ITB) * ((datos.MantArtBENEFICIOS.Value)/100));
                                                    end;

                                        datos.MantArtPRECIO_A.Value      := datos.AjusteDPRECIOUNIT.Value + ITB + Bn;
                                        datos.MantArtPRECIO_Bruto1.Value := Bn + datos.AjusteDPRECIOUNIT.Value;

                                        ITB :=  ((datos.AjusteDPRECIOUNIT.Value *(datos.MantArtTAZA_COMPRA.Value/100)));

                                        if DATOS.MantArtUTILIDADSOBREITBS.Value = 'No' then
                                           begin
                                                   Bn  := (datos.AjusteDPRECIOUNIT.Value * ((datos.MantArtutilidad2.Value)/100));
                                           end else begin
                                                       Bn  := ((datos.AjusteDPRECIOUNIT.Value + ITB) * ((datos.MantArtutilidad2.Value)/100));
                                                    end;

                                        datos.MantArtPRECIO_b.Value      := datos.AjusteDPRECIOUNIT.Value + ITB + Bn;
                                        datos.MantArtPRECIO_Bruto2.Value := Bn + datos.AjusteDPRECIOUNIT.Value;

                                         ITB :=  ((datos.AjusteDPRECIOUNIT.Value *(datos.MantArtTAZA_COMPRA.Value/100)));

                                           if DATOS.MantArtUTILIDADSOBREITBS.Value = 'No' then
                                           begin
                                                   Bn  := (datos.AjusteDPRECIOUNIT.Value * ((datos.MantArtutilidad3.Value)/100));
                                           end else begin
                                                       Bn  := ((datos.AjusteDPRECIOUNIT.Value + ITB) * ((datos.MantArtutilidad3.Value)/100));
                                                    end;
                                         datos.MantArtPRECIO_d.Value      := datos.AjusteDPRECIOUNIT.Value + ITB + Bn;
                                         datos.MantArtPRECIO_Bruto3.Value := Bn + datos.AjusteDPRECIOUNIT.Value;

                                         ITB :=  ((datos.AjusteDPRECIOUNIT.Value *(datos.MantArtTAZA_COMPRA.Value/100)));

                                           if DATOS.MantArtUTILIDADSOBREITBS.Value = 'No' then
                                           begin
                                                   Bn  := (datos.AjusteDPRECIOUNIT.Value * ((datos.MantArtutilidad4.Value)/100));
                                           end else begin
                                                       Bn  := ((datos.AjusteDPRECIOUNIT.Value + ITB) * ((datos.MantArtutilidad4.Value)/100));
                                                    end;

                                         datos.MantArtPRECIO_c.Value      := datos.AjusteDPRECIOUNIT.Value + ITB + Bn;
                                         datos.MantArtPRECIO_Bruto4.Value := Bn + datos.AjusteDPRECIOUNIT.Value;

                                       //  datos.MantArtCOSTO_PR.Value := totalCop;
                                         //datos.MantArtSTOCK.Value    := datos.MantArtSTOCK.Value + datos.AjusteDCANT.Value;


                                         if datos.MantArtOPCIONES_BOLA.Value = 'Si' then
                                           begin
                                               with SPactualizaEquivalenciaCostos do
                                                  begin
                                                    close;
                                                    sql.Clear;
                                                    sql.Add('EXECUTE PROCEDURE ACTUALIZA_PRECIOS_EQUIVALENCIA(:Ecantidad, :noart, :MontoCosto)');
                                                    Params[0].Value   := datos.MantArtCANTEQUIVALENCA.Value;
                                                    Params[1].Value   := datos.MantArtCODEQUIVALENCIA.Value;
                                                    Params[2].Value   := datos.AjusteDPRECIOUNIT.Value;
                                                    ExecSQL;

                                                  end;
                                           end;



                                END;
                              end;



                                datos.MantArt.ApplyUpdates;

                        with datos.MantArt do
                                        begin
                                          close;
                                          sql.Clear;
                                          sql.Add('select b.nom_indicacion, i.signo, c. sustancia as sust, d.marcas, e.nombre_pro, J.nombre_pro AS PRO2, f.clasificacion as Clasi, g.cat, h.subcategoria as Subcat,  A.* from mtartuculos  A');
                                          sql.Add('left join producto_indicaciones b on a.indicacion = b.id');
                                          sql.Add('left join productos_sustancia c On a.sustancia =c.id');
                                          sql.Add('left join productos_marca d On a.idmarca = d.id');
                                          sql.Add('left join man_provedores e On a.cod_prov1 = e.cod_prov');
                                          sql.Add('Left Join productos_clasificacion f on a.clasificacion = f.id');
                                          sql.Add('Left join mtcategoria g On a.cod_cat = g.codcat');
                                          sql.Add('Left join producto_subcategoria h on a.subcategoria = h.id');
                                          sql.Add('left join tb_moneda i On a.idmoneda = i.id');
                                          SQL.ADD('left join man_provedores j On a.cod_prov2 = J.cod_prov');;
                                            sql.Add('where a.cod_art =:oo');
                                            params[0].Value :=  datos.AjusteDCOD_ART.Value;
                                            open;
                                          end;

                               next;
                               end;


                             datos.ZInventario.ApplyUpdates;
                            end;
end;




procedure TFrmCompras.MONTOCOSTO_TXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then
  begin
   // ShowMessage(''+FloatToStr(IbqRArticulosTAZA_COMPRA.Value));
    TOTALIMPUESTO_TXT.Value := (MONTOCOSTO_TXT.Value * (StrToFloat(ITbs12.Text) / 100));
    totalcosto_txt.Value :=cant_txt.Value * (montocosto_txt.Value + totalimpuesto_txt.Value);
    TOTALIMPUESTO_TXT.SetFocus;
  end;
end;

procedure TFrmCompras.SpeedButton1Click(Sender: TObject);
begin

opm.Enabled := true;
OpDetalle.Enabled := true;

 with numeroMA do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_MASTER_AJUSTE_ID, 1) from RDB$DATABASE');
     open;
  end;



 datos.ZAjusteM.Open;
 datos.ZAjusteM.Insert;
 datos.ZAjusteMNOID.Value := NUMEROMAGEN_ID.Value;
 datos.ZAjusteMFECHA.Value := now();
 datos.ZAjusteMUSUARIOID.Value := asignausuario;
 datos.ZAjusteMTIENDAID.Value := asignatienda;
 datos.ZAjusteMFLETE.Value := 0.00;
 datos.ZAjusteMOTROSGASTOS.Value := 0.00;
 datos.ZAjusteMDESCUENTO.Value := 0.00;


 with zqusuario do
   begin
     close;
     sql.Clear;
     sql.Add('select a.*, b.NOMBRES_EMP from musuario a');
     sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
     sql.Add('where a.usuarioID =:pp');
     params[0].Value := asignausuario;
     open;
   end;

 datos.ZAjusteMNOMBRES_EMP.Value := zqusuarionombres_emp.Value;
 cxDBComboBox1.ItemIndex := 1;

 //cxButton2.Enabled := true;
 cxButton3.Enabled := false;
 cxButton4.Enabled := true;
 cxButton6.Enabled := true;
 Btconsultar.Enabled := false;
 //cxButton7.Enabled := false;
// cxDBComboBox1.Enabled := true;
 combomoneda.ItemIndex := 0;
  edit2.SetFocus;
end;

procedure TFrmCompras.SpeedButton1ffffffffClick(Sender: TObject);
var
nregistro : Integer;
begin

//if cxDBComboBox1.ItemIndex = 0 then
//  begin
//  datos.AjusteD.Open;
//
// with numero12 do
//  begin
//     close;
//     sql.Clear;
//     sql.Add('select gen_id(GEN_DETALLE_AJUSTE_ID, 1) from RDB$DATABASE');
//     open;
//  end;
//
//
//
//  datos.AjusteD.Insert;
//  datos.AjusteDDETALLEID.Value := numero12GEn_id.Value;
//  datos.AjusteDCOD_ART.Value := StrToInt(Edit3.Text);
//  datos.AjusteDARTICULOSNOM.Value := arti_txt.Text;
//  datos.AjusteDCANT.Value := cant_txt.Value;
//  datos.AjusteDESTADO.Value :=1;
//  datos.AjusteDMONTOCOSTO.Value := 0.00;
//  datos.AjusteDoBS.Value := Memo1.Text;
//
//
//  if combomoneda.ItemIndex = 0 then
//    begin
//        datos.AjusteDMONTOCOSTO.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
//        datos.AjusteDTOTALIMP.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
//        datos.AjusteDTOTALCOSTO.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
//        datos.AjusteDPRECIOUNIT.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
//     end;
//
//  if combomoneda.ItemIndex = 1 then
//    begin
//        datos.AjusteDMONTOCOSTO.DisplayFormat := 'US$,0.00;(US$,0.00)';
//        datos.AjusteDTOTALIMP.DisplayFormat := 'US$,0.00;(US$,0.00)';
//        datos.AjusteDTOTALCOSTO.DisplayFormat := 'US$,0.00;(US$,0.00)';
//        datos.AjusteDPRECIOUNIT.DisplayFormat := 'US$,0.00;(US$,0.00)';
//    end;
//
//
//  datos.AjusteDTOTALIMP.Value := 0.00;
//  datos.AjusteDTOTALCOSTO.Value := 0.00;
//  datos.AjusteDMONEDA.Value := EDIT1.Text;
//
//  datos.AjusteD.Post;
// // cod_txt.Clear;
//  arti_txt.Clear;
//  cant_txt.Value := 1;
//  edit2.SetFocus;
//
//
//  end;


if cxDBComboBox1.ItemIndex = 1 then
  begin

  if (edtLote.Text ='SI') and (edFechaVencimiento.Text ='') then
    begin
            Crear_Mensages('Error',
                    'Fecha de Vencimimiento',
                    'Este articulo necesita la fecha de vencimiento para continuar',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\error.png',
                    'OK') ;
                    edFechaVencimiento.SetFocus;

    end else begin

//  ShowMessage('Antes :'+TOTALIMPUESTO_TXT.text );
//TOTALIMPUESTO_TXT.Value := (MONTOCOSTO_TXT.Value * (IbqRArticulosTAZA_COMPRA.Value / 100));
//ShowMessage('Despues :'+TOTALIMPUESTO_TXT.text );
totalcosto_txt.Value := cant_txt.Value * (montocosto_txt.Value + totalimpuesto_txt.Value);
datos.AjusteD.Open;

  with numero12 do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_DETALLE_AJUSTE_ID, 1) from RDB$DATABASE');
     open;
  end;

  datos.AjusteD.Insert;

  datos.AjusteDDETALLEID.Value := numero12GEn_id.Value;;
  datos.AjusteDCOD_ART.Value := StrToInt(Edit3.Text);
  datos.AjusteDARTICULOSNOM.Value := arti_txt.Text;
  datos.AjusteDCANT.Value := cant_txt.Value;
  datos.AjusteDESTADO.Value :=1;
  datos.AjusteDoBS.Value := Memo1.Text;
  datos.AjusteDLIN.Value := AsignaLote;
  datos.AjusteDLOTE.Value := edtLote.Text;

  if edtLote.Text = 'SI' then
    begin
     datos.AjusteDFV.Text  := edFechaVencimiento.Text;
    end;


  if combomoneda.ItemIndex = 0 then
    begin
        datos.AjusteDMONTOCOSTO.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
        datos.AjusteDTOTALIMP.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
        datos.AjusteDTOTALCOSTO.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
        datos.AjusteDPRECIOUNIT.DisplayFormat := 'RD$,0.00;(RD$,0.00)';
     end;

  if combomoneda.ItemIndex = 1 then
    begin
        datos.AjusteDMONTOCOSTO.DisplayFormat := 'US$,0.00;(US$,0.00)';
        datos.AjusteDTOTALIMP.DisplayFormat := 'US$,0.00;(US$,0.00)';
        datos.AjusteDTOTALCOSTO.DisplayFormat := 'US$,0.00;(US$,0.00)';
        datos.AjusteDPRECIOUNIT.DisplayFormat := 'US$,0.00;(US$,0.00)';
    end;

  datos.AjusteDMONTOCOSTO.Value := montocosto_txt.Value * cant_txt.Value;
  datos.AjusteDTOTALIMP.Value   :=totalimpuesto_txt.Value * cant_txt.Value;
  datos.AjusteDTOTALCOSTO.Value := totalcosto_txt.Value;
  datos.AjusteDPRECIOUNIT.Value := MONTOCOSTO_TXT.Value;
  datos.AjusteDMONEDA.Value := EDIT1.Text;
  datos.AjusteD.Post;
  //cod_txt.Clear;
   totales;
  arti_txt.Clear;
  cant_txt.Value := 1;
  montocosto_txt.Value := 0.00;
  totalimpuesto_txt.Value := 0.00;
  totalcosto_txt.Value := 0.00;

    end;

     Nregistro :=DBGrid1.Datasource.Dataset.Recordcount;
   edit4.Text := IntTostr(Nregistro);

  cxButton1.Enabled := false;
  memo1.Clear;
  ITbs12.Clear;
  edit3.Clear;
  edtLote.Clear;
  edFechaVencimiento.Clear;
  edit2.SetFocus;

  end;

  // CxTotal.Value := suma;


end;

procedure TFrmCompras.SpeedButton2Click(Sender: TObject);
begin
panel3.Visible := true;
memo1.SetFocus;
end;

procedure TFrmCompras.SpeedButton4ddClick(Sender: TObject);
var

totalCoP : double;
TotalCoEx :Double;
totalviejo : double;
totalnuevo : double;
ITB : Currency;
BN  : Currency;

begin

 if cxDBTextEdit4.Text <>'' then begin

    datos.ZAjusteM.Edit;
    datos.ZAjusteMMONTOPAGO.Value := 0.00;

    if datos.ZAjusteMPLAZO.Value > 0 then
      begin
          datos.ZAjusteMMONTOPEND.Value := (CxTotal.Value + datos.ZAjusteMFLETE.Value + datos.ZAjusteMOTROSGASTOS.Value) - datos.ZAjusteMDEscuento.Value;
          datos.ZAjusteMESTADO.Value :=1;
      end else begin
          datos.ZAjusteMMONTOPEND.Value := 0.00;
          datos.ZAjusteMESTADO.Value :=2;
      end;

    datos.ZAjusteMMONTOFACT.Value := (CxTotal.Value + datos.ZAjusteMFLETE.Value + datos.ZAjusteMOTROSGASTOS.Value) - datos.ZAjusteMDEscuento.Value;
    datos.ZAjusteMCAMBIOMONEDA.Value := datos.ZAjusteMMONTOFACT.Value * datos.ZUconfiguracionTAZA.Value;


          datos.ZAjusteMFECHA_V.Value := datos.ZAjusteMFECHA_COMPRA.Value + datos.ZAjusteMPLAZO.Value + 1;
          datos.ZajusteMestado.value := 1;




             ///// ******    Crear Lote

                  //// ******  Fin





    datos.ZAjusteM.ApplyUpdates;
    datos.AjusteD.ApplyUpdates;


///************** Actualiza Inventario

 Inventario;





//      showmessage('');

///*************** Fin Actualiza Inventario

  with zajustePRN do
        begin
             close;
             sql.Clear;
             sql.Add('select a.*, c.nombres_emp, d.descripcion, e.nombre_pro from master_ajuste a');
             sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
             sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
             sql.Add('left join tienda d On a.tiendaid = d.tiendaid');
             sql.Add('left join man_provedores e On a.provid = e.COD_PROV');
             sql.Add('where a.NOID =:opp');
             params[0].Value := datos.ZAjusteMNOID.Value;
             open;
        end;


  if application.MessageBox ('Deseas Imprimir Este Recibo Conduce','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin
            // recibo.variables['varfecha1']:=quotedstr(dbedit2.text);
            recibo.PrepareReport(true);
            recibo.ShowPreparedReport;

         end;


    datos.data.Commit;

    datos.ZAjusteM.Close;
    datos.AjusteD.Close;


    //cxButton2.Enabled := true;
    cxButton3.Enabled := true;
    cxButton4.Enabled := false;
    cxButton6.Enabled := FALSE;
    btconsultar.Enabled := true;


    with FrmHome.zqconsultaUS do
  begin
    close;
    sql.Clear;
    sql.Add('select sum(montopend) suma from master_ajuste');
    sql.Add('where condicion =:op1');
    sql.Add('and moneda =:op2');
     sql.Add('and estado <>2');
     params[0].Value := 'Compra';
    params[1].Value := 'US';
    open;
  end;

with FrmHome.zqconsultaRD do
  begin
    close;
    sql.Clear;
    sql.Add('select sum(montopend) suma from master_ajuste');
    sql.Add('where condicion =:op1');
    sql.Add('and moneda =:op2');
     sql.Add('and estado <>2');
     params[0].Value := 'Compra';
    params[1].Value := 'RD';
    open;
  end;

 // inicioMDI.cxcurrencyedit1.Value := inicioMDI.zqconsultaUSsuma.Value;
 // inicioMDI.cxcurrencyedit2.Value := inicioMDI.zqconsultaRDsuma.Value;




     arti_txt.Clear;
     cant_txt.Value := 1;
     montocosto_txt.Value := 0.00;
     totalimpuesto_txt.Value := 0.00;
     totalcosto_txt.Value := 0.00;
      CxTotal.Value := 0.00;
      edit4.Clear;
     qcompras.Close;
     qcompras.Open;

     qReposicion.Close;
     qReposicion.Open;

     opm.Enabled := false;
     OpDetalle.Enabled := false;
     //cxButton7.Enabled := true;

  end else begin
             ShowMessage(' ** Debes seleccion el almacen **');
           end;


end;

procedure TFrmCompras.cxButton6Click(Sender: TObject);
begin
datos.AjusteD.CancelUpdates;
datos.ZAjusteM.CancelUpdates;
datos.Data.Rollback;

 datos.ZAjusteM.Close;
    datos.AjusteD.Close;

     //cxButton2.Enabled := true;
     cxButton3.Enabled := true;
     cxButton4.Enabled := false;
     cxButton6.Enabled := FALSE;
      btconsultar.Enabled := true;


  arti_txt.Clear;
  cant_txt.Value := 1;
  montocosto_txt.Value := 0.00;
  totalimpuesto_txt.Value := 0.00;
  totalcosto_txt.Value := 0.00;
   CxTotal.Value := 0.00;
      edit4.Clear;
      edtLote.Clear;
      edFechaVencimiento.Clear;

  opm.Enabled := false;
  OpDetalle.Enabled := false;
  //cxButton7.Enabled := true;
end;

procedure TFrmCompras.SpeedButton6Click(Sender: TObject);
begin
if FrmBuscaAlmacen = nil then
  begin
    FrmBuscaAlmacen := tFrmBuscaAlmacen.Create(self);
    FrmBuscaAlmacen.showmodal;
  end;

end;

procedure TFrmCompras.SpeedButton8Click(Sender: TObject);
begin

if FrmProvee = nil then
  begin
    FrmProvee := tFrmProvee.Create(self);
    FrmProvee.showmodal;
  end;
end;

procedure TFrmCompras.SpeedButton9Click(Sender: TObject);
begin

if FrmBProveedor = nil then
begin
   FrmBProveedor := tFrmBProveedor.Create(self);
   FrmBProveedor.Edit2.Text := 'COMPRA';
   FrmBProveedor.qproveedor.Open;
   FrmBProveedor.ShowModal;
end;

end;

procedure TFrmCompras.totales;
begin
suma := 0.00;
itbs := 0.00;
descc := 0.00;

//with QTotales do
//  begin
//    close;
//    sql.Clear;
//    sql.Add('select Sum(a.totalimp) TImpuesto, sum(a.totalcosto) Tcosto from detalle_ajuste a');
//    sql.Add('where a.masterid =:opp');
//    params[0].Value := datos.ZAjusteMNOID.Value;
//    open;
//  end;
//
//
//                   SUMA := QTotalesTCOSTO.Value;
//                   itbs := QTotalesTCOSTO.Value;

                   CxTotal.Value := CxTotal.Value + totalcosto_txt.Value;
end;

procedure TFrmCompras.TOTALIMPUESTO_TXTExit(Sender: TObject);
begin
totalcosto_txt.Value := cant_txt.Value * (montocosto_txt.Value + totalimpuesto_txt.Value);
end;

procedure TFrmCompras.TOTALIMPUESTO_TXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin

  if edtLote.Text = 'SI' then
    begin
       edFechaVencimiento.SetFocus;
    end;
  end;
end;

end.
