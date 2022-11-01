unit Unit70;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit2, Data.DB, ZAbstractRODataset,
  ZDataset, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, cxTimeEdit, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Menus, cxButtons,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxMemo, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls, system.DateUtils, cxCurrencyEdit, frxClass, frxDBSet;

type
  TFrmRma = class(TForm)
    cxGroupBox1: TcxGroupBox;
    numero: TZReadOnlyQuery;
    numeroGEN_ID: TLargeintField;
    DsRmaM: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    IbqClientes: TZReadOnlyQuery;
    IbqClientesCODIGO: TIntegerField;
    IbqClientesNOMBRES: TWideStringField;
    IbqClientesDIRECCION: TWideStringField;
    IbqClientesCEDULA: TWideStringField;
    IbqClientesTELEFONO: TWideStringField;
    IbqClientesCELULAR: TWideStringField;
    IbqClientesCOLOR: TWideStringField;
    IbqClientesCONTACTO: TWideStringField;
    IbqClientesRENGLONCNF: TWideStringField;
    IbqClientesTXTCNF: TWideStringField;
    IbqClientesCREDITOLIMITE: TFloatField;
    IbqClientesTIPO: TWideStringField;
    IbqClientesRNC: TWideStringField;
    IbqClientesCONDICION: TWideStringField;
    IbqClientesINICIO: TDateField;
    IbqClientesSUELDO: TFloatField;
    IbqClientesPAGOITB: TWideStringField;
    IbqClientesCREDITO: TWideStringField;
    IbqClientesBALANCE: TFloatField;
    IbqClientesESTADO: TWideStringField;
    IbqClientesMOVIL: TWideStringField;
    IbqClientesCODIGO_T: TWideStringField;
    IbqClientesCOMISION: TFloatField;
    IbqClientesNUMEROPIN: TWideStringField;
    IbqClientesTELEFONO3: TWideStringField;
    IbqClientesEMAIL: TWideStringField;
    IbqClientesRUTA_ID: TIntegerField;
    IbqClientesREGIONID: TIntegerField;
    IbqClientesPROVINCIAID: TIntegerField;
    IbqClientesMUNICIPIOID: TIntegerField;
    IbqClientesMUSADOS: TFloatField;
    IbqClientesMPENDIENTES: TFloatField;
    op11: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    Label8: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label9: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    qEmpleado: TZReadOnlyQuery;
    cxButton3: TcxButton;
    Label10: TLabel;
    qEmpleadoCOD_EMP: TWideStringField;
    qEmpleadoNOMBRES_EMP: TWideStringField;
    qEmpleadoDIRECCION: TWideStringField;
    qEmpleadoCEDULA: TWideStringField;
    qEmpleadoTELEFONO: TWideStringField;
    qEmpleadoCELULAR: TWideStringField;
    qEmpleadoTIPO: TWideStringField;
    qEmpleadoLOGIN: TWideStringField;
    qEmpleadoPIN: TWideStringField;
    qEmpleadoMODIFICAR_ARTICULOS: TWideStringField;
    qEmpleadoELIMINAR: TWideStringField;
    qEmpleadoIMPRIMIR: TWideStringField;
    qEmpleadoCONTABILIDAD: TWideStringField;
    qEmpleadoMODIFICAR_FACTURAS: TWideStringField;
    qEmpleadoMODIFICAR_UTILIDAD: TWideStringField;
    qEmpleadoIMPRIMIR_CUADRE: TWideStringField;
    qEmpleadoIMPRIMIR_FINACIERO: TWideStringField;
    qEmpleadoCOD_EMP1: TIntegerField;
    qEmpleadoINICIO: TDateField;
    qEmpleadoSUELDO: TFloatField;
    qEmpleadoCOD: TIntegerField;
    qEmpleadoCARGO: TWideStringField;
    qEmpleadoFECHA_ING: TDateField;
    qEmpleadoESTADOS: TIntegerField;
    qEmpleadoTIENDAID: TIntegerField;
    qEmpleadoIMAGEN: TBlobField;
    qEmpleadoDESCUENTO: TIntegerField;
    Panel1: TPanel;
    dsempleado: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1COD_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGroupBox4: TcxGroupBox;
    Label11: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label12: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxButton4: TcxButton;
    QTequipos: TZReadOnlyQuery;
    QTequiposID: TIntegerField;
    QTequiposTIPOEQUIPO: TWideStringField;
    Panel2: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOEQUIPO: TcxGridDBColumn;
    cxDBMemo2: TcxDBMemo;
    cxGroupBox5: TcxGroupBox;
    cxDBMemo3: TcxDBMemo;
    Label13: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    DsQequipos: TDataSource;
    cxButton5: TcxButton;
    guardar: TcxButton;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    DsRmad: TDataSource;
    cxGrid3DBTableView1IDARTICULO: TcxGridDBColumn;
    cxGrid3DBTableView1CANT: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid3DBTableView1ITB: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULO: TcxGridDBColumn;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    LargeintField1: TLargeintField;
    FxRmaM: TfrxDBDataset;
    Recibo: TfrxReport;
    FxRmaD: TfrxDBDataset;
    Config: TfrxDBDataset;
    QRmaM: TZReadOnlyQuery;
    QrmaD: TZReadOnlyQuery;
    QRmaMID: TIntegerField;
    QRmaMNOORDEN: TIntegerField;
    QRmaMFECHA_ENTRADA: TDateField;
    QRmaMIDCLIENTE: TIntegerField;
    QRmaMIDTECNICO: TIntegerField;
    QRmaMHORAENTRADA: TTimeField;
    QRmaMNO_SERIAL: TWideStringField;
    QRmaMIDTIPOEQUIPO: TIntegerField;
    QRmaMIDMARCA: TIntegerField;
    QRmaMFALLAEQUIPO: TWideMemoField;
    QRmaMOBSERVACIONEQUIPO: TWideMemoField;
    QRmaMOBSERVACIONTECNICA: TWideMemoField;
    QRmaMFECHA_PROMETIDA: TDateField;
    QRmaMESTADO: TWideStringField;
    QRmaMMONTO: TFloatField;
    QRmaMNOMBRES: TWideStringField;
    QRmaMDIRECCION: TWideStringField;
    QRmaMTELEFONO: TWideStringField;
    QRmaMNOMBRES_EMP: TWideStringField;
    QRmaMTIPOEQUIPO: TWideStringField;
    QrmaDID: TIntegerField;
    QrmaDIDMASTER: TIntegerField;
    QrmaDIDARTICULO: TIntegerField;
    QrmaDCANT: TFloatField;
    QrmaDPRECIO: TFloatField;
    QrmaDITB: TFloatField;
    QrmaDTOTAL: TFloatField;
    QrmaDESTADOS: TIntegerField;
    QrmaDARTICULO: TWideStringField;
    QrmaDARTICULOTXT: TWideStringField;
    Edit2: TEdit;
    cxButton11: TcxButton;
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
    procedure Button1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDBSpinEdit2Exit(Sender: TObject);
    procedure cxDBSpinEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBSpinEdit3Exit(Sender: TObject);
    procedure cxDBSpinEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxDBSpinEdit4Exit(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxDBSpinEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure guardarClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxGrid3DBTableView1EditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRma: TFrmRma;

implementation

{$R *.dfm}

uses Unit63, Unit107, Unit3, tools, Unit112, UInicio;

procedure TFrmRma.Button1Click(Sender: TObject);
var
n : integer;
begin
datos.MantArt.Open;

//with exportar do
//  begin
//    OPEN;
//    first;
//    n := 0;
//    while not eof do
//     begin
//       n := n + 1;
//      datos.MantArt.Insert;
//      datos.MantArtCOD_ART.Value := datos.MantArtCOD_ART.Value + n;
//      datos.MantArtCODIGOTXT.Value := '00'+iNTtOsTR(datos.MantArtCOD_ART.Value);
//      datos.MantArtARTICULO.Value   := exportararticulos.Value;
//      datos.MantArtCOD_UV.Value := 1;
//      datos.MantArtCOD_PROV1.Value := 1;
//      datos.MantArtITBIS.Value := 'S';
//      DATOS.MantArtPRECIO_A.Value := StrToFloat(COPY(fLOATtOsTR(EXPORTARVENPV.Value),1,2));
//      DATOS.MantArtPRECIO_B.Value := StrToFloat(COPY(fLOATtOsTR(EXPORTARVENPROD.Value),1,2));
//      DATOS.MantArtPRECIO_D.Value := StrToFloat(COPY(fLOATtOsTR(EXPORTARVENMINI.Value),1,2));
//
//
//   NEXT;
//     end;
//
//     DATOS.MantArt.ApplyUpdates;
//     DATOS.Data.Commit;
//
//  end;
end;

procedure TFrmRma.cxButton10Click(Sender: TObject);
begin
edit1.Clear;
  cxCurrencyEdit1.Value := 0.00;
  panel3.Visible := false;
end;

procedure TFrmRma.cxButton11Click(Sender: TObject);
begin
 with QRmaM do
         begin
           close;
           sql.Clear;
           sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo  from rmam a');
           sql.Add('left join cliente b on a.idcliente = b.codigo');
           sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo=''INSTALADOR''');
           sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
           sql.Add('where a.id=:opp');
           params[0].Value := StrToInt(edit2.Text);
           open;
         end;


         with QrmaD do
           begin
             close;
             sql.Clear;
             sql.Add('select a.id, a.idmaster, a.idarticulo, a.cant, a.precio, a.itb, (a.cant * a.precio) Total, a.estados, b.articulo, a.articulotxt from rmad a');
             sql.Add('left join mtartuculos b on a.idarticulo = b.cod_art');
             sql.Add('where idmaster =:op11');
             params[0].Value := QRmaMID.Value;
             open;
          end;
           recibo.PrepareReport(true);
             recibo.ShowPreparedReport;
    edit2.Clear;
end;

procedure TFrmRma.cxButton1Click(Sender: TObject);
begin

if FrmConsultaCliente = nil then
  begin
    FrmConsultaCliente := tFrmConsultaCliente.Create(self);
     FrmConsultaCliente.edit2.text := 'RMA';
FrmConsultaCliente.showmodal;
  end;


end;

procedure TFrmRma.cxButton2Click(Sender: TObject);
begin
ShowForm(TFrmCliente, FrmCliente);
end;

procedure TFrmRma.cxButton3Click(Sender: TObject);
begin
with qEmpleado do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MTEMPLEADO');
    sql.Add('where cargo =:opp');
    params[0].Value := 'INSTALADOR';
    OPEN;

  end;
  Panel1.Visible := true;
  cxgrid1.SetFocus;
end;

procedure TFrmRma.cxButton4Click(Sender: TObject);
begin
panel2.Visible := true;
cxgrid2.setfocus;
 with QTequipos do
        begin
          close;
          sql.Clear;
          sql.Add('select * from TIPOEQUIPO');

          open;

        end;
end;

procedure TFrmRma.cxButton5Click(Sender: TObject);
begin
datos.MRma.CancelUpdates;
datos.Data.Rollback;
datos.MRma.Close;
close;

end;

procedure TFrmRma.cxButton6Click(Sender: TObject);
begin
if FConsultaArtiRMA = nil then
  begin
    FConsultaArtiRMA := tFConsultaArtiRMA.Create(self);
    FConsultaArtiRMA.showmodal;
  end;

end;

procedure TFrmRma.cxButton7Click(Sender: TObject);
var
M : word;
SUMA : CURRENCY;
itbs : currency;
begin
datos.RMAD.Delete;


     datos.RMAD.First;

                    while not datos.RMAD.Eof do
                     begin
                        suma := (suma + datos.RMAD.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        itbs := (itbs + datos.RMAD.FieldByname('itb').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        datos.RMAD.Edit;
                        datos.RMADtotal.Value := datos.RMADtotal.Value;
                        datos.RMADITB.Value  := datos.RMADITB.Value;
                        datos.RMAD.Next;
               end;

end;

procedure TFrmRma.cxButton8Click(Sender: TObject);
begin
panel3.Visible := true;


edit1.SetFocus;
end;

procedure TFrmRma.cxButton9Click(Sender: TObject);
begin


with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select upper(a.articulo),a.*,b.precio1,b.precio2,b.precio3 from mtartuculos a');
    sql.Add('left join CONTROL_PRECIOS b On a.cod_art = b.no_art');
    sql.Add('where a.codigobarra =''RMA001''');
    open;
  end;

 with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_RMAD_ID, 1) from RDB$DATABASE');
     open;
  end;


  datos.RMAD.Open;
  datos.rmad.Append;
   datos.RMADID.Value         := numeroGEN_ID.Value;
  datos.RMADIDARTICULO.Value := IbqRArticulosCOD_ART.Value;
  datos.RMADPRECIO.Value     := cxCurrencyEdit1.Value;
  datos.RMADARTICULO.Value   := edit1.Text;
  datos.RMADITB.Value        := 0.00;
  datos.RMADCANT.Value       := 1;
  datos.RMADARTICULOTXT.Value:= edit1.Text;
  datos.rmad.Refresh;
  edit1.Clear;
  cxCurrencyEdit1.Value := 0.00;
  panel3.Visible := false;
