unit Unit26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, Data.DB,
  ZAbstractRODataset, ZDataset, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, cxGroupBox, cxRadioGroup, cxLabel,
  cxTextEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, ZAbstractDataset,
  dxGDIPlusClasses, Vcl.ExtCtrls, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier,
  acPNG, Vcl.Buttons;

type
  TFrmBuscarArticulos = class(TForm)
    DsExistencia: TDataSource;
    DsqArticulos: TDataSource;
    ZqCombos: TZReadOnlyQuery;
    ZqCombosCOMBOMASTER: TIntegerField;
    ZqCombosNOMBRECOMBO: TWideStringField;
    ZqCombosPRECIO1: TFloatField;
    ZqCombosPRECIO2: TFloatField;
    ZqCombosPRECIO3: TFloatField;
    ZqCombosCOSTOS1: TFloatField;
    ZqCombosCOSTOS2: TFloatField;
    ZqCombosESTADO: TIntegerField;
    ZqCombosCODTIENDA: TIntegerField;
    ZqCombosCODIGOTXT: TWideStringField;
    DsqCombos: TDataSource;
    Dcombo: TZReadOnlyQuery;
    DataSource1: TDataSource;
    DcomboCOD_MANCOMBO: TIntegerField;
    DcomboMACOMBOID: TIntegerField;
    DcomboCOD_ART: TIntegerField;
    DcomboPRECIO: TFloatField;
    DcomboPRECIO2: TFloatField;
    DcomboPRECIO3: TFloatField;
    DcomboARTICULO: TWideStringField;
    DcomboCOSTO: TFloatField;
    DcomboCOSTO_PR: TFloatField;
    cxButton1: TcxButton;
    ZExistencia: TZReadOnlyQuery;
    Precios: TZReadOnlyQuery;
    PreciosCPID: TIntegerField;
    PreciosNO_ART: TIntegerField;
    PreciosUNIDAD_M: TIntegerField;
    PreciosPRECIO1: TFloatField;
    PreciosPRECIO2: TFloatField;
    PreciosPRECIO3: TFloatField;
    PreciosUNIDAD: TWideStringField;
    PreciosPOS: TIntegerField;
    DsPRecios: TDataSource;
    Edit2: TEdit;
    ActualidaCOmpartido: TZReadOnlyQuery;
    Almacenes1: TZReadOnlyQuery;
    DsAlmacenes01: TDataSource;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    ZExistenciaIDTIENDA: TIntegerField;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaDESCRIPCION: TWideStringField;
    ZExistenciaEXISTENCIA: TExtendedField;
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
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1MODELO: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    GroupBox1: TGroupBox;
    Panel17: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtBuscar: TEdit;
    op: TcxRadioGroup;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Panel7: TPanel;
    SpeedButton1: TSpeedButton;
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
    IbqRArticulosPRECIO_C: TFloatField;
    IbqRArticulosUNIDADVENTA: TWideStringField;
    IbqRArticulosSERIE: TWideStringField;
    IbqRArticulosLOTE: TWideStringField;
    IbqRArticulosPERMITIRDESC: TWideStringField;
    IbqRArticulosIDIMPUESTO: TIntegerField;
    IbqRArticulosDESCPERMITIDO: TIntegerField;
    IbqRArticulosCOSTO: TFloatField;
    IbqRArticulosMONEDA: TWideStringField;
    procedure opClick(Sender: TObject);
    procedure edit1PropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid3DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscarChange(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscarArticulos: TFrmBuscarArticulos;

implementation

uses
  unit19, tools, unit2, unit22, Unit28, Unit34, Unit65, Unit5, Unit63,
  UAdminArticulos;
{$R *.dfm}

procedure TFrmBuscarArticulos.btnsalirClick(Sender: TObject);
begin
  close;
end;

procedure TFrmBuscarArticulos.cxButton1Click(Sender: TObject);
begin

  with Dcombo do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
    sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
    sql.Add('where a.macomboid =:pp');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;

  cxButton1.Enabled := false;
  // opdetallecombo.Visible := true;

end;

procedure TFrmBuscarArticulos.cxGrid2DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  with Almacenes1 do
  begin
    close;
    sql.clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;



  // with precios do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select a.*, b.unidad,b.pos from CONTROL_PRECIOS a');
  // sql.Add('left join unidad_m b On a.unidad_m = b.cod_unidad_m');
  // sql.Add('where NO_ART =:pp');
  // sql.Add('order by b.pos');
  // params[0].Value := ibqrArticuloscod_art.Value;
  // open;
  // end;

  {
    with zexistencia do
    begin
    close;
    sql.Clear;
    sql.Add('select a.idtienda,a.cod_art,b.descripcion,sum(a.entrada - a.salida) Existencia from minventario a');
    sql.Add('left join tienda b On a.idtienda = b.tiendaid');
    sql.Add('where a.cod_art =:op2');
    sql.Add('group by a.idtienda,a.cod_art,b.descripcion');
    params[0].Value := IbqRarticuloscod_art.Value;
    open;
    end;

    if ibqRarticulospolitica.Value = 'Combo' then
    begin
    cxButton1.Enabled := true;
    end else begin
    cxButton1.Enabled := false;
    opdetallecombo.Visible := false;

    end;
  }

  with datos.QInventarioEQ do
  begin
    close;
    sql.clear;
    sql.Add('select * from sp_inventario(:op, :op2, 0)');
    params[0].Value := IbqRArticulosCOD_ART.text;
    params[1].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;

end;

procedure TFrmBuscarArticulos.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

  if Edit2.text = 'COMPARTIDO' then
  begin
    with ActualidaCOmpartido do
    begin
      close;
      sql.clear;
      sql.Add('update mtartuculos set compactiblecon =:opp');
      sql.Add('where cod_art =:op1');
      params[0].Value := datos.MantArtCOD_ART.Value;
      params[1].Value := IbqRArticulosCOD_ART.Value;
      ExecSQL;
    end;

    FrmArticulos.QCompartidos.close;
    FrmArticulos.QCompartidos.open;
    close;
  end;

  if Edit2.text = 'COMPRA' then
  BEGIN

    if (FrmCOMPRAS.cxDBComboBox1.ItemIndex = 1) and
      (FrmCOMPRAS.ComboMoneda.text = 'US') then
    BEGIN

      FrmCOMPRAS.Edit3.text := IbqRArticulosCODIGOTXT.Value;
      FrmCOMPRAS.Arti_TXT.text := IbqRArticulosARTICULO.Value;
      FrmCOMPRAS.cxButton1.Enabled := true;
      FrmCOMPRAS.Label13.Caption := 'Costo US$';
      FrmCOMPRAS.Label15.Caption := 'Total Costo US$';
      FrmCOMPRAS.Edit1.text := 'NO';
      FrmCOMPRAS.montocosto_txt.Properties.DisplayFormat :=
        'US$,0.00;(US$,0.00)';
      FrmCOMPRAS.montocosto_txt.Value := IbqRArticulosCOSTO.Value;
      FrmCOMPRAS.TOTALIMPUESTO_TXT.Properties.DisplayFormat :=
        'US$,0.00;(US$,0.00)';
      FrmCOMPRAS.itbs12.text := FloatTostr(IbqRArticulosTAZA_COMPRA.Value);

      if IbqRArticulosITBIS.Value = 'Si' then
      begin

        FrmCOMPRAS.TOTALIMPUESTO_TXT.Value := IbqRArticulosCOSTO.Value *
          (IbqRArticulosTAZA_COMPRA.Value * 100);

      end
      else
      begin
        FrmCOMPRAS.TOTALIMPUESTO_TXT.Properties.DisplayFormat :=
          'US$,0.00;(US$,0.00)';
      end;

      FrmCOMPRAS.totalcosto_txt.Value := FrmCOMPRAS.TOTALIMPUESTO_TXT.Value +
        FrmCOMPRAS.TOTALIMPUESTO_TXT.Value;
      FrmCOMPRAS.cant_txt.SetFocus;
      close;
    end;

    if (FrmCOMPRAS.cxDBComboBox1.ItemIndex = 1) and
      (IbqRArticulosMONEDA.Value = 'SI') and (FrmCOMPRAS.ComboMoneda.text = 'RD')
    then
    BEGIN

      FrmCOMPRAS.Edit3.text := IbqRArticulosCODIGOTXT.Value;
      FrmCOMPRAS.Arti_TXT.text := IbqRArticulosARTICULO.Value;
      FrmCOMPRAS.cxButton1.Enabled := true;
      FrmCOMPRAS.Label13.Caption := 'Costo RD$';
      FrmCOMPRAS.Label15.Caption := 'Total Costo RD$';
      FrmCOMPRAS.Edit1.text := 'SI';
      FrmCOMPRAS.montocosto_txt.Value := IbqRArticulosCOSTO.Value;
      FrmCOMPRAS.TOTALIMPUESTO_TXT.Properties.DisplayFormat :=
        'RD$,0.00;(RD$,0.00)';
      FrmCOMPRAS.itbs12.text := FloatTostr(IbqRArticulosTAZA_COMPRA.Value);
      FrmCOMPRAS.edtLote.text := IbqRArticulosLOTE.text;

      if IbqRArticulosITBIS.Value = 'Si' then
      begin

        FrmCOMPRAS.TOTALIMPUESTO_TXT.Value := IbqRArticulosCOSTO.Value *
          (IbqRArticulosTAZA_COMPRA.Value / 100);

      end
      else
      begin
        FrmCOMPRAS.TOTALIMPUESTO_TXT.Properties.DisplayFormat :=
          'RD$,0.00;(RD$,0.00)';
        FrmCOMPRAS.itbs12.text := FloatTostr(IbqRArticulosTAZA_COMPRA.Value);
      end;

      FrmCOMPRAS.totalcosto_txt.Value := FrmCOMPRAS.montocosto_txt.Value +
        FrmCOMPRAS.TOTALIMPUESTO_TXT.Value;
      FrmCOMPRAS.cant_txt.SetFocus;
      close;
    end;

    if (FrmCOMPRAS.cxDBComboBox1.ItemIndex = 0) then
    begin
      FrmCOMPRAS.Edit3.text := IbqRArticulosCODIGOTXT.Value;
      FrmCOMPRAS.Arti_TXT.text := IbqRArticulosARTICULO.Value;
      FrmCOMPRAS.cxButton1.Enabled := true;
      FrmCOMPRAS.cant_txt.SetFocus;
      close;
    end;

  end
  else
  begin
    Showmessage('** Este producto corresponde a un Combo **');
  end;

  if Edit2.text = 'REPOSICION' then
  BEGIN
    if (IbqRArticulosPOLITICA.Value = 'Unitario') or
      (IbqRArticulosPOLITICA.Value = 'fraccional') or
      (IbqRArticulosPOLITICA.Value = 'Compuesto') or
      (IbqRArticulosPOLITICA.Value = 'Insumo') then
    begin

      FrmAjuste.Cod_TXT.text := IbqRArticulosCODIGOTXT.Value;
      FrmAjuste.Arti_TXT.text := IbqRArticulosARTICULO.Value;
      FrmAjuste.cxButton1.Enabled := true;

      FrmAjuste.Edit1.text := 'NO';
      close;

    end
    else
    begin
      Showmessage('** Este producto corresponde a un Servicio **');
    end;

  END;

  if Edit2.text = 'DESCARGAR' then
  BEGIN

    with Almacenes1 do
    begin
      close;
      sql.clear;
      sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
      sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
      sql.Add('left join almacenes c On a.cod_alm = c.id');
      sql.Add('and b.politica <> ''Servicio''');
      sql.Add('where a.cod_art =:opp');
      sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
      params[0].Value := IbqRArticulosCOD_ART.Value;
      open;
    end;

    if (IbqRArticulosPOLITICA.Value = 'Unitario') or
      (IbqRArticulosPOLITICA.Value = 'fraccional') or
      (IbqRArticulosPOLITICA.Value = 'Compuesto') or
      (IbqRArticulosPOLITICA.Value = 'Insumo') then
    begin

      FrmDescarga.Cod_TXT.text := IbqRArticulosCODIGOBARRA.Value;
      FrmDescarga.Arti_TXT.text := IbqRArticulosARTICULO.Value;
      FrmDescarga.edtCosto.Value := IbqRArticulosCOSTO.Value;
      FrmDescarga.edtCodigo.text := IbqRArticulosCOD_ART.text;
      FrmDescarga.edtExistencia.text := FloatTostr(Almacenes1EXISTENCIA.Value);
      if IbqRArticulos.FieldByName('lote').Value = 'SI' then
      begin
        FrmDescarga.edtTipo.text := 'Lote';
        FrmDescarga.lblFechaVencimiento.Visible := true;
        FrmDescarga.edFechaVencimiento.Visible := true;

      end
      else
      begin

        FrmDescarga.lblFechaVencimiento.Visible := false;
        FrmDescarga.edFechaVencimiento.Visible := false;

      end;

      if IbqRArticulos.FieldByName('Serie').Value = 'SI' then
      begin

        FrmDescarga.edtTipo.text := 'Serie';
      end;
      // FrmDescarga.cxButton1.Enabled := true;
      FrmDescarga.cant_txt.Value := 1;
      FrmDescarga.cant_txt.SetFocus;
      close;
    end
    else
    begin
      Showmessage('** Este ITEMS es un Servicio **');
    end;
  END;

  if Edit2.text = 'COTIZA' then
  BEGIN
    // **

    if (IbqRArticulosPOLITICA.Value = 'Unitario') or
      (IbqRArticulosPOLITICA.Value = 'fraccional') or
      (IbqRArticulosPOLITICA.Value = 'Compuesto') or
      (IbqRArticulosPOLITICA.Value = 'Insumo') then
    begin

      FrmNFact.t1.text := IbqRArticulosCODIGOTXT.Value;
      FrmNFact.t2.text := IbqRArticulosARTICULO.Value;

      if FrmNFact.cxcombobox1.ItemIndex = 0 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_a.Value;
      end;

      if FrmNFact.cxcombobox1.ItemIndex = 1 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_b.Value;
      end;

      if FrmNFact.cxcombobox1.ItemIndex = 2 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_d.Value;
      end;

      FrmNFact.topcion.text := 'COM';
      FrmNFact.cxButton9.Enabled := true;
      close;

    end
    ELSE if IbqRArticulosPOLITICA.Value = 'Producto' then
    BEGIN

      with FrmNFact.QUnidad do
      begin
        close;
        sql.clear;
        sql.Add('select a.*, b.unidad,b.pos from CONTROL_PRECIOS a');
        sql.Add('left join unidad_m b On a.unidad_m = b.cod_unidad_m');
        sql.Add('where NO_ART =:pp');
        sql.Add('order by b.pos');
        params[0].Value := IbqRArticulosCOD_ART.Value;
        open;
      end;

      FrmNFact.t1.text := IbqRArticulosCODIGOTXT.Value;
      FrmNFact.t2.text := IbqRArticulosARTICULO.Value;
      FrmNFact.Edit8.text := IbqRArticulosITBIS.Value;
      FrmNFact.LUnid.ItemIndex := -1;
      FrmNFact.LUnid.ItemIndex := 0;
      FrmNFact.t3.text := '1';

      {
        if ibqrArticuloscod_cat.Value = 2 then
        begin
        FrmNFact.ancho.Text  := '0.00';
        FrmNFact.alto.Text   := '0.00';

        FrmNFact.ancho.Properties.ReadOnly := false;
        FrmNFact.alto.Properties.ReadOnly := false;
        FrmNFact.t3.Properties.ReadOnly := true;
        FrmNFact.calcular.Enabled := true;
        FrmNFact.cat.Text := '2';
        end else begin
        FrmNFact.ancho.Text  := '0.00';
        FrmNFact.alto.Text   := '0.00';
        FrmNFact.ancho.Properties.ReadOnly := true;
        FrmNFact.alto.Properties.ReadOnly := true;
        FrmNFact.t3.Properties.ReadOnly := false;
        FrmNFact.calcular.Enabled := false;
        FrmNFact.cat.Text := '0';
        FrmNFact.t3.SetFocus;

        end;
      }

      if FrmNFact.cxcombobox1.ItemIndex = 0 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_a.Value;
      end;

      if FrmNFact.cxcombobox1.ItemIndex = 1 then
      begin
        /// FrmNFact.t4.Value := ibqrArticulosprecio_b.Value;
      end;

      if FrmNFact.cxcombobox1.ItemIndex = 2 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_d.Value;
      end;

      FrmNFact.topcion.text := 'ART';
      FrmNFact.cxButton9.Enabled := true;
      FrmNFact.cxButton9.SetFocus;

      close;

    END;
  END;

  // **

  if Edit2.text = 'FACTURA' then
  BEGIN

    if IbqRArticulosPOLITICA.Value = 'Combo' then
    begin

      FrmNFact.t1.text := IbqRArticulosCODIGOTXT.Value;
      FrmNFact.t2.text := IbqRArticulosARTICULO.Value;

      if FrmNFact.cxcombobox1.ItemIndex = 0 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_a.Value;
      end;

      if FrmNFact.cxcombobox1.ItemIndex = 1 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_b.Value;
      end;

      if FrmNFact.cxcombobox1.ItemIndex = 2 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_d.Value;
      end;

      FrmNFact.topcion.text := 'COM';
      FrmNFact.cxButton9.Enabled := true;
      close;

    end
    ELSE if IbqRArticulosPOLITICA.Value = 'Producto' then
    BEGIN

      with FrmNFact.QUnidad do
      begin
        close;
        sql.clear;
        sql.Add('select a.*, b.unidad,b.pos from CONTROL_PRECIOS a');
        sql.Add('left join unidad_m b On a.unidad_m = b.cod_unidad_m');
        sql.Add('where NO_ART =:pp');
        sql.Add('order by b.pos');
        params[0].Value := IbqRArticulosCOD_ART.Value;
        open;
      end;

      FrmNFact.t1.text := IbqRArticulosCODIGOTXT.Value;
      FrmNFact.t2.text := IbqRArticulosARTICULO.Value;
      FrmNFact.Edit8.text := IbqRArticulosITBIS.Value;
      FrmNFact.LUnid.ItemIndex := -1;
      FrmNFact.LUnid.ItemIndex := 0;
      FrmNFact.t3.text := '1';

      {
        if ibqrArticuloscod_cat.Value = 2 then
        begin
        FrmNFact.ancho.Text  := '0.00';
        FrmNFact.alto.Text   := '0.00';

        FrmNFact.ancho.Properties.ReadOnly := false;
        FrmNFact.alto.Properties.ReadOnly := false;
        FrmNFact.t3.Properties.ReadOnly := true;
        FrmNFact.calcular.Enabled := true;
        FrmNFact.cat.Text := '2';
        end else begin
        FrmNFact.ancho.Text  := '0.00';
        FrmNFact.alto.Text   := '0.00';
        FrmNFact.ancho.Properties.ReadOnly := true;
        FrmNFact.alto.Properties.ReadOnly := true;
        FrmNFact.t3.Properties.ReadOnly := false;
        FrmNFact.calcular.Enabled := false;
        FrmNFact.cat.Text := '0';
        FrmNFact.t3.SetFocus;

        end;
      }

      if FrmNFact.cxcombobox1.ItemIndex = 0 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_a.Value;
      end;

      if FrmNFact.cxcombobox1.ItemIndex = 1 then
      begin
        /// FrmNFact.t4.Value := ibqrArticulosprecio_b.Value;
      end;

      if FrmNFact.cxcombobox1.ItemIndex = 2 then
      begin
        // FrmNFact.t4.Value := ibqrArticulosprecio_d.Value;
      end;

      FrmNFact.topcion.text := 'ART';
      FrmNFact.cxButton9.Enabled := true;
      FrmNFact.cxButton9.SetFocus;

      close;

    END;
  END;

end;

procedure TFrmBuscarArticulos.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  with Almacenes1 do
  begin
    close;
    sql.clear;
    sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
    sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
    sql.Add('left join almacenes c On a.cod_alm = c.id');
    sql.Add('and b.politica <> ''Servicio''');
    sql.Add('where a.cod_art =:opp');
    sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
    params[0].Value := IbqRArticulosCOD_ART.Value;
    open;
  end;

  if Key = vk_return then
  begin

    if Edit2.text = 'COMPRA' then
    BEGIN
      if (IbqRArticulosPOLITICA.Value = 'Unitario') or
        (IbqRArticulosPOLITICA.Value = 'fraccional') or
        (IbqRArticulosPOLITICA.Value = 'Compuesto') or
        (IbqRArticulosPOLITICA.Value = 'Insumo') then
      begin

        if (FrmCOMPRAS.cxDBComboBox1.ItemIndex = 1) and
          (IbqRArticulosMONEDA.Value = 'NO') and
          (FrmCOMPRAS.ComboMoneda.text = 'US') then
        BEGIN

          // Frmcompras.Cod_TXT.Text := ibqrArticuloscodigoTXT.Value;
          FrmCOMPRAS.Arti_TXT.text := IbqRArticulosARTICULO.Value;
          FrmCOMPRAS.cxButton1.Enabled := true;
          FrmCOMPRAS.Label13.Caption := 'Costo US$';
          FrmCOMPRAS.Label15.Caption := 'Total Costo US$';
          FrmCOMPRAS.Edit1.text := 'NO';
          FrmCOMPRAS.montocosto_txt.Properties.DisplayFormat :=
            'US$,0.00;(US$,0.00)';
          FrmCOMPRAS.TOTALIMPUESTO_TXT.Properties.DisplayFormat :=
            'US$,0.00;(US$,0.00)';
          FrmCOMPRAS.totalcosto_txt.Properties.DisplayFormat :=
            'US$,0.00;(US$,0.00)';
          FrmCOMPRAS.edtLote.text := IbqRArticulosLOTE.text;

          if FrmCOMPRAS.edtLote.text = 'SI' then
          begin
            FrmCOMPRAS.lblFechaVencimiento.Visible := true;
            FrmCOMPRAS.edFechaVencimiento.Visible := true;
          end
          else
          begin
            FrmCOMPRAS.lblFechaVencimiento.Visible := false;
            FrmCOMPRAS.edFechaVencimiento.Visible := false;
          end;
          close;
        end;

        if (FrmCOMPRAS.cxDBComboBox1.ItemIndex = 1) and
          (IbqRArticulosMONEDA.Value = 'SI') and
          (FrmCOMPRAS.ComboMoneda.text = 'RD') then
        BEGIN
          // Frmcompras.Cod_TXT.Text := ibqrArticuloscodigoTXT.Value;
          FrmCOMPRAS.Arti_TXT.text := IbqRArticulosARTICULO.Value;
          FrmCOMPRAS.cxButton1.Enabled := true;
          FrmCOMPRAS.Label13.Caption := 'Costo RD$';
          FrmCOMPRAS.Label15.Caption := 'Total Costo RD$';
          FrmCOMPRAS.Edit1.text := 'SI';
          FrmCOMPRAS.montocosto_txt.Properties.DisplayFormat :=
            'RD$,0.00;(RD$,0.00)';
          FrmCOMPRAS.TOTALIMPUESTO_TXT.Properties.DisplayFormat :=
            'RD$,0.00;(RD$,0.00)';
          FrmCOMPRAS.totalcosto_txt.Properties.DisplayFormat :=
            'RD$,0.00;(RD$,0.00)';
          FrmCOMPRAS.edtLote.text := IbqRArticulosLOTE.text;

          if FrmCOMPRAS.edtLote.text = 'SI' then
          begin
            FrmCOMPRAS.lblFechaVencimiento.Visible := true;
            FrmCOMPRAS.edFechaVencimiento.Visible := true;
          end
          else
          begin
            FrmCOMPRAS.lblFechaVencimiento.Visible := false;
            FrmCOMPRAS.edFechaVencimiento.Visible := false;
          end;
          close;
        end;

        if (FrmCOMPRAS.cxDBComboBox1.ItemIndex = 0) then
        begin
          // Frmcompras.Cod_TXT.Text := ibqrArticuloscodigoTXT.Value;
          FrmCOMPRAS.Arti_TXT.text := IbqRArticulosARTICULO.Value;
          FrmCOMPRAS.cxButton1.Enabled := true;
          FrmCOMPRAS.edtLote.text := IbqRArticulosLOTE.text;

          if FrmCOMPRAS.edtLote.text = 'SI' then
          begin
            FrmCOMPRAS.lblFechaVencimiento.Visible := true;
            FrmCOMPRAS.edFechaVencimiento.Visible := true;
          end
          else
          begin
            FrmCOMPRAS.lblFechaVencimiento.Visible := false;
            FrmCOMPRAS.edFechaVencimiento.Visible := false;
          end;
          close;
        end;

      end
      else
      begin
        // Showmessage ('** Este producto corresponde a un Combo **');
      end;

    END;

    if Edit2.text = 'REPOSICION' then
    BEGIN
      if IbqRArticulosPOLITICA.Value = 'Producto' then
      begin

        FrmAjuste.Cod_TXT.text := IbqRArticulosCODIGOTXT.Value;
        FrmAjuste.Arti_TXT.text := IbqRArticulosARTICULO.Value;
        FrmAjuste.cxButton1.Enabled := true;
        close;
      end
      else
      begin
        // Showmessage ('** Este producto corresponde a un Combo **');
      end;
    END;

    if Edit2.text = 'DESCARGAR' then
    BEGIN
      if IbqRArticulosPOLITICA.Value = 'Producto' then
      begin

        FrmDescarga.Cod_TXT.text := IbqRArticulosCODIGOTXT.Value;
        FrmDescarga.Arti_TXT.text := IbqRArticulosARTICULO.Value;
        // FrmDescarga.cxButton1.Enabled := true;
        close;
      end
      else
      begin
        // Showmessage ('** Este producto corresponde a un Combo **');
      end;
    END;

    if Edit2.text = 'COTIZA' then
    BEGIN
      // **
      if IbqRArticulosPOLITICA.Value = 'Combo' then
      begin

        FrmNFact.t1.text := IbqRArticulosCODIGOTXT.Value;
        FrmNFact.t2.text := IbqRArticulosARTICULO.Value;

        if FrmNFact.cxcombobox1.ItemIndex = 0 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_a.Value;
        end;

        if FrmNFact.cxcombobox1.ItemIndex = 1 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_b.Value;
        end;

        if FrmNFact.cxcombobox1.ItemIndex = 2 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_d.Value;
        end;

        FrmNFact.topcion.text := 'COM';
        FrmNFact.cxButton9.Enabled := true;
        close;

      end
      ELSE if IbqRArticulosPOLITICA.Value = 'Producto' then
      BEGIN

        with FrmNFact.QUnidad do
        begin
          close;
          sql.clear;
          sql.Add('select a.*, b.unidad,b.pos from CONTROL_PRECIOS a');
          sql.Add('left join unidad_m b On a.unidad_m = b.cod_unidad_m');
          sql.Add('where NO_ART =:pp');
          sql.Add('order by b.pos');
          params[0].Value := IbqRArticulosCOD_ART.Value;
          open;
        end;

        FrmNFact.t1.text := IbqRArticulosCODIGOTXT.Value;
        FrmNFact.t2.text := IbqRArticulosARTICULO.Value;
        FrmNFact.Edit8.text := IbqRArticulosITBIS.Value;
        FrmNFact.LUnid.ItemIndex := -1;
        FrmNFact.LUnid.ItemIndex := 0;
        FrmNFact.t3.text := '1';

        {
          if ibqrArticuloscod_cat.Value = 2 then
          begin
          FrmNFact.ancho.Text  := '0.00';
          FrmNFact.alto.Text   := '0.00';

          FrmNFact.ancho.Properties.ReadOnly := false;
          FrmNFact.alto.Properties.ReadOnly := false;
          FrmNFact.t3.Properties.ReadOnly := true;
          FrmNFact.calcular.Enabled := true;
          FrmNFact.cat.Text := '2';
          end else begin
          FrmNFact.ancho.Text  := '0.00';
          FrmNFact.alto.Text   := '0.00';
          FrmNFact.ancho.Properties.ReadOnly := true;
          FrmNFact.alto.Properties.ReadOnly := true;
          FrmNFact.t3.Properties.ReadOnly := false;
          FrmNFact.calcular.Enabled := false;
          FrmNFact.cat.Text := '0';
          FrmNFact.t3.SetFocus;

          end;
        }

        if FrmNFact.cxcombobox1.ItemIndex = 0 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_a.Value;
        end;

        if FrmNFact.cxcombobox1.ItemIndex = 1 then
        begin
          /// FrmNFact.t4.Value := ibqrArticulosprecio_b.Value;
        end;

        if FrmNFact.cxcombobox1.ItemIndex = 2 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_d.Value;
        end;

        FrmNFact.topcion.text := 'ART';
        FrmNFact.cxButton9.Enabled := true;
        FrmNFact.cxButton9.SetFocus;

        close;

      END;
    END;

    // **

    if Edit2.text = 'FACTURA' then
    BEGIN

      if IbqRArticulosPOLITICA.Value = 'Combo' then
      begin

        FrmNFact.t1.text := IbqRArticulosCODIGOTXT.Value;
        FrmNFact.t2.text := IbqRArticulosARTICULO.Value;

        if FrmNFact.cxcombobox1.ItemIndex = 0 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_a.Value;
        end;

        if FrmNFact.cxcombobox1.ItemIndex = 1 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_b.Value;
        end;

        if FrmNFact.cxcombobox1.ItemIndex = 2 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_d.Value;
        end;

        FrmNFact.topcion.text := 'COM';
        FrmNFact.cxButton9.Enabled := true;
        close;

      end
      ELSE if IbqRArticulosPOLITICA.Value = 'Producto' then
      BEGIN

        with FrmNFact.QUnidad do
        begin
          close;
          sql.clear;
          sql.Add('select a.*, b.unidad,b.pos from CONTROL_PRECIOS a');
          sql.Add('left join unidad_m b On a.unidad_m = b.cod_unidad_m');
          sql.Add('where NO_ART =:pp');
          sql.Add('order by b.pos');
          params[0].Value := IbqRArticulosCOD_ART.Value;
          open;
        end;

        FrmNFact.t1.text := IbqRArticulosCODIGOTXT.Value;
        FrmNFact.t2.text := IbqRArticulosARTICULO.Value;
        FrmNFact.Edit8.text := IbqRArticulosITBIS.Value;
        FrmNFact.LUnid.ItemIndex := -1;
        FrmNFact.LUnid.ItemIndex := 0;
        FrmNFact.t3.text := '1';

        {
          if ibqrArticuloscod_cat.Value = 2 then
          begin
          FrmNFact.ancho.Text  := '0.00';
          FrmNFact.alto.Text   := '0.00';

          FrmNFact.ancho.Properties.ReadOnly := false;
          FrmNFact.alto.Properties.ReadOnly := false;
          FrmNFact.t3.Properties.ReadOnly := true;
          FrmNFact.calcular.Enabled := true;
          FrmNFact.cat.Text := '2';
          end else begin
          FrmNFact.ancho.Text  := '0.00';
          FrmNFact.alto.Text   := '0.00';
          FrmNFact.ancho.Properties.ReadOnly := true;
          FrmNFact.alto.Properties.ReadOnly := true;
          FrmNFact.t3.Properties.ReadOnly := false;
          FrmNFact.calcular.Enabled := false;
          FrmNFact.cat.Text := '0';
          FrmNFact.t3.SetFocus;

          end;
        }

        if FrmNFact.cxcombobox1.ItemIndex = 0 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_a.Value;
        end;

        if FrmNFact.cxcombobox1.ItemIndex = 1 then
        begin
          /// FrmNFact.t4.Value := ibqrArticulosprecio_b.Value;
        end;

        if FrmNFact.cxcombobox1.ItemIndex = 2 then
        begin
          // FrmNFact.t4.Value := ibqrArticulosprecio_d.Value;
        end;

        FrmNFact.topcion.text := 'ART';
        FrmNFact.cxButton9.Enabled := true;
        FrmNFact.cxButton9.SetFocus;

        close;

      END;
    END;

  end;
end;

procedure TFrmBuscarArticulos.cxGrid3DBTableView1DblClick(Sender: TObject);
begin

  with Dcombo do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
    sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
    sql.Add('where a.macomboid =:pp');
    params[0].Value := ZqCombosCOMBOMASTER.Value;
    open;
  end;

  FrmNFact.t1.text := ZqCombosCODIGOTXT.Value;
  FrmNFact.t2.text := ZqCombosNOMBRECOMBO.Value;
  FrmNFact.t4.Value := ZqCombosPRECIO3.Value;
  FrmNFact.topcion.text := 'COM';
  FrmNFact.cxButton9.Enabled := true;
  close;
end;

procedure TFrmBuscarArticulos.cxGrid3DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  with Dcombo do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
    sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
    sql.Add('where a.macomboid =:pp');
    params[0].Value := ZqCombosCOMBOMASTER.Value;
    open;
  end;
end;

procedure TFrmBuscarArticulos.cxGrid3DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  with Dcombo do
  begin
    close;
    sql.clear;
    sql.Add('select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a');
    sql.Add('left join MtArtuculos b On a.cod_art = b.cod_art');
    sql.Add('where a.macomboid =:pp');
    params[0].Value := ZqCombosCOMBOMASTER.Value;
    open;
  end;
end;

procedure TFrmBuscarArticulos.edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cadenaleida: string;
begin
  if Key = vk_return then
  begin
    Cadenaleida := edtBuscar.text;
    StringReplace(Cadenaleida, chr(39), '-', [rfReplaceAll]);
    if op.ItemIndex = 0 then
    begin

      with IbqRArticulos do
      begin
        close;
        sql.clear;
        sql.Add('select a.unidad,a.precio_a, a.costo, a.codigobarra, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
        sql.Add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 , a.moneda from mtartuculos a');
        sql.Add('where a.CODIGOBARRA =:OPP');
        sql.Add('group by a.unidad,a.precio_a, a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca, a.costo,');
        sql.Add('a.codigotxt,a.itbis,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.codigobarra, a.comision, a.costo_pr, a.beneficios,');
        sql.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs,, a.moneda');
        params[0].Value := StringReplace(Cadenaleida, chr(39), '-',
          [rfReplaceAll]);
        open;

      end;

      cxGrid2.SetFocus;
      edtBuscar.clear;
    end;
  end;
end;

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

procedure TFrmBuscarArticulos.edit1PropertiesChange(Sender: TObject);
var
  T, ST, p1, p2, p3, p4: string;
begin

  if op.ItemIndex = 1 then
  begin
    with IbqRArticulos do
    begin
      close;
      sql.clear;
      sql.Add('select a.unidad, a.costo, a.precio_a,a.codigobarra, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
      sql.Add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, , a.moneda, ');
      sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
      sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
      // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
      // sql.Add('OR a.CONDICION_EMPENO IS NULL');
      // sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
      sql.Add('group by a.unidad,a.precio_a, a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca, a.costo,');
      sql.Add('a.codigotxt,a.itbis,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.codigobarra, a.comision, a.costo_pr, a.beneficios,');
      sql.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs, a.moneda');

      ST := edtBuscar.text;
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

  end;

procedure TFrmBuscarArticulos.edtBuscarChange(Sender: TObject);
var
  T, ST, p1, p2, p3, p4: string;
begin

  if op.ItemIndex = 1 then
  begin

    with IbqRArticulos do
    begin
      close;
      sql.clear;
      sql.Add('select a.unidad, a.costo, a.precio_a,a.codigobarra, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
      sql.Add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
      sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.moneda from mtartuculos a');
      sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
      // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
      // sql.Add('OR a.CONDICION_EMPENO IS NULL');
      // sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
      sql.Add('group by a.unidad,a.precio_a, a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.costo,');
      sql.Add('a.codigotxt,a.itbis,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.codigobarra, a.comision, a.costo_pr, a.beneficios,');
      sql.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs , a.moneda');

      ST := edtBuscar.text;
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

    if op.ItemIndex = 0 then
    begin

      with IbqRArticulos do
      begin
        close;
        sql.clear;
        sql.Add('select a.unidad, a.costo, a.precio_a,a.codigobarra, precio_c, a.comision, a.precio_b,a.precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
        sql.Add('a.marca,a.codigotxt, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
        sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.moneda from mtartuculos a');
        sql.Add('where upper(a.codigobarra) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
        // sql.Add('AND a.CONDICION_EMPENO <>''BLOQUEADO''');
        // sql.Add('OR a.CONDICION_EMPENO IS NULL');
        // sql.Add('where upper(a.articulo) like '+#39+'%'+codoriginal+'%'+#39);
        sql.Add('group by a.unidad,a.precio_a, a.precio_b, precio_c, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.costo,');
        sql.Add('a.codigotxt,a.itbis,a.unidadventa, a.serie, a.lote, a.permitirdesc, idimpuesto, a.descpermitido, a.taza_compra, a.codigobarra, a.comision, a.costo_pr, a.beneficios,');
        sql.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs , a.moneda');

        ST := edtBuscar.text;
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

      //
      // with ibqrarticulos do
      // begin
      //
      //
      //
      //
      //
      // close;
      // sql.Clear;
      // sql.Add('select a.moneda,a.ubicacion, a.codigobarra, a.referencia,a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra, sum(b.entrada - b.salida) Existencia,  a. lote, a.serie');
      // sql.Add('from mtartuculos a');
      // sql.Add('left join minventario b On a.cod_art = b.cod_art');
      // sql.Add('where upper(a.articulo) CONTAINING :buscar AND articulo CONTAINING :PALABRA2 and articulo CONTAINING :PALABRA3 and articulo CONTAINING :PALABRA4');
      //
      //
      //
      // sql.Add('group by a.moneda,a.cod_art,a.codigobarra, a.referencia,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.costo, a.taza_compra, a.ubicacion,  a. lote, a.serie');
      //
      // ST:= edtBuscar.Text;
      // while Length(ST) >0 do BEGIN
      // p1 := token(' ',ST);
      // p2 := token(' ',ST);
      // p3 := token(' ',ST);
      // p4 := token(' ',ST);
      //
      // END;
      //
      //
      // Params[0].Value := p1;
      // Params[1].Value := p2;
      // Params[2].Value := p3;
      // Params[3].Value := p4;
      //
      // open;
      //
      // open;
      // end;
    end;

  end;

  procedure TFrmBuscarArticulos.FormClose(Sender: TObject;
    var Action: TCloseAction);
  begin
    IbqRArticulos.close;
    ZqCombos.close;
    FrmBuscarArticulos := nil;
    Action := caFree;
  end;

  procedure TFrmBuscarArticulos.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
    if Key = vk_escape then
    begin
      close;
    end;
  end;

  procedure TFrmBuscarArticulos.FormShow(Sender: TObject);
  begin
    op.ItemIndex := 1;
    // cxPageControl1.ActivePageIndex := 0;
    IbqRArticulos.close;
    IbqRArticulos.open;

    // Zqcombos.Params[0].Value := Asignatienda;
    // zqcombos.Open;
    // opdetallecombo.Visible := false;

    with ZExistencia do
    begin
      close;
      sql.clear;
      sql.Add('select FIRST 50 a.idtienda,a.cod_art,b.descripcion,sum(a.entrada - a.salida) Existencia from minventario a');
      sql.Add('left join tienda b On a.idtienda = b.tiendaid');
      // sql.Add('where a.cod_art =:op2');
      sql.Add('group by a.idtienda,a.cod_art,b.descripcion');
      // params[0].Value := IbqRarticuloscod_art.Value;
      open;
    end;

    //
    // with precios do
    // begin
    // close;
    // sql.Clear;
    // sql.Add('select a.*, b.unidad,b.pos from CONTROL_PRECIOS a');
    // sql.Add('left join unidad_m b On a.unidad_m = b.cod_unidad_m');
    // // sql.Add('where NO_ART =:pp');
    // sql.Add('order by b.pos');
    // //    params[0].Value := ibqrArticuloscod_art.Value;
    // open;
    // end;
    edtBuscar.SetFocus;
  end;

  procedure TFrmBuscarArticulos.opClick(Sender: TObject);
  begin
    if op.ItemIndex = 0 then
    begin
      Label7.Caption := 'Número de Codido';
      edtBuscar.SetFocus;
    end;

    if op.ItemIndex = 1 then
    begin
      Label7.Caption := 'Nombre del Articulo';
      edtBuscar.SetFocus;
    end;

    // if op.ItemIndex = 2 then
    // begin
    // label1.Caption := 'Introduce la Marca';
    // edit1.SetFocus;
    // end;
    //
    // if op.ItemIndex = 3 then
    // begin
    // label1.Caption := 'Introduce el Tipo';
    // edit1.SetFocus;
    // end;
  end;

  procedure TFrmBuscarArticulos.SpeedButton1Click(Sender: TObject);
  begin
    if FrmArticulos = nil then
    begin
      FrmArticulos := TFrmArticulos.Create(self);
      FrmArticulos.nuevo;
      FrmArticulos.Edit8.text := 'ART';
      FrmArticulos.ShowModal;

    end;
  end;

end.
