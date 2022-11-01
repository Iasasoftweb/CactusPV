unit Unit136;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids,  Vcl.ComCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Excel2000, OleServer, ComObj,
 Data.DB, Data.Win.ADODB, Vcl.AppEvnts, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBGrids, typinfo,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, ZAbstractRODataset,
  ZDataset, dxSkinSharp, dxSkinTheBezier;




type
  TFrmImportarExcel = class(TForm)
    OpenDialog1: TOpenDialog;
    ProgressBar1: TProgressBar;
    ADOQuery1: TADOQuery;
    StatusBar1: TStatusBar;
    Edit2: TEdit;
    ApplicationEvents1: TApplicationEvents;
    Edit1: TEdit;
    cxButton1: TcxButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ComboBox1: TComboBox;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    Op1: TcxRadioGroup;
    cxButton2: TcxButton;
    TInventario: TADOTable;
    AdoClientes: TADOTable;
    CCliente: TADOConnection;
    DSClientes: TDataSource;
    TInventariocod_art: TFloatField;
    DsInventario: TDataSource;
    TInventarioEXIST: TFloatField;
    ADOTable1codigobarra1: TWideStringField;
    ADOTable1producti: TWideStringField;
    ADOTable1PRECIO1: TFloatField;
    ADOTable1PRECIO2: TFloatField;
    ADOTable1PRECIO3: TFloatField;
    ADOTable1EXIST: TFloatField;
    ADOTable1COSTO_PROM: TFloatField;
    ADOTable1ULT_COSTO: TFloatField;
    ADOTable1CODIGO_FAB: TFloatField;
    ADOTable1REFERENCIA: TWideStringField;
    ADOTable1EQUIVALENTES: TWideStringField;
    ADOTable1CLV_ART_EQUI: TWideStringField;
    ADOTable1imp1: TWideStringField;
    ADOTable1balanza02: TWideStringField;
    ADOTable1DESCR_EQUI: TWideStringField;
    ADOTable1CANTIDAD_EQUI: TFloatField;
    AdoClientescodigo: TFloatField;
    AdoClientesNOMBRE: TWideStringField;
    AdoClientescedula: TWideStringField;
    AdoClientesdireccion: TWideStringField;
    AdoClientesPOB: TWideStringField;
    AdoClientesTELEFONO: TWideStringField;
    AdoClientesdiascredito: TFloatField;
    AdoClienteslimitecredito: TFloatField;
    AdoClientescedula1: TWideStringField;
    QArti: TZReadOnlyQuery;
    QArtiCOD_ART: TIntegerField;
    QArtiCODIGOTXT: TWideStringField;
    QArtiARTICULO: TWideStringField;
    QArtiMODELO: TWideStringField;
    QArtiMARCA: TWideStringField;
    QArtiCOLOR: TWideStringField;
    QArtiCOD_CAT: TIntegerField;
    QArtiCOD_SERIE: TIntegerField;
    QArtiCOD_ALM: TIntegerField;
    QArtiCOSTO: TFloatField;
    QArtiCOD_PROV1: TIntegerField;
    QArtiEXISTENCIA1: TFloatField;
    QArtiITBIS: TWideStringField;
    QArtiABREVIADO: TWideStringField;
    QArtiCOD_BARRA: TWideStringField;
    QArtiCOD_UV: TIntegerField;
    QArtiUSUARIOMOD: TIntegerField;
    QArtiFECHA_MOD: TDateField;
    QArtiPOLITICA: TWideStringField;
    QArtiCOSTO_PR: TFloatField;
    QArtiIMAGEN: TBlobField;
    QArtiCLA_COSTO: TWideStringField;
    QArtiCLA_PRECIO: TWideStringField;
    QArtiPRECIO_A: TFloatField;
    QArtiPRECIO_B: TFloatField;
    QArtiPRECIO_D: TFloatField;
    QArtiESTADO: TIntegerField;
    QArtiEXTFOTO: TWideStringField;
    QArtiDESCRIPCIONWEB: TWideMemoField;
    QArtiPUBLICARWEB: TIntegerField;
    QArtiCODIGOBARRA: TWideStringField;
    QArtiEMPAQUE: TIntegerField;
    QArtiCANT_EMPA: TFloatField;
    QArtiCOD_PROV2: TIntegerField;
    QArtiCOD_PROV3: TIntegerField;
    QArtiREFERENCIA: TWideStringField;
    QArtiOPCION_SABOR: TWideStringField;
    QArtiSTOCK_MA: TFloatField;
    QArtiSTOCK_M: TFloatField;
    QArtiFACTOR: TFloatField;
    QArtiTIPO_PRODUCTOS: TWideStringField;
    QArtiFACTURABLE: TIntegerField;
    QArtiSTOCK: TFloatField;
    QArtiOPCIONES_BOLA: TWideStringField;
    QArtiPARTICIONADO: TWideStringField;
    QArtiCOMPUESTO: TWideStringField;
    QArtiBENEFICIOS: TFloatField;
    QArtiMONEDA: TWideStringField;
    QArtiUNIDAD: TWideStringField;
    QArtiTAZA_COMPRA: TFloatField;
    QArtiFECHA_COMPRA: TDateField;
    QArtiINTERES_ACUMULADO: TFloatField;
    QArtiALMACEN: TIntegerField;
    QArtiPERCIO_COPA: TFloatField;
    QArtiCOMISION: TFloatField;
    QArtiARTICULOS_OMO: TWideStringField;
    QArtiCODIGOUNICO: TWideStringField;
    QArtiEMPRESA: TWideStringField;
    QArtiCONDICION: TWideStringField;
    QArtiUTILIDAD2: TFloatField;
    QArtiUTILIDAD3: TFloatField;
    QArtiPRECIO_BRUTO1: TFloatField;
    QArtiPRECIO_BRUTO2: TFloatField;
    QArtiPRECIO_BRUTO3: TFloatField;
    QArtiMAYOREO1: TFloatField;
    QArtiMAYOREO2: TFloatField;
    QArtiMAYOREO3: TFloatField;
    QArtiDESCRIPCION: TWideMemoField;
    QArtiCOSTOPROMENO: TFloatField;
    QArtiTIENECOMPACTIBILIDAD: TWideStringField;
    QArtiCOMPACTIBLECON: TIntegerField;
    QArtiUBICACION: TWideStringField;
    QArtiOBS: TIntegerField;
    QArtiTIPOB: TWideStringField;
    QArtiESTADOCONDICION: TWideStringField;
    QArtiIDMONEDA: TIntegerField;
    QArtiCOSTO_DOLLARS: TFloatField;
    QArtiCODEQUIVALENCIA: TWideStringField;
    QArtiDESC_EQUIVALENCIA: TWideStringField;
    QArtiCANTEQUIVALENCA: TFloatField;


    procedure cxButton1Click(Sender: TObject);
    procedure ConnectToExcel;
    procedure GetFieldInfo;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure cxButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private


      Procedure FetchData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportarExcel: TFrmImportarExcel;

