unit Unit24;

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
  dxSkinXmas2008Blue, cxGroupBox, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Data.DB, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, cxButtons, ZAbstractRODataset,
  ZDataset, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, dxCore, cxDateUtils, frxClass,
  frxDBSet, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfrmConduce1 = class(TForm)
    opmaster: TcxGroupBox;
    DsDConduce: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    BTguardar: TcxButton;
    BtCancelar: TcxButton;
    Opdetalle: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    numeromaster: TZReadOnlyQuery;
    numeromasterMAX: TIntegerField;
    opbuscar: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    DsqArticulos: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTextEdit2: TcxTextEdit;
    Label5: TLabel;
    cxTextEdit3: TcxTextEdit;
    Label6: TLabel;
    cxButton2: TcxButton;
    cxTextEdit4: TcxTextEdit;
    Label7: TLabel;
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1CANDIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    NumeroDetalle: TZReadOnlyQuery;
    NumeroDetalleMAX: TIntegerField;
    ZqConduce: TZReadOnlyQuery;
    DsqConduce: TDataSource;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1MCONDUCETXT: TcxGridDBColumn;
    cxGrid3DBTableView1FECHA: TcxGridDBColumn;
    cxGrid3DBTableView1ORIGEN: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    fecha1: TcxDateEdit;
    cxLabel2: TcxLabel;
    fecha2: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    Edit1: TEdit;
    Zqtienda: TZReadOnlyQuery;
    Dstienda: TDataSource;
    ZqtiendaTIENDAID: TIntegerField;
    ZqtiendaESTADO: TIntegerField;
    ZqtiendaDIRECCCION: TWideStringField;
    ZqtiendaCIUDAD: TWideStringField;
    ZqtiendaTELEFONO1: TWideStringField;
    ZqtiendaTELEFONO2: TWideStringField;
    ZqtiendaRNC: TWideStringField;
    ZqtiendaDESCRIPCION: TWideStringField;
    ZqConduceMCONDUCEID: TIntegerField;
    ZqConduceMCONDUCETXT: TWideStringField;
    ZqConduceFECHA: TDateField;
    ZqConduceUSUARIOID: TIntegerField;
    ZqConduceTIENDAID: TIntegerField;
    ZqConduceTIENDAIDDESTINO: TIntegerField;
    ZqConduceESTADO: TIntegerField;
    ZqConduceORIGEN: TWideStringField;
    ZqConduceDESTINO: TWideStringField;
    recibo: TfrxReport;
    master: TfrxDBDataset;
    detalle: TfrxDBDataset;
    tienda: TfrxDBDataset;
    zmconducePRN: TZReadOnlyQuery;
    zmconducePRNMCONDUCEID: TIntegerField;
    zmconducePRNMCONDUCETXT: TWideStringField;
    zmconducePRNFECHA: TDateField;
    zmconducePRNUSUARIOID: TIntegerField;
    zmconducePRNTIENDAID: TIntegerField;
    zmconducePRNTIENDAIDDESTINO: TIntegerField;
    zmconducePRNESTADO: TIntegerField;
    zmconducePRNORIGEN: TWideStringField;
    zmconducePRNDESTINO: TWideStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure BTguardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConduce1: TfrmConduce1;

implementation


uses
unit2, unit19, tools;
{$R *.dfm}

procedure TfrmConduce1.BtCancelarClick(Sender: TObject);
begin

datos.ZMConduce.CancelUpdates;
datos.ZDconduce.CancelUpdates;
datos.Data.Rollback;



cxButton2.Enabled := false;

    btguardar.Enabled := false;
    cxButton4.Enabled := false;
    cxButton1.Enabled := true;

    cxButton2.Enabled := false;

    opmaster.Enabled := false;
    opdetalle.Enabled := false;

    datos.ZMConduce.Close;
    datos.ZDconduce.Close;
     edit1.Clear;
end;

procedure TfrmConduce1.BTguardarClick(Sender: TObject);
begin
if edit1.Text = 'nuevo' then  begin

