object FrmDecomisos: TFrmDecomisos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Rporte de Articulos en Decomisos'
  ClientHeight = 487
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 21
    Width = 62
    Height = 13
    Caption = 'Fecha Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 45
    Width = 70
    Height = 13
    Caption = 'Fecha Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object fechafinal: TcxDateEdit
    Left = 94
    Top = 45
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 123
  end
  object inicio: TcxDateEdit
    Left = 94
    Top = 18
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 1
    Width = 123
  end
  object cxGrid1: TcxGrid
    Left = 6
    Top = 88
    Width = 643
    Height = 345
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSconsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'ARTICULO'
          Column = cxGrid1DBTableView1SALIDA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
      object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Nombre del Articulo'
        DataBinding.FieldName = 'ARTICULO'
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Width = 406
      end
      object cxGrid1DBTableView1SALIDA: TcxGridDBColumn
        Caption = 'Salida'
        DataBinding.FieldName = 'SALIDA'
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 246
    Top = 25
    Width = 115
    Height = 33
    Caption = 'Ejecutar'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000200001
      009F050806CB060807D002030299000000080000000000000000000000000000
      00000000000501020186070A08BF050705BB000100A8000000220000003E0405
      04CB111312F2131413F70A0C0AC50000001D0000000000000000000000000000
      000000000018070908B2161716E8101311E4030604D300000035060807CE3A2D
      39FF734E6DFF6F4168FF583F56FF121312B30000000800000000000000000000
      0006101210AD533D52FF663760FF774E6FFF4F3A4CFF080909B7110F12EB632F
      5FFFB072A7FF905386FF6B4367FF393339F70304048201010122010101190404
      047E363136F65F375AFF8A4A80FFBD82B3FF824F7BFF171218EF100F11E9501F
      4AFF934E89FF79326FFF592E54FF686469FF5A5A58FF1A1A1ACB151514BD605E
      5CFF6D6B6DFF512E4DFF722B69FFA9669EFF7C4175FF1C161EEA121312D72D27
      2CFF270A23FF42133CFF6F5D6DFF666868FF7A7877FF363534FF2E2C2CFF7C7A
      78FF5B5D5CFF645C64FF381836FF3F0E39FF472B45FF171616DC0000003E4243
      41EF7B7D7AFF8C8D8BFF5F605FFF313032FF696667FF555554FF585655FF7776
      76FF2F2E31FF414243FF727472FF777774FF424441F002010144000000001A19
      19786A6867FF4E4B4BFF2E2C2EFF525052FF656364FF595858FF5B5959FF6161
      63FF5D5B5CFF343234FF4E4D4DFF585655FF3332328E00000000000000001515
      1527413F3FEE585554FF7A7676FF7C7A7BFF424042FD4B4A4AFF4E4C4DFF3936
      39FB636060FF726F70FF575656FF464543F41B1A1A3500000000000000000000
      00000C0C0C60232323B84C4B4BFD5B5959FF212021C9181818911717178D1C1B
      1CBC5B595AFF515050FF292928BC131212680000000000000000000000000000
      00000000000000000001141313AF343332E80505067F00000000000000000202
      02722B2A2BE8232222B901010105000000000000000000000000000000000000
      00000000000000000000030303280A0A0A410101011C00000000000000000000
      0019070707410606062900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxButton4: TcxButton
    Left = 246
    Top = 439
    Width = 115
    Height = 33
    Caption = 'Imprimir Reporte'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 1006
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    OnClick = cxButton4Click
  end
  object Consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.fecha,a.cod_art, c.articulo, b.descripcion, sum(a.salid' +
        'a) salida from minventario a'
      'left join conceptos b On a.conceptoid = b.conceptoid'
      'left join mtartuculos c On a.cod_art = c.cod_art'
      'group by a.fecha,b.descripcion,a.cod_art,c.cod_cat, c.articulo')
    Params = <>
    Left = 456
    Top = 16
    object ConsultaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ConsultaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ConsultaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object ConsultaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object ConsultaSALIDA: TExtendedField
      FieldName = 'SALIDA'
      ReadOnly = True
      Precision = 19
    end
  end
  object DSconsulta: TDataSource
    DataSet = Consulta
    Left = 504
    Top = 32
  end
  object FxConfig: TfrxDBDataset
    UserName = 'FxConfig'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_COM=CODIGO_COM'
      'EMPRESA=EMPRESA'
      'RNC=RNC'
      'TELEFONO=TELEFONO'
      'FAX=FAX'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'CONTACTO=CONTACTO'
      'FACTIMPRIME=FACTIMPRIME'
      'GENERART=GENERART'
      'ITBIS=ITBIS'
      'AVG_GANANCIA=AVG_GANANCIA'
      'COBRAR_ITBS=COBRAR_ITBS'
      'THEMS=THEMS'
      'ANCHO=ANCHO'
      'ALTO=ALTO'
      'RUTABACKUP=RUTABACKUP'
      'ABRIRCAJON=ABRIRCAJON'
      'PTINTERTPV=PTINTERTPV'
      'CARGO_CARD=CARGO_CARD'
      'CARGO_CHEQUE=CARGO_CHEQUE'
      'IMP_CANT=IMP_CANT'
      'IMPRIMIRCREDITO=IMPRIMIRCREDITO'
      'IMPRIMIRCONTADO=IMPRIMIRCONTADO'
      'DESCUENTO=DESCUENTO'
      'TIPOITBS=TIPOITBS'
      'TERMINAL=TERMINAL'
      'STOPVENTAS=STOPVENTAS'
      'STOPCOMPRAS=STOPCOMPRAS'
      'CONTROLSTOPVENTAS=CONTROLSTOPVENTAS'
      'CONTROLSTOPCOMPRAS=CONTROLSTOPCOMPRAS'
      'NCF_CF_INICIO_NUMERO=NCF_CF_INICIO_NUMERO'
      'NCF_CF_INICIO_LETRA=NCF_CF_INICIO_LETRA'
      'NCF_CF_CONTADOR=NCF_CF_CONTADOR'
      'NCF_CF_FINAL_NUMERO=NCF_CF_FINAL_NUMERO'
      'NCF_VF_INICIO_NUMERO=NCF_VF_INICIO_NUMERO'
      'NCF_VF_INICIO_LETRA=NCF_VF_INICIO_LETRA'
      'NCF_VF_CONTADOR=NCF_VF_CONTADOR'
      'NCF_VF_FINAL_NUMERO=NCF_VF_FINAL_NUMERO'
      'NCF_ESP_INICIO_NUMERO=NCF_ESP_INICIO_NUMERO'
      'NCF_ESP_INICIO_LETRA=NCF_ESP_INICIO_LETRA'
      'NCF_ESP_CONTADOR=NCF_ESP_CONTADOR'
      'NCF_ESP_FINAL=NCF_ESP_FINAL'
      'NO_AUTORIZACION2=NO_AUTORIZACION2'
      'NO_AUTORIZACION3=NO_AUTORIZACION3'
      'NO_AUTORIZACION=NO_AUTORIZACION'
      'USAR_CF=USAR_CF'
      'USAR_VF=USAR_VF'
      'USAR_ESP=USAR_ESP'
      'ROTULO_FC=ROTULO_FC'
      'ROTULO_FVF=ROTULO_FVF'
      'ROTULO_ESP=ROTULO_ESP'
      'VARIABLE_DEDUCIBLE=VARIABLE_DEDUCIBLE'
      'LOGO=LOGO'
      'CLAVEANULAR=CLAVEANULAR'
      'TERMINAL_TPV=TERMINAL_TPV'
      'MONTOCF=MONTOCF'
      'COMISIONVENTA=COMISIONVENTA'
      'REDONDEAR=REDONDEAR'
      'CONFID=CONFID'
      'LOGO_FRONTAR=LOGO_FRONTAR'
      'LOGOF_TXT=LOGOF_TXT'
      'LOGOP_TXT=LOGOP_TXT'
      'INSERTARSERIAL=INSERTARSERIAL'
      'DIRECCION=DIRECCION'
      'MSN_PIE_FACT=MSN_PIE_FACT'
      'ITBIS_D=ITBIS_D'
      'ENLACEAWEB=ENLACEAWEB'
      'PISTOLAOPTICA=PISTOLAOPTICA'
      'TIPO_FACTURACION=TIPO_FACTURACION'
      'EXISTENCIAFACT=EXISTENCIAFACT'
      'RUTADB=RUTADB'
      'CANT_CAJA=CANT_CAJA'
      'TAZA=TAZA'
      'MONEDA=MONEDA'
      'APLICAR_AUMENTO_TAZA=APLICAR_AUMENTO_TAZA'
      'ANCHO_IMG_FRONTAL=ANCHO_IMG_FRONTAL'
      'ALTO_IMG_FRONTAL=ALTO_IMG_FRONTAL'
      'LEFT_IMAGEN=LEFT_IMAGEN'
      'RIGHT_IMAGEN=RIGHT_IMAGEN'
      'REDONDEOCOMPLETO=REDONDEOCOMPLETO'
      'CLAVEAUTORIZACION=CLAVEAUTORIZACION'
      'COMPROBANTEDEFAULT=COMPROBANTEDEFAULT'
      'USOAPLICACION=USOAPLICACION'
      'ARTICULOSVARIOS=ARTICULOSVARIOS'
      'MENSAJE_PIE1=MENSAJE_PIE1'
      'MENSAJE_PIE2=MENSAJE_PIE2'
      'IMPRESION_RAPIDA=IMPRESION_RAPIDA'
      'IMPRESIONDEFECTO=IMPRESIONDEFECTO'
      'TEXINICIAR=TEXINICIAR'
      'LONGTICKET=LONGTICKET'
      'IMPRIMEOPCIONAL=IMPRIMEOPCIONAL'
      'ENTRAREFECTIVOINICIAL=ENTRAREFECTIVOINICIAL'
      'CAJAID=CAJAID'
      'USARCASHDRAWER=USARCASHDRAWER'
      'ITBS_DEDUCIBLE=ITBS_DEDUCIBLE'
      'IMPRIMECOTIZA=IMPRIMECOTIZA'
      'USARRMA=USARRMA'
      'ALMACENRMA=ALMACENRMA'
      'ALMACENNOMBRE=ALMACENNOMBRE')
    DataSet = datos.Configuracion
    BCDToCurrency = False
    Left = 64
    Top = 232
  end
  object FXConsulta: TfrxDBDataset
    UserName = 'FxConsulta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FECHA=FECHA'
      'COD_ART=COD_ART'
      'ARTICULO=ARTICULO'
      'DESCRIPCION=DESCRIPCION'
      'SALIDA=SALIDA')
    DataSet = Consulta
    BCDToCurrency = False
    Left = 320
    Top = 24
  end
  object Reporte: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43277.179051377300000000
    ReportOptions.LastChange = 43277.179051377300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 168
    Datasets = <
      item
        DataSet = FxConfig
        DataSetName = 'FxConfig'
      end
      item
        DataSet = FXConsulta
        DataSetName = 'FxConsulta'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fecha1'
        Value = ''
      end
      item
        Name = 'fecha2'
        Value = ''
      end
      item
        Name = 'empleado'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 226.771800000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object fecha1: TfrxMemoView
          Left = 139.015770000000000000
          Top = 142.559060000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          Left = 141.395300000000000000
          Top = 163.559060000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fecha2]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 141.559060000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Inicial :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 5.779530000000000000
          Top = 164.559060000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Final :')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          Left = 9.579530000000000000
          Top = 7.559059999999999000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = FxConfig
          DataSetName = 'FxConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FxConfig."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 10.579530000000000000
          Top = 27.456710000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = FxConfig
          DataSetName = 'FxConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxConfig."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          Left = 39.815770000000000000
          Top = 56.913420000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = FxConfig
          DataSetName = 'FxConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxConfig."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 39.815770000000000000
          Top = 41.574830000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = FxConfig
          DataSetName = 'FxConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxConfig."RNC"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 9.579530000000000000
          Top = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 9.579530000000000000
          Top = 56.692949999999990000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel. :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = -16.877180000000000000
          Top = 109.420470000000000000
          Width = 777.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de Productos en Decomiso')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 207.874150000000000000
          Width = 46.866110000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha ')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 64.252010000000000000
          Top = 207.874150000000000000
          Width = 111.118120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 132.283550000000000000
          Top = 207.874150000000000000
          Width = 341.669450000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Articulos'
            '')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 9.204700000000001000
          Top = 225.992270000000000000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Top = 207.874150000000000000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 480.000310000000000000
          Top = 207.874150000000000000
          Width = 126.236240000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Salidas')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 68.031540000000010000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Left = 340.157700000000000000
          Top = 11.338590000000010000
          Width = 111.118120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cantidad Items')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.779530000000022000
          Width = 695.433520000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 464.882190000000000000
          Top = 11.338590000000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = FXConsulta
        DataSetName = 'FxConsulta'
        RowCount = 0
        object FxConsultaFECHA_FAC: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          Memo.UTF8W = (
            '[FxConsulta."FECHA"]')
        end
        object FxConsultaMONTOPAGO: TfrxMemoView
          Left = 60.472480000000000000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          DataField = 'COD_ART'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FxConsulta."COD_ART"]')
          ParentFont = False
        end
        object FxConsultaTCOMISION: TfrxMemoView
          Left = 136.063080000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataField = 'ARTICULO'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxConsulta."ARTICULO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 483.779840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'SALIDA'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FxConsulta."SALIDA"]')
          ParentFont = False
        end
      end
    end
  end
end
