object Frtc: TFrtc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte de Rendimiento T'#233'cnico de Cubos (RTC)'
  ClientHeight = 508
  ClientWidth = 776
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
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 16
    TabOrder = 0
    Height = 97
    Width = 473
    object Label3: TLabel
      Left = 12
      Top = 61
      Width = 54
      Height = 13
      Caption = 'Fecha Final'
    end
    object Label2: TLabel
      Left = 12
      Top = 29
      Width = 59
      Height = 13
      Caption = 'Fecha Inicial'
    end
    object inicio: TcxDateEdit
      Left = 77
      Top = 26
      TabOrder = 0
      Width = 124
    end
    object fechafinal: TcxDateEdit
      Left = 77
      Top = 54
      TabOrder = 1
      Width = 124
    end
    object cxButton1: TcxButton
      Left = 248
      Top = 40
      Width = 145
      Height = 34
      Caption = 'Consultar'
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
      TabOrder = 2
      OnClick = cxButton1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 119
    Width = 521
    Height = 377
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'INVINICIAL'
          Column = cxGrid1DBTableView1INVINICIAL
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'INFFINAL'
          Column = cxGrid1DBTableView1INFFINAL
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'TOTALSALIDA'
          Column = cxGrid1DBTableView1TOTALSALIDA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Descripcion de Cubos'
        DataBinding.FieldName = 'ARTICULO'
        Width = 195
      end
      object cxGrid1DBTableView1INVINICIAL: TcxGridDBColumn
        Caption = 'Inv. Inicial'
        DataBinding.FieldName = 'INVINICIAL'
      end
      object cxGrid1DBTableView1INFFINAL: TcxGridDBColumn
        Caption = 'Inv. Final'
        DataBinding.FieldName = 'INFFINAL'
        Width = 96
      end
      object cxGrid1DBTableView1TOTALSALIDA: TcxGridDBColumn
        Caption = 'Total Salida Unds'
        DataBinding.FieldName = 'TOTALSALIDA'
        Width = 99
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 544
    Top = 162
    Caption = 'C'#225'lculo de RTC'
    TabOrder = 2
    Height = 170
    Width = 215
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 84
      Height = 13
      Caption = 'Monto Vendido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 96
      Width = 22
      Height = 13
      Caption = 'RTC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MCobrado: TcxCurrencyEdit
      Left = 24
      Top = 56
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 179
    end
    object MRTC: TcxCurrencyEdit
      Left = 24
      Top = 112
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 179
    end
  end
  object cxButton2: TcxButton
    Left = 544
    Top = 409
    Width = 215
    Height = 36
    Caption = 'Imprimir'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000CF4944415448C7ED944D0AC2
      301484BF76A10B77E246172578094105AFA73D820BCFD28B88B8B08770D32E7C
      C15862D234AD5070E0D1BF74E6BD49A7F0870789E359D507573AF404E317F829
      A6400E94BC36B84B95C00998D804F208E2661D6D02319D57C016D8CBF943939A
      9BBC8CB438E59D8595BE69862334583E24CD09BAE0095CC49A05300776C03964
      02D7EFC48BA182A6A43EF0EDEB0845065C813BB0762D6C2390018541A4C9ABBE
      040A5973030E72D4D7CAF3AE3354334BC7BABC9DB711D8583C0F220F8512BBBC
      B68C0F35D54C693BCA7435770000002574455874646174653A63726561746500
      323031392D30382D32385432313A35313A30352B30303A30308AC9FAF1000000
      2574455874646174653A6D6F6469667900323031392D30382D32385432313A35
      313A30352B30303A3030FB94424D00000028744558747376673A626173652D75
      72690066696C653A2F2F2F746D702F6D616769636B2D782D5844676D4155A1B9
      ED130000000049454E44AE426082}
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object RG: TcxRadioGroup
    Left = 544
    Top = 332
    Caption = 'Tipo de Impresi'#243'n'
    Properties.Items = <
      item
        Caption = 'Ticket'
      end
      item
        Caption = '8.5 x 11'
      end>
    TabOrder = 4
    Height = 71
    Width = 215
  end
  object cxButton3: TcxButton
    Left = 544
    Top = 23
    Width = 215
    Height = 35
    Caption = 'Reporsici'#243'n de Cubos Sellados'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E0000008A4944415448C7ED95DB0980
      300C004F710EE7515CCA4F9714C1BA87FE8894A235092D887A10282DE4F2F828
      FC28E980055885D16B054E917CB248A4C957A006C6FD3CE410609168056A8945
      A0925805A1E4A012EEA6F00AE0E47C49291498C92E888DA8B8B97BC688621DF8
      159E2D59C4BB97ECA31ECD55074B82A25DECB145F7278431034D8222BFC4061D
      BF73D1A15A5ED20000002574455874646174653A63726561746500323031392D
      30392D31305431353A31323A34352B30303A30301EDE37540000002574455874
      646174653A6D6F6469667900323031392D30392D31305431353A31323A34352B
      30303A30306F838FE800000028744558747376673A626173652D757269006669
      6C653A2F2F2F746D702F6D616769636B2D73375842343153703FD31469000000
      0049454E44AE426082}
    TabOrder = 5
    OnClick = cxButton3Click
  end
  object PArticulos: TPanel
    Left = 98
    Top = 8
    Width = 415
    Height = 492
    TabOrder = 6
    Visible = False
    object cxGrid2: TcxGrid
      Left = 1
      Top = 42
      Width = 399
      Height = 408
      Align = alLeft
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
        object cxGridDBColumn1: TcxGridDBColumn
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
          DataBinding.FieldName = 'CN_UN'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Width = 74
        end
        object cxGrid1DBTableView1CU_OZ: TcxGridDBColumn
          Caption = 'Cubos Abiertos (Oz)'
          DataBinding.FieldName = 'CU_OZ'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Width = 70
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxButton4: TcxButton
      Left = 1
      Top = 450
      Width = 413
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
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 1
      Top = 1
      Width = 413
      Height = 41
      Align = alTop
      Caption = 'Realizar Nueva Entrada'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F800000006624B4744000000000000F943BB7F000000097048597300000B1300
        000B1301009A9C18000001BA49444154480DC5D53F4F53511CC6F1D6AA31D658
        35D63AA8839B26FE49DAC5514DDC74A5B7BC8B968677408191C11546DE01036C
        DC424259684908242C8401920E5062AA496FF53B3C4D8ECD3DF79C261A9EE433
        F4F23BBF737A7ACF21F5BF9399A0F60E6E63807F963C022CE308A7B867A9CDE1
        26BC338D5DFC9601BA9609DE63130DDC7035CE6261D45803EB28A28074CC98EF
        46FD9CB6D39A79155EA2AAAF6ECB3B2CE20DD68C05DDB70DA860A8E65F9194B7
        E8A8E9AA2659D2F3D83C31F6BCEA68FE1AFBAA15B6D591408521728E95B7C79A
        B7F5DC9A3456545C4BA87B35DA164347CD9D87E810118A092BDF1B6FAE499DC9
        E2027D142C7BEEBBF2ACCE4ADA7782C7087D56AEB15D9DF8BB29E3D44538D75D
        F30C661EE185F1B9A3D7F900E379AEFA1F189A13FCC2963E7F3447E86FC738C1
        36024D12974FDA9A50E3FE4AD9F29ADEC24BFD0E79C446639AEA51B61DB4960A
        6630696A1ADB52AFD894B57757BA2A7CF30D3DFD9653AEE28656D2D337799050
        FB10752D4837A9CF99D08D2A21665142414A7AD634EA1A1AEB9DCAE83791087D
        898CE73B08EC7790FB5FE6677CC1073CD5F333BDD6EBD840D76F02F77D95310E
        E64F5C7FFE00A0A587424BE9312C0000000049454E44AE426082}
      TabOrder = 2
      OnClick = cxButton5Click
    end
    object Panel1: TPanel
      Left = 88
      Top = 88
      Width = 225
      Height = 81
      TabOrder = 3
      Visible = False
      object cxSpinEdit1: TcxSpinEdit
        Left = 24
        Top = 32
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2016Colorful'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2016Colorful'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2016Colorful'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2016Colorful'
        TabOrder = 0
        Width = 121
      end
      object cxButton6: TcxButton
        Left = 151
        Top = 32
        Width = 68
        Height = 33
        Caption = 'Ok'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2016Colorful'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B4744000000000000F943BB7F000000097048597300000B1300
          000B1301009A9C18000001A449444154480DC595CD2E035114C75B4D6854A844
          B5EF20561D1B5B898F05B16184F8780669CBC247502F60CF33B0C6CE48F40578
          048B26984A4CC264FC17FFCA89CC3DE6FA887FF20BCE9C73EE71EFB9E7A6FE5A
          690BBF2E90E1DF21087E63810130052680034AB4DF030F9C830BD004D65A000D
          109137F04242616FD037B1BAC1A1487005AAA00C06890336F85F44A40E724097
          48EE830AC82BBE792EDE128BA87241C880199054D3C067EC9CC9A920F6BC6291
          7C983FD7C59914E21C97C59EF7254CBE069EC01EE8616C04DC14D521DA7592BF
          9F32E82BAD8023D0CBFBF10CCEF86DFCF315C8823BB6623941F25510B0DA6D61
          1FE139DC32E78772E0813D5EA4AD130C1992B7BBE680D5B755020173E5B405D2
          0C7E64C2B8CA7700A52C60D8A234D817F761112C2995EB5BC484270CAE0AFB16
          6DAF24A2CDA41A7D8EE3E69CCB8F9E68D30CAB8DB4CAC5ADBE166D6A75D17689
          A62A636F982B56F3DC43DF7254CCF27C382A74D559498B55F59B1CF9AD6631EC
          D8B25C84781CCD0E2812076C72CFADC7B53C74F9E084CA83E3FEE4C91CE36C19
          353C9997A0F9DD05A4B2CAA3FF7F7A0752748F44A81A67630000000049454E44
          AE426082}
        TabOrder = 1
        OnClick = cxButton6Click
      end
      object cxDBLabel1: TcxDBLabel
        Left = 16
        Top = 5
        DataBinding.DataField = 'ARTICULO'
        DataBinding.DataSource = DsCubos
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 185
      end
    end
  end
  object cxButton7: TcxButton
    Left = 544
    Top = 104
    Width = 215
    Height = 38
    Caption = 'Cierre de Inventario de Cubos'
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000774944415448C7ED95610A80
      200C469FE1E192EE7F01F31EEB4705B22C086790F84090817BF8FDD8A0071620
      01A2CE5BF4FB15081C1769201020BAAC99334E460026E3A6174A823C2251355D
      E7A17E2B30C5639FFD89FBE407433004F578FE3E8BFA98A629335A2E1CD89719
      81F256AB1544606E9D507B3619723A357A04F908000000257445587464617465
      3A63726561746500323032302D30312D31335431393A31353A32352B30303A30
      3058304EDB0000002574455874646174653A6D6F6469667900323032302D3031
      2D31335431393A31353A32352B30303A3030296DF66700000028744558747376
      673A626173652D7572690066696C653A2F2F2F746D702F6D616769636B2D6C4B
      44757173715A754855900000000049454E44AE426082}
    TabOrder = 7
    OnClick = cxButton7Click
  end
  object cxButton8: TcxButton
    Left = 544
    Top = 63
    Width = 215
    Height = 37
    Caption = 'Apertura de Invetario de Cubos'
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000001684944415448C7E5D43F4F54
      511086F11F6B3608417A122C64E948A03214505093A0159660A3A514D0505061
      ADA13058F311A0C01E8C1468058D52E19F8DB4264220EC52ECACD93DE2BD5E91
      C4C437798B7B32F3CCB967CE1CFE370DA0721DE0716CA0863AB6317555684740
      5E07F432BFC30C6E14019723692F039CFA0073B899077F82C302E0D41FA3D00F
      9592029F71748563FD8A4FBF13983635CFCDA67714DDD108D6707609F43C3631
      5A145A465FB256C12A8EC3AB7E9E87FEC8CDD43CAA19BFDD136EAA84FB781339
      552C6415B8D712DCF41E6693DD95F110FB49EC4E14CCD5045E25C987580AB75E
      E51A3623A7B086E537F96E516827EE246B15BCC409BEE385C6C3D7AA81C8CDD4
      A2C6A0D5B18B69EDC3D88B5B2DDF253CC0DBC8390AC62F3589ADE4283EE0B1F6
      77A6138FF03E89DD0A46AEC6B0AE7D92AB788A657CD1DEE4F5C829AC41AC680C
      57DAE4538D0B30F427E054B7F11CDFC2CF62EDAFAB1B5DD701FE777501370A93
      368A3B06D00000002574455874646174653A63726561746500323032302D3031
      2D31385431363A30313A30322B30303A30306A7CF61A00000025744558746461
      74653A6D6F6469667900323032302D30312D31385431363A30313A30322B3030
      3A30301B214EA600000028744558747376673A626173652D7572690066696C65
      3A2F2F2F746D702F6D616769636B2D31634B3441723364213BA5EA0000000049
      454E44AE426082}
    TabOrder = 8
    OnClick = cxButton8Click
  end
  object DBconsulta: TfrxDBDataset
    UserName = 'FRxDbConsulta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ARTICULO=ARTICULO'
      'COSTO=COSTO'
      'PRECIO_A=PRECIO_A'
      'INVINICIAL=INVINICIAL'
      'INFFINAL=INFFINAL'
      'TOTALSALIDA=TOTALSALIDA')
    DataSet = Qconsulta
    BCDToCurrency = False
    Left = 96
    Top = 128
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
    Left = 176
    Top = 160
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = DBconsulta
        DataSetName = 'FRxDbConsulta'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'ventas'
        Value = Null
      end
      item
        Name = 'rtc'
        Value = Null
      end
      item
        Name = 'fecha'
        Value = Null
      end>
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
          Top = 105.927520000000000000
          Width = 213.444280000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte RTC')
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
            'Descripci'#243'n de Cubos')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
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
            'Cantidad')
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
        object fecha: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 151.181200000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 151.181200000000000000
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
            'Fecha')
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
          Left = 5.261410000000000000
          Width = 141.127520000000000000
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
          Left = 204.094620000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'TOTALSALIDA'
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
            '[FRxDbConsulta."TOTALSALIDA"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 130.015770000000000000
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
          Left = 28.800000000000000000
          Top = 9.600000000000000000
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
          Left = 162.897650000000000000
          Top = 9.600000000000000000
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
          Left = 30.236240000000000000
          Top = 30.236240000000000000
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
            'Total Cubos :')
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
            '[SUM(<FRxDbConsulta."INVINICIAL">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 71.811070000000000000
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
            'Total Ventas  :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 90.708720000000000000
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
            'Total RTC  :')
          ParentFont = False
        end
        object ventas: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 147.917060454545000000
          Top = 72.590600000000000000
          Width = 90.193329545454500000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ventas]')
          ParentFont = False
        end
        object rtc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 91.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rtc]')
          ParentFont = False
        end
      end
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
    Left = 195
    Top = 56
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
    Left = 259
    Top = 280
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
  object DsConsulta: TDataSource
    DataSet = Qconsulta
    Left = 376
    Top = 96
  end
  object qventas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select Sum(a.total) ventas from detailfact a'
      'left join master_fact b On a.masterid = b.no_fact'
      'left join mtartuculos c ON a.articuloid = c.cod_art'
      'left join mtcategoria d On c.cod_cat = d.codcat')
    Params = <>
    Left = 624
    Top = 176
    object qventasVENTAS: TExtendedField
      FieldName = 'VENTAS'
      ReadOnly = True
      Precision = 19
    end
  end
  object Qconsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select  c.articulo, c.costo, c.precio_a,'
      
        'Sum((a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0))) InvInicial, S' +
        'um((a.cn_un2 + iif(a.cu_oz > 0,(a.cu_oz2/150),0))) InfFinal,'
      
        'Sum(((a.cn_un + iif(a.cu_oz > 0, (a.cu_oz/150),0)) - (a.cn_un2 +' +
        ' iif(a.cu_oz > 0,(a.cu_oz2/150),0)))) TotalSalida'
      ' from hl_cubos a'
      'left join mtartuculos c on a.idarticulo = c.cod_art'
      'group by  c.articulo, c.costo, c.precio_a')
    Params = <>
    Left = 64
    Top = 220
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
  end
  object Prnconsulta1: TfrxReport
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
    Left = 360
    Top = 216
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = DBconsulta
        DataSetName = 'FRxDbConsulta'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'ventas'
        Value = ''
      end
      item
        Name = 'rtc'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 201.297650000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 32.686890000000000000
          Top = 79.470810000000000000
          Width = 765.255660000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte RTC')
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
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 23.979530000000000000
          Top = 33.277180000000000000
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
          Width = 772.006990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 28.379530000000000000
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
          Left = 291.023810000000000000
          Top = 181.417440000000000000
          Width = 90.179530000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Inv. Inicial')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 200.315090000000000000
          Width = 768.227460000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 45.354360000000000000
          Width = 147.401670000000000000
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
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
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
            'Inv. Final')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
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
            'Total Salida')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.800000000000000000
        Top = 279.685220000000000000
        Width = 793.701300000000000000
        DataSet = DBconsulta
        DataSetName = 'FRxDbConsulta'
        RowCount = 0
        object FRxDbProductosTITULOPRN: TfrxMemoView
          AllowVectorExport = True
          Left = 27.938590000000000000
          Width = 239.395300000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = DBconsulta
          DataSetName = 'FRxDbConsulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Left = 291.023810000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'INVINICIAL'
          DataSet = DBconsulta
          DataSetName = 'FRxDbConsulta'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FRxDbConsulta."INVINICIAL"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'INFFINAL'
          DataSet = DBconsulta
          DataSetName = 'FRxDbConsulta'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FRxDbConsulta."INFFINAL"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 525.354670000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'TOTALSALIDA'
          DataSet = DBconsulta
          DataSetName = 'FRxDbConsulta'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FRxDbConsulta."TOTALSALIDA"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 130.015770000000000000
        Top = 362.834880000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 2.600000000000000000
          Width = 753.109340000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 410.532530000000000000
          Top = 9.600000000000000000
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
          Left = 544.630180000000000000
          Top = 9.600000000000000000
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
          Left = 411.968770000000000000
          Top = 30.236240000000000000
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
            'Total Cubos :')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
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
            '[SUM(<FRxDbConsulta."INVINICIAL">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 22.677180000000000000
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
            'Total Ventas  :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 41.574830000000000000
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
            'Total RTC  :')
          ParentFont = False
        end
        object ventas: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 140.358000450000000000
          Top = 23.456710000000000000
          Width = 90.193329550000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ventas]')
          ParentFont = False
        end
        object rtc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 42.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rtc]')
          ParentFont = False
        end
      end
    end
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
    Left = 656
    Top = 160
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
    Left = 648
    Top = 168
  end
  object DsCubos: TDataSource
    DataSet = datos.QCubos
    Left = 328
    Top = 360
  end
end
