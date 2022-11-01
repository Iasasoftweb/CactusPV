unit Unit116;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCheckBox, cxCheckComboBox, ZAbstractDataset,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, ZSqlUpdate;

type
  TFrmDetalleFact = class(TForm)
    DsDetalleFacturas: TDataSource;
    DetalleFacturasaa: TZReadOnlyQuery;
    DetalleFacturasaaNO_FACT: TIntegerField;
    DetalleFacturasaaNO_FACT1: TWideStringField;
    DetalleFacturasaaMASTERID: TIntegerField;
    DetalleFacturasaaCANTIDAD: TFloatField;
    DetalleFacturasaaPRECIO: TFloatField;
    DetalleFacturasaaIMPUESTO: TFloatField;
    DetalleFacturasaaITBS: TFloatField;
    DetalleFacturasaaITBIS2: TFloatField;
    DetalleFacturasaaTOTAL: TFloatField;
    DetalleFacturasaaCOD_ART: TWideStringField;
    DetalleFacturasaaUNID: TWideStringField;
    DetalleFacturasaaCOMBO: TWideStringField;
    DetalleFacturasaaLINEA: TIntegerField;
    DetalleFacturasaaARTICULOID: TIntegerField;
    DetalleFacturasaaARTICULO: TWideStringField;
    DetalleFacturasaaUNIDAD: TWideStringField;
    DetalleFacturasaaTITULOPRN: TWideStringField;
    DetalleFacturasaaANCHO: TFloatField;
    DetalleFacturasaaALTO: TFloatField;
    DetalleFacturasaaUNIDADID: TIntegerField;
    DetalleFacturasaaITBS_ART: TWideStringField;
    DetalleFacturasaaEX: TWideStringField;
    DetalleFacturasaaIDALMACEN: TIntegerField;
    DetalleFacturasaaBARRA: TWideStringField;
    DetalleFacturasaaIDTECNICO: TIntegerField;
    DetalleFacturasaaDESC: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid3DBTableView1ITBS: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1NO_FACT: TcxGridDBColumn;
    cxGrid3DBTableView1NO_FACT1: TcxGridDBColumn;
    cxGrid3DBTableView1MASTERID: TcxGridDBColumn;
    cxGrid3DBTableView1IMPUESTO: TcxGridDBColumn;
    cxGrid3DBTableView1ITBIS2: TcxGridDBColumn;
    cxGrid3DBTableView1UNID: TcxGridDBColumn;
    cxGrid3DBTableView1COMBO: TcxGridDBColumn;
    cxGrid3DBTableView1LINEA: TcxGridDBColumn;
    cxGrid3DBTableView1ARTICULOID: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    DetalleFacturasaaOP: TWideStringField;
    DetalleFacturas: TZQuery;
    DetalleFacturasNO_FACT: TIntegerField;
    DetalleFacturasNO_FACT1: TWideStringField;
    DetalleFacturasMASTERID: TIntegerField;
    DetalleFacturasCANTIDAD: TFloatField;
    DetalleFacturasPRECIO: TFloatField;
    DetalleFacturasIMPUESTO: TFloatField;
    DetalleFacturasITBS: TFloatField;
    DetalleFacturasITBIS2: TFloatField;
    DetalleFacturasTOTAL: TFloatField;
    DetalleFacturasCOD_ART: TWideStringField;
    DetalleFacturasUNID: TWideStringField;
    DetalleFacturasCOMBO: TWideStringField;
    DetalleFacturasLINEA: TIntegerField;
    DetalleFacturasARTICULOID: TIntegerField;
    DetalleFacturasANCHO: TFloatField;
    DetalleFacturasALTO: TFloatField;
    DetalleFacturasTITULOPRN: TWideStringField;
    DetalleFacturasUNIDADID: TIntegerField;
    DetalleFacturasITBS_ART: TWideStringField;
    DetalleFacturasEX: TWideStringField;
    DetalleFacturasIDALMACEN: TIntegerField;
    DetalleFacturasBARRA: TWideStringField;
    DetalleFacturasIDTECNICO: TIntegerField;
    DetalleFacturasDESC: TIntegerField;
    DetalleFacturasOP: TWideStringField;
    DetalleFacturasARTICULO: TWideStringField;
    DetalleFacturasUNIDAD: TWideStringField;
    cxButton1: TcxButton;
    ZUd: TZUpdateSQL;
    numero: TZReadOnlyQuery;
    numeroGEN_ID: TLargeintField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid3DBTableView1Column1PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDetalleFact: TFrmDetalleFact;

implementation

{$R *.dfm}

uses Unit12, Unit63, Unit113, Unit2;

procedure TFrmDetalleFact.cxButton1Click(Sender: TObject);
begin
with detalleFacturas do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*, b.articulo, c.unidad from detailfact a');
    sql.Add('left join mtartuculos b On a.cod_art = b.codigotxt');
    sql.Add('left join unidad_m c on a.unidadid = c.cod_unidad_m');
    sql.Add('where a.masterid =:master');
    params[0].Value := FrmConduce.facturasImpresasNo_fact.Value;
    open;

    first;

    while not eof do
       begin
          datos.ConduceD.Open;
          datos.conduced.Append;

          with numero do
                    begin
                       close;
                       sql.Clear;
                       sql.Add('select gen_id(GEN_CONDEM_ID, 1) from RDB$DATABASE');
                       open;
                    end;
          datos.ConduceDID.Value                := numeroGEN_ID.Value;
          datos.ConduceDCOD_ART.Value           := DetalleFacturasaaNO_FACT.Value;
          datos.ConduceDCANTI.Value             := DetalleFacturasaaCANTIDAD.Value;
          datos.ConduceDCANT_REST.Value         := DetalleFacturasaaCANTIDAD.Value;
          datos.ConduceDPRECIO_ST.Value         := DetalleFacturasaaPRECIO.Value;
          datos.ConduceDITB.Value               := DetalleFacturasITBS.Value;
          datos.ConduceDTOTAL.Value             := DetalleFacturasTOTAL.Value;
          datos.ConduceDARTICULO.Value          := DetalleFacturasARTICULO.Value;
          datos.ConduceDESTADO.Value            := 1;

          next;
       end;

       datos.conduceM.ApplyUpdates;
       close;
  end;




end;

procedure TFrmDetalleFact.cxGrid3DBTableView1Column1PropertiesChange(
  Sender: TObject);
begin
  detallefacturas.ApplyUpdates;

end;

procedure TFrmDetalleFact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FrmDetalleFact := nil;
    Action := caFree;
end;

end.
