unit Unit120;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, Vcl.Menus, cxButtons,
  cxDBEdit, cxCurrencyEdit, dxSkinTheBezier;

type
  TFrmServicioInstalador = class(TForm)
    Memo1: TMemo;
    Tecnicos: TZReadOnlyQuery;
    TecnicosCOD_EMP: TWideStringField;
    TecnicosNOMBRES_EMP: TWideStringField;
    DsTecnico: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxButton2: TcxButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label3: TLabel;
    InsertaComision: TZReadOnlyQuery;
    Edit1: TEdit;
    TecnicosDESCUENTO: TIntegerField;
    TecnicosCOD_EMP1: TIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Insertar;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmServicioInstalador: TFrmServicioInstalador;

implementation

{$R *.dfm}

uses Unit2, Unit63, Unit118, Unit59, Tools, UInicio;

procedure TFrmServicioInstalador.cxButton1Click(Sender: TObject);
begin
if FrmBuscarInstalador = nil then
  begin
    FrmBuscarInstalador := TFrmBuscarInstalador.Create(self);
    FrmBuscarInstalador.Edit2.Text := 'SERV';
    FrmBuscarInstalador.showmodal;
  end;

end;


procedure TFrmServicioInstalador.Insertar;
begin
 datos.FbCategorias.Open;

   with FrmNFact_normal.ibqrarticulos do
              begin
                close;
                sql.Clear;
                sql.Add('select a.unidad,a.precio_a,a.codigobarra, a.comision, a.precio_b, a.precio_d, precio_c, a.codigobarra, a.referencia,a.ubicacion,a.cod_art,a.articulo,a.cod_cat, a.OBS,');
                sql.add('a.politica,a.modelo,a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, ');
                sql.Add('a.mayoreo1, a.mayoreo2, a.mayoreo3 from mtartuculos a');
                sql.Add('where a.codigobarra =:PPP');
                sql.Add('group by a.unidad,a.precio_a,a.codigobarra,a.comision, a.precio_b,a.precio_d, precio_c, a.codigobarra, a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.referencia,a.ubicacion,');
                sql.add('a.marca,a.codigotxt,a.itbis,a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.OBS');
                PARAMS[0].Value := 'SER001';
                open;
              end;




// FrmNFact_normal.edit10.Text := FloatToStr(FrmNFact_normal.ibqrarticulosexistencia.Value);
 FrmNFact_normal.edit11.Text := '1.00';
//
                                             FrmNFact_normal.t1.Text     := FrmNFact_normal.ibqrArticuloscodigoTXT.Value;
                                             FrmNFact_normal.t2.Text     :=Memo1.Text;
                                             FrmNFact_normal.edit14.Text := floatToStr(FrmNFact_normal.ibqrArticulosTaza_compra.Value);
                                             FrmNFact_normal.t4.value    := cxCURRENCYEDIT1.Value;
//

                                            FrmNFact_normal.lunidad.Text := FrmNFact_normal.ibqrarticulosunidad.Value;
//
                                              FrmNFact_normal.t3.Text := '1';

                                              FrmNFact_normal.linea.Text := 'ART';
//                                              taza.Text := ibqrarticulostaza_compra.Text;

                                            if FrmNFact_normal.IbqRArticulosPOLITICA.value = 'Unitario' then
                                            begin
                                              FrmNFact_normal.topcion.Text := 'UNI';
                                            end;

                                            if FrmNFact_normal.IbqRArticulosPOLITICA.value = 'servicio' then
                                            begin
                                              FrmNFact_normal.topcion.Text := 'SER';
                                            end;

//                                              cxButton9.Enabled := true;



                                                try
                                                FrmNFact_normal.cxbutton9.Click;
                                                except

                                                end;




end;
procedure TFrmServicioInstalador.cxButton2Click(Sender: TObject);
begin

if edit1.Text <> '' then begin

if (memo1.Text ='') or (cxCurrencyEdit1.Value = 0.00) then begin
           MsgInformacion(' No se puede procesar, Falta Concepto o Monto ')
  end else begin
    with InsertaComision do
      begin
        close;
        sql.Clear;
        sql.Add('insert into COMISIONINSTALADOR');
        sql.Add('(ID_EMP, ID_FACT, MONTOSERVICIO, MONTOCOMISION, ESTADO, FECHA)');
        sql.Add('VALUES (:ID_EMP, :ID_FACT, :MONTOSERVICIO, :MONTOCOMISION, :ESTADO, :FECHA)');
        params[0].Value := TecnicosCOD_EMP1.Value;
        params[1].Value := StrToInt(edit1.Text);
        params[2].value := cxCurrencyEdit1.Value;
        params[3].Value := cxCurrencyEdit1.Value * (TecnicosDESCUENTO.Value / 100);
        params[4].Value := 1;
        params[5].Value := now();
        ExecSQL;

      end;

      Insertar;
      memo1.Clear;
      cxCurrencyEdit1.value := 0.00;
      Tecnicos.Close;
      close;
  end;
  end
  else begin

    datos.FbqMaster_Fact.Edit;
    datos.FbqMaster_Factcodven.Value := TecnicosCOD_EMP1.value;
    datos.FbqMaster_FactNOMBRES_EMP.Value := TecnicosNOMBRES_EMP.Value;
  //  datos.FbqMaster_Fact.Post;
   // datos.FbqMaster_Fact.ApplyUpdates;
        Tecnicos.Close;
      close;

  end;



end;

procedure TFrmServicioInstalador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmServicioInstalador := nil;
Action := caFree;
end;

procedure TFrmServicioInstalador.FormShow(Sender: TObject);
begin
          Tecnicos.Close;
          if edit1.Text ='' then
            begin
              label3.Visible := false;
              cxcurrencyedit1.Visible := false;
              cxButton1.Click;
            end;
end;

end.
