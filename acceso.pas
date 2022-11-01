unit acceso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, ZAbstractRODataset, ZDataset, unit2;

type
  Tacceso_sup = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    configura: TZReadOnlyQuery;
    configuraCONFID: TIntegerField;
    configuraCODIGO_COM: TWideStringField;
    configuraEMPRESA: TWideStringField;
    configuraRNC: TWideStringField;
    configuraTELEFONO: TWideStringField;
    configuraFAX: TWideStringField;
    configuraCELULAR: TWideStringField;
    configuraEMAIL: TWideStringField;
    configuraDIRECCION: TWideStringField;
    configuraCONTACTO: TWideStringField;
    configuraFACTIMPRIME: TWideStringField;
    configuraGENERART: TWideStringField;
    configuraITBIS: TFloatField;
    configuraAVG_GANANCIA: TFloatField;
    configuraCOBRAR_ITBS: TWideStringField;
    configuraTHEMS: TWideStringField;
    configuraANCHO: TIntegerField;
    configuraALTO: TIntegerField;
    configuraRUTABACKUP: TWideStringField;
    configuraABRIRCAJON: TIntegerField;
    configuraPTINTERTPV: TWideStringField;
    configuraCARGO_CARD: TFloatField;
    configuraCARGO_CHEQUE: TFloatField;
    configuraMSN_PIE_FACT: TWideStringField;
    configuraIMP_CANT: TWideStringField;
    configuraIMPRIMIRCREDITO: TWideStringField;
    configuraIMPRIMIRCONTADO: TWideStringField;
    configuraDESCUENTO: TWideStringField;
    configuraTIPOITBS: TWideStringField;
    configuraTERMINAL: TWideStringField;
    configuraSTOPVENTAS: TFloatField;
    configuraSTOPCOMPRAS: TFloatField;
    configuraCONTROLSTOPVENTAS: TWideStringField;
    configuraCONTROLSTOPCOMPRAS: TWideStringField;
    configuraNCF_CF_INICIO_NUMERO: TFloatField;
    configuraNCF_CF_INICIO_LETRA: TWideStringField;
    configuraNCF_CF_CONTADOR: TIntegerField;
    configuraNCF_CF_FINAL_NUMERO: TFloatField;
    configuraNCF_VF_INICIO_NUMERO: TFloatField;
    configuraNCF_VF_INICIO_LETRA: TWideStringField;
    configuraNCF_VF_CONTADOR: TIntegerField;
    configuraNCF_VF_FINAL_NUMERO: TFloatField;
    configuraNCF_ESP_INICIO_NUMERO: TFloatField;
    configuraNCF_ESP_INICIO_LETRA: TWideStringField;
    configuraNCF_ESP_CONTADOR: TIntegerField;
    configuraNCF_ESP_FINAL: TFloatField;
    configuraNO_AUTORIZACION2: TFloatField;
    configuraNO_AUTORIZACION3: TFloatField;
    configuraNO_AUTORIZACION: TFloatField;
    configuraUSAR_CF: TWideStringField;
    configuraUSAR_VF: TWideStringField;
    configuraUSAR_ESP: TWideStringField;
    configuraROTULO_FC: TWideStringField;
    configuraROTULO_FVF: TWideStringField;
    configuraROTULO_ESP: TWideStringField;
    configuraVARIABLE_DEDUCIBLE: TFloatField;
    configuraLOGO: TBlobField;
    configuraCLAVEAUTORIZACION: TWideStringField;
    configuraCLAVEANULAR: TWideStringField;
    configuraTERMINAL_TPV: TWideStringField;
    configuraMONTOCF: TFloatField;
    configuraREDONDEAR: TWideStringField;
    configuraCOMISIONVENTA: TFloatField;
    configuraLOGO_FRONTAR: TBlobField;
    configuraLOGOF_TXT: TWideStringField;
    configuraLOGOP_TXT: TWideStringField;
    configuraINSERTARSERIAL: TIntegerField;
    configuraITBIS_D: TFloatField;
    configuraENLACEAWEB: TIntegerField;
    configuraPISTOLAOPTICA: TIntegerField;
    configuraTIPO_FACTURACION: TIntegerField;
    configuraEXISTENCIAFACT: TIntegerField;
    configuraRUTADB: TWideStringField;
    configuraCANT_CAJA: TIntegerField;
    configuraTAZA: TFloatField;
    configuraMONEDA: TWideStringField;
    configuraAPLICAR_AUMENTO_TAZA: TWideStringField;
    configuraANCHO_IMG_FRONTAL: TIntegerField;
    configuraALTO_IMG_FRONTAL: TIntegerField;
    configuraLEFT_IMAGEN: TIntegerField;
    configuraRIGHT_IMAGEN: TIntegerField;
    configuraREDONDEOCOMPLETO: TIntegerField;
    configuraTAZAINTERES: TIntegerField;
    configuraPERIODO: TWideStringField;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acceso_sup: Tacceso_sup;

implementation

{$R *.dfm}

uses Unit1, tools;

procedure Tacceso_sup.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key = vk_return then
  begin
      if datos.ZUconfiguracionCLAVEAUTORIZACION.Value = edit1.Text then
        begin

            //  frmlogin.ok1.Click;

           with datos.ZqUsuarios do
           begin
             close;
             sql.clear;
             sql.Add('select a.*, b.NOMBRES_EMP,B.tiendaid,c.descripcion,b.cargo from musuario a');
             sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
             sql.Add('left JOIN TIENDA C On b.tiendaid = c.tiendaid');
             sql.Add('where a.PASSW ='#39+unit1.frmLogin.clave.Text+#39);
           //  sql.Add('and NOMBRES_EMP ='#39+Trim(datos.ibqempleadosnombres_emp.Value)+#39);
            open;
           end;

//           frmprincipal.DBText1.Caption := datos.ibqempleadosnombres_emp.Value;
  //         frmprincipal.DBText2.Caption := datos.ibqempleadostipo.Value;
    //       frmprincipal.edit1.text := datos.ibqempleadosnombres_emp.Value;
             AsignaTienda  := datos.ZqUsuariostipo.Value;
             AsignaUsuario := datos.ZqUsuariosUSUARIOID.Value;


              with datos.ConsultaCaja do
                  begin
                  close;
                  sql.Clear;
                  sql.Add('select * from man_caja');
                  sql.Add('where caja_nombre =:ss');

              //    params[0].Value := unit1.frmLogin.DBLookupComboBox1.Text;

                  open;
              end;

              close;
        end;


  end;
end;

procedure Tacceso_sup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    close;
  end;
end;

procedure Tacceso_sup.FormShow(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
end;

end.
