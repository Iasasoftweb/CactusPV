unit Unit34;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, cxDropDownEdit, cxDBEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Data.DB, ZAbstractRODataset,
  ZDataset, Vcl.Menus, cxButtons, cxMemo, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxCalc,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RxLookup, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, Vcl.Grids, Vcl.DBGrids, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, frxClass, frxDBSet,
  dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, acPNG, Vcl.Buttons, cxButtonEdit, cxCurrencyEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxRadioGroup;

type
  TFrmDescarga = class(TForm)
    cxGroupBox1: TcxGroupBox;
    OpM: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DsMDescarga: TDataSource;
    numero: TZReadOnlyQuery;
    numeroMAX: TIntegerField;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    ZExistencia: TZReadOnlyQuery;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    numeroD: TZReadOnlyQuery;
    numeroDMAX: TIntegerField;
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
    Label5: TLabel;
    cxDBMemo1: TcxDBMemo;
    Opdetalle: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Cod_TXT: TcxTextEdit;
    Arti_TXT: TcxTextEdit;
    Cant_TXT: TcxCalcEdit;
    DSDdescarga: TDataSource;
    ZcoceptoDes: TZReadOnlyQuery;
    ZcoceptoDesDESCARGAID: TIntegerField;
    ZcoceptoDesDESCRIPCION: TWideStringField;
    ZcoceptoDesESTADO: TIntegerField;
    DsConceptos: TDataSource;
    MaxAlmacen: TZReadOnlyQuery;
    MaxAlmacenMAX: TIntegerField;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    DsAlmacenes: TDataSource;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxButton7: TcxButton;
    TTrans: TcxComboBox;
    Label8: TLabel;
    Edit3: TEdit;
    ZExistenciaIDTIENDA: TIntegerField;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaPRECIO_A: TFloatField;
    ZExistenciaPRECIO_B: TFloatField;
    ZExistenciaPRECIO_D: TFloatField;
    ZExistenciaEXISTENCIA: TExtendedField;
    Qnumero: TZReadOnlyQuery;
    QnumeroGEN_ID: TLargeintField;
    QDDescarga: TZReadOnlyQuery;
    QDDescargaGEN_ID: TLargeintField;
    master: TfrxDBDataset;
    config: TfrxDBDataset;
    recibo: TfrxReport;
    detalle: TfrxDBDataset;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Panel1: TPanel;
    btnsalir: TSpeedButton;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Label13: TLabel;
    Panel12: TPanel;
    Label14: TLabel;
    lblEstado: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosMONEDA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosCOSTO: TFloatField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosEXISTENCIA: TExtendedField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosLOTE: TWideStringField;
    IbqRArticulosSERIE: TWideStringField;
    Label9: TLabel;
    Label15: TLabel;
    Panel20: TPanel;
    btnInsertar: TSpeedButton;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    DBGrid2: TDBGrid;
    edtImpuesto: TcxCurrencyEdit;
    edtCosto: TcxCurrencyEdit;
    edtCodigo: TEdit;
    edtTipo: TEdit;
    Label16: TLabel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    edtExistencia: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    cxButton2: TSpeedButton;
    Panel5: TPanel;
    cxButton3: TSpeedButton;
    Panel6: TPanel;
    cxButton4: TSpeedButton;
    edFechaVencimiento: TcxDateEdit;
    lblFechaVencimiento: TLabel;
    Panel7: TPanel;
    opImprime: TcxRadioGroup;
    Panel22: TPanel;
    SpeedButton3: TSpeedButton;
    fxTicket: TfrxReport;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure TTransPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Cod_TXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Cant_TXTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtImpuestoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInsertarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);
    procedure edFechaVencimientoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Cant_TXTExit(Sender: TObject);
  private
    procedure findArti;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDescarga: TFrmDescarga;

implementation

uses tools, unit2, Unit26, Unit63, UInicio, uLotes, uConsultarLote;
{$R *.dfm}

