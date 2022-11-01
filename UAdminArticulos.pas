unit UAdminArticulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxTrackBar,
  dxSparkline, cxRadioGroup, cxTextEdit, cxCheckBox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonCustomizationForm,
  dxRibbonSkins, dxSkinsdxRibbonPainter, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset,
  ZDataset, dxRibbon, dxBar, dxRibbonMiniToolbar, cxBarEditItem, Vcl.ExtCtrls,
  cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxGroupBox,
  dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBEdit, dxGDIPlusClasses, cxImage;

type
  TFrmAdminArticulos = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    BtTurnos: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    BTNCOMPRAS: TdxBarLargeButton;
    BTNAJUSTEINVENTARIO: TdxBarLargeButton;
    BTNMOVIMIENTO: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton8: TdxBarLargeButton;
    BTNESTADOCREDITO: TdxBarLargeButton;
    BTNREALIZARPAGOS: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    BTNPAGOSREALIZADOS: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    BTFactura: TdxBarLargeButton;
    BtRetiro: TdxBarButton;
    BTNREPORTEVENTA: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    cxBarEditItem2: TcxBarEditItem;
    BtNC: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarLargeButton22: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    dxBarLargeButton23: TdxBarLargeButton;
    BTPRODUCTO: TdxBarLargeButton;
    CustomdxBarCombo1: TCustomdxBarCombo;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    BTCobroFactura: TdxBarLargeButton;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxBarEditItem6: TcxBarEditItem;
    dxBarButton15: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxBarEditItem7: TcxBarEditItem;
    cxBarEditItem8: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxRibbonMiniToolbar1: TdxRibbonMiniToolbar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosCOSTOPROMENO: TFloatField;
    IbqRArticulosUPPER: TWideStringField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosCOSTO: TFloatField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    DsqArticulos: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1POLITICA: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1PRECIO1: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    Almacenes1: TZReadOnlyQuery;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    DsAlmacenes01: TDataSource;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxBarSubItem9: TdxBarSubItem;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    op: TcxRadioGroup;
    tipo: TcxRadioGroup;
    cxTextEdit1: TcxTextEdit;
    label1: TcxLabel;
    cxButton6: TcxButton;
    dxBarLargeButton27: TdxBarLargeButton;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    IbqRArticulosOPCIONES_BOLA: TWideStringField;
    Panel5: TPanel;
    Label58: TLabel;
    Panel6: TPanel;
    Label59: TLabel;
    GBequivalencia: TcxGroupBox;
    IbqRArticulosCODEQUIVALENCIA: TWideStringField;
    IbqRArticulosDESC_EQUIVALENCIA: TWideStringField;
    IbqRArticulosCANTEQUIVALENCA: TFloatField;
    cxLabel1: TcxLabel;
    Panel7: TPanel;
    Label5: TLabel;
    Label60: TLabel;
    cxImage3: TcxImage;
    Panel8: TPanel;
    Label61: TLabel;
    LbModo: TLabel;
    DsEquivalente: TDataSource;
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
    cxGrid11: TcxGrid;
    cxGrid11DBTableView1: TcxGridDBTableView;
    cxGrid11DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid11DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid11DBTableView1OPCIONES_BOLA: TcxGridDBColumn;
    cxGrid11DBTableView1CODEQUIVALENCIA: TcxGridDBColumn;
    cxGrid11DBTableView1CANTEQUIVALENCA: TcxGridDBColumn;
    cxGrid11Level1: TcxGridLevel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    DsQinventarioEQ: TDataSource;
    cxGrid3DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    procedure cxGrid2DBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTFacturaClick(Sender: TObject);
    procedure nuevoproducto;
    procedure BtTurnosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton27Click(Sender: TObject);
    procedure cxGrid2DBTableView1EditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButton24Click(Sender: TObject);
    procedure opClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdminArticulos: TFrmAdminArticulos;

implementation

{$R *.dfm}

uses Unit5, Unit2, tools, UhistoricoProductos, Unit23, UActualizaCosto;


function Token(Sub: string; var S: string): string;
begin
  Result:= '';
  while Length(S)>0 do
  begin
    if AnsiSameText(Copy(S, 1, Length(Sub)), Sub) then
    begin
      Delete(S, 1, Length(Sub));
      break;
    end;
    Result:= Result + Copy(S,1,1);
    Delete(S,1,1);
  end;
end;

procedure TFrmAdminArticulos.BTFacturaClick(Sender: TObject);
begin

if FrmArticulos = nil then
   begin
     FrmArticulos := TFrmArticulos.Create(self);
     FrmArticulos.BtNuevo.Click;
    // FrmArticulos.LbModo.Caption        := 'Modo Insertar';
     FrmArticulos.Edit8.Text := 'ART';
    // FrmArticulos.cxbutton20.Enabled := False;

   //  nuevoproducto;
     frmarticulos.ShowModal;
   end;

