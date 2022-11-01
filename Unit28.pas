unit Unit28;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, cxGroupBox, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Data.DB, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxCalc, Vcl.Menus, cxButtons, ZAbstractRODataset, ZDataset,
  frxClass, frxDBSet, cxPCdxBarPopupMenu, cxPC, cxLabel, cxRadioGroup,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.ExtCtrls, cxMemo, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier;

type
  TFrmAjuste = class(TForm)
    OpM: TcxGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    Label4: TLabel;
    Opdetalle: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsAjusteD: TDataSource;
    cxGrid1DBTableView1CANT: TcxGridDBColumn;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1MONTOCOSTO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALIMP: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALCOSTO: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULOSNOM: TcxGridDBColumn;
    Cod_TXT: TcxTextEdit;
    Arti_TXT: TcxTextEdit;
    Cant_TXT: TcxCalcEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    numero: TZReadOnlyQuery;
    numeroMAX: TIntegerField;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    numeroD: TZReadOnlyQuery;
    numeroDMAX: TIntegerField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    recibo: TfrxReport;
    detalle: TfrxDBDataset;
    master: TfrxDBDataset;
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
    Qproveedor: TZReadOnlyQuery;
    DsqProvee: TDataSource;
    ZExistencia: TZReadOnlyQuery;
    ZExistenciaIDTIENDA: TIntegerField;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaPRECIO_A: TFloatField;
    ZExistenciaPRECIO_B: TFloatField;
    ZExistenciaPRECIO_D: TFloatField;
    ZExistenciaEXISTENCIA: TFloatField;
    cxGroupBox2: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    QCompras: TZReadOnlyQuery;
    DsqCompra: TDataSource;
    QReposicion: TZReadOnlyQuery;
    DsReposicion: TDataSource;
    cxGridDBTableView2FECHA: TcxGridDBColumn;
    cxGridDBTableView2NOMBRES_EMP: TcxGridDBColumn;
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
    cxGroupBox3: TcxGroupBox;
    cxButton8: TcxButton;
    op2: TcxRadioGroup;
    cxTextEdit2: TcxTextEdit;
    cxLabel2: TcxLabel;
    Panel2: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    inicio2: TcxDateEdit;
    fin2: TcxDateEdit;
    config: TfrxDBDataset;
    QproveedorCOD: TIntegerField;
    QproveedorCOD_FAB: TWideStringField;
    QproveedorDESCRIPCION: TWideStringField;
    QproveedorCONTACTO: TWideStringField;
    QproveedorTELEFONO: TWideStringField;
    QproveedorFAX: TWideStringField;
    QproveedorEMAIL: TWideStringField;
    QproveedorDIRECCION: TWideStringField;
    Edit1: TEdit;
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
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxButton5: TcxButton;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    MaxAlmacen: TZReadOnlyQuery;
    MaxAlmacenMAX: TIntegerField;
    DsAlmacenes: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxButton7: TcxButton;
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure op2Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure MONTOCOSTO_TXTExit(Sender: TObject);
    procedure TOTALIMPUESTO_TXTExit(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton7Click(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAjuste: TFrmAjuste;

implementation

uses
unit2, unit19, unit9, tools, Unit26, Unit63;
{$R *.dfm}



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


procedure TFrmAjuste.cxButton1Click(Sender: TObject);
begin


if cxDBComboBox1.ItemIndex = 0 then
  begin
  datos.AjusteD.Open;
with numerod do
  begin
    close;
    sql.Clear;
    sql.Add('select max(detalleID) from DETALLE_AJUSTE');
    open;
  end;

  datos.AjusteD.Insert;
  datos.AjusteDDETALLEID.Value := numerodmax.Value + 1;
  datos.AjusteDCOD_ART.Value := StrToInt(cod_txt.Text);
  datos.AjusteDARTICULOSNOM.Value := arti_txt.Text;
  datos.AjusteDCANT.Value := cant_txt.Value;
  datos.AjusteDESTADO.Value :=1;
  datos.AjusteDMONTOCOSTO.Value := 0.00;


  datos.AjusteDTOTALIMP.Value := 0.00;
  datos.AjusteDTOTALCOSTO.Value := 0.00;
  datos.AjusteDMONEDA.Value := EDIT1.Text;
  datos.AjusteD.Post;
  cod_txt.Clear;
  arti_txt.Clear;
  cant_txt.Value := 1;

  end;


cxButton1.Enabled := false;

end;

procedure TFrmAjuste.cxButton2Click(Sender: TObject);
begin

opm.Enabled := true;
OpDetalle.Enabled := true;


with numero do
 begin
   close;
   sql.Clear;
   sql.Add('select max(noid) from MASTER_AJUSTE');
   open;
 end;

 datos.ZAjusteM.Open;
 datos.ZAjusteM.Insert;
 datos.ZAjusteMNOID.Value := numeromax.Value + 1;
 datos.ZAjusteMFECHA.Value := now();
 datos.ZAjusteMUSUARIOID.Value := asignausuario;
 datos.ZAjusteMTIENDAID.Value := asignatienda;

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
 cxDBComboBox1.ItemIndex := 0;

 cxButton2.Enabled := false;
 cxButton3.Enabled := true;
 cxButton4.Enabled := true;
 cxDBComboBox1.Enabled := true;


end;
procedure rebajar_principal;
begin


end;


procedure TFrmAjuste.cxButton3Click(Sender: TObject);
var
totalCoP : double;
TotalCoEx :Double;
begin

if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0] = 0 then
  begin
    Showmessage('**No existe Items disponiblos para guardad**');
  end else begin


    datos.ZAjusteM.Edit;
    datos.ZAjusteMMONTOPAGO.Value := 0.00;

    if datos.ZAjusteMPLAZO.Value > 0 then
      begin
          datos.ZAjusteMMONTOPEND.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
      end else begin
          datos.ZAjusteMMONTOPEND.Value := 0.00;
      end;

    datos.ZAjusteMMONTOFACT.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
    datos.ZAjusteMCAMBIOMONEDA.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] * datos.ZUconfiguracionTAZA.Value;


    datos.ZAjusteM.ApplyUpdates;


    datos.AjusteD.ApplyUpdates;


