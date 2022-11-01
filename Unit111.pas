unit Unit111;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, Vcl.ExtCtrls, frxClass, frxDBSet, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxMemo;

type
  TRma = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    numero: TZReadOnlyQuery;
    numeroGEN_ID: TLargeintField;
    QRma: TZReadOnlyQuery;
    DsRma: TDataSource;
    cxGrid1DBTableView1NOORDEN: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1HORAENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1NO_SERIAL: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_PROMETIDA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOEQUIPO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    FxRmaM: TfrxDBDataset;
    QRmaM: TZReadOnlyQuery;
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
    QrmaD: TZReadOnlyQuery;
    FxRmaD: TfrxDBDataset;
    Config: TfrxDBDataset;
    Recibo: TfrxReport;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    RG1: TcxRadioGroup;
    Edit1: TEdit;
    Label4: TLabel;
    cxComboBox1: TcxComboBox;
    UpEstado: TZReadOnlyQuery;
    Panel4: TPanel;
    EstadoBox: TcxComboBox;
    Label5: TLabel;
    cxButton6: TcxButton;
    Panel5: TPanel;
    cxMemo1: TcxMemo;
    cxButton7: TcxButton;
    QRmaID: TIntegerField;
    QRmaNOORDEN: TIntegerField;
    QRmaFECHA_ENTRADA: TDateField;
    QRmaIDCLIENTE: TIntegerField;
    QRmaIDTECNICO: TIntegerField;
    QRmaHORAENTRADA: TTimeField;
    QRmaNO_SERIAL: TWideStringField;
    QRmaIDTIPOEQUIPO: TIntegerField;
    QRmaIDMARCA: TIntegerField;
    QRmaFALLAEQUIPO: TWideMemoField;
    QRmaOBSERVACIONEQUIPO: TWideMemoField;
    QRmaOBSERVACIONTECNICA: TWideMemoField;
    QRmaFECHA_PROMETIDA: TDateField;
    QRmaESTADO: TWideStringField;
    QRmaMONTO: TFloatField;
    QRmaNOMBRES: TWideStringField;
    QRmaDIRECCION: TWideStringField;
    QRmaTELEFONO: TWideStringField;
    QRmaNOMBRES_EMP: TWideStringField;
    QRmaTIPOEQUIPO: TWideStringField;
    QRmaDIAS: TIntegerField;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
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
    QrmaDID: TIntegerField;
    QrmaDIDMASTER: TIntegerField;
    QrmaDIDARTICULO: TIntegerField;
    QrmaDCANT: TFloatField;
    QrmaDPRECIO: TFloatField;
    QrmaDITB: TFloatField;
    QrmaDTOTAL: TExtendedField;
    QrmaDESTADOS: TIntegerField;
    QrmaDARTICULO: TWideStringField;
    QrmaDARTICULOTXT: TWideStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure RG1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rma: TRma;

implementation

{$R *.dfm}

uses Unit63, Unit2, Unit70, Tools, UInicio;

procedure TRma.cxButton1Click(Sender: TObject);
begin
with numero do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(GEN_RMAM_ID, 1) from RDB$DATABASE');
    open;
  end;
  datos.MRma.Open;
  datos.Mrma.Append;
  datos.MRmaID.value := numeroGEN_ID.Value;
  datos.MRmaFECHA_ENTRADA.Value := now();
  datos.MRmaHORAENTRADA.Value   := time();
  datos.MRmaESTADO.Value        := 'Abierto';


  datos.RMAD.Open;
  if FrmRma = nil then
    begin
      FrmRma := tFrmRma.Create(self);
       FrmRma.Edit2.Text := IntToStr(datos.MRmaID.value);
      FrmRma.ShowModal;
    end;

end;

