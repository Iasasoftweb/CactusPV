unit uAjusteDirecto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, acPNG,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Data.DB, ZAbstractRODataset, ZDataset;

type
  TfAjusteDirecto = class(TForm)
    Panel1: TPanel;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel8: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel6: TPanel;
    lblArticulos: TLabel;
    Panel7: TPanel;
    Panel9: TPanel;
    pnlEdit: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtExistencia: TEdit;
    Panel10: TPanel;
    SpeedButton2: TSpeedButton;
    numeroinventario: TZReadOnlyQuery;
    numeroinventarioGEN_ID: TLargeintField;
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
    almacenes: TZReadOnlyQuery;
    almacenesID: TIntegerField;
    almacenesDESCRIPCION: TWideStringField;
    QDDescarga: TZReadOnlyQuery;
    QDDescargaGEN_ID: TLargeintField;
    cod_txt: TEdit;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAjusteDirecto: TfAjusteDirecto;

implementation

uses
  Unit2, Tools, Unit5, uLotes, uConsultarLote;

{$R *.dfm}

procedure TfAjusteDirecto.btnsalirClick(Sender: TObject);
begin

close;
end;

procedure TfAjusteDirecto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fAjusteDirecto := nil;
 action := caFree;
end;

procedure TfAjusteDirecto.FormShow(Sender: TObject);
begin
   edtExistencia.SetFocus;
end;

procedure TfAjusteDirecto.SpeedButton2Click(Sender: TObject);
var
totalCoP : double;
TotalCoEx :Double;

Q : TZQuery;
begin



  Q := TZQuery.Create(nil);

  try
    Q.Connection := datos.Data;
    Q.sql.Add(
      'select a.moneda, a.ubicacion, a.cod_art,upper(a.articulo) articulo ,a.cod_cat,a.politica,a.modelo, a.codigobarra, a.referencia,  a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra, a. lote, a.serie,OPCIONES_BOLA,');
    Q.sql.Add('sum(b.entrada - b.salida) Existencia');
    Q.sql.Add('from mtartuculos a');
    Q.sql.Add('left join minventario b On a.cod_art = b.cod_art');
    Q.sql.Add('where a.cod_art =:idd');
    Q.sql.Add(
      'group by a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt, a.codigobarra,a.itbis,a.costo, a.referencia,  taza_compra, a.ubicacion,  a. lote, a.serie, OPCIONES_BOLA');
    Q.Params[0].Value := StrToInt(cod_txt.Text);

    Q.Open;

    if q.FieldByName('Lote').Value = 'SI' then
      begin
           if fConsultarLotes = nil then
                begin

                  fConsultarLotes := TfConsultarLotes.Create(self);
                  fConsultarLotes.lblArticulos.Caption := q.FieldByName('articulo').Value;
                  fConsultarLotes.edtExistencia.Text := edtExistencia.Text;
                  fConsultarLotes.cod_txt.Text :=  q.FieldByName('cod_art').text;
                  fConsultarLotes.edtUNT.Text := edtExistencia.Text;
                  fConsultarLotes.Edit1.Text := 'INSERTAR D';
                  fConsultarLotes.ShowModal;
                end;
             datos.ZDdescarga.Open;

    with QDDescarga do
    begin
      close;
      sql.Clear;
      sql.Add('select gen_id(GEN_DDESCARGAR_ID, 1) from RDB$DATABASE');
      Open;
    end;

    datos.ZDdescarga.Insert;
    datos.ZDdescargaid.Value := QDDescargaGEN_ID.Value;
    datos.ZDdescargaCOD_ART.Value := q.FieldByName('Cod_Art').Value;
    datos.ZDdescargaCANTIDAD.Value := StrToFloat(edtExistencia.text);
    datos.ZDdescargaESTADO.Value := 1;
    DATOS.ZDdescargaLIN.Value := AsignaLote;
    datos.ZDdescarga.Post;

    datos.ZMDescarga.ApplyUpdates;
    datos.ZDdescarga.ApplyUpdates;

    /// ************** Actualiza Inventario
    datos.ZInventario.Open;


        if q.FieldByName('OPCIONES_BOLA').Value  = 'Si' then
        begin
          with numeroinventario do
          begin
            close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            Open;
          end;

          datos.ZInventario.Insert;
          datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          datos.ZInventarioFECHA.Value := now();
          datos.ZInventarioIDTIENDA.Value := AsignaTienda;
          datos.ZInventarioCOD_ART.Value :=
            StrToInt(q.FieldByName('CODEQUIVALENCIA').Value);
          datos.ZInventarioCONCEPTOID.Value := 2;
          datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
          datos.ZInventarioLIN.Value := AsignaLote;
          datos.ZInventarioCONCEPTOID.Value := 5;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZDdescargaCANTIDAD.Value *
            q.FieldByName('CANTEQUIVALENCA').Value;

          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;

        end
        else
        begin
          with numeroinventario do
          begin
            close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            Open;
          end;

          datos.ZInventario.Insert;
          datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          datos.ZInventarioFECHA.Value := now();
          datos.ZInventarioIDTIENDA.Value := AsignaTienda;
          datos.ZInventarioCOD_ART.Value := datos.ZDdescargaCOD_ART.Value;

          datos.ZInventarioCONCEPTOID.Value := 5;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZDdescargaCANTIDAD.Value;
          datos.ZInventarioLIN.Value := AsignaLote;
          datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;
        end;

    datos.ZInventario.ApplyUpdates;
    datos.Malmacen.ApplyUpdates;

    datos.Data.Commit;

    datos.ZDdescarga.close;
    datos.ZMDescarga.close;


    //  FrmArticulos.Finventario;

    //  ShowMessage('');