implementation

{$R *.dfm}

uses Unit2, Tools;
procedure TFrmImportarExcel.FetchData;
    begin
      StatusBar1.SimpleText:='';
      //ConnectToExcel;
      AdoQuery1.Close;
      AdoQuery1.SQL.Text:=Edit2.Text;
        try
          AdoQuery1.Open;
        except
        ShowMessage('Unable to read data from Excel, make sure the query ' + Edit1.Text +' is meaningful!');
        raise;
    end;
  end;




 procedure TFrmImportarExcel.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
 StatusBar1.SimpleText := E.Message;
end;

procedure TFrmImportarExcel.ComboBox1Change(Sender: TObject);
begin

if op1.ItemIndex = 0 then begin

 ADOTable1.Close;
ADOTable1.TableName := ComboBox1.Text;
    ADOTable1.Open;
    DBGrid1.DataSource := DataSource1;
end;

  if op1.ItemIndex = 3 then begin

 TInventario.Close;
TInventario.TableName := ComboBox1.Text;
    TInventario.Open;
    DBGrid1.DataSource := DSInventario;
end;

 if op1.ItemIndex = 2 then begin

 AdoClientes.Close;
AdoClientes.TableName := ComboBox1.Text;
    AdoClientes.Open;
    DBGrid1.DataSource := DSClientes;
