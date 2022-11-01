object FrmBalanceBanco: TFrmBalanceBanco
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Balance'
  ClientHeight = 529
  ClientWidth = 757
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 24
    Top = 16
    TabOrder = 0
    Height = 73
    Width = 713
    object Label1: TLabel
      Left = 504
      Top = 14
      Width = 83
      Height = 13
      Caption = 'Balance Actual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 32
      Width = 38
      Height = 25
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object Edit1: TEdit
      Left = 176
      Top = 33
      Width = 207
      Height = 24
      Color = 10930928
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 54
      Top = 33
      Width = 124
      Height = 24
      Color = 10930928
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 389
      Top = 28
      Width = 97
      Height = 33
      Caption = 'Consultar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 216
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 504
      Top = 33
      DataBinding.DataField = 'BALANCE'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 161
    end
  end
  object cxGrid1: TcxGrid
    Left = 35
    Top = 96
    Width = 702
    Height = 369
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha Trans.'
        DataBinding.FieldName = 'FECHA'
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
        Width = 86
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Transaci'#243'n'
        DataBinding.FieldName = 'TRANSACION'
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
        Width = 233
      end
      object cxGrid1DBTableView1ENTRADA: TcxGridDBColumn
        Caption = 'Entrada'
        DataBinding.FieldName = 'ENTRADA'
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
        Width = 135
      end
      object cxGrid1DBTableView1SALIDA: TcxGridDBColumn
        Caption = 'Salida'
        DataBinding.FieldName = 'SALIDA'
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
        Width = 125
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Balance'
        DataBinding.FieldName = 'ULTIMO'
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
        Width = 98
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Edit3: TEdit
    Left = 376
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object cxButton3: TcxButton
    Left = 600
    Top = 480
    Width = 137
    Height = 41
    Caption = 'Imprimir Transaciones'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 101
    OptionsImage.Images = FrmConfig.RibbonImages16
    TabOrder = 3
    OnClick = cxButton3Click
  end
  object Panel1: TPanel
    Left = 240
    Top = 224
    Width = 297
    Height = 121
    BevelKind = bkSoft
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 35
      Top = 17
      Width = 59
      Height = 13
      Caption = 'Fecha Inicial'
    end
    object Label3: TLabel
      Left = 35
      Top = 72
      Width = 54
      Height = 13
      Caption = 'Fecha Final'
    end
    object inicio: TcxDateEdit
      Left = 35
      Top = 36
      TabOrder = 0
      Width = 123
    end
    object fechafinal: TcxDateEdit
      Left = 35
      Top = 87
      TabOrder = 1
      Width = 126
    end
    object cxButton4: TcxButton
      Left = 192
      Top = 32
      Width = 75
      Height = 73
      Caption = 'Imprimir'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 183
      OptionsImage.Images = FrmConfig.RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      OnClick = cxButton4Click
    end
  end
  object Consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.no_cta, c.transacion from tb_transaciones a'
      'inner join tb_bancos b on a.id_cta = b.id'
      'inner join tb_tipotrans c On a.tipo_transacion = c.id')
    Params = <>
    Left = 536
    Top = 200
    object ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ConsultaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ConsultaID_CTA: TIntegerField
      FieldName = 'ID_CTA'
    end
    object ConsultaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      currency = True
    end
    object ConsultaSALIDA: TFloatField
      FieldName = 'SALIDA'
      currency = True
    end
    object ConsultaTIPO_TRANSACION: TIntegerField
      FieldName = 'TIPO_TRANSACION'
    end
    object ConsultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ConsultaNO_CTA: TWideStringField
      FieldName = 'NO_CTA'
      Size = 15
    end
    object ConsultaTRANSACION: TWideStringField
      FieldName = 'TRANSACION'
      Size = 40
    end
    object ConsultaULTIMO: TFloatField
      FieldName = 'ULTIMO'
      currency = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = Consulta
    Left = 488
    Top = 200
  end
  object Balance: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select (sum(a.entrada) - Sum(a.salida)) Balance from tb_transaci' +
        'ones a'
      'inner join tb_bancos b on a.id_cta = b.id'
      'inner join tb_tipotrans c On a.tipo_transacion = c.id')
    Params = <>
    Left = 184
    Top = 320
    object BalanceBALANCE: TExtendedField
      FieldName = 'BALANCE'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object DataSource1: TDataSource
    DataSet = Balance
    Left = 304
    Top = 168
  end
  object RxData: TfrxDBDataset
    UserName = 'Data1'
    CloseDataSource = False
    DataSet = Consulta
    BCDToCurrency = False
    Left = 424
    Top = 376
  end
  object Imprime: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43123.410025358800000000
    ReportOptions.LastChange = 43123.426108148150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 288
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = RxData
        DataSetName = 'Data1'
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
        Name = 'Cta'
        Value = ''
      end
      item
        Name = 'Banco'
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
      PaperSize = 256
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 9.906000000000000000
      BottomMargin = 9.906000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 215.800000000000000000
        Top = 19.200000000000000000
        Width = 741.120478640000000000
        object configuracionEMPRESA: TfrxMemoView
          Left = 13.379530000000000000
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
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          Left = 15.379530000000000000
          Top = 23.000000000000000000
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
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          Left = 43.379530000000000000
          Top = 47.000000000000000000
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
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 191.379530000000000000
          Top = 46.000000000000000000
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
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 18.379530000000000000
          Top = 47.000000000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 156.379530000000000000
          Top = 47.000000000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 9.600000000000000000
          Top = 76.888250000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de Transaciones')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 584.088560000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 584.088560000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 19.996970000000000000
          Top = 150.185900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desde :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 21.200000000000000000
          Top = 168.200000000000000000
          Width = 46.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hasta :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 191.400000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object fecha1: TfrxMemoView
          Left = 76.800000000000000000
          Top = 151.000000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Memo.UTF8W = (
            '[fecha1]')
        end
        object fecha2: TfrxMemoView
          Left = 76.800000000000000000
          Top = 167.200000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Memo.UTF8W = (
            '[fecha2]')
        end
        object Banco: TfrxMemoView
          Left = 19.200000000000000000
          Top = 105.600000000000000000
          Width = 316.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Banco]')
          ParentFont = False
        end
        object Cta: TfrxMemoView
          Left = 19.200000000000000000
          Top = 122.800000000000000000
          Width = 316.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Cta]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 19.200000000000000000
          Top = 195.000000000000000000
          Width = 56.088250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 215.800000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 102.400000000000000000
          Top = 194.000000000000000000
          Width = 180.888250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TRANSACION')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 337.200000000000000000
          Top = 194.000000000000000000
          Width = 104.088250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ENTRADA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 470.400000000000000000
          Top = 194.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SALIDA')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 604.800000000000000000
          Top = 193.000000000000000000
          Width = 104.088250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BALANCE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 19.200000000000000000
        Top = 259.200000000000000000
        Width = 741.120478640000000000
        DataSet = RxData
        DataSetName = 'Data1'
        RowCount = 0
        object Data1FECHA: TfrxMemoView
          Left = 19.200000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA'
          DataSet = RxData
          DataSetName = 'Data1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Data1."FECHA"]')
          ParentFont = False
        end
        object Data1TRANSACION: TfrxMemoView
          Left = 100.000000000000000000
          Width = 211.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TRANSACION'
          DataSet = RxData
          DataSetName = 'Data1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Data1."TRANSACION"]')
          ParentFont = False
        end
        object Data1ENTRADA: TfrxMemoView
          Left = 336.000000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'ENTRADA'
          DataSet = RxData
          DataSetName = 'Data1'
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
            '[Data1."ENTRADA"]')
          ParentFont = False
        end
        object Data1SALIDA: TfrxMemoView
          Left = 460.800000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'SALIDA'
          DataSet = RxData
          DataSetName = 'Data1'
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
            '[Data1."SALIDA"]')
          ParentFont = False
        end
        object Data1ULTIMO: TfrxMemoView
          Left = 595.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'ULTIMO'
          DataSet = RxData
          DataSetName = 'Data1'
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
            '[Data1."ULTIMO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 48.000000000000000000
        Top = 297.600000000000000000
        Width = 741.120478640000000000
        object Line3: TfrxLineView
          Left = -9.600000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
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
    Left = 680
    Top = 232
  end
end