procedure TFrmDescarga.BtnCanelarClick(Sender: TObject);
begin
  datos.ZMDescarga.CancelUpdates;
  datos.ZDdescarga.CancelUpdates;
  datos.Data.Rollback;

  datos.ZMDescarga.Close;
  datos.ZDdescarga.Close;

  cxButton2.Enabled := true;
  cxButton3.Enabled := false;
  cxButton4.Enabled := false;
  Opdetalle.Enabled := false;

  Cod_TXT.Clear;
  Arti_TXT.Clear;
  Cant_TXT.Value := 1;
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TFrmDescarga.btnGuardarClick(Sender: TObject);
var
  totalCoP: double;
  TotalCoEx: double;
  LoteSer: String;
  LoteCOd: Integer;
begin

  datos.ZMDescarga.ApplyUpdates;
  datos.ZDdescarga.ApplyUpdates;

  /// ************** Actualiza Inventario
  datos.ZInventario.Open;
  LoteCOd := 0;
  with datos.ZDdescarga do
  begin
    first;

    while not eof do
    begin
      with datos.MantArt do
      begin
        Close;
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
        sql.Add('left join man_provedores j On a.cod_prov2 = J.cod_prov');
        sql.Add('where a.cod_Art =:oo');
        params[0].Value := datos.ZDdescargaCOD_ART.Value;
        Open;
      end;

      /// // ******    Crear Lote
      if datos.ZDdescargaLOTE.Value = 'SI' then
      begin

        LoteCOd := LoteCOd + 1;
        datos.QMlote.Open;
        datos.QMlote.Append;
        datos.QMloteIDARTICULO.Value := datos.ZDdescargaCOD_ART.Value;
        datos.QMloteESTADO.Value := 1;
        datos.QMloteEXIS_INI.Value := datos.ZDdescargaCANTIDAD.Value;
        datos.QMloteNO_LOTE.Value := 'AJ00' +
          iNTtOSTR(numeroinventarioGEN_ID.Value);
        datos.QMloteFV.Value := datos.ZDdescargaFV.Value;
        datos.QMloteCANT.Value := datos.ZDdescargaCANTIDAD.Value;
        datos.QMloteLIN.Value := AsignaLote;
        datos.QMlote.ApplyUpdates;
      end;

      /// / ******  Fin

      if datos.MantArtOPCIONES_BOLA.Value = 'Si' then
      begin

        with datos.QCodMin do
        begin
          Close;
          sql.Clear;
          sql.Add('select * from SP_EQMINIMO(:no)');
          params[0].Value := datos.ZDdescargaCOD_ART.Value;
          Open;
        end;



        // ShowMessage(''+DATOS.qCodMinCODIGOMINIMO.Text+'  '+datos.qCodMinCANTEMP.Text);

        with numeroinventario do
        begin
          Close;
          sql.Clear;
          sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
          Open;
        end;

        datos.ZInventario.Insert;
        datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
        datos.ZInventarioFECHA.Value := now();
        datos.ZInventarioIDTIENDA.Value := AsignaTienda;
        datos.ZInventarioCOD_ART.Value := datos.qCodMinCODIGOMINIMO.Value;
        datos.ZInventarioCONCEPTOID.Value := 2;
        datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
        datos.ZInventarioLIN.Value := AsignaLote;

        if TTrans.ItemIndex = 0 then
        begin

          datos.ZInventarioCONCEPTOID.Value := 5;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZDdescargaCANTIDAD.Value *
            (datos.qCodMinCANTEMP.Value);
          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;
        end;
        if TTrans.ItemIndex = 1 then
        begin
          datos.ZInventarioCONCEPTOID.Value := 6;
          datos.ZInventarioSALIDA.Value := datos.ZDdescargaCANTIDAD.Value *
            (datos.qCodMinCANTEMP.Value);
          datos.ZInventarioENTRADA.Value := 0.00;
          datos.ZInventarioCOSTO_UN.Value := 1;
          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;
        end;

        if TTrans.ItemIndex = 2 then
        begin
          datos.ZInventarioCONCEPTOID.Value := 6;
          datos.ZInventarioSALIDA.Value := datos.ZDdescargaCANTIDAD.Value *
            (datos.qCodMinCANTEMP.Value);
          datos.ZInventarioENTRADA.Value := 0.00;
          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;
        end;

      end
      else
      begin
        with numeroinventario do
        begin
          Close;
          sql.Clear;
          sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
          Open;
        end;

        datos.ZInventario.Insert;
        datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
        datos.ZInventarioFECHA.Value := now();
        datos.ZInventarioIDTIENDA.Value := AsignaTienda;
        datos.ZInventarioCOD_ART.Value := datos.ZDdescargaCOD_ART.Value;
        datos.ZInventarioLIN.Value := AsignaLote;

        if TTrans.ItemIndex = 0 then
        begin
          datos.ZInventarioCONCEPTOID.Value := 5;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZDdescargaCANTIDAD.Value;
          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;
        end;
        if TTrans.ItemIndex = 1 then
        begin
          datos.ZInventarioCONCEPTOID.Value := 6;
          datos.ZInventarioSALIDA.Value := datos.ZDdescargaCANTIDAD.Value;
          datos.ZInventarioENTRADA.Value := 0.00;
          datos.ZInventarioCOSTO_UN.Value := 1;
          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;
        end;

        if TTrans.ItemIndex = 2 then
        begin
          datos.ZInventarioCONCEPTOID.Value := 6;
          datos.ZInventarioSALIDA.Value := datos.ZDdescargaCANTIDAD.Value;
          datos.ZInventarioENTRADA.Value := 0.00;
          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;
        end;

        datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;

      end;
      next;
    end;
  end;

  if TTrans.ItemIndex = 2 then
  begin
    with datos.ZDdescarga do
    begin
      first;

      while not eof do
      begin

        with datos.MantArt do
        begin
          Close;
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
          sql.Add('left join man_provedores j On a.cod_prov2 = J.cod_prov');
          sql.Add('where a.cod_Art =:oo');
          params[0].Value := datos.ZDdescargaCOD_ART.Value;
          Open;
        end;

        /// // ******    Crear Lote
        if datos.ZDdescargaLOTE.Value = 'SI' then
        begin

          LoteCOd := LoteCOd + 1;
          datos.QMlote.Open;
          datos.QMlote.Append;
          datos.QMloteIDARTICULO.Value := datos.ZDdescargaCOD_ART.Value;
          datos.QMloteESTADO.Value := 1;
          datos.QMloteEXIS_INI.Value := datos.ZDdescargaCANTIDAD.Value;
          datos.QMloteNO_LOTE.Value := 'AJ00' +
            iNTtOSTR(numeroinventarioGEN_ID.Value);
          datos.QMloteFV.Value := datos.ZDdescargaFV.Value;
          datos.QMloteCANT.Value := datos.ZDdescargaCANTIDAD.Value;
          datos.QMloteLIN.Value := AsignaLote;
          datos.QMlote.ApplyUpdates;
        end;

        /// / ******  Fin

        if datos.MantArtOPCIONES_BOLA.Value = 'Si' then
        begin

          with datos.QCodMin do
          begin
            Close;
            sql.Clear;
            sql.Add('select * from SP_EQMINIMO(:no)');
            params[0].Value := datos.ZDdescargaCOD_ART.Value;
            Open;
          end;

          with numeroinventario do
          begin
            Close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            Open;
          end;

          datos.ZInventario.Insert;
          datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          datos.ZInventarioFECHA.Value := now();
          datos.ZInventarioIDTIENDA.Value := AsignaTienda;
          datos.ZInventarioCOD_ART.Value := datos.qCodMinCODIGOMINIMO.Value;
          datos.ZInventarioCONCEPTOID.Value := 2;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZDdescargaCANTIDAD.Value *
            (datos.qCodMinCANTEMP.Value);
          datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
          datos.ZInventarioCOD_ALM.Value := StrToInt(Edit1.Text);
          datos.ZInventarioLIN.Value := AsignaLote;
        end
        else
        begin

          with numeroinventario do
          begin
            Close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            Open;
          end;

          datos.ZInventario.Insert;
          datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          datos.ZInventarioFECHA.Value := now();
          datos.ZInventarioIDTIENDA.Value := AsignaTienda;
          datos.ZInventarioCOD_ART.Value := datos.ZDdescargaCOD_ART.Value;
          datos.ZInventarioCONCEPTOID.Value := 2;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZDdescargaCANTIDAD.Value;
          datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
          datos.ZInventarioCOD_ALM.Value := StrToInt(Edit1.Text);
          datos.ZInventarioLIN.Value := AsignaLote;

        end;

        next;
      end;
    END;
  END;

  if application.MessageBox('Deseas Imprimir Este Recibo Conduce', 'Precausion',
    Mb_YesNo + MB_ICONQUESTION) = Id_yes then
  begin
    // recibo.variables['varfecha1']:=quotedstr(dbedit2.text);
    Panel7.Visible := true;

  end
  else
  begin

    datos.ZInventario.ApplyUpdates;
    datos.Malmacen.ApplyUpdates;

    datos.Data.Commit;

    datos.ZDdescarga.Close;
    datos.ZMDescarga.Close;
    datos.MantArt.Close;

    cxButton2.Enabled := true;
    cxButton3.Enabled := false;
    cxButton4.Enabled := false;
    Opdetalle.Enabled := false;

    Cod_TXT.Clear;
    Arti_TXT.Clear;
    Cant_TXT.Value := 1;
    Edit1.Clear;
    Edit2.Clear;

  end;