///************** Actualiza Inventario
 datos.ZInventario.Open;

    with datos.AjusteD do
      begin
        first;

        while not eof do
           begin

             ///****** Actualiza Costos *******
              with zexistencia do
                    begin
                      close;
                      sql.Clear;
                      sql.Add('select a.idtienda,a.cod_art, b.articulo, b.Precio_A, b.Precio_B, b.pRecio_d, sum(a.entrada - a.salida) Existencia from minventario a');
                      sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                      //sql.Add('where (b.cod_cat <> 4)');
                      sql.Add('where a.cod_art =:pp');
                      sql.Add('group by a.idtienda,a.cod_art, b.articulo, b.Precio_A, b.Precio_B, b.pRecio_d');
                      params[0].Value := datos.AjusteDCOD_ART.Value;
                      open;
                    end;

                   // showmessage(''+ FloatToStr(zexistenciaexistencia.Value));


              with datos.MantArt do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('select a.*,b.precio1,b.precio2,b.precio3,c.signo from mtartuculos a');
                        sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
                        sql.Add('inner join tb_moneda c On a.idmoneda = c.id');
                        sql.Add('where a.cod_art =:oo');
                        params[0].Value :=datos.AjusteDCOD_ART.Value;
                        open;
                      end;


                 if cxDBComboBox1.ItemIndex = 0 then begin
//                 showmessage(''+floatToStr(zexistenciaexistencia.Value));
                 datos.MantArt.Edit;
                 datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value + datos.AjusteDCANT.Value;
                 end;

                  if cxDBComboBox1.ItemIndex = 1 then begin

                  datos.MantArt.Edit;

                  if datos.AjusteDmoneda.Value ='NO' then BEGIN

                          datos.MantArtCOSTO.Value := datos.AjusteDMONTOCOSTO.Value * DATOS.ZUconfiguracionTAZA.Value;

                          TotalCoEx := zexistenciaexistencia.Value + datos.AjusteDCANT.Value;
                          totalCoP  := (zexistenciaexistencia.Value * (datos.MantArtCOSTO.Value)) / TotalcoEx;
                          datos.MantArtCOSTO_PR.Value := totalCop;
                          datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value + datos.AjusteDCANT.Value;


                  END;

                  if datos.AjusteDmoneda.Value ='SI' then BEGIN

                          datos.MantArtCOSTO.Value := datos.AjusteDMONTOCOSTO.Value;
                          TotalCoEx := zexistenciaexistencia.Value + datos.AjusteDCANT.Value;
                          totalCoP  := (zexistenciaexistencia.Value * datos.MantArtCOSTO.Value) / TotalcoEx;

                          datos.MantArtCOSTO_PR.Value := totalCop;

                          datos.MantArtSTOCK.Value := datos.MantArtSTOCK.Value + datos.AjusteDCANT.Value;

                  END;
                  end;

                  datos.MantArt.ApplyUpdates;
