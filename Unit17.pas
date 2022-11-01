unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, ExtCtrls, cxPC, dxDockControl,
  dxDockPanel, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset,
  Menus, StdCtrls, cxButtons, Mask, DBCtrls, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxPCdxBarPopupMenu, cxNavigator, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu;
type
  TFrm_Control_Fact = class(TForm)
    dxDockPanel1: TdxDockPanel;
    dxFloatDockSite1: TdxFloatDockSite;
    cxPageControl1: TcxPageControl;
    p1: TcxTabSheet;
    p2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    p4: TcxTabSheet;
    Master_cobro: TZReadOnlyQuery;
    Master_cobroNO_FACT: TIntegerField;
    Master_cobroFECHA_FAC: TDateField;
    Master_cobroTIPO: TWideStringField;
    Master_cobroCOD_CLIENT: TWideStringField;
    Master_cobroCOD_EMP: TWideStringField;
    Master_cobroNO_FACT1: TWideStringField;
    Master_cobroMONTO: TFloatField;
    Master_cobroHORA: TTimeField;
    Master_cobroPOGXITBS: TFloatField;
    Master_cobroTIPOPAGO: TWideStringField;
    Master_cobroMONTOPAGO: TFloatField;
    Master_cobroCONDICION: TWideStringField;
    Master_cobroRENTA: TWideStringField;
    Master_cobroCODIGO: TIntegerField;
    Master_cobroTIPOITBS: TWideStringField;
    Master_cobroVENDEDOR: TWideStringField;
    Master_cobroSITUACION: TWideStringField;
    Master_cobroCAJERO: TWideStringField;
    Master_cobroNCF: TWideStringField;
    Master_cobroRNC_CLIENTE: TWideStringField;
    Master_cobroNCF1: TFloatField;
    Master_cobroNOM_CLIENTE: TWideStringField;
    Master_cobroDESCUENTO: TFloatField;
    Master_cobroROTULO: TWideStringField;
    Master_cobroNO_AUTORIZA_NCF: TFloatField;
    Master_cobroMONTOFINANCIADO: TFloatField;
    Master_cobroCUOTAS: TIntegerField;
    Master_cobroINTERES: TFloatField;
    Master_cobroDIRECCION: TWideStringField;
    Master_cobroPAGADO: TFloatField;
    Master_cobroLEYPROPINA: TFloatField;
    Master_cobroCOMPROBANTE: TWideStringField;
    Master_cobroTERMINAL: TWideStringField;
    Master_cobroEFECTIVO: TFloatField;
    Master_cobroDEVOLUCION1: TFloatField;
    Master_cobroRESTANTE: TFloatField;
    Master_cobroABONO: TFloatField;
    Master_cobroCHEK: TWideStringField;
    Master_cobroNO_RECIBO: TIntegerField;
    Master_cobroPAGADOCXC: TFloatField;
    Master_cobroMESES: TIntegerField;
    Master_cobroDIAS: TIntegerField;
    Master_cobroPENDIENTE: TFloatField;
    Master_cobroESTADOPAGO: TWideStringField;
    Master_cobroDEVOLUCION: TFloatField;
    Master_cobroCONDICION_PAGO: TIntegerField;
    Master_cobroFECHAVENCIMIENTO: TWideStringField;
    dsMaster_cobro: TDataSource;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet1: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    cxGrid4DBTableView1Column3: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    Master_Hold: TZReadOnlyQuery;
    Master_HoldNO_FACT: TIntegerField;
    Master_HoldFECHA_FAC: TDateField;
    Master_HoldTIPO: TWideStringField;
    Master_HoldCOD_CLIENT: TWideStringField;
    Master_HoldCOD_EMP: TWideStringField;
    Master_HoldNO_FACT1: TWideStringField;
    Master_HoldMONTO: TFloatField;
    Master_HoldHORA: TTimeField;
    Master_HoldPOGXITBS: TFloatField;
    Master_HoldTIPOPAGO: TWideStringField;
    Master_HoldMONTOPAGO: TFloatField;
    Master_HoldCONDICION: TWideStringField;
    Master_HoldRENTA: TWideStringField;
    Master_HoldCODIGO: TIntegerField;
    Master_HoldTIPOITBS: TWideStringField;
    Master_HoldVENDEDOR: TWideStringField;
    Master_HoldSITUACION: TWideStringField;
    Master_HoldCAJERO: TWideStringField;
    Master_HoldNCF: TWideStringField;
    Master_HoldRNC_CLIENTE: TWideStringField;
    Master_HoldNCF1: TFloatField;
    Master_HoldNOM_CLIENTE: TWideStringField;
    Master_HoldDESCUENTO: TFloatField;
    Master_HoldROTULO: TWideStringField;
    Master_HoldNO_AUTORIZA_NCF: TFloatField;
    Master_HoldMONTOFINANCIADO: TFloatField;
    Master_HoldCUOTAS: TIntegerField;
    Master_HoldINTERES: TFloatField;
    Master_HoldDIRECCION: TWideStringField;
    Master_HoldPAGADO: TFloatField;
    Master_HoldLEYPROPINA: TFloatField;
    Master_HoldCOMPROBANTE: TWideStringField;
    Master_HoldTERMINAL: TWideStringField;
    Master_HoldEFECTIVO: TFloatField;
    Master_HoldDEVOLUCION1: TFloatField;
    Master_HoldRESTANTE: TFloatField;
    Master_HoldABONO: TFloatField;
    Master_HoldCHEK: TWideStringField;
    Master_HoldNO_RECIBO: TIntegerField;
    Master_HoldPAGADOCXC: TFloatField;
    Master_HoldMESES: TIntegerField;
    Master_HoldDIAS: TIntegerField;
    Master_HoldPENDIENTE: TFloatField;
    Master_HoldESTADOPAGO: TWideStringField;
    Master_HoldDEVOLUCION: TFloatField;
    Master_HoldCONDICION_PAGO: TIntegerField;
    Master_HoldFECHAVENCIMIENTO: TWideStringField;
    DsMaster_Hold: TDataSource;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    panel: TcxTabControl;
    Label7: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    op1: TRadioGroup;
    Edit1: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    FbRArticulos: TZReadOnlyQuery;
    FbRArticulosCODIGO: TWideStringField;
    FbRArticulosARTICULO: TWideStringField;
    FbRArticulosMODELO: TWideStringField;
    FbRArticulosMARCA: TWideStringField;
    FbRArticulosCOLOR: TWideStringField;
    FbRArticulosCATEGORIA: TWideStringField;
    FbRArticulosCANT_MINI: TFloatField;
    FbRArticulosSERIE: TWideStringField;
    FbRArticulosALMACEN: TWideStringField;
    FbRArticulosPRECIO1: TFloatField;
    FbRArticulosPRECIO2: TFloatField;
    FbRArticulosCOSTO: TFloatField;
    FbRArticulosPROVEEDOR1: TWideStringField;
    FbRArticulosPROVEEDOR2: TWideStringField;
    FbRArticulosIMPUESTO: TFloatField;
    FbRArticulosEXISTENCIA: TFloatField;
    FbRArticulosITBIS: TWideStringField;
    FbRArticulosABREVIADO1: TWideStringField;
    FbRArticulosUNIDAD_VENTA: TWideStringField;
    FbRArticulosCODIGO1: TWideStringField;
    FbRArticulosMODIFUSUARIO: TWideStringField;
    FbRArticulosFECHAMODI: TDateField;
    FbRArticulosEXISTENCIA1: TFloatField;
    FbRArticulosABREVIADO: TWideStringField;
    FbRArticulosPOLITICA: TWideStringField;
    FbRArticulosCODIGOXTR: TIntegerField;
    FbRArticulosTIPOCOD: TWideStringField;
    FbRArticulosCONDICION: TWideStringField;
    FbRArticulosESTADO: TWideStringField;
    FbRArticulosCANTIDAD_MAXIMA: TFloatField;
    FbRArticulosCOD1: TIntegerField;
    FbRArticulosIMAGEN: TBlobField;
    FbRArticulosTIPO: TWideStringField;
    FbRArticulosBENEF: TFloatField;
    FbRArticulosBENEF_PORC: TWideStringField;
    FbRArticulosPRECIOABIERTO: TWideStringField;
    FbRArticulosCOD_ART1: TIntegerField;
    FbRArticulosCOCINA: TWideStringField;
    FbRArticulosCLA_COSTO: TWideStringField;
    FbRArticulosCLA_PRECIO: TWideStringField;
    DsARticulos: TDataSource;
    FbRetorno: TZReadOnlyQuery;
    FbRetornoNO_FACT: TIntegerField;
    FbRetornoFECHA_FAC: TDateField;
    FbRetornoTIPO: TWideStringField;
    FbRetornoCOD_CLIENT: TWideStringField;
    FbRetornoCOD_EMP: TWideStringField;
    FbRetornoNO_FACT1: TWideStringField;
    FbRetornoMONTO: TFloatField;
    FbRetornoHORA: TTimeField;
    FbRetornoPOGXITBS: TFloatField;
    FbRetornoTIPOPAGO: TWideStringField;
    FbRetornoMONTOPAGO: TFloatField;
    FbRetornoCONDICION: TWideStringField;
    FbRetornoRENTA: TWideStringField;
    FbRetornoCODIGO: TIntegerField;
    FbRetornoTIPOITBS: TWideStringField;
    FbRetornoVENDEDOR: TWideStringField;
    FbRetornoSITUACION: TWideStringField;
    FbRetornoCAJERO: TWideStringField;
    FbRetornoNCF: TWideStringField;
    FbRetornoRNC_CLIENTE: TWideStringField;
    FbRetornoNCF1: TFloatField;
    FbRetornoNOM_CLIENTE: TWideStringField;
    FbRetornoDESCUENTO: TFloatField;
    FbRetornoROTULO: TWideStringField;
    FbRetornoNO_AUTORIZA_NCF: TFloatField;
    FbRetornoMONTOFINANCIADO: TFloatField;
    FbRetornoCUOTAS: TIntegerField;
    FbRetornoINTERES: TFloatField;
    FbRetornoDIRECCION: TWideStringField;
    FbRetornoPAGADO: TFloatField;
    FbRetornoLEYPROPINA: TFloatField;
    FbRetornoCOMPROBANTE: TWideStringField;
    FbRetornoTERMINAL: TWideStringField;
    FbRetornoEFECTIVO: TFloatField;
    FbRetornoDEVOLUCION1: TFloatField;
    FbRetornoRESTANTE: TFloatField;
    FbRetornoABONO: TFloatField;
    FbRetornoCHEK: TWideStringField;
    FbRetornoNO_RECIBO: TIntegerField;
    FbRetornoPAGADOCXC: TFloatField;
    FbRetornoMESES: TIntegerField;
    FbRetornoDIAS: TIntegerField;
    FbRetornoPENDIENTE: TFloatField;
    FbRetornoESTADOPAGO: TWideStringField;
    FbRetornoDEVOLUCION: TFloatField;
    FbRetornoCONDICION_PAGO: TIntegerField;
    FbRetornoFECHAVENCIMIENTO: TWideStringField;
    FbRetornoCOMBO: TWideStringField;
    FbRetornoCOBRADO: TIntegerField;
    FbRetornoQUEES: TWideStringField;
    dSRETORNO: TDataSource;
    ZCotizacion: TZReadOnlyQuery;
    ZsCotizacion: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Label4: TLabel;
    Edit2: TEdit;
    OP22: TRadioGroup;
    ZCotizacionNO_FACT: TIntegerField;
    ZCotizacionFECHA_FAC: TDateField;
    ZCotizacionTIPO: TWideStringField;
    ZCotizacionCOD_CLIENT: TWideStringField;
    ZCotizacionCOD_EMP: TWideStringField;
    ZCotizacionNO_FACT1: TWideStringField;
    ZCotizacionMONTO: TFloatField;
    ZCotizacionHORA: TTimeField;
    ZCotizacionPOGXITBS: TFloatField;
    ZCotizacionTIPOPAGO: TWideStringField;
    ZCotizacionMONTOPAGO: TFloatField;
    ZCotizacionCONDICION: TWideStringField;
    ZCotizacionRENTA: TWideStringField;
    ZCotizacionCODIGO: TIntegerField;
    ZCotizacionTIPOITBS: TWideStringField;
    ZCotizacionVENDEDOR: TWideStringField;
    ZCotizacionSITUACION: TWideStringField;
    ZCotizacionCAJERO: TWideStringField;
    ZCotizacionNCF: TWideStringField;
    ZCotizacionRNC_CLIENTE: TWideStringField;
    ZCotizacionNCF1: TFloatField;
    ZCotizacionNOM_CLIENTE: TWideStringField;
    ZCotizacionDESCUENTO: TFloatField;
    ZCotizacionROTULO: TWideStringField;
    ZCotizacionNO_AUTORIZA_NCF: TFloatField;
    ZCotizacionMONTOFINANCIADO: TFloatField;
    ZCotizacionCUOTAS: TIntegerField;
    ZCotizacionINTERES: TFloatField;
    ZCotizacionDIRECCION: TWideStringField;
    ZCotizacionPAGADO: TFloatField;
    ZCotizacionLEYPROPINA: TFloatField;
    ZCotizacionCOMPROBANTE: TWideStringField;
    ZCotizacionTERMINAL: TWideStringField;
    ZCotizacionEFECTIVO: TFloatField;
    ZCotizacionDEVOLUCION1: TFloatField;
    ZCotizacionRESTANTE: TFloatField;
    ZCotizacionABONO: TFloatField;
    ZCotizacionCHEK: TWideStringField;
    ZCotizacionNO_RECIBO: TIntegerField;
    ZCotizacionPAGADOCXC: TFloatField;
    ZCotizacionMESES: TIntegerField;
    ZCotizacionDIAS: TIntegerField;
    ZCotizacionPENDIENTE: TFloatField;
    ZCotizacionESTADOPAGO: TWideStringField;
    ZCotizacionDEVOLUCION: TFloatField;
    ZCotizacionCONDICION_PAGO: TIntegerField;
    ZCotizacionFECHAVENCIMIENTO: TWideStringField;
    ZCotizacionCOMBO: TWideStringField;
    ZCotizacionCOBRADO: TIntegerField;
    ZCotizacionQUEES: TWideStringField;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid4DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure OP22Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Control_Fact: TFrm_Control_Fact;