end;

procedure TFrmDescarga.btnInsertarClick(Sender: TObject);
begin

  if datos.ZMDescargaNOMBREALMACEN.Value = '' then
  begin
    Crear_Mensages('Error', 'No hay almacen', 'Debes seleccionar el almacen',
      ExtractFilePath(application.ExeName) + '\imagenes\aviso\error.png', 'OK');

  end
  else
  begin

    if (edtTipo.Text = 'Lote') and (edFechaVencimiento.Text = '') then
    begin
      Crear_Mensages('Error', 'Articulo Lote Asignado ',
        'Debes Introducir Fecha de Vencimiento',
        ExtractFilePath(application.ExeName) +
        '\imagenes\aviso\error.png', 'OK');
      edFechaVencimiento.SetFocus;
    end
    else
    begin

      datos.ZDdescarga.Open;

      with QDDescarga do
      begin
        Close;
        sql.Clear;
        sql.Add('select gen_id(GEN_DDESCARGAR_ID, 1) from RDB$DATABASE');
        Open;
      end;

      datos.ZDdescarga.Insert;
      datos.ZDdescargaid.Value := QDDescargaGEN_ID.Value;

      datos.ZDdescargaCOD_ART.Value := StrToInt(edtCodigo.Text);

      datos.ZDdescargaARTICULO.Value := Arti_TXT.Text;

      datos.ZDdescargaCANTIDAD.Value := Cant_TXT.Value;
      datos.ZDdescargaESTADO.Value := 1;
      datos.ZDdescargaIMPUESTO.Value := 0.00;
      datos.ZDdescargaCOSTO.Value := edtCosto.Value;

      datos.ZDdescargaTOTAL.Value := datos.ZDdescargaCANTIDAD.Value *
        (datos.ZDdescargaIMPUESTO.Value + datos.ZDdescargaCOSTO.Value);
      datos.ZDdescargaLIN.Value := AsignaLote;
      datos.ZDdescargaFV.Text := edFechaVencimiento.Text;
      datos.ZDdescargaLOTE.Value := edtTipo.Text;

      if StrToFloat(edtExistencia.Text) > 0.00 then
      begin
        datos.ZDdescargaEXX.Value := StrToFloat(edtExistencia.Text);
      end
      else
      begin
        datos.ZDdescargaEXX.Value := 0.00;
      end;

      datos.ZDdescarga.Post;

      Cod_TXT.Clear;
      Arti_TXT.Clear;
      Cant_TXT.Value := 1;
      if edFechaVencimiento.Visible = true then
      begin
        edFechaVencimiento.Clear;
      end;

      edtImpuesto.Value := 0.00;
      edtCosto.Value := 0.00;

      Cod_TXT.SetFocus;

      // cxButton1.Enabled := false;

    end;
  end;
