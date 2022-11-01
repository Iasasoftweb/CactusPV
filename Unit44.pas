unit Unit44;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, cxButtons, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmUnidad = class(TForm)
    Op1: TcxGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    nuevo: TcxButton;
    guardar: TcxButton;
    cancelar: TcxButton;
    eliminar: TcxButton;
    cerrar: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    consulta: TZReadOnlyQuery;
    consultaCOD_UNIDAD_M: TIntegerField;
    consultaUNIDAD: TWideStringField;
    consultaDESCRIPCION: TWideStringField;
    DsConsulta: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    consultaVALOR: TFloatField;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure cerrarClick(Sender: TObject);
    procedure nuevoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUnidad: TFrmUnidad;

implementation
uses unit2, tools, Unit63, UInicio;
{$R *.dfm}

procedure TFrmUnidad.cancelarClick(Sender: TObject);
begin
  datos.Zunidad.CancelUpdates;
         datos.Data.Rollback;

         consulta.close;
         consulta.open;

         nuevo.Enabled     := true;
         guardar.Enabled   := false;
         cancelar.Enabled  := false;
         eliminar.Enabled  := true;
         cerrar.Enabled    := true;
        // DATOS.Zunidad.Close;
         op1.Enabled := false;
end;

procedure TFrmUnidad.cerrarClick(Sender: TObject);
begin
close;
end;

procedure TFrmUnidad.cxGrid1DBTableView1DblClick(Sender: TObject);
begin

with datos.Zunidad do
 begin
   close;
   sql.Clear;
   sql.Add('select * from unidad_m');
   sql.Add('where COD_UNIDAD_M =:op11');
   params[0].Value := consultaCOD_UNIDAD_M.Value;
   open;
 end;

 nuevo.Enabled     := false;
guardar.Enabled   := true;
cancelar.Enabled  := true;
eliminar.Enabled  := true;
cerrar.Enabled    := false;
op1.Enabled := true;

end;

procedure TFrmUnidad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmUnidad  := nil;
Action := caFree;
end;

procedure TFrmUnidad.FormShow(Sender: TObject);
begin
consulta.Open;
end;

procedure TFrmUnidad.guardarClick(Sender: TObject);
begin
if (datos.ZunidadUNIDAD.Value = '') and
   (datos.ZunidadDESCRIPCION.Value = '')
   then begin
      ShowMEssage('** Registro no puede ser guardado, Introducir Unidad o Descripción **');
   end else begin
         datos.Zunidad.ApplyUpdates;
         datos.Data.Commit;

         consulta.close;
         consulta.open;

         nuevo.Enabled     := true;
         guardar.Enabled   := false;
         cancelar.Enabled  := false;
         eliminar.Enabled  := true;
         cerrar.Enabled    := true;
      //   DATOS.Zunidad.Close;
         op1.Enabled := false;
    end;


end;

procedure TFrmUnidad.nuevoClick(Sender: TObject);
begin

datos.Zunidad.Open;
with max do
 begin
   close;
   open;
 end;

datos.Zunidad.Insert;
datos.ZunidadCOD_UNIDAD_M.Value := maxmax.Value + 1;

nuevo.Enabled     := false;
guardar.Enabled   := true;
cancelar.Enabled  := true;
eliminar.Enabled  := true;
cerrar.Enabled    := false;
op1.Enabled := true;
end;
end.
