unit Unit60;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Data.DB,
  ZAbstractRODataset, ZDataset, frxClass, frxDBSet, cxGroupBox,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier, cxRadioGroup, ComObj, excel2000;

type
  TFrmRVFecha = class(TForm)
    inicio: TcxDateEdit;
    Label2: TLabel;
    fechafinal: TcxDateEdit;
    Label3: TLabel;
    cxButton2: TcxButton;
    cuadre: TZReadOnlyQuery;
    Config: TfrxDBDataset;
    gatos: TfrxReport;
    mASTER: TfrxDBDataset;
    dscategoria: TDataSource;
    Edit3: TEdit;
    PrintCat: TfrxReport;
    Label1: TLabel;
    cuadreCOD_ART: TWideStringField;
    cuadreSUM: TExtendedField;
    cuadreARTICULO: TWideStringField;
    cuadreCONDICION: TWideStringField;
    cuadreTVENTA: TExtendedField;
    cuadreSUM_1: TExtendedField;
    RgTipo: TcxRadioGroup;
    ticker: TfrxReport;
    procedure cxButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRVFecha: TFrmRVFecha;

implementation

{$R *.dfm}

uses Unit2, Unit57, Unit63;

procedure TFrmRVFecha.cxButton1Click(Sender: TObject);
begin
 datos.FbCategorias.Open;
 FrmBuscarCategoria.edit1.text := '2';
 FrmBuscarCategoria.showmodal;
end;

procedure TFrmRVFecha.cxButton2Click(Sender: TObject);
var
Plantilla : Variant;
Linha, cont : Integer;
begin


 if RgTipo.ItemIndex = 0 then begin

          with cuadre do
            begin
              close;
              sql.clear;
              sql.add('select a.cod_art, Sum(a.cantidad), b.articulo, c.condicion, Sum(a.cantidad * a.precio) tVENTA, Sum((a.cantidad * a.precio) - (a.cantidad * b.costo_pr))  from detailfact a');
              sql.add('left join mtartuculos b On a.articuloid = B.cod_art');
              sql.add('left join master_fact c On a.masterid = c.no_fact');
              sql.Add('where c.fecha_fac >=:fecha1');
              sql.Add('and c.fecha_fac <=:fecha2');
              sql.Add('and c.condicion =:dd');
              sql.Add('and c.situacion =:situacion');
             // sql.Add('AND c.ROTULO =:OPCION5');
              sql.Add('group by a.cod_art, b.articulo,c.condicion');
              Params[0].Value := inicio.Date;
              Params[1].Value := fechafinal.Date;
              params[2].Value := 'ACTIVA';
              Params[3].Value := 'IMPRESA';
             // Params[4].Value := 'FACTURACION';

              open;
            end;

                       ticker.variables['fecha1']:=quotedstr(inicio.Text);
                       ticker.variables['Empleado']:=quotedstr('Reporte de Articulos Vendidos x Fecha');
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
              sql.add('select a.cod_art, Sum(a.cantidad), b.articulo, c.condicion, Sum(a.cantidad * a.precio) tVENTA, Sum((a.cantidad * a.precio) - (a.cantidad * b.costo_pr))  from detailfact a');
              sql.add('left join mtartuculos b On a.articuloid = B.cod_art');
              sql.add('left join master_fact c On a.masterid = c.no_fact');
              sql.Add('where c.fecha_fac >=:fecha1');
              sql.Add('and c.fecha_fac <=:fecha2');
              sql.Add('and c.condicion =:dd');
              sql.Add('and c.situacion =:situacion');
             // sql.Add('AND c.ROTULO =:OPCION5');
              sql.Add('group by a.cod_art, b.articulo,c.condicion');
              Params[0].Value := inicio.Date;
              Params[1].Value := fechafinal.Date;
              params[2].Value := 'ACTIVA';
              Params[3].Value := 'IMPRESA';
             // Params[4].Value := 'FACTURACION';

              open;
            end;

  Linha := 7;
  Plantilla := CreateOleObject('Excel.Application');

  Plantilla.caption:= 'Reporte de Venta';
  Plantilla.visible := false;
  plantilla.workbooks.add(1);



  Plantilla.Range['a1', 'a5'].Font.Bold:=true;
  Plantilla.Range['a1', 'a5'].Font.size:=12;
        // Titulo
        Plantilla.cells[1,1] := 'PRINTSOFT PVS';
        Plantilla.cells[2,1] := datos.ZUconfiguracionEMPRESA.Value;
        Plantilla.cells[3,1] := 'Reporte de Venta de Productos por Fecha';
       // Plantilla.cells[4,1] := 'Tipo :'+cxComboBox1.Text ;
         Plantilla.cells[5,1] := 'Desde :'+inicio.Text+' Hasta : '+fechafinal.Text;

       Plantilla.Range['a6', 'j6'].Font.Bold:=true;
       Plantilla.Range['a6', 'j6'].Font.size:=12;
        // Titulo
        Plantilla.cells[6,1]:= 'Codigo';
        Plantilla.cells[6,2]:= 'Nombre de Aritculo';
        Plantilla.cells[6,3]:= 'Cantidad';

        cuadre.DisableControls;
        with cuadre do begin
        try
            while not eof do
               begin

                     Plantilla.cells[Linha, 1]:= cuadreCOD_ART.Value;
                     Plantilla.cells[Linha, 2]:= cuadreARTICULO.Value ;
                     Plantilla.cells[Linha, 3]:= cuadreSUM.Value ;

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

procedure TFrmRVFecha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmRVFecha := nil;
Action := caFree;
end;

procedure TFrmRVFecha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    close;
  end;
end;

end.
