unit UinventarioDirecto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, Vcl.Mask, Vcl.DBCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue;

type
  TFInventarioDirecto = class(TForm)
    Panel8: TPanel;
    Label61: TLabel;
    LbModo: TLabel;
    Panel4: TPanel;
    Qnumero: TZReadOnlyQuery;
    QnumeroGEN_ID: TLargeintField;
    Zqusuario: TZReadOnlyQuery;
    ZqusuarioUSUARIOID: TIntegerField;
    ZqusuarioEMPLEADOID: TIntegerField;
    ZqusuarioTIPO: TIntegerField;
    ZqusuarioPASSW: TWideStringField;
    ZqusuarioIDAC: TWideStringField;
    ZqusuarioNOMBRES_EMP: TWideStringField;
    ZcoceptoDes: TZReadOnlyQuery;
    ZcoceptoDesDESCARGAID: TIntegerField;
    ZcoceptoDesDESCRIPCION: TWideStringField;
    ZcoceptoDesESTADO: TIntegerField;
    DsConceptos: TDataSource;
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    QDDescarga: TZReadOnlyQuery;
    QDDescargaGEN_ID: TLargeintField;
    DsArticulos: TDataSource;
    Label36: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    BtGuardar: TcxButton;
    BtCancelar: TcxButton;
    Label1: TLabel;
    Cant_TXT: TcxCalcEdit;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
    Edit1: TEdit;
    procedure BtGuardarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInventarioDirecto: TFInventarioDirecto;

implementation

{$R *.dfm}

uses Unit2, Tools, Unit5, UgetCorteInventario;

procedure TFInventarioDirecto.BtCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFInventarioDirecto.BtGuardarClick(Sender: TObject);
var
totalCoP : double;
TotalCoEx :Double;
begin



 datos.ZDdescarga.Open;


 with QDDescarga do
   begin
     close;
     sql.Clear;
     sql.Add('select gen_id(GEN_DDESCARGAR_ID, 1) from RDB$DATABASE');
     open;
   end;





  datos.ZDdescarga.Insert;
  datos.ZDdescargaDDESCARGARID.Value := QDDescargaGEN_ID.Value;
  datos.ZDdescargaCOD_ART.Value := StrToInt(DBEdit1.Text);
  datos.ZDdescargaARTICULO.Value :=  DBEdit2.Text;
  datos.ZDdescargaCANTIDAD.Value := cant_txt.Value;
  datos.ZDdescargaESTADO.Value := 1;
  datos.ZDdescarga.Post;




    datos.ZMDescarga.ApplyUpdates;
    datos.ZDdescarga.ApplyUpdates;



///************** Actualiza Inventario
 datos.ZInventario.Open;

    with datos.ZDdescarga do
      begin
        first;

        while not eof do
           begin

            with datos.MantArt do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.signo, c.cat from mtartuculos a');
                  sql.Add('left join tb_moneda b On a.idmoneda = b.id');
                  sql.Add('left join mtcategoria c On a.cod_cat = c.codcat');
                  sql.Add('where a.cod_art =:oo');
                  params[0].Value := datos.ZDdescargaCOD_ART.Value;
                  open;
                end;



                if DATOS.MantArtOPCIONES_BOLA.Value ='Si' then
                             begin
                                with numeroinventario do
                                    begin
                                       close;
                                       sql.Clear;
                                       sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
                                       open;
                                    end;


                                    datos.ZInventario.Insert;
                                    datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
                                    datos.ZInventarioFECHA.Value          := now();
                                    datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
                                    datos.ZInventarioCOD_ART.Value        := StrToInt(datos.MantArtCODEQUIVALENCIA.Value);
                                    datos.ZInventarioCONCEPTOID.Value     := 2;
                                    datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;


                                                   datos.ZInventarioCONCEPTOID.Value     := 5;
                                                   datos.ZInventarioSALIDA.Value         := 0.00;
                                                   datos.ZInventarioENTRADA.Value        := datos.ZDdescargaCANTIDAD.Value * datos.MantArtCANTEQUIVALENCA.Value;

                                          datos.ZInventarioCOD_ALM.Value        := datos.ZMDescargaCOD_ALM.Value;

                             end else begin
             with numeroinventario do
                  begin
                     close;
                     sql.Clear;
                     sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
                     open;
                  end;


              datos.ZInventario.Insert;
              datos.ZInventarioMINVENTARIOID.Value  := numeroinventariogen_id.Value;
              datos.ZInventarioFECHA.Value          := now();
              datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
              datos.ZInventarioCOD_ART.Value        := datos.ZDdescargaCOD_ART.Value;


                   datos.ZInventarioCONCEPTOID.Value     := 5;
                   datos.ZInventarioSALIDA.Value         := 0.00;
                   datos.ZInventarioENTRADA.Value        := datos.ZDdescargaCANTIDAD.Value;

              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
              datos.ZInventarioCOD_ALM.Value        := datos.ZMDescargaCOD_ALM.Value;
           end;
           next;
        end;
      end;


     datos.ZInventario.ApplyUpdates;
     DATOS.Malmacen.ApplyUpdates;



datos.data.Commit;


    datos.ZDdescarga.Close;
    datos.ZMDescarga.Close;


  if Edit1.Text = '' then begin

    FrmArticulos.Finventario;
  end else begin
              with fGetCorteInventario.zexistencia do
               begin
                 close;
                 sql.Clear;
                 sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
                 sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
                 sql.add('where b.politica <> ''Servicio''');
                 sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
                 open;
               end;

           end;






      close;
end;

procedure TFInventarioDirecto.FormShow(Sender: TObject);
begin
Cant_TXT.Value := 1;
end;

end.