end;

procedure TFrmDescarga.btnnuevoClick(Sender: TObject);
begin
  OpM.Enabled := true;
  with Qnumero do
  begin
    Close;
    sql.Clear;
    sql.Add('select gen_id(GEN_MDESCARGAR_ID, 1) from RDB$DATABASE');
    Open;

  end;

  btnInsertar.Enabled := false;

  datos.ZMDescarga.Open;
  datos.ZMDescarga.Insert;
  datos.ZMDescargaMDESCARGARID.Value := QnumeroGEN_ID.Value;
  datos.ZMDescargaFECHA.Value := now();
  datos.ZMDescargaUSUARIOID.Value := AsignaUsuario;

  with Zqusuario do
  begin
    Close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.Add('where a.usuarioID =:pp');
    params[0].Value := AsignaUsuario;
    Open;
  end;

  datos.ZMDescargaNOMBRES_EMP.Value := ZqusuarioNOMBRES_EMP.Value;
  ZcoceptoDes.Open;

  cxButton2.Enabled := false;
  cxButton3.Enabled := true;
  cxButton4.Enabled := true;
  Opdetalle.Enabled := true;

end;

procedure TFrmDescarga.btnsalirClick(Sender: TObject);
begin

  datos.ZMDescarga.CancelUpdates;
  datos.ZDdescarga.CancelUpdates;
  datos.Data.Rollback;

  datos.ZMDescarga.Close;
  datos.ZDdescarga.Close;

  cxButton2.Enabled := true;
  cxButton3.Enabled := false;
  cxButton4.Enabled := false;
  Cod_TXT.Clear;
  Arti_TXT.Clear;
  Cant_TXT.Value := 1;
  Close;

  OpM.Enabled := false;