end;

procedure TFrmRma.cxDBSpinEdit2Exit(Sender: TObject);
begin
 with ibqclientes do
      begin
        close;
        sql.Clear;
        sql.Add('select a.* from cliente a');
        sql.Add('where a.codigo = :value');
        params[0].Value := cxDBSpinEdit2.Value;
        open;
      end;


      if ibqclientes.RecordCount > 0 then
        begin
             DATOS.MRma.Edit;
             DATOS.MRmaIDCLIENTE.Value := IbqClientesCODIGO.Value;
             datos.MRmaNOMBRES.Value   := IbqClientesNOMBRES.Value;
             datos.MRmaDIRECCION.Value := IbqClientesDIRECCION.Value;
             datos.MRmaTELEFONO.Value  := IbqClientesTELEFONO.Value;

        end else begin
                   showmessage(' Cliente no encontrado ');
                   cxDBSpinEdit2.SetFocus;
                 end;
end;

procedure TFrmRma.cxDBSpinEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
       cxButton1.SetFocus;
  end;
end;

procedure TFrmRma.cxDBSpinEdit3Exit(Sender: TObject);
begin
with qempleado do
  begin
    close;
    sql.Clear;
    sql.Add('select * from MTEMPLEADO');
    sql.Add('where cargo =:op1');
    SQL.ADD('and cod_emp1 =:op2');
    params[0].Value := 'INSTALADOR';
    params[1].Value := cxDBSpinEdit3.Value;
    open;
  end;

  if qempleado.RecordCount > 0 then
     begin
       datos.MRma.Edit;
       datos.MRmaIDTECNICO.Value := qEmpleadoCOD_EMP1.Value;
       datos.MRmaNOMBRES_EMP.Value := qEmpleadoNOMBRES_EMP.Value;
     end;