//    end
//    else
//    begin
//      with fGetCorteInventario.zexistencia do
//      begin
//        close;
//        sql.Clear;
//        sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
//        sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
//        sql.Add('where b.politica <> ''Servicio''');
//        sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
//        Open;
//      end;
//
//    end;
         close;
      end else begin



    datos.ZDdescarga.Open;

    with QDDescarga do
    begin
      close;
      sql.Clear;
      sql.Add('select gen_id(GEN_DDESCARGAR_ID, 1) from RDB$DATABASE');
      Open;
    end;

    datos.ZDdescarga.Insert;
    datos.ZDdescargaid.Value := QDDescargaGEN_ID.Value;
    datos.ZDdescargaCOD_ART.Value := q.FieldByName('Cod_Art').Value;
    datos.ZDdescargaCANTIDAD.Value := StrToFloat(edtExistencia.text);
    datos.ZDdescargaESTADO.Value := 1;
    datos.ZDdescarga.Post;

    datos.ZMDescarga.ApplyUpdates;
    datos.ZDdescarga.ApplyUpdates;

    /// ************** Actualiza Inventario
    datos.ZInventario.Open;


        if q.FieldByName('OPCIONES_BOLA').Value  = 'Si' then
        begin
          with numeroinventario do
          begin
            close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            Open;
          end;

          datos.ZInventario.Insert;
          datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          datos.ZInventarioFECHA.Value := now();
          datos.ZInventarioIDTIENDA.Value := AsignaTienda;
          datos.ZInventarioCOD_ART.Value :=
            StrToInt(q.FieldByName('CODEQUIVALENCIA').Value);
          datos.ZInventarioCONCEPTOID.Value := 2;
          datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
          datos.ZInventarioLIN.Value := AsignaLote;
          datos.ZInventarioCONCEPTOID.Value := 5;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZDdescargaCANTIDAD.Value *
            q.FieldByName('CANTEQUIVALENCA').Value;

          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;

        end
        else
        begin
          with numeroinventario do
          begin
            close;
            sql.Clear;
            sql.Add('select gen_id(GEN_MINVENTARIO_ID, 1) from RDB$DATABASE');
            Open;
          end;

          datos.ZInventario.Insert;
          datos.ZInventarioMINVENTARIOID.Value := numeroinventarioGEN_ID.Value;
          datos.ZInventarioFECHA.Value := now();
          datos.ZInventarioIDTIENDA.Value := AsignaTienda;
          datos.ZInventarioCOD_ART.Value := datos.ZDdescargaCOD_ART.Value;
           datos.ZInventarioLIN.Value := AsignaLote;
          datos.ZInventarioCONCEPTOID.Value := 5;
          datos.ZInventarioSALIDA.Value := 0.00;
          datos.ZInventarioENTRADA.Value := datos.ZDdescargaCANTIDAD.Value;

          datos.ZInventarioCOD_USUARIO.Value := AsignaUsuario;
          datos.ZInventarioCOD_ALM.Value := datos.ZMDescargaCOD_ALM.Value;
        end;

    datos.ZInventario.ApplyUpdates;
    datos.Malmacen.ApplyUpdates;

    datos.Data.Commit;

    datos.ZDdescarga.close;
    datos.ZMDescarga.close;


    //  FrmArticulos.Finventario;

    //  ShowMessage('');

//    end
//    else
//    begin
//      with fGetCorteInventario.zexistencia do
//      begin
//        close;
//        sql.Clear;
//        sql.Add('select a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo) articulo,b.costo, a.cod_alm, sum(a.entrada - a.salida) Existencia, b.costo * sum(a.entrada - a.salida) Total  from minventario a');
//        sql.Add('left join mtartuculos b  On a.cod_art = b.cod_art');
//        sql.Add('where b.politica <> ''Servicio''');
//        sql.Add('group by a.cod_art, b.costo_pr, b.codigobarra, b.referencia,upper(b.articulo),b.costo, a.cod_alm');
//        Open;
//      end;
//
//    end;
         close;
      end;


  finally
    Q.close;
    Q.Free;


  end;

end;

end.