end;

end;

procedure TFrmImportarExcel.ConnectToExcel;
var strConn :  widestring;
begin
  strConn:='Provider=Microsoft.Jet.OLEDB.4.0;' +
           'Data Source=' + Edit1.Text + ';' +
           'Extended Properties=Excel 8.0;';
if op1.ItemIndex = 0 then begin

  AdoConnection1.Connected:=False;
  AdoConnection1.ConnectionString:=strConn;
  try
    AdoConnection1.Open;

    AdoConnection1.GetTableNames(ComboBox1.Items,True);

  except
    ShowMessage('Unable to connect to Excel, make sure the workbook ' + Edit1.Text + ' exist!');
    raise;
  end;
end;


if op1.ItemIndex = 2 then begin

  CCliente.Connected:=False;
  CCliente.ConnectionString:=strConn;
  try
   CCliente.Open;

   CCliente.GetTableNames(ComboBox1.Items,True);

  except
    ShowMessage('Unable to connect to Excel, make sure the workbook ' + Edit1.Text + ' exist!');
    raise;
  end;
end;


if op1.ItemIndex =3 then begin

   AdoConnection1.Connected:=False;
  AdoConnection1.ConnectionString:=strConn;
  try
    AdoConnection1.Open;

    AdoConnection1.GetTableNames(ComboBox1.Items,True);

  except
    ShowMessage('Unable to connect to Excel, make sure the workbook ' + Edit1.Text + ' exist!');
    raise;
  end;
end;
end;

procedure TFrmImportarExcel.cxButton1Click(Sender: TObject);
var
ITB : Currency;
BN  : Currency;
Cod : integer;
can : double;
CanE : double;

begin
itb := 0.00;
Bn  := 0.00;
can := 0;

if op1.ItemIndex = 0 then begin
   cod := 10000;