procedure TRma.cxButton2Click(Sender: TObject);
begin

   with datos.MRma do
     begin
       close;
       sql.Clear;
       sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo  from rmam a');
       sql.Add('left join cliente b on a.idcliente = b.codigo');
       sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo=''INSTALADOR''');
       sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
       sql.Add('where a.id =:op');
       params[0].Value := QRmaID.Value;
       open;
      end;
     if datos.MRmaestado.Value ='Cerrado' then
        begin
                MsgInformacion(' Esta Orden No puede ser modificada, !!Ya Fue Cerrada!!')
        end else begin

      datos.RMAD.Open;
      if FrmRma = nil then
    begin
      FrmRma := tFrmRma.Create(self);
       FrmRma.Edit2.Text := IntToStr(datos.MRmaID.value);
      FrmRma.ShowModal;
    end;

     end;
end;

procedure TRma.cxButton3Click(Sender: TObject);
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
           params[0].Value := QRmaID.Value;
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
end;

procedure TRma.cxButton4Click(Sender: TObject);
begin
cxMemo1.Lines.Add('Cliente    :'+QRmaNOMBRES.Value);
cxMemo1.Lines.Add('Telefono   :'+QRmaTelefono.Value);
cxMemo1.Lines.Add('No. Orden  :'+IntToStr(QRmaNOORDEN.Value));
cxMemo1.Lines.Add('Tipo Equipo:'+QRmaTIPOEQUIPO.Value);

panel5.Visible := true;

end;

procedure TRma.cxButton5Click(Sender: TObject);
begin
panel4.Visible := true;

EstadoBox.Properties.Items.Clear;
estadoBox.Properties.Items.Add('Abierto');
estadoBox.Properties.Items.Add('Cerrado');
estadoBox.Properties.Items.Add('Cotizando');
end;

procedure TRma.cxButton6Click(Sender: TObject);
begin
if EstadoBox.Text ='Cerrado' then
  begin

      if application.MessageBox ('Al Cerrar esta orden no podra, Retornar a Editar esta orden ','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin

      with QrmaD do
           begin
             close;
             sql.Clear;
             sql.Add('select a.id, a.idmaster, a.idarticulo, a.cant, a.precio, a.itb, (a.cant * a.precio) Total, a.estados, b.articulo, a.articulotxt from rmad a');
             sql.Add('left join mtartuculos b on a.idarticulo = b.cod_art');
             sql.Add('where idmaster =:op11');
             params[0].Value := QRmaID.Value;
             open;

             first;

              datos.ZInventario.Open;
             while not eof do begin


    with numeroinventario do
                  begin
                     close;
                     sql.Clear;
                     sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
                     open;
                  end;


              datos.ZInventario.append;
              datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
              datos.ZInventarioFECHA.Value          := now();
              datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
              datos.ZInventarioCOD_ART.Value        := StrToInt(QrmaDIDARTICULO.text);
              datos.ZInventarioCONCEPTOID.Value     := 11;
              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
              datos.ZInventarioCOD_ALM.Value        := datos.ZUconfiguracionALMACENRMA.Value;
              datos.ZInventarioSALIDA.Value         := QrmaDCANT.Value;
              datos.ZInventarioENTRADA.Value        := 0.00;

            next;
         end;
  end;

    datos.ZInventario.ApplyUpdates;
    datos.ZInventario.Close;
  end;
 end;

with UpEstado do
  begin
    close;
    sql.Clear;
    sql.Add('update rmam set estado =:estado, idmarca =2 where id =:codigo');
    Params[0].Value := EstadoBox.Text;
    params[1].Value := QRmaID.Value;
    ExecSQL;
  end;



  datos.data.Commit;
  qrma.Refresh;


  panel4.Visible := false;
end;

procedure TRma.cxButton7Click(Sender: TObject);
begin
panel5.Visible := false;
end;

procedure TRma.cxComboBox1PropertiesChange(Sender: TObject);
begin
if cxComboBox1.ItemIndex <> 2 then begin
with QRma do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo,  (current_date - a.fecha_prometida) as Dias  from rmam a');
    sql.Add('left join cliente b on a.idcliente = b.codigo');
    sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =''INSTALADOR''');
    sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
    sql.Add('where a.estado =:pp');
    params[0].Value := cxComboBox1.Text;
    open;
  end;
