unit uBuscarArticulosMayor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, Vcl.StdCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, acPNG, Vcl.Menus, cxButtons,
  ZAbstractRODataset, ZDataset;

type
  TFFindArticulosMayor = class(TForm)
    Panel1: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    Label60: TLabel;
    cxImage3: TcxImage;
    Edit1: TEdit;
    Image1: TImage;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxButton1: TcxButton;
    IbqRArticulos: TZReadOnlyQuery;
    DsQArticulos: TDataSource;
    Almacenes1: TZReadOnlyQuery;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCOLOR: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosCOD_SERIE: TIntegerField;
    IbqRArticulosCOD_ALM: TIntegerField;
    IbqRArticulosCOSTO: TFloatField;
    IbqRArticulosCOD_PROV1: TIntegerField;
    IbqRArticulosEXISTENCIA1: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosABREVIADO: TWideStringField;
    IbqRArticulosCOD_BARRA: TWideStringField;
    IbqRArticulosCOD_UV: TIntegerField;
    IbqRArticulosUSUARIOMOD: TIntegerField;
    IbqRArticulosFECHA_MOD: TDateField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosIMAGEN: TBlobField;
    IbqRArticulosCLA_COSTO: TWideStringField;
    IbqRArticulosCLA_PRECIO: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosESTADO: TIntegerField;
    IbqRArticulosEXTFOTO: TWideStringField;
    IbqRArticulosDESCRIPCIONWEB: TWideMemoField;
    IbqRArticulosPUBLICARWEB: TIntegerField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    IbqRArticulosEMPAQUE: TIntegerField;
    IbqRArticulosCANT_EMPA: TFloatField;
    IbqRArticulosCOD_PROV2: TIntegerField;
    IbqRArticulosCOD_PROV3: TIntegerField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosOPCION_SABOR: TWideStringField;
    IbqRArticulosSTOCK_MA: TFloatField;
    IbqRArticulosSTOCK_M: TFloatField;
    IbqRArticulosFACTOR: TFloatField;
    IbqRArticulosTIPO_PRODUCTOS: TWideStringField;
    IbqRArticulosFACTURABLE: TIntegerField;
    IbqRArticulosSTOCK: TFloatField;
    IbqRArticulosOPCIONES_BOLA: TWideStringField;
    IbqRArticulosPARTICIONADO: TWideStringField;
    IbqRArticulosCOMPUESTO: TWideStringField;
    IbqRArticulosBENEFICIOS: TFloatField;
    IbqRArticulosMONEDA: TWideStringField;
    IbqRArticulosUNIDAD: TWideStringField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosFECHA_COMPRA: TDateField;
    IbqRArticulosINTERES_ACUMULADO: TFloatField;
    IbqRArticulosALMACEN: TIntegerField;
    IbqRArticulosPERCIO_COPA: TFloatField;
    IbqRArticulosCOMISION: TFloatField;
    IbqRArticulosARTICULOS_OMO: TWideStringField;
    IbqRArticulosCODIGOUNICO: TWideStringField;
    IbqRArticulosEMPRESA: TWideStringField;
    IbqRArticulosCONDICION: TWideStringField;
    IbqRArticulosUTILIDAD2: TFloatField;
    IbqRArticulosUTILIDAD3: TFloatField;
    IbqRArticulosPRECIO_BRUTO1: TFloatField;
    IbqRArticulosPRECIO_BRUTO2: TFloatField;
    IbqRArticulosPRECIO_BRUTO3: TFloatField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosDESCRIPCION: TWideMemoField;
    IbqRArticulosCOSTOPROMENO: TFloatField;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosCOMPACTIBLECON: TIntegerField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosOBS: TIntegerField;
    IbqRArticulosTIPOB: TWideStringField;
    IbqRArticulosESTADOCONDICION: TWideStringField;
    IbqRArticulosIDMONEDA: TIntegerField;
    IbqRArticulosCOSTO_DOLLARS: TFloatField;
    IbqRArticulosCODEQUIVALENCIA: TWideStringField;
    IbqRArticulosDESC_EQUIVALENCIA: TWideStringField;
    IbqRArticulosCANTEQUIVALENCA: TFloatField;
    IbqRArticulosPRE1: TFloatField;
    IbqRArticulosPRE2: TFloatField;
    IbqRArticulosPRE3: TFloatField;
    IbqRArticulosCOSP: TFloatField;
    IbqRArticulosCOST: TFloatField;
    IbqRArticulosPRECIO_C: TFloatField;
    IbqRArticulosUTILIDAD4: TFloatField;
    IbqRArticulosMAYOREO4: TFloatField;
    IbqRArticulosPRECIO_BRUTO4: TFloatField;
    IbqRArticulosUTILIDADSOBREITBS: TWideStringField;
    IbqRArticulosAPLICARPORMAYOR: TWideStringField;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOBARRA: TcxGridDBColumn;
    cxGrid1DBTableView1OPCIONES_BOLA: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRE1: TcxGridDBColumn;
    cxGrid1DBTableView1PRE3: TcxGridDBColumn;
    Label1: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private

    { Private declarations }
  public

    procedure add;
    { Public declarations }
  end;

var
  FFindArticulosMayor: TFFindArticulosMayor;

implementation

uses
  Unit2, Unit5, Unit59, tools;

{$R *.dfm}