implementation

uses Unit8, Unit2;

{$R *.dfm}

procedure TFrm_Control_Fact.cxButton1Click(Sender: TObject);
begin
Frmfacturacion.zvendedor.Open;



Frmfacturacion.panel3.Visible   := true;
Frmfacturacion.nuevo.Enabled    := false;
Frmfacturacion.cerrar.Enabled   := true;

Frmfacturacion.Edit8.Text := 'FACT';
Frmfacturacion.showmodal;
end;

procedure TFrm_Control_Fact.cxGrid4DBTableView1DblClick(Sender: TObject);
var
suma : currency;
begin

with datos.FbqMaster_Fact do
  begin
     close;
     sql.Clear;
     sql.Add('select * from master_fact');
     sql.Add('where no_fact1 =:op1');
     params[0].Value := master_holdno_fact1.Value;
     open;
  end;

 // datos.zdetalle1.Open;


 { datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
 while not datos.zdetalle1.Eof do
         begin
         if datos.zdetalle1cod_art.Value <> '' then
         begin
         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

         end;
         datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
         datos.zdetalle1.Next;

         Frmfacturacion.Currency1.Value := suma;
         Frmfacturacion.Currency2.Value := 0.00;
         Frmfacturacion.Currency3.Value := 0.00;
         Frmfacturacion.Currency4.Value := ((suma - Frmfacturacion.currency2.Value) + Frmfacturacion.currency3.Value);
      end;

   Frmfacturacion.nuevo.Enabled      := false;
  Frmfacturacion.cerrar.Enabled     := true;
  Frmfacturacion.descuento.Enabled  := true;

   Frmfacturacion.panel.Enabled := true;
   Frmfacturacion.fbrArticulos.Open;
Frmfacturacion.label8.Caption :='Abierta';
Frmfacturacion.zvendedor.Open;


  Frmfacturacion.cxPageControl1.ActivePageIndex :=0;
    Frmfacturacion.cxPageControl1.Pages[0].Enabled :=true;
Frmfacturacion.Edit8.Text := 'HOLD';
Frmfacturacion.showmodal;
  }
