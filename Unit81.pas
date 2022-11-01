unit Unit81;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox,
  cxRadioGroup, Data.DB, ZAbstractRODataset, ZDataset, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxDBEdit,
  frxClass, frxDBSet, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox;

type
  TFRProductosVendidos = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    inicio: TcxDateEdit;
    fechafinal: TcxDateEdit;
    cxButton1: TcxButton;
    DsTurno: TDataSource;
    QConsulta: TZReadOnlyQuery;
    QConsultaTURNOID: TIntegerField;
    QConsultaUSUARIOID: TIntegerField;
    QConsultaEFECTIVO_INICIAL: TFloatField;
    QConsultaESTADO: TIntegerField;
    QConsultaFECHA: TDateField;
    QConsultaIDTURNO: TIntegerField;
    QConsultaCAJA: TWideStringField;
    QConsultaHORA: TTimeField;
    QConsultaEFECTIVOCAJA: TFloatField;
    QConsultaCOBRANZA: TFloatField;
    QConsultaTC: TFloatField;
    QConsultaCHEQUE: TFloatField;
    QConsultaVALE: TFloatField;
    QConsultaGASTOS: TFloatField;
    QConsultaNC: TFloatField;
    QConsultaTOTALGASTOS: TFloatField;
    QConsultaTOTALEINGRESO: TFloatField;
    QConsultaTOTALCUADRE: TFloatField;
    QConsultaDESCUADRE: TFloatField;
    QConsultaTOTALVENTAS: TFloatField;
    QConsultaTOTALEGRESOS: TFloatField;
    QConsultaSOBRANTES: TFloatField;
    QConsultaNOMBRES_EMP: TWideStringField;
    QConsultaDESCRICPCION: TWideStringField;
    Tecnicos: TZReadOnlyQuery;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    TecnicosCOD_EMP1: TIntegerField;
    DsTecnico: TDataSource;
    Productos: TZReadOnlyQuery;
    DBProductos: TfrxDBDataset;
    config: TfrxDBDataset;
    Print1: TfrxReport;
    Print2: TfrxReport;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1IDTURNO: TcxGridDBColumn;
    cxGrid1DBTableView1CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALCUADRE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton3: TcxButton;
    ChkB: TcxCheckBox;
    ProductosCOD_ART: TWideStringField;
    ProductosARTICULO: TWideStringField;
    ProductosSUM: TExtendedField;
    ProductosSUM_1: TExtendedField;
    ProductosCAT: TWideStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ChkBClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRProductosVendidos: TFRProductosVendidos;

implementation

{$R *.dfm}

uses Unit118;

procedure TFRProductosVendidos.ChkBClick(Sender: TObject);
begin
if ChkB.Checked = true then
  begin
    cxGrid1.Enabled := True;
  end else begin
              cxGrid1.Enabled := false;
           end;
end;

