unit uConsultarLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset;

type
  TfConsultarLotes = class(TForm)
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
    cod_txt: TEdit;
    Panel1: TPanel;
    lblArticulos: TLabel;
    Panel6: TPanel;
    pnlEdit: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    edtExistencia: TEdit;
    Panel10: TPanel;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    SpeedButton1: TSpeedButton;
    Panel9: TPanel;
    Panel11: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qConsultaLotes: TZReadOnlyQuery;
    dsLotes: TDataSource;
    cxGrid1DBTableView1NO_LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1FV: TcxGridDBColumn;
    cxGrid1DBTableView1EXIS_INI: TcxGridDBColumn;
    cxGrid1DBTableView1CANT: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    Panel12: TPanel;
    Panel13: TPanel;
    Label1: TLabel;
    edtUNT: TEdit;
    Panel14: TPanel;
    Label5: TLabel;
    Panel15: TPanel;
    Label6: TLabel;
    qConsultaLotesID: TIntegerField;
    qConsultaLotesIDARTICULO: TIntegerField;
    qConsultaLotesNO_LOTE: TWideStringField;
    qConsultaLotesFV: TDateField;
    qConsultaLotesEXIS_INI: TFloatField;
    qConsultaLotesCANT: TFloatField;
    qConsultaLotesESTADO: TIntegerField;
    Panel20: TPanel;
    btnnuevo: TSpeedButton;
    QEliminar: TZReadOnlyQuery;
    Edit1: TEdit;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnnuevoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsultarLotes: TfConsultarLotes;

implementation

uses
  Unit2, Tools, uLotes;

{$R *.dfm}

procedure TfConsultarLotes.btnnuevoClick(Sender: TObject);
begin
if edit1.Text = 'INSERTAR D' then
  begin
if StrToInt(edtUNT.Text) = 0 then
  begin
    close;
  end else begin
              Crear_Mensages('Aviso',
                    'No es posible Aplicar este proceso',
                    'La existencia actual en lotes es menor a la existencia capturada',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\Aviso.png',
                    'OK') ;

           end;

  end;


  if edit1.Text = 'INSERTAR A' then
  begin
if StrToInt(edtUNT.Text) = 0 then
  begin

    close;
  end else begin
              Crear_Mensages('Aviso',
                    'No es posible Aplicar este proceso',
                    'La existencia actual en lotes es menor a la existencia capturada',
                    ExtractFilePath(Application.ExeName) + '\imagenes\aviso\Aviso.png',
                    'OK') ;

           end;

  end;


   if edit1.Text ='CONSULTAR' THEN begin

             CLOSE;

           end;
end;

procedure TfConsultarLotes.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfConsultarLotes.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (AViewInfo.GridRecord.Values[4] =1) then BEGIN
    ACanvas.Brush.Color := $009F7224;
    ACanvas.Font.Color := clWHITE;
   end;
   if (AViewInfo.GridRecord.Values[4] = 2) then BEGIN
    ACanvas.Brush.Color := clMaroon;
    ACanvas.Font.Color := clWHITE;
   END;
end;

procedure TfConsultarLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fConsultarLotes := nil;
action := caFree;
end;

procedure TfConsultarLotes.FormShow(Sender: TObject);
begin
  with qConsultaLotes do
    begin
      close;
      sql.Clear;
      sql.Add('select * from PRODUCTOS_LOTE');
      sql.Add('where idarticulo =:idarti');
      params[0].Value := StrToInt(cod_txt.Text);
      open;
    end;


    if Edit1.Text ='INSERTAR' then
      begin
        PANEL12.Visible := TRUE;
      end;

       if Edit1.Text ='CONSULTAR' then
      begin
        PANEL12.Visible := FALSE;
      end;

end;

procedure TfConsultarLotes.SpeedButton1Click(Sender: TObject);
begin
       if edit1.Text = 'INSERTAR' then BEGIN

                if fLotes = nil then
                  begin

                    fLotes := TfLotes.Create(self);
                    fLotes.lblArticulos.Caption := lblArticulos.caption ;
                    fLotes.Edit1.Text :='CONS';
                    fLotes.edtCantidad.Text := edtUNT.Text;
                    datos.QMlote.open;
                    datos.QMlote.Append;
                    datos.QMloteIDARTICULO.Value := StrToInt(cod_txt.Text);
                    datos.QMloteESTADO.Value := 1;
                    fLotes.ShowModal;
                  end;


                   if edit1.Text = 'INSERTAR D' then BEGIN

                    if fLotes = nil then
                      begin

                        fLotes := TfLotes.Create(self);
                        fLotes.lblArticulos.Caption := lblArticulos.caption ;
                        fLotes.Edit1.Text :='CONS';
                        fLotes.edtCantidad.Text := edtUNT.Text;
                        datos.QMlote.open;
                        datos.QMlote.Append;
                        datos.QMloteIDARTICULO.Value := StrToInt(cod_txt.Text);
                        datos.QMloteESTADO.Value := 1;
                        fLotes.ShowModal;
                      end;

                  qConsultaLotes.Refresh;
           END;
      end;
end;

procedure TfConsultarLotes.SpeedButton2Click(Sender: TObject);
begin
      if edit1.Text = 'INSERTAR' then BEGIN

        if  Crear_Mensages('CONFIRMACION',
                          'Estas al punto de eliminar un Lote',
                          '¿Está usted seguro?, por favor confirmar',
                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\aviso.png',
                          'CONFIRMAR') then
                         begin
                             with QEliminar do
                                  begin
                                    close;
                                    sql.Clear;
                                    sql.Add('UPDATE PRODUCTOS_LOTE SET ESTADO = 2 WHERE id =:id');
                                    params[0].value := qConsultaLotesid.Value;
                                    ExecSQL;
                                  end;

                                  edtUNT.Text := IntToStr(StrToInt(edtUNT.Text) - StrTOInt(qConsultaLotesCANT.text));
                                  datos.QMlote.ApplyUpdates;

                                  qConsultaLotes.Refresh;
                         end;
      END;

      if edit1.Text = 'CONSULTAR' then
           BEGIN

                Crear_Mensages('AVISO',
                          'No puedes Eliminar',
                          'Estas en modo consulta',
                          ExtractFilePath(Application.ExeName) + '\imagenes\aviso\aviso.png',
                          'OK')

           END;



end;

end.
