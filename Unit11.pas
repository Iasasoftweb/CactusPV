unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset, Grids, DBGrids,
  cxCurrencyEdit, Menus, cxButtons, ZAbstractDataset, ZSqlUpdate, frxClass,
  frxDBSet, frxRich, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmGet_cobro = class(TForm)
    GroupBox1: TGroupBox;
    DsMaster: TDataSource;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    op1: TDBRadioGroup;
    op3: TDBRadioGroup;
    plazos: TcxDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsZdetalle: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    Qdetalle: TZReadOnlyQuery;
    QdetalleNO_FACT: TIntegerField;
    QdetalleNO_FACT1: TWideStringField;
    QdetalleFECHA_FACT: TDateField;
    QdetalleTIPO: TWideStringField;
    QdetalleCOD_EMP: TWideStringField;
    QdetalleARTICULO: TWideStringField;
    QdetalleMARCA: TWideStringField;
    QdetalleMODELO: TWideStringField;
    QdetalleCANTIDAD: TFloatField;
    QdetallePRECIO: TFloatField;
    QdetalleIMPUESTO: TFloatField;
    QdetalleITBS: TFloatField;
    QdetalleITBIS2: TFloatField;
    QdetalleTOTAL: TFloatField;
    QdetalleDESC1: TFloatField;
    QdetalleCOD_ART: TWideStringField;
    QdetalleITB: TWideStringField;
    QdetalleCOBROITB: TWideStringField;
    QdetalleUNID: TWideStringField;
    QdetalleCOSTOS: TFloatField;
    QdetalleESTADO: TWideStringField;
    QdetalleTIPOITBS: TWideStringField;
    QdetalleABREVIADO: TWideStringField;
    QdetalleIMPORTE: TFloatField;
    QdetalleCOD_CLIENT: TIntegerField;
    QdetalleDESCUENTO: TFloatField;
    QdetalleCOMBO: TWideStringField;
    QdetalleCONDICION_ART: TWideStringField;
    QdetalleLINEA: TIntegerField;
    QdetalleOPIT: TIntegerField;
    QdetallePRECIO1: TFloatField;
    QdetalleEMPLEADO: TWideStringField;
    QdetalleCANT: TFloatField;
    QdetalleTURNO: TIntegerField;
    QdetalleCLAVE_COSTO: TWideStringField;
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Label9: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    RadioGroup1: TRadioGroup;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    cxButton4: TcxButton;
    Combo12: TZQuery;
    Combo12COMBO: TWideStringField;
    Edit1: TEdit;
    mASTER: TfrxDBDataset;
    detalle: TfrxDBDataset;
    ticker: TfrxReport;
    frxRichObject1: TfrxRichObject;
    Master_Print: TZReadOnlyQuery;
    Detalle_Print: TZReadOnlyQuery;
    Master_PrintNO_FACT: TIntegerField;
    Master_PrintFECHA_FAC: TDateField;
    Master_PrintTIPO: TWideStringField;
    Master_PrintCOD_CLIENT: TWideStringField;
    Master_PrintCOD_EMP: TWideStringField;
    Master_PrintNO_FACT1: TWideStringField;
    Master_PrintMONTO: TFloatField;
    Master_PrintHORA: TTimeField;
    Master_PrintPOGXITBS: TFloatField;
    Master_PrintTIPOPAGO: TWideStringField;
    Master_PrintMONTOPAGO: TFloatField;
    Master_PrintCONDICION: TWideStringField;
    Master_PrintRENTA: TWideStringField;
    Master_PrintCODIGO: TIntegerField;
    Master_PrintTIPOITBS: TWideStringField;
    Master_PrintVENDEDOR: TWideStringField;
    Master_PrintSITUACION: TWideStringField;
    Master_PrintCAJERO: TWideStringField;
    Master_PrintNCF: TWideStringField;
    Master_PrintRNC_CLIENTE: TWideStringField;
    Master_PrintNCF1: TFloatField;
    Master_PrintNOM_CLIENTE: TWideStringField;
    Master_PrintDESCUENTO: TFloatField;
    Master_PrintROTULO: TWideStringField;
    Master_PrintNO_AUTORIZA_NCF: TFloatField;
    Master_PrintMONTOFINANCIADO: TFloatField;
    Master_PrintCUOTAS: TIntegerField;
    Master_PrintINTERES: TFloatField;
    Master_PrintDIRECCION: TWideStringField;
    Master_PrintPAGADO: TFloatField;
    Master_PrintLEYPROPINA: TFloatField;
    Master_PrintCOMPROBANTE: TWideStringField;
    Master_PrintTERMINAL: TWideStringField;
    Master_PrintEFECTIVO: TFloatField;
    Master_PrintDEVOLUCION1: TFloatField;
    Master_PrintRESTANTE: TFloatField;
    Master_PrintABONO: TFloatField;
    Master_PrintCHEK: TWideStringField;
    Master_PrintNO_RECIBO: TIntegerField;
    Master_PrintPAGADOCXC: TFloatField;
    Master_PrintMESES: TIntegerField;
    Master_PrintDIAS: TIntegerField;
    Master_PrintPENDIENTE: TFloatField;
    Master_PrintESTADOPAGO: TWideStringField;
    Master_PrintDEVOLUCION: TFloatField;
    Master_PrintCONDICION_PAGO: TIntegerField;
    Master_PrintFECHAVENCIMIENTO: TWideStringField;
    Master_PrintCOMBO: TWideStringField;
    Master_PrintCOBRADO: TIntegerField;
    Detalle_PrintNO_FACT: TIntegerField;
    Detalle_PrintNO_FACT1: TWideStringField;
    Detalle_PrintFECHA_FACT: TDateField;
    Detalle_PrintTIPO: TWideStringField;
    Detalle_PrintCOD_EMP: TWideStringField;
    Detalle_PrintARTICULO: TWideStringField;
    Detalle_PrintMARCA: TWideStringField;
    Detalle_PrintMODELO: TWideStringField;
    Detalle_PrintCANTIDAD: TFloatField;
    Detalle_PrintPRECIO: TFloatField;
    Detalle_PrintIMPUESTO: TFloatField;
    Detalle_PrintITBS: TFloatField;
    Detalle_PrintITBIS2: TFloatField;
    Detalle_PrintTOTAL: TFloatField;
    Detalle_PrintDESC1: TFloatField;
    Detalle_PrintCOD_ART: TWideStringField;
    Detalle_PrintITB: TWideStringField;
    Detalle_PrintCOBROITB: TWideStringField;
    Detalle_PrintUNID: TWideStringField;
    Detalle_PrintCOSTOS: TFloatField;
    Detalle_PrintESTADO: TWideStringField;
    Detalle_PrintTIPOITBS: TWideStringField;
    Detalle_PrintABREVIADO: TWideStringField;
    Detalle_PrintIMPORTE: TFloatField;
    Detalle_PrintCOD_CLIENT: TIntegerField;
    Detalle_PrintDESCUENTO: TFloatField;
    Detalle_PrintCOMBO: TWideStringField;
    Detalle_PrintCONDICION_ART: TWideStringField;
    Detalle_PrintLINEA: TIntegerField;
    Detalle_PrintOPIT: TIntegerField;
    Detalle_PrintPRECIO1: TFloatField;
    Detalle_PrintEMPLEADO: TWideStringField;
    Detalle_PrintCANT: TFloatField;
    Detalle_PrintTURNO: TIntegerField;
    Detalle_PrintCLAVE_COSTO: TWideStringField;
    DsMaster_Print: TDataSource;
    DsDetalle_Print: TDataSource;
    Edit2: TEdit;
    op22: TRadioGroup;
    Grande_Normal: TfrxReport;
    TICKER_COTIZA: TfrxReport;
    GRANDE_COTIZA: TfrxReport;
    Edit3: TEdit;
    TIcker_Credito: TfrxReport;
    Grande_Credito: TfrxReport;
    MontoUpdate: TZQuery;
    WideStringField1: TWideStringField;
    zqclientes: TZQuery;
    zqclientesESTADO: TWideStringField;
    master_credito: TZReadOnlyQuery;
    master_creditoSUM: TFloatField;
    clientes: TZReadOnlyQuery;
    clientesCODIGO: TIntegerField;
    clientesNOMBRES: TWideStringField;
    clientesDIRECCION: TWideStringField;
    clientesCEDULA: TWideStringField;
    clientesTELEFONO: TWideStringField;
    clientesCELULAR: TWideStringField;
    clientesCOLOR: TWideStringField;
    clientesCONTACTO: TWideStringField;
    clientesRENGLONCNF: TWideStringField;
    clientesTXTCNF: TWideStringField;
    clientesCREDITOLIMITE: TFloatField;
    clientesTIPO: TWideStringField;
    clientesRNC: TWideStringField;
    clientesCONDICION: TWideStringField;
    clientesINICIO: TDateField;
    clientesSUELDO: TFloatField;
    clientesPAGOITB: TWideStringField;
    clientesCREDITO: TWideStringField;
    clientesBALANCE: TFloatField;
    clientesESTADO: TWideStringField;
    clientesMOVIL: TWideStringField;
    clientesCODIGO_T: TWideStringField;
    procedure op1Change(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGet_cobro: TFrmGet_cobro;

implementation

uses Unit2, tools, Unit4, Unit9;

{$R *.dfm}

procedure TFrmGet_cobro.cxButton1Click(Sender: TObject);
begin

WITH master_credito do
 begin
   close;
   sql.Clear;
   sql.Add('select sum(pendiente) from master_fact');
   sql.Add('where cod_client =:cliente1');
   sql.Add('and tipo =:op1');
   params[0].Value := StrTOInt(datos.FbqMaster_FactCOD_CLIENT.Value);
   params[1].Value := 'CREDITO';
   open;
 end;

 WITH CLIENTES DO
  BEGIN
      CLOSE;
      SQL.Clear;
      SQL.Add('SELECT * FROM CLIENTE');
      SQL.Add('WHERE CODIGO =:COD_CLIE');
      params[0].Value := StrTOInt(datos.FbqMaster_FactCOD_CLIENT.Value);
      OPEN;
  END;

 if MASTER_CREDITOSUM.Value > (CLIENTESCREDITOLIMITE.Value + datos.FbqMaster_Factmontopago.Value)  then
    BEGIN
        MsgError('Este Cliente sobre paso el limite de credito'#13+
      	               'Favor consultar el Administrador');
    END else begin


if edit3.Text ='COTIZACION' then
  BEGIN
  panel3.Visible := true;
  cxButton4.Enabled := true;
  cxButton4.Click;
END;

if op1.ItemIndex =1 then
begin

with zqclientes do
  begin
      close;
      sql.Clear;
      sql.Add('select * from cliente');
      sql.Add('where codigo =:codd');
      sql.Add('and estado =:est');
      params[0].Value :=datos.FbqMaster_FactCOD_CLIENT.Value;
      params[1].Value :='Activo';
      open;
  end;

  if zqclientes.RecordCount = 1 then
    begin

  panel3.Visible := true;
  cxButton4.Enabled := true;
  cxButton4.Click;
    end;

 if zqclientes.RecordCount = 0 then
    begin
      ShowmEssage('***** Este no esta Autorizado para recibir créditos');
    end;
end;


if op1.ItemIndex =0 then
begin

panel3.Visible := true;
dbedit12.SetFocus;
end;


end;
end;

procedure TFrmGet_cobro.cxButton2Click(Sender: TObject);
begin
showmessage('*** En Construccion ***');
end;

procedure TFrmGet_cobro.cxButton3Click(Sender: TObject);
begin


datos.FbqMaster_Fact.Close;
datos.Zdetalle.close;
datos.Data.Rollback;
close;

end;

procedure TFrmGet_cobro.cxButton4Click(Sender: TObject);
var
op40 :string;
hoy :Tdate;
op10 : string;
Fec : Tdate;
begin
hoy := now;
op10 := 'IMPRESA';
if EDIT3.Text = 'FACTURACION' then
begin
if edit1.Text ='COBRAR' then
 BEGIN

 with combo12 do
 begin
    close;
    sql.Clear;
    sql.add ('update detailfact set combo =:combo');
    sql.add ('where no_fact1 =:no_fact1');
    ParambyName('combo').AsString := 'SI';
    ParambyName('no_fact1').AsString := edit2.Text;
    //datos.Data.StartTransaction;
    ExecSQL;

 end;

 fec := datos.FbqMaster_FactFECHA_FAC.Value + datos.FbqMaster_FactCONDICION_PAGO.Value;
 datos.FbqMaster_Factsituacion.Value := 'IMPRESA';


 if op1.ItemIndex = 1 then
   begin
     datos.fbqmaster_factquees.Value := 'PENDIENTE';
     datos.FbqMaster_FactPENDIENTE.Value := datos.FbqMaster_FactMONTO.Value;
     datos.FbqMaster_FactABONO.Value     := 0.00;
   end;


{
 with montoupdate do
   begin
     close;
     sql.Clear;
     sql.add('update master_fact set monto =:monto');
     sql.add(',descuento =:descuento');
     sql.add(',montopago =:montopago');
     sql.Add(',FECHAVENCIMIENTO =:fechavenc');
     sql.Add(',TIPO =:TIP');
     sql.Add(',CAJERO =:CAJ');

     sql.Add('where no_fact =:op2');
     params[0].Value := datos.FbqMaster_FactMONTO.Value;
     params[1].Value := datos.FbqMaster_Factdescuento.Value;
     params[2].Value := datos.FbqMaster_Factmontopago.Value;
     params[3].Value := DateToStr(hoy + datos.FbqMaster_FactCONDICION_PAGO.Value);
     params[4].Value := datos.FbqMaster_FactTIPO.Value;
     params[5].Value := datos.FbqMaster_FactCAJERO.Value;
     params[6].Value := datos.FbqMaster_FactNO_FACT.Value;
     ExecSQL;
   end;

  }

datos.FbqMaster_Fact.ApplyUpdates;
datos.Data.Commit;

with master_print do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op40');
    params[0].value := edit2.Text ;
    open;
  end;

with detalle_print do
  begin
    close;
    sql.Clear;
    sql.Add('select * from detailfact');
    sql.Add('where no_fact1 =:op40');
    params[0].value := edit2.Text ;
    open;
  end;


 //    ticker.ShowReport(true);

 if op22.ItemIndex =0 then
   begin

 if master_printTIPO.Value ='AL CONTADO' then
   BEGIN
  ticker.PrintOptions.Printer := 'Epson TM-U220 Receipt';
  ticker.PrepareReport;
  ticker.Print;
  END;

 if master_printTIPO.Value ='CREDITO' then
   BEGIN
  ticker_CREDITO.PrintOptions.Printer := 'Epson TM-U220 Receipt';
  ticker_CREDITO.PrepareReport;
  ticker_CREDITO.Print;
  END;

   end;


  if op22.ItemIndex =1 then
   begin
  if master_printTIPO.Value ='AL CONTADO' then
   BEGIN
    grande_normal.PrintOptions.Printer := 'Epson LX-300';
  grande_normal.PrepareReport;
  grande_normal.Print;
   END;

  if master_printTIPO.Value ='CREDITO' then
   BEGIN
  grande_CREDITO.PrintOptions.Printer := 'Epson LX-300';
  grande_CREDITO.PrepareReport;
  grande_CREDITO.Print;
   END;


   end;


 panel3.Visible := false;
//  FrmCobrar.Master_cobro.Edit;
 FrmCobrar.Master_cobro.Refresh;
 edit2.Clear;
  cxButton4.Enabled := false;
 close;
 END else


 if edit1.Text = 'REIMPRESION' then
   BEGIN

datos.FbqMaster_FactSITUACION.Value := 'IMPRESA';
datos.FbqMaster_Fact.ApplyUpdates;
datos.Data.Commit;

with master_print do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op40');
    params[0].value := edit2.Text ;
    open;
  end;

with detalle_print do
  begin
    close;
    sql.Clear;
    sql.Add('select * from detailfact');
    sql.Add('where no_fact1 =:op40');
    params[0].value := edit2.Text ;
    open;
  end;

 //    ticker.ShowReport(true);

 if op22.ItemIndex =0 then
   begin

 if master_printTIPO.Value ='AL CONTADO' then
   BEGIN
  ticker.PrintOptions.Printer := 'Epson TM-U220 Receipt';
  ticker.PrepareReport;
  ticker.Print;
  END;

 if master_printTIPO.Value ='CREDITO' then
   BEGIN
  ticker_CREDITO.PrintOptions.Printer := 'Epson TM-U220 Receipt';
  ticker_CREDITO.PrepareReport;
  ticker_CREDITO.Print;
  END;

   end;


if op22.ItemIndex =1 then
  begin
  if master_printTIPO.Value ='AL CONTADO' then
   BEGIN
      grande_normal.PrintOptions.Printer := 'Epson LX-300';
      grande_normal.PrepareReport;
      grande_normal.Print;
   END;

if master_printTIPO.Value ='CREDITO' then
   BEGIN
      grande_CREDITO.PrintOptions.Printer := 'Epson LX-300';
      grande_CREDITO.PrepareReport;
      grande_CREDITO.Print;
   END;
  end;


 panel3.Visible := false;
 FrmCobrar.Master_cobro.Refresh;
 close;
END;
end;


if EDIT3.Text ='COTIZACION' then
  begin


datos.FbqMaster_FactSITUACION.Value := 'COTIZA';
datos.FbqMaster_Fact.ApplyUpdates;
datos.Data.Commit;

with master_print do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 =:op40');
    params[0].value := edit2.Text ;
    open;
  end;

with detalle_print do
  begin
    close;
    sql.Clear;
    sql.Add('select * from detailfact');
    sql.Add('where no_fact1 =:op40');
        params[0].value := edit2.Text ;
    open;
  end;


 //    ticker.ShowReport(true);

 if op22.ItemIndex =0 then
   begin
  ticker_cotiza.PrintOptions.Printer := 'Epson TM-U220 Receipt';
  ticker_cotiza.PrepareReport;
  ticker_cotiza.Print;
   end;


  if op22.ItemIndex =1 then
   begin
    grande_cotiza.PrintOptions.Printer := 'Epson LX-300';
  grande_cotiza.PrepareReport;
  grande_cotiza.Print;
   end;


 panel3.Visible := false;
//  FrmCobrar.Master_cobro.Edit;
 FrmCobrar.COTIZA.close;
  FrmCobrar.COTIZA.open;;


 edit2.Clear;
  cxButton4.Enabled := false;
 close;

  end;



end;
procedure TFrmGet_cobro.cxButton4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then
begin
  panel3.Visible :=false;
end;
end;

procedure TFrmGet_cobro.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = vk_escape then
begin
  panel3.Visible :=false;
end;

   if key = vk_return then begin
    cxButton4.Enabled := true;
    cxButton4.SetFocus;

   if datos.FbqMaster_FactEFECTIVO.Value >= datos.FbqMaster_FactMONTOPAGO.Value then
      begin
       datos.FbqMaster_Fact.Edit;
       datos.FbqMaster_FactDEVOLUCION.Value := datos.FbqMaster_FactEFECTIVO.Value - datos.FbqMaster_FactMONTOPAGO.Value;
      end;

      if datos.FbqMaster_FactEFECTIVO.Value < datos.FbqMaster_FactMONTOPAGO.Value then
        begin
         MsgError('El valor del efectivo es menor que el monto facturado'#13+
      	               'Favor revisar efectivo');
                       dbedit12.Clear;
                       dbedit12.SetFocus;
        end;


   end ;
end;

procedure TFrmGet_cobro.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
begin
  panel3.Visible :=false;
end;
end;

procedure TFrmGet_cobro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
     begin
       panel3.Visible := true;
     end;
if key =vk_f5 then
  begin
    WITH master_credito do
 begin
   close;
   sql.Clear;
   sql.Add('select sum(pendiente) from master_fact');
   sql.Add('where cod_client =:cliente1');
   sql.Add('and tipo =:op1');
   params[0].Value := StrTOInt(datos.FbqMaster_FactCOD_CLIENT.Value);
   params[1].Value := 'CREDITO';
   open;
 end;

 WITH CLIENTES DO
  BEGIN
      CLOSE;
      SQL.Clear;
      SQL.Add('SELECT * FROM CLIENTE');
      SQL.Add('WHERE CODIGO =:COD_CLIE');
      params[0].Value := StrTOInt(datos.FbqMaster_FactCOD_CLIENT.Value);
      OPEN;
  END;

 if MASTER_CREDITOSUM.Value > (CLIENTESCREDITOLIMITE.Value + datos.FbqMaster_Factmontopago.Value)  then
    BEGIN
        MsgError('Este Cliente sobre paso el limite de credito'#13+
      	               'Favor consultar el Administrador');
    END else begin


    panel3.Visible := true;
    dbedit12.SetFocus;
end;
  end;

if key =vk_f10 then
  begin
      datos.FbqMaster_Fact.Close;
      datos.Zdetalle.close;
      datos.Data.Rollback;
      close;
  end;

end;

procedure TFrmGet_cobro.FormShow(Sender: TObject);
var
suma : currency;
begin
panel3.Visible :=false;
if edit1.Text = 'COBRAR' then
   begin
op1.ItemIndex := 0;
op3.ItemIndex := 3;
op22.ItemIndex := 0;

 with qdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select * from detailfact');
    sql.Add('where no_fact1=:optt1');
    params[0].Value := datos.FbqMaster_FactNO_FACT1.Value;
    open;
  end;



      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactCAJERO.text := datos.IbqEmpleadosNOMBRES_EMP.Value;

 qdetalle.First;
       //
 while not qdetalle.Eof do

         begin
         suma := (suma + qdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;


         //qdetalle.Edit;
         //qdetalleTOTAL.Value := qdetalleTOTAL.Value;

           qdetalle.Next;

      end;
         DATOS.FbqMaster_FactMONTO.Value      := suma;
         datos.FbqMaster_FactPOGXITBS.Value   := 0.00;
         datos.FbqMaster_FactMONTOPAGO.Value :=(suma - DATOS.FbqMaster_FactDESCUENTO.Value);

//**********************************************************************************//

    end;


 if edit1.Text = 'REIMPRESION' then
   begin
op1.ItemIndex := 0;
op3.ItemIndex := 3;
op22.ItemIndex := 0;

 with qdetalle do
  begin
    close;
    sql.Clear;
    sql.Add('select * from detailfact');
    sql.Add('where no_fact1=:optt1');
    params[0].Value := datos.FbqMaster_FactNO_FACT1.Value;
    open;
  end;

      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactCAJERO.text := datos.IbqEmpleadosNOMBRES_EMP.Value;

//************ Suma Totales ************
qdetalle.First;
       //
 while not qdetalle.Eof do

         begin
         suma := (suma + qdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;



         qdetalle.Next;


      end;
         DATOS.FbqMaster_FactMONTO.Value      := suma;
         datos.FbqMaster_FactPOGXITBS.Value   := 0.00;
         datos.FbqMaster_FactMONTOPAGO.Value :=(suma - DATOS.FbqMaster_FactDESCUENTO.Value);
//**********************************************************************************//

    end;
end;

procedure TFrmGet_cobro.op1Change(Sender: TObject);
begin
if op1.ItemIndex  = 1 then
   begin
     plazos.Enabled := true;
     dbedit5.ReadOnly := false;
   end;
end;

end.