if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0] = 0 then
  begin
    showmessage('** NO EXISTEN ATIRCULOS AGREGADOS **');
  end else
  begin

    datos.ZMConduce.ApplyUpdates;
    datos.ZDconduce.ApplyUpdates;

    datos.ZInventario.Open;

    with datos.ZDconduce do
      begin
        first;

        while not eof do
           begin
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
              datos.ZInventarioCOD_ART.Value        := datos.ZDconduceCOD_ART.Value;
              datos.ZInventarioCONCEPTOID.Value     := 1;
              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
              datos.ZInventarioSALIDA.Value         := datos.ZDconduceCANDIDAD.Value;
              datos.ZInventarioENTRADA.Value        := 0.00;
            next;
           end;
        end;



    datos.ZInventario.ApplyUpdates;


      with zmconducePRN do
        begin
             close;
             sql.Clear;
             sql.Add('select a.*,b.descripcion origen, c.descripcion destino from mconduce a');
             sql.Add('left join tienda b On a.tiendaid = b.tiendaid');
             sql.Add('left join tienda c On a.tiendaiddestino = c.tiendaid');
             sql.Add('where a.MCONDUCEID =:opp');
             params[0].Value := datos.ZMConduceMCONDUCEID.Value;
             open;
        end;



    if application.MessageBox ('Deseas Imprimir Este Recibo Conduce','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin
            // recibo.variables['varfecha1']:=quotedstr(dbedit2.text);

             recibo.PrepareReport(true);
             recibo.ShowPreparedReport;

         end;



    datos.Data.Commit;


    cxButton2.Enabled := false;

    btguardar.Enabled := false;
    cxButton4.Enabled := false;
    cxButton1.Enabled := true;

    cxButton2.Enabled := false;

    opmaster.Enabled := false;
    opdetalle.Enabled := false;
    DATOS.ZDconduce.Close;
    datos.ZMConduce.Close;
    zqconduce.Refresh;



     edit1.Clear;
     end;

    end else begin


       datos.ZMConduce.ApplyUpdates;
       datos.ZDconduce.ApplyUpdates;



       with zmconducePRN do
        begin
             close;
             sql.Clear;
             sql.Add('select a.*,b.descripcion origen, c.descripcion destino from mconduce a');
             sql.Add('left join tienda b On a.tiendaid = b.tiendaid');
             sql.Add('left join tienda c On a.tiendaiddestino = c.tiendaid');
             sql.Add('where a.MCONDUCEID =:opp');
             params[0].Value := datos.ZMConduceMCONDUCEID.Value;
             open;
        end;

    if application.MessageBox ('Deseas Imprimir Este Recibo Conduce','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
         begin
            // recibo.variables['varfecha1']:=quotedstr(dbedit2.text);

             recibo.PrepareReport(true);
             recibo.ShowPreparedReport;
         end;





       datos.Data.Commit;


    cxButton2.Enabled := false;

    btguardar.Enabled := false;
    cxButton4.Enabled := false;
    cxButton1.Enabled := true;

    cxButton2.Enabled := false;

    opmaster.Enabled := false;
    opdetalle.Enabled := false;
    DATOS.ZDconduce.Close;
    datos.ZMConduce.Close;
    zqconduce.Refresh;

    end;



end;

procedure TfrmConduce1.cxButton1Click(Sender: TObject);
var
cero : string;
begin


zqtienda.Open;
datos.ZMConduce.Open;

edit1.Text := 'nuevo';

with numeromaster do
  begin
   close;
    sql.Clear;
    sql.Add('select max(MCONDUCEID) from MCONDUCE');
    open;
  end;




  datos.ZMConduce.Insert;

  datos.ZMConduceMCONDUCEID.Value := numeromastermax.Value + 1;

    if datos.ZMConduceMCONDUCEID.Value  >= 1 then
        begin
           cero := '000';
     end;

     if datos.ZMConduceMCONDUCEID.Value  >= 10 then
        begin
           cero := '00';
     end;

     if datos.ZMConduceMCONDUCEID.Value  >= 100 then
        begin
           cero := '0';
     end;

     if datos.ZMConduceMCONDUCEID.Value >= 1000 then
        begin
           cero := '';
     end;
//        showmessage(''+IntToStr(datos.ZMConduceMCONDUCEID.Value));
     opmaster.Enabled := true;
     datos.ZMConduceMCONDUCETXT.Value := 'T'+InttoStr(Asignatienda)+'-'+cero+intTostr(datos.ZMConduceMCONDUCEID.Value);
     datos.ZMConduceFECHA.Value  := now();
     datos.ZMConduceTIENDAID.Value := Asignatienda;
     datos.ZMConduceDESCRIPCION.Value := datos.tiendaDESCRIPCION.Value;
     datos.ZMConduceESTADO.Value := 1;
     datos.ZMConduce.refresh;
     cxButton1.Enabled := false;
     cxButton4.Enabled := true;

end;

procedure TfrmConduce1.cxButton2Click(Sender: TObject);
begin

datos.ZDconduce.Open;

with numerodetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select max(DCONDUCEID) from DETALLECONDUCE');
    open;
  end;

datos.ZDconduce.Insert;
datos.ZDconduceDCONDUCEID.Value := numerodetallemax.Value + 1;
datos.ZDconduceESTADO.Value     := 1;
datos.ZDconduceCOD_ART.Value    := StrToInt(cxTextEdit2.Text);
datos.ZDconduceCANDIDAD.Value   := StrToInt(cxTextEdit4.Text);
datos.ZDconduceARTICULO.Value   := cxTextEdit3.Text;
datos.ZDconduce.Refresh;
btguardar.Enabled := true;

cxTextEdit2.clear;
cxTextEdit3.clear;
cxTextEdit4.clear;

end;

procedure TfrmConduce1.cxButton3Click(Sender: TObject);
begin

 with zqconduce do
    begin
      close;
      sql.Clear;
      sql.Add('select a.*,b.descripcion origen, c.descripcion destino from mconduce a');
      sql.Add('left join tienda b On a.tiendaid = b.tiendaid');
      sql.Add('left join tienda c On a.tiendaiddestino = c.tiendaid');
      sql.Add('where a.fecha >=:fecha11');
      sql.Add('and a.fecha <=:fecha111');
      params[0].Value := fecha1.Date;
      params[1].Value := fecha2.Date;
      open;
    end;
end;

procedure TfrmConduce1.cxButton4Click(Sender: TObject);
begin
opbuscar.Visible := true;
ibqrarticulos.Open;
cxTextEdit1.SetFocus;

end;

procedure TfrmConduce1.cxButton5Click(Sender: TObject);
begin
close;
end;

procedure TfrmConduce1.cxDBLookupComboBox1PropertiesChange(Sender: TObject);
begin

if cxDBLookupComboBox1.Text = cxDBTextEdit1.Text then
  begin
    Showmessage('**No la tienda de DESTINO no debe ser igual a la tienda de ORIGEN**');
     cxDBLookupComboBox1.Clear;
     cxDBLookupComboBox1.SetFocus;
  end;

end;

procedure TfrmConduce1.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
cxTextEdit2.Text := IntToStr(datos.ZDconduceCOD_ART.Value);
cxTextEdit3.Text := datos.ZDconduceARTICULO.Value;
cxTextEdit4.Text := FloatToStr(datos.ZDconducecandidad.Value);

datos.ZDconduce.Edit;
datos.ZDconduce.Delete;
datos.ZDconduce.Edit;
datos.ZDconduce.Post;

end;

procedure TfrmConduce1.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
cxTextEdit2.text := IntTOStr(IbqRarticuloscod_art.Value);
cxTextEdit3.text := IbqRarticulosArticulo.Value;
cxTextEdit4.SetFocus;
cxTextEdit4.Enabled := true;
cxButton2.Enabled := true;
opbuscar.Visible := false;
end;

procedure TfrmConduce1.cxGrid3DBTableView1DblClick(Sender: TObject);
begin

zqtienda.Open;
with datos.ZMConduce do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*,b.descripcion from MCONDUCE a');
    sql.Add('left join tienda b On a.tiendaID= b.tiendaid');
    sql.Add('where a.MCONDUCEID =:pppp');
    params[0].Value := zqconduceMCONDUCEID.Value;
    open;
  end;

  datos.ZDconduce.Open;

    cxButton2.Enabled := false;

    btguardar.Enabled := true;
    cxButton4.Enabled := true;
    cxButton1.Enabled := false;

    cxButton2.Enabled := false;

    opmaster.Enabled := true;
    opdetalle.Enabled := true;

    edit1.Text := 'modi';

end;

procedure TfrmConduce1.cxTextEdit1PropertiesChange(Sender: TObject);
begin
with ibqrarticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtartuculos');
    sql.Add('where articulo like '+#39+'%'+cxTextEdit1.Text+'%'+#39);
    sql.Add('and politica =:oo');
    params[0].Value := 'Producto';
    open;
  end;
end;

procedure TfrmConduce1.FormShow(Sender: TObject);
begin

zqconduce.Params[0].Value := AsignaTienda;
zqconduce.Open;


cxButton1.Enabled :=true;
cxButton4.Enabled :=true;

datos.ZMConduce.Close;
datos.ZDconduce.Close;

end;
end.
