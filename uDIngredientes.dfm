object FIngredientes: TFIngredientes
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Ingredientes'
  ClientHeight = 540
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 370
    Height = 36
    Align = alTop
    TabOrder = 0
    object Label61: TLabel
      AlignWithMargins = True
      Left = 26
      Top = -3
      Width = 188
      Height = 33
      Margins.Left = 5
      Caption = 'Ingredientes |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object LbModo: TLabel
      AlignWithMargins = True
      Left = 214
      Top = 7
      Width = 94
      Height = 21
      Margins.Left = 5
      Caption = 'Seleccionar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 56
    TabOrder = 1
    Height = 441
    Width = 353
    object cxGrid1: TcxGrid
      Left = 3
      Top = 16
      Width = 342
      Height = 409
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DsTbIngredientes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1INGREDIENTES: TcxGridDBColumn
          Caption = 'Ingredientes'
          DataBinding.FieldName = 'INGREDIENTES'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 217
        end
        object cxGrid1DBTableView1SELECCION: TcxGridDBColumn
          Caption = 'Selecci'#243'n'
          DataBinding.FieldName = 'SELECCION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.DisplayGrayed = 'False'
          Width = 84
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxButton3: TcxButton
    Left = 81
    Top = 503
    Width = 86
    Height = 27
    Caption = 'Guardar'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000206348524D00007A26000080
      840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
      06624B4744000000000000F943BB7F000000097048597300000EC400000EC401
      952B0E1B000001674944415448C7DDD4CB4E53511406E02F903631880FC0CC21
      17DF41837309CA65C0034834253A61481DA2BE05B5BE8FDA0801125E0161A0B6
      491D9C75D293E69C9CDD9689AC64257BEFF5AF7FADFDEF0BF7DD9AD84117A7B8
      0D3FC3173C9B85FC252E31ACF02B3C9E86781E9F0B44DF7080552CE00196B154
      92FB24A5404EFE1BFB984B6C6C17037CA89325279F44DF5DF423B75D056A1A69
      FEFAAEC9C96E4BAEF924B22491C3D700B612C9B70AE447290967015E29ACB5A3
      CB993ACFED57242CC6FC69CCFB634576A621879BB10270186B03EC25C8F22862
      D7A912E532E53BA9EB7C2DE2A765C16E040F4A62F94EEA0EF47D604ECA82DB11
      FC2EFB2EC6AD5DA3F93C7AC1F1AA0CD0C44500DE98DC5A917B8E46156833407F
      B03E01F973FC8DDC1775E04F85226F2BE42ACAD22A901FA77433878F4687FA03
      EF6437E461F89AEC407B05DCB1F42F066C849EC31A3F4F91A5CA1AB2C7D5C14F
      D963BC897147765B1AD392FF1FF60F11297ED89DCBC85C000000257445587464
      6174653A63726561746500323032302D30382D32385431313A32313A33362B30
      303A3030B87AAC2A0000002574455874646174653A6D6F646966790032303230
      2D30382D32385431313A32313A33362B30303A3030C927149600000019744558
      74536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000
      000049454E44AE426082}
    TabOrder = 2
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 173
    Top = 503
    Width = 92
    Height = 27
    Caption = 'Cancelar'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000001574944415448C7DD954F4EC2
      5010C67FFEEB465C36F10CD25308171031DC81402A5E038F41E014BD84855003
      9CA26E74A12E3A2F4C5E5EFBECDB189D6412F2CDCC37E59BE914FEBB45C00858
      0105F0265E004B8945A1E443E0007C79FC000CDA109F01CF8A200752A00B5C8A
      7705CB55DE5C6ABD66C8DF813170EA799889E49A268D76AFC86F5BFCEB9E6A52
      2B57A4341FB7D1546C2AB57B6A063F529A6B2D1320036285C58225965C6BE178
      7035584A30B5F04C358EC5CD70332B7726F8C2D5E055823716AE0973EB776CE5
      26122B5C0D4A09761CB11878E1B8925BE0DA917725F1D200AE153C21DC4CEDE7
      AF486486FC68E16D86FC44C390CD9AAE095FD30D0D6BAA5FB44980FEA9D4EE68
      B8B0038EA7A2D782BC0F7C48ED9D2F79AE9A4C69BE90E7F2E486DC7BEC8C96A6
      8999C98C4AEF8E784235D00D01E75ACBB5C7FFC1D9FD44963A8BA8366241F5F6
      96E25BC186C04528F9DFB06F3E088A7E1E5CEEF6000000257445587464617465
      3A63726561746500323032302D30322D30325431333A35373A31302B30303A30
      30806C7F7D0000002574455874646174653A6D6F6469667900323032302D3032
      2D30325431333A35373A31302B30303A3030F131C7C100000028744558747376
      673A626173652D7572690066696C653A2F2F2F746D702F6D616769636B2D3271
      796544635169107423DE0000000049454E44AE426082}
    TabOrder = 3
    OnClick = cxButton4Click
  end
  object DsTbIngredientes: TDataSource
    DataSet = datos.rbDIngredientes
    Left = 64
    Top = 176
  end
end
