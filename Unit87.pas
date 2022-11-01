unit Unit87;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, Vcl.Menus, cxButtons,
  ZAbstractDataset, cxMaskEdit, cxDropDownEdit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier, Vcl.Buttons, Vcl.ExtCtrls, acPNG;

type
  TFrmDGII = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    ConsultaRNC: TZReadOnlyQuery;
    ConsultaRNCRNC: TWideStringField;
    ConsultaRNCNOMBRES: TWideStringField;
    ConsultaRNCNOMBRECOMERCIAL: TWideStringField;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Qclientes: TZReadOnlyQuery;
    DsQClientes: TDataSource;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    QclientesCODIGO: TIntegerField;
    QclientesNOMBRES: TWideStringField;
    QclientesDIRECCION: TWideStringField;
    QclientesCEDULA: TWideStringField;
    QclientesTELEFONO: TWideStringField;
    QclientesCELULAR: TWideStringField;
    QclientesCOLOR: TWideStringField;
    QclientesCONTACTO: TWideStringField;
    QclientesRENGLONCNF: TWideStringField;
    QclientesTXTCNF: TWideStringField;
    QclientesCREDITOLIMITE: TFloatField;
    QclientesTIPO: TWideStringField;
    QclientesRNC: TWideStringField;
    QclientesCONDICION: TWideStringField;
    QclientesINICIO: TDateField;
    QclientesSUELDO: TFloatField;
    QclientesPAGOITB: TWideStringField;
    QclientesCREDITO: TWideStringField;
    QclientesBALANCE: TFloatField;
    QclientesESTADO: TWideStringField;
    QclientesMOVIL: TWideStringField;
    QclientesCODIGO_T: TWideStringField;
    QclientesCOMISION: TFloatField;
    QclientesNUMEROPIN: TWideStringField;
    QclientesTELEFONO3: TWideStringField;
    QclientesEMAIL: TWideStringField;
    QclientesRUTA_ID: TIntegerField;
    QclientesREGIONID: TIntegerField;
    QclientesPROVINCIAID: TIntegerField;
    QclientesMUNICIPIOID: TIntegerField;
    Edit5: TEdit;
    numero_cliente: TZQuery;
    TipoC: TcxComboBox;
    Label4: TLabel;
    Panel7: TPanel;
    cxButton1: TSpeedButton;
    pnlTop: TPanel;
    btnsalir: TSpeedButton;
    pnlBarTopDiv: TPanel;
    Panel2: TPanel;
    imgLogoTop: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    Panel6: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    function TraeNumeroOrden(codigo:Integer):Integer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxcButton1Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDGII: TFrmDGII;

implementation

{$R *.dfm}

uses Unit57, Unit2, Unit63, Tools, Unit59, Pizeria, touch;

function TFrmDGII.TraeNumeroOrden(codigo:Integer):Integer;
begin

   with numero_cliente do
     begin
     close;
     open;
   end;
   if numero_cliente.Fields[0].IsNull then
      Result := 1
   else
      Result := numero_cliente.Fields[0].Value + 1;

end;

procedure TFrmDGII.btnsalirClick(Sender: TObject);
begin
close;
end;

procedure TFrmDGII.cxButton1Click(Sender: TObject);
begin