end;

procedure TFrmAdminArticulos.BtTurnosClick(Sender: TObject);
begin




if FrmArticulos = nil then
   begin
             FrmArticulos := TFrmArticulos.Create(self);
              with datos.MantArt do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.signo, c.cat from mtartuculos a');
                  sql.Add('left join tb_moneda b On a.idmoneda = b.id');
                  sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
                  sql.Add('where a.cod_art =:oo');
                  params[0].Value := ibqRarticuloscod_art.value;
                  open;
                end;


                with datos.QInventarioEQ do
                    begin
                      close;
                      sql.Clear;
                      sql.Add('select * from sp_inventario(:op, :op2)');
                      params[0].Value := datos.MantArtCOD_ART.text;
                      params[1].Value := IbqRArticulosCOD_ART.Value;
                      open;
                    end;



                  FrmArticulos.Edit8.Text := 'ART';
                  FrmArticulos.Lblestado.Caption        := 'Edición de ';

           //   datos.FbCategorias.Open;
              FrmArticulos.Finventario;
              FrmArticulos.Edit1.Text := 'MOD';
             // FrmArticulos.cxbutton20.Enabled := true;
//              datos.Zunidad.Open;
//              FrmArticulos.Btcancelar.Enabled := true;
//              FrmArticulos.BTguardar.Enabled := true;
//              FrmArticulos.btmodi.Enabled := false;
//
//              datos.Control_Precio.Open;
//              DATOS.ZqProv_Arti.Open;


                   frmarticulos.ShowModal;


   end;
end;

procedure TFrmAdminArticulos.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

with almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;

  with datos.QInventarioEQ do
    begin
      close;
      sql.Clear;
      sql.Add('select * from sp_inventario(:op, :op3)');
      params[0].Value := IbqRArticulosCOD_ART.text;
      params[1].Value := IbqRArticulosCOD_ART.Value;
      open;
    end;

end;

procedure TFrmAdminArticulos.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.GridRecord.Values[9] ='Si') then BEGIN
    ACanvas.Brush.Color := $00E1FFF9;
    ACanvas.Font.Color := clBlack;
   end;
   if (AViewInfo.GridRecord.Values[9] <> 'Si') then BEGIN
    ACanvas.Brush.Color := $00FFEBDF;
    ACanvas.Font.Color := clBlack;
   END;
end;

procedure TFrmAdminArticulos.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
if IbqRArticulosOPCIONES_BOLA.Value = 'Si' then
  begin
          With QEquivalentes do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.* from mtartuculos a where a.CODEQUIVALENCIA =:opp ');
                 params[0].value := IbqRArticulosCOD_ART.Value;
                 open;
               end;

      GBequivalencia.Visible := true;
  end;

end;

procedure TFrmAdminArticulos.cxGrid2DBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  with almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;
end;


procedure TFrmAdminArticulos.cxGrid2DBTableView1EditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
with almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;
end;

procedure TFrmAdminArticulos.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
with almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;
end;

procedure TFrmAdminArticulos.cxGrid2DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
with almacenes1 do
  begin
    close;
    sql.Clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;
end;

procedure TFrmAdminArticulos.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
    begin
        if op.ItemIndex = 0 then
begin

with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo),a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.codigobarra ='+#39+cxTextEdit1.Text+#39);

    if tipo.ItemIndex = 0 then begin
       sql.Add('and a.politica =''Unitario''');
    end;

    if tipo.ItemIndex = 1 then begin
       sql.Add('and a.politica =''fraccional''');
    end;

     if tipo.ItemIndex = 2 then begin
       sql.Add('and a.politica =''oferta''');
    end;
    open;
  end;
end;
    end;
end;

procedure TFrmAdminArticulos.cxTextEdit1PropertiesChange(Sender: TObject);

var
T, ST, p1, p2, p3, p4  : string;
begin



if op.ItemIndex = 1 then
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo), a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
     sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');

     ST:= cxTextEdit1.Text;
                while Length(ST) >0 do BEGIN
                  p1 := token(' ',ST);
                  p2 := token(' ',ST);
                  p3 := token(' ',ST);
                  p4 := token(' ',ST);

                END;


                Params[0].Value := p1;
                Params[1].Value := p2;
                Params[2].Value := p3;
                Params[3].Value := p4;

                open;
    open;
  end;
end;
end;

procedure TFrmAdminArticulos.dxBarLargeButton24Click(Sender: TObject);
var
cero : string;
begin

if IbqRArticulosPOLITICA.Value ='oferta' then
   begin


