object FrmCatProducto: TFrmCatProducto
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Catalogo de Productos'
  ClientHeight = 544
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 384
    Top = 176
    Width = 250
    Height = 200
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 119
    Width = 944
    Height = 425
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = Productos
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    LookAndFeel.SkinName = 'Seven'
    ClientRectBottom = 419
    ClientRectLeft = 2
    ClientRectRight = 938
    ClientRectTop = 26
    object Productos: TcxTabSheet
      Caption = 'Productos'
      ImageIndex = 755
      object cxPageControl2: TcxPageControl
        Left = 469
        Top = 158
        Width = 450
        Height = 235
        Align = alLeft
        TabOrder = 0
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Seven'
        ClientRectBottom = 229
        ClientRectLeft = 2
        ClientRectRight = 444
        ClientRectTop = 26
        object cxTabSheet2: TcxTabSheet
          Caption = 'Combos Creados'
          ImageIndex = 0
          object cxGrid3: TcxGrid
            Left = 0
            Top = 50
            Width = 442
            Height = 153
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Sharp'
            object cxGrid3DBTableView1: TcxGridDBTableView
              OnDblClick = cxGrid3DBTableView1DblClick
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DsqCombos
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = 'Cantidad =,0'
                  Kind = skCount
                  Column = cxGrid3DBTableView1NOMBRECOMBO
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid3DBTableView1COMBOMASTER: TcxGridDBColumn
                Caption = 'Codigo'
                DataBinding.FieldName = 'CODIGOTXT'
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
              object cxGrid3DBTableView1NOMBRECOMBO: TcxGridDBColumn
                Caption = 'Nombre del Combo'
                DataBinding.FieldName = 'NOMBRECOMBO'
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
              object cxGrid3DBTableView1PRECIO1: TcxGridDBColumn
                Caption = 'Precio Final'
                DataBinding.FieldName = 'PRECIO3'
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
                Width = 84
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBTableView1
            end
          end
          object BtModiCombo: TcxButton
            Left = 0
            Top = 25
            Width = 442
            Height = 25
            Align = alTop
            Caption = 'Modificar Combo'
            Enabled = False
            OptionsImage.ImageIndex = 988
            OptionsImage.Images = inicio.RibbonImages16
            TabOrder = 1
            OnClick = BtModiComboClick
          end
          object cxButton2: TcxButton
            Left = 0
            Top = 0
            Width = 442
            Height = 25
            Align = alTop
            Caption = 'Duplicar Combo'
            Enabled = False
            OptionsImage.ImageIndex = 925
            OptionsImage.Images = inicio.RibbonImages16
            TabOrder = 2
            OnClick = cxButton2Click
          end
          object cxGroupBox1: TcxGroupBox
            Left = 64
            Top = 152
            Caption = 'Introduce Nombre del Combo'
            TabOrder = 3
            Visible = False
            Height = 57
            Width = 321
            object cxTextEdit1: TcxTextEdit
              Left = 43
              Top = 22
              Properties.CharCase = ecUpperCase
              Properties.OnChange = cxTextEdit1PropertiesChange
              TabOrder = 0
              Width = 233
            end
          end
        end
      end
      object cxPageControl3: TcxPageControl
        Left = 0
        Top = 158
        Width = 469
        Height = 235
        Align = alLeft
        TabOrder = 1
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Seven'
        ClientRectBottom = 229
        ClientRectLeft = 2
        ClientRectRight = 463
        ClientRectTop = 26
        object cxTabSheet1: TcxTabSheet
          Caption = 'Existencia'
          ImageIndex = 0
          object cxGrid4: TcxGrid
            Left = 0
            Top = 0
            Width = 461
            Height = 203
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Sharp'
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DsExistencia
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              object cxGridDBTableView1DESCRIPCION: TcxGridDBColumn
                Caption = 'Nombre de Tienda'
                DataBinding.FieldName = 'DESCRIPCION'
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
                Width = 309
              end
              object cxGridDBTableView1EXISTENCIA: TcxGridDBColumn
                Caption = 'Existencia'
                DataBinding.FieldName = 'EXISTENCIA'
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
                Width = 133
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 158
        Align = alTop
        TabOrder = 3
        LookAndFeel.SkinName = 'Sharp'
        object cxGrid2DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid2DBTableView1DblClick
          OnKeyDown = cxGrid2DBTableView1KeyDown
          OnKeyUp = cxGrid2DBTableView1KeyUp
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = cxGrid2DBTableView1CellClick
          DataController.DataSource = DsqArticulos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1COD_ART: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'COD_ART'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 64
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
            Caption = 'Articulo'
            DataBinding.FieldName = 'ARTICULO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 268
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 299
          end
          object cxGrid2DBTableView1MODELO: TcxGridDBColumn
            Caption = 'Modelo'
            DataBinding.FieldName = 'MODELO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 182
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 182
          end
          object cxGrid2DBTableView1MARCA: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'MARCA'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 119
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 119
          end
          object cxGrid2DBTableView1PRECIO_A: TcxGridDBColumn
            Caption = 'Precio A'
            DataBinding.FieldName = 'PRECIO_A'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 47
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 71
          end
          object cxGrid2DBTableView1PRECIO_B: TcxGridDBColumn
            Caption = 'Precio B'
            DataBinding.FieldName = 'PRECIO_B'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 91
          end
          object cxGrid2DBTableView1PRECIO_D: TcxGridDBColumn
            Caption = 'Procio C'
            DataBinding.FieldName = 'PRECIO_D'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 84
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object opBuscar: TcxGroupBox
        Left = 215
        Top = 0
        Caption = 'Buscar Registro.....'
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        TabOrder = 2
        Visible = False
        Height = 145
        Width = 449
        object op: TcxRadioGroup
          Left = 7
          Top = 21
          Properties.Items = <
            item
              Caption = 'Codigo'
            end
            item
              Caption = 'Nombre de Articulo'
            end
            item
              Caption = 'Marca'
            end
            item
              Caption = 'Modelo'
            end>
          ItemIndex = 1
          TabOrder = 0
          OnClick = opClick
          Height = 105
          Width = 165
        end
        object edit1: TcxTextEdit
          Left = 192
          Top = 64
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edit1PropertiesChange
          TabOrder = 1
          Width = 233
        end
        object label1: TcxLabel
          Left = 192
          Top = 48
          Caption = 'Introducir Nombre de Articulo'
        end
        object cxButton1: TcxButton
          Left = 250
          Top = 91
          Width = 97
          Height = 30
          Caption = '&Ok'
          OptionsImage.ImageIndex = 951
          OptionsImage.Images = inicio.RibbonImages16
          TabOrder = 3
          OnClick = cxButton1Click
        end
      end
    end
  end
  object MainRibbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 944
    Height = 119
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ApplicationButton.Glyph.SourceDPI = 96
    ApplicationButton.Glyph.Data = {
      424D361000000000000036000000280000002000000020000000010020000000
      000000000000C40E0000C40E00000000000000000000FDFDFD00F6F6F6FFEDED
      EDFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFEEEEEEFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFE1E1E1FFC6C6
      C6FFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
      BCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
      BCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
      BCFFCDCDCDFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFA2ADB9FF385B
      84FF345680FF32547EFF32537DFF32537DFF32537DFF32547DFF32547EFF3254
      7EFF32547EFF32547EFF32547EFF32547EFF32547EFF32547EFF32547EFF3254
      7EFF32547EFF32547EFF32547EFF32547EFF32547EFF32547EFF33557EFF3557
      80FF385B83FFEBEBECFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDFF73889FFF3255
      7FFF91D8EDFF8BD0E8FF89CFE5FF89CEE5FF88CEE5FF88CDE5FF87CDE4FF87CD
      E4FF87CBE4FF86CBE3FF86CAE3FF86CAE3FF85C9E3FF85C9E2FF83C8E2FF83C8
      E2FF83C6E1FF82C6E1FF82C5E1FF81C5E1FF81C4DFFF81C4E0FF83C6E2FF84C5
      E0FF5E8EAFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9FF446488FF7393
      B1FFE7FFFFFFDFF8FFFFDEF7FFFFDEF7FFFFDFF7FFFFDFF8FFFFDFF8FFFFE0F8
      FFFFDFF8FFFFDFF8FFFFDFF8FFFFDFF7FFFFDFF7FFFFDFF7FFFFDFF8FFFFDFF8
      FFFFDFF8FFFFDFF8FFFFDFF8FFFFDFF8FFFFDFF8FFFFE0F8FFFFE6FEFFFFA6C2
      D5FFA9B5C4FFFDFDFD00FFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFF30557FFFA4C3
      D6FFD2EFF8FFCCEAF4FFCBE9F3FFCCE9F4FFCCEAF5FFC3DFE9FFC4E1EAFFC4E1
      EAFFC4E1EAFFC3E0E9FFCCEAF5FFCCE9F4FFCCE9F3FFCCE9F3FFCCE9F3FFCCE9
      F3FFCCE9F3FFCCE9F3FFCCE9F3FFCCE9F3FFCCE9F3FFCDEAF5FFD5F3FBFF6D8E
      ACFFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFF2F537EFFD3F1
      F9FFC5E4EFFFC1E0ECFFC1E0ECFFC1E0ECFFC3E3EFFFABC7D1FFADC9D4FFADC9
      D4FFADC9D4FFABC7D1FFC4E3EFFFC1E1ECFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0
      ECFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0ECFFC3E2EDFFCAE9F3FF9AA5
      B4FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FF506D8FFFB5D4
      E4FFBEDDEAFFBAD9E7FFBAD9E6FFBADAE7FFBEDDEAFF99B3B9FF9BB5BDFF9BB5
      BEFF9BB5BDFF99B3B9FFB3D2E7FFBBDAE7FFBAD9E6FFBAD9E6FFBAD9E6FFBAD9
      E6FFBAD9E6FFBAD9E6FFBAD9E6FFBAD9E6FFBAD9E6FFBAD9E7FFBEDDEAFFC1CB
      CFFFE2E2E2FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FF899BAFFF6688
      A7FFBFDEE9FFBBDAE6FFBAD9E6FFBBDAE6FFBFE0E7FF4556BBFF8EA8A7FF8EA7
      A9FF8EA8A7FF4557BBFFBFDFE6FFBADAE5FFB9D8E5FFB9D8E5FFB9D8E5FFB9D8
      E5FFB9D8E5FFB9D8E5FFB9D8E5FFB9D8E5FFB9D8E5FFB9D8E5FFBADAE6FFBDDC
      E7FFC8C8C8FFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFB7C1CCFF3558
      81FF32527CFF30507AFF30507BFF2E507AFF2F5477FF2532C9FF233697FF2138
      65FF233697FF2431C9FF2B5176FF274B77FF264A77FF264A77FF264A77FF264A
      77FF264A77FF264A77FF264A77FF264A77FF264A77FF264A77FF274A78FF2B4F
      7CFF2E5786FFD8D8D8FFE9E9E9FFEEEEEEFFF9F9F9FFFFFFFFFFF1F1F1FF3B5C
      84FF2988BBFF1984B9FF087FB8FF0781B8FF74CEE6FF2736C8FF4355E8FF3344
      D1FF4355E7FF2534C7FF93E2F4FF8CDAF8FF8AD9F8FF8AD9F8FF8AD9F8FF8AD9
      F8FF8AD9F8FF8AD9F8FF8AD9F8FF8AD9F8FF8AD9F8FF8AD9F8FF8CDBFBFF8BD9
      F9FF255790FFB7B7B7FFBCBCBCFFCDCDCDFFEEEEEEFFFFFFFFFFF8F8F8FF7388
      A2FF347CACFF4B8499FFB96517FFB26417FFB6670DFF2235CAFF5064F6FF4458
      F2FF5064F6FF2135C9FFB2640BFFA85D13FFA65C14FFA65C14FFA65C14FFA65C
      14FFA65C14FFA65C14FFA65C14FFA65C14FFA65C14FFA65C14FFA65C15FFA85E
      17FFA9621CFFA66422FFA36526FFA36629FFEDEDEDFFFFFFFFFFFEFEFEFFB8C2
      CDFF366E9DFF727F73FF9F6222FFD7A762FFE0AB58FF1E32C6FF5264F3FF384D
      ECFF5264F3FF1E32C6FFDFAA56FFD2A15CFFD0A05DFFD0A05DFFD0A05DFFD0A0
      5DFFD0A05DFFD0A05DFFD0A05DFFD0A05DFFD0A05DFFD0A05DFFD0A05DFFD0A0
      5EFFD0A15FFFD0A362FFD0A467FFC5965AFFF6F6F6FFFFFFFFFFFFFFFFFFF1F1
      F1FF325C8BFF926E41FFBB9C76FFDBFFFFFFE6FFFFFF1D2DBFFF5465F0FF2E42
      E9FF5465F0FF1D2DBFFFE6FFFFFFD8FDFFFFD5FAFFFFD5FAFFFFD5FAFFFFD5FA
      FFFFD5FAFFFFD5FAFFFFD5FAFFFFD5FAFFFFD5FAFFFFD5FAFFFFD5FAFFFFD5FA
      FFFFD5FBFFFFD6FEFFFFCCD2C7FFD9C5ADFFFDFDFD00FFFFFFFFFFFFFFFFF8F8
      F8FF6B88A7FFB06314FFC4C7BCFFCFF1FEFFDAFBFAFF1D2BBCFF5969F0FF253A
      E8FF5969F0FF1D2BBCFFDAFAF9FFCDECF6FFCAEAF5FFCAEAF5FFCAEAF5FFCAEA
      F5FFCAEAF5FFCAEAF5FFCAEAF5FFCAEAF5FFCAEAF5FFCAEAF5FFCAEAF5FFCAEA
      F5FFCAEAF7FFCBF0FFFFC1A983FFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFB5C1CFFFAF6213FFC7F0FFFFC4E6F2FFCFF0F0FF1D2BBCFF5D6AF1FF1A2E
      E6FF5D6AF1FF1D2BBCFFCFF0EFFFC3E3EDFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0
      ECFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0ECFFC1E0
      ECFFC1E1EEFFC2E6F7FFCBB59CFFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FF93602EFFBAD5DFFFBADEEEFFC2E4EBFF1725BFFF3949EEFF071C
      E7FF3949EEFF1725BFFFC2E4EAFFBADAE8FFB8D9E8FFB8D9E8FFB8D9E8FFB8D9
      E8FFB8D9E8FFB8D9E8FFB8D9E8FFB8D9E8FFB8D9E8FFB8D9E8FFB8D9E8FFB8D9
      E8FFB8D9E8FFB8DBEDFFBDCAD1FFE2E2E2FFF9F9F9FFFFFFFFFFFFFFFFFFFFFF
      FFFFF8F8F8FFA98D70FFAC906CFFB0DCF6FFB2DDF1FFB8E3F0FFBCE6EFFFBCE7
      EFFFBCE6EFFFB8E3F0FFB2DCEFFFAFD8EFFFAED8EFFFAED8EFFFAED8EFFFAED8
      EFFFAED8EFFFAED8EFFFAED8EFFFAED8EFFFAED8EFFFAED8EFFFAED8EFFFAED8
      EFFFAED8EFFFAFD9F1FFAEDAF4FFC8C8C8FFEEEEEEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFCFC4B9FFA66320FFA25D19FFA15B16FFA25C15FFA35D15FFA35D
      15FFA35D15FFA35C15FFA15B15FFA15B15FFA15A15FFA15A15FFA15A15FFA15A
      15FFA15A15FFA15A15FFA15A15FFA15A15FFA15A15FFA15A15FFA15A15FFA15A
      15FFA15A15FFA15B16FFA25E1AFFA36323FFEBEBEBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1F1F1FFBE8945FFD2AB72FFD1A96FFFCFA76CFFD2AB72FFD1A8
      6EFFD0A76CFFD0A76CFFD0A76CFFD0A76CFFD0A76CFFD0A76CFFD0A76CFFD0A7
      6CFFD0A76CFFD0A76CFFD0A76CFFD0A76CFFD0A76CFFD0A76CFFD0A76CFFD0A7
      6CFFD0A76CFFD1A96FFFD1AB72FFBC8746FFF1F1F1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8FFC5A379FFCA9E66FFD1AB73FFCCA368FFD0AB74FFCFA8
      72FFCCA369FFCDA46AFFCDA46AFFCDA46AFFCDA46AFFCDA46AFFCDA46AFFCDA4
      6AFFCDA46AFFCDA46AFFCDA46AFFCDA46AFFCDA46AFFCDA46AFFCDA46AFFCDA4
      6AFFCCA369FFD1AB73FFCA9E66FFC5A279FFF8F8F8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFDBCDBBFFC19255FFD4B280FFCBA368FFCFA871FFD3AF
      7CFFCBA267FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA3
      69FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA3
      69FFCCA469FFD4B380FFC19255FFDBCDBBFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1F1F1FFB88241FFD5B484FFCFA972FFCDA46CFFD7B6
      87FFCCA46AFFCCA368FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA3
      69FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA369FFCCA2
      68FFCFAA73FFD5B484FFB88241FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8F8FFC4A277FFCDA672FFD5B381FFCAA064FFD8B8
      8CFFD0AA75FFCBA267FFCCA267FFCBA267FFCBA167FFCBA167FFCBA167FFCBA1
      67FFCBA167FFCBA167FFCBA167FFCBA167FFCBA267FFCCA267FFCCA268FFCBA2
      67FFD5B381FFCDA672FFC4A277FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFDBCDBBFFC3965BFFDDBF96FFCBA166FFD4B3
      83FFD6B587FFCAA064FFC99E61FFC89C5EFFC79B5CFFC79B5CFFC79B5CFFC79B
      5CFFC79B5CFFC79B5CFFC79B5CFFC79B5CFFC89C5EFFC99E61FFCBA166FFCCA2
      68FFDDBF96FFC3965BFFDBCDBBFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FFB8823FFFDDC098FFD2AD78FFD2AB
      78FFDDC19BFFC99D60FFF3EADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EADCFFC99F62FFD2AD
      79FFDDC098FFB8823FFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFC4A176FFD2AE7EFFD9BA8FFFCCA3
      68FFE1CAA6FFCDA56DFFC89C5DFFC69756FFC49450FFC3934EFFC3934EFFC393
      4EFFC3934EFFC3934EFFC3934EFFC49450FFC69756FFC89D5EFFCA9F63FFD9BB
      90FFD2AE7FFFC4A176FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFDBCCBAFFC59860FFE4CDABFFCA9F
      64FFDEC59FFFD6B588FFC99D5FFFF2E9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E9DAFFC99E61FFCBA268FFE4CE
      ACFFC59860FFDBCCBAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FFB7813EFFE3CDACFFD3AF
      7DFFD9BA8EFFDFC4A0FFC99E61FFC99D60FFC89B5CFFC79A5BFFC79A5BFFC79A
      5BFFC79A5BFFC79A5BFFC79A5BFFC89B5CFFC99D60FFCA9F63FFD4B180FFE3CD
      ACFFB7813EFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFC5A177FFD6B68CFFDEC2
      9BFFD2AC79FFE9D7BEFFC89D5EFFC99E61FFC99E61FFC99E61FFC99E60FFC99E
      60FFC99E60FFC99E60FFC99E61FFC99E61FFC99E61FFC99E60FFDFC49EFFD6B6
      8CFFC5A177FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD00E0D1BEFFC89E68FFECDD
      C5FFECDCC4FFECDBC3FFEDDCC5FFEDDEC7FFEDDEC7FFEDDEC7FFEDDEC7FFEDDE
      C7FFEDDEC7FFEDDEC7FFEDDEC7FFEDDEC7FFEDDEC7FFEDDDC7FFEDDDC6FFC89E
      68FFE0D1BEFFFDFDFD00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCBA77AFFB881
      3EFFB7803CFFB77F3CFFB7803CFFB7803DFFB7803DFFB7803DFFB7803DFFB780
      3DFFB7803DFFB7803DFFB7803DFFB7803DFFB7803DFFB7803DFFB8813EFFCBA7
      7AFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ApplicationButton.Text = 'Archivo'
    BarManager = dxBarManager
    Style = rs2010
    ColorSchemeName = 'Seven'
    Fonts.ApplicationButton.Charset = DEFAULT_CHARSET
    Fonts.ApplicationButton.Color = clWindowText
    Fonts.ApplicationButton.Height = -11
    Fonts.ApplicationButton.Name = 'Tahoma'
    Fonts.ApplicationButton.Style = []
    Fonts.AssignedFonts = [afTabHeader, afGroup, afGroupHeader, afApplicationButton]
    Fonts.Group.Charset = DEFAULT_CHARSET
    Fonts.Group.Color = 8332560
    Fonts.Group.Height = -11
    Fonts.Group.Name = 'Tahoma'
    Fonts.Group.Style = []
    Fonts.GroupHeader.Charset = DEFAULT_CHARSET
    Fonts.GroupHeader.Color = 8332560
    Fonts.GroupHeader.Height = -11
    Fonts.GroupHeader.Name = 'Tahoma'
    Fonts.GroupHeader.Style = []
    Fonts.TabHeader.Charset = DEFAULT_CHARSET
    Fonts.TabHeader.Color = clWindowText
    Fonts.TabHeader.Height = -11
    Fonts.TabHeader.Name = 'Tahoma'
    Fonts.TabHeader.Style = []
    MinimizeOnTabDblClick = False
    PopupMenuItems = []
    SupportNonClientDrawing = True
    Contexts = <
      item
        Caption = 'Opciones'
        Color = 6248624
        Visible = True
      end>
    TabOrder = 2
    TabStop = False
    object TabInvetario1: TdxRibbonTab
      Active = True
      Caption = 'Inventario'
      Groups = <
        item
          ToolbarName = 'BarMant'
        end
        item
          ToolbarName = 'BarOperaciones'
        end>
      Index = 0
      ContextIndex = 0
    end
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtartuculos')
    Params = <>
    Left = 544
    Top = 56
    object IbqRArticulosCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object IbqRArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object IbqRArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object IbqRArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object IbqRArticulosPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
      currency = True
    end
    object IbqRArticulosPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
      currency = True
    end
    object IbqRArticulosPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
      currency = True
    end
  end
  object DsqArticulos: TDataSource
    DataSet = IbqRArticulos
    Left = 496
    Top = 72
  end
  object dxBarManager: TdxBarManager
    AlwaysMerge = True
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = inicio.RibbonImages16
    ImageOptions.LargeImages = inicio.RibbonImages32
    ImageOptions.MakeDisabledImagesFaded = True
    ImageOptions.StretchGlyphs = False
    LookAndFeel.SkinName = 'Silver'
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    ShowHint = False
    ShowHintForDisabledItems = False
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 489
    Top = 152
    PixelsPerInch = 96
    object BarMant: TdxBar
      Caption = 'Articulos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 937
      FloatTop = 8
      FloatClientWidth = 128
      FloatClientHeight = 94
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarOperaciones: TdxBar
      Caption = 'Operaciones'
      CaptionButtons = <>
      DockedLeft = 144
      DockedTop = 0
      FloatLeft = 957
      FloatTop = 8
      FloatClientWidth = 82
      FloatClientHeight = 86
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton17'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnDiary: TdxBarLargeButton
      Caption = 'Diary'
      Category = 0
      Hint = 'Diary'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 13
      SyncImageIndex = False
      ImageIndex = 13
    end
    object btnPortfolio: TdxBarLargeButton
      Caption = 'Portfolio'
      Category = 0
      Hint = 'Portfolio'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 1
      SyncImageIndex = False
      ImageIndex = 1
    end
    object btnOfferBook: TdxBarLargeButton
      Caption = 'Offer Book'
      Category = 0
      Hint = 'Offer Book'
      Visible = ivAlways
      LargeImageIndex = 12
      SyncImageIndex = False
      ImageIndex = 12
    end
    object btnOptions: TdxBarLargeButton
      Caption = 'Options'
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 18
      SyncImageIndex = False
      ImageIndex = 18
    end
    object btnSMS: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 28
    end
    object btnClientReview: TdxBarLargeButton
      Caption = 'Clients'
      Category = 0
      Hint = 'Clients'
      Visible = ivAlways
      LargeImageIndex = 4
      SyncImageIndex = False
      ImageIndex = 4
    end
    object btnViewingsReview: TdxBarLargeButton
      Caption = 'Viewings'
      Category = 0
      Hint = 'Viewings'
      Visible = ivAlways
      LargeImageIndex = 6
      SyncImageIndex = False
      ImageIndex = 6
    end
    object btnMatchesReview: TdxBarLargeButton
      Caption = 'Matches'
      Category = 0
      Hint = 'Matches'
      Visible = ivAlways
      LargeImageIndex = 7
      SyncImageIndex = False
      ImageIndex = 7
    end
    object btnCustomReports: TdxBarLargeButton
      Caption = 'Custom'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 9
      SyncImageIndex = False
      ImageIndex = 9
    end
    object btnActivityReport: TdxBarLargeButton
      Caption = 'Activity'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 10
      SyncImageIndex = False
      ImageIndex = 10
    end
    object btnValuationReport: TdxBarLargeButton
      Caption = 'Valuation'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 11
      SyncImageIndex = False
      ImageIndex = 11
    end
    object btnMarketing: TdxBarLargeButton
      Caption = 'Marketing'
      Category = 0
      Hint = 'Marketing'
      Visible = ivAlways
      LargeImageIndex = 16
      SyncImageIndex = False
      ImageIndex = 16
    end
    object btnLettings: TdxBarLargeButton
      Caption = 'Lettings'
      Category = 0
      Hint = 'Lettings'
      Visible = ivAlways
      LargeImageIndex = 15
      SyncImageIndex = False
      ImageIndex = 15
    end
    object btnReports: TdxBarLargeButton
      Caption = 'Generate'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 8
      SyncImageIndex = False
      ImageIndex = 8
    end
    object btnArchivedApps: TdxBarLargeButton
      Caption = 'Applicants'
      Category = 0
      Hint = 'Applicants'
      Visible = ivAlways
      LargeImageIndex = 20
      SyncImageIndex = False
      ImageIndex = 43
    end
    object btnArchivedProperties: TdxBarLargeButton
      Caption = 'Properties'
      Category = 0
      Hint = 'Properties'
      Visible = ivAlways
      PaintStyle = psCaption
      LargeImageIndex = 21
      SyncImageIndex = False
      ImageIndex = 42
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = 'File'
      Category = 0
      Hint = 'File'
      Visible = ivAlways
    end
    object dxBarSeparator2: TdxBarSeparator
      Caption = 'Applicants'
      Category = 0
      Hint = 'Applicants'
      Visible = ivAlways
    end
    object dxBarSeparator3: TdxBarSeparator
      Caption = 'Modules'
      Category = 0
      Hint = 'Modules'
      Visible = ivAlways
    end
    object dxBarSeparator4: TdxBarSeparator
      Caption = 'Review'
      Category = 0
      Hint = 'Review'
      Visible = ivAlways
    end
    object dxBarSeparator5: TdxBarSeparator
      Caption = 'Reports'
      Category = 0
      Hint = 'Reports'
      Visible = ivAlways
    end
    object btnEmailMenu: TdxBarSubItem
      Caption = 'Email'
      Category = 0
      HelpContext = 1004
      Visible = ivAlways
      ImageIndex = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBoardErector'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnSMS'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnFindEmailAddress'
        end>
    end
    object btnBoardErector: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 22
    end
    object btnChangePassword: TdxBarLargeButton
      Caption = 'Change Password'
      Category = 0
      Hint = 'Change Password'
      Visible = ivAlways
      LargeImageIndex = 19
      SyncImageIndex = False
      ImageIndex = 19
    end
    object btnWhatsThis: TdxBarButton
      Caption = 'What'#39's This'
      Category = 0
      Hint = 
        'Clicking this button displays the "What'#39's This" cursor which can' +
        ' be dragged to any control to give information on what the contr' +
        'ol is for!'
      Visible = ivAlways
      ImageIndex = 23
    end
    object btnActivePageHelp: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 20
    end
    object btnSupport: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 22
      SyncImageIndex = False
      ImageIndex = 29
    end
    object dxBarSeparator6: TdxBarSeparator
      Caption = 'Admin'
      Category = 0
      Hint = 'Admin'
      Visible = ivAlways
    end
    object btnCascade: TdxBarButton
      Category = 0
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D
        00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFCA5D00FFFFFFFFFFFFFFFBFFFFFBEFFFFFF3E0FFFFEDD4FFFFE8
        C8FFFFE3BFFFFFE2BBFFFFE1BAFFFFEFD0FFCA5D00FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFCA5D00FFFFFFFFFFFFF8F3FFFEF4E9FFFFEFDCFFFEE9D1FFFEE3
        C4FFFEDDB8FFFED9B0FFFED6AAFFFFE3BDFFCA5D00FFFF00FFFFFF00FFFFCA5D
        00FFCA5D00FFCA5D00FFFFFFFFFFFFFEFCFFFFFAF5FFFFF5EBFFFFF0DFFFFFEA
        D2FFFFE4C6FFFFDEBBFFFFD9B0FFFFE4BEFFCA5D00FFFF00FFFFFF00FFFFCA5D
        00FFFFFFFFFFCA5D00FFFFFFFFFFFFFFFFFFFFFFFEFFFFFBF7FFFFF6EDFFFEF0
        E1FFFFEBD5FFFEE5C8FFFEDFBCFFFFE8C5FFCA5D00FFFF00FFFFFF00FFFFCA5D
        00FFFFFFFFFFCA5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCF8FFFEF6
        EDFFFEF2E2FFFFECD6FFFEE5C9FFFFEDD1FFCA5D00FFCA5D00FFCA5D00FFCA5D
        00FFFFFFFFFFCA5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
        F9FFFFF7EFFFFFF1E4FFFEEBD6FFFFF3E0FFCA5D00FFCA5D00FFFFFFFFFFCA5D
        00FFFFFFFFFFCA5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBF3FFFFFFFFFFCA5D00FFCA5D00FFFFFFFFFFCA5D
        00FFFFFFFFFFCA5D00FFEEB67CFFECB074FFECB074FFECB074FFECB074FFECB0
        74FFECB174FFECB071FFECAE6DFFEEB373FFCA5D00FFCA5D00FFFFFFFFFFCA5D
        00FFFFFFFFFFFFFFFFFFCA5C00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D
        00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFFF00FFFFCA5D00FFFFFFFFFFCA5D
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBF3FFFFFFFFFFCA5D00FFFF00FFFFFF00FFFFCA5D00FFFFFFFFFFCA5D
        00FFEEB67CFFECB074FFECB074FFECB074FFECB074FFECB074FFECB174FFECB0
        71FFECAE6DFFEEB373FFCA5D00FFFF00FFFFFF00FFFFCA5D00FFFFFFFFFFFFFF
        FFFFCA5C00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D
        00FFCA5D00FFCA5D00FFFF00FFFFFF00FFFFFF00FFFFCA5D00FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3FFFFFF
        FFFFCA5D00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFCA5D00FFEEB67CFFECB0
        74FFECB074FFECB074FFECB074FFECB074FFECB174FFECB071FFECAE6DFFEEB3
        73FFCA5D00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFCA5C00FFCA5D
        00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D00FFCA5D
        00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
    end
    object btnCarousel: TdxBarLargeButton
      Caption = 'Carousel'
      Category = 0
      Hint = 'Carousel'
      Visible = ivAlways
      LargeImageIndex = 23
      SyncImageIndex = False
      ImageIndex = 44
    end
    object btnChildClose: TdxBarButton
      Caption = 'Close'
      Category = 0
      Visible = ivAlways
      ImageIndex = 45
    end
    object btnChildRestore: TdxBarButton
      Caption = 'Restore'
      Category = 0
      Visible = ivAlways
      ImageIndex = 21
    end
    object btnForceError: TdxBarButton
      Caption = 'Force Error Message'
      Category = 0
      Hint = 'Force Error Message'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0004000000640000000900000000000000000000000000000000000000000000
        0000000000050000005A00000005000000000000000000000000000000000000
        001D000000F40000002C0001121300087286000BA4C90009A2CA00056E8C0000
        131700000028000000F800000026000000000000000000000000000000000000
        00000000009200031B4E0016C2E20020DAFF0017C9FF0014C2FF001AD0FF000E
        B2E700011E4A0000009C00000000000000000000000000000000000000000000
        00000000011B0017BBFA0028F1FF0028ECFF001ED6FF0019CDFF0023DFFF001E
        DAFF000DAAFD0000032800000000000000000000000000000000000000000000
        0000000B5F5F002DFDFF002FFCFF0031FFFF0026E4FF0020DAFF002AEFFF0024
        E3FF001EDEFF0004596C000000000000000000000000000000000000004D0000
        0021001CB4B4033BFFFF0D3FFFFF1045FFFF0B34EAFF0327E4FF0033FFFF002A
        F0FF0026E6FF000EA7C100000019000000480000000000000000000000D30000
        00C2052CEBEB1A4EFFFF2556FFFF2A5DFFFF1E44E9FF1236E2FF0D42FFFF0031
        FCFF002AF0FF0018D5F1000000BA000000E00000000000000000000000010000
        00190B37EEEE2D60FFFF3D6DFFFF477BFFFF335CF3FF2248ECFF2058FFFF073C
        FFFF002EF9FF001BE7F900000023000000060000000000000000000000000000
        00000E36D2D23F75FFFF517DFFFF394AD4FF17219FFF101A9FFF112ADAFF0B3F
        FFFF0035FFFF001BD8DF00000000000000000000000000000000000000000000
        0002011FA6B72A50FBFF191251FF38351FFF393621FF322F19FF272208FF0F08
        3EFF0023FAFF00139DC000000002000000000000000000000000000000010000
        009F00032A9D1D2B9DFD4F4C37FF4B4B48FF454543FF3A3A39FF302F2CFF2523
        0DFF0A1274FE0005329F000000A1000000020000000000000000000000060000
        00CA0000003E191B188F58584DFF5F5F5DFF525251FF444443FF383837FF2827
        20FF0404049C00000038000000D30000000A0000000000000000000000000000
        0000000000000000010218191F8A4E4F4BFB595958FF4A4948FF2C2C2AFD0A0C
        1394000001040000000000000000000000000000000000000000000000000000
        000000000000000000000000000003040B1F0A0A0B6108090A6302030A230000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
    end
    object btnViewingBook: TdxBarLargeButton
      Caption = 'Viewing Book'
      Category = 0
      Hint = 'Viewing Book'
      Visible = ivAlways
      LargeImageIndex = 24
      SyncImageIndex = False
      ImageIndex = 47
    end
    object btnFAQ: TdxBarButton
      Caption = 'Frequently Asked Questions'
      Category = 0
      Visible = ivAlways
      ImageIndex = 20
    end
    object btnTroubleshooting: TdxBarButton
      Caption = 'Troubleshooting'
      Category = 0
      Visible = ivAlways
      ImageIndex = 20
    end
    object btnPropertyReview: TdxBarLargeButton
      Caption = 'Progress'
      Category = 0
      Hint = 'Progress'
      Visible = ivAlways
      LargeImageIndex = 25
      SyncImageIndex = False
      ImageIndex = 48
    end
    object btnFindEmailAddress: TdxBarButton
      Caption = 'Find Email Address'
      Category = 0
      HelpContext = 2250
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B57B7BF4BE89
        89EEA87979D7C3B4B4D7726F6EF172645CFC6F6D6FE1777474832A2828310101
        01060202020A0000000000000000000000000000000000000000C79797FDDBAB
        ACFFFFF2F2FF7C787BFFD9AF8BFFFFD19BFFC7A386FFC6B7B7FFD0C2C3FF7D6E
        68FF817369FFA59E9FF17C7070AB3A3636790000000000000000CB9A9AFDF3E4
        E5FF857F7FFF707274FFEECDB1FFFFF5DBFFFFE1B4FF606064FF676666FFFFDA
        A4FFFFD9A2FF867B74FFEBD3D3FFA38484FD0000000000000000E6CDCDFE8281
        81FF686868FFABACACFFAA9F9EFFF7E5DDFFBFA593FF5C5F62FF9A9999FFFFED
        D7FFFFFBDFFF887A6DFFEED9D9FFBE9797FD0000000000000000898080FFB5B5
        B5FF6B6B6BFFCDCECEFFFEFFFFFF666565FF5E6062FF828283FFECEFEFFFB1A6
        A6FF877C77FFABA29FFFFFEEEEFFBE9797FD0000000000000000434343FFB5B5
        B5FFD5D5D5FF979797FF6A6A6AFF4A4B4BFF3A3A3AFF999999FFD7D8D8FF8686
        86FFC6BFBFFFFFF7F7FFFFF9F9FFBF9B9BFD0000000000000000847C7CFF7373
        73FFABABABFFB6B6B6FFAEAEAEFFA9A9A9FFAAAAAAFF797878FF797778FFE2D4
        D6FFFEF3F2FFFFFFFFFFFFFFFFFFC19D9DFD0000000000000000E4C7C7FEE1E1
        E1FFE1D4D4FFB2ADAFFF8C9496FF676969FF82898CFFC9DBE1FFD6F5FFFFBBF0
        FFFFBDB9C6FFD5B0B0FFFFFFFFFFC6A1A0FD0000000000000000DF9F9FFDE4B2
        B2FFBFCAD8FFDFFAFFFFE6F6FFFFEDF8FFFFE7F6FFFFDAF1FFFFD6F0FFFFD6F1
        FFFFD6F6FFFFCDEDFDFFB78F90FFC19393FA0000000000000000B16D6DC2B99D
        9CFFC0CBD6FFF6FFFFFFF3FEFFFFF3FFFFFFF3FFFFFFF3FFFFFFF3FFFFFFF3FF
        FFFFF5FFFFFFF0FFFFFFC1A2A2FF805F5FA9000000000000000008060608905E
        5EA6B7BDC7FFBEC3CEFFBCC0CCFFBBBECBFFBCC0CBFFBBBFCAFFBDC2CAFFBDC0
        C9FFBFC2CBFFC4C8CDFF7D6767A9000000010000000000000000000000000101
        01026B454570DA9F9FF9EAC1C1FFF3C4C4FFF9C8C8FFFFCCCCFFFFCECEFFFFD2
        D1FFEFB7B7FD7D59599400000000000000000000000000000000000000000000
        00000000000033212133C08484D2EFC1C1FFF4CACAFFFCCECEFFFFD3D3FFD7A2
        A2F15F4343710000000000000000000000000000000000000000000000000000
        00000000000000000000030202045A383866B98484D5CE9797EC8D6161AA160E
        0E1A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Productores'
      Category = 0
      Hint = 'Productores'
      Visible = ivAlways
      LargeImageIndex = 28
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Insertar'
      Category = 0
      Hint = 'Insertar'
      Visible = ivAlways
      ImageIndex = 39
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancelar'
      Visible = ivAlways
      ImageIndex = 45
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guardar'
      Visible = ivAlways
      ImageIndex = 256
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Anterior'
      Category = 0
      Hint = 'Anterior'
      Visible = ivAlways
      ImageIndex = 52
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Primero'
      Category = 0
      Hint = 'Primero'
      Visible = ivAlways
      ImageIndex = 58
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Pr'#243'ximo'
      Category = 0
      Hint = 'Pr'#243'ximo'
      Visible = ivAlways
      ImageIndex = 53
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Ultimo'
      Category = 0
      Hint = 'Ultimo'
      Visible = ivAlways
      ImageIndex = 59
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Refrescar'
      Category = 0
      Hint = 'Refrescar'
      Visible = ivAlways
      ImageIndex = 788
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Editar'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 9
    end
    object dxBarCombo1: TdxBarCombo
      Caption = 'Consultar Por:'
      Category = 0
      Hint = 'Consultar Por:'
      Visible = ivAlways
      ImageIndex = 23
      Items.Strings = (
        'Nombres'
        'Direcci'#243'n'
        'Telefono')
      ItemIndex = -1
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'Entre el Nombre'
      Category = 0
      Hint = 'Entre el Nombre'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Articulos'
      Category = 0
      Hint = 'Articulos'
      Visible = ivAlways
      LargeImageIndex = 524
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton9: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton11: TdxBarButton
      Caption = 'A'#241'adir'
      Category = 0
      Hint = 'A'#241'adir'
      Visible = ivNever
      ImageIndex = 943
      LargeImageIndex = 8
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Consultar'
      Category = 0
      Hint = 'Consultar'
      Visible = ivNever
      ImageIndex = 258
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivNever
      ImageIndex = 45
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Creaci'#243'n de Combo'
      Category = 0
      Hint = 'Creaci'#243'n de Combo'
      Visible = ivAlways
      OnClick = dxBarLargeButton7Click
      LargeImageIndex = 524
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Enviar Mercancia a Tiendas'
      Category = 0
      Hint = 'Enviar Mercancia a Tiendas'
      Visible = ivAlways
      OnClick = dxBarLargeButton5Click
      LargeImageIndex = 758
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Mantenimiento de Categoria'
      Category = 0
      Hint = 'Mantenimiento de Categoria'
      Visible = ivAlways
      OnClick = dxBarLargeButton8Click
      LargeImageIndex = 686
    end
    object dxBarButton14: TdxBarButton
      Caption = 'Listado de Articulos'
      Category = 0
      Hint = 'Listado de Articulos'
      Visible = ivNever
      ImageIndex = 101
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Articulos'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 525
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end>
    end
    object dxBarButton15: TdxBarButton
      Caption = 'A'#241'adir'
      Category = 0
      Hint = 'A'#241'adir'
      Visible = ivAlways
      ImageIndex = 943
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Caption = 'Consultar'
      Category = 0
      Hint = 'Consultar'
      Visible = ivAlways
      ImageIndex = 980
      OnClick = dxBarButton16Click
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton17: TdxBarButton
      Caption = 'Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      ImageIndex = 997
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = 'Inventario'
      Category = 0
      Hint = 'Inventario'
      Visible = ivAlways
      LargeImageIndex = 526
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = 'Facturaci'#243'n'
      Category = 0
      Hint = 'Facturaci'#243'n'
      Visible = ivAlways
      LargeImageIndex = 464
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Caption = 'Mantenimientos'
      Category = 0
      Hint = 'Mantenimientos'
      Visible = ivAlways
      LargeImageIndex = 475
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Caption = 'Cuentas x Cobrar'
      Category = 0
      Hint = 'Cuentas x Cobrar'
      Visible = ivAlways
      LargeImageIndex = 418
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Caption = 'Gastos'
      Category = 0
      Hint = 'Gastos'
      Visible = ivAlways
      LargeImageIndex = 511
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Caption = 'Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      OnClick = dxBarLargeButton16Click
      LargeImageIndex = 429
    end
    object dxBarButton18: TdxBarButton
      Caption = 'Modificar Combo'
      Category = 0
      Hint = 'Modificar Combo'
      Visible = ivAlways
      ImageIndex = 988
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Caption = 'Entrada de Inventario'
      Category = 0
      Hint = 'Entrada de Inventario'
      Visible = ivAlways
      OnClick = dxBarLargeButton17Click
      LargeImageIndex = 635
    end
  end
  object ZqCombos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from Combomaster'
      'where estado = 1'
      'and codtienda =:opp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'opp'
        ParamType = ptUnknown
      end>
    Left = 712
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opp'
        ParamType = ptUnknown
      end>
    object ZqCombosCOMBOMASTER: TIntegerField
      FieldName = 'COMBOMASTER'
      Required = True
    end
    object ZqCombosNOMBRECOMBO: TWideStringField
      FieldName = 'NOMBRECOMBO'
      Size = 45
    end
    object ZqCombosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object ZqCombosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object ZqCombosPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object ZqCombosCOSTOS1: TFloatField
      FieldName = 'COSTOS1'
    end
    object ZqCombosCOSTOS2: TFloatField
      FieldName = 'COSTOS2'
    end
    object ZqCombosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZqCombosCODTIENDA: TIntegerField
      FieldName = 'CODTIENDA'
    end
    object ZqCombosCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 10
    end
  end
  object DsqCombos: TDataSource
    DataSet = ZqCombos
    Left = 776
    Top = 48
  end
  object ZExistencia: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.idtienda,a.cod_art,b.descripcion,sum(a.entrada - a.sali' +
        'da) Existencia from minventario a'
      'left join tienda b On a.idtienda = b.tiendaid'
      'group by a.idtienda,a.cod_art,b.descripcion')
    Params = <>
    Left = 72
    Top = 232
    object ZExistenciaIDTIENDA: TIntegerField
      FieldName = 'IDTIENDA'
    end
    object ZExistenciaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZExistenciaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object ZExistenciaEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
    end
  end
  object DsExistencia: TDataSource
    DataSet = ZExistencia
    Left = 136
    Top = 232
  end
  object duplicacombo: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from MANTCOMBO'
      'where MACOMBOID =:ppp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ppp'
        ParamType = ptUnknown
      end>
    Left = 744
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppp'
        ParamType = ptUnknown
      end>
    object duplicacomboCOD_MANCOMBO: TIntegerField
      FieldName = 'COD_MANCOMBO'
      Required = True
    end
    object duplicacomboMACOMBOID: TIntegerField
      FieldName = 'MACOMBOID'
    end
    object duplicacomboCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object duplicacomboPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object duplicacomboPRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
    object duplicacomboPRECIO3: TFloatField
      FieldName = 'PRECIO3'
    end
  end
end
