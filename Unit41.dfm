object FrmRVentas: TFrmRVentas
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Reporte de Ventas x Fecha'
  ClientHeight = 311
  ClientWidth = 368
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 624
    Top = 136
    Width = 130
    Height = 13
    Caption = 'Resultudo de Utilidad Bruta'
  end
  object Label4: TLabel
    Left = 627
    Top = 210
    Width = 117
    Height = 13
    Caption = 'Total de Gastos Emitidos'
  end
  object Label5: TLabel
    Left = 627
    Top = 289
    Width = 127
    Height = 13
    Caption = 'Resultudo de Utilidad Neta'
  end
  object Panel1: TPanel
    Left = 5
    Top = 1
    Width = 358
    Height = 301
    BevelInner = bvRaised
    BevelKind = bkTile
    BorderStyle = bsSingle
    TabOrder = 0
    object Label2: TLabel
      Left = 17
      Top = 25
      Width = 59
      Height = 13
      Caption = 'Fecha Inicial'
    end
    object Label3: TLabel
      Left = 17
      Top = 56
      Width = 54
      Height = 13
      Caption = 'Fecha Final'
    end
    object Label6: TLabel
      Left = 72
      Top = 268
      Width = 214
      Height = 13
      Caption = 'Presione la tecle <ESC> para cerrar pantalla'
    end
    object inicio: TcxDateEdit
      Left = 82
      Top = 22
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'VisualStudio2013Light'
      StyleDisabled.LookAndFeel.SkinName = 'VisualStudio2013Light'
      StyleFocused.LookAndFeel.SkinName = 'VisualStudio2013Light'
      StyleHot.LookAndFeel.SkinName = 'VisualStudio2013Light'
      TabOrder = 0
      Width = 124
    end
    object fechafinal: TcxDateEdit
      Left = 82
      Top = 49
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'VisualStudio2013Light'
      StyleDisabled.LookAndFeel.SkinName = 'VisualStudio2013Light'
      StyleFocused.LookAndFeel.SkinName = 'VisualStudio2013Light'
      StyleHot.LookAndFeel.SkinName = 'VisualStudio2013Light'
      TabOrder = 1
      Width = 124
    end
    object OpCondicion: TcxRadioGroup
      Left = 17
      Top = 100
      Caption = 'Condici'#243'n de Facturas'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Contado'
        end
        item
          Caption = 'Cr'#233'dito'
        end
        item
          Caption = 'Todos'
        end>
      ItemIndex = 2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Visible = False
      Height = 69
      Width = 320
    end
    object cxButton1: TcxButton
      Left = 188
      Top = 212
      Width = 117
      Height = 33
      Caption = '&Exportar Excel'
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D6E0700000000000036000000280000001600000015000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000010000000A01020123060903470D15066D192A0C992B47
        14C73C631CEB335317D700010015000000000000000000000000000000000000
        0000000000000000000000000000010201200407023F0A110562142109882136
        0FAD304E16D13B621CEB426D1FF7467421FF477521FF467421FF477520FF395F
        1BE6000100170000000000000000000000000000000000000000000000000000
        0000000000003C631CED436F1FF9477621FF487721FF487621FF477521FF4673
        20FF457320FF457220FF457220FF457220FF45731FFF436C20F72E441DB72C3F
        1CAE2C3F1BAF2C3F1CB02C401CB02C401CB02C3F1CB02C3F1CB018260D8D4673
        20FF457320FF457220FF457220FF457220FF457220FF457220FF457220FF4572
        20FF457220FF457220FF42701DFF557E33FFE5EDDEFFF5FAF1FFF0F6EBFFF3F8
        EFFFF4F9F0FFF4F9F0FFF2F7EDFFEBF2E5FF769959FF457220FF457220FF4572
        20FF457220FF457220FF457220FF457220FF457220FF457220FF457220FF4572
        20FF44711FFF4D782AFF95AF81FFABBF99FFECF1E8FFA9BE98FF9DB58AFF9AB3
        86FFD2DDC9FFFFFFFFFF7A9A5FFF457220FF457220FF457220FF43701DFF426F
        1CFF457220FF457220FF406E1BFF3F6D19FF44721FFF457220FF457220FF4572
        1FFF3C6B16FF547D31FFD5DFCDFF537C31FF3C6B15FF36670FFFA1B88FFFFFFF
        FFFF79995EFF457220FF457220FF44711FFF577F35FF5B833BFF457220FF4270
        1DFF6A8E4DFF819F68FF4D782AFF43711EFF42701DFF527C2FFFC9D6BEFFDCE5
        D6FFF6F8F4FFDBE3D3FFD6E0CDFFD4DECCFFECF1E8FFFCFCFBFF79995EFF4572
        20FF457220FF3F6E19FF92AD7CFFF0F4EEFF658A47FF4E792BFFECF1E8FFCEDA
        C5FF467221FF44721FFF44721FFF487424FF628843FF78995DFFDEE6D7FF7898
        5DFF658B46FF608741FFB5C7A7FFFEFEFEFF79995EFF457220FF457220FF4270
        1DFF537C31FFEDF1E9FFAEC19DFF8CA876FFFFFFFFFF729456FF3F6E19FF4572
        20FF44711FFF487524FF628844FF79995EFFDEE6D7FF78995DFF668B47FF6188
        42FFB6C8A7FFFEFEFEFF79995EFF457220FF457220FF457220FF3D6C16FF95AF
        80FFF0F4EEFFE7EDE2FFC4D2B8FF416F1BFF457220FF457220FF43701EFF527C
        2FFFC5D4BAFFD8E1D0FFF5F8F3FFD7E1D0FFD2DDC9FFD1DCC7FFEAEFE5FFFBFC
        FBFF79995EFF457220FF457220FF457220FF42701DFF507A2DFFEAF0E6FFFFFF
        FFFF739557FF3E6D18FF457220FF457220FF457220FF457220FF3D6C16FF547D
        32FFD5DFCDFF537D31FF3D6C15FF36680FFFA1B88FFFFFFFFFFF79985EFE4572
        20FF457220FF457220FF3F6E19FF709354FFF5F8F4FFFAFBF9FF9DB489FF3E6C
        17FF457220FF457220FF44711EFF4D782AFF98B184FFADC19CFFEAF0E7FFACC0
        9BFFA0B88DFF9DB68BFFD2DDC9FFFDFDFCFF79985EFE457220FF457220FF4572
        20FF416F1BFFC7D4BBFFD8E2D1FFAABE99FFEFF2ECFF567F35FF42701CFF4572
        20FF44711FFF4E792AFF99B184FFADC09CFFEBF0E6FFACC09CFFA1B88EFF9EB6
        8BFFD2DDC9FFFCFDFCFF79985EFE457220FF457220FF406E1AFF719355FFFFFF
        FFFF96AF81FF577F35FFFBFCFAFFAABF9AFF406E19FF457220FF457220FF4572
        1FFF3E6C17FF547E33FFD5DFCCFF547E32FF3D6C16FF386810FFA2B990FFFFFF
        FFFF79995EFF457220FF457220FF42701DFF678C49FF93AD7DFF547E32FF406E
        1AFF95AF80FFAEC19EFF4C7728FF44711FFF43701EFF527C2FFFC1D0B5FFD3DE
        CBFFF4F7F2FFD3DDCAFFCDD8C3FFCBD8C1FFE7EDE3FFFCFCFBFF79995EFF4572
        20FF457220FF457220FF42701CFF3E6C17FF43711EFF457220FF406E19FF416F
        1BFF457220FF457220FF44721FFF487524FF658A46FF7B9B60FFDEE6D8FF7A9A
        60FF688D4AFF638A45FFB6C8A8FFFEFEFEFF79995EFF457220FF457220FF4572
        20FF457220FF457220FF457220FF457220FF457220FF457220FF457220FF4572
        20FF457220FF487423FF5C843CFF739456FFDDE5D6FF729456FF5F853EFF5A82
        39FFB2C5A3FFFFFFFFFF79995EFF467320FF457220FF457220FF457220FF4572
        20FF457220FF457220FF457220FF457220FF457220FF457220FF42701DFF567F
        34FFEDF2E9FFFFFFFEFFFFFFFFFFFDFEFCFFFDFEFCFFFDFEFCFFFFFFFFFFFEFF
        FDFF7B9C60FF416B1EF5477421FF487721FF487721FF477521FF467420FF4673
        20FF457220FF457220FF457220FF457220FF44711FFF4A7527FD748F5DF07892
        64EE779162EF789263EF789263EF789263EF789262EF769061EF3F5A28D30305
        0132070C03520F1A07771B2D0C9D294413C2375A1AE2406A1EF3447220FD4775
        21FF477521FF467320FF467420FF39601AE80204003600010020000100210001
        0021000100220001002200010022000100220000001000000000000000000000
        000000000000000000050101001603050237090F045C131F0985223910B23558
        18DD447220FD395D1BE500010013000000000000000000000000000000000000
        0000000000000000000000000000}
      OptionsImage.ImageIndex = 947
      TabOrder = 3
      OnClick = cxButton1Click
    end
  end
  object Edit1: TEdit
    Left = 372
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object cxCurrencyEdit1: TcxCurrencyEdit
    Left = 613
    Top = 154
    TabStop = False
    EditValue = 0.000000000000000000
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',$ 0.00;-,$ 0.00'
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -32
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 287
  end
  object cxCurrencyEdit2: TcxCurrencyEdit
    Left = 616
    Top = 228
    TabStop = False
    EditValue = 0.000000000000000000
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',$ 0.00;-,$ 0.00'
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -32
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 287
  end
  object cxCurrencyEdit3: TcxCurrencyEdit
    Left = 616
    Top = 307
    TabStop = False
    EditValue = 0.000000000000000000
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',$ 0.00;-,$ 0.00'
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -32
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 287
  end
  object cxButton2: TcxButton
    Left = 52
    Top = 217
    Width = 117
    Height = 33
    Caption = '&Consulta'
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 947
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 5
    OnClick = cxButton2Click
  end
  object ticker: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43435.637500254600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 45
    Top = 231
    Datasets = <
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = Config
        DataSetName = 'frxDBDataset4'
      end
      item
        DataSet = sumatoria
        DataSetName = 'Sumatoria'
      end
      item
        DataSet = SumPagoContado
        DataSetName = 'SumPagoContado'
      end
      item
        DataSet = SumpAgoCredito
        DataSetName = 'SumPagoCredito'
      end
      item
        DataSet = SumPagoCXC
        DataSetName = 'SumPagoCXC'
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
      end
      item
        Name = 'Empleado'
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
      PaperSize = 256
      LeftMargin = 5.100000000000000000
      RightMargin = 5.100000000000000000
      TopMargin = 12.700000000000000000
      BottomMargin = 12.700000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 19.437600000000000000
        ParentFont = False
        Top = 259.200000000000000000
        Width = 777.449321000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object frxDBDataset2FECHA_FAC1: TfrxMemoView
          AllowVectorExport = True
          Left = 2.979530000000000000
          Width = 60.170130000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA_FAC"]')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT1: TfrxMemoView
          AllowVectorExport = True
          Left = 63.770130000000000000
          Width = 65.688250000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 118.400000000000000000
          Width = 61.001670000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLIENTEID'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."CLIENTEID"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 671.220470000000000000
          Top = 0.539950000000000000
          Width = 96.529190000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 517.529190000000000000
          Top = 0.539950000000000000
          Width = 69.770130000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 587.908720000000000000
          Top = 0.539950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."POGXITBS"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 243.200000000000000000
          Top = 0.539950000000000000
          Width = 27.892950000000000000
          Height = 18.897650000000000000
          DataField = 'T'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."T"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 277.190600000000000000
          Top = 0.377952760000000000
          Width = 77.329190000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."MONTO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 182.400000000000000000
          Width = 51.401670000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CODVEN'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."CODVEN"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 357.200000000000000000
          Width = 77.329190000000000000
          Height = 18.897650000000000000
          DataField = 'COSTO2'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."COSTO2"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 437.000000000000000000
          Width = 77.329190000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."DESCUENTO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 333.203340000000000000
        Top = 336.000000000000000000
        Width = 777.449321000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000020000
          Width = 798.085220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 5.215770000000000000
          Top = 7.554359999999970000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 122.381200000000000000
          Top = 7.554359999999970000
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
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.837910000000000000
          Top = 7.559059999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."MONTOPAGO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 510.000000000000000000
          Top = 7.590289999999980000
          Width = 84.888250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."MONTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 439.400000000000000000
          Top = 7.590289999999980000
          Width = 75.288250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."DESCUENTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 596.800000000000000000
          Top = 7.590289999999980000
          Width = 75.288250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."POGXITBS">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 73.790290000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '+  Total Contado')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 481.000000000000000000
          Top = 97.990290000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '+  Total Cr'#233'ditos')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 64.190290000000000000
          Width = 268.800000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 44.990290000000000000
          Width = 178.544960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sumario Tipo de Factura')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 124.467470000000000000
          Width = 268.800000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SumPagoTCONTADO: TfrxMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 73.790290000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TCONTADO'
          DataSet = SumPagoContado
          DataSetName = 'SumPagoContado'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SumPagoContado."TCONTADO"]')
          ParentFont = False
        end
        object SumPagoTCREDITO: TfrxMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 96.990290000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TCREDITO'
          DataSet = SumpAgoCredito
          DataSetName = 'SumPagoCredito'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SumPagoCredito."TCREDITO"]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 362.200000000000000000
          Top = 7.600000000000020000
          Width = 75.288250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."COSTO2">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 282.400000000000000000
          Top = 7.600000000000020000
          Width = 75.288250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."MONTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          AllowVectorExport = True
          Left = 249.600000000000000000
          Top = 57.600000000000000000
          Width = 132.888250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(SUM(<frxDBDataset2."MONTO">,MasterData1) - SUM(<frxDBDataset2.' +
              '"descuento">,MasterData1)) - SUM(<frxDBDataset2."COSTO2">,Master' +
              'Data1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 57.600000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Beneficios x Ventas')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 174.289920000000000000
        Top = 19.200000000000000000
        Width = 777.449321000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 148.392270000000000000
          Width = 1008.000310000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 1.677180000000000000
          Top = 150.612740000000000000
          Width = 58.431540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 62.247310000000000000
          Top = 150.612740000000000000
          Width = 65.990600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Fact')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 118.400000000000000000
          Top = 150.600000000000000000
          Width = 65.990600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Cliente')
          ParentFont = False
        end
        object fecha1: TfrxMemoView
          AllowVectorExport = True
          Left = 118.400000000000000000
          Top = 106.804700000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
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
          Left = 117.000000000000000000
          Top = 127.804700000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 13.400000000000000000
          Top = 105.804700000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Inicial :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 15.400000000000000000
          Top = 128.804700000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Final :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 607.109030000000000000
          Top = 60.974830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.831850000000000000
          Top = 19.200000000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 606.800000000000000000
          Top = 37.400000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 170.510390000000000000
          Width = 1011.779840000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 29.497650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."RNC"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 43.615770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 58.733890000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel. :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 669.440940000000000000
          Top = 149.302350000000000000
          Width = 98.570130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = -5.077180000000000000
          Top = 84.004700000000000000
          Width = 777.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE VENTAS X POR FECHA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 276.990600000000000000
          Top = 149.522820000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 461.329190000000000000
          Top = 149.302350000000000000
          Width = 52.611070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desc')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 520.108720000000000000
          Top = 149.302350000000000000
          Width = 65.990600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 241.600000000000000000
          Top = 149.302350000000000000
          Width = 31.974830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 185.000000000000000000
          Top = 150.600000000000000000
          Width = 56.390600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Vend.')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 359.800000000000000000
          Top = 150.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Costo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 590.600000000000000000
          Top = 149.600000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Impuesto')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object mASTER: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NUMERO_FACTURA=NUMERO_FACTURA'
      'FECHA_FAC=FECHA_FAC'
      'CLIENTEID=CLIENTEID'
      'CODVEN=CODVEN'
      'T=T'
      'MONTO=MONTO'
      'COSTO2=COSTO2'
      'POGXITBS=POGXITBS'
      'PAGOXEFECTIVO=PAGOXEFECTIVO'
      'PAGOXCHEQUE=PAGOXCHEQUE'
      'PAGOXTARJETA=PAGOXTARJETA'
      'MONTOPAGO=MONTOPAGO'
      'DESCUENTO=DESCUENTO')
    DataSet = cuadre
    BCDToCurrency = False
    Left = 293
    Top = 111
  end
  object cuadre: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      
        'SELECT a.numero_factura, a.fecha_fac, a.clienteid, a.codven, IIF' +
        '(A.TIPO ='#39'CONTADO'#39', '#39'C'#39','#39'CR'#39') T, a.monto,'
      '(select sum((b1.costo * a1.cantidad)) from detailfact a1'
      'left join mtartuculos b1 On a1.articuloid = b1.cod_art'
      'where a1.masterid = a.no_fact'
      'group by a1.masterid) Costo2,'
      
        'a.pogxitbs,  a.pagoxefectivo, a.pagoxcheque, a.pagoxtarjeta, a.m' +
        'ontopago, a.descuento'
      'FROM MASTER_FACT A'
      'LEFT JOIN CLIENTE B ON A.CLIENTEID = B.CODIGO'
      'LEFT JOIN MUSUARIO C ON A.USUARIOID = C.USUARIOID'
      'LEFT JOIN MTEMPLEADO D ON C.EMPLEADOID = D.COD_EMP')
    Params = <>
    Left = 101
    Top = 239
    object cuadreNUMERO_FACTURA: TExtendedField
      FieldName = 'NUMERO_FACTURA'
      Precision = 19
    end
    object cuadreFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object cuadreCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object cuadreCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object cuadreT: TWideStringField
      FieldName = 'T'
      ReadOnly = True
      Size = 2
    end
    object cuadreMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object cuadreCOSTO2: TExtendedField
      FieldName = 'COSTO2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object cuadrePOGXITBS: TFloatField
      FieldName = 'POGXITBS'
      currency = True
    end
    object cuadrePAGOXEFECTIVO: TFloatField
      FieldName = 'PAGOXEFECTIVO'
      currency = True
    end
    object cuadrePAGOXCHEQUE: TFloatField
      FieldName = 'PAGOXCHEQUE'
      currency = True
    end
    object cuadrePAGOXTARJETA: TFloatField
      FieldName = 'PAGOXTARJETA'
      currency = True
    end
    object cuadreMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object cuadreDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      currency = True
    end
  end
  object RGastos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.fecha, a.beneficiado, b.descripcion,Sum(a.Importe) suma' +
        ' from control_gastos a'
      'left join conceptos_gastos b On a.conceptosid = b.conceptosid'
      'group by b.descripcion, a.beneficiado, a.fecha')
    Params = <>
    Left = 16
    Top = 215
    object RGastosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object RGastosBENEFICIADO: TWideStringField
      FieldName = 'BENEFICIADO'
      Size = 45
    end
    object RGastosDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object RGastosSUMA: TExtendedField
      FieldName = 'SUMA'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object datagastos: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DESCRIPCION=DESCRIPCION'
      'SUMA=SUMA'
      'FECHA=FECHA'
      'BENEFICIADO=BENEFICIADO')
    DataSet = RGastos
    BCDToCurrency = False
    Left = 317
    Top = 215
  end
  object gatos: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 41489.979093483800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 293
    Top = 167
    Datasets = <
      item
        DataSet = datagastos
        DataSetName = 'frxDBDataset2'
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
        Name = 'Empleado'
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 249.600000000000000000
        Width = 816.000527000000000000
        DataSet = datagastos
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2FECHA_FAC1: TfrxMemoView
          AllowVectorExport = True
          Left = 301.379530000000000000
          Top = -0.000000000000005690
          Width = 309.770130000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRIPCION'
          DataSet = datagastos
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."DESCRIPCION"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO1: TfrxMemoView
          AllowVectorExport = True
          Left = 645.996970000000000000
          Top = -0.000000000000005690
          Width = 115.729190000000000000
          Height = 18.897650000000000000
          DataField = 'SUMA'
          DataSet = datagastos
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."SUMA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = -0.000000000000005690
          Width = 69.770130000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = datagastos
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Top = -0.000000000000005690
          Width = 194.570130000000000000
          Height = 18.897650000000000000
          DataField = 'BENEFICIADO'
          DataSet = datagastos
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."BENEFICIADO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 142.412740000000000000
        Top = 316.800000000000000000
        Width = 816.000527000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000034000
          Width = 798.085220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 508.195300000000000000
          Top = 8.779530000000033000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total ')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 26.154360000000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 26.154360000000010000
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
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 240.000000000000000000
          Top = 121.776500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 641.037910000000000000
          Top = 7.559060000000000000
          Width = 123.288250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."SUMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 240.000000000000000000
          Top = 96.000000000000010000
          Width = 284.144960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Aprobado Por:')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 204.110390000000000000
        Top = 19.200000000000000000
        Width = 816.000527000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.379530000000000000
          Top = 177.592270000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.677180000000000000
          Top = 181.412740000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 640.176500000000000000
          Top = 180.212740000000000000
          Width = 117.770130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object fecha1: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 136.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          AllowVectorExport = True
          Left = 115.400000000000000000
          Top = 155.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha2]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 136.200000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Inicial :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 155.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Final :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 607.109030000000000000
          Top = 41.774829999999990000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 574.831850000000000000
          Top = 9.600000000000001000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 606.800000000000000000
          Top = 27.800000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 96.000000000000000000
          Width = 806.400000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de Gastos')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 200.310390000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000001000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 10.600000000000000000
          Top = 29.497649999999990000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 39.836240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 39.836240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."RNC"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 43.615770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 58.733890000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel. :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 297.600000000000000000
          Top = 182.400000000000000000
          Width = 308.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripcion del Gasto')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 92.000000000000000000
          Top = 181.400000000000000000
          Width = 183.231540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Beneficiario')
          ParentFont = False
        end
      end
    end
  end
  object Config: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = True
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
      'IMPRIMEOPCIONAL=IMPRIMEOPCIONAL')
    DataSet = datos.Configuracion
    BCDToCurrency = False
    Left = 181
    Top = 182
  end
  object UTILIDADBNB: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'SELECT SUM(A.precio * A.cantidad) - SUM(B.costo_pr * A.cantidad)' +
        ' BNB FROM detailfact A'
      'LEFT JOIN mtartuculos B ON A.articuloid = B.cod_art'
      'LEFT JOIN master_fact C oN A.masterid = C.no_fact')
    Params = <>
    Left = 229
    Top = 207
    object UTILIDADBNBBNB: TFloatField
      FieldName = 'BNB'
      ReadOnly = True
    end
  end
  object QPagos: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      
        'select Sum(a.pagoxefectivo) Efectivo, sum(a.pagoxtarjeta)   Ptar' +
        'jeta,sum(a.pagoxefectivo + a.pagoxtarjeta) Total  from master_fa' +
        'ct a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      ''
      ''
      '')
    Params = <>
    Left = 221
    Top = 127
    object QPagosEFECTIVO: TExtendedField
      FieldName = 'EFECTIVO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QPagosPTARJETA: TExtendedField
      FieldName = 'PTARJETA'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QPagosTOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object sumatoria: TfrxDBDataset
    UserName = 'Sumatoria'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EFECTIVO=EFECTIVO'
      'PTARJETA=PTARJETA'
      'TOTAL=TOTAL')
    DataSet = QPagos
    BCDToCurrency = False
    Left = 144
    Top = 88
  end
  object TContado: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      'select Sum(a.montopago) Tcontado from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp')
    Params = <>
    Left = 24
    Top = 96
    object TContadoTCONTADO: TExtendedField
      FieldName = 'TCONTADO'
      ReadOnly = True
      Precision = 19
    end
  end
  object Tcreditos: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      'select Sum(a.montopago) TCredito from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp')
    Params = <>
    Left = 312
    Top = 8
    object TcreditosTCREDITO: TExtendedField
      FieldName = 'TCREDITO'
      ReadOnly = True
      Precision = 19
    end
  end
  object SumpAgoCredito: TfrxDBDataset
    UserName = 'SumPagoCredito'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TCREDITO=TCREDITO')
    DataSet = Tcreditos
    BCDToCurrency = False
    Left = 64
    Top = 152
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 248
    Top = 240
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 112
    Top = 168
  end
  object SumPagoContado: TfrxDBDataset
    UserName = 'SumPagoContado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TCONTADO=TCONTADO')
    DataSet = TContado
    BCDToCurrency = False
    Left = 208
    Top = 80
  end
  object pagoCXC: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      'select Sum(a.pagoxefectivo) Tpcxc from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp')
    Params = <>
    Left = 32
    Top = 168
    object pagoCXCTPCXC: TExtendedField
      FieldName = 'TPCXC'
      ReadOnly = True
      Precision = 19
    end
  end
  object SumPagoCXC: TfrxDBDataset
    UserName = 'SumPagoCXC'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TPCXC=TPCXC')
    DataSet = pagoCXC
    BCDToCurrency = False
    Left = 248
    Top = 24
  end
end