if edit5.Text = '1' then
  begin

      datos.FbtClientes.open;
      datos.FbtClientes.insert;
      datos.FbtClientescodigo.Value := TraeNumeroOrden(datos.FbtClientescodigo.Value);
      datos.FbtClientescodigo_t.Value := '000'+INtToStr(datos.FbtClientescodigo.Value);
      datos.FbtClientesCREDITOLIMITE.Value :=0.00;
      datos.FbtClientesESTADO.Value := 'Activo';
      datos.FbtClientesRENGLONCNF.Value :='Ninguno';
      datos.FbtClientesPAGOITB.Value :='No';
      datos.FbtClientesBALANCE.Value := 0.00;
      datos.FbtClientesNOMBRES.Value := trim(ConsultaRNCNOMBRES.Value);
      datos.FbtClientesCEDULA.Value := ConsultaRNCRNC.Value;
      datos.FbtClientesRENGLONCNF.Value := TipoC.Text;
      datos.fbtclientesColor.Value := 'PRECIO 1';
      datos.FbtClientesNUMEROPIN.Value := 'NORMAL';
      datos.FbtClientesDIRECCION.Value := '.';




      datos.FbtClientes.Edit;
      datos.FbtClientes.Post;
      datos.FbtClientes.ApplyUpdates;


     if datos.ZUconfiguracionTerminal.Value = 'Normal' then
       begin
              with FrmNFact_normal.ibqclientes do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.nombre_ruta, c.nombre vendedor from cliente a');
                  sql.Add('left join ruta b On a.ruta_id = b.id');
                  sql.Add('left join vendedores c On b.idvendedor = c.id');
                  sql.Add('where a.cedula =:ppp');
                  params[0].Value := ConsultaRNCRNC.Value;
                  open;
                end;


                datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCLIENTEID.Value := FrmNFact_normal.ibqclientescodigo.Value;
              //datos.FbqMaster_FactCLIENTENOMBRE.Value := ConsultaRNCNOMBRES.Value;
              datos.FbqMaster_FactCONDICIONVENTA.Value := FrmNFact_normal.ibqclientescondicion.Value;
              datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := ConsultaRNCNOMBRES.Value;
              datos.FbqMaster_FactIDRUTA.Value := FrmNFact_normal.ibqclientesruta_id.Value;
              datos.FbqMaster_FactNOMBREDELDR.Value := trim(TipoC.Text);


              //FrmNFact_normal.opBuscarCliente.Visible := false;

              with FrmNFact_normal.qruta do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.nombre from ruta a');
                  sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
                  sql.Add('where a.id =:ppp');
                  params[0].Value := FrmNFact_normal.ibqclientesruta_id.Value;
                  open;
                end;
       end;


        if datos.ZUconfiguracionTerminal.Value = 'Touch' then
       begin
              with FrmTOUCH.IbqClientes do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.nombre_ruta, c.nombre vendedor from cliente a');
                  sql.Add('left join ruta b On a.ruta_id = b.id');
                  sql.Add('left join vendedores c On b.idvendedor = c.id');
                  sql.Add('where a.cedula =:ppp');
                  params[0].Value := ConsultaRNCRNC.Value;
                  open;
                end;



                datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCLIENTEID.Value := FrmTouch.ibqclientescodigo.Value;
              //datos.FbqMaster_FactCLIENTENOMBRE.Value := ConsultaRNCNOMBRES.Value;
              datos.FbqMaster_FactCONDICIONVENTA.Value :=FrmTouch.ibqclientescondicion.Value;
              datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := FrmTouch.IbqClientesNOMBRES.Value;
              datos.FbqMaster_FactIDRUTA.Value := FrmTouch.ibqclientesruta_id.Value;
              datos.FbqMaster_FactNOMBREDELDR.Value := trim(TipoC.Text);


            //  ShowMessage(''+FrmTouch.IbqClientesNOMBRES.Value+'  '+datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value);

              //FrmNFact_normal.opBuscarCliente.Visible := false;

//              with FrmNFact_normal.qruta do
//                begin
//                  close;
//                  sql.Clear;
//                  sql.Add('select a.*, b.nombre from ruta a');
//                  sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
//                  sql.Add('where a.id =:ppp');
//                  params[0].Value := FrmNFact_normal.ibqclientesruta_id.Value;
//                  open;
//                end;
       end;



    edit5.Clear;
   close;
  end else begin

 if datos.ZUconfiguracionTerminal.Value = 'Normal' then
  begin

  with FrmNFact_normal.ibqclientes do
  begin
    close;
    sql.Clear;
   sql.Add('select a.* from cliente a');
    sql.Add('where a.cedula =:ppp');
    params[0].Value := QclientesCEDULA.Value;
    open;
  end;


      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactCLIENTEID.Value := FrmNFact_normal.ibqclientescodigo.Value;
      //datos.FbqMaster_FactCLIENTENOMBRE.Value := FrmNFact_normal.ibqclientesNombres.Value;
      datos.FbqMaster_FactCONDICIONVENTA.Value := FrmNFact_normal.ibqclientescondicion.Value;
      datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := trim(FrmNFact_normal.ibqclientesNombres.Value);
      datos.FbqMaster_FactIDRUTA.Value := FrmNFact_normal.ibqclientesruta_id.Value;
      datos.FbqMaster_FactNOMBREDELDR.Value := TipoC.Text;



    edit5.Clear;

     close;

  end;


 if datos.ZUconfiguracionTerminal.Value = 'Touch' then
  begin

  with frmtouch.ibqclientes do
  begin
    close;
    sql.Clear;
   sql.Add('select a.* from cliente a');
    sql.Add('where a.cedula =:ppp');
    params[0].Value := QclientesCEDULA.Value;
    open;
  end;


      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactCLIENTEID.Value := frmtouch.ibqclientescodigo.Value;
      //datos.FbqMaster_FactCLIENTENOMBRE.Value := FrmNFact_normal.ibqclientesNombres.Value;
      datos.FbqMaster_FactCONDICIONVENTA.Value := frmtouch.ibqclientescondicion.Value;
      datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := trim(frmtouch.ibqclientesNombres.Value);
      datos.FbqMaster_FactIDRUTA.Value := frmtouch.ibqclientesruta_id.Value;
      datos.FbqMaster_FactNOMBREDELDR.Value := TipoC.Text;



    edit5.Clear;

     close;

  end;

  end;