end;

procedure TFrmDescarga.Cant_TXTExit(Sender: TObject);
begin

  edtImpuesto.SetFocus;

end;

procedure TFrmDescarga.Cant_TXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_return then
  begin

    edtImpuesto.SetFocus;
    btnInsertar.Enabled := true;
  end;
end;

procedure TFrmDescarga.Cod_TXTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Q: TZQuery;
begin
  if Key = VK_return then
  begin

    Q := TZQuery.Create(nil);
    try
      Q.Connection := datos.Data;
      Q.sql.Add(
        'select a.moneda, a.ubicacion, a.cod_art,upper(a.articulo) articulo ,a.cod_cat,a.politica,a.modelo, a.codigobarra, a.referencia,  a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra, a. lote, a.serie,');
      Q.sql.Add('sum(b.entrada - b.salida) Existencia');
      Q.sql.Add('from mtartuculos a');
      Q.sql.Add('left join minventario b On a.cod_art = b.cod_art');
      Q.sql.Add('where a.codigobarra =:idd');
      Q.sql.Add(
        'group by a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt, a.codigobarra,a.itbis,a.costo, a.referencia,  taza_compra, a.ubicacion,  a. lote, a.serie');
      Q.params[0].Value := Cod_TXT.Text;

      Q.Open;

      Arti_TXT.Text := Q.FieldByName('ARTICULO').Value;
      Cant_TXT.Text := '1';
      // edtImpuesto.Text          := 0.00;
      edtCosto.Value := Q.FieldByName('costo').Value;
      edtCodigo.Text := Q.FieldByName('cod_art').Value;

      // ShowMessage(''+q.FieldByName('lote').Text);
      if Q.FieldByName('Existencia').Value > 0.00 then
      begin
        edtExistencia.Text := FloatToStr(Q.FieldByName('Existencia').Value);
      end
      else
      begin
        edtExistencia.Text := '0.00';
      end;

      if Q.FieldByName('lote').Value = 'SI' then
      begin
        edtTipo.Text := 'Lote';
        lblFechaVencimiento.Visible := true;
        edFechaVencimiento.Visible := true;

      end
      else
      begin

        lblFechaVencimiento.Visible := false;
        edFechaVencimiento.Visible := false;

      end;

      if Q.FieldByName('Serie').Value = 'SI' then
      begin

        edtTipo.Text := 'Serie';
      end;

      Cant_TXT.SetFocus;

    finally
      Q.Close;
      Q.Free;
    end;
  end;

end;

procedure TFrmDescarga.cxButton7Click(Sender: TObject);
begin
  if FrmBuscarArticulos = nil then
  begin
    FrmBuscarArticulos := tFrmBuscarArticulos.Create(self);
    FrmBuscarArticulos.Edit2.Text := 'DESCARGAR';
    FrmBuscarArticulos.showmodal;
  end;
end;

