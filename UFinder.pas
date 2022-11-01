unit UFinder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, Vcl.Menus,
  cxButtons, dxSkinSharp, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmFinder = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Image1: TImage;
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
    DsQArticulos: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_A: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Edit2: TEdit;
    Edit3: TEdit;
    cxButton9: TcxButton;
    Almacenes1: TZReadOnlyQuery;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    PROCEDURE ADDPIZZA;
    procedure cxButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinder: TFrmFinder;

implementation

{$R *.dfm}

uses UInicio, Unit2, Tools, Pizeria, touch, Ustart;

procedure TFrmFinder.ADDPIZZA;
var
SeparadaPorComas :string;
   n                :integer;
   CANTV : STRING;
   CODIGOV : STRING;
   codoriginal : string;
   cantoriginal :string;
begin


if DATOS.ZUconfiguracionTERMINAL.Value = 'Touch' then begin

    if cantv ='' then
       begin
           cantoriginal := '1';
       end;



                                           //  edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
                                            Frmtouch.edit11.Text := '1.00';

                                             Frmtouch.t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             Frmtouch.t2.Text     := ibqrArticulosarticulo.Value;

                                          //   Descc_t.Text := IbqRArticulosCOMISION.text;

                                           //  edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

                                                 if Frmtouch.ibqclientescolor.Value = 'PRECIO 1' then
                                                 BEGIN
                                                  Frmtouch.t4.value    := ibqrArticulosprecio_A.value;
                                                 END;


                                              if Frmtouch.ibqclientescolor.Value = 'PRECIO 2' then
                                                 BEGIN
                                                  Frmtouch.t4.value    := ibqrArticulosprecio_B.value;
                                                 END;

                                                  if Frmtouch.ibqclientescolor.Value = 'PRECIO 3' then
                                                 BEGIN
                                                  Frmtouch.t4.value    := ibqrArticulosprecio_D.value;
                                                 END;
//
                                       //     lunidad.Text := ibqrarticulosunidad.Value;
                                            Frmtouch.t3.Text := cantoriginal;




                              cxbutton9.Click;
                               datos.FbCategorias.CLOSE;
end;


if DATOS.ZUconfiguracionTERMINAL.Value = 'Pizzeria' then begin

    if cantv ='' then
       begin
           cantoriginal := '1';
       end;



                                           //  edit10.Text := FloatToStr(ibqrarticulosexistencia.Value);
                                            FrmPizeria.edit11.Text := '1.00';

                                             FrmPizeria.t1.Text     := ibqrArticuloscodigoTXT.Value;
                                             FrmPizeria.t2.Text     := ibqrArticulosarticulo.Value;

                                          //   Descc_t.Text := IbqRArticulosCOMISION.text;

                                           //  edit14.Text := floatToStr(ibqrArticulosTaza_compra.Value);

                                                 if FrmPizeria.ibqclientescolor.Value = 'PRECIO 1' then
                                                 BEGIN
                                                  FrmPizeria.t4.value    := ibqrArticulosprecio_A.value;
                                                 END;


                                              if FrmPizeria.ibqclientescolor.Value = 'PRECIO 2' then
                                                 BEGIN
                                                  FrmPizeria.t4.value    := ibqrArticulosprecio_B.value;
                                                 END;

                                                  if FrmPizeria.ibqclientescolor.Value = 'PRECIO 3' then
                                                 BEGIN
                                                  FrmPizeria.t4.value    := ibqrArticulosprecio_D.value;
                                                 END;
//
                                       //     lunidad.Text := ibqrarticulosunidad.Value;
                                            FrmPizeria.t3.Text := cantoriginal;




                              cxbutton9.Click;
                               datos.FbCategorias.CLOSE;
end;


end;

