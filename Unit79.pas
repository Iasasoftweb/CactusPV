unit Unit79;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxCurrencyEdit,
  cxTextEdit, cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Data.DB, ZAbstractRODataset, ZDataset, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox,
  ZAbstractDataset, ZSqlUpdate, Vcl.ExtCtrls, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

   const
   EAN_izqA : array[0..9] of PChar=('0001101','0011001','0010011','0111101','0100011',
  '0110001','0101111','0111011','0110111','0001011');
   EAN_izqB : array[0..9] of PChar=('0100111','0110011','0011011','0100001','0011101',
  '0111001','0000101','0010001','0001001','0010111');
   EAN_dcha : array[0..9] of PChar=('1110010','1100110','1101100','1000010','1011100',
  '1001110','1010000','1000100','1001000','1110100');
     CodificaIzq : array[0..9] of PChar=('AAAAA','ABABB','ABBAB','ABBBA','BAABB',
 'BBAAB','BBBAA','BABAB','BABBA','BBABA');


type
  TFrmLabelgarantia = class(TForm)
    GroupBox1: TGroupBox;
    cxButton10: TcxButton;
    t1: TcxTextEdit;
    Label10: TLabel;
    t2: TcxTextEdit;
    Label11: TLabel;
    t4: TcxCurrencyEdit;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    cxDateEdit1: TcxDateEdit;
    Label1: TLabel;
    Zarti: TZReadOnlyQuery;
    DsArti: TDataSource;
    panelarti: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1COD_ART: TcxGridDBColumn;
    cxGrid2DBTableView1ARTICULO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    ZartiCOD_ART: TIntegerField;
    ZartiCODIGOTXT: TWideStringField;
    ZartiARTICULO: TWideStringField;
    ZartiMODELO: TWideStringField;
    ZartiMARCA: TWideStringField;
    ZartiCOLOR: TWideStringField;
    ZartiCOD_CAT: TIntegerField;
    ZartiCOD_SERIE: TIntegerField;
    ZartiCOD_ALM: TIntegerField;
    ZartiCOSTO: TFloatField;
    ZartiCOD_PROV1: TIntegerField;
    ZartiEXISTENCIA1: TFloatField;
    ZartiITBIS: TWideStringField;
    ZartiABREVIADO: TWideStringField;
    ZartiCOD_BARRA: TWideStringField;
    ZartiCOD_UV: TIntegerField;
    ZartiUSUARIOMOD: TIntegerField;
    ZartiFECHA_MOD: TDateField;
    ZartiPOLITICA: TWideStringField;
    ZartiCOSTO_PR: TFloatField;
    ZartiIMAGEN: TBlobField;
    ZartiCLA_COSTO: TWideStringField;
    ZartiCLA_PRECIO: TWideStringField;
    ZartiPRECIO_A: TFloatField;
    ZartiPRECIO_B: TFloatField;
    ZartiPRECIO_D: TFloatField;
    ZartiESTADO: TIntegerField;
    ZartiEXTFOTO: TWideStringField;
    ZartiDESCRIPCIONWEB: TWideMemoField;
    ZartiPUBLICARWEB: TIntegerField;
    ZartiCODIGOBARRA: TWideStringField;
    ZartiEMPAQUE: TIntegerField;
    ZartiCANT_EMPA: TFloatField;
    ZartiCOD_PROV2: TIntegerField;
    ZartiCOD_PROV3: TIntegerField;
    ZartiREFERENCIA: TWideStringField;
    ZartiCONDICION: TIntegerField;
    ZartiOPCION_SABOR: TWideStringField;
    ZartiSTOCK_MA: TFloatField;
    ZartiSTOCK_M: TFloatField;
    ZartiFACTOR: TFloatField;
    ZartiTIPO_PRODUCTOS: TWideStringField;
    ZartiFACTURABLE: TIntegerField;
    ZartiSTOCK: TFloatField;
    ZartiOPCIONES_BOLA: TWideStringField;
    ZartiPARTICIONADO: TWideStringField;
    ZartiCOMPUESTO: TWideStringField;
    ZartiBENEFICIOS: TFloatField;
    ZartiMONEDA: TWideStringField;
    ZartiUNIDAD: TWideStringField;
    ZartiTAZA_COMPRA: TFloatField;
    ZartiFECHA_COMPRA: TDateField;
    ZartiINTERES_ACUMULADO: TFloatField;
    ZartiALMACEN: TIntegerField;
    ZartiPERCIO_COPA: TFloatField;
    ZartiCOMISION: TFloatField;
    ZartiARTICULOS_OMO: TWideStringField;
    ZartiCODIGOUNICO: TWideStringField;
    ZartiEMPRESA: TWideStringField;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    ZqLabel: TZQuery;
    ZuLabel: TZUpdateSQL;
    ZqLabelID: TIntegerField;
    ZqLabelIDARTICULO: TIntegerField;
    ZqLabelFECHA_SALIDA: TDateField;
    ZqLabelCODIGOGENERADO: TWideStringField;
    ZqLabelPRECIOVENTA: TFloatField;
    ZqLabelCLIENTES: TWideStringField;
    Edit2: TEdit;
    Label4: TLabel;
    cxButton1: TcxButton;
    max: TZReadOnlyQuery;
    maxMAX: TIntegerField;
    Grafico: TImage;
    Edit3: TEdit;
    Label5: TLabel;
    procedure cxButton10Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Codifica(num : string);
     procedure Dibujar(matrix : string);
       // procedimiento para validar-corregir los códigos
       procedure EANCorrecto(var num : string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLabelgarantia: TFrmLabelgarantia;

implementation

{$R *.dfm}

uses Unit2;

procedure TFrmLabelgarantia.Codifica(num: string);
var
     matrix : string;
     i : integer;
   begin


     num:=edit3.Text;
     matrix:='';
     case Length(num) of
     13: begin
         EANCorrecto(num);
         edit3.Text:=num;
         matrix:=matrix+'x0x'; // barra inicio
         matrix:=matrix+EAN_izqA[StrToInt(num[2])];
         for i:=3 to 7 do
           if CodificaIzq[StrToInt(num[1])][i-3]='A' then
             matrix:=matrix+EAN_izqA[StrToInt(num[i])]
           else
             matrix:=matrix+EAN_izqB[StrToInt(num[i])];
         matrix:=matrix+'0x0x0'; // barra central
         matrix:=matrix+EAN_dcha[StrToInt(num[8])];
         matrix:=matrix+EAN_dcha[StrToInt(num[9])];
         matrix:=matrix+EAN_dcha[StrToInt(num[10])];
         matrix:=matrix+EAN_dcha[StrToInt(num[11])];
         matrix:=matrix+EAN_dcha[StrToInt(num[12])];
         matrix:=matrix+EAN_dcha[StrToInt(num[13])];
         matrix:=matrix+'x0x'; // barra final
         Dibujar(Matrix);
       end;
     8: begin
         EANCorrecto(num);
         edit3.Text:=num;
         matrix:=matrix+'x0x';
         matrix:=matrix+EAN_izqA[StrToInt(num[1])];
         matrix:=matrix+EAN_izqA[StrToInt(num[2])];
         matrix:=matrix+EAN_izqA[StrToInt(num[3])];
         matrix:=matrix+EAN_izqA[StrToInt(num[4])];
         matrix:=matrix+'0x0x0';
         matrix:=matrix+EAN_dcha[StrToInt(num[5])];
         matrix:=matrix+EAN_dcha[StrToInt(num[6])];
         matrix:=matrix+EAN_dcha[StrToInt(num[7])];
         matrix:=matrix+EAN_dcha[StrToInt(num[8])];
         matrix:=matrix+'x0x';
         Dibujar(Matrix);
       end
     else
       ShowMessage('LONGITUD DE CODIGO NO VALIDA');
     end;


end;

procedure TFrmLabelgarantia.cxButton10Click(Sender: TObject);
begin
with zarti do
  begin
    close;
    sql.Clear;
    sql.Add('select a.* from mtartuculos a');
    open;
  end;

panelarti.Visible := true;
edit1.SetFocus;
end;

procedure TFrmLabelgarantia.cxButton1Click(Sender: TObject);
var
a,m,d : word;

    S: TMemoryStream;
 //   PV: TfrxComponent;
    s1 : string;
    t1 : string;
begin
zqlabel.Open;
with max do
  begin
    close;
    opeN;
  end;

  zqlabel.Insert;
  zqlabelid.Value             := maxmax.Value + 1;
  zqlabelidarticulo.Value     := zartiCOD_ART.Value;
  zqlabelfecha_salida.Value   := cxDateEdit1.Date;
  zqlabelprecioventa.Value    := cxCurrencyEdit1.Value;
  zqlabelclientes.Value       := edit2.Text;

  DecodeDate(cxDateEdit1.Date, a, m, d);
  zqlabelcodigogenerado.Value := IntToStr(zqlabelid.Value)+IntToStr(zqlabelidarticulo.Value)+IntToStr(d)+IntToStr(m)+IntToStr(StrToInt(Copy(IntToStr(a),1,3)));
  edit3.Text := zqlabelcodigogenerado.Value;
//  showmessage(''+zqlabelcodigogenerado.Value);
  zqlabel.ApplyUpdates;
  datos.Data.Commit;


       Codifica(edit3.text);
       edit3.SelStart:=0;
       edit3.SelLength:=Length(edit3.Text);

end;

procedure TFrmLabelgarantia.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
t1.Text := zarticod_art.text;
t2.Text := zartiarticulo.Value;
t4.Value := zartiprecio_a.Value;
cxCurrencyEdit1.Value := zartiprecio_a.Value;

panelarti.Visible := false;

end;

procedure TFrmLabelgarantia.Dibujar(matrix: string);
 var
     i : integer;
     Bitmap: TBitmap;
   begin

     grafico.Canvas.Brush.Color:=clWhite;
     grafico.Canvas.FillRect(Rect(0,0,grafico.Width,grafico.Height));
     grafico.Canvas.Pen.Color:=clBlack;

     for i:=1 to Length(Matrix) do
       if matrix[i]='1' then
         grafico.Canvas.PolyLine([Point(10+i,10),Point(10+i,50)])
       else
       if matrix[i]='x' then
         grafico.Canvas.PolyLine([Point(10+i,10),Point(10+i,55)]);

     if Length(edit3.Text)=13 then
     begin
         grafico.Canvas.TextOut(3,50,edit3.Text[1]);
         grafico.Canvas.TextOut(17,50,copy(edit3.Text,2,6));
         grafico.Canvas.TextOut(63,50,copy(edit3.Text,8,6));
     end
     else
     if Length(edit3.Text)=8 then
     begin
         grafico.Canvas.TextOut(16,50,copy(edit3.Text,1,4));
         grafico.Canvas.TextOut(48,50,copy(edit3.Text,5,4));
     end;



     Grafico.Picture.SaveToFile('c:\BarCode\'+edit3.Text+'.bmp');


end;

procedure TFrmLabelgarantia.EANCorrecto(var num: string);
var
  i,N : byte;
  sum : integer;
  flag : byte;
begin
  sum:=0;
  N:=Length(num)-1;
  for i:=1 to N do
  begin
    if (i mod 2)=0 then
    begin
      if N=12 then
        sum:=sum+StrToInt(num[i])*3
      else
        sum:=sum+StrToInt(num[i]);
    end
    else
    begin
      if N=12 then
        sum:=sum+StrToInt(num[i])
      else
        sum:=sum+StrToInt(num[i])*3;
    end;
  end;
  if sum>99 then
    Flag:=10-(sum mod 100)
  else
    Flag:=10-(sum mod 10);
  if Flag=10 then Flag:=0;
  if not(StrToInt(num[N+1])=flag) then
  begin
    ShowMessage('El dígito de control no es válido y será cambiado'+#13+
    'El dígito correcto es '+IntToStr(Flag));
    num:=copy(num,1,length(num)-1)+IntToStr(Flag);
  end;

end;

procedure TFrmLabelgarantia.Edit1Change(Sender: TObject);
begin

with zarti do
  begin
    close;
    sql.Clear;
    sql.Add('select a.*');
    sql.Add('from mtartuculos a');
    sql.Add('where a.articulo like '+#39+'%'+edit1.Text+'%'+#39);
    open;
  end;
end;

end.