end;

procedure TFrmDGII.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
  begin

   with qclientes do
        begin
          close;
          sql.Clear;
          sql.Add('select a.* from cliente a');
          sql.Add('where a.cedula =:op2');
          params[0].Value := edit1.Text;
          open;
        end;

    if Qclientes.RecordCount = 0 then
       begin
            with ConsultaRNC do
                   begin
                     close;
                     sql.Clear;
                     sql.Add('select * from DGI_RNC');
                     sql.Add('where rnc =:pp');
                     Params[0].Value := edit1.Text;
                     open;
                   end;


                if ConsultaRNC.RecordCount = 0 then
                    begin
                      ShowMessage(' RNC o Cédula no Existe');
                      edit1.Clear;
                      edit1.SetFocus;
                    end else begin
                               edit2.Text := ConsultaRNCRNC.Value;
                               edit3.Text := ConsultaRNCNOMBRES.Value;
                               edit4.Text := ConsultaRNCNOMBRECOMERCIAL.Value;
                               edit5.Text := '1';
                               //cxButton1.cl;
                             end;

       end else begin
                  edit2.Text := qclientescedula.Value;
                  edit3.Text := QclientesNOMBRES.Value;
                  edit5.Text := '2';
                 // cxButton1.SetFocus;
                end;


  end;
end;

procedure TFrmDGII.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
// if not (key in ['0'..'9','.',#8]) then
//    begin
//      key:=#0;
//      showmessage('Por favor introduzca numeros')
//    end
end;

procedure TFrmDGII.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmDGII := nil;
Action := caFree;
end;

procedure TFrmDGII.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
  begin
    ConsultaRNC.Close;
    Qclientes.Close;
    close;

  end;


end;

procedure TFrmDGII.FormShow(Sender: TObject);
begin
edit1.Clear;
Edit1.SetFocus;

edit2.Clear;
edit3.Clear;
edit4.Clear;
end;

procedure TFrmDGII.cxcButton1Click(Sender: TObject);
begin

if edit5.Text = '1' then
  begin

      datos.FbtClientes.open;
      datos.FbtClientes.insert;
      datos.FbtClientescodigo.Value := TraeNumeroOrden(datos.FbtClientescodigo.Value);
      datos.FbtClientescodigo_t.Value := '000'+INtToStr(datos.FbtClientescodigo.Value);
      datos.FbtClientesCREDITOLIMITE.Value :=0.00;
      datos.FbtClientesESTADO.Value := 'Activo';
      datos.FbtClientesRENGLONCNF.Value :='Ninguno';
      datos.FbtClientesPAGOITB.Value :='No';
      datos.FbtClientesBALANCE.Value := 0.00;
      datos.FbtClientesNOMBRES.Value := trim(ConsultaRNCNOMBRES.Value);
      datos.FbtClientesCEDULA.Value := ConsultaRNCRNC.Value;
      datos.FbtClientesRENGLONCNF.Value := TipoC.Text;
      datos.fbtclientesColor.Value := 'PRECIO 1';
      datos.FbtClientesNUMEROPIN.Value := 'NORMAL';
      datos.FbtClientesDIRECCION.Value := '.';




      datos.FbtClientes.Edit;
      datos.FbtClientes.Post;
      datos.FbtClientes.ApplyUpdates;


     if datos.ZUconfiguracionTerminal.Value = 'Normal' then
       begin
              with FrmNFact_normal.ibqclientes do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.nombre_ruta, c.nombre vendedor from cliente a');
                  sql.Add('left join ruta b On a.ruta_id = b.id');
                  sql.Add('left join vendedores c On b.idvendedor = c.id');
                  sql.Add('where a.cedula =:ppp');
                  params[0].Value := ConsultaRNCRNC.Value;
                  open;
                end;


                datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCLIENTEID.Value := FrmNFact_normal.ibqclientescodigo.Value;
              //datos.FbqMaster_FactCLIENTENOMBRE.Value := ConsultaRNCNOMBRES.Value;
              datos.FbqMaster_FactCONDICIONVENTA.Value := FrmNFact_normal.ibqclientescondicion.Value;
              datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := ConsultaRNCNOMBRES.Value;
              datos.FbqMaster_FactIDRUTA.Value := FrmNFact_normal.ibqclientesruta_id.Value;
              datos.FbqMaster_FactNOMBREDELDR.Value := trim(TipoC.Text);


              //FrmNFact_normal.opBuscarCliente.Visible := false;

              with FrmNFact_normal.qruta do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.nombre from ruta a');
                  sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
                  sql.Add('where a.id =:ppp');
                  params[0].Value := FrmNFact_normal.ibqclientesruta_id.Value;
                  open;
                end;
       end;


        if datos.ZUconfiguracionTerminal.Value = 'Touch' then
       begin
              with FrmTOUCH.IbqClientes do
                begin
                  close;
                  sql.Clear;
                  sql.Add('select a.*, b.nombre_ruta, c.nombre vendedor from cliente a');
                  sql.Add('left join ruta b On a.ruta_id = b.id');
                  sql.Add('left join vendedores c On b.idvendedor = c.id');
                  sql.Add('where a.cedula =:ppp');
                  params[0].Value := ConsultaRNCRNC.Value;
                  open;
                end;



                datos.FbqMaster_Fact.Edit;
              datos.FbqMaster_FactCLIENTEID.Value := FrmTouch.ibqclientescodigo.Value;
              //datos.FbqMaster_FactCLIENTENOMBRE.Value := ConsultaRNCNOMBRES.Value;
              datos.FbqMaster_FactCONDICIONVENTA.Value :=FrmTouch.ibqclientescondicion.Value;
              datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := FrmTouch.IbqClientesNOMBRES.Value;
              datos.FbqMaster_FactIDRUTA.Value := FrmTouch.ibqclientesruta_id.Value;
              datos.FbqMaster_FactNOMBREDELDR.Value := trim(TipoC.Text);


            //  ShowMessage(''+FrmTouch.IbqClientesNOMBRES.Value+'  '+datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value);

              //FrmNFact_normal.opBuscarCliente.Visible := false;

