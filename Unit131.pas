unit Unit131;

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
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Data.DB, ZAbstractRODataset,
  ZDataset, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxDBLabel, cxImage,
  cxDBEdit, Vcl.DBCGrids, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ZAbstractDataset;

type
  TFrmIngredientes = class(TForm)
    cxGroupBox1: TcxGroupBox;
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
    DsqArticulos: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    cxDBImage1: TcxDBImage;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxButton8: TcxButton;
    cxButton10: TcxButton;
    DsClasificaciones: TDataSource;
    QClasificaciones: TZReadOnlyQuery;
    QClasificacionesID_SABOR: TIntegerField;
    QClasificacionesDESCRIPCION: TWideStringField;
    DBLClasificacion: TcxLookupComboBox;
    Label3: TLabel;
    numero: TZQuery;
    numeroGEN_ID: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLClasificacionPropertiesChange(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure AddIngre;
    procedure cxDBImage1Click(Sender: TObject);
    procedure cxDBLabel1Click(Sender: TObject);
    procedure cxDBLabel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIngredientes: TFrmIngredientes;

implementation

{$R *.dfm}

uses UInicio, Unit2, Pizeria;

procedure TFrmIngredientes.AddIngre;
VAR
SUMA : CURRENCY;
itbs : currency;
Stexto : string;
descc : Currency;
comision: double;
begin
with numero do
  begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_MAN_SERIES_ID, 1) from RDB$DATABASE');
     open;
  end;

  datos.Series.Open;
  datos.Series.Append;
  datos.SeriesCOD_SERIES.Value := numeroGEN_ID.Value;
  datos.SeriesCOD_ARTI.Value   := IbqRArticulosCOD_ART.Value;
  datos.SeriesSERIES.Value     := IbqRArticulosARTICULO.Value;
  datos.SeriesNO_FACT.Value    := datos.FbqMaster_FactNO_FACT.Value;

  if datos.ZdetalleNO_FACT1.Value = 'NORMAL' then BEGIN

        datos.SeriesPRECIO.Value     := IbqRArticulosPRECIO_A.Value / 1.18;
        datos.SeriesITBS.Value       := (datos.SeriesPRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100));
        datos.Series.post;
  END ELSE
  begin

         datos.SeriesPRECIO.Value     := (IbqRArticulosPRECIO_A.Value / 1.18) /2;
        datos.SeriesITBS.Value       := (datos.SeriesPRECIO.Value * (datos.ZUconfiguracionITBIS.Value/100));
        datos.Series.post;
  end;

  datos.Zdetalle.Edit;
  datos.ZdetallePRECIO.Value := datos.ZdetallePRECIO.Value + datos.SeriesPRECIO.Value;
  datos.ZdetalleIMPUESTO.Value := datos.ZdetallePRECIO.Value * datos.ZdetalleCANTIDAD.Value;
  datos.ZdetalleITBS.Value   := datos.ZdetalleITBS.Value + datos.Seriesitbs.Value;
  datos.ZdetalleTOTAL.Value    := datos.ZdetalleIMPUESTO.Value + datos.ZdetalleITBS.Value ;//datos.Zde

  // Añadir en Detalle los Ingredientes Adicionales //
  datos.ZdetalleADICIONAL.Value := datos.ZdetalleADICIONAL.Value +'-'+datos.SeriesSERIES.Value;
 // datos.ZdetalleTITULOPRN.Value :=  datos.ZdetalleARTICULO.Value +' ('+datos.ZdetalleBARRA.Value+')'+' -'+datos.ZdetalleADICIONAL.Value;

   if datos.ZdetalleNO_FACT1.Value ='NORMAL' then
     begin
          datos.ZdetalleTITULOPRN.Value := datos.ZdetalleARTICULO.Value +' ('+datos.ZdetalleBARRA.Value+')'+' -'+datos.ZdetalleADICIONAL.Value;
     end else begin
        datos.ZdetalleTITULOPRN.Value :=  datos.ZdetalleTITULOPRN.Value +' -'+datos.SeriesSERIES.Value;
     end;
      FrmPizeria.totales;


  close;
//  datos.zdeta




//  datos.SeriesITBS.Value       :=



end;

procedure TFrmIngredientes.cxButton10Click(Sender: TObject);
begin
IbqRArticulos.prior;
end;

procedure TFrmIngredientes.cxButton8Click(Sender: TObject);
begin
IbqRArticulos.next;
end;

procedure TFrmIngredientes.cxDBImage1Click(Sender: TObject);
begin
AddIngre;
end;

procedure TFrmIngredientes.cxDBLabel1Click(Sender: TObject);
begin
AddIngre;
end;

procedure TFrmIngredientes.cxDBLabel2Click(Sender: TObject);
begin
AddIngre;
end;

procedure TFrmIngredientes.DBLClasificacionPropertiesChange(Sender: TObject);
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
    sql.add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.imagen, b.cat, a.comision,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD,');
    SQL.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
    params[0].Value := DBLClasificacion.Text;
    params[1].Value := 'INGREDIENTES';
    OPEN;
  end;
end;

procedure TFrmIngredientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmIngredientes := nil;
Action := caFree;
end;

end.
