object FrmComisionServicios: TFrmComisionServicios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte de Comisi'#243'n Servicios'
  ClientHeight = 483
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 319
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
    Left = 319
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
  object Label3: TLabel
    Left = 8
    Top = 22
    Width = 21
    Height = 13
    Caption = 'Cod'
    FocusControl = cxDBTextEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 45
    Width = 59
    Height = 13
    Caption = 'Instalador'
    FocusControl = cxDBTextEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object inicio: TcxDateEdit
    Left = 395
    Top = 18
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 123
  end
  object fechafinal: TcxDateEdit
    Left = 394
    Top = 41
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 1
    Width = 123
  end
  object cxButton1: TcxButton
    Left = 530
    Top = 30
    Width = 75
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
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 69
    Width = 597
    Height = 330
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'MONTOSERVICIO'
          Column = cxGrid1DBTableView1MONTOTRABAJO
        end
        item
          Kind = skSum
          FieldName = 'MONTOCOMISION'
          Column = cxGrid1DBTableView1COMISION
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Width = 82
      end
      object cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn
        Caption = 'Instalador'
        DataBinding.FieldName = 'NOMBRES_EMP'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 232
      end
      object cxGrid1DBTableView1MONTOTRABAJO: TcxGridDBColumn
        Caption = 'Monto $$'
        DataBinding.FieldName = 'MONTOSERVICIO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 124
      end
      object cxGrid1DBTableView1COMISION: TcxGridDBColumn
        Caption = 'Comision'
        DataBinding.FieldName = 'MONTOCOMISION'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 110
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 132
    Top = 10
    Width = 36
    Height = 29
    Hint = 'Buscar Instalador'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 980
    OptionsImage.Images = FrmHome.RibbonImages16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 73
    Top = 45
    DataBinding.DataField = 'NOMBRES_EMP'
    DataBinding.DataSource = DsTecnico
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.Color = 12582911
    TabOrder = 5
    Width = 213
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 70
    Top = 18
    DataBinding.DataField = 'COD_EMP'
    DataBinding.DataSource = DsTecnico
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.Color = 12582911
    TabOrder = 6
    Width = 56
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 405
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Height = 70
    Width = 597
    object cxButton3: TcxButton
      Left = 311
      Top = 24
      Width = 137
      Height = 33
      Caption = 'Realizar Pago'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 728
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 0
    end
    object cxButton4: TcxButton
      Left = 159
      Top = 24
      Width = 137
      Height = 33
      Caption = 'Imprimir Reporte'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 1006
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      OnClick = cxButton4Click
    end
  end
  object cxButton5: TcxButton
    Left = 170
    Top = 10
    Width = 39
    Height = 29
    Hint = 'Borrar Instalador'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 961
    OptionsImage.Images = FrmHome.RibbonImages16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = cxButton5Click
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.nombres_emp from COMISIONINSTALADOR a'
      'left join mtempleado b On a.id_emp = b.cod_emp1')
    Params = <>
    Left = 272
    Top = 176
    object consultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object consultaID_EMP: TIntegerField
      FieldName = 'ID_EMP'
    end
    object consultaID_FACT: TIntegerField
      FieldName = 'ID_FACT'
    end
    object consultaMONTOSERVICIO: TFloatField
      FieldName = 'MONTOSERVICIO'
      currency = True
    end
    object consultaMONTOCOMISION: TFloatField
      FieldName = 'MONTOCOMISION'
      currency = True
    end
    object consultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object consultaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object consultaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 216
    Top = 192
  end
  object Tecnicos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select cod_emp, nombres_emp, cod_emp1 from mtempleado'
      'where cargo = '#39'INSTALADOR'#39)
    Params = <>
    Left = 428
    Top = 210
    object TecnicosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object TecnicosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object TecnicosCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
      Required = True
    end
  end
  object DsTecnico: TDataSource
    DataSet = Tecnicos
    Left = 428
    Top = 162
  end
  object FXConsulta: TfrxDBDataset
    UserName = 'FxConsulta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_EMP=ID_EMP'
      'ID_FACT=ID_FACT'
      'MONTOSERVICIO=MONTOSERVICIO'
      'MONTOCOMISION=MONTOCOMISION'
      'ESTADO=ESTADO'
      'FECHA=FECHA'
      'NOMBRES_EMP=NOMBRES_EMP')
    DataSet = consulta
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
          Left = 9.579530000000000000
          Top = 101.861410000000000000
          Width = 777.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE COMISION X MONTO FACTURA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 207.874150000000000000
          Width = 111.118120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Factura')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 128.504020000000000000
          Top = 207.874150000000000000
          Width = 111.118120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Monto Factura')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 257.008040000000000000
          Top = 207.874150000000000000
          Width = 111.118120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Comision')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 225.992270000000000000
          Width = 449.764070000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Top = 207.874150000000000000
          Width = 442.205010000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 185.196970000000000000
          Width = 145.133890000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre del Empleado')
          ParentFont = False
        end
        object empleado: TfrxMemoView
          Left = 143.622140000000000000
          Top = 185.196970000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[empleado]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 68.031540000000010000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Left = 151.181200000000000000
          Top = 7.559059999999988000
          Width = 111.118120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Facturado')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.779530000000022000
          Width = 449.764070000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 151.181200000000000000
          Top = 34.015769999999970000
          Width = 118.677180000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Comisionado')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 302.362400000000000000
          Top = 7.559059999999988000
          Width = 124.724490000000000000
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
            '[SUM(<FxConsulta."MONTOPAGO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 298.582870000000000000
          Top = 30.236240000000010000
          Width = 128.504020000000000000
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
            '[SUM(<FxConsulta."TCOMISION">,MasterData1)]')
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
          DataField = 'FECHA_FAC'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          Memo.UTF8W = (
            '[FxConsulta."FECHA_FAC"]')
        end
        object FxConsultaMONTOPAGO: TfrxMemoView
          Left = 128.504020000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FxConsulta."MONTOPAGO"]')
          ParentFont = False
        end
        object FxConsultaTCOMISION: TfrxMemoView
          Left = 264.567100000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'TCOMISION'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FxConsulta."TCOMISION"]')
          ParentFont = False
        end
      end
    end
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
  object Ticket: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43277.179051377300000000
    ReportOptions.LastChange = 43617.751862858800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 296
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
      PaperWidth = 111.760000000000000000
      PaperHeight = 177.800000000000000000
      PaperSize = 256
      LeftMargin = 2.540000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 9.906000000000000000
      BottomMargin = 9.906000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 226.771800000000000000
        Top = 19.200000000000000000
        Width = 375.360242420000000000
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
          Width = 274.393940000000000000
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
          Width = 255.193940000000000000
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
          Top = 41.574830000000010000
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
          Top = 41.574830000000010000
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
          Top = 56.692950000000000000
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
          Left = 67.200000000000000000
          Top = 92.261410000000000000
          Width = 249.600000000000000000
          Height = 28.800000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE COMISION X SERVICIOS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 207.874150000000000000
          Width = 82.318120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Factura')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 137.704020000000000000
          Top = 207.874150000000000000
          Width = 82.318120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Monto Factura')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 260.408040000000000000
          Top = 207.874150000000000000
          Width = 63.118120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Comision')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 225.992270000000000000
          Width = 363.364070000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Top = 207.874150000000000000
          Width = 375.005010000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 185.196970000000000000
          Width = 145.133890000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre del Empleado')
          ParentFont = False
        end
        object empleado: TfrxMemoView
          Left = 143.622140000000000000
          Top = 185.196970000000000000
          Width = 148.157700000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[empleado]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 183.231540000000000000
        Top = 384.000000000000000000
        Width = 375.360242420000000000
        object Memo9: TfrxMemoView
          Left = 7.181200000000000000
          Top = 7.559059999999988000
          Width = 111.118120000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Facturado')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.779530000000022000
          Width = 315.364070000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 7.181200000000000000
          Top = 34.015769999999980000
          Width = 118.677180000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Comisionado')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 129.562400000000000000
          Top = 7.559059999999988000
          Width = 105.524490000000000000
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
            '[SUM(<FxConsulta."MONTOSERVICIO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 134.382870000000000000
          Top = 32.236240000000010000
          Width = 99.704020000000000000
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
            '[SUM(<FxConsulta."MONTOCOMISION">,MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 73.600000000000000000
          Top = 108.600000000000000000
          Width = 209.764070000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 132.800000000000000000
          Top = 118.200000000000000000
          Width = 118.677180000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Firma y Cedula')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 307.200000000000000000
        Width = 375.360242420000000000
        DataSet = FXConsulta
        DataSetName = 'FxConsulta'
        RowCount = 0
        object FxConsultaFECHA_FAC: TfrxMemoView
          Left = 3.779530000000000000
          Width = 88.970130000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxConsulta."FECHA"]')
          ParentFont = False
        end
        object FxConsultaMONTOPAGO: TfrxMemoView
          Left = 126.504020000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOSERVICIO'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FxConsulta."MONTOSERVICIO"]')
          ParentFont = False
        end
        object FxConsultaTCOMISION: TfrxMemoView
          Left = 243.567100000000000000
          Width = 84.585900000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOCOMISION'
          DataSet = FXConsulta
          DataSetName = 'FxConsulta'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FxConsulta."MONTOCOMISION"]')
          ParentFont = False
        end
      end
    end
  end
end
