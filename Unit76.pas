unit Unit76;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, unit2, Data.DB, ZAbstractRODataset, ZDataset,
  cxMaskEdit, cxDropDownEdit, cxCalc, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  IdBaseComponent, IdScheduler, IdSchedulerOfThread, IdSchedulerOfThreadDefault,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCheckBox, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmNotaCF = class(TForm)
    Panel1: TPanel;
    t1: TcxTextEdit;
    Label10: TLabel;
    t2: TcxTextEdit;
    Label11: TLabel;
    Label30: TLabel;
    t4: TcxCurrencyEdit;
    Label7: TLabel;
    cxButton9: TcxButton;
    numero: TZReadOnlyQuery;
    numeroMAX: TIntegerField;
    numeroD: TZReadOnlyQuery;
    numeroDMAX: TIntegerField;
    Edit1: TEdit;
    t3: TcxCalcEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Consulta: TZReadOnlyQuery;
    MC: TZReadOnlyQuery;
    MCMNCID: TIntegerField;
    MCFECHA: TDateField;
    MCUSUARIOID: TIntegerField;
    MCNO_FACT: TIntegerField;
    MCCLIENTEID: TIntegerField;
    MCESTADO: TIntegerField;
    MCAFECTA_INV: TIntegerField;
    MCAFECTA_CAJA: TIntegerField;
    MCMONTO: TFloatField;
    MCOBSERVACION: TWideMemoField;
    MCCONIDICIONFACT: TWideStringField;
    MCIDTURNO: TIntegerField;
    MCNOTA: TWideStringField;
    MCNOMBRES_EMP: TWideStringField;
    MCNOMBRES: TWideStringField;
    DataSource1: TDataSource;
    DsMC: TDataSource;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRES: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Panel2: TPanel;
    inicio: TcxDateEdit;
    Label1: TLabel;
    fechafinal: TcxDateEdit;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    update: TZReadOnlyQuery;
    procedure cxButton9Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotaCF: TFrmNotaCF;

implementation

{$R *.dfm}

uses Unit59,tools, Unit39, UFindArticulos;

procedure TFrmNotaCF.cxButton1Click(Sender: TObject);
begin
frmNC.showmodal;
end;

procedure TFrmNotaCF.cxButton2Click(Sender: TObject);
begin
   with mc do
  begin
    close;
    sql.clear;
    sql.Add('select a.*, c.nombres_emp, d.nombres from mnoc a');
    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
    sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
    sql.Add('left join cliente d On a.clienteid = d.codigo');
    sql.Add('where a.AFECTA_INV = 1');
    sql.Add('and a.fecha >=:fecha1');
    sql.Add('and a.fecha <=:fecha2');
    sql.Add('and a.clienteid =:opp');
    Params[0].Value := inicio.Date;
    Params[1].Value := fechafinal.Date;
    Params[2].Value := FrmNFact_normal.IbqClientesCODIGO.Value;
    open;
  end;
end;

procedure TFrmNotaCF.cxButton9Click(Sender: TObject);
var
  suma, ITBS, PRECIO_C: currency;
begin
with numerod do
 begin
   close;
   open;
 end;

datos.DNC.Open;
datos.DNC.Insert;
datos.DNCDNCID.Value := numerodmax.Value + 1;
datos.DNCCOD_ART.Value := StrToInt(t1.Text);
datos.DNCARTICULO.Value := t2.Text;

datos.DNCCANT.Value := StrToFloat(t3.Text);
datos.DNCPRECIO.Value := t4.Value;

datos.DNCTOTAL.Value := datos.DNCCANT.Value * datos.DNCPRECIO.Value;
datos.DNCcondicion.Value  := 'PEDIDO';
DATOS.DNCIDRUTA.Value := sTRtOiNT(EDIT1.Text) ;
datos.DNCFECHA.Value := now();
datos.DNCESTADO.Value := 1;