if FrmCombo = nil then
  begin
    FrmCombo := tFrmCombo.Create(self);
     datos.ZCombo.Close;
     datos.ZCombo.Open;

          with datos.MantArt do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, c.signo from mtartuculos a');
                  sql.Add('left join tb_moneda c On a.idmoneda = c.id');
                  sql.Add('where a.cod_art =:oo');
                  params[0].Value := ibqRarticuloscod_art.value;
                  open;
                end;



            FrmCombo.LProducto.Caption := IbqRArticulosARTICULO.Text;
         //  FrmCombo.LCodigoBarra.Caption :=IbqRArticulosCODIGOBARRA.Text;
          // FrmCombo.LReferencia.Caption := IbqRArticulosREFERENCIA.Value;
           FrmCombo.lCODIGO.Caption      := IbqRArticulosCOD_ART.Text;

  FrmCombo.showmodal;

  end;
   end else begin

              MsgInformacion(' La politica de esta articulo es Oferta ')
            end;

end;

procedure TFrmAdminArticulos.dxBarLargeButton27Click(Sender: TObject);
begin

if FrmHistoricoMovmientoInventario = nil then
  begin
        FrmHistoricoMovmientoInventario := TFrmHistoricoMovmientoInventario.Create(self);
          with  FrmHistoricoMovmientoInventario.finvenatario do
            begin
              close;
              sql.Clear;
              sql.add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,a.entrada, a.salida from minventario a');
              sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
              sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
              sql.add('where a.cod_art =:opcion');
              sql.add('and a.cod_alm =:op');
               sql.Add('order by a.fecha');
           //   sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo');
              params[0].Value :=  IbqRArticulosCOD_ART.Value;
              params[1].Value :=  1;
              open;
            end;

           FrmHistoricoMovmientoInventario.LProducto.Caption := IbqRArticulosARTICULO.Text;
           FrmHistoricoMovmientoInventario.LCodigoBarra.Caption :=IbqRArticulosCODIGOBARRA.Text;
           FrmHistoricoMovmientoInventario.LReferencia.Caption := IbqRArticulosREFERENCIA.Value;
           FrmHistoricoMovmientoInventario.lCODIGO.Caption      := IbqRArticulosCOD_ART.Text;
           FrmHistoricoMovmientoInventario.QMovimientos.Open;
          FrmHistoricoMovmientoInventario.ShowModal;
      end;
end;

procedure TFrmAdminArticulos.dxBarLargeButton6Click(Sender: TObject);
begin
    with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo),a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
      open;
  end;
end;

procedure TFrmAdminArticulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FrmAdminArticulos := nil;
   Action := caFree;

end;

procedure TFrmAdminArticulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_f9 then
      begin
            FActualizaCosto.ShowModal;
      end;

 if key = VK_ESCAPE then
    begin
      GBequivalencia.Visible := false;
    end;

  if key= vk_f3 then
    begin

      with datos.MantArt do
         begin
           close;
           open;
           first;

           while not eof do
             begin
               FrmArticulos.imagendefault;

               next;
             end;


             datos.MantArt.ApplyUpdates;
             datos.Data.Commit;
         end;
    end;

end;

procedure TFrmAdminArticulos.FormShow(Sender: TObject);
begin
 IbqRArticulos.Close;
 IbqRArticulos.open;

end;

procedure TFrmAdminArticulos.nuevoproducto;
var
cero : string;
begin
try
FrmArticulos.op11.Enabled := true;
datos.FbCategorias.Open;
datos.MantArt.open;
datos.MantArt.Insert;
//datos.Zunidad.Open;
datos.Control_Precio.Open;
DATOS.ZqProv_Arti.open;
FrmArticulos.qcategoria.Open;
FrmArticulos.Edit5.Text := 'NUEV';
FrmArticulos.DBComboBox1.ItemIndex := 0;

with FrmArticulos.numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(arti_gen, 1) from RDB$DATABASE');
     open;
  end;


 with FrmArticulos.QExiste do
  begin
    close;
    sql.Clear;
    sql.Add('select cod_art from mtartuculos');
    sql.Add('where cod_art =:op');
    params[0].Value := FrmArticulos.numeroGEN_ID.Value;
    open;

  end;
             if FrmArticulos.QExiste.RecordCount > 0 then
                 begin
                       MsgInformacion(' Este codigo existe, ! valla a genaracion de codigo e intentelo de nuevo !,');
                       datos.MantArt.CancelUpdates;
datos.Data.Rollback;

if FrmArticulos.EDIT1.Text ='NUEVO' then
  BEGIN
