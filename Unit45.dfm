object FrmConsultaArticulos: TFrmConsultaArticulos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Reporte de Catalogo de Productos'
  ClientHeight = 435
  ClientWidth = 984
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
  object Edit2: TEdit
    Left = 520
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 65
    Width = 984
    Height = 296
    Align = alClient
    TabOrder = 5
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'COD_ART'
      end
      object cxGridDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'ARTICULO'
        Width = 490
      end
      object cxGridDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'CAT'
        Width = 127
      end
      object cxGridDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPCION'
        Width = 218
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 984
    Height = 296
    Align = alClient
    TabOrder = 0
    LookAndFeel.SkinName = 'Office2016Colorful'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Cantidad de Items =,0'
          Kind = skCount
          FieldName = 'ARTICULO'
          Column = cxGrid1DBTableView1ARTICULO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Cod. S'
        DataBinding.FieldName = 'COD_ART'
        Width = 65
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Codigo de Barra'
        DataBinding.FieldName = 'CODIGOBARRA'
        Width = 116
      end
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Nombre del Producto'
        DataBinding.FieldName = 'ARTICULO'
        Width = 300
      end
      object cxGrid1DBTableView1CAT: TcxGridDBColumn
        Caption = 'Categoria'
        DataBinding.FieldName = 'CAT'
        Width = 127
      end
      object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
        Caption = 'Existencia Actual'
        DataBinding.FieldName = 'STOCK'
        Width = 95
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Costo'
        DataBinding.FieldName = 'COSTO_PR'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;($,0.00)'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 100
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Precios 1'
        DataBinding.FieldName = 'PRECIO_A'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;($,0.00)'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 96
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Precio 2'
        DataBinding.FieldName = 'PRECIO_B'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Width = 79
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
    Height = 65
    Width = 984
    object op1: TcxRadioGroup
      Left = 6
      Top = 11
      Caption = 'Criterios de B'#250'squeda'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Todos'
        end
        item
          Caption = 'Por Categoria'
        end
        item
          Caption = 'Proveedores'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      OnClick = op1Click
      Height = 45
      Width = 286
    end
    object op2: TcxRadioGroup
      Left = 298
      Top = 11
      Caption = 'Organizado por'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Codigo'
        end
        item
          Caption = 'Articulos'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
      Height = 45
      Width = 135
    end
    object cxButton1: TcxButton
      Left = 639
      Top = 17
      Width = 106
      Height = 32
      Caption = 'Ejecutar'
      LookAndFeel.SkinName = 'Office2016Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0020000000200000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000001E0000
        00DD000000E10000002200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000001E000000DD0000
        00FF000000E10000002200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000001E000000DD000000FF0000
        00E1000000220000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001E000000DD000000FF000000E10000
        0022000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000003B000000A6000000E3000000FA0000
        00E5000000A80000003D00000000000000DF000000FF000000DF000000200000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000400000095000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000AA000000FF000000DF00000020000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000095000000FF000000F50000007D00000023000000060000
        00230000007D000000F5000000FF000000AA0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000003C000000FF000000F5000000370000000000000000000000000000
        00000000000000000037000000F5000000FF0000003D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000A7000000FF0000007D000000000000000000000000000000000000
        000000000000000000000000007D000000FF000000A800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000E5000000FF00000022000000000000000000000000000000000000
        0000000000000000000000000023000000FF000000E500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000F9000000FF00000006000000000000000000000000000000000000
        0000000000000000000000000007000000FF000000F900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000E5000000FF00000022000000000000000000000000000000000000
        0000000000000000000000000023000000FF000000E400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000A8000000FF0000007D000000000000000000000000000000000000
        000000000000000000000000007D000000FF000000A600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000003E000000FF000000F5000000370000000000000000000000000000
        00000000000000000037000000F5000000FF0000003B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000097000000FF000000F50000007D00000022000000060000
        00220000007D000000F5000000FF000000950000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000400000097000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000095000000040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000003D000000A8000000E5000000F90000
        00E4000000A70000003C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object op_prov: TcxGroupBox
      Left = 434
      Top = 11
      Caption = 'Nombre del Proveedor'
      Enabled = False
      TabOrder = 3
      Visible = False
      Height = 41
      Width = 199
      object cxButton10: TcxButton
        Left = 172
        Top = 13
        Width = 24
        Height = 20
        OptionsImage.ImageIndex = 947
        OptionsImage.Images = FrmHome.RibbonImages16
        TabOrder = 0
        OnClick = cxButton10Click
      end
      object provTXT: TcxTextEdit
        Left = 3
        Top = 13
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 169
      end
    end
    object Op_cat: TcxGroupBox
      Left = 434
      Top = 12
      Caption = 'Categorias'
      Enabled = False
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 4
      Height = 44
      Width = 199
      object cxButton2: TcxButton
        Left = 172
        Top = 13
        Width = 24
        Height = 20
        LookAndFeel.SkinName = 'Caramel'
        OptionsImage.ImageIndex = 947
        OptionsImage.Images = FrmHome.RibbonImages16
        TabOrder = 0
        OnClick = cxButton2Click
      end
      object CatTXT: TcxTextEdit
        Left = 2
        Top = 13
        Properties.ReadOnly = True
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 1
        Width = 169
      end
    end
    object cxButton4: TcxButton
      Left = 759
      Top = 17
      Width = 106
      Height = 32
      Caption = '&Cerrar'
      LookAndFeel.SkinName = 'Office2016Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000600000055000000A40000
        00D7000000F3000000F3000000D7000000A40000005400000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000052000000DC000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000DB000000510000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000030000008B000000FF000000FF000000D4000000710000
        002C0000000C0000000C0000002C00000072000000D5000000FF000000FF0000
        008B000000030000000000000000000000000000000000000000000000000000
        0000000000000000008B000000FF000000F90000006D00000003000000000000
        000000000000000000000000000000000000000000040000006F000000FA0000
        00FF0000008B0000000000000000000000000000000000000000000000000000
        000000000052000000FF000000F9000000430000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000440000
        00FA000000FF0000005100000000000000000000000000000000000000000000
        0006000000DD000000FF0000006C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        006F000000FF000000DB00000006000000000000000000000000000000000000
        0057000000FF000000D40000000300000000000000000000002C000000BD0000
        0015000000000000000000000015000000BD0000002C00000000000000000000
        0003000000D5000000FF00000055000000000000000000000000000000000000
        00A6000000FF00000070000000000000000000000000000000BD000000FF0000
        00D30000001500000015000000D3000000FF000000BD00000000000000000000
        000000000072000000FF000000A4000000000000000000000000000000000000
        00D9000000FF0000002A00000000000000000000000000000015000000D30000
        00FF000000D3000000D3000000FF000000D30000001500000000000000000000
        00000000002C000000FF000000D8000000000000000000000000000000000000
        00F3000000FF0000000D00000000000000000000000000000000000000150000
        00D2000000FF000000FF000000D7000000180000000000000000000000000000
        00000000000E000000FF000000F1000000000000000000000000000000000000
        00F3000000FF0000000C00000000000000000000000000000000000000150000
        00D2000000FF000000FF000000D7000000180000000000000000000000000000
        00000000000D000000FF000000F3000000000000000000000000000000000000
        00D9000000FF0000002A00000000000000000000000000000015000000D30000
        00FF000000D3000000D3000000FF000000D30000001500000000000000000000
        00000000002C000000FF000000D8000000000000000000000000000000000000
        00A6000000FF0000006F000000000000000000000000000000BD000000FF0000
        00D30000001500000015000000D3000000FF000000BD00000000000000000000
        000000000071000000FF000000A4000000000000000000000000000000000000
        0057000000FF000000D30000000300000000000000000000002C000000BD0000
        0015000000000000000000000015000000BD0000002C00000000000000000000
        0003000000D4000000FF00000055000000000000000000000000000000000000
        0006000000DD000000FF0000006A000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        006D000000FF000000DC00000006000000000000000000000000000000000000
        000000000053000000FF000000F9000000420000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000430000
        00F9000000FF0000005200000000000000000000000000000000000000000000
        0000000000000000008C000000FF000000F90000006A00000002000000000000
        000000000000000000000000000000000000000000030000006C000000F90000
        00FF0000008B0000000000000000000000000000000000000000000000000000
        000000000000000000030000008C000000FF000000FF000000D30000006F0000
        002B0000000B0000000B0000002B0000006F000000D3000000FF000000FF0000
        008B000000030000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000054000000DD000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000DD000000520000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000600000057000000A70000
        00D8000000F4000000F4000000D8000000A60000005700000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 311
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 5
      OnClick = cxButton4Click
    end
  end
  object cxGrid5: TcxGrid
    Left = 434
    Top = 51
    Width = 311
    Height = 256
    TabOrder = 2
    Visible = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxGridDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = FbqFabricantes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = '#'
        DataBinding.FieldName = 'COD'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Proveedor'
        DataBinding.FieldName = 'DESCRIPCION'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 240
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Width = 240
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxGrid3: TcxGrid
    Left = 439
    Top = 57
    Width = 171
    Height = 256
    TabOrder = 3
    Visible = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid3DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid3DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dscategoria
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGrid3DBTableView1Column1: TcxGridDBColumn
        Caption = 'Categorias'
        DataBinding.FieldName = 'CAT'
        MinWidth = 163
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Width = 163
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBTableView1
    end
  end
  object Edit1: TEdit
    Left = 496
    Top = 365
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object Edit3: TEdit
    Left = 496
    Top = 419
    Width = 121
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object OpPrint: TcxGroupBox
    Left = 0
    Top = 361
    Align = alBottom
    Caption = 'Control de Impresi'#243'n'
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 8
    Height = 74
    Width = 984
    object Op1_p: TcxCheckGroup
      Left = 56
      Top = 15
      Caption = 'Imprimir con:'
      Properties.Columns = 5
      Properties.Items = <
        item
          Caption = 'Todos los Precios'
        end
        item
          Caption = 'Solo Precio Venta A'
        end
        item
          Caption = 'Costos'
        end>
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      Height = 48
      Width = 457
    end
    object cxButton3: TcxButton
      Left = 519
      Top = 24
      Width = 131
      Height = 32
      Caption = 'Imprimir Reporte'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        003C0000003D000000FF000000FF000000000000000000000000000000000000
        00E5000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        003A0000003C000000FF000000E5000000000000000000000000000000000000
        0088000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000088000000000000000000000000000000000000
        000600000089000000E6000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000E50000008800000006000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 945
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      OnClick = cxButton3Click
    end
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, a.precio_a, a.costo, a.precio_b,a.codigobarra,' +
        'a.articulo,c.cat,b.descripcion,a.COSTO_PR, a.stock from mtartucu' +
        'los a'
      'left join fabricantes b On a.cod_prov1 = b.cod_fab'
      'left join mtcategoria c On a.cod_cat = c.codcat')
    Params = <>
    Left = 528
    Top = 240
    object consultaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object consultaCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 15
    end
    object consultaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object consultaCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
    object consultaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object consultaCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object consultaPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
      currency = True
    end
    object consultaPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
      currency = True
    end
    object consultaSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object consultaCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 552
    Top = 168
  end
  object FbqFabricantes: TDataSource
    DataSet = datos.FbqFabricantes
    Left = 768
    Top = 168
  end
  object DSCP: TDataSource
    DataSet = datos.Control_Precio
    Left = 352
    Top = 288
  end
  object dscategoria: TDataSource
    DataSet = datos.FbCategorias
    Left = 600
    Top = 72
  end
  object Config: TfrxDBDataset
    UserName = 'frxDBDataset1'
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
      'CLAVEAUTORIZACION=CLAVEAUTORIZACION'
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
      'CANT_CAJA=CANT_CAJA')
    DataSet = datos.Configuracion
    BCDToCurrency = False
    Left = 56
    Top = 120
  end
  object precio: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = True
    FieldAliases.Strings = (
      'CPID=CPID'
      'NO_ART=NO_ART'
      'UNIDAD=UNIDAD'
      'UNIDAD_M=UNIDAD_M'
      'PRECIO1=PRECIO1'
      'PRECIO2=PRECIO2'
      'PRECIO3=PRECIO3')
    DataSet = Precios
    BCDToCurrency = False
    Left = 184
    Top = 128
  end
  object MASter: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_ART=COD_ART'
      'CODIGOBARRA=CODIGOBARRA'
      'ARTICULO=ARTICULO'
      'CAT=CAT'
      'DESCRIPCION=DESCRIPCION'
      'COSTO_PR=COSTO_PR'
      'PRECIO_A=PRECIO_A'
      'PRECIO_B=PRECIO_B'
      'STOCK=STOCK'
      'COSTO=COSTO')
    DataSet = consulta
    BCDToCurrency = False
    Left = 128
    Top = 128
  end
  object Reporte_Normal: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41570.052540277800000000
    ReportOptions.LastChange = 41570.071799895800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 232
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'opciones1'
        Value = Null
      end
      item
        Name = 'opciones2'
        Value = Null
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 211.200000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 134.400000000000000000
          Width = 211.200000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reporte de Productos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 167.200000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 9.600000000000001000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
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
          Left = 508.800000000000000000
          Top = 28.800000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 182.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 76.800000000000000000
          Top = 182.400000000000000000
          Width = 259.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Productos')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Top = 182.400000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Categorias')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 499.200000000000000000
          Top = 182.400000000000000000
          Width = 211.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Proveedores')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 10.800000000000000000
          Top = 201.600000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000001000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
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
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
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
          Left = 49.436240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
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
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC"]')
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
        object opciones1: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 115.200000000000000000
          Width = 268.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones1]')
          ParentFont = False
        end
        object opciones2: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 134.400000000000000000
          Width = 268.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones2]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 288.000000000000000000
        Width = 718.110700000000000000
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2COD_ART: TfrxMemoView
          AllowVectorExport = True
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 76.800000000000000000
          Width = 259.200000000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset2CAT: TfrxMemoView
          AllowVectorExport = True
          Left = 336.000000000000000000
          Width = 144.000000000000000000
          Height = 19.200000000000000000
          DataField = 'CAT'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAT"]')
          ParentFont = False
        end
        object frxDBDataset2DESCRIPCION: TfrxMemoView
          AllowVectorExport = True
          Left = 499.200000000000000000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCRIPCION'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."DESCRIPCION"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 48.000000000000000000
        Top = 364.800000000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000023000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 192.000000000000000000
          Top = 19.199999999999990000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 19.199999999999990000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad de Items : ')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 432.000000000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000023000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact 3.0 ')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 460.800000000000000000
          Top = 6.600000000000023000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 4.399999999999977000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object Precios: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.unidad from CONTROL_PRECIOS a'
      'left join unidad_m b On a.unidad_m = b.cod_unidad_m')
    Params = <>
    MasterFields = 'COD_ART'
    MasterSource = DsConsulta
    LinkedFields = 'NO_ART'
    Left = 320
    Top = 184
    object PreciosCPID: TIntegerField
      FieldName = 'CPID'
      Required = True
    end
    object PreciosNO_ART: TIntegerField
      FieldName = 'NO_ART'
    end
    object PreciosUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object PreciosUNIDAD_M: TIntegerField
      FieldName = 'UNIDAD_M'
    end
    object PreciosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object PreciosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
    object PreciosPRECIO3: TFloatField
      FieldName = 'PRECIO3'
    end
  end
  object Reporte_Normal010: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41570.052540277800000000
    ReportOptions.LastChange = 41571.141723773200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 200
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = precio
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'opciones1'
        Value = ''
      end
      item
        Name = 'opciones2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 201.600000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 134.400000000000000000
          Width = 211.200000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reporte de Productos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.600000000000000000
          Top = 178.200000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 9.600000000000001000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
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
          Left = 508.800000000000000000
          Top = 28.800000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 182.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 76.800000000000000000
          Top = 182.400000000000000000
          Width = 259.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Productos')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 326.400000000000000000
          Top = 182.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Categorias')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 182.400000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Precio Venta 1')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 10.800000000000000000
          Top = 201.600000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000001000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
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
          Left = 10.600000000000000000
          Top = 29.497650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
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
          Left = 39.836240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
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
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 39.836240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC"]')
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
        object Memo12: TfrxMemoView
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
        object opciones1: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 115.200000000000000000
          Width = 432.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones1]')
          ParentFont = False
        end
        object opciones2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 138.000000000000000000
          Width = 432.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones2]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 595.200000000000000000
          Top = 182.400000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Precio Venta 2')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 278.400000000000000000
        Width = 718.110700000000000000
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2COD_ART: TfrxMemoView
          AllowVectorExport = True
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 57.600000000000000000
          Width = 259.200000000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset2CAT: TfrxMemoView
          AllowVectorExport = True
          Left = 316.800000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          DataField = 'CAT'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAT"]')
          ParentFont = False
        end
        object frxDBDataset2DESCRIPCION: TfrxMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'PRECIO_A'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRECIO_A"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 585.600000000000000000
          Top = 0.000000000000000028
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'PRECIO_B'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRECIO_B"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 48.000000000000000000
        Top = 355.200000000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000023000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 192.000000000000000000
          Top = 19.199999999999990000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 19.199999999999990000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad de Items : ')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 422.400000000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000023000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact 3.0 ')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 460.800000000000000000
          Top = 6.600000000000023000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 4.399999999999977000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object Reporte_Normal001: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41570.052540277800000000
    ReportOptions.LastChange = 41571.147122638900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 192
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = precio
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'opciones1'
        Value = ''
      end
      item
        Name = 'opciones2'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 201.600000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 115.200000000000000000
          Width = 211.200000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reporte de Productos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.600000000000000000
          Top = 178.200000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 9.600000000000001000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
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
          Left = 508.800000000000000000
          Top = 28.800000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 182.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 182.400000000000000000
          Width = 259.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Productos')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 307.200000000000000000
          Top = 182.400000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Categorias')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 182.400000000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Proveedores')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 10.800000000000000000
          Top = 201.600000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 633.600000000000000000
          Top = 182.400000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Costos')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000001000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
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
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
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
          Left = 49.436240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
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
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC"]')
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
        object Memo11: TfrxMemoView
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
        object opciones1: TfrxMemoView
          AllowVectorExport = True
          Left = 28.800000000000000000
          Top = 115.200000000000000000
          Width = 384.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones1]')
          ParentFont = False
        end
        object opciones2: TfrxMemoView
          AllowVectorExport = True
          Left = 28.800000000000000000
          Top = 134.400000000000000000
          Width = 384.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones2]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 278.400000000000000000
        Width = 718.110700000000000000
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2COD_ART: TfrxMemoView
          AllowVectorExport = True
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset2CAT: TfrxMemoView
          AllowVectorExport = True
          Left = 307.200000000000000000
          Width = 144.000000000000000000
          Height = 19.200000000000000000
          DataField = 'CAT'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAT"]')
          ParentFont = False
        end
        object frxDBDataset2DESCRIPCION: TfrxMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCRIPCION'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."DESCRIPCION"]')
          ParentFont = False
        end
        object frxDBDataset2COSTO_PR: TfrxMemoView
          AllowVectorExport = True
          Left = 633.600000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'COSTO_PR'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."COSTO_PR"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 48.000000000000000000
        Top = 355.200000000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000023000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 192.000000000000000000
          Top = 19.199999999999990000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 19.199999999999990000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad de Items : ')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 422.400000000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000023000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact 3.0 ')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 460.800000000000000000
          Top = 6.600000000000023000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 4.399999999999977000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object Reporte_Normal100: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41570.052540277800000000
    ReportOptions.LastChange = 41571.149549768500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 264
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = precio
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'opciones1'
        Value = ''
      end
      item
        Name = 'opciones2'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 201.600000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 134.400000000000000000
          Width = 211.200000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reporte de Productos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.600000000000000000
          Top = 178.200000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 9.600000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
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
          Left = 508.800000000000000000
          Top = 28.800000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 182.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 76.800000000000000000
          Top = 182.400000000000000000
          Width = 211.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Productos')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 288.000000000000000000
          Top = 182.400000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Categorias')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 10.800000000000000000
          Top = 201.600000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
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
          Left = 10.600000000000000000
          Top = 29.497650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
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
          Left = 39.836240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
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
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 39.836240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC"]')
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
        object Memo16: TfrxMemoView
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
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 451.200000000000000000
          Top = 182.400000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Costo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 182.400000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio 1')
          ParentFont = False
        end
        object opciones1: TfrxMemoView
          AllowVectorExport = True
          Left = 28.800000000000000000
          Top = 115.200000000000000000
          Width = 364.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones1]')
          ParentFont = False
        end
        object opciones2: TfrxMemoView
          AllowVectorExport = True
          Left = 28.800000000000000000
          Top = 134.400000000000000000
          Width = 364.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones2]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 624.000000000000000000
          Top = 182.400000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio 2')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 278.400000000000000000
        Width = 718.110700000000000000
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2COD_ART: TfrxMemoView
          AllowVectorExport = True
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 76.800000000000000000
          Width = 249.600000000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset2CAT: TfrxMemoView
          AllowVectorExport = True
          Left = 288.000000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          DataField = 'CAT'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAT"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 441.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'COSTO'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."COSTO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 531.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'PRECIO_A'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRECIO_A"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 620.600000000000000000
          Top = 0.000000000000000028
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'PRECIO_B'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRECIO_B"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 48.000000000000000000
        Top = 355.200000000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000020000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 192.000000000000000000
          Top = 19.200000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 19.200000000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad de Items : ')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 422.400000000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000020000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact 3.0 ')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 460.800000000000000000
          Top = 6.600000000000020000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 4.399999999999980000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object Reporte_Normal101: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41570.052540277800000000
    ReportOptions.LastChange = 41571.161430231480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 296
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = precio
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'opciones1'
        Value = ''
      end
      item
        Name = 'opciones2'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 201.600000000000000000
        Top = 19.200000000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Top = 134.400000000000000000
          Width = 211.200000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reporte de Productos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 11.600000000000000000
          Top = 178.200000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 9.600000000000001000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
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
          Left = 508.800000000000000000
          Top = 28.800000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 182.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 182.400000000000000000
          Width = 249.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Productos')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 329.400000000000000000
          Top = 182.400000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Categorias')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 468.600000000000000000
          Top = 182.400000000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Proveedores')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 10.800000000000000000
          Top = 201.600000000000000000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 637.200000000000000000
          Top = 182.400000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Costos')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000001000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = Config
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
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
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
          Left = 49.436240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
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
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC"]')
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
        object Memo17: TfrxMemoView
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
        object opciones1: TfrxMemoView
          AllowVectorExport = True
          Left = 28.800000000000000000
          Top = 115.200000000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones1]')
          ParentFont = False
        end
        object opciones2: TfrxMemoView
          AllowVectorExport = True
          Left = 29.800000000000000000
          Top = 134.400000000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[opciones2]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 38.400000000000000000
        Top = 278.400000000000000000
        Width = 718.110700000000000000
        DataSet = MASter
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2COD_ART: TfrxMemoView
          AllowVectorExport = True
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 72.800000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset2CAT: TfrxMemoView
          AllowVectorExport = True
          Left = 316.000000000000000000
          Width = 144.000000000000000000
          Height = 19.200000000000000000
          DataField = 'CAT'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CAT"]')
          ParentFont = False
        end
        object frxDBDataset2DESCRIPCION: TfrxMemoView
          AllowVectorExport = True
          Left = 465.000000000000000000
          Width = 182.400000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCRIPCION'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."DESCRIPCION"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 201.600000000000000000
          Top = 19.199999999999990000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precios A')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Top = 19.199999999999990000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Unidad ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 278.400000000000000000
          Top = 19.199999999999990000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precios B')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 355.200000000000000000
          Top = 19.199999999999990000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precios C')
          ParentFont = False
        end
        object frxDBDataset2COSTO_PR: TfrxMemoView
          AllowVectorExport = True
          Left = 633.600000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'COSTO'
          DataSet = MASter
          DataSetName = 'frxDBDataset2'
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
            '[frxDBDataset2."COSTO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 48.000000000000000000
        Top = 412.800000000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000023000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 192.000000000000000000
          Top = 19.199999999999990000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 19.199999999999990000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad de Items : ')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 480.000000000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 9.600000000000023000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact 3.0 ')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 460.800000000000000000
          Top = 6.600000000000023000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 4.399999999999977000
          Width = 691.200000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 336.000000000000000000
        Width = 718.110700000000000000
        DataSet = precio
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 720.000000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
        end
        object frxDBDataset2PRECIO2: TfrxMemoView
          AllowVectorExport = True
          Left = 211.200000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'PRECIO1'
          DataSet = precio
          DataSetName = 'frxDBDataset3'
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
            '[frxDBDataset3."PRECIO1"]')
          ParentFont = False
        end
        object frxDBDataset3UNIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'UNIDAD'
          DataSet = precio
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset3."UNIDAD"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 288.000000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'PRECIO2'
          DataSet = precio
          DataSetName = 'frxDBDataset3'
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
            '[frxDBDataset3."PRECIO2"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'PRECIO3'
          DataSet = precio
          DataSetName = 'frxDBDataset3'
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
            '[frxDBDataset3."PRECIO3"]')
          ParentFont = False
        end
      end
    end
  end
end