///****** Fin actualiza Costos ******

        if datos.ZAjusteMNOMBREALMACEN.Value = '' then begin

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
              datos.ZInventarioCOD_ALM.Value        := 1;

              if cxDBComboBox1.ItemIndex = 0 then begin
              datos.ZInventarioCONCEPTOID.Value     := 5;
              end;

              if cxDBComboBox1.ItemIndex = 1 then begin
              datos.ZInventarioCONCEPTOID.Value     := 3;
              end;


              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
              datos.ZInventarioSALIDA.Value         := 0.00;
              datos.ZInventarioENTRADA.Value        := DATOS.AjusteDCANT.Value;

with datos.Malmacen do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select * from man_almacen');
                  sql.Add('where alm_c =:op1');
                  sql.Add('and cod_art =:op2');
                  params[0].Value := datos.ZAjusteMCOD_ALM.Value;
                  params[1].Value := datos.AjusteDCOD_ART.Value;
                  open;
                end;

           if datos.Malmacen.RecordCount = 0 then
                  begin

                     with maxalmacen do
                        begin
                          close;
                          sql.clear;
                          sql.Add('select max(COD_ALMACEN) from MAN_ALMACEN');
                          open;
                        end;

                     datos.Malmacen.Insert;
                     datos.MalmacenCOD_ALMACEN.Value :=maxalmacenmax.value + 1;
                     datos.MalmacenALM_C.Value := 1;
                     datos.MalmacenDESCRIPCION.Value := 'PRINCIPAL';
                     DATOS.MalmacenEXISTENCIA.Value := DATOS.MalmacenEXISTENCIA.Value + DATOS.AjusteDCANT.Value;
                     datos.MalmacenCOD_ART.Value := datos.AjusteDCOD_ART.Value;
               end;

                if datos.Malmacen.RecordCount > 0 then
                  begin
                     datos.Malmacen.edit;
                     DATOS.MalmacenEXISTENCIA.Value := DATOS.MalmacenEXISTENCIA.Value + DATOS.AjusteDCANT.Value;
                  end;


       datos.Malmacen.ApplyUpdates;
        end else begin



with datos.Malmacen do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select * from man_almacen');
                  sql.Add('where alm_c =:op1');
                  sql.Add('and cod_art =:op2');
                  params[0].Value := datos.ZAjusteMCOD_ALM.Value;
                  params[1].Value := datos.AjusteDCOD_ART.Value;
                  open;
                end;

           if datos.Malmacen.RecordCount = 0 then
                  begin

                     with maxalmacen do
                        begin
                          close;
                          sql.clear;
                          sql.Add('select max(COD_ALMACEN) from MAN_ALMACEN');
                          open;
                        end;

                     datos.Malmacen.Insert;
                     datos.MalmacenCOD_ALMACEN.Value :=maxalmacenmax.value + 1;
                     datos.MalmacenALM_C.Value := datos.ZAjusteMCOD_ALM.Value;
                     datos.MalmacenDESCRIPCION.Value := datos.ZAjusteMNOMBREALMACEN.Value;
                     DATOS.MalmacenEXISTENCIA.Value := DATOS.MalmacenEXISTENCIA.Value + DATOS.AjusteDCANT.Value;
                     datos.MalmacenCOD_ART.Value := datos.AjusteDCOD_ART.Value;
               end;

                if datos.Malmacen.RecordCount > 0 then
                  begin
                     //   showmessage(''+floatToStr(DATOS.AjusteDCANT.Value));
                     datos.Malmacen.edit;
                     DATOS.MalmacenEXISTENCIA.Value := DATOS.MalmacenEXISTENCIA.Value + DATOS.AjusteDCANT.Value;
                  end;
              datos.Malmacen.ApplyUpdates;
        end;


               next;
           end;
        end;

     datos.ZInventario.ApplyUpdates;
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
    cxButton2.Enabled := true;
    cxButton3.Enabled := false;
    cxButton4.Enabled := false;

     cod_txt.Clear;
  arti_txt.Clear;
  cant_txt.Value := 1;
 

  qcompras.Close;
  qcompras.Open;

  qReposicion.Close;
  qReposicion.Open;

  opm.Enabled := false;
  OpDetalle.Enabled := false;

  end;
