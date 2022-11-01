unit UAperturaCuadreCubos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet,
  ZAbstractRODataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFAperturaCuadreCubos = class(TForm)
    Qconsulta: TZReadOnlyQuery;
    QconsultaID: TIntegerField;
    QconsultaIDTURNO: TIntegerField;
    QconsultaFECHA: TDateField;
    QconsultaARTICULO: TWideStringField;
    QconsultaCOSTO: TFloatField;
    QconsultaPRECIO_A: TFloatField;
    QconsultaINVINICIAL: TExtendedField;
    QconsultaINFFINAL: TExtendedField;
    QconsultaTOTALSALIDA: TExtendedField;
    QconsultaCN_UN: TFloatField;
    QconsultaCU_OZ: TFloatField;
    PrnConsulta: TfrxReport;
    DBconsulta: TfrxDBDataset;
    MaxTurno: TZReadOnlyQuery;
    MaxTurnoGEN_ID: TLargeintField;
    MaxCubos: TZReadOnlyQuery;
    MaxCubosMAX: TIntegerField;
    Max2: TZReadOnlyQuery;
    Max2MAX: TIntegerField;
    config: TfrxDBDataset;
    DsCubos: TDataSource;
    limpiar: TZReadOnlyQuery;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
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
    IbqRArticulosCODIGOBARRA: TWideStringField;
    IbqRArticulosCAT: TWideStringField;
    PArticulos: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CN_UN: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    Edit1: TEdit;
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
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAperturaCuadreCubos: TFAperturaCuadreCubos;

implementation

{$R *.dfm}

uses Unit2, tools;

procedure TFAperturaCuadreCubos.cxButton2Click(Sender: TObject);
begin
 AsignaTurno := datos.ZTurnoIDTURNO.value;
    datos.ZTurno.ApplyUpdates;
    datos.QCubos.ApplyUpdates;
    datos.Data.Commit;



    with qconsulta do
      begin
        close;
        sql.clear;
        sql.add('select a.id, a.idturno, b.fecha, c.articulo, c.costo, c.precio_a, a.cn_un, a.cu_oz,');
        sql.add('(a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) InvInicial, (a.cn_un2 + iif(a.cu_oz2 > 0,(a.cu_oz2/150),0)) InfFinal,');
        sql.add('((a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) - (a.cn_un2 + iif(a.cu_oz2 > 0,(a.cu_oz2/150),0))) TotalSalida');
        sql.add('from hl_cubos a');
        sql.add('left join turnos b on a.idturno = b.turnoid');
        sql.add('left join mtartuculos c on a.idarticulo = c.cod_art');
        sql.add('where b.fecha =:fecha');
        params[0].Value := now();
        open;
      end;

                         if application.MessageBox ('Deseas Imprimir Reporte de Inventario Inicial?','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
                                     Prnconsulta.PrepareReport(true);
                                     Prnconsulta.ShowPreparedReport;
                                 END;











        close;
end;

procedure TFAperturaCuadreCubos.cxButton3Click(Sender: TObject);
begin

                 with zexistencia do
                       begin
                         close;
                         sql.Clear;
                         sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
                         sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                         sql.add('where b.politica <> ''Servicio''');
                         sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
                         open;
                       end;

 with ZExistencia do
      begin
        first;

        while not eof do
           begin

             datos.QCubos.Open;
             datos.QCubos.Append;

                      with Max2 do
                               begin
                                 close;
                                 sql.Clear;
                                 sql.add('select max(id) from hl_cubos');
                                 open;
                               end;


                  datos.QCubosID.Value := Max2MAX.Value + 1;
                  datos.QCubosIDTURNO.Value           := AsignaTurno;
                  datos.QCubosIDARTICULO.Value        := ZExistenciaCOD_ART.Value;
                  datos.QCubosCANTIDADINICIAL.Value   := ZExistenciaEXISTENCIA.Value;
                  datos.QCubosCANTIDADFINAL.Value     := 0.00;
                  datos.QCubosCANTIDADVENDIDO.Value   := 0.00;
                  datos.QCubosARTICULO.Value          := ZExistenciaARTICULO.Value;
                  datos.QCubosFECHA.Value             := now();
               //   datos.QCubosHORA.Value              := datos.qcubos2HORA.Value;
                  datos.QCubosCN_UN.Value             := 0.00;
                  datos.QCubosCU_OZ.Value             := 0.00;
                  datos.QCubosCN_UN2.Value            := 0.00;
                  datos.QCubosCU_OZ2.Value            := 0.00;

                  datos.QCubos.Post;


                  next;
           end;

        

           with limpiar do
             begin
               close;
               sql.Clear;
               sql.Add('delete from hl_cubostemp where id >0');
               ExecSQL;
             end;


           datos.qcubos2.ApplyUpdates;
           datos.qcubos.ApplyUpdates;

      end;

      cxButton2.Enabled := true;

  // PArticulos.Visible := false;

   
end;

procedure TFAperturaCuadreCubos.cxButton4Click(Sender: TObject);
begin

    datos.ZTurno.CancelUpdates;
    datos.QCubos.CancelUpdates;

    datos.Data.Rollback;

    showmessage('Saldrá sin guardar cambios');
    close;
end;

procedure TFAperturaCuadreCubos.FormShow(Sender: TObject);
begin




cxButton2.Enabled := false;
end;

end.