procedure TFrmDescarga.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  if TTrans.ItemIndex = 0 then
  begin
    datos.ZMDescarga.Edit;
    datos.ZMDescargaCOD_ALM.Value := almacenesID.Value;
    datos.ZMDescargaNOMBREALMACEN.Value := almacenesDESCRIPCION.Value;
    cxGrid2.Visible := false;
  end;
  if TTrans.ItemIndex = 1 then
  begin
    datos.ZMDescarga.Edit;
    datos.ZMDescargaCOD_ALM.Value := almacenesID.Value;
    datos.ZMDescargaNOMBREALMACEN.Value := almacenesDESCRIPCION.Value;
    cxGrid2.Visible := false;
  end;

  if (TTrans.ItemIndex = 2) and (Edit3.Text = '2') then
  begin

    Edit1.Text := almacenesID.Text;
    Edit2.Text := almacenesDESCRIPCION.Value;
    cxGrid2.Visible := false;
  end;

  if (TTrans.ItemIndex = 2) and (Edit3.Text = '1') then
  begin

    datos.ZMDescarga.Edit;
    datos.ZMDescargaCOD_ALM.Value := almacenesID.Value;
    datos.ZMDescargaNOMBREALMACEN.Value := almacenesDESCRIPCION.Value;
    cxGrid2.Visible := false;
  end;
  Edit3.Clear;
end;

procedure TFrmDescarga.DBGrid2ColExit(Sender: TObject);
begin
  findArti;
end;

procedure TFrmDescarga.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;
  SCapt: string;

begin
  //
  // if datos.ZDdescargaLOTE.Value = 'SI' then
  // begin
  // DBGrid1.Canvas.Font.Style := [fsBold];
  // DBGrid1.Canvas.Font.color := clWebBeige;
  // end;
  //
  // // Call the default drawing now as all we have done is changed
  // // the color of thins.  If we wanted to draw in different
  // // styles like 3D tehn we would have to handle that aswell
  // DBGrid2.DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure TFrmDescarga.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Q: TZQuery;
begin
  // if key = vk_return then
  // begin
  // if dbgrid2.SelectedIndex = 0 then
  // begin
  //
  //
  // findArti;
  // end;
  // end;
  //
  // if key= VK_DOWN then
  // begin
  // datos.ZDdescarga.Edit;
  // datos.ZDdescarga.ApplyUpdates;
  // dbgrid2.Fields[0].FocusControl;
  // end;

end;

procedure TFrmDescarga.edFechaVencimientoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_return then
  begin
    btnInsertar.Click;
  end;
end;

procedure TFrmDescarga.edtCostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_return then
  begin
    if edtTipo.Text = 'Lote' then
    begin
      edFechaVencimiento.SetFocus;
    end
    else
    begin
      btnInsertar.Click;
    end;

  end;
end;

procedure TFrmDescarga.edtImpuestoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_return then
  begin
    edtCosto.SetFocus;
  end;
end;

procedure TFrmDescarga.findArti;
var
  Q: TZQuery;
begin
  //
  if DBGrid2.Selectedindex = 2 then
  begin
    datos.ZDdescarga.Edit;
    datos.ZDdescarga.FieldByName('Total').Value :=
      datos.ZDdescarga.FieldByName('costo').Value * datos.ZDdescarga.FieldByName
      ('Cantidad').Value
  end;

  //

  if DBGrid2.Selectedindex = 0 then
  begin

    Q := TZQuery.Create(nil);

    try
      Q.Connection := datos.Data;
      Q.sql.Add(
        'select a.moneda, a.ubicacion, a.cod_art,upper(a.articulo) articulo ,a.cod_cat,a.politica,a.modelo, a.codigobarra, a.referencia,  a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra, a. lote, a.serie,');
      Q.sql.Add('sum(b.entrada - b.salida) Existencia');
      Q.sql.Add('from mtartuculos a');
      Q.sql.Add('left join minventario b On a.cod_art = b.cod_art');
      Q.sql.Add('where a.codigobarra =:idd');
      Q.sql.Add(
        'group by a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt, a.codigobarra,a.itbis,a.costo, a.referencia,  taza_compra, a.ubicacion,  a. lote, a.serie');
      Q.params[0].Value := DBGrid2.Fields[0].Value;
      // datos.ZDdescarga.FieldByName('cod_art').Value;

      Q.Open;
      datos.ZDdescarga.Edit;
      with QDDescarga do
      begin
        Close;
        sql.Clear;
        sql.Add('select gen_id(GEN_DDESCARGAR_ID, 1) from RDB$DATABASE');
        Open;
      end;
      datos.ZDdescargaDDESCARGARID.Value := QDDescargaGEN_ID.Value;
      datos.ZDdescarga.FieldByName('ARTICULO').Value :=
        Q.FieldByName('ARTICULO').Value;
      datos.ZDdescarga.FieldByName('Costo').Value :=
        Q.FieldByName('costo').Value;

      if Q.FieldByName('Lote').Value = 'SI' then
      begin
        DBGrid2.Fields[3].ReadOnly := true;
        datos.ZDdescarga.Edit;
        datos.ZDdescarga.FieldByName('Lote').Value := 'SI';
      end
      else
      begin
        DBGrid2.Fields[3].ReadOnly := false;
        datos.ZDdescarga.Edit;
        datos.ZDdescarga.FieldByName('Lote').Value := 'NO';
      end;
      datos.ZDdescarga.Edit;
      datos.ZDdescarga.FieldByName('cantidad').Value := 0.00;
      datos.ZDdescarga.FieldByName('Total').Value := 0.00;

    finally
      Q.Close;
      Q.Free;

      DBGrid2.Fields[2].FocusControl;
      // DBGrid1.SelectedCell := Table1.FieldByName('SomeField');
    end;
  end;

  // datos.ZDdescarga.Edit;
  // datos.ZDdescarga.ApplyUpdates;

