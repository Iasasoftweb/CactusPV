unit Unit122;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls, QRCtrls,
  Data.DB, ZAbstractRODataset, ZDataset, frxClass;

type
  TFNotificacion = class(TForm)
    QuickRep1: TQuickRep;
    qpendiente: TZReadOnlyQuery;
    TitleBand1: TQRBand;
    comp: TQRLabel;
    direccion: TQRLabel;
    telefono: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    Nombre: TQRLabel;
    QRLabel2: TQRLabel;
    ChildBand1: TQRChildBand;
    CuerpoNotificacion: TQRRichText;
    ChildBand2: TQRChildBand;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    de0a30: TQRLabel;
    De31a60: TQRLabel;
    de61a90: TQRLabel;
    de91a120: TQRLabel;
    de120: TQRLabel;
    Antiguedad: TZReadOnlyQuery;
    QRShape1: TQRShape;
    pendiente: TQRLabel;
    QRLabel10: TQRLabel;
    qpendienteNO_FACT: TIntegerField;
    qpendienteNUMERO_FACTURA: TFloatField;
    qpendienteFECHA_FAC: TDateField;
    qpendienteFECHAVENCIMIENTO: TDateField;
    qpendienteCLIENTENOMBRE: TWideStringField;
    qpendienteMONTO: TExtendedField;
    qpendienteABONO: TFloatField;
    qpendientePENDIENTE: TFloatField;
    qpendienteNOMBRES_EMP: TWideStringField;
    qpendienteTELEFONO: TWideStringField;
    qpendienteDIAS: TIntegerField;
    qpendienteDIASATRASOS: TIntegerField;
    qpendienteESTADOCUENTA: TWideStringField;
    qpendienteCLIENTEID: TIntegerField;
    AntiguedadCLIENTEID: TIntegerField;
    AntiguedadPORVENCER: TExtendedField;
    AntiguedadV0_30: TExtendedField;
    AntiguedadV31_60: TExtendedField;
    AntiguedadV61_90: TExtendedField;
    AntiguedadV91_120: TExtendedField;
    AntiguedadV120: TExtendedField;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1PrevXEvent(Sender: TObject; eventNum: TPrevEventType;
      cName, CText: string; rec: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNotificacion: TFNotificacion;

implementation

{$R *.dfm}

uses Unit16, Unit2;

procedure TFNotificacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FNotificacion := nil;
end;

procedure TFNotificacion.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  VAR	DireccionCompleta: string;
begin
    	with DATOS do
   	begin
   	if ZUconfiguracionTELEFONO.Value <> '' then
   		Telefono.Caption := ' Tel.: '+ZUconfiguracionTELEFONO.Value;
      if ZUconfiguracionRnc.Value <> '' then
         	Telefono.Caption := Telefono.Caption + ' RNC: '+ZUconfiguracionRnc.Value;

       end;



	      	Nombre.Caption := Trim(qpendienteCLIENTENOMBRe.Value);

end;

procedure TFNotificacion.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
 VAR	DireccionCompleta: string;
begin


with Antiguedad do
    begin
        close;
        SQL.Clear;
        sql.Add('SELECT a.clienteid,');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date  )<0 AND ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,');
        sql.add('sum(IIF( (DATEDIFF(DAY, a.fecha_fac, current_date )>=0 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=30) OR a.fecha_fac is null,(a.pendiente),0)) AS V0_30 ,');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=31 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=60, (a.pendiente),0)) AS V31_60,');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=61 AND DATEDIFF( DAY, a.fecha_fac,current_date )<=90, (a.pendiente),0)) AS V61_90, ');
        sql.add('sum(IIF( DATEDIFF(DAY, a.fecha_fac, current_date )>=91 AND DATEDIFF( DAY, a.fecha_fac, current_date )<=120, (a.pendiente),0)) AS V91_120,');
        sql.add('sum(IIF(  DATEDIFF(DAY, a.fecha_fac, current_date )>=121 ,(a.pendiente),0)) as v120');
        sql.add('from master_fact a');
         sql.add('where a.situacion  =:opcion2');
        sql.add('and a.condicion    =:OPCION4');
        sql.Add('AND A.ROTULO       =:OPCION5');
        sql.Add('and a.clienteid    =:opcion66');
        sql.Add('and a.tipo         =:tipo1');
        sql.Add('and a.quees <>''SALDADA''');
         sql.add('group by a.clienteid ');
        Params[0].Value := 'IMPRESA';
        Params[1].Value := 'ACTIVA';
        Params[2].Value := 'FACTURACION';
        Params[3].Value := qpendienteCLIENTEID.Value;
        Params[4].Value := 'CREDITO';
        open;
  end;






    	with DATOS do
         	begin

                comp.Caption := ZUconfiguracionEMPRESA.Value;
                direccion.Caption := ZUconfiguracionDIRECCION.Value;
   	if ZUconfiguracionTELEFONO.Value <> '' then
   		Telefono.Caption := ' Tel.: '+ZUconfiguracionTELEFONO.Value;
      if ZUconfiguracionRnc.Value <> '' then
         	Telefono.Caption := Telefono.Caption + ' RNC: '+ZUconfiguracionRnc.Value;

       end;



	      	Nombre.Caption := Trim(qpendienteCLIENTENOMBRe.Value);
                de0a30.caption := FormatCurr('$###,###,##0.00', AntiguedadV0_30.Value);
                De31a60.Caption := FormatCurr('$###,###,##0.00', AntiguedadV31_60.Value);
                de61a90.Caption := FormatCurr('$###,###,##0.00', AntiguedadV61_90.Value);
                de91a120.Caption := FormatCurr('$###,###,##0.00', AntiguedadV91_120.Value);
                de120.Caption := FormatCurr('$###,###,##0.00', AntiguedadV120.Value);

                pendiente.Caption := FormatCurr('$###,###,##0.00', (AntiguedadV0_30.Value+AntiguedadV31_60.Value + AntiguedadV61_90.Value + AntiguedadV91_120.Value + AntiguedadV120.Value));



end;

procedure TFNotificacion.QuickRep1PrevXEvent(Sender: TObject;
  eventNum: TPrevEventType; cName, CText: string; rec: Integer);
begin
FNotificacion := NIL;
end;

end.
