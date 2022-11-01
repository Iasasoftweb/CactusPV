unit UCierreInventarioCubos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, frxClass, frxDBSet, ZAbstractRODataset,
  ZDataset, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFCierreInventarioCubos = class(TForm)
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
    QconsultaCN_UN2: TFloatField;
    QconsultaCU_OZ2: TFloatField;
    DsCubos: TDataSource;
    DBconsulta: TfrxDBDataset;
    PrnConsulta: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1CN_UN: TcxGridDBColumn;
    cxGrid1DBTableView1CU_OZ: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    inicio: TcxDateEdit;
    config: TfrxDBDataset;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCierreInventarioCubos: TFCierreInventarioCubos;

implementation

{$R *.dfm}

uses Unit2;

procedure TFCierreInventarioCubos.cxButton1Click(Sender: TObject);
begin
     if application.MessageBox ('Los datos digitidos serán cancelados, está seguro?','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
                                   datos.QCubos.CancelUpdates;
                                   datos.Data.Rollback;
                                   close;
                                 end;
end;

procedure TFCierreInventarioCubos.cxButton2Click(Sender: TObject);
begin
 datos.QCubos.ApplyUpdates;
 datos.Data.Commit;



    with qconsulta do
      begin
        close;
        sql.clear;
        sql.add('select a.id, a.idturno, a.fecha, c.articulo, c.costo, c.precio_a, a.cn_un2, a.cu_oz2,');
        sql.add('(a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) InvInicial, (a.cn_un2 + iif(a.cu_oz2 > 0,(a.cu_oz2/150),0)) InfFinal,');
        sql.add('((a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) - (a.cn_un2 + iif(a.cu_oz2 > 0,(a.cu_oz2/150),0))) TotalSalida');
        sql.add('from hl_cubos a');
       
        sql.add('left join mtartuculos c on a.idarticulo = c.cod_art');
        sql.add('where a.fecha =:turno');
        params[0].Value := inicio.Date;
        open;
      end;


                         if application.MessageBox ('Deseas Imprimir Reporte de Inventario Inicial?','Precausion',Mb_YesNo+MB_ICONQUESTION) = Id_yes then
                                 begin
                                     Prnconsulta.PrepareReport(true);
                                     Prnconsulta.print;
                                 END;



       close;
end;

end.