end;

procedure TFrmAjuste.cxButton4Click(Sender: TObject);
begin
datos.AjusteD.CancelUpdates;
datos.ZAjusteM.CancelUpdates;
datos.Data.Rollback;

 datos.ZAjusteM.Close;
    datos.AjusteD.Close;

     cxButton2.Enabled := true;
     cxButton3.Enabled := false;
     cxButton4.Enabled := false;

   cod_txt.Clear;
  arti_txt.Clear;
  cant_txt.Value := 1;


  opm.Enabled := false;
  OpDetalle.Enabled := false;
end;

procedure TFrmAjuste.cxButton5Click(Sender: TObject);
begin
        FrmBuscarArticulos.edit2.Text := 'REPOSICION';
        FrmBuscarArticulos.showmodal;
end;

procedure TFrmAjuste.cxButton6Click(Sender: TObject);
begin
datos.AjusteD.CancelUpdates;
datos.ZAjusteM.CancelUpdates;
datos.Data.Rollback;

 datos.ZAjusteM.Close;
    datos.AjusteD.Close;

     cxButton2.Enabled := true;
     cxButton3.Enabled := false;
     cxButton4.Enabled := false;
       cod_txt.Clear;
  arti_txt.Clear;
  cant_txt.Value := 1;

     close;
end;

procedure TFrmAjuste.cxButton7Click(Sender: TObject);
begin
  almacenes.Open;
cxgrid2.Visible := true;
end;

procedure TFrmAjuste.cxButton8Click(Sender: TObject);
begin
if op2.ItemIndex = 0 then
  begin

