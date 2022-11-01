unit UfraccionPiza;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, Vcl.Menus, cxButtons, Vcl.ExtCtrls;

type
  TFrmFraccionPiza = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_A: TcxGridDBColumn;
    cxGrid1DBTableView1CAT: TcxGridDBColumn;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFraccionPiza: TFrmFraccionPiza;

implementation

{$R *.dfm}

uses Unit2, UInicio, Pizeria;

procedure TFrmFraccionPiza.cxButton1Click(Sender: TObject);
var
itbs : Currency;
suma : Currency;
descc : Currency;
ad: string;
begin
datos.zdetalle.Edit;
//datos.ZdetalleITBS.Value     := datos.ZdetalleITBS.Value  / 2;
//datos.ZdetallePRECIO.Value   := datos.ZdetallePRECIO.Value / 2;
//datos.ZdetalleIMPUESTO.Value := datos.ZdetalleIMPUESTO.Value /2;
//datos.ZdetalleTOTAL.Value    := datos.ZdetalleTOTAL.Value / 2;

                           ///  ShowMessage(''+FloatToStr(IbqRArticulosPRECIO_A.Value));
datos.ZdetallePRECIO.Value   := (datos.ZdetallePRECIO.Value) + ((IbqRArticulosPRECIO_A.Value / 1.18) / 2);
datos.ZdetalleITBS.Value     := datos.ZdetallePRECIO.Value  * (datos.ZUconfiguracionITBIS.Value/100);
datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
datos.ZdetalleFRACCION.Value  := COPY(IbqRArticulosARTICULO.Value,6,50);

datos.Zdetalleley.Value      := (datos.ZdetallePRECIO.Value * 0.10);
datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
datos.ZdetalleANCHO.Value    := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);



 datos.Zdetalle.Edit;
                               datos.Zdetalleadicional.Value := ad;
                               datos.ZdetalleTITULOPRN.Value := datos.ZdetalleTITULOPRN.Value+' Mitad'+COPY(IbqRArticulosARTICULO.Value,6,50)+' '+ad;
                               datos.ZdetalleNO_FACT1.Value := 'FRACC';
                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'Si'  then
                                               begin

                                                  FrmPizeria.totales;

                                           end;

                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'No'  then
                                               begin


                                                      FrmPizeria.totales;
                                               end;

                                                panel1.Visible := false;
                                               CLOSE;

end;

procedure TFrmFraccionPiza.cxButton2Click(Sender: TObject);
var
itbs : Currency;
suma : Currency;
descc : Currency;
ad: string;
begin
datos.zdetalle.Edit;
//datos.ZdetalleITBS.Value     := datos.ZdetalleITBS.Value  / 2;
//datos.ZdetallePRECIO.Value   := datos.ZdetallePRECIO.Value / 2;
//datos.ZdetalleIMPUESTO.Value := datos.ZdetalleIMPUESTO.Value /2;
//datos.ZdetalleTOTAL.Value    := datos.ZdetalleTOTAL.Value / 2;

                           ///  ShowMessage(''+FloatToStr(IbqRArticulosPRECIO_A.Value));
if datos.ZUconfiguracionHABILITARMORA.Value = 'NO' then
  begin

datos.ZdetallePRECIO.Value   := (datos.ZdetallePRECIO.Value /2) + ((IbqRArticulosPRECIO_A.Value / 1.18) /2);
datos.ZdetalleITBS.Value     := datos.ZdetallePRECIO.Value  * (datos.ZUconfiguracionITBIS.Value/100);
datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
datos.ZdetalleFRACCION.Value  := ' Mitad'+COPY(IbqRArticulosARTICULO.Value,6,50);

if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then begin

datos.Zdetalleley.Value      := (datos.ZdetallePRECIO.Value * 0.10);
end else begin
             datos.Zdetalleley.Value      := 0.00;
         end;

datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
datos.ZdetalleANCHO.Value    := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);



 datos.Zdetalle.Edit;
                               datos.Zdetalleadicional.Value := ad;
                               datos.ZdetalleTITULOPRN.Value := 'MITAD '+datos.ZdetalleTITULOPRN.Value+' Mitad'+COPY(IbqRArticulosARTICULO.Value,6,50)+' '+ad;
                               datos.ZdetalleNO_FACT1.Value := 'FRACC';
                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'Si'  then
                                               begin

                                                  FrmPizeria.totales;

                                           end;

                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'No'  then
                                               begin


                                                      FrmPizeria.totales;
                                               end;

                                               panel1.Visible := false;
                                               CLOSE;
end else begin


if datos.ZdetallePRECIO.Value >= IbqRArticulosPRECIO_A.Value then
  begin

      datos.ZdetallePRECIO.Value   := (datos.ZdetallePRECIO.Value);
      datos.ZdetalleITBS.Value     := datos.ZdetallePRECIO.Value  * (datos.ZUconfiguracionITBIS.Value/100);
      datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  end;


 if datos.ZdetallePRECIO.Value < IbqRArticulosPRECIO_A.Value then
  begin

      datos.ZdetallePRECIO.Value   := (IbqRArticulosPRECIO_A.Value / 1.18);
      datos.ZdetalleITBS.Value     := datos.ZdetallePRECIO.Value  * (datos.ZUconfiguracionITBIS.Value/100);
      datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  end;

datos.ZdetalleFRACCION.Value  := ' Mitad'+COPY(IbqRArticulosARTICULO.Value,6,50);

if datos.ZUconfiguracionUSAR_VF.Value = 'SI' then begin

datos.Zdetalleley.Value      := (datos.ZdetallePRECIO.Value * 0.10);
end else begin
             datos.Zdetalleley.Value      := 0.00;
         end;

datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value;//datos.ZdetalleCANTIDAD.Value * (datos.ZdetallePRECIO.Value + datos.ZdetalleITBS.Value);
datos.ZdetalleANCHO.Value    := datos.ZdetalleIMPUESTO.Value * (IbqRArticulosCOMISION.Value/100);



 datos.Zdetalle.Edit;
                               datos.Zdetalleadicional.Value := ad;
                               datos.ZdetalleTITULOPRN.Value := 'MITAD '+datos.ZdetalleTITULOPRN.Value+' Mitad'+COPY(IbqRArticulosARTICULO.Value,6,50)+' '+ad;
                               datos.ZdetalleNO_FACT1.Value := 'FRACC';
                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'Si'  then
                                               begin

                                                  FrmPizeria.totales;

                                           end;

                                     if FrmPizeria.IbqRArticulosITBIS.Value = 'No'  then
                                               begin


                                                      FrmPizeria.totales;
                                               end;

                                               panel1.Visible := false;
                                               CLOSE;



end;



   end;



procedure TFrmFraccionPiza.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

panel1.Visible := true;

end;

procedure TFrmFraccionPiza.Edit1Change(Sender: TObject);
begin
with IbqRArticulos do
  begin
    close;
    sql.clear;
    sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d, a.imagen, b.cat, a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios,');
    SQL.Add('a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs');
    sql.add('from mtartuculos a');
    sql.add('left join MTCATEGORIA b on a.cod_cat = b.codcat');
    sql.add('where a.marca =:marca');
    sql.Add('and b.cat =:categoria');
    sql.Add('and a.articulo like '+#39+'%'+edit1.Text+'%'+#39);
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := edit2.Text;
    params[1].Value := 'PIZZAS';

    OPEN;
  end;
end;

procedure TFrmFraccionPiza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FrmFraccionPiza := nil;
   Action := caFree;
end;

procedure TFrmFraccionPiza.FormShow(Sender: TObject);
begin
edit1.Clear;
edit1.SetFocus;
end;

end.