end;

procedure TFrmRma.cxDBSpinEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin
    cxButton3.SetFocus;
  end;
end;

procedure TFrmRma.cxDBSpinEdit4Exit(Sender: TObject);
begin
      with QTequipos do
        begin
          close;
          sql.Clear;
          sql.Add('select * from TIPOEQUIPO');
          sql.Add('where id =:op');
          params[0].Value := cxDBSpinEdit4.Value;
          open;

        end;

        if QTequipos.RecordCount > 0 then
           begin
             datos.MRma.Edit;
             datos.MRmaIDTIPOEQUIPO.Value := QTequiposID.Value;
             datos.MRmaTIPOEQUIPO.Value := QTequiposTIPOEQUIPO.Value;

           end;
end;

procedure TFrmRma.cxDBSpinEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    cxDBTextEdit5.SetFocus;
  end;

end;

procedure TFrmRma.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
       datos.MRma.Edit;
       datos.MRmaIDTECNICO.Value := qEmpleadoCOD_EMP1.Value;
       datos.MRmaNOMBRES_EMP.Value := qEmpleadoNOMBRES_EMP.Value;
       panel1.visible := false;
       qEmpleado.Close;
end;

procedure TFrmRma.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
datos.MRma.Edit;
             datos.MRmaIDTIPOEQUIPO.Value := QTequiposID.Value;
             datos.MRmaTIPOEQUIPO.Value := QTequiposTIPOEQUIPO.Value;
             panel2.Visible := false;
             QTequipos.Close;
