object FCierreInventarioCubos: TFCierreInventarioCubos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Cierre Inventario Cubos'
  ClientHeight = 551
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 423
    Height = 456
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsCubos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'CN_UN2'
          Column = cxGrid1DBTableView1CN_UN
        end
        item
          Kind = skSum
          FieldName = 'CU_OZ2'
          Column = cxGrid1DBTableView1CU_OZ
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Sabor del Cubo'
        DataBinding.FieldName = 'ARTICULO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.EditAutoHeight = ieahNone
        Width = 250
      end
      object cxGrid1DBTableView1CN_UN: TcxGridDBColumn
        Caption = 'Cubos Sellados (Und)'
        DataBinding.FieldName = 'CN_UN2'
        HeaderAlignmentHorz = taCenter
        Width = 74
      end
      object cxGrid1DBTableView1CU_OZ: TcxGridDBColumn
        Caption = 'Cubos Abiertos (Oz)'
        DataBinding.FieldName = 'CU_OZ2'
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 0
    Top = 463
    Width = 423
    Height = 41
    Align = alBottom
    Caption = 'Procesar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000D24944415448C7DD943D0AC2
      4010853F3D4D8A80854730480A4F91D2CAC23A575810AFE37552995242AA58F8
      1622B8F97127163E58261BDE7E33B32403FFAA33B0D173021C8DFDA4400BDC14
      53633FC8DC299AFBCD3A58070E64C016D829662309E6FA07950335E080550C28
      047F0025500157CB241E5E689F2889B38237AABCAF52D76502EF5471A2F7853A
      CAADE07E55AA3C1ABEFF00F7AB050EBF84CF9A45F900BC095CCBE43FFF1BB8D7
      E82C8A818F7610030738F5A0A9F66FAA23E093E49684C36B605D30FCCE43491C
      70B7AC7C713D01A76677619ECB821D0000002574455874646174653A63726561
      746500323031392D30382D33305431323A31363A32382B30303A3030CE20E9AE
      0000002574455874646174653A6D6F6469667900323031392D30382D33305431
      323A31363A32382B30303A3030BF7D511200000028744558747376673A626173
      652D7572690066696C653A2F2F2F746D702F6D616769636B2D4B4C4B71644634
      3425E9638D0000000049454E44AE426082}
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object cxButton1: TcxButton
    Left = 0
    Top = 504
    Width = 423
    Height = 47
    Margins.Top = 5
    Align = alBottom
    Caption = 'Cancelar'
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000001064944415448C7DD944B0AC2
      400C401F8AE3555CD43B486FE00FEFA4DE42D1FBE8C28A9FADE0B6AED5455318
      C64C3B5645341028C9E425934903FF2E0618014B20012EA209B0109FA90A1F00
      07E056A207A0F70CB80E4C03C0AE4E24B654AAC0ED2485D27F019EABB75D06D8
      3B873740073829A03310032BC77E049A5A82910289C51709D08647E28B95B8A1
      9660E9A9B22DFE96DC44B3B971732DC1D6D353BBDAC8F93E7B62122D415AF070
      76D54595E79AE6076B7C46AE5F69D182F73DF24C4BF0F131353C2EB7B500B456
      E43FDADAB1EF28D8B03DFC9311AADDB2097865D98DCBE090ADDC490578F0BAB6
      DBB50F00EF42DAE21343361173B2CD9A8A6EC436001A55E1BF217770D7FBBB10
      D556FD0000002574455874646174653A63726561746500323032302D30312D31
      335431393A32373A34372B30303A303094D7E049000000257445587464617465
      3A6D6F6469667900323032302D30312D31335431393A32373A34372B30303A30
      30E58A58F500000028744558747376673A626173652D7572690066696C653A2F
      2F2F746D702F6D616769636B2D667570457343506191E8BBB60000000049454E
      44AE426082}
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object inicio: TcxDateEdit
    Left = 77
    Top = 26
    TabOrder = 3
    Visible = False
    Width = 124
  end
  object Qconsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.id, a.idturno, a.fecha, c.articulo, c.costo, c.precio_a' +
        ', a.cn_un2, a.cu_oz2,'
      
        '(a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) InvInicial, (a.cn_' +
        'un2 + iif(a.cu_oz > 0,(a.cu_oz2/150),0)) InfFinal,'
      
        '((a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) - (a.cn_un2 + iif' +
        '(a.cu_oz > 0,(a.cu_oz2/150),0))) TotalSalida'
      ' from hl_cubos a'
      ''
      'left join mtartuculos c on a.idarticulo = c.cod_art')
    Params = <>
    Left = 64
    Top = 220
    object QconsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QconsultaIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object QconsultaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QconsultaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QconsultaCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object QconsultaPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object QconsultaINVINICIAL: TExtendedField
      FieldName = 'INVINICIAL'
      ReadOnly = True
      Precision = 19
    end
    object QconsultaINFFINAL: TExtendedField
      FieldName = 'INFFINAL'
      ReadOnly = True
      Precision = 19
    end
    object QconsultaTOTALSALIDA: TExtendedField
      FieldName = 'TOTALSALIDA'
      ReadOnly = True
      Precision = 19
    end
    object QconsultaCN_UN2: TFloatField
      FieldName = 'CN_UN2'
    end
    object QconsultaCU_OZ2: TFloatField
      FieldName = 'CU_OZ2'
    end
  end
  object DsCubos: TDataSource
    DataSet = datos.QCubos
    Left = 328
    Top = 360
  end
  object DBconsulta: TfrxDBDataset
    UserName = 'FRxDbConsulta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'IDTURNO=IDTURNO'
      'FECHA=FECHA'
      'ARTICULO=ARTICULO'
      'COSTO=COSTO'
      'PRECIO_A=PRECIO_A'
      'INVINICIAL=INVINICIAL'
      'INFFINAL=INFFINAL'
      'TOTALSALIDA=TOTALSALIDA'
      'CN_UN2=CN_UN2'
      'CU_OZ2=CU_OZ2')
    DataSet = Qconsulta
    BCDToCurrency = False
    Left = 72
    Top = 368
  end
  object PrnConsulta: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43115.967935081000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 152
    Top = 400
    Datasets = <
      item
        DataSet = config
        DataSetName = 'Config'
      end
      item
        DataSet = DBconsulta
        DataSetName = 'FRxDbConsulta'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 203.200000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 201.297650000000000000
        Top = 18.897650000000000000
        Width = 288.000186000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 21.348300000000000000
          Top = 79.470810000000000000
          Width = 213.444280000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Inventario Final Cubos')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 12.749970000000000000
          Top = 139.011070000000000000
          Width = 86.929190000000000000
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
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."EMPRESA"]')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 29.497650000000000000
          Width = 235.993940000000000000
          Height = 38.097650000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 46.877180000000000000
          Top = 52.436240000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."TELEFONO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 19.640940000000000000
          Top = 51.615770000000000000
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
        object frxDBDataset2FECHA: TfrxMemoView
          AllowVectorExport = True
          Left = 84.963760000000000000
          Top = 138.702350000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA'
          DataSet = DBconsulta
          DataSetName = 'FRxDbConsulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRxDbConsulta."FECHA"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 1.738590000000000000
          Top = 180.579530000000000000
          Width = 292.006680000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 5.702350000000000000
          Top = 182.400000000000000000
          Width = 150.652010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripci'#243'n de Cubos')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 181.417440000000000000
          Width = 63.722820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C. Sellados')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 200.315090000000000000
          Width = 292.006680000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 181.417440000000000000
          Width = 63.722820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C. Abiertos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.800000000000000000
        Top = 279.685220000000000000
        Width = 288.000186000000000000
        DataSet = DBconsulta
        DataSetName = 'FRxDbConsulta'
        RowCount = 0
        object FRxDbProductosTITULOPRN: TfrxMemoView
          AllowVectorExport = True
          Left = 9.261410000000000000
          Width = 137.347990000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = DBconsulta
          DataSetName = 'FRxDbConsulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRxDbConsulta."ARTICULO"]')
          ParentFont = False
        end
        object FRxDbProductosSUM_1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 145.181200000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'CN_UN2'
          DataSet = DBconsulta
          DataSetName = 'FRxDbConsulta'
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
            '[FRxDbConsulta."CN_UN2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CU_OZ2'
          DataSet = DBconsulta
          DataSetName = 'FRxDbConsulta'
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
            '[FRxDbConsulta."CU_OZ2"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 103.559060000000000000
        Top = 362.834880000000000000
        Width = 288.000186000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -9.600000000000000000
          Top = 2.599999999999960000
          Width = 292.006680000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 2.343290000000000000
          Top = 2.040940000000000000
          Width = 106.129190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Items :')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 113.763760000000000000
          Top = 2.040940000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
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
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 128.806370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Cubos Sellados :')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FRxDbConsulta."CN_UN2">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 49.133890000000000000
          Width = 128.806370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Cubos Abiertos :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 49.133890000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FRxDbConsulta."CU_OZ2">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 68.031540000000000000
          Width = 128.806370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Cubos :')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 68.031540000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<FRxDbConsulta."CN_un2">,MasterData1) + SUM(<FRxDbConsulta.' +
              '"CU_OZ2">/150,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TURNOID=TURNOID'
      'USUARIOID=USUARIOID'
      'EFECTIVO_INICIAL=EFECTIVO_INICIAL'
      'ESTADO=ESTADO'
      'FECHA=FECHA'
      'NOMBRES_EMP=NOMBRES_EMP'
      'IDTURNO=IDTURNO'
      'CAJA=CAJA'
      'DESCRICPCION=DESCRICPCION'
      'HORA=HORA'
      'EFECTIVOCAJA=EFECTIVOCAJA'
      'COBRANZA=COBRANZA'
      'TC=TC'
      'CHEQUE=CHEQUE'
      'VALE=VALE'
      'GASTOS=GASTOS'
      'TOTALGASTOS=TOTALGASTOS'
      'NC=NC'
      'TOTALEINGRESO=TOTALEINGRESO'
      'TOTALCUADRE=TOTALCUADRE'
      'DESCUADRE=DESCUADRE'
      'TOTALVENTAS=TOTALVENTAS'
      'TOTALEGRESOS=TOTALEGRESOS'
      'SOBRANTES=SOBRANTES')
    DataSet = datos.ZTurno
    BCDToCurrency = False
    Left = 312
    Top = 231
  end
  object config: TfrxDBDataset
    UserName = 'Config'
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
      'MENSAJE_PIE2=MENSAJE_PIE2'
      'IMPRESION_RAPIDA=IMPRESION_RAPIDA'
      'IMPRESIONDEFECTO=IMPRESIONDEFECTO'
      'TEXINICIAR=TEXINICIAR')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 243
    Top = 120
  end
end