with ADOTable1 do
  begin
    First;
    while not Eof do
      begin

        datos.MantArt.Open;
        datos.MantArt.Append;
         cod := cod + 1;
        datos.MantArtCOD_ART.Value := cod;
        datos.MantArtARTICULO.Value := ADOTable1Producti.Value;
        datos.MantArtCODIGOTXT.Value := IntToStr(cod);
        datos.MantArtCOSTO.Value   := ADOTable1ULT_COSTO.Value;

        if ADOTable1imp1.AsInteger > 0  then
          begin
            datos.MantArtITBIS.Value := 'Si';
          end else begin
                     datos.MantArtITBIS.Value := 'No';
                   end;

        datos.MantArtTAZA_COMPRA.Value :=  StrToInt(ADOTable1imp1.Value);

        datos.MantArtPRECIO_A.Value :=  (ADOTable1PRECIO1.Value * (datos.MantArtTAZA_COMPRA.Value /100)) + ADOTable1PRECIO1.Value;
        datos.MantArtPRECIO_B.Value :=   (ADOTable1PRECIO2.Value * (datos.MantArtTAZA_COMPRA.Value /100)) + ADOTable1PRECIO2.Value;
        datos.MantArtPRECIO_D.Value :=  (ADOTable1PRECIO3.Value * (datos.MantArtTAZA_COMPRA.Value /100)) + ADOTable1PRECIO3.Value;

        datos.MantArtPRECIO_BRUTO1.Value := ADOTable1PRECIO1.Value;
        datos.MantArtPRECIO_BRUTO2.Value := ADOTable1PRECIO2.Value;
        datos.MantArtPRECIO_BRUTO3.Value := ADOTable1PRECIO3.Value;



        Datos.MantArtPOLITICA.Value := 'Unitario';

          if datos.MantArtCOSTO.Value > 0 then begin

              ITB :=  (datos.MantArtPRECIO_A.Value - (ADOTable1ULT_COSTO.Value*(datos.MantArtTAZA_COMPRA.Value /100)))- ADOTable1ULT_COSTO.Value;
              datos.MantArtBENEFICIOS.Value := Rounded(((itb /ADOTable1ULT_COSTO.Value) * 100),2);

               ITB :=  (datos.MantArtPRECIO_B.Value - (ADOTable1ULT_COSTO.Value*(datos.MantArtTAZA_COMPRA.Value /100)))- ADOTable1ULT_COSTO.Value;
              datos.MantArtutilidad2.Value := Rounded(((itb /ADOTable1ULT_COSTO.Value) * 100),2);

               ITB :=  (datos.MantArtPRECIO_D.Value - (ADOTable1ULT_COSTO.Value*(datos.MantArtTAZA_COMPRA.Value /100)))- ADOTable1ULT_COSTO.Value;
              datos.MantArtutilidad3.Value := Rounded(((itb /ADOTable1ULT_COSTO.Value) * 100),2);

           end;


        datos.MantArtCOSTO_PR.Value := ADOTable1COSTO_PROM.Value;
        datos.MantArtREFERENCIA.Value := ADOTable1REFERENCIA.Value;
        datos.MantArtCODIGOBARRA.Value  := ADOTable1CodigoBarra1.Value;
        datos.mantartopciones_bola.Value := ADOTable1EQUIVALENTES.Text;
        datos.MantArtCODEQUIVALENCIA.Value := ADOTable1CLV_ART_EQUI.Value;
        datos.MantArtDESC_EQUIVALENCIA.Value := ADOTable1DESCR_EQUI.Value;
        datos.MantArtCODIGOUNICO.Value := ADOTable1balanza02.Value;


        if  ADOTable1CANTIDAD_EQUI.AsFloat > 0.00 then begin
           datos.MantArtCANTEQUIVALENCA.Value   := ADOTable1CANTIDAD_EQUI.AsFloat;
        end;

        if  ADOTable1CANTIDAD_EQUI.AsFloat =0.00 then begin
             datos.MantArtCANTEQUIVALENCA.Value   := 0.00 ;
        end;

        next;
      end;

      datos.MantArt.ApplyUpdates;
      datos.Data.Commit;
  end;

//  with datos.MantArt do
//    begin
//      open;
//
//      First;
//
//      while not eof do
//        begin
//
//            with datos.MantArt do
//              begin
//                close;
//                sql.Clear;
//                sql.Add('select a.unidad,a.precio_a, a.precio_b,precio_d,a.referencia,a.ubicacion, a.codigobarra, a.cod_art,upper(a.articulo) articulo,a.cod_cat,a.politica,a.modelo, a.obs,');
//                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra,sum(b.entrada - b.salida) Existencia, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
//                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
//                sql.Add('left join minventario b On a.cod_art = b.cod_art');
//                sql.Add('where a.codigobarra =:codd');
//                sql.Add('group by a.unidad,a.precio_a, a.precio_b,precio_d,a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marca,');
//                sql.add('a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs');
//                Params[0].value := QArtiCODEQUIVALENCIA.Value;
//                open;
//
//              end;
//
//              if datos.MantArt.RecordCount > 0 then
//                 begin
//                   datos.MantArtCODEQUIVALENCIA.Value :=
//                 end;
//          Next;
//        end;
//    end;

end;

