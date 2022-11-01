unit Urtc;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Vcl.Menus, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, frxClass, ZAbstractRODataset, ZDataset, frxDBSet,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, cxRadioGroup,
  frxExportXLS, frxExportBaseDialog, frxExportPDF, cxLabel, cxDBLabel,
  cxSpinEdit, Vcl.ExtCtrls, StrUtils, dateutils;

type
  TFrtc = class(TForm)
    cxGroupBox1: TcxGroupBox;
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    Label3: TLabel;
    Label2: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DBconsulta: TfrxDBDataset;
    PrnConsulta: TfrxReport;
    config: TfrxDBDataset;
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
    DsConsulta: TDataSource;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1INVINICIAL: TcxGridDBColumn;
    cxGrid1DBTableView1INFFINAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALSALIDA: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxGroupBox2: TcxGroupBox;
    MCobrado: TcxCurrencyEdit;
    MRTC: TcxCurrencyEdit;
    Label1: TLabel;
    Label4: TLabel;
    qventas: TZReadOnlyQuery;
    qventasVENTAS: TExtendedField;
    Qconsulta: TZReadOnlyQuery;
    QconsultaARTICULO: TWideStringField;
    QconsultaCOSTO: TFloatField;
    QconsultaPRECIO_A: TFloatField;
    QconsultaINVINICIAL: TExtendedField;
    QconsultaINFFINAL: TExtendedField;
    QconsultaTOTALSALIDA: TExtendedField;
    cxButton2: TcxButton;
    RG: TcxRadioGroup;
    Prnconsulta1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    cxButton3: TcxButton;
    DsCubos: TDataSource;
    PArticulos: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1CN_UN: TcxGridDBColumn;
    cxGrid1DBTableView1CU_OZ: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel1: TPanel;
    cxSpinEdit1: TcxSpinEdit;
    cxButton6: TcxButton;
    cxDBLabel1: TcxDBLabel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frtc: TFrtc;

implementation

{$R *.dfm}

uses Unit2, tools, UCierreInventarioCubos, UAperturaCuadreCubos;

procedure TFrtc.cxButton1Click(Sender: TObject);
begin


with qconsulta do
      begin
        close;
        sql.clear;
        sql.add('select  c.articulo, c.costo, c.precio_a,');
        sql.add('Sum((a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0))) InvInicial, Sum((a.cn_un2 + iif(a.cu_oz > 0,(a.cu_oz2/150),0))) InfFinal,');
        sql.add('Sum(((a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) - (a.cn_un2 + iif(a.cu_oz > 0,(a.cu_oz2/150),0)))) TotalSalida');
        sql.add('from hl_cubos a');
        sql.add('left join mtartuculos c on a.idarticulo = c.cod_art');

        sql.add('where a.fecha >=:fecha1');
        sql.add('and a.fecha <=:fecha2');
          sql.add('group by c.articulo, c.costo, c.precio_a ');

        Params[0].Value := inicio.Date;
        Params[1].Value := fechafinal.Date;
        open;
      end;


      with qventas do
        begin
          close;
          sql.Clear;
          sql.Add('select Sum(a.total) ventas from detailfact a');
          sql.Add('left join master_fact b On a.masterid = b.no_fact');
          sql.Add('left join mtartuculos c ON a.articuloid = c.cod_art');
          sql.Add('left join mtcategoria d On c.cod_cat = d.codcat');
          sql.Add('where b.fecha_fac >=:fecha1');
          sql.Add('and b.fecha_fac <=:fecha2');

          sql.Add('and b.situacion =''IMPRESA''');
          sql.Add('and d.cat=:cat');



          Params[0].Value := inicio.Date;
          Params[1].Value := fechafinal.Date;
          Params[2].Value := 'CUBOS SERVIDOS';
          Open;

        end;

        MCobrado.Value := qventasVENTAS.Value;
        MRTC.Value      :=   MCobrado.Value  /   cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[2];
end;

procedure TFrtc.cxButton2Click(Sender: TObject);
begin
if rg.ItemIndex = 0 then
    begin
        Prnconsulta.variables['ventas']:=quotedstr(mcobrado.text);
        Prnconsulta.variables['rtc']:=quotedstr(mrtc.text);
        Prnconsulta.variables['fecha']:=quotedstr(inicio.text);
        Prnconsulta.PrepareReport(true);
        Prnconsulta.print;
    end;

if rg.ItemIndex = 1 then
    begin
        Prnconsulta1.variables['ventas']:=quotedstr(mcobrado.text);
        Prnconsulta1.variables['rtc']:=quotedstr(mrtc.text);
        Prnconsulta1.PrepareReport(true);
        Prnconsulta1.print;
    end;

end;

procedure TFrtc.cxButton3Click(Sender: TObject);
begin
 with datos.QCubos do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, a.fecha,  c.articulo from hl_cubos a');
          sql.Add('left join mtartuculos c on a.idarticulo = c.cod_art');
          sql.Add('where b.fecha =:turno');
          params[0].Value := now();
          open;
        end;

       PArticulos.Visible := true;
end;