procedure TFRProductosVendidos.cxButton1Click(Sender: TObject);
begin


   if chkb.Checked = true then
      begin


           if cxDBTextEdit1.Text <>'' then
                   begin
                                                // ,  Sum(a.cantidad), sum(a.cantidad * a.precio),
                           with productos do
                             begin
                                 close;
                                 sql.Clear;
                                 sql.Add('select a.cod_art, F.ARTICULO,  Sum(a.cantidad),  sum (a.cantidad * a.precio), g.cat from detailfact a');
                                  sql.Add('left join master_fact b On a.masterid = b.no_fact');
                                 sql.Add('left join mtartuculos F on f.cod_art = a.articuloid');
                                  sQL.aDD('left join mtcategoria g On f.cod_cat = g.codcat');
                               //
                                  sql.Add('where b.situacion =''IMPRESA''');
                                  SQL.Add('AND B.TIENDAID=:DD');
                                  sql.Add('group by  a.cod_art, F.ARTICULO, g.cat');

                                  params[0].Value := qconsultaIDTURNO.Value;
                                  open;
                             end;

                            print1.variables['fecha']:=quotedstr(qconsultafecha.Text);
                            print1.variables['hora']:=quotedstr(qconsultahora.Text);
                            print1.variables['numeroT']:=quotedstr(qconsultaturnoid.Text);
                            print1.PrepareReport(true);
                            print1.ShowPreparedReport;

                   end else begin
                               Showmessage(' ** Debes seleccionar un cajero **');
                            end;



      end;


           if cxDBTextEdit1.Text='' then
                   begin

                   with productos do
                             begin
                                 close;
                                 sql.Clear;
                                 sql.Add('select a.cod_art, F.ARTICULO,  Sum(a.cantidad), sum(a.cantidad * a.precio), g.cat from detailfact a');
                                  sql.Add('left join master_fact b On a.masterid = b.no_fact');
                                  sql.Add('left join mtartuculos F on f.cod_art = a.articuloid');
                                  sQL.aDD('left join mtcategoria g On f.cod_cat = g.codcat');
                               //
                                  sql.Add('where b.situacion =''IMPRESA''');
                                  sql.Add('and b.fecha_fac >=:fecha1');
                                  sql.Add('and b.fecha_fac  <=:fecha2');
                                  sql.Add('group by a.cod_art, F.ARTICULO, g.cat');

                                  Params[0].Value := inicio.Date;
                                  Params[1].Value := fechafinal.Date;
                                  open;
                             end;

                            print2.variables['fecha']:=quotedstr(inicio.Text);
                            print2.variables['fecha2']:=quotedstr(fechafinal.Text);
                            print2.PrepareReport(true);
                            print2.ShowPreparedReport;



      end;




   if cxDBTextEdit1.Text <>'' then
           begin




               with productos do
                             begin
                                 close;
                                 sql.Clear;
                                 sql.Add('select b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp,  Sum(a.cantidad), sum(a.cantidad * a.precio), g.cat from detailfact a');
                                  sql.Add('left join master_fact b On a.masterid = b.no_fact');
                                  sql.Add('left join turnos c On b.tiendaid = c.turnoid');
                                  sql.Add('Left join musuario d On c.usuarioid = d.usuarioid');
                                  sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
                                  sql.Add('left join mtartuculos F on f.cod_art = a.articuloid');
                                  sQL.aDD('left join mtcategoria g On f.cod_cat = g.codcat');
                               //
                                  sql.Add('where b.situacion =''IMPRESA''');
                                  sql.Add('and f.estado =1');
                                  SQL.Add('AND B.TIENDAID=:DD');
                                  sql.Add('group by b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp, g.cat');
                                  params[0].Value := qconsultaIDTURNO.Value;
                                  open;
                             end;


                 end else begin
                       with productos do
                           begin
                               close;
                               sql.Clear;
                               sql.Add('select b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp,  Sum(a.cantidad), sum(a.cantidad * a.precio), g.cat from detailfact a');
                                sql.Add('left join master_fact b On a.masterid = b.no_fact');
                                sql.Add('left join turnos c On b.tiendaid = c.turnoid');
                                sql.Add('Left join musuario d On c.usuarioid = d.usuarioid');
                                sql.Add('left Join MtEmpleado E On d.empleadoid = e.cod_emp');
                                sql.Add('left join mtartuculos F on f.cod_art = a.articuloid');
                                sQL.aDD('left join mtcategoria g On f.cod_cat = g.codcat');
                             //
                                sql.Add('where b.situacion =''IMPRESA''');
                                sql.Add('and f.estado =1');

                                sql.Add('and b.FECHA_FAC >=:fecha1');
                                sql.Add('and b.FECHA_FAC <=:fecha2');
                                sql.Add('group by b.fecha_fac, a.cod_art, a.tituloprn, e.nombres_emp, g.cat');

                                Params[0].Value := inicio.Date;
                                Params[1].Value := fechafinal.Date;
                                open;
                           end;





                          print2.variables['fecha1']:=quotedstr(inicio.Text);
                          print2.variables['fecha2']:=quotedstr(fechafinal.Text);
                          print2.PrepareReport(true);
                          print2.ShowPreparedReport;
                    end;
end;

procedure TFRProductosVendidos.cxButton2Click(Sender: TObject);
begin
if FrmBuscarInstalador = nil then  begin
    FrmBuscarInstalador := tFrmBuscarInstalador.Create(self);
    FrmBuscarInstalador.Edit2.Text := 'RVENTAS';
    FrmBuscarInstalador.showmodal;
end;
end;

procedure TFRProductosVendidos.cxButton3Click(Sender: TObject);
begin
with qconsulta do
              begin
                close;
                sql.Clear;
                sql.Add('select a.*,c.nombres_emp, d.descricpcion from turnos a');
                sql.Add('left join Musuario b On a.usuarioid = b.usuarioid');
                sql.Add('left join mtempleado C on b.empleadoid = c.cod_emp1');
                sql.Add('left join mant_turnos d On a.idturno = d.id_turnos');
                sql.Add('where c.cod_emp1 =:Usua');
                sql.Add('and a.fecha >=:fecha1');
                sql.Add('and a.fecha  <=:fecha2');


                params[0].Value := TecnicosCOD_EMP1.Value ;
                Params[1].Value := inicio.Date;
                Params[2].Value := fechafinal.Date;
                open;
              end;
end;

procedure TFRProductosVendidos.cxButton5Click(Sender: TObject);
begin
Tecnicos.Close;
end;

end.



