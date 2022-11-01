unit Unit105;

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
  dxSkinXmas2008Blue, cxGroupBox, Vcl.StdCtrls, Data.DB, ZAbstractRODataset,
  ZDataset, Vcl.Menus, cxButtons, dxActivityIndicator, dxSkinTheBezier;

type
  TFrmActualizaBalanceCXC = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Pendientes: TZReadOnlyQuery;
    actualiza: TZReadOnlyQuery;
    cxButton1: TcxButton;
    Label2: TLabel;
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
    ActualizaFact: TZReadOnlyQuery;
    master_credito: TZReadOnlyQuery;
    master_creditoNO_FACT: TIntegerField;
    master_creditoFECHA_FAC: TDateField;
    master_creditoFECHAVENCIMIENTO: TDateField;
    master_creditoMONTO: TExtendedField;
    master_creditoABONO: TFloatField;
    master_creditoPENDIENTE: TFloatField;
    master_creditoCLIENTEID: TIntegerField;
    PendientesCLIENTENOMBRE: TWideStringField;
    PendientesCEDULA: TWideStringField;
    PendientesTELEFONO: TWideStringField;
    PendientesDIRECCION: TWideStringField;
    PendientesMONTO: TExtendedField;
    PendientesABONO: TExtendedField;
    PendientesPENDIENTE: TExtendedField;
    PendientesCLIENTEID: TIntegerField;
    PendientesCON_ATRASOS: TIntegerField;
    PendientesSIN_ATRASOS: TIntegerField;
    PendientesTFAC: TLargeintField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmActualizaBalanceCXC: TFrmActualizaBalanceCXC;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmActualizaBalanceCXC.cxButton1Click(Sender: TObject);
begin

with Pendientes do
  begin
     open;
     first;
     while not eof do
        begin

        with ibqclientes do
              begin
                close;
                sql.Clear;
                sql.Add('select a.* from cliente a');
                sql.Add('where a.codigo =:op');
                params[0].Value := PendientesCLIENTEID.Value;
                open;
               Label2.Caption := IbqClientesNOMBRES.Value;
              end;

            with actualiza do
                   begin

                       close;
                       sql.Clear;
                       sql.Add('update cliente set Musados =:Musado, balance =:balance ');
                       sql.add('where codigo =:codigo');
                       params[0].Value := PendientesPENDIENTE.Value;
                       params[1].Value := IbqClientesCREDITOLIMITE.Value - PendientesPENDIENTE.Value;
                       params[2].Value := PendientesCLIENTEID.Value;
                       ExecSQL;

                   end;

             with master_credito do begin
               open;
               close;
               sql.Clear;
               sql.Add('select A.no_fact, A.fecha_fac, A.fechavencimiento, (A.monto + A.pogxitbs) as monto, A.ABONO, A.pendiente, A.clienteid');
               sql.Add('from master_fact a');
               sql.Add('left join cliente b On a.clienteid = b.codigo');
               sql.Add('left join musuario c On a.usuarioid = c.usuarioid');
               sql.Add('left join mtempleado d On c.empleadoid = d.cod_emp');
               sql.Add('where a.situacion =''IMPRESA''');
               sql.Add('and a.condicion =''ACTIVA''');
               sql.Add('AND A.tipo = ''CREDITO''');
               sql.Add('and a.clienteid =:opcion666 ');
               Params[0].Value := PendientesCLIENTEID.Value;
               open;


              first;
              while not eof do
                 begin

               with ActualizaFact do
                 begin
                   close;
                   sql.Clear;
                   sql.Add('update master_fact set pendiente =(monto + pogxitbs) - abono ');
                   sql.add('where situacion  =:opcion2');
                   sql.add('and condicion    =:OPCION4');
                   sql.Add('AND ROTULO       =:OPCION5');
                   sql.Add('and clienteid    =:opcion66');
                   sql.Add('and tipo         =:tipo1');
                   sql.Add('and quees <>''SALDADA''');
                   Params[0].Value := 'IMPRESA';
                   Params[1].Value := 'ACTIVA';
                   Params[2].Value := 'FACTURACION';
                   Params[3].Value := PendientesCLIENTEID.Value;
                   Params[4].Value := 'CREDITO';

                   ExecSQL;
                 end;
               next;
              end;
             end;
               Label2.Caption := IbqClientesNOMBRES.Value;

        Next;
        end;
       datos.data.Commit;
       
       ShowMessage(' Procesor Terminado ');
  end;
end;

procedure TFrmActualizaBalanceCXC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmActualizaBalanceCXC := nil;
Action := caFree;
end;

end.
