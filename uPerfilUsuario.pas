unit uPerfilUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  ZAbstractRODataset, ZDataset;

type
  TfPerfirUsuario = class(TForm)
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    DsPerfil: TDataSource;
    cxPageControl1: TcxPageControl;
    pG1: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1NOMBRE_PANTALLAS: TcxGridDBColumn;
    cxGrid3DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    pg3: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pg4: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    pg2: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet1: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid9: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Panel3: TPanel;
    Panel7: TPanel;
    Edit1: TEdit;
    Panel8: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    edtNombrePerfil: TEdit;
    edtCod: TEdit;
    Panel25: TPanel;
    BtGuardar: TSpeedButton;
    QconsultaPerfil: TZReadOnlyQuery;
    QconsultaPerfilID: TIntegerField;
    QconsultaPerfilNOMBRE_PANTALLAS: TWideStringField;
    QconsultaPerfilNOMBRE_FORM: TWideStringField;
    QconsultaPerfilSECCION: TWideStringField;
    QconsultaPerfilBOTON: TWideStringField;
    QconsultaPerfilESTADO: TWideStringField;
    QconsultaPerfilIDNIVEL: TIntegerField;
    QconsultaPerfilIDMODULO: TIntegerField;
    NumeroPerfil: TZReadOnlyQuery;
    NumeroPerfilGEN_ID: TLargeintField;
    Panel9: TPanel;
    SpeedButton2: TSpeedButton;
    Panel10: TPanel;
    SpeedButton3: TSpeedButton;
    procedure btnsalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControl1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPerfirUsuario: TfPerfirUsuario;

implementation

uses
  Unit2, uGetSesion;

{$R *.dfm}

procedure TfPerfirUsuario.BtGuardarClick(Sender: TObject);
begin






   with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where a.idnivel =:nivel');
          sql.Add('and a.idmodulo =:mod');
          Params[0].Value := StrToInt(edtCod.Text);
          Params[1].Value := datos.QModulosID.Value;
          open;
        end;

        if datos.Qperfil.RecordCount = 0 then
          begin


                with datos.QModulos do
                  begin
                     datos.QModulos.open;
                     datos.Qperfil.Open;
                    first;
                  while not eof do begin



                                with numeroPerfil do
                                  begin
                                    close;
                                    sql.Clear;
                                    sql.Add('select gen_id(GEN_TB_PERFIL_ID, 1) from RDB$DATABASE');
                                    open;
                                  end;

                               // ShowMessage(''+IntTostr(NumeroPerfilGEN_ID.Value));
                                datos.Qperfil.insert;
                                datos.QperfilID.Value               := NumeroPerfilGEN_ID.Value;
                                datos.QperfilNOMBRE_PANTALLAS.Value := datos.QModulosNOMBRE_PANTALLAS.Value;
                                datos.QperfilNOMBRE_FORM.Value      := datos.QModulosNOMBRE_FORM.Value;
                                datos.QperfilIDMODULO.Value         := datos.QModulosID.Value;
                                datos.QperfilIDNIVEL.Value          := StrToInt(edtCod.Text);
                                datos.QperfilESTADO.Value           := 'False';
                                datos.qperfil.ApplyUpdates;


                        next;
                       end;


                  end;
          end;


end;

procedure TfPerfirUsuario.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TfPerfirUsuario.cxPageControl1Change(Sender: TObject);
begin
 if cxPageControl1.ActivePageIndex = 0 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          sql.Add('and a.idnivel =:id');

          Params[0].Value := 'Operacion';
          Params[1].Value := strToInt(edtCod.Text);

          open;
        end;
   end;


   if cxPageControl1.ActivePageIndex = 1 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
           sql.Add('and a.idnivel =:id');

          Params[0].Value := 'Inventario';
          Params[1].Value := strToInt(edtCod.Text);
          open;
        end;
   end;

    if cxPageControl1.ActivePageIndex = 2 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          sql.Add('and a.idnivel =:id');

          Params[0].Value := 'Contabilidad';
          Params[1].Value := strToInt(edtCod.Text);
          open;
        end;
   end;

      if cxPageControl1.ActivePageIndex = 3 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
           sql.Add('and a.idnivel =:id');
          Params[0].Value := 'Facturacion';
          Params[1].Value := strToInt(edtCod.Text);
          open;
        end;
   end;

     if cxPageControl1.ActivePageIndex = 4 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          sql.Add('and a.idnivel =:id');
          Params[0].Value := 'Reportes';
          Params[1].Value := strToInt(edtCod.Text);
          open;
        end;
   end;

    if cxPageControl1.ActivePageIndex = 5 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          sql.Add('and a.idnivel =:id');
          Params[0].Value := 'Utilidad';
          Params[1].Value := strToInt(edtCod.Text);
          open;
        end;
   end;

   if cxPageControl1.ActivePageIndex = 6 then
   begin
       with datos.Qperfil do
        begin
          close;
          sql.Clear;
          sql.Add('select a.*, b.seccion from TB_PERFIL a');
          sql.Add('left join tb_modulos b On a.idmodulo = b.id');
          sql.Add('where b.seccion =:usuarioID');
          sql.Add('and a.idnivel =:id');
          Params[0].Value := 'Mantenimiento';
          Params[1].Value := strToInt(edtCod.Text);
          open;
        end;
   end;
end;

procedure TfPerfirUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := Action;
fPerfirUsuario := nil;
end;

procedure TfPerfirUsuario.FormShow(Sender: TObject);
begin
datos.Qperfil.Close;
datos.QModulos.close;
end;

procedure TfPerfirUsuario.SpeedButton1Click(Sender: TObject);
begin
if FGetSession = nil then
  begin
    FGetSession := TFGetSession.Create(self);
    FGetSession.edit1.text := 'PERFIL';
    FGetSession.ShowModal;
  end;
end;

procedure TfPerfirUsuario.SpeedButton2Click(Sender: TObject);
begin
datos.Qperfil.ApplyUpdates;
datos.Data.Commit;

end;

procedure TfPerfirUsuario.SpeedButton3Click(Sender: TObject);
begin
datos.Data.Rollback;
close;
end;

end.