end;

if cxComboBox1.ItemIndex = 2 then begin
with QRma do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo,  (current_date - a.fecha_prometida) as Dias  from rmam a');
    sql.Add('left join cliente b on a.idcliente = b.codigo');
    sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =''INSTALADOR''');
    sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
    sql.Add('where (current_date - a.fecha_prometida) > 0 ');
    sql.add('and a.estado <>:opd');
    params[0].Value :='Cerrado';

    open;
  end;
end;




end;

procedure TRma.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);

var
  ARec: TRect;
  NADA : string;
  LEN : Integer;
  val, ValEstado, IsNulo, dias, SAN, ALQUILER,  COMPRAVENTA: Boolean;
begin
// 	if AViewInfo.Item.ID = 0 then

   		ARec := AViewInfo.Bounds;

         ValEstado := AViewInfo.GridRecord.Values[8] = 'Abierto';
         if  ValEstado then
         	begin
      	 		ACanvas.Canvas.Font.Style := [fsBold];
       			ACanvas.Canvas.Font.Color := clGreen;
              end;

          ValEstado := AViewInfo.GridRecord.Values[8] = 'Cotizando';
          if  ValEstado then
         	begin
      	 		ACanvas.Canvas.Font.Style := [fsBold];
       			ACanvas.Canvas.Font.Color := clMaroon;
              end;


//              ValEstado := AViewInfo.GridRecord.Values[8] = 'Cerrada';
//          if  ValEstado then
//         	begin
//      	 		ACanvas.Canvas.Font.Style := [fsNormal];
//       			ACanvas.Canvas.Font.Color := clBlack;
//              end;


          dias := (AViewInfo.GridRecord.Values[9] >  0) and (AViewInfo.GridRecord.Values[8]<>'Cerrado');
           if  dias then
         	begin
      	 		ACanvas.Canvas.Font.Style := [fsBold];
      			ACanvas.Canvas.Font.Color := clRed;
              end;

end;

procedure TRma.Edit1Change(Sender: TObject);
begin

if rg1.ItemIndex = 1 then
   begin
with QRma do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo,  (current_date - a.fecha_prometida) as Dias  from rmam a');
    sql.Add('left join cliente b on a.idcliente = b.codigo');
    sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =''INSTALADOR''');
    sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
    sql.Add('where a.noorden like '+#39+'%'+edit1.text+'%'+#39);
   open;
  end;
end;

if rg1.ItemIndex = 2 then
   begin
with QRma do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d.tipoequipo,  (current_date - a.fecha_prometida) as Dias  from rmam a');
    sql.Add('left join cliente b on a.idcliente = b.codigo');
    sql.Add('left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo =''INSTALADOR''');
    sql.Add('left join tipoequipo d on a.idtipoequipo = d.id');
    sql.Add('where b.nombres like '+#39+'%'+edit1.text+'%'+#39);
   open;
  end;
end;
end;

procedure TRma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Rma := nil;
end;

procedure TRma.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key= vk_escape then
  begin
    panel4.Visible := false;
    panel5.Visible := false;
  end;

end;

procedure TRma.FormShow(Sender: TObject);
begin
   qrma.Close;
   qrma.Open;
end;

procedure TRma.RG1Click(Sender: TObject);
begin
if RG1.ItemIndex = 0 then
  begin
    cxComboBox1.Visible := true;
    Edit1.Visible := false;
    label4.Caption := 'Seleccione el Estado';
  end;

  if RG1.ItemIndex = 1 then
  begin
    cxComboBox1.Visible := false;
    Edit1.Visible := true;
    edit1.SetFocus;
    edit1.Clear;
    label4.Caption := 'No. Orden';
  end;


  if RG1.ItemIndex = 2 then
  begin
    cxComboBox1.Visible := false;
    Edit1.Visible := true;
    edit1.SetFocus;
    edit1.Clear;
    label4.Caption := 'Nombre del Cliente';
  end;
end;

end.
