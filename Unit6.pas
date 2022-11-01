unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, StdCtrls, Mask, DBCtrls, ZAbstractDataset,
  Menus, cxButtons, ExtCtrls, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmFab = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QRFab: TZReadOnlyQuery;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    DsQRFab: TDataSource;
    DsQFabricantes: TDataSource;
    nuevo: TcxButton;
    guardar: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    numero: TZReadOnlyQuery;
    numeroMAX: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure nuevoClick(Sender: TObject);
    function TraeNumeroOrden(codigo:Integer):Integer;
    procedure guardarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFab: TFrmFab;

implementation

uses Unit2,tools, UNIT19;

{$R *.dfm}

 function TFrmFab.TraeNumeroOrden(codigo:Integer):Integer;
begin

with numero do
   begin
     close;
     open;
   end;

   if numero.Fields[0].IsNull then
      Result := 1
   else
      Result := numero.Fields[0].Value + 1;
  end;

procedure TFrmFab.nuevoClick(Sender: TObject);
begin

panel1.Enabled := true;
datos.FbqFabricantes.Open;
datos.FbqFabricantes.Insert;
datos.FbqFabricantesCOD_prov.Value := TraeNumeroOrden(datos.FbqFabricantesCOD_prov.Value);
//datos.FbqFabricantesCOD_FAB.Value := '000'+IntTOStr(datos.FbqFabricantesCOD_prov.Value);
dbedit2.SetFocus;
nuevo.Enabled := false;
guardar.Enabled := true;
end;

procedure TFrmFab.guardarClick(Sender: TObject);
begin

      if dbedit2.Text =''then
        begin
            MsgError('Cliente no puede ser guardado'#13+
      	               'Favor introducir el nombre del cliente');
            dbedit2.SetFocus;
        end else begin

          datos.FbqFabricantes.ApplyUpdates;
          qrfab.Refresh;
          // Commit and update button states
          nuevo.Enabled := true;

         datos.Data.Commit;
         guardar.Enabled := false;
///          SetCommitRollback (False);
            // refresh query resultset
        /// datos.FbtClientes.Refresh;
   // update AutoCommit button state
      ///  g_cambios.Down := datos.Data.AutoCommit;
     end;
end;

procedure TFrmFab.cxButton3Click(Sender: TObject);
begin
datos.FbqFabricantes.CancelUpdates;
datos.Data.Rollback;
nuevo.Enabled := true;
guardar.Enabled := false;
panel1.Enabled := false;
end;

procedure TFrmFab.cxButton4Click(Sender: TObject);
begin

if application.MessageBox ('Realmente deseas eliminar a este registro?','Precausion',Mb_YesNo+MB_IconStop) = Id_yes then
         begin
             datos.FbqFabricantes.Delete;
             datos.FbqFabricantes.ApplyUpdates;
              datos.Data.Commit;
             QRFab.Refresh;

         end;

end;

procedure TFrmFab.FormCreate(Sender: TObject);
begin

qrfab.Open;
end;

end.
