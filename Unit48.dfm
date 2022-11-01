object FrmMAntArticulos: TFrmMAntArticulos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Consulta de Articulos'
  ClientHeight = 591
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    AlignWithMargins = True
    Left = 10
    Top = 219
    Width = 968
    Height = 274
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Office2016Colorful'
    ExplicitWidth = 952
    object cxGrid2DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid2DBTableView1DblClick
      OnKeyDown = cxGrid2DBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid2DBTableView1CellClick
      DataController.DataSource = DsqArticulos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Total de Items =,0'
          Kind = skCount
          FieldName = 'COD_ART'
          Column = cxGrid2DBTableView1ARTICULO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'Data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1Column4: TcxGridDBColumn
        Caption = 'Codigo Barra'
        DataBinding.FieldName = 'CODIGOBARRA'
        HeaderAlignmentHorz = taCenter
        MinWidth = 160
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
        Options.Grouping = False
        Options.HorzSizing = False
        Width = 160
      end
      object cxGrid2DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
        DataBinding.FieldName = 'UPPER'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 236
      end
      object cxGrid2DBTableView1POLITICA: TcxGridDBColumn
        Caption = 'Politica'
        DataBinding.FieldName = 'POLITICA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 80
      end
      object cxGrid2DBTableView1Column2: TcxGridDBColumn
        Caption = 'Costo'
        DataBinding.FieldName = 'COSTO'
        GroupSummaryAlignment = taCenter
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
        Width = 87
      end
      object cxGrid2DBTableView1PRECIO1: TcxGridDBColumn
        Caption = 'Precio A'
        DataBinding.FieldName = 'PRECIO_A'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 86
      end
      object cxGrid2DBTableView1Column3: TcxGridDBColumn
        Caption = 'Precio B'
        DataBinding.FieldName = 'PRECIO_B'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 87
      end
      object cxGrid2DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'REFERENCIA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 141
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object tipo: TcxRadioGroup
    AlignWithMargins = True
    Left = 10
    Top = 81
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Caption = 'Politica'
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    Properties.Columns = 5
    Properties.Items = <
      item
        Caption = 'Normal'
      end
      item
        Caption = 'Fraccional'
      end
      item
        Caption = 'Compuesto'
      end
      item
        Caption = 'Insumo'
      end
      item
        Caption = 'Servicios'
      end>
    ItemIndex = 0
    Style.BorderStyle = ebsOffice11
    Style.Color = clWhite
    Style.Edges = [bLeft]
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clGray
    Style.Font.Height = -11
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
    OnClick = tipoClick
    ExplicitLeft = 5
    ExplicitTop = 13
    ExplicitWidth = 952
    Height = 55
    Width = 968
  end
  object cxButton5: TcxButton
    Left = 24
    Top = 239
    Width = 217
    Height = 29
    Caption = 'Agregar Nuevo Articulos'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    OptionsImage.ImageIndex = 39
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 2
    Visible = False
    WordWrap = True
    OnClick = cxButton5Click
  end
  object Edit1: TEdit
    Left = 328
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 499
    Width = 280
    Height = 85
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsAlmacenes01
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
        Caption = 'Almancenes'
        DataBinding.FieldName = 'DESCRIPCION'
        HeaderAlignmentHorz = taCenter
        MinWidth = 200
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
        Options.Grouping = False
        Options.HorzSizing = False
        Width = 200
      end
      object cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn
        Caption = 'Cant.'
        DataBinding.FieldName = 'EXISTENCIA'
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
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
        Options.Grouping = False
        Options.HorzSizing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Edit2: TEdit
    Left = 544
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 968
    Height = 65
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 6
    ExplicitWidth = 457
    object btnsalir: TSpeedButton
      AlignWithMargins = True
      Left = 938
      Top = 15
      Width = 30
      Height = 34
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 0
      Margins.Bottom = 15
      Align = alRight
      Anchors = [akRight]
      Flat = True
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000AAAA990FA5A59611A5A59611A5A59611A5A59611A5A5
        9611A5A59611A5A59611A5A59611A5A59611A5A59611A5A59611A5A59611A5A5
        9611A5A59611AAAA990F00000000000000000000000000000000000000000000
        0000A4A4933BA7A595DEA5A594E1A6A595DDA6A595DDA6A595DDA6A595DDA6A5
        95DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A5
        95DDA6A595DDA5A594E1A6A595DDA4A4933B0000000000000000000000000000
        0000A6A595DDA6A6943900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A7A7953AA6A595DD000000000000000000000000A5A5
        9611A6A595E30000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E3A5A596110000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E000000000000000000000000000000000A7A79334A4A4933B0000
        00000000000000000000000000000000000000000000A4A4933BA7A793340000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E000000000000000000000000000000000A7A7953AA6A495E7A6A6
        963F00000000000000000000000000000000A7A7953AA6A595E6A7A393400000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000A7A7953AA6A4
        95E7A6A6963F0000000000000000A7A7953AA6A595E6A7A39340000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E0000000000000000000000000000000000000000000000000A7A7
        953AA6A495E7A6A6963FA7A7953AA6A595E6A7A3934000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000A4A4933BA6A595E5A6A595E5A4A4933B0000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000A4A4933BA6A595E5A6A595E5A4A4933B0000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E0000000000000000000000000000000000000000000000000A7A7
        953AA6A595E6A7A39340A7A7953AA6A495E7A6A6963F00000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000A7A7953AA6A5
        95E6A7A393400000000000000000A7A7953AA6A495E7A6A6963F000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E000000000000000000000000000000000A7A7953AA6A595E6A7A3
        934000000000000000000000000000000000A7A7953AA6A495E7A6A6963F0000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E000000000000000000000000000000000A7A79334A4A4933B0000
        00000000000000000000000000000000000000000000A4A4933BA7A793340000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A5A5
        9611A6A595E30000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E3A5A5961100000000000000000000
        0000A7A595DEA4A4963800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A6A69439A6A595DD0000000000000000000000000000
        0000A6A6953CA7A595DEA5A594E1A6A595DDA6A595DDA6A595DDA6A595DDA6A5
        95DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A5
        95DDA6A595DDA5A594E1A6A595DDA4A4933B0000000000000000000000000000
        00000000000000000000AAAA990FA5A59611A5A59611A5A59611A5A59611A5A5
        9611A5A59611A5A59611A5A59611A5A59611A5A59611A5A59611A5A59611A5A5
        9611A5A59611AAAA990F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnsalirClick
      ExplicitLeft = 1325
      ExplicitHeight = 30
    end
    object pnlBarTopDiv: TPanel
      Left = 0
      Top = 64
      Width = 968
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = 13092807
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 457
    end
    object Panel8: TPanel
      Left = 902
      Top = 0
      Width = 36
      Height = 64
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 391
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 377
      Height = 64
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object imgLogoTop: TImage
        AlignWithMargins = True
        Left = 20
        Top = 10
        Width = 45
        Height = 44
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Center = True
        Picture.Data = {
          0B54504E474772617068696336090000424D3609000000000000360000002800
          0000180000001800000001002000000000000009000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB973480DB973480000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB983377DB9834FFDB9834FFDB99347F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DB983377DB9834FFDB9834FFDB9834FFDB9835880000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB983377DB9834FFDB9834FFDB9834FFDB983588000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DB983377DB9834FFDB9834FFDB9834FFDB98358800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          3377DB9834FFDB9834FFDB9834FFDB9835880000000000000000000000000000
          0000000000000000000000000000000000000000000000000000D9993314DB98
          3381DB9834CDDB9834F3DB9834F4DB9834CDDB983381DB9E311500000000DB98
          34FFDB9834FFDB9834FFDB973480000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DC973651DB9834F0DB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834EFDA99337DDB98
          34FFDB9834FFDB97348000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA983552DB9834FDDB9834FFDB98
          34B2DC993341D5952B0CD5952B0CDC973242DB9833B3DB9834FFDB9834FFDA99
          337D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9E3115DB9834F1DB9834FFDB9833770000
          00000000000000000000000000000000000000000000DB983579DB9834FFDB98
          34EFDB9E31150000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DC973582DB9834FFDB9834B0000000000000
          0000000000000000000000000000000000000000000000000000DB9833B3DB98
          34FFDB9734800000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9834CFDB9834FFDB973440000000000000
          0000000000000000000000000000000000000000000000000000DC973242DB98
          34FFDB9834CE0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9834F2DB9834FFD5952B0C000000000000
          0000000000000000000000000000000000000000000000000000DB92370EDB98
          34FFDB9834F20000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9834F3DB9834FFD5952B0C000000000000
          0000000000000000000000000000000000000000000000000000D89D3B0DDB98
          34FFDB9834F20000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9833D0DB9834FFDB9A353F000000000000
          0000000000000000000000000000000000000000000000000000DC993341DB98
          34FFDB9834CE0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DC983583DB9834FFDB9834AF000000000000
          0000000000000000000000000000000000000000000000000000DB9834B2DB98
          34FFDB9833810000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DC972E16DB9834F2DB9834FFDA9934750000
          00000000000000000000000000000000000000000000DB983377DB9834FFDB98
          34F0D99933140000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB983454DB9834FEDB9834FFDB98
          34AFDB9A353FD1A22E0BD1A22E0BDB973440DB9834B0DB9834FFDB9834FDDC97
          3651000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB983454DB9834F2DB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834F1DA9835520000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DC972E16DC98
          3583DB9834CFDB9834F4DB9834F4DB9834CEDC973582DB9E3115000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        Proportional = True
        ExplicitTop = 7
      end
      object Panel2: TPanel
        Left = 75
        Top = 0
        Width = 302
        Height = 64
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 33
          Width = 296
          Height = 22
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label2: TLabel
            Left = 0
            Top = 0
            Width = 229
            Height = 22
            Align = alLeft
            Caption = 'Consultar por Codigo y Nombre de Articulo'
            Font.Charset = ANSI_CHARSET
            Font.Color = 10526880
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 15
          end
        end
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 10
          Width = 296
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label3: TLabel
            AlignWithMargins = True
            Left = 45
            Top = 3
            Width = 53
            Height = 17
            Margins.Left = 5
            Align = alLeft
            Caption = 'Articulos'
            Font.Charset = ANSI_CHARSET
            Font.Color = 12091960
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object Label4: TLabel
            Left = 0
            Top = 0
            Width = 40
            Height = 23
            Align = alLeft
            Caption = 'Buscar'
            Font.Charset = ANSI_CHARSET
            Font.Color = 6569760
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 17
          end
        end
      end
    end
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 142
    Width = 968
    Height = 71
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
    ExplicitWidth = 952
    object op: TcxRadioGroup
      AlignWithMargins = True
      Left = 4
      Top = 4
      Align = alLeft
      Caption = 'Criterio de Busqueda'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.Items = <
        item
          Caption = 'Codigo'
        end
        item
          Caption = 'Articulo'
        end>
      ItemIndex = 1
      Style.BorderStyle = ebsFlat
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clGray
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Caramel'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      OnClick = opClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 54
      Height = 63
      Width = 137
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 147
      Top = 21
      Width = 422
      Height = 39
      Margins.Top = 20
      Margins.Bottom = 10
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 4
      ExplicitHeight = 63
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 306
        Height = 39
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 15
        ExplicitTop = 22
        ExplicitHeight = 41
        object Label7: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 3
          Width = 298
          Height = 13
          Margins.Left = 5
          Align = alTop
          Caption = 'Nombre del Articulo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 103
        end
        object Panel18: TPanel
          Left = 0
          Top = 38
          Width = 306
          Height = 1
          Align = alBottom
          Color = 10449444
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 40
        end
        object edtBuscar: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 21
          Width = 254
          Height = 14
          Margins.Top = 2
          Align = alLeft
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TextHint = 'Digite el nombre de Articulos'
          OnChange = edtBuscarChange
          ExplicitTop = 24
          ExplicitHeight = 13
        end
      end
    end
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SortedFields = 'ARTICULO'
    AutoCalcFields = False
    SQL.Strings = (
      'select  upper(A.ARTICULO),  A.* from mtartuculos  A')
    Params = <>
    IndexFieldNames = 'ARTICULO Asc'
    Left = 584
    Top = 195
    object IbqRArticulosCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object IbqRArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object IbqRArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object IbqRArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object IbqRArticulosPOLITICA: TWideStringField
      FieldName = 'POLITICA'
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
    object IbqRArticulosREFERENCIA: TWideStringField
      DisplayLabel = 'Referencia'
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object IbqRArticulosCOSTOPROMENO: TFloatField
      DisplayLabel = 'Costo Promedio'
      FieldName = 'COSTOPROMENO'
      currency = True
    end
    object IbqRArticulosUPPER: TWideStringField
      FieldName = 'UPPER'
      ReadOnly = True
      Size = 100
    end
    object IbqRArticulosCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
    object IbqRArticulosCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object IbqRArticulosCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object IbqRArticulosCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 40
    end
  end
  object DsqArticulos: TDataSource
    DataSet = IbqRArticulos
    Left = 720
    Top = 147
  end
  object DsUnidad: TDataSource
    DataSet = datos.Zunidad
    Left = 203
    Top = 131
  end
  object dscategoria: TDataSource
    DataSet = datos.FbCategorias
    Left = 457
    Top = 115
  end
  object Almacenes1: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.en' +
        'trada - a.salida) Existencia  from minventario a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'left join almacenes c On a.cod_alm = c.id'
      'and b.politica <> '#39'Servicio'#39
      
        'group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descrip' +
        'cion')
    Params = <>
    Left = 712
    Top = 264
    object Almacenes1COD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object Almacenes1ARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object Almacenes1COD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object Almacenes1DESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object Almacenes1EXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
  end
  object DsAlmacenes01: TDataSource
    DataSet = Almacenes1
    Left = 752
    Top = 224
  end
  object QupEQ: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 800
    Top = 88
  end
end
