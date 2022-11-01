unit UgetCorteInventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, cxControls,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxButtonEdit, ZAbstractRODataset,
  ZDataset, ZSqlUpdate, ZAbstractDataset, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfGetCorteInventario = class(TForm)
    Panel8: TPanel;
    Label61: TLabel;
    LbModo: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DsExistencia: TDataSource;
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
    cxGrid1DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid1DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxButton1: TcxButton;
    QCorteInventario: TZQuery;
    QCorteInventarioID: TIntegerField;
    QCorteInventarioFECHA_INICIAL: TDateField;
    QCorteInventarioFECHA_FINAL: TDateField;
    QCorteInventarioFECHA_HOY: TDateField;
    QCorteInventarioMONTOINVENTARIO: TFloatField;
    QCorteInventarioESTADO: TIntegerField;
    Qnumero: TZReadOnlyQuery;
    QnumeroGEN_ID: TLargeintField;
    zCorteInventario: TZUpdateSQL;
    Qnum2: TZReadOnlyQuery;
    Qnum2GEN_ID: TLargeintField;
    FechaCorte: TcxDateEdit;
    Label1: TLabel;
    Qcortes: TZReadOnlyQuery;
    QcortesFECHA: TDateField;
    QcortesCOD_ART: TIntegerField;
    QcortesARTICULOS: TWideStringField;
    QcortesEXISTENCIA: TExtendedField;
    QcortesVENTAS: TExtendedField;
    QcortesENTRADAS: TExtendedField;
    QcortesSALIDAS: TExtendedField;
    QcortesEXACTUAL: TExtendedField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
 ///   procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
   //   AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGetCorteInventario: TfGetCorteInventario;

implementation

{$R *.dfm}

uses Unit2, UinventarioDirecto, Tools, Unit137;

procedure TfGetCorteInventario.cxButton1Click(Sender: TObject);
begin


 with qnumero do
   begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_MCORTEINVENTARIO_ID, 1) from RDB$DATABASE');
     open;
   end;


   with QCorteInventario do
     begin
       open;
       Append;
       QCorteInventarioID.Value := QnumeroGEN_ID.Value;
       QCorteInventarioFECHA_INICIAL.Value := FechaCorte.Date;
       QCorteInventarioESTADO.Value := 2;

     end;


         with ZExistencia do
           begin
             first;

             while not eof do
               begin
                 datos.QCorteInventario.Open;


                     with qcortes do  begin
                           close;
                           sql.Clear;
                           sql.Add('SELECT * FROM consultar_corte_inventario(:FFINAL, :FCORTE,:F1, :F2)');
                           sql.Add('where cod_art =:cod');

                           params[0].Value := now();
                           params[1].Value := FechaCorte.Date;
                           params[2].Value := FechaCorte.Date;
                           params[3].Value := now();
                           params[4].Value := ZExistenciaCOD_ART.Value;

                           open;
                         end;


                 with qnum2 do
                     begin
                       close;
                       sql.Clear;
                       sql.Add('select gen_id(GEN_TB_INVENTARIOCORTE_ID, 1) from RDB$DATABASE');
                       open;
                     end;

                     datos.QCorteInventario.Append;
                     datos.QCorteInventarioID.Value             := Qnum2GEN_ID.Value;
                     datos.QCorteInventarioFECHA_CORTE.Value    := FechaCorte.Date;
                     datos.QCorteInventarioIDUSAURIO.Value      := AsignaUsuario;
                     datos.QCorteInventarioMONTO.Value          := ZExistenciaTOTAL.Value;
                     datos.QCorteInventarioCOD_ART.Value        := ZExistenciaCOD_ART.Value;
                     datos.QCorteInventarioEXISTENCIA.Value     := qcortesexactual.Value;
                     datos.QCorteInventarioIDMASTER.Value       := QCorteInventarioID.Value;
                     datos.QCorteInventarioRECONTEO.Value       := 0;

                 next;
               end;

               datos.QCorteInventario.ApplyUpdates;
           end;


     qcorteinventario.ApplyUpdates;
     datos.data.Commit;

     with FrmCorteInventario.QCortesAbiertos do
         begin
           close;
           sql.Clear;
           sql.Add('select * from MCORTEINVENTARIO');
           sql.Add('where estado =2 ');
           open;
         end;



     ShowMessage(' Proceso Terminado ');
     close;

end;

procedure TfGetCorteInventario.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
if datos.MantArtOPCIONES_BOLA.Value = 'Si' then begin
     MsgViewError(' Este producto tiene equivalencia ');
end else begin



with FInventarioDirecto.Qnumero do
  begin
    close;
    sql.Clear;
    sql.Add('select gen_id(GEN_MDESCARGAR_ID, 1) from RDB$DATABASE');
    open;

  end;


   with datos.MantArt do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.signo, c.cat from mtartuculos a');
                  sql.Add('left join tb_moneda b On a.idmoneda = b.id');
                  sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
                  sql.Add('where a.cod_art =:oo');
                  params[0].Value := ZExistenciaCOD_ART.Value;
                  open;
                end;


 datos.ZMDescarga.Open;
 datos.ZMDescarga.Insert;
 datos.ZMDescargaMDESCARGARID.Value := FInventarioDirecto.QnumeroGEN_ID.Value;
 datos.ZMDescargaFECHA.Value := Now();
 datos.ZMDescargaUSUARIOID.Value := asignausuario;

 with FInventarioDirecto.zqusuario do
   begin
     close;
     sql.Clear;
     sql.Add('select a.*, b.NOMBRES_EMP from musuario a');
     sql.Add('left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1');
     sql.Add('where a.usuarioID =:pp');
     params[0].Value := asignausuario;
     open;
   end;

 datos.ZMDescargaNOMBRES_EMP.Value := FInventarioDirecto.zqusuarionombres_emp.Value;
  FInventarioDirecto.ZcoceptoDes.Open;


   /// Abre almacen ////
  with FInventarioDirecto.almacenes do
     begin
       open;
       first;
     end;

        datos.ZMDescarga.Edit;
        datos.ZMDescargaCOD_ALM.Value := FInventarioDirecto.almacenesid.Value;
        datos.ZMDescargaNOMBREALMACEN.Value := FInventarioDirecto.almacenesdescripcion.Value;

  FInventarioDirecto.Edit1.Text := 'CORTE';
  FInventarioDirecto.ShowModal;


end;
end;

procedure TfGetCorteInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
fGetCorteInventario := nil;
Action := caFree;
end;

procedure TfGetCorteInventario.FormShow(Sender: TObject);
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

               FechaCorte.Date := Now();

end;

end.