procedure TFrmFinder.cxButton9Click(Sender: TObject);
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
descc : Currency;
comision: double;
begin

  if DATOS.ZUconfiguracionTERMINAL.Value = 'Pizzeria' then
  BEGIN

    try
      with FrmPizeria.numero_detallegen do
      begin
        CLOSE;
        sql.Clear;
        sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
        open;
      end;

      DATOS.Zdetalle.append;
      DATOS.ZdetalleNO_FACT.Value := FrmPizeria.numero_detallegengen_id.Value;

      DATOS.ZdetalleCANTIDAD.Value := 1.00;
      // Redondear_A((StrToFloat(t3.Text) / t4.Value),2);

      DATOS.ZdetalleTITULOPRN.Value := IbqRArticulosARTICULO.Value + ' (' +
        IbqRArticulosMARCA.Value + ')';
      DATOS.ZdetalleARTICULO.Value := IbqRArticulosARTICULO.Value;
      DATOS.ZdetalleBARRA.Value := IbqRArticulosMARCA.Value;
      DATOS.ZdetalleNO_FACT1.Value := 'NORMAL';

      // datos.ZdetalleNO_FACT1.Value  := NCnumero.text;
      DATOS.Zdetallecod_art.Value := IntToStr(IbqRArticulosCOD_ART.Value);
      DATOS.ZdetalleARTICULOID.Value := IbqRArticulosCOD_ART.Value;

      /// ////  *****************************   Inicio Politica UNITARIO *********************************
      //
      if IbqRArticulosPOLITICA.Value = 'Unitario' then
      begin
        //

        if IbqRArticulosITBIS.Value = 'Si' then
        begin

          DATOS.ZdetalleITBiS.Value := 'Si';
          DATOS.ZdetalleITBS_ART.Value := 'S';
          DATOS.ZdetalleEX.Value := '';

          DATOS.ZdetallePRECIO.Value := FrmPizeria.t4.Value / 1.18;
          DATOS.ZdetalleIMPUESTO.Value := DATOS.ZdetallePRECIO.Value *
            DATOS.ZdetalleCANTIDAD.Value;
          DATOS.ZdetalleITBS.Value :=
            (DATOS.ZdetallePRECIO.Value *
            (DATOS.ZUconfiguracionITBIS.Value / 100));
          DATOS.Zdetalleley.Value := (DATOS.ZdetallePRECIO.Value * 0.10);

          DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleIMPUESTO.Value +
            DATOS.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleIMPUESTO.Value *
            (IbqRArticulosCOMISION.Value / 100);

          FrmPizeria.totales;


          // if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin

          // end else begin
          // datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
          // end;

        end;

        if IbqRArticulosITBIS.Value = 'No' then
        begin

          DATOS.ZdetalleITBiS.Value := 'No';
          DATOS.ZdetalleITBS_ART.Value := 'N';
          DATOS.ZdetalleEX.Value := 'E';

          DATOS.ZdetallePRECIO.Value := FrmPizeria.t4.Value;
          DATOS.ZdetalleIMPUESTO.Value := DATOS.ZdetallePRECIO.Value *
            DATOS.ZdetalleCANTIDAD.Value;
          DATOS.ZdetalleITBS.Value := 0.00;
          DATOS.Zdetalleley.Value := DATOS.ZdetallePRECIO.Value;

          DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleIMPUESTO.Value +
            DATOS.ZdetalleITBS.Value;
          // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
          DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleIMPUESTO.Value *
            (IbqRArticulosCOMISION.Value / 100);

          DATOS.Zdetalle.First;

          while not DATOS.Zdetalle.Eof do
          begin
            SUMA := (SUMA + DATOS.Zdetalle.FieldByname('total').Value);
            // * data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + DATOS.Zdetalle.FieldByname('itbs').Value);
            // * data.ibtdetallefactCANTIDAD.AsInteger;
            // descc := (descc + datos.zdetalle.FieldByName('ley').Value);
            DATOS.Zdetalle.Edit;
            DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleTOTAL.Value;
            DATOS.ZdetalleITBS.Value := DATOS.ZdetalleITBS.Value;
            DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleANCHO.Value;
            /// datos.ZdetalleITBIS2.Value  := datos.ZdetalleITBIS2.Value;

            DATOS.Zdetalle.Next;

          end;

          DATOS.FbqMaster_Fact.Edit;
          DATOS.FbqMaster_Factdescuento.Value := (SUMA - itbs) * 0.10;
          DATOS.FbqMaster_FactPOGXITBS.Value := itbs;
          DATOS.FbqMaster_FactMONTO.Value := SUMA - itbs;

          DATOS.FbqMaster_FactMONTOPAGO.Value :=
            DATOS.FbqMaster_FactMONTO.Value + itbs;

        end;

      end;
      /// ////  *****************************   Fin Politica UNITARIO *********************************

    except

    end;

  END;

  if DATOS.ZUconfiguracionTERMINAL.Value = 'Touch' then
  BEGIN

    try
      with Frmtouch.numero_detallegen do
      begin
        CLOSE;
        sql.Clear;
        sql.Add('select gen_id(GEN_DETAILFACT_ID, 1) from RDB$DATABASE');
        open;
      end;

      DATOS.Zdetalle.append;
      DATOS.ZdetalleNO_FACT.Value := Frmtouch.numero_detallegengen_id.Value;

      if IbqRArticulosPOLITICA.Value = 'Unitario' then
      begin
        DATOS.ZdetalleCOMBO.Value := 'UNI';
      end;

      if IbqRArticulosPOLITICA.Value = 'oferta' then
      begin
        DATOS.ZdetalleCOMBO.Value := 'OFE';
      end;

      if IbqRArticulosPOLITICA.Value = 'servicio' then
      begin
        DATOS.ZdetalleCOMBO.Value := 'SER';
      end;

      if IbqRArticulosPOLITICA.Value = 'fraccional' then
      begin
        DATOS.ZdetalleCOMBO.Value := 'FRA';
      end;

      DATOS.ZdetalleCANTIDAD.Value := 1.00;
      // Redondear_A((StrToFloat(t3.Text) / t4.Value),2);

      DATOS.ZdetalleTITULOPRN.Value := IbqRArticulosARTICULO.Value;
      DATOS.ZdetalleARTICULO.Value := IbqRArticulosARTICULO.Value;
      DATOS.ZdetalleBARRA.Value := IbqRArticulosMARCA.Value;
      DATOS.ZdetalleNO_FACT1.Value := 'NORMAL';
      DATOS.ZdetalleLINEA.Value := 1;
      // datos.ZdetalleNO_FACT1.Value  := NCnumero.text;
      DATOS.Zdetallecod_art.Value := IntToStr(IbqRArticulosCOD_ART.Value);
      DATOS.ZdetalleARTICULOID.Value := IbqRArticulosCOD_ART.Value;

      /// ////  *****************************   Inicio Politica UNITARIO *********************************
      //

      if IbqRArticulosITBIS.Value = 'Si' then
      begin
        if DATOS.ZUconfiguracionIMPRESION_RAPIDA.Value = 'Si' then
         begin
                DATOS.ZdetalleITBiS.Value := 'Si';
                DATOS.ZdetalleITBS_ART.Value := 'S';
                DATOS.ZdetalleEX.Value := '';

                DATOS.ZdetallePRECIO.Value := Frmtouch.t4.Value / 1.18;
                DATOS.ZdetalleIMPUESTO.Value := DATOS.ZdetallePRECIO.Value *
                  DATOS.ZdetalleCANTIDAD.Value;
                DATOS.ZdetalleITBS.Value :=
                  (DATOS.ZdetallePRECIO.Value *
                  (DATOS.ZUconfiguracionITBIS.Value / 100));
                DATOS.Zdetalleley.Value := (DATOS.ZdetallePRECIO.Value * 0.10);

                DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleIMPUESTO.Value +
                  DATOS.ZdetalleITBS.Value;
                // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleIMPUESTO.Value *
                  (IbqRArticulosCOMISION.Value / 100);

                Frmtouch.totales;

                if DATOS.FbqMaster_Factdescuento.Value = 0.00 then
                begin
                  DATOS.FbqMaster_Factdescuento.Value := 0.00;
                end
                else
                begin
                  DATOS.FbqMaster_FactMONTOPAGO.Value :=
                    (DATOS.FbqMaster_FactMONTO.Value -
                    DATOS.FbqMaster_Factdescuento.Value) + itbs;
                end;
         end else begin

                        DATOS.ZdetalleITBiS.Value := 'Si';
                        DATOS.ZdetalleITBS_ART.Value := 'S';
                        DATOS.ZdetalleEX.Value := '';

                        DATOS.ZdetallePRECIO.Value := Frmtouch.t4.Value;
                        DATOS.ZdetalleIMPUESTO.Value := DATOS.ZdetallePRECIO.Value *
                          DATOS.ZdetalleCANTIDAD.Value;
                        DATOS.ZdetalleITBS.Value :=
                          (DATOS.ZdetallePRECIO.Value *
                          (DATOS.ZUconfiguracionITBIS.Value / 100));

                        DATOS.Zdetalleley.Value := (DATOS.ZdetallePRECIO.Value * 0.10);

                        DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleIMPUESTO.Value +
                          DATOS.ZdetalleITBS.Value;
                        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
                        DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleIMPUESTO.Value *
                          (IbqRArticulosCOMISION.Value / 100);

                        Frmtouch.totales;

                        if DATOS.FbqMaster_Factdescuento.Value = 0.00 then
                        begin
                          DATOS.FbqMaster_Factdescuento.Value := 0.00;
                        end
                        else
                        begin
                          DATOS.FbqMaster_FactMONTOPAGO.Value :=
                            (DATOS.FbqMaster_FactMONTO.Value -
                            DATOS.FbqMaster_Factdescuento.Value) + itbs;
                        end;
                  end;

      end;

      if IbqRArticulosITBIS.Value = 'No' then
      begin

        DATOS.ZdetalleITBiS.Value := 'No';
        DATOS.ZdetalleITBS_ART.Value := 'N';
        DATOS.ZdetalleEX.Value := 'E';

        DATOS.ZdetallePRECIO.Value := Frmtouch.t4.Value;
        DATOS.ZdetalleIMPUESTO.Value := DATOS.ZdetallePRECIO.Value *
          DATOS.ZdetalleCANTIDAD.Value;
        DATOS.ZdetalleITBS.Value := 0.00;
        DATOS.Zdetalleley.Value := DATOS.ZdetallePRECIO.Value;

        DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleIMPUESTO.Value +
          DATOS.ZdetalleITBS.Value;
        // datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
        DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleIMPUESTO.Value *
          (IbqRArticulosCOMISION.Value / 100);

        DATOS.Zdetalle.First;

        while not DATOS.Zdetalle.Eof do
        begin
          SUMA := (SUMA + DATOS.Zdetalle.FieldByname('total').Value);
          // * data.ibtdetallefactCANTIDAD.AsInteger;
          itbs := (itbs + DATOS.Zdetalle.FieldByname('itbs').Value);
          // * data.ibtdetallefactCANTIDAD.AsInteger;
          // descc := (descc + datos.zdetalle.FieldByName('ley').Value);
          DATOS.Zdetalle.Edit;
          DATOS.ZdetalleTOTAL.Value := DATOS.ZdetalleTOTAL.Value;
          DATOS.ZdetalleITBS.Value := DATOS.ZdetalleITBS.Value;
          DATOS.ZdetalleANCHO.Value := DATOS.ZdetalleANCHO.Value;
          /// datos.ZdetalleITBIS2.Value  := datos.ZdetalleITBIS2.Value;

          DATOS.Zdetalle.Next;

        end;

        DATOS.FbqMaster_Fact.Edit;
        DATOS.FbqMaster_Factdescuento.Value := 0.00; // (suma - itbs) * 0.10;
        DATOS.FbqMaster_FactPOGXITBS.Value := itbs;
        DATOS.FbqMaster_FactMONTO.Value := SUMA - itbs;

        DATOS.FbqMaster_FactMONTOPAGO.Value :=
          DATOS.FbqMaster_FactMONTO.Value + itbs;

      end;

      /// ////  *****************************   Fin Politica UNITARIO *********************************

    except

    end;

  END;