end;

procedure TFrmRma.cxGrid3DBTableView1EditChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
  var
  ValEstado : Boolean;
begin


     //ValEstado := AViewInfo.GridRecord.Values[6] < 0.00;
end;

procedure TFrmRma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmRma := nil;
end;

procedure TFrmRma.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    panel1.Visible := false;
    qEmpleado.Close;

    panel2.Visible := false;

  end;
end;

procedure TFrmRma.FormShow(Sender: TObject);
begin
op11.ActivePageIndex := 0;
end;

procedure TFrmRma.guardarClick(Sender: TObject);
var
M : word;
SUMA : CURRENCY;
itbs : currency;
begin
if (cxDBTextEdit4.Text <>'') and (cxDBTextEdit1.Text <>'') and (cxDBMemo1.Text <>'') and (cxDBDateEdit2.Text <> '')then
  begin
     m :=  MonthOf(datos.MRmaFECHA_ENTRADA.Value);

    datos.MRma.Edit;
    datos.MRmaNOORDEN.Value := m+datos.MRmaID.Value;
    datos.MRmaIDMARCA.Value := 1;


     datos.RMAD.First;

                    while not datos.RMAD.Eof do
                     begin
                        suma := (suma + datos.RMAD.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        itbs := (itbs + datos.RMAD.FieldByname('itb').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        datos.RMAD.Edit;
                        datos.RMADtotal.Value := datos.RMADtotal.Value;
                        datos.RMADITB.Value  := datos.RMADITB.Value;
                        datos.RMAD.Next;
               end;

    datos.MRmaMONTO.Value := suma;




    datos.RMAD.ApplyUpdates;
    datos.MRma.ApplyUpdates;
    datos.Data.Commit;

    datos.MRma.Close;
    datos.RMAD.Close;

    edit2.Clear;
    close;
  end else begin

             MsgInformacion('Debes completar los campos obligatorio');
           ///  MessageDlg('Debes completar los campos obligatorio', mtInformation, mbOKCancel);
           end;

end;

end.
