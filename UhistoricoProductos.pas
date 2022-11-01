unit UhistoricoProductos;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, cxButtons, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCalendar,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinSharp,
  dxSkinTheBezier;

type
  TFrmHistoricoMovmientoInventario = class(TForm)
    cxGroupBox1: TcxGroupBox;
    ZExistencia: TZReadOnlyQuery;
    ZExistenciaCOD_ART: TIntegerField;
    ZExistenciaARTICULO: TWideStringField;
    ZExistenciaCOSTO: TFloatField;
    ZExistenciaCOSTO_PR: TFloatField;
    ZExistenciaCOD_ALM: TIntegerField;
    ZExistenciaEXISTENCIA: TExtendedField;
    ZExistenciaTOTAL: TExtendedField;
    ZExistenciaCODIGOBARRA: TWideStringField;
    ZExistenciaREFERENCIA: TWideStringField;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    QMovimientos: TZReadOnlyQuery;
    QMovimientosCONCEPTOID: TIntegerField;
    QMovimientosDESCRIPCION: TWideStringField;
    QMovimientosTIPOUSUARIO: TIntegerField;
    FInvenatario: TZReadOnlyQuery;
    DsMovimientos: TDataSource;
    DsAlmacenes: TDataSource;
    DswInventario: TDataSource;
    DsExistencia: TDataSource;
    qexterior: TZReadOnlyQuery;
    qexteriorTOTAL: TExtendedField;
    qRD: TZReadOnlyQuery;
    qRDTOTAL: TExtendedField;
    LProducto: TLabel;
    LCodigoBarra: TLabel;
    LReferencia: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRADA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLookupComboBox1: TcxLookupComboBox;
    Label6: TLabel;
    Almacenes1: TZReadOnlyQuery;
    Almacenes1COD_ART: TIntegerField;
    Almacenes1ARTICULO: TWideStringField;
    Almacenes1COD_ALM: TIntegerField;
    Almacenes1DESCRIPCION: TWideStringField;
    Almacenes1EXISTENCIA: TExtendedField;
    DsAlmacenes01: TDataSource;
    lCODIGO: TLabel;
    FInvenatarioFECHA: TDateField;
    FInvenatarioCOD_ART: TIntegerField;
    FInvenatarioARTICULO: TWideStringField;
    FInvenatarioDESCRIPCION: TWideStringField;
    FInvenatarioCOD_CAT: TIntegerField;
    FInvenatarioENTRADA: TFloatField;
    FInvenatarioSALIDA: TFloatField;
    cxButton1: TcxButton;
    inicio: TcxDateEdit;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    Label3: TLabel;
    ChkFEcha: TCheckBox;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistoricoMovmientoInventario: TFrmHistoricoMovmientoInventario;

implementation

{$R *.dfm}

uses UHistoricosCostos;

procedure TFrmHistoricoMovmientoInventario.cxButton1Click(Sender: TObject);
begin
with finvenatario do
           begin
              close;
              sql.Clear;
              sql.add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,a.entrada, a.salida from minventario a');
              sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
              sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
              sql.add('where a.cod_art =:opcion');



            //   sql.Add('AND b.descripcion =:pAlmacen');
              sql.add('and a.cod_alm =:op');
                 if ChkFEcha.Checked = true then
                begin
                      sql.Add('and a.fecha >=:fecha1');
                      sql.Add('and a.fecha <=:fecha2');

                end;

                 sql.Add('order by a.fecha');
           //   sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo');
              params[0].Value :=  StrToInt(lCODIGO.Caption);
          //    params[1].Value := cxLookupComboBox1.Text;
              params[1].Value :=  1;

              if ChkFEcha.Checked = true then
                begin
                    params[2].Value := inicio.Date;
                     params[3].Value := fechafinal.Date;
                end;
              open;
            end;
end;

procedure TFrmHistoricoMovmientoInventario.cxButton2Click(Sender: TObject);
begin
if FrmHistoricosCostos = nil then
  begin
    FrmHistoricosCostos := TFrmHistoricosCostos.Create(self);
         with FrmHistoricosCostos.QConsulta do
           begin
             close;
             sql.Clear;
             sql.Add('Select a.fecha_v, b.cod_art, b.totalcosto from master_ajuste a');
             sql.Add('left join detalle_ajuste b On a.noid = b.masterid');
             sql.Add('where b.cod_art =:op');
             params[0].Value := StrToInt(lCODIGO.Caption);
             open;
           end;
    FrmHistoricosCostos.ShowModal;
  end;
end;

procedure TFrmHistoricoMovmientoInventario.cxLookupComboBox1PropertiesChange(
  Sender: TObject);
begin


 with  FrmHistoricoMovmientoInventario.finvenatario do
            begin
              close;
              sql.Clear;
              sql.add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,a.entrada, a.salida from minventario a');
              sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
              sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
              sql.add('where a.cod_art =:opcion');
               sql.Add('AND b.descripcion =:pAlmacen');
              sql.add('and a.cod_alm =:op');
                if ChkFEcha.Checked = true then
                begin
                      sql.Add('and a.fecha >=:fecha1');
                      sql.Add('and a.fecha <=:fecha2');

                end;

              sql.Add('order by a.fecha');
           //   sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo');
              params[0].Value :=  StrToInt(lCODIGO.Caption);
              params[1].Value := cxLookupComboBox1.Text;
              params[2].Value :=  1;
               if ChkFEcha.Checked = true then
                begin
                    params[3].Value := inicio.Date;
                     params[4].Value := fechafinal.Date;
                end;

              open;
            end;
//with finvenatario do
//  begin
//    close;
//    sql.Clear;
//    sql.add('select a.fecha,a.cod_art, c.articulo, b.descripcion,c.cod_cat,Sum(a.entrada) entrada, sum(a.salida) salida from minventario a');
//    sql.add('left join conceptos b On a.conceptoid = b.conceptoid');
//    sql.Add('left join mtartuculos c On a.cod_art = c.cod_art');
//    sql.Add('where b.descripcion =:pAlmacen');
//    sql.add('and a.cod_art =:opcion');
//    sql.add('and a.cod_alm =:op');
//    sql.Add('group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo');
//    params[0].Value := cxLookupComboBox1.Text;
//    params[1].Value := StrToInt(lCODIGO.Caption);
//    params[2].Value := 1;
//
//    open;
//  end;
end;

procedure TFrmHistoricoMovmientoInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FrmHistoricoMovmientoInventario := nil;
end;

end.