end;

procedure TFrm_Control_Fact.cxGridDBTableView1DblClick(Sender: TObject);
var
suma : currency;
begin

with datos.FbqMaster_Fact do
  begin
     close;
     sql.Clear;
     sql.Add('select * from master_fact');
     sql.Add('where no_fact1 =:op1');
     params[0].Value := fbretornono_fact1.Value;
     open;
  end;
 { datos.zdetalle1.Open;

  Frmfacturacion.cxPageControl1.Pages[0].Enabled := true;
  Frmfacturacion.cxPageControl1.ActivePageIndex := 0;
  Frmfacturacion.cxPageControl1.Pages[1].Enabled := false;
  Frmfacturacion.cxPageControl1.Pages[2].Enabled := false;

  datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
 while not datos.zdetalle1.Eof do
         begin
         if datos.zdetalle1cod_art.Value <> '' then
         begin
         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

         end;
         datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
         datos.zdetalle1.Next;

         Frmfacturacion.Currency1.Value := suma;
         Frmfacturacion.Currency2.Value := 0.00;
         Frmfacturacion.Currency3.Value := 0.00;
         Frmfacturacion.Currency4.Value := ((suma - Frmfacturacion.currency2.Value) + Frmfacturacion.currency3.Value);
      end;


  Frmfacturacion.nuevo.Enabled := false;
  Frmfacturacion.cerrar.Enabled := true;
  Frmfacturacion.descuento.Enabled := true;

  Frmfacturacion.fbrArticulos.Open;
Frmfacturacion.label8.Caption :='Abierta';
Frmfacturacion.zvendedor.Open;


Frmfacturacion.panel.Enabled := true;
//cxGrid2.SetFocus;
//Frmfacturacion.edit1.SetFocus;
  Frmfacturacion.Edit8.Text := 'DEV';
Frmfacturacion.showmodal;

  }
