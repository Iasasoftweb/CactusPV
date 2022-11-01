unit UFindArticulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, cxGroupBox, cxRadioGroup, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  ZAbstractRODataset, ZDataset, dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.Menus, cxButtons,
  acPNG, Vcl.Buttons, cxCheckBox;

type
  TFrmFindArticulos = class(TForm)
    PageArticulos: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    s: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1MARCA: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1MODELO: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid9: TcxGrid;
    cxGrid9DBTableView1: TcxGridDBTableView;
    cxGrid9DBTableView1NOORDEN: TcxGridDBColumn;
    cxGrid9DBTableView1FECHA_ENTRADA: TcxGridDBColumn;
    cxGrid9DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid9DBTableView1NO_SERIAL: TcxGridDBColumn;
    cxGrid9DBTableView1TIPOEQUIPO: TcxGridDBColumn;
    cxGrid9DBTableView1OBSERVACIONEQUIPO: TcxGridDBColumn;
    cxGrid9DBTableView1MONTO: TcxGridDBColumn;
    cxGrid9Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxRadioGroup3: TcxRadioGroup;
    optipo: TcxRadioGroup;
    cxGrid6: TcxGrid;
    cxGrid6DBTableView1: TcxGridDBTableView;
    cxGrid6DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid6DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid6Level1: TcxGridLevel;
    DsqArticulos: TDataSource;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosUNIDAD: TWideStringField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosBENEFICIOS: TFloatField;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosOBS: TIntegerField;
    IbqRArticulosCOMISION: TFloatField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    DsAlmacenes01: TDataSource;
    Almacenes1: TZReadOnlyQuery;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    Edit1: TEdit;
    IbqRArticulosPRECIO_C: TFloatField;
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
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    DsQinventarioEQ: TDataSource;
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
    Panel7: TPanel;
    SpeedButton1: TSpeedButton;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    Edit19: TEdit;
    IbqRArticulosUNIDADVENTA: TWideStringField;
    IbqRArticulosSERIE: TWideStringField;
    IbqRArticulosLOTE: TWideStringField;
    IbqRArticulosPERMITIRDESC: TWideStringField;
    IbqRArticulosIDIMPUESTO: TIntegerField;
    IbqRArticulosDESCPERMITIDO: TIntegerField;
    procedure optipoClick(Sender: TObject);
    procedure Edit19Change(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure Edit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
  private
    { Private declarations }
    procedure add;
  public
    { Public declarations }
  end;

var
  FrmFindArticulos: TFrmFindArticulos;

implementation

{$R *.dfm}

uses tools, Unit5, Unit59, Unit2;

function Token(Sub: string; var s: string): string;
begin
  Result := '';
  while Length(s) > 0 do
  begin
    if AnsiSameText(Copy(s, 1, Length(Sub)), Sub) then
    begin
      Delete(s, 1, Length(Sub));
      break;
    end;
    Result := Result + Copy(s, 1, 1);
    Delete(s, 1, 1);
  end;
end;

function GetToken(Cadena, Separador: String; Token: Integer): String;
overload
var
  Posicion: Integer;
begin
  while Token > 1 do
  begin
    Delete(Cadena, 1, Pos(Separador, Cadena) + Length(Separador) - 1);
    Dec(Token);
  end;
  Posicion := Pos(Separador, Cadena);
  if Posicion = 0 then
    Result := Cadena
  else
    Result := Copy(Cadena, 1, Posicion - Length(Separador));
end;

function GetTokenCount(Cadena: string; Separador: char): Integer; overload;
var
  Posicion: Integer;
begin
  Posicion := Pos(Separador, Cadena);
  Result := 1;

  if Cadena <> '' then
  begin
    if Posicion <> 0 then
    begin
      while Posicion <> 0 do
      begin
        Delete(Cadena, 1, Posicion);
        Posicion := Pos(Separador, Cadena);
        Inc(Result);
      end;
    end;
  end
  else
    Result := 0;
end;

procedure TFrmFindArticulos.add;
var
  SeparadaPorComas: string;
  n: Integer;
  CANTV: STRING;
  CODIGOV: STRING;
  codoriginal: string;
  cantoriginal: string;
begin

  FactExistencia := 0.00;
  FactExistencia2 := 0.00;

  SeparadaPorComas := FrmNFact_normal.BARRA.Text;

  FrmNFact_normal.PanelLTOP.Enabled := true;
  //
  for n := 1 to GetTokenCount(SeparadaPorComas, '+') do
  begin
    if n = 1 then
    begin
      CANTV := GetToken(SeparadaPorComas, '+', n);
    end;

    if n = 2 then
    begin
      CODIGOV := GetToken(SeparadaPorComas, '+', n);
    end;

  end;

  if CODIGOV = '' then
  begin
    codoriginal := CANTV;
    cantoriginal := '1';
  end;

  if CODIGOV <> '' then
  begin
    codoriginal := CODIGOV;
    cantoriginal := CANTV;
  end;

  if CANTV = '' then
  begin
    cantoriginal := '1';
  end;

  with Almacenes1 do
  begin
    CLOSE;
    sql.Clear;
    sql.add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.add('left join almacenes c On a.cod_alm = c.id');
    sql.add('and b.politica <> ''Servicio''');
    sql.add('where a.cod_art =:opp');
    sql.add('and a.cod_alm =1');
    sql.add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');

    params[0].Value := IbqRArticulosCOD_ART.Value;

    open;

  end;

  with datos.QInventarioEQ do
  begin
    CLOSE;
    sql.Clear;
    sql.add('select * from sp_inventario(:op, :op2, 1)');
    params[0].Value := IbqRArticulosCOD_ART.Text;
    params[1].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;

  if (Almacenes1EXISTENCIA.Value > 0) then
  begin
    FactExistencia := Almacenes1EXISTENCIA.Value;

  end;

  if datos.QInventarioEQEXISTENCIA.Value > 0 then
  begin
    FactExistencia2 := datos.QInventarioEQEXISTENCIA.Value;
  end;

  if datos.ZUconfiguracionEXISTENCIAFACT.Value = 1 then
  begin

    if (FactExistencia > 0) or (FactExistencia2 > 0) then
    begin


      if (FactExistencia > 0) and (FactExistencia <= 1.00) then
         begin
               cantoriginal := FloatTOStr(FactExistencia2);
         end else begin
                      cantoriginal := '1';
                  end;

      if (FactExistencia2 > 0) and (FactExistencia2 <=1) then
         begin
               cantoriginal := FloatTOStr(FactExistencia2);
        end else begin
                      cantoriginal := '1';
                  end;

      FrmNFact_normal.edit11.Text := '1';
      FrmNFact_normal.edtPorcentDesc.Text :=
        FloatToStr(IbqRArticulosDESCPERMITIDO.Value);
      FrmNFact_normal.t1.Text := IbqRArticulosCODIGOTXT.Value;
      FrmNFact_normal.t2.Text := IbqRArticulosARTICULO.Value;
      FrmNFact_normal.EditCat.Text := IbqRArticulosCOD_CAT.Text;
      FrmNFact_normal.Descc_t.Text := IbqRArticulosCOMISION.Text;

      FrmNFact_normal.edit14.Text := FloatToStr(IbqRArticulosTAZA_COMPRA.Value);

      FrmNFact_normal.edtPorcentDesc.Text :=
        FloatToStr(IbqRArticulosDESCPERMITIDO.Value);
      FrmNFact_normal.edtITBAplicado.Text :=
        FloatToStr(IbqRArticulosTAZA_COMPRA.Value);

      if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value <> 1 then
      begin
        if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 1' then
        BEGIN
          FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_A.Value;
        END;

        if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 2' then
        BEGIN
          FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_B.Value;
        END;

        if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 3' then
        BEGIN
          FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_D.Value;
        END;
      end
      else
      begin
        FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_C.Value;
      end;
      //

      FrmNFact_normal.lunidad.Text := IbqRArticulosUNIDADVENTA.Value;
      FrmNFact_normal.t3.Text := cantoriginal;

      FrmNFact_normal.linea.Text := 'ART';

      if IbqRArticulosPOLITICA.Value = 'Unitario' then
      begin

        FrmNFact_normal.topcion.Text := 'UNI';
      end;

      if IbqRArticulosPOLITICA.Value = 'oferta' then
      begin
        FrmNFact_normal.topcion.Text := 'OFE';
      end;

      if IbqRArticulosPOLITICA.Value = 'servicio' then
      begin
        FrmNFact_normal.topcion.Text := 'SER';
      end;

      if IbqRArticulosPOLITICA.Value = 'fraccional' then
      begin

        FrmNFact_normal.topcion.Text := 'FRA';
      end;

      FrmNFact_normal.cxbutton9.Click;
      datos.FbCategorias.CLOSE;
      // FrmNFact_normal.buscararticulos.Visible := false;

      if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
      begin
        FrmNFact_normal.BARRA.SetFocus;
        FrmNFact_normal.BARRA.Clear;
        Edit19.Clear;
      end
      else
      begin
        FrmNFact_normal.barra1.Clear;
        FrmNFact_normal.barra1.SetFocus;
        // edit19.Clear;
      end;
      IbqRArticulos.CLOSE;

    end
    else if datos.QInventarioEQEXISTENCIA.Value <= 0 then
    begin
      MsgInformacion(' Este producto no tiene existencia ')

    end;

  end
  else
  begin

    FrmNFact_normal.edit11.Text := '1.00';

    FrmNFact_normal.t1.Text := IbqRArticulosCODIGOTXT.Value;
    FrmNFact_normal.t2.Text := IbqRArticulosARTICULO.Value;
    FrmNFact_normal.edtPorcentDesc.Text :=
      FloatToStr(IbqRArticulosDESCPERMITIDO.Value);
    FrmNFact_normal.Descc_t.Text := IbqRArticulosCOMISION.Text;
    FrmNFact_normal.EditCat.Text := IbqRArticulosCOD_CAT.Text;
    FrmNFact_normal.edit14.Text := FloatToStr(IbqRArticulosTAZA_COMPRA.Value);
    FrmNFact_normal.edtPorcentDesc.Text :=
      FloatToStr(IbqRArticulosDESCPERMITIDO.Value);
    FrmNFact_normal.edtITBAplicado.Text :=
      FloatToStr(IbqRArticulosTAZA_COMPRA.Value);

    if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value <> 1 then
    begin

      if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 1' then
      BEGIN
        FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_A.Value;
      END;

      if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 2' then
      BEGIN
        FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_B.Value;
      END;

      if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 3' then
      BEGIN
        FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_D.Value;
      END;
    end
    else
    begin
      FrmNFact_normal.t4.Value := IbqRArticulosPRECIO_C.Value;
    end;
    //

    FrmNFact_normal.lunidad.Text := IbqRArticulosUNIDADVENTA.Value;
    FrmNFact_normal.t3.Text := cantoriginal;

    FrmNFact_normal.linea.Text := 'ART';

    if IbqRArticulosPOLITICA.Value = 'Unitario' then
    begin
      FrmNFact_normal.topcion.Text := 'UNI';
    end;

    if IbqRArticulosPOLITICA.Value = 'servicio' then
    begin
      FrmNFact_normal.topcion.Text := 'SER';
    end;

    if IbqRArticulosPOLITICA.Value = 'oferta' then
    begin
      FrmNFact_normal.topcion.Text := 'OFE';
    end;

    if IbqRArticulosPOLITICA.Value = 'fraccional' then
    begin

      FrmNFact_normal.topcion.Text := 'FRA';
    end;

    FrmNFact_normal.cxbutton9.Click;
    datos.FbCategorias.CLOSE;
    // FrmNFact_normal.buscararticulos.Visible := false;

    if datos.ZUconfiguracionPISTOLAOPTICA.Value = 1 then
    begin
      FrmNFact_normal.BARRA.SetFocus;
      FrmNFact_normal.BARRA.Clear;
      Edit19.Clear;
    end
    else
    begin
      FrmNFact_normal.barra1.Clear;
      FrmNFact_normal.barra1.SetFocus;
      // edit19.Clear;
    end;

    IbqRArticulos.CLOSE;
  end;

  CLOSE;
end;

procedure TFrmFindArticulos.btnsalirClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TFrmFindArticulos.cxButton2Click(Sender: TObject);
begin
  if FrmArticulos = nil then
  begin
    FrmArticulos := TFrmArticulos.Create(self);
    FrmArticulos.BtNuevo.Click;
    FrmArticulos.Edit8.Text := 'ART';
    // nuevoproducto;
    FrmArticulos.ShowModal;
  end;
end;

procedure TFrmFindArticulos.cxGrid2DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  with Almacenes1 do
  begin
    CLOSE;
    sql.Clear;
    sql.add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.add('left join almacenes c On a.cod_alm = c.id');
    sql.add('where b.politica <> ''Servicio''');
    sql.add('and a.cod_art =:opp');
    sql.add('and a.cod_alm =1');

    sql.add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');

    params[0].Value := IbqRArticulosCOD_ART.Value;

    open;

  end;

  with datos.QInventarioEQ do
  begin
    CLOSE;
    sql.Clear;
    sql.add('select * from sp_inventario(:op, :op2, 1)');
    params[0].Value := IbqRArticulosCOD_ART.Text;
    params[1].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;
end;

procedure TFrmFindArticulos.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

  add;
end;

procedure TFrmFindArticulos.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_UP then
  begin

    with Almacenes1 do
    begin
      CLOSE;
      sql.Clear;
      sql.add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
      sql.add('left join mtartuculos b  On a.cod_art = b.cod_art');
      sql.add('left join almacenes c On a.cod_alm = c.id');
      sql.add('where b.politica <> ''Servicio''');
      sql.add('and a.cod_art =:opp');
      sql.add('and a.cod_alm = 1');

      sql.add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
      params[0].Value := IbqRArticulosCOD_ART.Value;
      open;
    end;

      with datos.QInventarioEQ do
          begin
            CLOSE;
            sql.Clear;
            sql.add('select * from sp_inventario(:op, :op2, 1)');
            params[0].Value := IbqRArticulosCOD_ART.Text;
            params[1].Value := IbqRArticulosCOD_ART.Value;
            open;
          end;
  end;

  if Key = VK_down then
  begin

    with Almacenes1 do
    begin
      CLOSE;
      sql.Clear;
      sql.add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
      sql.add('left join mtartuculos b  On a.cod_art = b.cod_art');
      sql.add('left join almacenes c On a.cod_alm = c.id');
      sql.add('where b.politica <> ''Servicio''');
      sql.add('and a.cod_art =:opp');
      sql.add('and a.cod_alm = 1');
      sql.add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
      params[0].Value := IbqRArticulosCOD_ART.Value;
      open;
    end;

      with datos.QInventarioEQ do
          begin
            CLOSE;
            sql.Clear;
            sql.add('select * from sp_inventario(:op, :op2, 1)');
            params[0].Value := IbqRArticulosCOD_ART.Text;
            params[1].Value := IbqRArticulosCOD_ART.Value;
            open;
          end;
  end;

  if Key = VK_RETURN then
  begin
    FactExistencia := 0.00;
    FactExistencia2 := 0.00;

    add;
  end;
end;

procedure TFrmFindArticulos.cxGrid2DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  with Almacenes1 do
  begin
    CLOSE;
    sql.Clear;
    sql.add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.add('left join almacenes c On a.cod_alm = c.id');
    sql.add('where b.politica <> ''Servicio''');
    sql.add('and a.cod_art =:opp');
    sql.add('and a.cod_alm = 1');
    sql.add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;

   with datos.QInventarioEQ do
          begin
            CLOSE;
            sql.Clear;
            sql.add('select * from sp_inventario(:op, :op2, 1)');
            params[0].Value := IbqRArticulosCOD_ART.Text;
            params[1].Value := IbqRArticulosCOD_ART.Value;
            open;
          end;
end;

procedure TFrmFindArticulos.Edit19Change(Sender: TObject);
VAR
  codoriginal: string;
  BuscarSerie: String;
  CANTV: String;
  n: Integer;
  T, ST, p1, p2, p3, p4: string;
begin
  FrmNFact_normal.txtMayor.Text := 'NO';
  if PageArticulos.ActivePageIndex = 0 then
  begin

    if optipo.ItemIndex = 0 then
    begin

      codoriginal := Edit19.Text;

      with IbqRArticulos do
      begin
        CLOSE;
        sql.Clear;
        sql.add('select a.unidad,a.precio_a,a.codigobarra, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
        sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
        // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
        // sql.Add('OR a.CONDICION_EMPENO IS NULL');
        // sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
        sql.add('group by a.unidad,a.precio_a, a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
        sql.add('a.codigotxt,a.itbis,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.codigobarra, a.comision, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
        sql.add(' a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');

        ST := Edit19.Text;
        while Length(ST) > 0 do
        BEGIN
          p1 := Token(' ', ST);
          p2 := Token(' ', ST);
          p3 := Token(' ', ST);
          p4 := Token(' ', ST);

        END;

        params[0].Value := p1;
        params[1].Value := p2;
        params[2].Value := p3;
        params[3].Value := p4;

        open;
      end;

    end;

    if optipo.ItemIndex = 1 then
    begin
      codoriginal := Edit19.Text;
      with IbqRArticulos do
      begin
        CLOSE;
        sql.Clear;
        sql.add('select a.unidad,a.precio_a, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
        sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.add('where a.referencia like ' + #39 + '%' + codoriginal +
          '%' + #39);
        // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
        // sql.Add('OR a.CONDICION_EMPENO IS NULL');

        sql.add('group by a.unidad,a.precio_a, precio_c, a.precio_b,a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
        sql.add('a.codigotxt,a.itbis,a.taza_compra,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.comision, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
        open;
      end;

    end;

    if optipo.ItemIndex = 2 then
    begin
      codoriginal := Edit19.Text;
      with IbqRArticulos do
      begin
        CLOSE;
        sql.Clear;
        sql.add('select a.unidad,a.precio_a, precio_c, a.comision,a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
        sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.add('where a.codigobarra like ' + #39 + '%' + Edit19.Text +
          '%' + #39);
        // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
        // sql.Add('OR a.CONDICION_EMPENO IS NULL');
        sql.add('group by a.unidad,a.precio_a, precio_c, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
        sql.add('a.codigotxt,a.itbis,a.taza_compra,a.comision,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
        open;
      end;

    end;
  end;

end;

procedure TFrmFindArticulos.Edit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    s.SetFocus;
  end;
end;

procedure TFrmFindArticulos.Edit9Change(Sender: TObject);
VAR
  codoriginal: string;
  BuscarSerie: String;
  CANTV: String;
  n: Integer;
  T, ST, p1, p2, p3, p4: string;
begin
  FrmNFact_normal.txtMayor.Text := 'NO';
  if PageArticulos.ActivePageIndex = 0 then
  begin

    if optipo.ItemIndex = 0 then
    begin

      codoriginal := Edit19.Text;

      with IbqRArticulos do
      begin
        CLOSE;
        sql.Clear;
        sql.add('select a.unidad,a.precio_a,a.codigobarra, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
        sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
        // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
        // sql.Add('OR a.CONDICION_EMPENO IS NULL');
        // sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
        sql.add('group by a.unidad,a.precio_a, a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
        sql.add('a.codigotxt,a.itbis,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.codigobarra, a.comision, a.costo_pr, a.beneficios,');
        sql.add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');

        ST := Edit19.Text;
        while Length(ST) > 0 do
        BEGIN
          p1 := Token(' ', ST);
          p2 := Token(' ', ST);
          p3 := Token(' ', ST);
          p4 := Token(' ', ST);

        END;

        params[0].Value := p1;
        params[1].Value := p2;
        params[2].Value := p3;
        params[3].Value := p4;

        open;
      end;

    end;

    if optipo.ItemIndex = 1 then
    begin
      codoriginal := Edit19.Text;
      with IbqRArticulos do
      begin
        CLOSE;
        sql.Clear;
        sql.add('select a.unidad,a.precio_a, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
        sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.add('where a.referencia like ' + #39 + '%' + codoriginal +
          '%' + #39);
        // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
        // sql.Add('OR a.CONDICION_EMPENO IS NULL');

        sql.add('group by a.unidad,a.precio_a, precio_c, a.precio_b,a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
        sql.add('a.codigotxt,a.itbis,a.taza_compra,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.comision, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
        open;
      end;

    end;

    if optipo.ItemIndex = 2 then
    begin
      codoriginal := Edit19.Text;
      with IbqRArticulos do
      begin
        CLOSE;
        sql.Clear;
        sql.add('select a.unidad,a.precio_a, precio_c, a.comision,a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
        sql.add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
        sql.add('where a.codigobarra like ' + #39 + '%' + Edit19.Text +
          '%' + #39);
        // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
        // sql.Add('OR a.CONDICION_EMPENO IS NULL');
        sql.add('group by a.unidad,a.precio_a, precio_c, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
        sql.add('a.codigotxt,a.itbis,a.taza_compra,a.comision,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
        open;
      end;

    end;
  end;

end;

procedure TFrmFindArticulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    CLOSE;
  end;
end;

procedure TFrmFindArticulos.FormShow(Sender: TObject);
begin

  if IbqRArticulos.Active = false then
  begin

    with IbqRArticulos do
    begin
      CLOSE;
      sql.Clear;
      sql.add('select FIRST 25 a.unidad, precio_c, a.costo_pr, a.codigobarra,a.comision,a.referencia, a.ubicacion, a.beneficios,a.precio_a, a.precio_b, a.precio_d, a.codigobarra, a.obs,');
      sql.add('a.cod_art,upper(a.articulo) articulo, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.TIENECOMPACTIBILIDAD,');
      sql.add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
      sql.add('where a.condicion =:opp');

      sql.add('group by a.unidad,a.precio_a, precio_c, a.comision,a.precio_b, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,');
      sql.add('a.marca,a.codigotxt,a.itbis,a.codigobarra, a.taza_compra,a.costo_pr, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3,  a.referencia,a.ubicacion, a.obs');
      params[0].Value := 'Productos';
      open;
    end;

    DsqArticulos.DataSet := IbqRArticulos;
  end;

  s.SetFocus;

  // FrmFinanciamiento.IbqRArticulos.close;

  Edit19.SetFocus;
end;

procedure TFrmFindArticulos.optipoClick(Sender: TObject);
begin
  if optipo.ItemIndex = 0 then
  begin
    Edit19.SetFocus;
  end;
  if optipo.ItemIndex = 1 then
  begin
    Edit19.SetFocus;
  end;
  if optipo.ItemIndex = 2 then
  begin
    Edit19.SetFocus;
  end;
end;

procedure TFrmFindArticulos.SpeedButton1Click(Sender: TObject);
begin

  if FrmArticulos = nil then
  begin
    FrmArticulos := TFrmArticulos.Create(self);
    FrmArticulos.BtNuevo.Click;
    FrmArticulos.Edit8.Text := 'ART';
    // nuevoproducto;
    FrmArticulos.ShowModal;
  end;
end;

end.