if op1.ItemIndex = 2 then
   begin

        with AdoClientes do
          begin
            first;

            while not Eof  do
              begin
                     datos.FbtClientes.Open;
                     datos.FbtClientes.Append;
                     datos.FbtClientesCODIGO.Value    := AdoClientescodigo.AsInteger;
                     DATOS.FbtClientesNOMBRES.Value   := AdoClientesNOMBRE.Value;
                     datos.FbtClientesDIRECCION.Value := AdoClientesdireccion.Value+' '+AdoClientesPOB.Value;
                     datos.FbtClientesTELEFONO.Value  := AdoClientesTELEFONO.Value;
                     datos.FbtClientesCEDULA.Value    := AdoClientescedula.Value;
                     datos.FbtClientesESTADO.Value    := 'Activo';
                     datos.FbtClientesNUMEROPIN.Value :='NORMAL';
                     DATOS.FbtClientesRUTA_ID.Value   := AdoClientesdiascredito.AsInteger;
                     DATOS.FbtClientesCREDITOLIMITE.Value := AdoClientesLimiteCredito.Value;
                     DATOS.FbtClientesCELULAR.Value    := AdoClientescedula1.Value;
                     DATOS.FbtClientesRENGLONCNF.Value := 'Cons. Final';
                     DATOS.FbtClientesCOLOR.Value      := 'PRECIO 1';
                     datos.FbtClientescodigo_t.Value := '000'+INtToStr(AdoClientescodigo.AsInteger);
                     datos.FbtClientesPAGOITB.Value :='No';
                     datos.FbtClientesBALANCE.Value := 0.00;
                     DATOS.FbtClientesCOLOR.Value := 'PRECIO 1';
                     datos.FbtClientesNUMEROPIN.Value := 'NORMAL';
                     DATOS.FbtClientesMUSADOS.Value := 0.00;
                     DATOS.FbtClientesMPENDIENTES.Value := 0.00;




                next;
              end;
          end;


          DATOS.FbtClientes.ApplyUpdates;
          DATOS.Data.Commit;
   end;



   if op1.ItemIndex = 3 then
     begin

       with TInventario do
         begin
             cod := 0;
              first;
           while not eof do
             begin


              cod := cod + 1;
              datos.ZInventario.Open;
              datos.ZInventario.Insert;
              datos.ZInventarioMINVENTARIOID.Value  := Cod;
              datos.ZInventarioFECHA.Value          := now();
              datos.ZInventarioIDTIENDA.Value       := AsignaTienda;
              datos.ZInventarioCOD_ART.Value        := TInventariocod_art.AsInteger;
              datos.ZInventarioCONCEPTOID.Value     := 5;
              datos.ZInventarioCOD_USUARIO.Value    := AsignaUsuario;
               datos.ZInventarioCOD_ALM.Value        := 1;
               datos.ZInventarioSALIDA.Value         := 0.00;


              datos.ZInventarioENTRADA.Value        := TInventarioEXIST.Value;
              next;
           end;


     datos.ZInventario.ApplyUpdates;
     datos.Data.Commit;

               next
             end;

     end;

end;





procedure TFrmImportarExcel.cxButton2Click(Sender: TObject);
begin

  openDialog1 := TOpenDialog.Create(self);
  openDialog1.InitialDir := 'C:\';
  openDialog1.Options := [ofFileMustExist];

  // Allow only .dpr and .pas files to be selected
  openDialog1.Filter :=
    'All files (*.*)|*.*';
  // Display the open file dialog
  if openDialog1.Execute
  then  begin
      Edit1.Text := openDialog1.FileName;
      ConnectToExcel;
  end
  else begin ShowMessage('Open file was cancelled');
  end;

  // Free up the dialog
  openDialog1.Free;
     dbgrid1.Visible := true;




end;

procedure TFrmImportarExcel.GetFieldInfo;
begin
StatusBar1.SimpleText:='';
 if not AdoConnection1.Connected then ConnectToExcel;
 AdoQuery1.Close;
 AdoQuery1.SQL.Text:='select * from [MYLIST$]';
 try
 AdoQuery1.Open;
 except
 ShowMessage('Unable to read data from Excel, make sure the query ' + Edit1.Text + ' is meaningful!');
 raise;
 end;
end;

end.