function Token(Sub: string; var S: string): string;
begin
  Result := '';
  while Length(S) > 0 do
  begin
    if AnsiSameText(Copy(S, 1, Length(Sub)), Sub) then
    begin
      Delete(S, 1, Length(Sub));
      break;
    end;
    Result := Result + Copy(S, 1, 1);
    Delete(S, 1, 1);
  end;
end;

procedure TFFindArticulosMayor.add;
var
  SeparadaPorComas: string;
  n: integer;
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
  // for n:=1 to GetTokenCount(SeparadaPorComas,'+') do
  // begin
  // if n=1 then
  // begin
  // cantv := GetToken(SeparadaPorComas,'+',n);
  // end;
  //
  // if n=2 then
  // begin
  // codigov := GetToken(SeparadaPorComas,'+',n);
  // end;
  //
  // end;

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

      // edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
      FrmNFact_normal.edit11.Text := '1.00';

      FrmNFact_normal.t1.Text := IbqRArticulosCODIGOTXT.Value;
      FrmNFact_normal.t2.Text := IbqRArticulosARTICULO.Value;
      FrmNFact_normal.EditCat.Text := IbqRArticulosCOD_CAT.Text;
      FrmNFact_normal.Descc_t.Text := IbqRArticulosCOMISION.Text;

      FrmNFact_normal.edit14.Text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);

      if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value <> 1 then
      begin
        if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 1' then
        BEGIN
          FrmNFact_normal.t4.Value := IbqRArticulosPRE1.Value;
        END;

        if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 2' then
        BEGIN
          FrmNFact_normal.t4.Value := IbqRArticulosPRE1.Value;
        END;

        if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 3' then
        BEGIN
          FrmNFact_normal.t4.Value := IbqRArticulosPRE1.Value;
        END;

      end
      else
      begin
        FrmNFact_normal.t4.Value := IbqRArticulosPRE1.Value;
      end;
      //
      FrmNFact_normal.lunidad.Text := IbqRArticulosUNIDAD.Value;
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
        Edit1.Clear;
      end
      else
      begin
        FrmNFact_normal.barra1.Clear;
        FrmNFact_normal.barra1.SetFocus;
        // edit19.Clear;
      end;
      IbqRArticulos.CLOSE;

    end
    else if Almacenes1EXISTENCIA.Value <= 0 then
    begin
      MsgInformacion(' Este producto no tiene existencia ')

    end;

  end
  else
  begin

    FrmNFact_normal.edit11.Text := '1.00';

    FrmNFact_normal.t1.Text := IbqRArticulosCODIGOTXT.Value;
    FrmNFact_normal.t2.Text := IbqRArticulosARTICULO.Value;

    FrmNFact_normal.Descc_t.Text := IbqRArticulosCOMISION.Text;
    FrmNFact_normal.EditCat.Text := IbqRArticulosCOD_CAT.Text;
    FrmNFact_normal.edit14.Text := floatToStr(IbqRArticulosTAZA_COMPRA.Value);

    if datos.FbqMaster_FactNO_AUTORIZA_NCF.Value <> 1 then
    begin

      if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 1' then
      BEGIN
        FrmNFact_normal.t4.Value := IbqRArticulosPRE1.Value;
      END;

      if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 2' then
      BEGIN
        FrmNFact_normal.t4.Value := IbqRArticulosPRE1.Value;
      END;

      if FrmNFact_normal.ibqclientescolor.Value = 'PRECIO 3' then
      BEGIN
        FrmNFact_normal.t4.Value := IbqRArticulosPRE1.Value;
      END;
    end
    else
    begin
      FrmNFact_normal.t4.Value := IbqRArticulosPRE1.Value;
    end;
    //

    FrmNFact_normal.lunidad.Text := IbqRArticulosUNIDAD.Value;
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
      Edit1.Clear;
    end
    else
    begin
      FrmNFact_normal.barra1.Clear;
      FrmNFact_normal.barra1.SetFocus;
      // edit19.Clear;
    end;
    IbqRArticulos.CLOSE;

  end;

  // FrmNFact_normal.Panel11.Color := clMaroon;
  // FrmNFact_normal.LbModo.Font.Color := clWhite;
  // FrmNFact_normal.lbRotulo.Font.Color := clWhite;
  // FrmNFact_normal.LbModo.Caption := 'Modo Venta al Por Mayor';
  FrmNFact_normal.txtMayor.Text := 'SI';

  CLOSE;

end;

procedure TFFindArticulosMayor.cxButton1Click(Sender: TObject);
begin
  add;
end;

procedure TFFindArticulosMayor.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  add;
end;

procedure TFFindArticulosMayor.Edit1Change(Sender: TObject);
var
  T, ST, p1, p2, p3, p4: string;
begin

  with IbqRArticulos do
  begin
    CLOSE;
    sql.Clear;
    sql.add('select upper(a.articulo), a.* from mtartuculos a');
    sql.add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
    sql.add('and a.aplicarpormayor = ''Si''');
    ST := Edit1.Text;
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
    open;
  end;

end;

procedure TFFindArticulosMayor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FFindArticulosMayor := nil;
  Action := caFree;
end;

procedure TFFindArticulosMayor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    CLOSE;
  end;
end;

procedure TFFindArticulosMayor.FormShow(Sender: TObject);
begin
  with IbqRArticulos do
  begin
    CLOSE;
    sql.Clear;
    sql.add('select upper(a.articulo), a.* from mtartuculos a');
    sql.add('Where a.aplicarpormayor = ''Si''');
    open;
  end;

  Edit1.SetFocus;
end;

end.
