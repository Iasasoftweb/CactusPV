unit Unit67;

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
  dxSkinXmas2008Blue, cxGroupBox, cxCheckListBox, cxDBCheckListBox, Data.DB,
  RxCtrls, cxTextEdit, cxLabel, RxSwitch, Vcl.ExtCtrls, vcl.fcpanel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxRadioGroup, cxCheckBox, cxMemo, ZAbstractRODataset,
  ZDataset, ZAbstractDataset, ZSqlUpdate;

type
  TFrmCambioPrecio = class(TForm)
    cxGroupBox1: TcxGroupBox;
    dscategoria: TDataSource;
    cxCheckListBox1: TcxCheckListBox;
    cxGroupBox2: TcxGroupBox;
    porcentaje: TcxTextEdit;
    cxLabel1: TcxLabel;
    op1: TcxRadioGroup;
    cxGroupBox3: TcxGroupBox;
    fijo: TcxTextEdit;
    op2: TcxRadioGroup;
    cxGroupBox4: TcxGroupBox;
    precioa: TcxCheckBox;
    preciob: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    cxMemo1: TcxMemo;
    IbqRArticulos: TZReadOnlyQuery;
    IbqRArticulosCOD_ART: TIntegerField;
    IbqRArticulosARTICULO: TWideStringField;
    IbqRArticulosCOD_CAT: TIntegerField;
    IbqRArticulosPOLITICA: TWideStringField;
    IbqRArticulosMODELO: TWideStringField;
    IbqRArticulosMARCA: TWideStringField;
    IbqRArticulosCODIGOTXT: TWideStringField;
    IbqRArticulosEXISTENCIA: TFloatField;
    IbqRArticulosITBIS: TWideStringField;
    IbqRArticulosMONEDA: TWideStringField;
    Articulo: TZQuery;
    ArticuloCOD_ART: TIntegerField;
    ArticuloPRECIO_A: TFloatField;
    ArticuloPRECIO_B: TFloatField;
    ArticuloCODIGOBARRA: TWideStringField;
    ArticuloARTICULO: TWideStringField;
    ArticuloCAT: TWideStringField;
    ArticuloCOSTO_PR: TFloatField;
    ArticuloSTOCK: TFloatField;
    zuarticulos: TZUpdateSQL;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCambioPrecio: TFrmCambioPrecio;

implementation
uses unit2, tools;

{$R *.dfm}

procedure TFrmCambioPrecio.cxButton1Click(Sender: TObject);
var
i : integer;
begin
porcentaje.Clear;
fijo.Clear;
precioa.Checked :=false;
preciob.Checked :=false;


with cxCheckListbox1 do begin
    for i := 0 to Items.Count - 1 do
      Items.Items[i].Checked := false;
  end;


end;

procedure TFrmCambioPrecio.cxButton2Click(Sender: TObject);
var
b : integer;
c : integer;
begin
cxmemo1.Clear;

for b:= 0 to cxCheckListBox1.Items.Count -1 do

if cxCheckListBox1.Items.Items[b].Checked = true then
   begin
        cxMemo1.Lines.Add(cxCheckListBox1.Items[b].Text);

         with articulo do
           begin
           open;
           first;
           while not eof do begin

           if articulocat.Value = cxCheckListBox1.Items[b].Text then
             begin
                 if (porcentaje.Text <>'') and (fijo.Text ='')  then
                     begin
                         articulo.Edit;
                         if op1.ItemIndex = 0 then begin

                         if precioa.Checked = true then
                            begin
                              articuloprecio_a.Value := articuloprecio_a.Value + (articuloprecio_a.Value * (StrToFloat(porcentaje.Text)/100));
                            end;

                          if preciob.Checked = true then
                            begin
                              articuloprecio_b.Value := articuloprecio_b.Value + (articuloprecio_b.Value * (StrToFloat(porcentaje.Text)/100));
                            end;
                         end;

                        if op1.ItemIndex = 1 then begin

                         if precioa.Checked = true then
                            begin
                              articuloprecio_a.Value := articuloprecio_a.Value - (articuloprecio_a.Value * (StrToFloat(porcentaje.Text)/100));
                            end;

                          if preciob.Checked = true then
                            begin
                              articuloprecio_b.Value := articuloprecio_b.Value - (articuloprecio_b.Value * (StrToFloat(porcentaje.Text)/100));
                            end;
                         end;

                      end;

                 if (fijo.Text <>'') and (porcentaje.Text ='')  then
                     begin
                         articulo.Edit;

                         if op2.ItemIndex = 0 then begin
                         if precioa.Checked = true then
                            begin
                              articuloprecio_a.Value := articuloprecio_a.Value + StrToFloat(fijo.Text);
                            end;

                          if preciob.Checked = true then
                            begin
                              articuloprecio_b.Value := articuloprecio_b.Value + StrToFloat(fijo.Text);
                            end;
                         end;

                         if op2.ItemIndex = 1 then begin
                         if precioa.Checked = true then
                            begin
                              articuloprecio_a.Value := articuloprecio_a.Value - StrToFloat(fijo.Text);
                            end;

                          if preciob.Checked = true then
                            begin
                              articuloprecio_b.Value := articuloprecio_b.Value - StrToFloat(fijo.Text);
                            end;
                         end;

                      end;
             end;

            next;

           end;

             articulo.ApplyUpdates;
             datos.Data.Commit;
             MsgInformacion('Proceso Terminado');


             porcentaje.Clear;
             fijo.Clear;
             precioa.Checked :=false;
             preciob.Checked :=false;

             datos.MantArt.Close;
             datos.MantArt.Open;
with cxCheckListbox1 do begin
    for c := 0 to Items.Count - 1 do
      Items.Items[c].Checked := false;
  end;
end;



   end;

end;





procedure TFrmCambioPrecio.FormShow(Sender: TObject);
var
i : integer;
begin
datos.FbCategorias.open;
datos.FbCategorias.First;

 cxCheckListBox1.Clear;
While not datos.FbCategorias.Eof do//Also it is rewritten all values according to the filter
begin
cxCheckListBox1.AddItem(datos.FbCategorias.Fields[4].AsString);
datos.FbCategorias.Next;
end;
end;


end.