end;

procedure TFrm_Control_Fact.cxGridDBTableView3DblClick(Sender: TObject);
var
suma : currency;
begin

with datos.FbqMaster_Fact do
  begin
     close;
     sql.Clear;
     sql.Add('select * from master_fact');
     sql.Add('where no_fact1 =:op1');
     params[0].Value := zcotizacionno_fact1.Value;
     open;
  end;

{  datos.zdetalle1.Open;


  datos.zdetalle1.First;
       //  SHOWMESSAGE('NO EXPRESS');
 while not datos.zdetalle1.Eof do
         begin
         if datos.zdetalle1cod_art.Value <> '' then
         begin
         suma := (suma + datos.zdetalle1.FieldByname('total').Value); //* data.ibtdetallefactCANTIDAD.AsInteger;

         end;
         datos.zdetalle1.Edit;
         datos.zdetalle1TOTAL.Value := datos.zdetalle1TOTAL.Value;
         datos.zdetalle1.Next;

         Frmfacturacion.Currency1.Value := suma;
         Frmfacturacion.Currency2.Value := 0.00;
         Frmfacturacion.Currency3.Value := 0.00;
         Frmfacturacion.Currency4.Value := ((suma - Frmfacturacion.currency2.Value) + Frmfacturacion.currency3.Value);
      end;

   Frmfacturacion.nuevo.Enabled      := false;
  Frmfacturacion.cerrar.Enabled     := true;
  Frmfacturacion.descuento.Enabled  := true;

   Frmfacturacion.panel.Enabled := true;
   Frmfacturacion.fbrArticulos.Open;
Frmfacturacion.label8.Caption :='Abierta';
Frmfacturacion.zvendedor.Open;


  Frmfacturacion.cxPageControl1.ActivePageIndex :=0;

Frmfacturacion.Edit8.Text := 'HOLD';
Frmfacturacion.showmodal;
  }
