unit Udescuento;

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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCurrencyEdit,
  cxTextEdit, dxGDIPlusClasses, Vcl.ExtCtrls, Data.DB, ZAbstractRODataset,
  ZDataset;

type
  TFDescuento = class(TForm)
    Image1: TImage;
    cxTextEdit1: TcxTextEdit;
    Label17: TLabel;
    Label18: TLabel;
    desc: TcxCurrencyEdit;
    cxButton1: TcxButton;
    Label1: TLabel;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosUNIDAD: TWideStringField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosTAZA_COMPRA: TFloatField;
    IbqRArticulosCOSTO_PR: TFloatField;
    IbqRArticulosBENEFICIOS: TFloatField;
    IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField;
    IbqRArticulosMAYOREO1: TFloatField;
    IbqRArticulosMAYOREO2: TFloatField;
    IbqRArticulosMAYOREO3: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosREFERENCIA: TWideStringField;
    IbqRArticulosUBICACION: TWideStringField;
    IbqRArticulosOBS: TIntegerField;
    IbqRArticulosCOMISION: TFloatField;
    IbqRArticulosIMAGEN: TBlobField;
    IbqRArticulosCAT: TWideStringField;
    IbqRArticulosCODIGOBARRA: TWideStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDescuento: TFDescuento;

implementation

{$R *.dfm}

uses Unit2,tools, touch, Unit59;

procedure TFDescuento.cxButton1Click(Sender: TObject);
begin

 try

with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, A.CODIGOBARRA, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.Add('WHERE a.CODIGOBARRA =:codS');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, A.CODIGOBARRA, a.obs, a.facturable');
    sql.Add('order by a.facturable asc');
    params[0].Value := 'DD';
    OPEN;
  end;

 with FrmTouch.numero_detallegen do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
     open;
  end;


datos.Zdetalle.append;
datos.ZdetalleNO_FACT.Value := FrmTouch.numero_detallegengen_id.Value;


datos.ZdetalleCANTIDAD.Value := 1.00;//Redondear_A((StrToFloat(t3.Text) / t4.Value),2);


    datos.ZdetalleTITULOPRN.Value := IbqRArticulosARTICULO.Value;
    datos.ZdetalleARTICULO.Value  := IbqRArticulosARTICULO.Value;
    datos.ZdetalleBARRA.Value     := IbqRArticulosMARCA.Value;
    datos.ZdetalleNO_FACT1.Value  := 'NORMAL';
      datos.ZdetalleLINEA.Value     := 1;
   // datos.ZdetalleNO_FACT1.Value  := NCnumero.text;
      datos.Zdetallecod_art.Value := IntToStr(IbqRArticulosCOD_ART.Value);
      datos.ZdetalleARTICULOID.value :=IbqRArticulosCOD_ART.Value;

      ///////  *****************************   Inicio Politica UNITARIO *********************************
//



 if IbqRArticulosITBIS.Value = 'Si'  then
               begin

                      datos.ZdetalleITBiS.Value := 'Si';
                      datos.ZdetalleITBS_ART.Value := 'S';
                      datos.ZdetalleEX.Value := '';




                                         datos.ZdetallePRECIO.Value   := ABS( DATOS.FbqMaster_FactMONTO.Value * 0.10);

                                         datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                                         datos.ZdetalleITBS.Value     := 0.00;
                                         datos.Zdetalleley.Value      := 0.00;

                                         datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                                         datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);



               FrmTouch.totales;


               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                     datos.FbqMaster_FactDESCUENTO.Value := 0.00;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + FrmTouch.itbs;
                  end;

           end;




           if IbqRArticulosITBIS.Value = 'No'  then begin


                 datos.ZdetalleITBiS.Value     := 'No';
                 datos.ZdetalleITBS_ART.Value  := 'N';
                 datos.ZdetalleEX.Value        := 'E';

                 datos.ZdetallePRECIO.Value   := (DATOS.FbqMaster_FactMONTO.Value * 0.10) * -1;

                 datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
                 datos.ZdetalleITBS.Value     := 0.00;
                 datos.Zdetalleley.Value      := 0.00;

                 datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                 datos.ZdetalleANCHO.Value     := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);


                 datos.zdetalle.First;

                    while not datos.zdetalle.Eof do
                     begin
                        FrmTouch.suma := (FrmTouch.suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        FrmTouch.itbs := (FrmTouch.itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
                        //descc := (descc + datos.zdetalle.FieldByName('ley').Value);
                        datos.zdetalle.Edit;
                        datos.zdetalletotal.Value   := datos.zdetalletotal.Value;
                        datos.ZdetalleITBS.Value    := datos.ZdetalleITBS.Value;
                        datos.ZdetalleANCHO.Value   := datos.zdetalleancho.Value;
                       /// datos.ZdetalleITBIS2.Value  := datos.ZdetalleITBIS2.Value;

                     datos.zdetalle.Next;

               end;


            FrmTouch.totales;


               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                     datos.FbqMaster_FactDESCUENTO.Value := 0.00;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + FrmTouch.itbs;
                  end;

        end;








   ///////  *****************************   Fin Politica UNITARIO *********************************






except




end;




desc.Clear;
cxTextEdit1.Clear;
 cxButton1.Enabled := false;
CLOSE;
end;

procedure TFDescuento.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = vk_return then
      begin
          datos.ZUconfiguracion.Open;
            if cxTextEdit1.Text = datos.ZUconfiguracionCLAVEAUTORIZACION.Value then
               begin
                  cxButton1.Enabled := true;
                  cxButton1.Click;
                    //desc.Enabled := true;
                    //DESC.SetFocus;
               end else begin
                    MsgError('Usted no esta autorizado para relaizar esa operación'#13+
                                 'Favor consultar con el Administrador');
                    // cxButton1.Enabled := true;
                   // desc.Enabled := true;
                    ///paneldesc.Visible := false;

               end;

      end;
end;

procedure TFDescuento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TFDescuento.FormShow(Sender: TObject);
begin
cxTextEdit1.SetFocus;
end;

end.
