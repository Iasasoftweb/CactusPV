object FrmRCompraXClientes: TFrmRCompraXClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte de Compras por Clientes'
  ClientHeight = 523
  ClientWidth = 797
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 74
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 284
      Top = 17
      Width = 59
      Height = 13
      Caption = 'Fecha Inicial'
    end
    object Label3: TLabel
      Left = 284
      Top = 44
      Width = 54
      Height = 13
      Caption = 'Fecha Final'
    end
    object Label1: TLabel
      Left = 478
      Top = 11
      Width = 68
      Height = 13
      Caption = 'Buscar Cliente'
    end
    object Label4: TLabel
      Left = 478
      Top = 49
      Width = 143
      Height = 18
      Caption = 'Nombre del Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object op1: TcxRadioGroup
      Left = 14
      Top = 5
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Consolidado'
        end
        item
          Caption = 'Detallado'
        end
        item
          Caption = 'X Clientes'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = op1Click
      Height = 57
      Width = 259
    end
    object fechafinal: TcxDateEdit
      Left = 349
      Top = 41
      TabOrder = 1
      Width = 123
    end
    object inicio: TcxDateEdit
      Left = 349
      Top = 14
      TabOrder = 2
      Width = 123
    end
    object cxButton2: TcxButton
      Left = 716
      Top = 35
      Width = 75
      Height = 33
      Caption = '&Imprimir'
      Enabled = False
      OptionsImage.ImageIndex = 1007
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 716
      Top = 2
      Width = 75
      Height = 33
      Caption = 'Ejecutar'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000200001009F0508
        06CB060807D00203029900000008000000000000000000000000000000000000
        000501020186070A08BF050705BB000100A8000000220000003E040504CB1113
        12F2131413F70A0C0AC50000001D000000000000000000000000000000000000
        0018070908B2161716E8101311E4030604D300000035060807CE3A2D39FF734E
        6DFF6F4168FF583F56FF121312B3000000080000000000000000000000061012
        10AD533D52FF663760FF774E6FFF4F3A4CFF080909B7110F12EB632F5FFFB072
        A7FF905386FF6B4367FF393339F70304048201010122010101190404047E3631
        36F65F375AFF8A4A80FFBD82B3FF824F7BFF171218EF100F11E9501F4AFF934E
        89FF79326FFF592E54FF686469FF5A5A58FF1A1A1ACB151514BD605E5CFF6D6B
        6DFF512E4DFF722B69FFA9669EFF7C4175FF1C161EEA121312D72D272CFF270A
        23FF42133CFF6F5D6DFF666868FF7A7877FF363534FF2E2C2CFF7C7A78FF5B5D
        5CFF645C64FF381836FF3F0E39FF472B45FF171616DC0000003E424341EF7B7D
        7AFF8C8D8BFF5F605FFF313032FF696667FF555554FF585655FF777676FF2F2E
        31FF414243FF727472FF777774FF424441F002010144000000001A1919786A68
        67FF4E4B4BFF2E2C2EFF525052FF656364FF595858FF5B5959FF616163FF5D5B
        5CFF343234FF4E4D4DFF585655FF3332328E000000000000000015151527413F
        3FEE585554FF7A7676FF7C7A7BFF424042FD4B4A4AFF4E4C4DFF393639FB6360
        60FF726F70FF575656FF464543F41B1A1A350000000000000000000000000C0C
        0C60232323B84C4B4BFD5B5959FF212021C9181818911717178D1C1B1CBC5B59
        5AFF515050FF292928BC13121268000000000000000000000000000000000000
        000000000001141313AF343332E80505067F0000000000000000020202722B2A
        2BE8232222B90101010500000000000000000000000000000000000000000000
        000000000000030303280A0A0A410101011C0000000000000000000000190707
        0741060606290000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object Edit1: TEdit
      Left = 478
      Top = 25
      Width = 158
      Height = 21
      CharCase = ecUpperCase
      Color = 10930928
      Enabled = False
      TabOrder = 5
      OnChange = Edit1Change
    end
    object cxButton3: TcxButton
      Left = 653
      Top = 23
      Width = 33
      Height = 25
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 6
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 627
      Top = 23
      Width = 33
      Height = 25
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F800000006624B4744000000000000F943BB7F000000097048597300000B1300
        000B1301009A9C180000018149444154480DC5D5BF4AC3501406705317A182E9
        60E2203815BA1B075DA38EEAD804DFC2A6F511525FA26E425FC18E46C4B88B6F
        A07450DA410763FC86EFCAE5D2E426A1C1033F28A7E79E5C92FB67A5EE304AD4
        AEC12A7F27F0B58C0758E0C2311C80CDFC1B44700B139842E938872748E91B3E
        291179D6F8651AAFC395D4E00E02D8058B1C18F0BF9486D0046D0C3960063D30
        736A4D3E7CCE31A1AEB9073F1C70028582B5338EF5F33E68CC99F40A2C063577
        217D132B6BF6E29D6F4879176EA02DE5DACCB922C131117B788B6673BD60F60D
        184B0FDE21F171C7AC11D1677E0486BA895E20E16A91A323357C24F1C08E52BB
        C71ECFECF9174DF8E01AB7418D6D78809462E6D4B0D9E35D2CD9460D470F3032
        5E9153C72B3260C481C1D23F32A3CB3FA38ACBD4847BF6E8EA365A5061A305BA
        8DA61E15A75034CEA4A3C2D315879CC99CB36AE5D4B6A05FE2B0E39EE0894A11
        0CB8BA6C72E052BC730A39B670F8CA8593645C38316B2B5D999B700847B00F5B
        CCBF72F6139AFED7A55F7FFC02E5278CE8CB7860760000000049454E44AE4260
        82}
      TabOrder = 7
      OnClick = cxButton4Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 79
    Width = 781
    Height = 436
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUM
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CLIENTEID: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'CLIENTEID'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 149
      end
      object cxGrid1DBTableView1NOMBRES: TcxGridDBColumn
        Caption = 'Nombre del Cliente'
        DataBinding.FieldName = 'NOMBRES'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 384
      end
      object cxGrid1DBTableView1SUM: TcxGridDBColumn
        Caption = 'Total Compra'
        DataBinding.FieldName = 'SUM'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 211
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 8
    Top = 312
    Width = 781
    Height = 203
    TabOrder = 2
    Visible = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsDetalle
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid2DBTableView1TOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1ARTICULOID: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'ARTICULOID'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
      end
      object cxGrid2DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Nombre del Producto'
        DataBinding.FieldName = 'ARTICULO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 447
      end
      object cxGrid2DBTableView1CANT: TcxGridDBColumn
        Caption = 'Cant.'
        DataBinding.FieldName = 'CANT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 101
      end
      object cxGrid2DBTableView1TOTAL: TcxGridDBColumn
        Caption = 'Total Efectivo '
        DataBinding.FieldName = 'TOTAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 123
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 800
    Top = 80
    Width = 296
    Height = 325
    TabOrder = 3
    object cxGrid3: TcxGrid
      Left = 1
      Top = 1
      Width = 294
      Height = 323
      Align = alClient
      TabOrder = 0
      object cxGrid3DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid3DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid3DBTableView1Column1: TcxGridDBColumn
          Caption = 'Nombre Cliente'
          DataBinding.FieldName = 'NOMBRES'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Width = 282
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
  end
  object Edit2: TEdit
    Left = 472
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object Qconsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.clienteid, b.nombres, sum(a.montopago) from master_fact' +
        ' a'
      'left join cliente b On a.clienteid = b.codigo'
      'where a.situacion = '#39'IMPRESA'#39
      'group by a.clienteid, b.nombres')
    Params = <>
    Left = 88
    Top = 88
    object QconsultaCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object QconsultaNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 200
    end
    object QconsultaSUM: TExtendedField
      FieldName = 'SUM'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object DETALLE: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.articuloid, b.articulo, Sum(a.cantidad) Cant, Sum(a.tot' +
        'al) total from detailfact a'
      'left join mtartuculos b On a.articuloid = b.cod_art'
      'group by a.articuloid, b.articulo')
    Params = <>
    Left = 152
    Top = 96
    object DETALLEARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object DETALLEARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object DETALLECANT: TExtendedField
      FieldName = 'CANT'
      ReadOnly = True
      Precision = 19
    end
    object DETALLETOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object DsDetalle: TDataSource
    DataSet = DETALLE
    Left = 192
    Top = 88
  end
  object DsConsulta: TDataSource
    DataSet = Qconsulta
    Left = 280
    Top = 96
  end
  object Config: TfrxDBDataset
    UserName = 'configuracion'
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
      'MSN_PIE_FACT=MSN_PIE_FACT'
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
      'REDONDEAR=REDONDEAR'
      'COMISIONVENTA=COMISIONVENTA'
      'CONFID=CONFID'
      'LOGO_FRONTAR=LOGO_FRONTAR'
      'LOGOF_TXT=LOGOF_TXT'
      'LOGOP_TXT=LOGOP_TXT'
      'INSERTARSERIAL=INSERTARSERIAL'
      'DIRECCION=DIRECCION'
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
      'MENSAJE_PIE2=MENSAJE_PIE2')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 118
    Top = 192
  end
  object PRNDetalle: TfrxDBDataset
    UserName = 'detalle'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ARTICULOID=ARTICULOID'
      'ARTICULO=ARTICULO'
      'CANT=CANT'
      'TOTAL=TOTAL')
    DataSet = DETALLE
    BCDToCurrency = False
    Left = 38
    Top = 192
  end
  object consulta: TfrxDBDataset
    UserName = 'master'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLIENTEID=CLIENTEID'
      'NOMBRES=NOMBRES'
      'SUM=SUM')
    DataSet = Qconsulta
    BCDToCurrency = False
    Left = 110
    Top = 240
  end
  object reporte2: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42548.653833634300000000
    ReportOptions.LastChange = 42548.671737349500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 216
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = PRNDetalle
        DataSetName = 'detalle'
      end
      item
        DataSet = consulta
        DataSetName = 'master'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fecha1'
        Value = Null
      end
      item
        Name = 'fecha2'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 177.637910000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000001000
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 9.559060000000000000
          Top = 26.779530000000000000
          Width = 400.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 37.559060000000000000
          Top = 50.779529999999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 185.559060000000000000
          Top = 49.779529999999990000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 12.559060000000000000
          Top = 50.779529999999990000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 150.559060000000000000
          Top = 50.779529999999990000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de Compra x Cliente C/ Detalle')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 3.779530000000001000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 22.677180000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 147.944960000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object fecha1: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha2]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 220.992270000000000000
          Top = 121.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desde :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hasta :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 154.960730000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nombre de Cliente')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 154.960730000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Ventas')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 173.858380000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 154.960730000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 27.456710000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = consulta
        DataSetName = 'master'
        RowCount = 0
        object masterNOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 1.000000000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRES'
          DataSet = consulta
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NOMBRES"]')
          ParentFont = False
        end
        object masterSUM: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'SUM'
          DataSet = consulta
          DataSetName = 'master'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."SUM"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 22.677180000000020000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTEID'
          DataSet = consulta
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."CLIENTEID"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 343.937230000000000000
        Width = 740.409927000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 7.779530000000023000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 7.559059999999988000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Itmes :')
          ParentFont = False
        end
      end
    end
  end
  object reporte1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42548.653833634300000000
    ReportOptions.LastChange = 42548.671737349500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 328
    Top = 216
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = PRNDetalle
        DataSetName = 'detalle'
      end
      item
        DataSet = consulta
        DataSetName = 'master'
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
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 177.637910000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000001000
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 9.559060000000000000
          Top = 26.779530000000000000
          Width = 400.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 37.559060000000000000
          Top = 50.779529999999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 185.559060000000000000
          Top = 49.779529999999990000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 12.559060000000000000
          Top = 50.779529999999990000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 150.559060000000000000
          Top = 50.779529999999990000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de Reposici'#243'n Inventario')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 3.779530000000001000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 22.677180000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 147.944960000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object fecha1: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha2]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 186.976500000000000000
          Top = 121.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desde :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hasta :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 153.181200000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nombre del Cliente')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 151.181200000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Ventas')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 173.858380000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 152.960730000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 46.354360000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = consulta
        DataSetName = 'master'
        RowCount = 0
        object masterNOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 1.000000000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRES'
          DataSet = consulta
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NOMBRES"]')
          ParentFont = False
        end
        object masterSUM: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'SUM'
          DataSet = consulta
          DataSetName = 'master'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."SUM"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 22.677180000000020000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 58.472480000000000000
          Top = 23.897650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Productos')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Top = 23.897650000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Compras')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTEID'
          DataSet = consulta
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."CLIENTEID"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 354.685220000000000000
          Top = 24.677180000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cant')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        DataSet = PRNDetalle
        DataSetName = 'detalle'
        RowCount = 0
        object detalleNOMBRE_RUTA: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 56.692950000000010000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'ARTICULO'
          DataSet = PRNDetalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."ARTICULO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'CANT'
          DataSet = PRNDetalle
          DataSetName = 'detalle'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."CANT"]')
          ParentFont = False
        end
        object detalleSUM: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = PRNDetalle
          DataSetName = 'detalle'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."TOTAL"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.031540000000010000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 11.559059999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 11.338590000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Itmes :')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 37.795300000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 41.574830000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recibido por:')
          ParentFont = False
        end
      end
    end
  end
end