end;

procedure TFrmDescarga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmDescarga := nil;
  Action := caFree;
end;

procedure TFrmDescarga.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
  begin
    if cxButton2.Enabled = false then
    BEGIN

      if FrmBuscarArticulos = nil then
      begin
        FrmBuscarArticulos := tFrmBuscarArticulos.Create(self);
        FrmBuscarArticulos.Edit2.Text := 'DESCARGAR';
        FrmBuscarArticulos.showmodal;
      end;
    end;
  end;
end;

procedure TFrmDescarga.FormShow(Sender: TObject);
begin
  // datos.ZMDescarga.Open;
  // datos.ZDdescarga.Open;
  Panel7.Visible := false;
  btnInsertar.Enabled := false;
end;

procedure TFrmDescarga.SpeedButton1Click(Sender: TObject);
begin
  almacenes.Open;
  cxGrid2.Visible := true;
  cxGrid2.top := 99;
  cxGrid2.left := 281;
  Edit3.Text := '1';
end;

procedure TFrmDescarga.SpeedButton2Click(Sender: TObject);
begin
  almacenes.Open;
  cxGrid2.Visible := true;
  cxGrid2.top := 99;
  cxGrid2.left := 560;
  Edit3.Text := '2';
end;

procedure TFrmDescarga.SpeedButton3Click(Sender: TObject);
begin
  if opImprime.ItemIndex = 0 then
  begin
    recibo.PrepareReport(true);
    recibo.ShowPreparedReport;

  end
  else
  begin
    fxTicket.PrepareReport(true);
    fxTicket.ShowPreparedReport;
  end;

  Panel7.Visible := false;

  datos.ZInventario.ApplyUpdates;
  datos.Malmacen.ApplyUpdates;

  datos.Data.Commit;

  datos.ZDdescarga.Close;
  datos.ZMDescarga.Close;
  datos.MantArt.Close;

  cxButton2.Enabled := true;
  cxButton3.Enabled := false;
  cxButton4.Enabled := false;
  Opdetalle.Enabled := false;

  Cod_TXT.Clear;
  Arti_TXT.Clear;
  Cant_TXT.Value := 1;
  Edit1.Clear;
  Edit2.Clear;

end;

procedure TFrmDescarga.TTransPropertiesChange(Sender: TObject);
begin
  if TTrans.ItemIndex = 0 then
  BEGIN
    cxDBLookupComboBox1.Enabled := false;
    SpeedButton2.Enabled := false;
  END;
  if TTrans.ItemIndex = 1 then
  begin
    cxDBLookupComboBox1.Enabled := true;
    SpeedButton2.Enabled := false;
  end;

  if TTrans.ItemIndex = 2 then
  begin
    cxDBLookupComboBox1.Enabled := false;
    SpeedButton2.Enabled := true;
  end;

end;

end.
