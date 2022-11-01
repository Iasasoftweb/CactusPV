unit Unit7;

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
  ZAbstractRODataset, ZDataset, StdCtrls, ExtCtrls, frxClass, frxDBSet, Menus,
  cxButtons, frxBarcode, Mask, DBCtrls, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, unit2;


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
  TFrmCodBar = class(TForm)
    FbRArticulos: TZReadOnlyQuery;
    DsARticulos: TDataSource;
    Print_Precio: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxButton1: TcxButton;
    op2: TRadioGroup;
    frxBarCodeObject1: TfrxBarCodeObject;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    FbRArticulosCOD_ART: TIntegerField;
    FbRArticulosCODIGOTXT: TWideStringField;
    FbRArticulosARTICULO: TWideStringField;
    FbRArticulosMODELO: TWideStringField;
    FbRArticulosMARCA: TWideStringField;
    FbRArticulosCOLOR: TWideStringField;
    FbRArticulosCOD_CAT: TIntegerField;
    FbRArticulosCOD_SERIE: TIntegerField;
    FbRArticulosCOD_ALM: TIntegerField;
    FbRArticulosCOSTO: TFloatField;
    FbRArticulosCOD_PROV1: TIntegerField;
    FbRArticulosEXISTENCIA1: TFloatField;
    FbRArticulosITBIS: TWideStringField;
    FbRArticulosABREVIADO: TWideStringField;
    FbRArticulosCOD_BARRA: TWideStringField;
    FbRArticulosCOD_UV: TIntegerField;
    FbRArticulosUSUARIOMOD: TIntegerField;
    FbRArticulosFECHA_MOD: TDateField;
    FbRArticulosPOLITICA: TWideStringField;
    FbRArticulosCOSTO_PR: TFloatField;
    FbRArticulosIMAGEN: TBlobField;
    FbRArticulosCLA_COSTO: TWideStringField;
    FbRArticulosCLA_PRECIO: TWideStringField;
    FbRArticulosPRECIO_A: TFloatField;
    FbRArticulosPRECIO_B: TFloatField;
    FbRArticulosPRECIO_D: TFloatField;
    FbRArticulosESTADO: TIntegerField;
    FbRArticulosEXTFOTO: TWideStringField;
    FbRArticulosDESCRIPCIONWEB: TWideMemoField;
    FbRArticulosPUBLICARWEB: TIntegerField;
    FbRArticulosCODIGOBARRA: TWideStringField;
    FbRArticulosEMPAQUE: TIntegerField;
    FbRArticulosCANT_EMPA: TFloatField;
    FbRArticulosCOD_PROV2: TIntegerField;
    FbRArticulosCOD_PROV3: TIntegerField;
    FbRArticulosREFERENCIA: TWideStringField;
    FbRArticulosCONDICION: TIntegerField;
    FbRArticulosOPCION_SABOR: TWideStringField;
    FbRArticulosSTOCK_MA: TFloatField;
    FbRArticulosSTOCK_M: TFloatField;
    FbRArticulosFACTOR: TFloatField;
    FbRArticulosTIPO_PRODUCTOS: TWideStringField;
    FbRArticulosFACTURABLE: TIntegerField;
    FbRArticulosSTOCK: TFloatField;
    FbRArticulosOPCIONES_BOLA: TWideStringField;
    FbRArticulosPARTICIONADO: TWideStringField;
    FbRArticulosCOMPUESTO: TWideStringField;
    FbRArticulosBENEFICIOS: TFloatField;
    FbRArticulosMONEDA: TWideStringField;
    FbRArticulosUNIDAD: TWideStringField;
    FbRArticulosTAZA_COMPRA: TFloatField;
    FbRArticulosFECHA_COMPRA: TDateField;
    FbRArticulosINTERES_ACUMULADO: TFloatField;
    FbRArticulosALMACEN: TIntegerField;
    Print_No: TfrxReport;
    PaintBox1: TPaintBox;
    procedure cxButton1Click(Sender: TObject);
    procedure Codifica(num : string);
       // procedimiento para dibujar el cód. de barras a partir del nº binario
       procedure Dibujar(matrix : string);
       // procedimiento para validar-corregir los códigos
       procedure EANCorrecto(var num : string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCodBar: TFrmCodBar;

implementation

{$R *.dfm}


procedure TFrmCodBar.EANCorrecto(var num : string);
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
       num:=copy(num,1,length(num)-1)+IntToStr(Flag);
   end;

   procedure TFrmCodBar.Codifica(num : string);
   var
     matrix : string;
     i : integer;
   begin
     num:=DBEdit1.Text;
     matrix:='';
     case Length(num) of
     13: begin
         EANCorrecto(num);
         DBEdit1.Text:=num;
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
         DBEdit1.Text:=num;
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

   procedure TFrmCodBar.Dibujar(matrix : string);
   var
     i : integer;
     Bitmap: TBitmap;
   begin
     PaintBox1.Canvas.Brush.Color:=clWhite;
     PaintBox1.Canvas.FillRect(Rect(0,0,PaintBox1.Width,PaintBox1.Height));
     PaintBox1.Canvas.Pen.Color:=clBlack;

     for i:=1 to Length(Matrix) do
       if matrix[i]='1' then
         PaintBox1.Canvas.PolyLine([Point(10+i,10),Point(10+i,50)])
       else
       if matrix[i]='x' then
         PaintBox1.Canvas.PolyLine([Point(10+i,10),Point(10+i,55)]);

     if Length(DBEdit1.Text)=13 then
     begin
         PaintBox1.Canvas.TextOut(3,50,DBEdit1.Text[1]);
         PaintBox1.Canvas.TextOut(17,50,copy(DBEdit1.Text,2,6));
         PaintBox1.Canvas.TextOut(63,50,copy(DBEdit1.Text,8,6));
     end
     else
     if Length(DBEdit1.Text)=8 then
     begin
         PaintBox1.Canvas.TextOut(16,50,copy(DBEdit1.Text,1,4));
         PaintBox1.Canvas.TextOut(48,50,copy(DBEdit1.Text,5,4));
     end;
    with paintbox1 do
      begin
         bitmap.SaveToFile('c:\BarCode\'+DBEdit1.Text+'.bmp');
      end;
   end;

   procedure TFrmCodBar.cxButton1Click(Sender: TObject);
begin
if op2.ItemIndex = 0 then
begin
  print_precio.ShowReport(true);
end;
  {
if op2.ItemIndex = 1 then
begin
  print_no.ShowReport(true);
end;
   }


       Codifica(DBEdit1.Text);
       DBEdit1.SelStart:=0;
       DBEdit1.SelLength:=Length(DBEdit1.Text);

end;

end.
