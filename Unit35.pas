unit Unit35;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DateUtils, ZSqlUpdate, Vcl.ComCtrls;

type
  TFupdate = class(TForm)
    cxButton1: TcxButton;
    UpFechaV: TZQuery;
    UpFechaVNO_FACT: TIntegerField;
    UpFechaVFECHA_FAC: TDateField;
    UpFechaVTIPO: TWideStringField;
    UpFechaVCOD_CLIENT: TWideStringField;
    UpFechaVCOD_EMP: TWideStringField;
    UpFechaVNO_FACT1: TWideStringField;
    UpFechaVMONTO: TFloatField;
    UpFechaVHORA: TTimeField;
    UpFechaVPOGXITBS: TFloatField;
    UpFechaVTIPOPAGO: TWideStringField;
    UpFechaVMONTOPAGO: TFloatField;
    UpFechaVCONDICION: TWideStringField;
    UpFechaVRENTA: TWideStringField;
    UpFechaVCODIGO: TIntegerField;
    UpFechaVTIPOITBS: TWideStringField;
    UpFechaVVENDEDOR: TWideStringField;
    UpFechaVSITUACION: TWideStringField;
    UpFechaVCAJERO: TWideStringField;
    UpFechaVNCF: TWideStringField;
    UpFechaVRNC_CLIENTE: TWideStringField;
    UpFechaVNCF1: TFloatField;
    UpFechaVNOM_CLIENTE: TWideStringField;
    UpFechaVDESCUENTO: TFloatField;
    UpFechaVROTULO: TWideStringField;
    UpFechaVNO_AUTORIZA_NCF: TFloatField;
    UpFechaVMONTOFINANCIADO: TFloatField;
    UpFechaVCUOTAS: TIntegerField;
    UpFechaVINTERES: TFloatField;
    UpFechaVDIRECCION: TWideStringField;
    UpFechaVPAGADO: TFloatField;
    UpFechaVLEYPROPINA: TFloatField;
    UpFechaVCOMPROBANTE: TWideStringField;
    UpFechaVTERMINAL: TWideStringField;
    UpFechaVEFECTIVO: TFloatField;
    UpFechaVDEVOLUCION1: TFloatField;
    UpFechaVRESTANTE: TFloatField;
    UpFechaVABONO: TFloatField;
    UpFechaVCHEK: TWideStringField;
    UpFechaVNO_RECIBO: TIntegerField;
    UpFechaVPAGADOCXC: TFloatField;
    UpFechaVMESES: TIntegerField;
    UpFechaVDIAS: TIntegerField;
    UpFechaVPENDIENTE: TFloatField;
    UpFechaVESTADOPAGO: TWideStringField;
    UpFechaVDEVOLUCION: TFloatField;
    UpFechaVCONDICION_PAGO: TIntegerField;
    UpFechaVFECHAVENCIMIENTO: TDateField;
    UpFechaVCOMBO: TWideStringField;
    UpFechaVCOBRADO: TIntegerField;
    UpFechaVQUEES: TWideStringField;
    UpFechaVUSUARIOID: TIntegerField;
    UpFechaVCLIENTEID: TIntegerField;
    UpFechaVCONDICIONVENTA: TWideStringField;
    UpFechaVTIENDAID: TIntegerField;
    UpFechaVPINREFERIDO: TWideStringField;
    UpFechaVNC: TIntegerField;
    UpFechaVCODVEN: TIntegerField;
    UpFechaVCAJEROID: TIntegerField;
    UpFechaVNOMBRECLIENTE_PRN: TWideStringField;
    UpFechaVFECHA_FINAL: TDateField;
    UpFechaVINTERES_DIARIO: TFloatField;
    UpFechaVINTERES_ACUM: TFloatField;
    UpFechaVDIAS_TRANS: TIntegerField;
    UpFechaVFECHA_ULTIMO_PAGO: TDateField;
    UpFechaVDIAS_ATRASO: TIntegerField;
    UpFechaVINTERES_PAGADO: TFloatField;
    UpFechaVCAPITAL_PAGADO: TFloatField;
    UpFechaVDESC_CAPITAL: TFloatField;
    UpFechaVIDDR: TIntegerField;
    UpFechaVNOMBREDELDR: TWideStringField;
    UpFechaVCAJA: TWideStringField;
    UpFechaVNCF_NOMBRE: TWideStringField;
    UpFechaVMORA: TFloatField;
    UpFechaVNUMERO_FACTURA: TFloatField;
    UpFechaVBONOS: TFloatField;
    UpFechaVOBSERVACIONES: TWideMemoField;
    UpFechaVIDRUTA: TIntegerField;
    UpFechaVCAJAID: TIntegerField;
    UpFechaVTCREDITO: TFloatField;
    UpFechaVVEFECTIVA: TFloatField;
    UpFechaVIDTECNICO: TIntegerField;
    UpFechaVUBICACION: TWideStringField;
    UpFechaVPAGOXEFECTIVO: TFloatField;
    UpFechaVPAGOXCHEQUE: TFloatField;
    UpFechaVPAGOXTARJETA: TFloatField;
    UpFechaVPAGOXBONO: TFloatField;
    Update: TZUpdateSQL;
    ProgressBar1: TProgressBar;
    cxButton2: TcxButton;
    UpdateU: TZReadOnlyQuery;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fupdate: TFupdate;