with qreposicion do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, e.nombre_pro from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join man_provedores e On a.provid = e.COD_PROV');
    sql.Add('where c.nombres_emp like '+#39+'%'+cxTextedit2.Text+'%'+#39);
    sql.Add('and a.condicion =:op');
    params[0].Value := 'Reposicion';
    open;
  end;
end;



end;

procedure TFrmAjuste.cxDBComboBox1PropertiesChange(Sender: TObject);
begin
if cxDBComboBox1.ItemIndex = 0 then
  begin
  //  opcompra.Visible := false;
  //  opdetalle.Height := 379;
  //  cxgrid1.Height := 313;
  //  opdetalle.Top := 71;

    cxDBComboBox1.Enabled := false;
    //label21.Visible := false;
   // combomoneda.Visible := false;
  end;

  if cxDBComboBox1.ItemIndex = 1 then
  begin
  //  opcompra.Visible := true;
   // opdetalle.Height := 307;
   // opdetalle.Top := 152;
   // cxgrid1.Height := 232;

    cxDBComboBox1.Enabled := false;
    //ACTUALIZAprecio.ItemIndex :=0;
    //label21.Visible := true;
    //combomoneda.Visible := true;
   // combomoneda.ItemIndex := 0;

  end;

end;

procedure TFrmAjuste.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin


if (AViewInfo.GridRecord.Values[7] = 'NO') then BEGIN
 //            ACanvas.Brush.Color := clMaroon;
 with cxGrid1DBTableView1 do
        begin

{          OptionsBehavior.BestFitMaxRecordCount :=
           ViewInfo.VisibleRecordCount;

          BeginUpdate;
 }
          VisibleColumns[3].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[3].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'US$,0.00;(US$,0.00)';
          end;

          VisibleColumns[4].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[4].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'US$,0.00;(US$,0.00)';
          end;

          VisibleColumns[5].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[5].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'US$,0.00;(US$,0.00)';
          end;


        end;

END;

if (AViewInfo.GridRecord.Values[7] = 'SI') then BEGIN
 //            ACanvas.Brush.Color := clMaroon;
 with cxGrid1DBTableView1 do
        begin

{          OptionsBehavior.BestFitMaxRecordCount :=
           ViewInfo.VisibleRecordCount;

          BeginUpdate;
 }
          VisibleColumns[3].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[3].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'RD$,0.00;(RD$,0.00)';
          end;

          VisibleColumns[4].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[4].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'RD$,0.00;(RD$,0.00)';
          end;

          VisibleColumns[5].PropertiesClass := TcxCurrencyEditProperties;  //Setting format and Alignment
          with TcxCurrencyEditProperties(VisibleColumns[5].Properties) do
          begin
            Alignment.Horz := taRightJustify;
            DisplayFormat := 'RD$,0.00;(RD$,0.00)';
          end;
   end;
 END;


end;

procedure TFrmAjuste.cxGrid1DBTableView1DblClick(Sender: TObject);
begin


  cod_txt.Text := IntToStr(datos.AjusteDCOD_ART.Value);
  arti_txt.Text := datos.AjusteDARTICULOSNOM.Value;
  cant_txt.Value := datos.AjusteDCANT.Value;
  datos.AjusteD.Edit;
  datos.AjusteD.Delete;
  datos.AjusteD.ApplyUpdates;
  cxButton1.Enabled := true;

end;

procedure TFrmAjuste.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
datos.ZAjusteM.Edit;
datos.ZAjusteMCOD_ALM.Value := almacenesid.Value;
datos.ZAjusteMNOMBREALMACEN.Value := almacenesdescripcion.Value;

cxgrid2.Visible := false;
end;

procedure TFrmAjuste.cxGrid3DBTableView1DblClick(Sender: TObject);
begin


with datos.ZAjusteM do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp,e.descripcion from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join fabricantes e On a.provid = e.COD');
    sql.Add('where a.noId =:op1');
    params[0].Value := qcomprasnoid.Value;
    open;
  end;
  datos.AjusteD.Open;
   cxButton2.Enabled := false;
   cxButton3.Enabled := false;
   cxButton4.Enabled := true;

end;

procedure TFrmAjuste.cxGridDBTableView1DblClick(Sender: TObject);
begin
//cxDBSpinEdit2.Value := qproveedorcod.Value;
//cxDBTextEdit2.Text := qproveedordescripcion.Value;

//cxgrid2.Visible := false;
qproveedor.close;
end;

procedure TFrmAjuste.cxGridDBTableView2DblClick(Sender: TObject);
begin

with datos.ZAjusteM do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, c.nombres_emp, d.descripcion, e.nombre_pro from master_ajuste a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado c On b.empleadoid = c.cod_emp1');
    sql.Add('left join tienda d On a.tiendaid = d.tiendaid');
    sql.Add('left join man_provedores e On a.provid = e.COD_PROV');
    sql.Add('where a.noId =:op1');
    params[0].Value := qReposicionNoID.Value;
    open;
  end;
  datos.AjusteD.Open;
   cxButton2.Enabled := false;
   cxButton3.Enabled := false;
   cxButton4.Enabled := true;
end;

procedure TFrmAjuste.op2Click(Sender: TObject);
begin
if op2.ItemIndex = 0 then
  begin
     PANEL2.Visible := false;
    label2.Caption := 'Introduce el Nombre de Usuario';
    CXTEXTedit2.SetFocus;
  end;

if op2.ItemIndex = 1 then
  begin
    PANEL2.Visible := TRUE;
  end;
end;

procedure TFrmAjuste.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := caFree;
end;

procedure TFrmAjuste.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f2 then
  begin
        FrmBuscarArticulos.edit2.Text := 'REPOSICION';
        FrmBuscarArticulos.showmodal;

  end;


  if key=vk_f9 then
    begin
      datos.ZAjusteM.Edit;
      datos.ZAjusteMMONTOPAGO.Value := 0.00;

    if datos.ZAjusteMPLAZO.Value > 0 then
      begin
          datos.ZAjusteMMONTOPEND.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
          datos.ZAjusteMFECHA_V.Value := datos.ZAjusteMFECHA_COMPRA.Value + datos.ZAjusteMPLAZO.Value + 1;
      end else begin
          datos.ZAjusteMMONTOPEND.Value := 0.00;
      end;

    datos.ZAjusteMMONTOFACT.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];
    datos.ZAjusteMCAMBIOMONEDA.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] * datos.ZUconfiguracionTAZA.Value;
    datos.ZAjusteM.ApplyUpdates;
    datos.Data.Commit;

    end;
end;

procedure TFrmAjuste.FormShow(Sender: TObject);
begin
qcompras.Close;
qcompras.Open;

qReposicion.Close;
qReposicion.Open;


end;

procedure TFrmAjuste.MONTOCOSTO_TXTExit(Sender: TObject);
begin
//totalcosto_txt.Value := cant_txt.Value * montocosto_txt.Value + totalimpuesto_txt.Value;
end;

procedure TFrmAjuste.TOTALIMPUESTO_TXTExit(Sender: TObject);
begin
///totalcosto_txt.Value := cant_txt.Value * montocosto_txt.Value + totalimpuesto_txt.Value;
end;

end.