//              with FrmNFact_normal.qruta do
//                begin
//                  close;
//                  sql.Clear;
//                  sql.Add('select a.*, b.nombre from ruta a');
//                  sql.Add('INNER Join vendedores b On a.idvendedor = b.id');
//                  sql.Add('where a.id =:ppp');
//                  params[0].Value := FrmNFact_normal.ibqclientesruta_id.Value;
//                  open;
//                end;
       end;



    edit5.Clear;
   close;
  end else begin

 if datos.ZUconfiguracionTerminal.Value = 'Normal' then
  begin

  with FrmNFact_normal.ibqclientes do
  begin
    close;
    sql.Clear;
   sql.Add('select a.* from cliente a');
    sql.Add('where a.cedula =:ppp');
    params[0].Value := QclientesCEDULA.Value;
    open;
  end;


      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactCLIENTEID.Value := FrmNFact_normal.ibqclientescodigo.Value;
      //datos.FbqMaster_FactCLIENTENOMBRE.Value := FrmNFact_normal.ibqclientesNombres.Value;
      datos.FbqMaster_FactCONDICIONVENTA.Value := FrmNFact_normal.ibqclientescondicion.Value;
      datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := trim(FrmNFact_normal.ibqclientesNombres.Value);
      datos.FbqMaster_FactIDRUTA.Value := FrmNFact_normal.ibqclientesruta_id.Value;
      datos.FbqMaster_FactNOMBREDELDR.Value := TipoC.Text;



    edit5.Clear;

     close;

  end;


 if datos.ZUconfiguracionTerminal.Value = 'Touch' then
  begin

  with frmtouch.ibqclientes do
  begin
    close;
    sql.Clear;
   sql.Add('select a.* from cliente a');
    sql.Add('where a.cedula =:ppp');
    params[0].Value := QclientesCEDULA.Value;
    open;
  end;


      datos.FbqMaster_Fact.Edit;
      datos.FbqMaster_FactCLIENTEID.Value := frmtouch.ibqclientescodigo.Value;
      //datos.FbqMaster_FactCLIENTENOMBRE.Value := FrmNFact_normal.ibqclientesNombres.Value;
      datos.FbqMaster_FactCONDICIONVENTA.Value := frmtouch.ibqclientescondicion.Value;
      datos.FbqMaster_FactNOMBRECLIENTE_PRN.Value := trim(frmtouch.ibqclientesNombres.Value);
      datos.FbqMaster_FactIDRUTA.Value := frmtouch.ibqclientesruta_id.Value;
      datos.FbqMaster_FactNOMBREDELDR.Value := TipoC.Text;



    edit5.Clear;

     close;

  end;

  end;
end;

end.