//with FrmArticulos.numero do
//  begin
//     close;
//     sql.Clear;
//     sql.Add('select gen_id(arti_gen, -1) from RDB$DATABASE');
//     open;
//  end;
  END;
   FrmArticulos.EDIT1.Clear;
   FrmArticulos.EDIT5.Clear;

   //cxButton5.Enabled := true;
   FrmArticulos.BtGuardar.Enabled := false;
   FrmArticulos.BtCancelar.Enabled := false;

          FrmArticulos.op11.ActivePageIndex := 0;

    FrmArticulos.btmodi.Enabled := true;
   FrmArticulos.op11.Enabled := false;
   FrmArticulos.BTguardar.Enabled := false;
   FrmArticulos.BtCancelar.Enabled := false;
   FrmArticulos.btmodificar.Enabled := true;
   FrmArticulos.Btbuscar.Enabled := true;
   FrmArticulos.cxButton4.Visible := false;
     FrmArticulos.cxButton5.Visible := false;
     FrmArticulos.BtNuevo.Enabled := true;
     FrmArticulos.qcategoria.close;
      FrmArticulos.TabCompuesto.Enabled := false;
   //  FrmArticulos.TabFraccionado.Enabled := false;

   datos.MantArt.Close;
   datos.ZqProv_Arti.Close;
   FrmArticulos.edit6.Clear;
  // datos.Control_Precio.close;
  // cxgrid3.Visible := false;
   //cxgrid5.Visible := false;
   //DATOS.ZqProv_Arti.close;
 /// close;
                 end else begin


datos.MantArtCOD_ART.Value := FrmArticulos.numerogen_id.Value;

Datos.MantArtMODELO.Value := 'SI';
DATOS.MantArtMONEDA.Value := 'SI';
 datos.MantArtEXTFOTO.Value := 'JPG';
 datos.MantArtESTADOCONDICION.Value := 'NUEVO';
 DATOS.MantArtTIPOB.Value := 'TIENDA';
 datos.MantArtIDMONEDA.Value := 1;
 //datos.MantArtSIGNO.Value    := 'RD$';
 datos.MantArtCOMISION.Value := 0;
 datos.MantArtCONDICION.Value := 'Productos';

 if datos.ZUconfiguracionTerminal.Value = 'Pizzeria' then
   begin
      FrmArticulos.QClasificaciones.Open;
   end;


    if datos.MantArtCOD_ART.Value  >= 1 then
        begin
          cero := '0000000';
     end;

     if datos.MantArtCOD_ART.Value  >= 10 then
        begin
           cero := '000000';
     end;

     if datos.MantArtCOD_ART.Value  >= 100 then
        begin
           cero := '00000';
     end;

     if datos.MantArtCOD_ART.Value >= 1000 then
        begin
           cero := '0000';
     end;

     if datos.MantArtCOD_ART.Value >= 10000 then
        begin
           cero := '000';
     end;

     if datos.MantArtCOD_ART.Value >= 100000 then
        begin
           cero := '00';
     end;

     if datos.MantArtCOD_ART.Value >= 1000000 then
        begin
           cero := '0';
     end;

     if datos.MantArtCOD_ART.Value >= 10000000 then
        begin
           cero := '';
     end;


     datos.MantArtCODIGOTXT.Value := cero+intTostr(datos.MantArtCOD_ART.Value);
     FrmArticulos.edit6.Text := datos.MantArtCODIGOTXT.Value;
     datos.MantArtCODIGOBARRA.Value := datos.MantArtCODIGOTXT.Value;
     FrmArticulos.Edit1.Text := 'NUEVO';
     datos.MantArtITBIS.Value := 'No';
     DATOS.MantArtOPCION_SABOR.Value := 'NO';
     datos.MantArtOPCIONES_BOLA.Value := 'NO';
     datos.MantArtPOLITICA.Value := 'Unitario';
     datos.MantArtCONDICION.Value :='Productos';

   //  cxDBRadioGroup1.ItemIndex := 0;
     datos.MantArtTAZA_COMPRA.Value := 0.00;
   //  FrmArticulos.cxDBComboBox2.ItemIndex := 0;

  /// FrmArticulos.cxDBRadioGroup1.ItemIndex := 1;
                 datos.MantArtCOSTO.Value       := 0.00;
                 datos.MantArtCOSTO_PR.Value    := 0.00;
                 DATOS.MantArtEMPAQUE.Value     := 1;
                 datos.MantArtCANT_EMPA.value   := 1.00;
                 datos.MantArtCOLOR.value       := 'Activo';
     //cxButton5.Enabled := false;
                FrmArticulos.Btguardar.Enabled := true;
                FrmArticulos.Btcancelar.Enabled := true;
                FrmArticulos.btmodi.Enabled := false;
               
                FrmArticulos.btmodificar.Enabled := false;
                FrmArticulos.Btbuscar.Enabled := false;
                FrmArticulos.Btnuevo.Enabled := false;

                FrmArticulos.OPproductos.ItemIndex := 0;
               // RxDBComboBox3.ItemIndex := 1;

     DATOS.ZqProv_Arti.Open;

       end;
except

end;


end;

procedure TFrmAdminArticulos.opClick(Sender: TObject);
begin
cxTextEdit1.SetFocus;
end;

end.