end;

procedure TFrmFinder.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
 if edit2.Text <>'DASH' then BEGIN

  if datos.ZUconfiguracionEXISTENCIAFACT.Value = 2 then
                                    begin

                                    with almacenes1 do
                                            begin
                                              close;
                                              sql.Clear;
                                              sql.Add('select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.entrada - a.salida) Existencia  from minventario a');
                                              sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                                              sql.Add('left join almacenes c On a.cod_alm = c.id');
                                              sql.Add('and b.politica <> ''Servicio''');
                                              sql.Add('where a.cod_art =:opp');
                                              sql.Add('group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descripcion');
                                              params[0].Value := IbqRArticulosCOD_ART.Value;
                                              open;
                                            end;


                                          if Almacenes1EXISTENCIA.Value > 0  then
                                            begin

                                            addpizza;
                                            close;
                                            end ELSE begin
                                                       MsgInformacion('* Articulo sin Existencia *');
                                                     end;
                                    end ELSE begin
                                                  addpizza;
                                            close;
                                             end;
 END ELSE begin

                with FStart.QproductosVendidos do
                   begin
                   close;
                      sql.Clear;
                      sql.Add('SELECT first 10 a.articuloid, a.tituloprn, sum(a.cantidad) as Tcantidad  FROM detailfact a');
                      sql.Add('left join Master_fact b On a.masterid = b.no_fact');
                      sql.Add('where b.fecha_fac >=:fecha1 and b.fecha_fac <=:fecha2');
                      sql.Add('AND A.ARTICULOID =:COD');

                      sql.Add('GROUP BY a.articuloid, a.tituloprn');
                      sql.Add('Order by SUM(a.CANTIDAD) desc');

                      params[0].Value := FStart.Finicio01.Date;
                      params[1].Value := FStart.Ffinal01.Date;
                      PARAMS[2].Value := IbqRArticulosCOD_ART.Value;


                      open;

                   end;


                   CLOSE;
          end;



end;

procedure TFrmFinder.Edit1Change(Sender: TObject);
begin


with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');


    sql.Add('WHERE a.articulo like '+#39+'%'+edit1.Text+'%'+#39);
//    sql.Add('and a.marca <>''MATERIA PRIMA''');
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');



    OPEN;
  end;




end;

procedure TFrmFinder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmFinder := nil;
Action := caFree;
end;

end.