end;

procedure TFrm_Control_Fact.cxPageControl1Change(Sender: TObject);
begin
      if cxPageControl1.ActivePageIndex = 1 then
     begin

        master_hold.Open;
        master_hold.Refresh;
     end;

       if cxPageControl1.ActivePageIndex = 2 then
     begin
        FBRETORNO.Open;
        FBRETORNO.Refresh;

     end;

       if cxPageControl1.ActivePageIndex = 3 then
     begin

       fbrarticulos.Open;
    edit1.SetFocus;
     end;

       if cxPageControl1.ActivePageIndex = 4 then
     begin

       zCotizacion.Open;
       zCotizacion.refresh;
      end;

end;

procedure TFrm_Control_Fact.Edit1Change(Sender: TObject);
begin
if op1.ItemIndex = 0 then
begin
with FbrArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtarticulo');
    sql.Add('where articulo like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;

if op1.ItemIndex = 1 then
begin
with FbrArticulos do
  begin
    close;
    sql.Clear;
    sql.Add('select * from mtarticulo');
    sql.Add('where marca like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;
end;

procedure TFrm_Control_Fact.Edit2Change(Sender: TObject);
begin
if op22.ItemIndex = 0 then
begin
with zcotizacion do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where no_fact1 like '+#39+'%'+edit2.Text+'%'+#39);
    sql.Add('and situacion =:op');
    sql.Add('and terminal =:op1');
    params[0].Value := 'ENVIADA';
    params[1].Value := 'COTIZACION';

    open;
  end;
end;

if op22.ItemIndex = 1 then
begin
with zcotizacion do
  begin
    close;
    sql.Clear;
    sql.Add('select * from master_fact');
    sql.Add('where nom_cliente like '+#39+'%'+edit2.Text+'%'+#39);
    sql.Add('and situacion =:op');
    sql.Add('and terminal =:op1');
    params[0].Value := 'ENVIADA';
    params[1].Value := 'COTIZACION';
      open;
  end;
end;
end;

procedure TFrm_Control_Fact.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = vk_f5 then
        begin
          master_cobro.refresh;
        end;
end;

procedure TFrm_Control_Fact.FormShow(Sender: TObject);
begin
with master_cobro do
  begin
      close;
      sql.Clear;
      sql.Add('select * from master_fact');
      sql.Add('where situacion =''ENVIADA''');
      sql.Add('and fecha_fac =:op');
      sql.Add('and terminal =''FACTURACION''');
      params[0].Value := now;
      open;
  end;
  Frm_Control_Fact.dxDockPanel1.Visible := false;
 cxPageControl1.ActivePageIndex := 0;

end;

procedure TFrm_Control_Fact.OP22Click(Sender: TObject);
begin
if op22.ItemIndex = 0  then
   begin
     label4.Caption := 'Por # de Cotización';
     edit2.SetFocus;
   end;
if op22.ItemIndex = 1  then
   begin
     label4.Caption := 'Nombres de Clientes';
     edit2.SetFocus;
   end;

end;

end.