procedure TFrtc.cxButton4Click(Sender: TObject);
begin
       if application.MessageBox ('Inventario Inicial será actalizada, está de acuerdo?','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
                                     datos.QCubos.ApplyUpdates;
                                     datos.data.Commit;
                                 end else begin
                                            datos.QCubos.CancelUpdates;
                                            datos.data.Rollback;
                                          end;

                                 PArticulos.Visible := false;
end;

procedure TFrtc.cxButton5Click(Sender: TObject);
begin
panel1.Visible := true;
cxSpinEdit1.Value := 0;
cxSpinEdit1.SetFocus;

end;

procedure TFrtc.cxButton6Click(Sender: TObject);
begin
datos.QCubos.Edit;
datos.QCubosCN_UN.Value := datos.QCubosCN_UN.Value + cxSpinEdit1.Value;
panel1.Visible := false;

end;

procedure TFrtc.cxButton7Click(Sender: TObject);
begin

if inicio.Text <>'' then begin

 with  datos.QCubos do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, c.articulo from hl_cubos a');
          sql.Add('left join mtartuculos c on a.idarticulo = c.cod_art');
          sql.Add('where a.FECHA =:turno');
          params[0].Value := inicio.Date;
          open;
        end;

        datos.QCubos.Edit;
       
        fcierreinventariocubos.inicio.Date := inicio.Date;
        fcierreinventariocubos.showmodal;
   
      end else begin
          Showmessage(' Seleccione una fecha inicial ')
      end;
end;

procedure TFrtc.cxButton8Click(Sender: TObject);
var
FechaAnterior : Tdate;
begin


FechaAnterior := IncDay(inicio.Date, -1); 


     

if inicio.Text <>'' then begin

  with datos.QCubos do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, a.fecha, c.articulo from hl_cubos a');
          sql.Add('left join mtartuculos c on a.idarticulo = c.cod_art');
          sql.Add('where a.FECHA =:turno');
          params[0].Value := IncDay(inicio.Date, -1);
          open;
        end;
           

        if datos.QCubos.RecordCount > 0 then
           begin

                 
               with datos.QCubos do begin
                     first;
                    
                while not eof do
                     begin
                        with datos.QCubos2 do
                           begin

                             Open;
                             append;
                             with FAperturaCuadreCubos.MaxCubos do
                               begin
                                 close;
                                 sql.Clear;
                                 sql.add('select max(id) from hl_cubostemp');
                                 open;
                               end;
                               
                             datos.QCubos2ID.Value               := FAperturaCuadreCubos.MaxCubosMAX.Value + 1;
                             datos.QCubos2IDTURNO.Value          := AsignaTurno;
                             datos.QCubos2IDARTICULO.Value       := datos.QCubosIDARTICULO.Value;
                             datos.QCubos2FECHA.Value            := inicio.Date;
                             datos.QCubos2ARTICULO.Value         := datos.QCubosARTICULO.Value;
                             datos.QCubos2CN_UN.Value            := datos.QCubosCN_UN2.Value;
                             datos.QCubos2CU_OZ.Value            := datos.QCubosCU_OZ2.Value;
                             post;


                           end;


                       next;
                     end;
                     
                 end;
                     datos.qcubos2.ApplyUpdates;
                     datos.qcubos2.First;

                     FAperturaCuadreCubos.ShowModal;
           
           end else begin

        
        

           //   showmessage(''+IntTostr(Asignaturno));

///PArticulos.Visible := true;

with FAperturaCuadreCubos.ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a,a.codigobarra, b.cat, a.comision, a.precio_b,a.precio_d,a.codigobarra, a.referencia,a.ubicacion,a.cod_art,a.articulo,a.cod_cat, a.OBS,');
                sql.add('a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('left join mtcategoria b on a.cod_cat = b.codcat');
                sql.Add('where a.condicion =:PPP');
                sql.Add('and b.cat =:PPP1');
                sql.Add('group by a.unidad,a.precio_a,a.codigobarra, b.cat, a.comision, a.precio_b,a.precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
                params[0].Value := 'Servicios';
                params[1].Value := 'INVENTARIO';
                open;

                first;

                while not eof do
                     begin
                        with datos.QCubos2 do
                           begin

                             Open;
                             append;
                             with FAperturaCuadreCubos.MaxCubos do
                               begin
                                 close;
                                 sql.Clear;
                                 sql.add('select max(id) from hl_cubostemp');
                                 open;
                               end;
                               
                             datos.QCubos2ID.Value               := FAperturaCuadreCubos.MaxCubosMAX.Value + 1;
                             datos.QCubos2IDTURNO.Value          := AsignaTurno;
                             datos.QCubos2IDARTICULO.Value       := FAperturaCuadreCubos.IbqRArticuloscod_art.Value;
                             datos.QCubos2FECHA.Value            := inicio.Date;
                             datos.QCubos2ARTICULO.Value         := FAperturaCuadreCubos.IbqRArticulosARTICULO.Value;
                             datos.QCubos2CN_UN.Value            := 0.00;
                             datos.QCubos2CU_OZ.Value            := 0.00;
                             post;


                           end;


                       next;
                     end;

                     datos.qcubos2.ApplyUpdates;
                     datos.qcubos2.First;

              end;

              FAperturaCuadreCubos.ShowModal;

          end;

      end else begin
          Showmessage(' Seleccione una fecha inicial ')
      end;
end;



end.
