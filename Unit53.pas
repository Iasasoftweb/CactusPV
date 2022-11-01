unit Unit53;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Data.DB, ZAbstractRODataset,
  ZDataset, cxControls, cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxCurrencyEdit, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, unit2, cxLabel, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxDBEdit, unit5, AdvOfficeHint,
  Vcl.Mask, MaskEdEx, AdvEdit, AdvMoneyEdit, RxToolEdit, RxCurrEdit,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFrmPartionamiento = class(TForm)
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosPRECIO_A: TFloatField;
    IbqRArticulosPRECIO_B: TFloatField;
    IbqRArticulosPRECIO_D: TFloatField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosCOSTO: TFloatField;
    numeromaster: TZReadOnlyQuery;
    numeromasterGEN_ID: TLargeintField;
    DsqArticulos: TDataSource;
    cxGroupBox2: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DsUnidad: TDataSource;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    dscombo: TDataSource;
    cxTextEdit2: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton11: TcxButton;
    Dsparticionamiento: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    cxGrid3DBTableView1CANTI: TcxGridDBColumn;
    cxGrid3DBTableView1COD_PART: TcxGridDBColumn;
    cxGrid3DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO1: TcxGridDBColumn;
    cxGrid3DBTableView1PRECIO2: TcxGridDBColumn;
    AdvOfficeHint1: TAdvOfficeHint;
    cant: TAdvMoneyEdit;
    cant2: TAdvMoneyEdit;
    precio1: TAdvMoneyEdit;
    precio2: TAdvMoneyEdit;
    BalloonHint1: TBalloonHint;
    cxTextEdit3: TcxTextEdit;
    precio12: TCurrencyEdit;
    cxButton1: TcxButton;
    Qunidad: TZReadOnlyQuery;
    QunidadCOD_UNIDAD_M: TIntegerField;
    QunidadUNIDAD: TWideStringField;
    QunidadDESCRIPCION: TWideStringField;
    QunidadPOS: TIntegerField;
    QunidadVALOR: TFloatField;
    NumeroCombo: TZReadOnlyQuery;
    NumeroComboGEN_ID: TLargeintField;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    Label9: TLabel;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label10: TLabel;
    Panel6: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Panel11: TPanel;
    Panel10: TPanel;
    BTguardar: TSpeedButton;
    Panel3: TPanel;
    BtCancelar: TSpeedButton;
    Panel7: TPanel;
    cxButton2: TSpeedButton;
    procedure cxButton4Click(Sender: TObject);
    procedure BTguardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cantEnter(Sender: TObject);
    procedure cant2Enter(Sender: TObject);
    procedure precio1Enter(Sender: TObject);
    procedure precio2Enter(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsalirClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure BtnCanelarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPartionamiento: TFrmPartionamiento;

implementation
 USES UNIT63, TOOLS;
{$R *.dfm}

procedure TFrmPartionamiento.BtCancelarClick(Sender: TObject);
begin
datos.ZqParticion.Cancel;
datos.ZqParticion.CancelUpdates;

datos.Data.Rollback;

datos.ZqParticion.Close;


cant2.Enabled := false;
       precio1.Enabled := false;
       precio2.Enabled := false;
       cxButton2.Enabled := false;
       Btguardar.Enabled := true;

       CxTextEdit3.Clear;
       cxTextEdit2.Clear;
       cant.Clear;
       cant2.Clear;
       precio1.Clear;
       precio2.Clear;



 btguardar.Enabled := true;
 btcancelar.Enabled := true;
 //cxGroupBox2.Enabled := false;

 close;
end;

procedure TFrmPartionamiento.BTguardarClick(Sender: TObject);
begin
datos.ZqParticion.Refresh;

     datos.ZqParticion.ApplyUpdates;
     datos.Data.Commit;
     datos.ZqParticion.Close;


       cant2.Enabled := false;
       precio1.Enabled := false;
       precio2.Enabled := false;
       cxButton2.Enabled := false;
       Btguardar.Enabled := true;

       CxTextEdit3.Clear;
       cxTextEdit2.Clear;
       cant.Clear;
       cant2.Clear;
       precio1.Clear;
       precio2.Clear;




    //  btguardar.Enabled := false;
    //  btcancelar.Enabled := false;
   //   opmaster.Enabled := false;
 //     cxGroupBox2.Enabled := false;
     // edit1.Clear;
      close;
end;

procedure TFrmPartionamiento.BtnCanelarClick(Sender: TObject);
begin
datos.ZqParticion.Cancel;
datos.ZqParticion.CancelUpdates;

datos.Data.Rollback;

datos.ZqParticion.Close;


cant2.Enabled := false;
       precio1.Enabled := false;
       precio2.Enabled := false;
       cxButton2.Enabled := false;
       Btguardar.Enabled := true;

       CxTextEdit3.Clear;
       cxTextEdit2.Clear;
       cant.Clear;
       cant2.Clear;
       precio1.Clear;
       precio2.Clear;



 btguardar.Enabled := true;
 btcancelar.Enabled := true;
 //cxGroupBox2.Enabled := false;

 close;
end;

procedure TFrmPartionamiento.btnGuardarClick(Sender: TObject);
begin
datos.ZqParticion.Refresh;

     datos.ZqParticion.ApplyUpdates;
     datos.Data.Commit;
     datos.ZqParticion.Close;


       cant2.Enabled := false;
       precio1.Enabled := false;
       precio2.Enabled := false;
       cxButton2.Enabled := false;
       Btguardar.Enabled := true;

       CxTextEdit3.Clear;
       cxTextEdit2.Clear;
       cant.Clear;
       cant2.Clear;
       precio1.Clear;
       precio2.Clear;




    //  btguardar.Enabled := false;
    //  btcancelar.Enabled := false;
   //   opmaster.Enabled := false;
 //     cxGroupBox2.Enabled := false;
     // edit1.Clear;
      close;
end;

procedure TFrmPartionamiento.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmPartionamiento.cant2Enter(Sender: TObject);
begin
cant2.Color := clwindow;
end;

procedure TFrmPartionamiento.cantEnter(Sender: TObject);
begin
cant.color := clWindow;
end;

procedure TFrmPartionamiento.cxButton11Click(Sender: TObject);
begin
Qunidad.Close;
qunidad.OPEN;

cxGrid1.Visible := true;
end;

procedure TFrmPartionamiento.cxButton4Click(Sender: TObject);
begin

cxGroupBox2.Enabled := true;
//opbuscar.Visible := true;
ibqrarticulos.Open;
//cxTextEdit1.SetFocus;
end;

procedure TFrmPartionamiento.cxGrid2DBTableView1DblClick(Sender: TObject);
begin

cxTextEdit2.text := IntTOStr(IbqRarticuloscod_art.Value);
//cxTextEdit3.text := IbqRarticulosArticulo.Value;

//cxCurrencyEdit1.Value   := IbqRarticulosPrecio_A.Value;
//cxCurrencyEdit2.Value   := IbqRarticuloscosto.Value;
//cxCurrencyEdit3.Value   := 0.00;
//CANT.Text := '1';
 datos.Zunidad.Open;
cxButton2.Enabled := true;
//opbuscar.Visible := false;
end;

procedure TFrmPartionamiento.cxGrid3DBTableView1DblClick(Sender: TObject);
begin


     cxTextEdit3.Text := IntTOsTr(datos.ZqParticionID_UNIDAD.Value);
     cxDBSpinEdit1.Value := datos.ZqParticionCOD_ARTI.Value;
     cant.Value          := datos.ZqParticionCANTI.Value;
     cant2.Value         := datos.ZqParticionCOD_PART.Value;
     precio1.Value       := datos.ZqParticionPRECIO1.Value;
     precio2.Value       := datos.ZqParticionPRECIO2.Value;
     cxTextEdit2.Text    := datos.ZqParticionUNIDAD.Value;


       datos.ZqParticion.Delete;


       cant.Enabled := true;
       cant2.Enabled := true;
       precio1.Enabled := true;
       precio2.Enabled := true;
       cxButton2.Enabled := true;
       Btguardar.Enabled := false;

end;

procedure TFrmPartionamiento.cxGridDBTableView1DblClick(Sender: TObject);
begin

CxTextEdit3.Text := iNTtOSTR(qunidadCOD_UNIDAD_M.Value);
cxTextEdit2.Text := qunidadunidad.Value;
cxGrid1.Visible := FALSE;
cant.Enabled := true;
cant2.Enabled := true;
precio1.Enabled := true;
precio2.Enabled := true;
cxButton2.Enabled := true;
cant.Value := qunidadVALOR.Value;
cant2.Value := qunidadPOS.Value;

precio1.Value :=  ( qunidadVALOR.Value * precio12.Value);
precio2.Value :=  ( qunidadVALOR.Value * precio12.Value) - (( qunidadVALOR.Value * precio12.Value) * 0.05);

end;

procedure TFrmPartionamiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmPartionamiento := nil;
Action := caFree;
end;

procedure TFrmPartionamiento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = vk_escape then
  begin
    cxGrid1.Visible := false;
    datos.Zunidad.Close;

  end;
end;

procedure TFrmPartionamiento.FormShow(Sender: TObject);
begin
datos.ZqParticion.Open;
end;

procedure TFrmPartionamiento.precio1Enter(Sender: TObject);
begin
precio1.Color := clwindow;
end;

procedure TFrmPartionamiento.precio2Enter(Sender: TObject);
begin
precio2.Color := clwindow;
end;

procedure TFrmPartionamiento.SpeedButton2Click(Sender: TObject);
begin

if (cant.Value = 0.00) and (cant2.Value = 0.00) and (precio1.Value = 0.00) and (precio2.Value = 0.00)then
  begin
     cant.Color := clcream;
     cant2.Color := clcream;
     precio1.Color := clcream;
     precio2.Color := clcream;
     Showmessage(' ** Debes introducir valor en los campos señalados**');
  end;

if (cant.Value > 0.00) and (cant2.Value = 0.00) and (precio1.Value = 0.00) and (precio2.Value = 0.00)then
  begin
     cant2.Color := clcream;
     precio1.Color := clcream;
     precio2.Color := clcream;
     Showmessage(' ** Debes introducir valor en los campos señalados**');
  end;

if (cant.Value > 0.00) and (cant2.Value > 0.00) and (precio1.Value = 0.00) and (precio2.Value = 0.00)then
  begin
     precio1.Color := clcream;
     precio2.Color := clcream;
     Showmessage(' ** Debes introducir valor en los campos señalados**');
  end;

if (cant.Value > 0.00) and (cant2.Value > 0.00) and (precio1.Value > 0.00) and (precio2.Value = 0.00)then
  begin
     precio2.Color := clcream;
     Showmessage(' ** Debes introducir valor en los campos señalados**');
  end;

  if (cant.Value > 0.00) and (cant2.Value > 0.00) and (precio1.Value > 0.00) and (precio2.Value > 0.00)then
  begin
      with numerocombo do
              begin
                 close;
                 sql.Clear;
                 sql.Add('select gen_id(GEN_PARTICIONADO_ID, 1) from RDB$DATABASE');
                 open;
              end;

       datos.ZqParticion.Open;
       datos.ZqParticion.Insert;
       datos.ZqParticionid.Value := numerocombogen_id.Value;

       datos.ZqParticionID_UNIDAD.Value := StrToInt(cxTextEdit3.Text);
       datos.ZqParticionCOD_ARTI.Value := cxDBSpinEdit1.Value;
       datos.ZqParticionCANTI.Value    := cant.Value;
       datos.ZqParticionCOD_PART.Value := cant2.Value;
       datos.ZqParticionPRECIO1.Value := precio1.Value;
       datos.ZqParticionPRECIO2.Value := precio2.Value;
       datos.ZqParticionUNIDAD.Value  := cxTextEdit2.Text;

       datos.ZqParticion.Post;
       datos.ZqParticion.Refresh;

       cant.Enabled := false;
       cant2.Enabled := false;
       precio1.Enabled := false;
       precio2.Enabled := false;
       cxButton2.Enabled := false;
       Btguardar.Enabled := true;

       CxTextEdit3.Clear;
       cxTextEdit2.Clear;
       cant.Clear;
       cant2.Clear;
       precio1.Clear;
       precio2.Clear;


  end;



     {







//datos.ZqParticionCOD_part.Value := datos.MantArtCOD_ART.Value;
//datos.ZqParticionCOD_ARTI.Value := StrToInt(cxTextEdit2.Text);
//datos.ZqParticionCANTI.Value := StrToint(cant.Text);
//datos.ZqParticionUNIDAD.Value := cxDBLookupComboBox3.Text;
//datos.ZqParticionARTICULO.Value := cxTextEdit3.Text;

//
// cxTextEdit2.Clear;
 //cxTextEdit3.Clear;
 //cxDBLookupComboBox3.ItemIndex := -1;
// cxCurrencyEdit3.Clear;
 //CANT.Clear;
 Btguardar.Enabled := true;
 BtCancelar.Enabled := true;

 opbuscar.Visible := false;
     }
end;

end.