datos.DNC.Post;


  datos.DNC.ApplyUpdates;


   datos.Zdetalle.Edit;
   if datos.ZdetalleITBS_ART.Value = 'S' then
      begin


        PRECIO_C :=0.00;


         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               PRECIO_C := DATOS.ZdetallePRECIO.Value / datos.ZdetalleCANTIDAD.Value;
           end;

         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               PRECIO_C := DATOS.ZdetallePRECIO.Value;
           end;
         // showmessage(''+FloatToStr(t3.Value));
        datos.Zdetallecantidad.Value := datos.Zdetallecantidad.Value - t3.Value;

        //datos.ZdetalleITBS_ART.Value := 'S';
        datos.ZdetalleEX.Value := '';

         if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin

          //   datos.ZdetallePRECIO.Value :=(t4.Value);
             datos.ZdetalleITBS.Value  := 0.00;//datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100);
             datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value * t3.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);           end;
           end;

          if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin

             datos.ZdetallePRECIO.Value :=precio_c * datos.ZdetalleCANTIDAD.Value;
             datos.ZdetalleITBS.Value  := (datos.ZdetallePRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100));
             datos.ZdetalleTOTAL.Value := datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;


        if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin

                //
             datos.ZdetallePRECIO.Value :=  precio_c;
             datos.ZdetalleITBS.Value   :=  (precio_c  * datos.ZdetalleCANTIDAD.Value) * (strtofloat(FrmNFact_normal.edit14.Text)/100);
             datos.ZdetalleTOTAL.Value  :=  (precio_c  * datos.ZdetalleCANTIDAD.Value) + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
           end;

      end else begin

         datos.Zdetallecantidad.Value := datos.Zdetallecantidad.Value - t3.Value;
         datos.ZdetalleITBS_ART.Value := 'N';
         datos.ZdetalleEX.Value := 'E';
     //   datos.ZdetallePRECIO.Value    := t4.Value;
         datos.ZdetalleITBS.Value      := 0.00;
         datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
      end;

      // datos.ZdetalleTOTAL.Value := datos.ZdetalleCANTIDAD.Value * datos.ZdetallePRECIO.Value;
       datos.zdetalle.First;

   while not datos.zdetalle.Eof do
         begin
            suma := (suma + datos.zdetalle.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            itbs := (itbs + datos.zdetalle.FieldByname('itbs').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;
            datos.zdetalle.Edit;
            datos.zdetalletotal.Value := datos.zdetalletotal.Value;
            datos.ZdetalleITBS.Value  := datos.ZdetalleITBS.Value;

        // data.ibtdetallefactITBS.Value := data.ibtdetallefactITBS.Value;
        // data.ibtdetallefactDESCUENTO.Value :=data.ibtdetallefactDESCUENTO.Value;
         datos.zdetalle.Next;

   end;


datos.FbqMaster_Fact.Edit;
datos.FbqMaster_Factdescuento.Value := 0.00;
datos.FbqMaster_FactPOGXITBS.Value := itbs;//cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '1' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma;

               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value;
               end else begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value;
               end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '2' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

if datos.ZUconfiguracionCOBRAR_ITBS.Value = '3' then
           begin
               datos.FbqMaster_FactMONTO.Value := suma - itbs;
               if datos.FbqMaster_FactDESCUENTO.Value = 0.00 then begin
                  datos.FbqMaster_FactMONTOPAGO.Value := datos.FbqMaster_FactMONTO.Value + itbs;
                  end else begin
                      datos.FbqMaster_FactMONTOPAGO.Value := (datos.FbqMaster_FactMONTO.Value - datos.FbqMaster_Factdescuento.Value) + itbs;
                  end;

           end;

           t1.Clear;
t2.Clear;
t3.Clear;
t4.Clear;
 close;
end;

procedure TFrmNotaCF.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

datos.FbCategorias.Open;


         with FrmNFact_normal.ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a, a.precio_b,a.referencia, a.comision, a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.OBS,');
                sql.Add('a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,  a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion from mtartuculos a ');
                sql.Add('where a.codigobarra =:PPP');
                sql.Add('group by a.unidad,a.precio_a, a.precio_b, a.precio_d, a.referencia, a.comision, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, ');
                sql.Add('a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.ubicacion,a.OBS');
                PARAMS[0].Value := 'NC001';
                open;
              end;


 //FrmNFact_normal.edit10.Text := FloatToStr(FrmNFact_normal.ibqrarticulosexistencia.Value);
 FrmNFact_normal.edit11.Text := '1.00';
//
                                             FrmNFact_normal.t1.Text            := FrmNFact_normal.ibqrArticuloscodigoTXT.Value;
                                             FrmNFact_normal.t2.Text            := FrmNFact_normal.ibqrarticulosARTICULO.Value;
                                             FrmFindArticulos.edit1.Text         := 'NC001';
                                             FrmNFact_normal.NCnumero.Text      := intTOStr(MCMNCID.Value);

                                             if FrmNFact_normal.chk.Checked = true then begin

                                               FrmNFact_normal.tecnico   := StrToInt(FrmNFact_normal.TecnicosCod_emp.value);
                                             end;

                                          // Showmessage(''+ibqrArticulositbis.Value);
                                           //  EITBIS.Text  := ibqrArticulositbis.Text;

                                             FrmNFact_normal.edit14.Text := floatToStr(FrmNFact_normal.ibqrArticulosTaza_compra.Value);
                                             FrmNFact_normal.t4.value    := MCMONTO.Value * -1;


                                            FrmNFact_normal.lunidad.Text := FrmNFact_normal.ibqrarticulosunidad.Value;
//                                              //FrmNFact_normal.LUnid.ItemIndex := -1;
//                                             // FrmNFact_normal.LUnid.ItemIndex := 0;
                                               FrmNFact_normal.t3.Text := '1';

                                              FrmNFact_normal.linea.Text := 'NC';
//                                              taza.Text := ibqrarticulostaza_compra.Text;



                                              FrmNFact_normal.topcion.Text := 'SER';


//                                              cxButton9.Enabled := true;



                                                try
                                                FrmNFact_normal.cxbutton9.Click;
                                                except

                                                end;
                                                   CLOSE;
                                           // FrmNFact_normal.MEMO2.Clear;
                                          //  FrmNFact_normal.CURRENCYEDIT1.Value := 0.00;

                                         with update do
                                           begin
                                             close;
                                             sql.Clear;
                                             sql.Add('update mnoc set afecta_inv = 2');
                                             sql.Add('where mncid =:opp');
                                             params[0].Value := MCMNCID.Value;
                                             ExecSQL;

                                           end;

end;

procedure TFrmNotaCF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

FrmNotaCF := nil;
Action := caFree;

end;

procedure TFrmNotaCF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    datos.DNC.Close;
    close;

  end;
end;

procedure TFrmNotaCF.FormShow(Sender: TObject);
begin

inicio.Date     := now();
fechafinal.Date := now();
//with mc do
//  begin
//    close;
//    sql.clear;
//    sql.Add('select a.*, c.nombres_emp, d.nombres from mnoc a');
//    sql.Add('left join musuario b On a.usuarioid = b.usuarioid');
//    sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
//    sql.Add('left join cliente d On a.clienteid = d.codigo');
//    sql.Add('where a.AFECTA_INV = 1');
//    sql.Add('and a.fecha >=:fecha1');
//    sql.Add('and a.fecha <=:fecha2');
//    Params[0].Value := inicio.Date;
//    Params[1].Value := fechafinal.Date;
//    open;
//  end;

end;

end.
