object FAperturaCuadreCubos: TFAperturaCuadreCubos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Apertura de Cuadre Cubos'
  ClientHeight = 531
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PArticulos: TPanel
    Left = 8
    Top = 0
    Width = 345
    Height = 473
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 343
      Height = 430
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      ExplicitWidth = 336
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsCubos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CN_UN'
            Column = cxGrid1DBTableView1CN_UN
          end
          item
            Kind = skSum
            FieldName = 'CU_OZ'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
          Caption = 'Productos'
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
          Caption = 'Existencia Actual'
          DataBinding.FieldName = 'CANTIDADINICIAL'
          HeaderAlignmentHorz = taCenter
          Width = 74
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton3: TcxButton
      Left = 1
      Top = 431
      Width = 343
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
      OnClick = cxButton3Click
      ExplicitWidth = 443
    end
    object Edit1: TEdit
      Left = 296
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
      Visible = False
    end
  end
  object cxButton2: TcxButton
    Left = 40
    Top = 479
    Width = 130
    Height = 41
    Caption = 'Listo'
    Enabled = False
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
      980000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000002854944415458C3EDD8CD4E14
      411007F09FB0061315E20B985513C50730317231317EE007F00E8AF12C77D7AB
      1E11F5EE1B2889670FF8F1102A2A207AD213EA65F1D033D2D32EB33303249A50
      49279BEEAAFFFCBBAABABA7AD995FF4CF634B0D98B8B388F53388643D9DA37BC
      C3029EE235BA3B457E0833F88AF58A6335B319DA6E3253F85083483A3E60723B
      88ECC15DC1EDF1073EE1012E6114FBB3318A71CC6129B1E9A2A3599AFC21F324
      015DC60D0C56B06F611A2B09C693A6A4EE26404F71B001CE30E613AC4E5D9029
      C530CD62A0C9AE321910C218876FA2AAF13EC5047EAE5A88AA907A16E12EAA78
      FA661473A64998623987A3D9EF617C8EF06FF733DEAB5867AE6F91CC05FC103C
      7E249BBBA958A74A53E1AAE2D1DE4AA8723239DE8B6CBE25783E9F3F530632AB
      98C85B21B316617DB411367818ADDD2B037A15298E37247331F1CC22DA89CE95
      687DA10C2CCE9FE33B448650D1739D2F6580BF22C5F474B571761BC8C8B073BD
      9F4D081D16DA8A35A1ED48254DE034675219AE4A280ED98968FE45349F92AAE3
      995C2A872C4EEACBD17C3BFB504CEA42433214CB4B6952DF8F14E792B594D48F
      8664E0516477BF4C712C525C128A5819A926645A8A2D4969611C10CA79AE3CDD
      43272555870CDC8A6CFB5E1D840B2F3758114EC466A4EA92194936DCF77225B4
      04B107E637D945BB269941A195C971DFABD1FC4F2A366873555CDB874C9CC85D
      5CAB0BD2514CDC79BDC3D74F4612CFACE34E935DF56AF23F0BFD4CAB827D4B48
      E0D504A371939F93EAF8FB19B42C84E0324EE240364E0A37F9637FBF36BA9967
      1A93896542EFFA53752C6A9033FD644838A66908FA3DA56FAB719A9AB86F00A7
      85A7D2988D3F1BD6F11D6FF15278C7BDB1837F36ECCA3F21BF0143C63EF0C9A8
      15CC0000002574455874646174653A63726561746500323031392D30382D3235
      5430363A31333A30372B30303A30303C2DC8CB0000002574455874646174653A
      6D6F6469667900323031392D30382D32355430363A31333A30372B30303A3030
      4D70707700000028744558747376673A626173652D7572690066696C653A2F2F
      2F746D702F6D616769636B2D3445384F365635692745A4BB0000000049454E44
      AE426082}
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object cxButton4: TcxButton
    Left = 184
    Top = 478
    Width = 121
    Height = 41
    Caption = 'Cancelar'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000020000000200804000000D973B2
      7F0000000467414D410000B18F0BFC6105000000206348524D00007A26000080
      840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
      02624B47440000AA8D2332000000097048597300000EE900000EE9010E33421C
      0000000774494D4507E4010D012C2713F2B6AB000002694944415448C78DD5CD
      6B94571406F05F22356AFD0AD189A29650CC42C4602B2DAD1B4905176E14C1FC
      052EDCE8C64D71295D898A6EFC07342ED38596DA45AA9DB6041105F34134247E
      9041E826C685E0904C8E8B793B93C9DC77E27337F7DC739FE7BDE79E73EEDB26
      85DD4EE977408F355830E3A90786CCF90C1C764F4564A36CA136FFE8967DADC9
      DB0C66B4FBCEEA5340BB1DBE7541D1A2B0E0AA7579F41F9484B21BB627FD3D6E
      AB082376A4DCC77C101EF9BAE5190F991666ED6FFEFA0761D0FA55EFA8CBB0F0
      5AA131F69230A8ED736ED95A45E16F6BEB4B77842736804E1DB9D40DD99E2ED3
      C2CFF5C48572167BA7F7461B8F5743AF5933D9FC88F04E57D5B827DCC81C1D46
      85B18444AF92F07BCDBE2B5C81DD2ACACB12B7DDA8306967825EB4B1B6F28D30
      A783F30DBA6989663ABC108EF3AB7076C5711B25D2742E57839816FA9A22AE4B
      E4D13929FCC18248966EC19830AE243CC8D2D788EF84294239A7800AC685F030
      496797F05F3BDAB527376CB11574DB92F47F8125CA22D95DD5D81F1ACBA90B7E
      149E33291CCAA1176DCCA90B18107EABF6C1855C7A7352EBB829FCC219A1D882
      9E27D1A624F4D3A56C514F0B7A5AA25F786B0D0C0AB7B3E52FCDE6E4BD5A178F
      6BDF1F112E558DFD1655B28BDCE48DFB39792F78ECAF6C7E5A98FFBF9DB92E4C
      D7CD55D16B4E38575F58EF9130BCFC916A814E93C25063F9ED342BFCAB7B55FA
      5E13C284CD2B1D7DDE08AF1C69416E33604E78664FCADDED1F21DC753049EE37
      2284A1446B67E870D1BC10A65C76C2F776F9CA61A7DD5412C2BC73AB3DFEDB5C
      F3AEF6435D3EDEBAD49CA9B4DA3A47FDE4801E5B2D99F7D2137F2AAA346FFD04
      C9E2077E7572D3A70000002574455874646174653A6372656174650032303230
      2D30312D31335430313A34343A33392B30303A30300AA3D15600000025744558
      74646174653A6D6F6469667900323032302D30312D31335430313A34343A3339
      2B30303A30307BFE69EA0000001974455874536F667477617265007777772E69
      6E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
    TabOrder = 2
    OnClick = cxButton4Click
  end
  object Qconsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.id, a.idturno, a.fecha, c.articulo, c.costo, c.precio_a' +
        ',  a.cn_un, a.cu_oz,'
      
        '(a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) InvInicial, (a.cn_' +
        'un2 + iif(a.cu_oz > 0,(a.cu_oz2/150),0)) InfFinal,'
      
        '((a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) - (a.cn_un2 + iif' +
        '(a.cu_oz > 0,(a.cu_oz2/150),0))) TotalSalida'
      ' from hl_cubos a'
      ''
      'left join mtartuculos c on a.idarticulo = c.cod_art')
    Params = <>
    Left = 504
    Top = 28
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
    object QconsultaCN_UN: TFloatField
      FieldName = 'CN_UN'
    end
    object QconsultaCU_OZ: TFloatField
      FieldName = 'CU_OZ'
    end
  end
  object PrnConsulta: TfrxReport
    Version = '6.7.9'
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
    Left = 552
    Top = 32
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
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
        Top = 19.200000000000000000
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
            'Inventario Inicial')
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
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 29.497650000000000000
          Width = 235.993940000000000000
          Height = 38.097650000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DIRECCION"]')
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
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TELEFONO"]')
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
            'Productos')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 176.022140000000000000
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
            'Existencia')
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
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 60.800000000000000000
          Top = 139.000000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 15.200000000000000000
          Top = 156.600000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 59.600000000000000000
          Top = 154.600000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.800000000000000000
        Top = 278.400000000000000000
        Width = 288.000186000000000000
        DataSet = DBconsulta
        DataSetName = 'FRxDbConsulta'
        RowCount = 0
        object FRxDbProductosTITULOPRN: TfrxMemoView
          AllowVectorExport = True
          Left = 3.922820000000000000
          Width = 154.809400000000000000
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
          Left = 177.022140000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'EXISTENCIA'
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
            '[FRxDbConsulta."EXISTENCIA"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 130.015770000000000000
        Top = 364.800000000000000000
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
          Top = 9.600000000000000000
          Width = 75.892950000000000000
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
          Left = 83.527520000000000000
          Top = 9.600000000000000000
          Width = 55.861410000000000000
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
      end
    end
  end
  object DBconsulta: TfrxDBDataset
    UserName = 'FRxDbConsulta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_ART=COD_ART'
      'ARTICULO=ARTICULO'
      'COSTO=COSTO'
      'COSTO_PR=COSTO_PR'
      'COD_ALM=COD_ALM'
      'EXISTENCIA=EXISTENCIA'
      'TOTAL=TOTAL'
      'CODIGOBARRA=CODIGOBARRA'
      'REFERENCIA=REFERENCIA')
    DataSet = ZExistencia
    BCDToCurrency = False
    Left = 552
    Top = 128
  end
  object MaxTurno: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_TURNOS_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 504
    Top = 274
    object MaxTurnoGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object MaxCubos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from hl_cubostemp')
    Params = <>
    Left = 504
    Top = 128
    object MaxCubosMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object Max2: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from hl_cubos')
    Params = <>
    Left = 504
    Top = 80
    object Max2MAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object config: TfrxDBDataset
    UserName = 'frxDBDataset1'
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
    Left = 555
    Top = 80
  end
  object DsCubos: TDataSource
    DataSet = datos.QCubos
    Left = 560
    Top = 184
  end
  object limpiar: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 506
    Top = 225
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.unidad,a.precio_a, a.codigobarra,a.precio_b, b.cat, pre' +
        'cio_d,a.comision, a.cod_art,upper(a.articulo) articulo,a.cod_cat' +
        ',a.politica,a.referencia,a.ubicacion, a.modelo,a.marca,a.codigot' +
        'xt,a.itbis, a.taza_compra, a.costo_pr, a.beneficios, a.TIENECOMP' +
        'ACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3, a.obs'
      'from mtartuculos a'
      'left join mtcategoria b on a.cod_cat = b.codcat'
      
        'group by a.unidad,a.precio_a,a.codigobarra, b.cat, a.precio_b,pr' +
        'ecio_d,a.cod_art,a.comision,a.articulo,a.cod_cat,a.politica,a.mo' +
        'delo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_pr, a.be' +
        'neficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayo' +
        'reo3, a.referencia,a.ubicacion, a.obs'
      '')
    Params = <>
    Left = 507
    Top = 176
    object IbqRArticulosCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object IbqRArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object IbqRArticulosCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object IbqRArticulosPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object IbqRArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object IbqRArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object IbqRArticulosCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 10
    end
    object IbqRArticulosPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
      currency = True
    end
    object IbqRArticulosPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
      currency = True
    end
    object IbqRArticulosUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object IbqRArticulosPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
      currency = True
    end
    object IbqRArticulosTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object IbqRArticulosCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
    object IbqRArticulosBENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField
      FieldName = 'TIENECOMPACTIBILIDAD'
      Size = 2
    end
    object IbqRArticulosMAYOREO1: TFloatField
      FieldName = 'MAYOREO1'
    end
    object IbqRArticulosMAYOREO2: TFloatField
      FieldName = 'MAYOREO2'
    end
    object IbqRArticulosMAYOREO3: TFloatField
      FieldName = 'MAYOREO3'
    end
    object IbqRArticulosITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object IbqRArticulosREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object IbqRArticulosUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object IbqRArticulosOBS: TIntegerField
      FieldName = 'OBS'
      ReadOnly = True
    end
    object IbqRArticulosCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object IbqRArticulosCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object IbqRArticulosCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
  end
  object ZExistencia: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      
        'select a.cod_art, upper(b.articulo) articulo,b.codigobarra, b.re' +
        'ferencia, b.costo, b.costo_pr, a.cod_alm, sum(a.entrada - a.sali' +
        'da) Existencia, b.costo_pr * sum(a.entrada - a.salida) Total  fr' +
        'om minventario a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'and b.politica <> '#39'Servicio'#39
      
        'group by a.cod_art, b.articulo,b.costo,a.cod_alm,  b.costo_pr,b.' +
        'codigobarra, b.referencia')
    Params = <>
    Left = 227
    Top = 256
    object ZExistenciaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZExistenciaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      ReadOnly = True
      Size = 100
    end
    object ZExistenciaCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object ZExistenciaCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
    object ZExistenciaCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object ZExistenciaEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
    object ZExistenciaTOTAL: TExtendedField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object ZExistenciaCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object ZExistenciaREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
  end
end
