unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, Menus, cxButtons, DB,
  ZAbstractRODataset, ZDataset, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, frxClass, frxDBSet, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator, cxDBEdit,
  cxSpinEdit, cxGroupBox, cxCurrencyEdit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxCheckBox, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfrmcuadre_caja = class(TForm)
    Panel1: TPanel;
    fecha1: TcxDateEdit;
    fecha2: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cuadre: TZReadOnlyQuery;
    DSCUADRE: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton2: TcxButton;
    ticker: TfrxReport;
    mASTER: TfrxDBDataset;
    cxButton3: TcxButton;
    Label7: TLabel;
    OpBuscarEmpleado: TcxGroupBox;
    Edit2: TEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    dsqusuario: TDataSource;
    cod: TcxTextEdit;
    caj: TcxTextEdit;
    cuadreTURNOID: TIntegerField;
    cuadreUSUARIOID: TIntegerField;
    cuadreEFECTIVO_INICIAL: TFloatField;
    cuadreESTADO: TIntegerField;
    cuadreFECHA: TDateField;
    cuadreIDTURNO: TIntegerField;
    cuadreCAJA: TWideStringField;
    cuadreHORA: TTimeField;
    cuadreEFECTIVOCAJA: TFloatField;
    cuadreCOBRANZA: TFloatField;
    cuadreTC: TFloatField;
    cuadreCHEQUE: TFloatField;
    cuadreVALE: TFloatField;
    cuadreGASTOS: TFloatField;
    cuadreNC: TFloatField;
    cuadreTOTALGASTOS: TFloatField;
    cuadreTOTALEINGRESO: TFloatField;
    cuadreTOTALCUADRE: TFloatField;
    cuadreDESCUADRE: TFloatField;
    cuadreTOTALVENTAS: TFloatField;
    cuadreTOTALEGRESOS: TFloatField;
    cuadreSOBRANTES: TFloatField;
    cxGrid1DBTableView1EFECTIVO_INICIAL: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1EFECTIVOCAJA: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALCUADRE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCUADRE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALVENTAS: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALEGRESOS: TcxGridDBColumn;
    cxGrid1DBTableView1SOBRANTES: TcxGridDBColumn;
    cuadreNOMBRES_EMP: TWideStringField;
    cuadreDESCRICPCION: TWideStringField;
    Label3: TLabel;
    Chk1: TcxCheckBox;
    Config: TfrxDBDataset;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcuadre_caja: Tfrmcuadre_caja;

implementation
uses tools, unit19, unit2, Unit63;

{$R *.dfm}

procedure Tfrmcuadre_caja.cxButton1Click(Sender: TObject);
begin

// with cuadre do
//      begin
//        close;
//        sql.clear;
//        sql.add('select a.*,b.nombres ClienteNombre, d.nombres_emp from master_fact a');
//        sql.add('left join cliente b On a.clienteid = b.codigo');
//        sql.add('left join musuario c On a.usuarioid = c.usuarioid');
//        sql.add('left join mtempleado d On c.empleadoid = d.cod_emp');
//        sql.add('where a.situacion =:opcion2');
//        sql.add('and a.condicion =:OPCION4');
//        sql.Add('AND A.ROTULO =:OPCION5');
//        sql.Add('and a.fecha_fac >=:fecha1');
//        sql.Add('and a.fecha_fac <=:fecha2');
//        sql.Add('and a.usuarioid =:opcion6');
//        sql.Add('and a.tipo =:tipo');
//        Params[0].Value := 'IMPRESA';
//        Params[1].Value := 'ACTIVA';
//        Params[2].Value := 'FACTURACION';
//        Params[3].Value := fecha1.Date;
//        Params[4].Value := fecha2.Date;
//        Params[5].Value := StrToInt(cod.Text);
//        Params[6].Value := 'Contado';
//        open;
//      end;



     if chk1.Checked = true then begin

      with cuadre do
               begin
                 close;
                 sql.Clear;
                 sql.add(' select a.*,c.nombres_emp, d.descricpcion from turnos a');
                 sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                 sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                 sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                 sql.Add('where a.usuarioID =:usa');
                 sql.Add('and a.fecha >=:fecha1');
                 sql.Add('and a.fecha <=:fecha2');

                 params[0].Value := StrToInt(cod.text);
                 Params[1].Value := fecha1.Date;
                 Params[2].Value := fecha2.Date;
                 open;
               end;
       end;


if chk1.Checked = false then begin

      with cuadre do
               begin
                 close;
                 sql.Clear;
                 sql.add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                 sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                 sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                 sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');

                 sql.Add('where a.fecha >=:fecha1');
                 sql.Add('and a.fecha <=:fecha2');


                 Params[0].Value := fecha1.Date;
                 Params[1].Value := fecha2.Date;
                 open;
               end;
       end;



             //  cxcurrencyedit1.Value := datos.ZTurnoEFECTIVO_INICIAL.Value;
           //    cxcurrencyedit2.Value := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
            //   cxcurrencyedit3.Value := cxcurrencyedit1.Value + cxcurrencyedit2.Value;
           //    CxCurrencyEdit4.Value := 0.00;
end;

procedure Tfrmcuadre_caja.cxButton2Click(Sender: TObject);
begin

             ticker.variables['fecha1']:=quotedstr(fecha1.Text);
             ticker.variables['fecha2']:=quotedstr(fecha2.Text);
             ticker.variables['Empleado']:=quotedstr(caj.Text);
             ticker.PrepareReport(true);
             ticker.ShowPreparedReport;


//ticker.PrintOptions.Printer := 'Epson TM-U220 Receipt';
//ticker.PrepareReport;
//ticker.Print;



//ticker.PrepareReport;

end;

procedure Tfrmcuadre_caja.cxButton3Click(Sender: TObject);
begin
opbuscarempleado.Visible := true;
zqusuario.Open;
end;

procedure Tfrmcuadre_caja.cxGridDBTableView2DblClick(Sender: TObject);
begin
cod.Text  :=IntToStr(zqusuariousuarioid.Value);
caj.Text := zqusuarionombres_emp.Value;
Opbuscarempleado.Visible := false;
end;

procedure Tfrmcuadre_caja.Edit2Change(Sender: TObject);
begin
with zqusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.NOMBRES_EMP from musuario a');
    sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
    sql.Add('where b.nombres_emp like '+#39+'%'+Edit2.Text+'%'+#39);
    open;
  end;
end;

procedure Tfrmcuadre_caja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmcuadre_caja := nil;
end;

procedure Tfrmcuadre_caja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
      OpBuscarEmpleado.Visible := false;

  end;
end;

procedure Tfrmcuadre_caja.FormShow(Sender: TObject);
begin
    fecha1.Date := date();
  fecha2.Date := date();
end;

end.