implementation

{$R *.dfm}

uses Unit2, tools;

procedure TFupdate.cxButton1Click(Sender: TObject);
var
diascondicioncredito : integer;
i : integer;
begin


  with UpFechaV do
        begin
            close;
            sql.Clear;
            sql.Add('select * from  master_fact where tipo =''CREDITO''');
            sql.Add('AND condicion=''ACTIVA''');
            SQL.ADD('AND SITUACION =''IMPRESA''');
            OPEN;

            i:=0;

            FIRST;
            ProgressBar1.Visible := true;
            ProgressBar1.Step := 0;
          while NOT EOF do
               BEGIN
               edit;
               i := i + 5;
               ShowMessage(''+IntTostr(i));
                ProgressBar1.Step := ProgressBar1.Step + i;
               WITH datos.FbtClientes do
                  begin
                      close;
                      sql.Clear;
                      sql.Add('select * from cliente');
                      sql.Add('where  codigo =:opp');
                      params[0].Value := UpfechaVclienteid.value;
                      open;
                  end;


                   if datos.FbtClientesCONDICION.Value = '15 Días' then
                    begin
                       diascondicioncredito := 15;
                    end;

                    if datos.FbtClientesCONDICION.Value = '30 Días' then
                    begin
                       diascondicioncredito := 30;
                    end;

                   if datos.FbtClientesCONDICION.Value = '45 Días' then
                    begin
                       diascondicioncredito := 45;
                    end;

                    if datos.FbtClientesCONDICION.Value = '60 Días' then
                    begin
                       diascondicioncredito := 60;
                    end;

                    UpFechaVFECHAVENCIMIENTO.Value :=  IncDay(UpFechaVFECHA_FAC.AsDateTime, diascondicioncredito);
                    UpFechaVCONDICIONVENTA.Value   :=  datos.FbtClientesCONDICION.Value;

               NEXT;
               END;

               UpFechaV.ApplyUpdates;
               datos.Data.Commit;

               Upfechav.Close;
               ProgressBar1.Visible := false;
        end;



end;

procedure TFupdate.cxButton2Click(Sender: TObject);
var
ITB : Currency;
BN  : Currency;
begin
with datos.MantArt do
  begin
    open;
    first;

    while not eof do
      begin
        datos.MantArt.Edit;


             // ITB :=  (datos.MantArtPRECIO_A.Value - )- datos.MantArtCOSTO.Value;

              datos.MantArt.Edit;
             // datos.MantArtbeneficios.Value := Rounded(((datos.MantArtCOSTO.Value / datos.MantArtPRECIO_A.Value) * 100),2);

            //  Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtBENEFICIOS.Value)/100));
              datos.MantArtPRECIO_Bruto1.Value := datos.MantArtPRECIO_A.Value;
              datos.MantArtPRECIO_BRUTO2.Value := datos.MantArtPRECIO_B.Value;
              datos.MantArtPRECIO_BRUTO3.Value :=  datos.MantArtPRECIO_D.Value;

              itb := 0.00;
              Bn  := 0.00;


               if datos.MantArtCOSTO.Value > 0 then begin
               ITB :=  (datos.MantArtPRECIO_A.Value - (datos.MantArtCOSTO.Value*(datos.MantArtTAZA_COMPRA.Value/100)))- datos.MantArtCOSTO.Value;

              datos.MantArt.Edit;
              datos.MantArtbeneficios.Value := Rounded(((itb /datos.MantArtCOSTO.Value) * 100),2);
             // datos.MantArtbeneficios.Value := datos.MantArtPRECIO_A.Value - datos.MantArtcosto.Value;
               end;
               if datos.MantArtCOSTO.Value > 0 then begin
              ITB :=  (datos.MantArtPRECIO_b.Value - (datos.MantArtCOSTO.Value*(datos.MantArtTAZA_COMPRA.Value/100)))- datos.MantArtCOSTO.Value;

              datos.MantArt.Edit;
              datos.MantArtutilidad2.Value := Rounded(((itb /datos.MantArtCOSTO.Value) * 100),2);

              Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad2.Value)/100));
              datos.MantArtPRECIO_Bruto2.Value := round(Bn + datos.MantArtCOSTO.Value);
         end;

             if datos.MantArtCOSTO.Value > 0 then begin

              ITB :=  (datos.MantArtPRECIO_d.Value - (datos.MantArtCOSTO.Value*(datos.MantArtTAZA_COMPRA.Value/100)))- datos.MantArtCOSTO.Value;

              datos.MantArt.Edit;
              datos.MantArtutilidad3.Value := Rounded(((itb /datos.MantArtCOSTO.Value) * 100),2);

              Bn  := (datos.MantArtCOSTO.Value * ((datos.MantArtutilidad3.Value)/100));
              datos.MantArtPRECIO_Bruto3.Value := round(Bn + datos.MantArtCOSTO.Value);
           end;

        next;
      end;

      datos.MantArt.ApplyUpdates;
      datos.Data.Commit;
  end;
end;

end.
