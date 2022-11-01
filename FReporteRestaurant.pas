unit FReporteRestaurant;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox,
  cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,
  Vcl.Menus, cxButtons, Data.DB, ZAbstractRODataset, ZDataset, frxClass,
  frxDBSet,  ComObj, excel2000;

type
  TFReporteResturant = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    fechafinal: TcxDateEdit;
    inicio: TcxDateEdit;
    RgTipo: TcxRadioGroup;
    cxButton2: TcxButton;
    Label1: TLabel;
    Config: TfrxDBDataset;
    PrintCat: TfrxReport;
    gatos: TfrxReport;
    mASTER: TfrxDBDataset;
    cuadre: TZReadOnlyQuery;
    cuadreVENTAS: TExtendedField;
    cuadreLEY: TExtendedField;
    cuadreMESA: TExtendedField;
    cuadreDELIVERY: TExtendedField;
    cuadreBAR: TExtendedField;
    cuadreFECHAMAX: TDateField;
    ticker: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReporteResturant: TFReporteResturant;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFReporteResturant.cxButton2Click(Sender: TObject);
var
Plantilla : Variant;
Linha, cont : Integer;
begin


 if RgTipo.ItemIndex = 0 then begin

          with cuadre do
            begin
              close;
              sql.clear;
              sql.add('select * from ventasrestaurant(:fechainicial, :fechafinal ) where ventas is not null');
              Params[0].Value := inicio.Date;
              Params[1].Value := fechafinal.Date;
              open;
            end;

                       ticker.variables['fecha1']:=quotedstr(inicio.Text);
                       ticker.variables['Empleado']:=quotedstr('Resumen de Ventas x Fecha');
                       ticker.variables['fecha2']:=quotedstr(fechafinal.Text);
                      // showmessage('');
                       ticker.PrepareReport(true);
                       ticker.ShowPreparedReport;

                       inicio.Clear;
                       fechafinal.Clear;
 end;


  if RgTipo.ItemIndex = 1 then begin

          with cuadre do
            begin
              close;
              sql.clear;
              sql.add('select * from ventasrestaurant(:fechainicial, :fechafinal ) where ventas is not null');
              Params[0].Value := inicio.Date;
              Params[1].Value := fechafinal.Date;
              open;
            end;

  Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Resumen de Venta por Fecha';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PVS';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'Resumen de Venta por Fecha';
       // Plantilla.cells[4,1] := 'Tipo :'+cxComboBox1.Text ;
         Plantilla.cells[5,1] := 'Desde :'+inicio.Text+' Hasta : '+fechafinal.Text;

       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
       Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'Ventas en Mesa';
        Plantilla.cells[6,2]:= 'Ventas Fuera de Mesa';
        Plantilla.cells[6,3]:= 'Total Cobro 10% Ley';
        Plantilla.cells[6,4]:= 'Total Ventas';

        cuadre.DisableControls;
        with cuadre do begin
        try
            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= cuadreMESA.Value;
                     Plantilla.cells[Linha, 2]:= cuadreBAR.Value;
                     Plantilla.cells[Linha, 3]:= cuadreLEY.Value ;
                     Plantilla.cells[Linha, 4]:= cuadreventas.Value;

                     Linha := Linha + 1;

                 next;
               end;

               Plantilla.columns.autofit;
                     plantilla.visible := true;
        finally
            cuadre.EnableControls;
            Plantilla := Unassigned;
           // ai.StopAnimation;
        end;
        end;



  end;

//
//if op_cat.Visible = true then begin
//with cuadre do
//  begin
//    close;
//    sql.clear;
//    sql.add('select a.cod_art, Sum(a.cantidad), b.articulo, c.fecha_fac, c.condicion,b.cod_cat Sum(a.cantidad * a.precio) tVENTA, Sum((a.cantidad * a.precio) - (a.cantidad * b.costo_pr))  from detailfact a');
//    sql.add('left join mtartuculos b On a.articuloid = B.cod_art');
//    sql.add('left join master_fact c On a.masterid = c.no_fact');
//    sql.Add('where c.fecha_fac >=:fecha1');
//    sql.Add('and c.fecha_fac <=:fecha2');
//    sql.Add('and c.condicion =:dd');
//    sql.Add('and b.cod_cat =:tt');
//    sql.Add('group by a.cod_art, b.articulo, c.fecha_fac, c.condicion,b.cod_cat');
//    Params[0].Value := inicio.Date;
//    Params[1].Value := fechafinal.Date;
//    params[2].Value := 'ACTIVA';
//    params[3].Value := sTRtOiNT(edit3.Text);
//    open;
//  end;
//
//             printcat.variables['fecha1']:=quotedstr(inicio.Text);
//             printcat.variables['Empleado']:=quotedstr('Reporte de Articulos Vendidos x Fecha');
//             printcat.variables['categoria']:=quotedstr(cattxt.Text);
//             printcat.variables['fecha2']:=quotedstr(fechafinal.Text);
//            // showmessage('');
//             printcat.PrepareReport(true);
//             printcat.ShowPreparedReport;
//
//  //           inicio.Clear;
////             fechafinal.Clear;
//end;
//

end;

procedure TFReporteResturant.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FReporteResturant := nil;
Action := caFree;
end;

end.
