object FrmFindArticulos: TFrmFindArticulos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Buscar Articulos'
  ClientHeight = 632
  ClientWidth = 1158
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageArticulos: TcxPageControl
    AlignWithMargins = True
    Left = 10
    Top = 88
    Width = 1138
    Height = 434
    Margins.Left = 10
    Margins.Right = 10
    Align = alClient
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Office2016Colorful'
    ClientRectBottom = 430
    ClientRectLeft = 4
    ClientRectRight = 1134
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Articulos / Servicios'
      ImageIndex = 0
      object s: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1124
        Height = 400
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.Style = 8
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'Office2016Colorful'
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
          OptionsView.NoDataToDisplayInfoText = 'No existe data'
          OptionsView.GridLines = glHorizontal
          OptionsView.GroupByBox = False
          OptionsView.RowSeparatorColor = clHighlight
          object cxGrid2DBTableView1Column4: TcxGridDBColumn
            Caption = 'Codigo Barra'
            DataBinding.FieldName = 'CODIGOBARRA'
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
            Width = 137
          end
          object cxGrid2DBTableView1COD_ART: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'COD_ART'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 97
          end
          object cxGrid2DBTableView1ARTICULO: TcxGridDBColumn
            Caption = 'Articulo'
            DataBinding.FieldName = 'ARTICULO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 410
          end
          object cxGrid2DBTableView1MARCA: TcxGridDBColumn
            Caption = 'Precio 1'
            DataBinding.FieldName = 'PRECIO_A'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 123
          end
          object cxGrid2DBTableView1Column5: TcxGridDBColumn
            Caption = 'Lote'
            DataBinding.FieldName = 'PRECIO_B'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 'SI'
            Properties.ValueUnchecked = 'NO'
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
            Width = 39
          end
          object cxGrid2DBTableView1Column3: TcxGridDBColumn
            Caption = 'Serie'
            DataBinding.FieldName = 'REFERENCIA'
            PropertiesClassName = 'TcxCheckBoxProperties'
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
            Width = 41
          end
          object cxGrid2DBTableView1MODELO: TcxGridDBColumn
            Caption = 'Desc.'
            DataBinding.FieldName = 'PERMITIRDESC'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'SI'
            Properties.ValueUnchecked = 'NO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 50
          end
          object cxGrid2DBTableView1Column2: TcxGridDBColumn
            Caption = 'Ubicacion'
            DataBinding.FieldName = 'UBICACION'
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
            Width = 94
          end
          object cxGrid2DBTableView1Column6: TcxGridDBColumn
            DataBinding.FieldName = 'OBS'
            Visible = False
          end
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            Visible = False
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object Edit1: TEdit
        Left = 104
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 1
        Visible = False
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'R. M. A.'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid9: TcxGrid
        Left = 0
        Top = 0
        Width = 1130
        Height = 406
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'Office2016Colorful'
        object cxGrid9DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Total de Ordes =,0'
              Kind = skCount
              FieldName = 'NOMBRES'
              Column = cxGrid9DBTableView1NOMBRES
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = 'No Data'
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid9DBTableView1NOORDEN: TcxGridDBColumn
            Caption = 'No. Orden'
            DataBinding.FieldName = 'NOORDEN'
            HeaderAlignmentHorz = taCenter
            MinWidth = 54
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
            Width = 54
          end
          object cxGrid9DBTableView1FECHA_ENTRADA: TcxGridDBColumn
            Caption = 'Fecha Entrada'
            DataBinding.FieldName = 'FECHA_ENTRADA'
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
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
            Width = 100
          end
          object cxGrid9DBTableView1NOMBRES: TcxGridDBColumn
            Caption = 'Nombre de Cliente'
            DataBinding.FieldName = 'NOMBRES'
            HeaderAlignmentHorz = taCenter
            MinWidth = 250
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
            Width = 250
          end
          object cxGrid9DBTableView1NO_SERIAL: TcxGridDBColumn
            Caption = 'No. Serie'
            DataBinding.FieldName = 'NO_SERIAL'
            HeaderAlignmentHorz = taCenter
            MinWidth = 112
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
            Width = 112
          end
          object cxGrid9DBTableView1TIPOEQUIPO: TcxGridDBColumn
            Caption = 'Tipo de Equipo'
            DataBinding.FieldName = 'TIPOEQUIPO'
            HeaderAlignmentHorz = taCenter
            MinWidth = 223
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
            Width = 223
          end
          object cxGrid9DBTableView1OBSERVACIONEQUIPO: TcxGridDBColumn
            Caption = 'Obs. del Equipo'
            DataBinding.FieldName = 'FALLAEQUIPO'
            HeaderAlignmentHorz = taCenter
            MinWidth = 165
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
            Width = 165
          end
          object cxGrid9DBTableView1MONTO: TcxGridDBColumn
            Caption = 'Monto a Pagar'
            DataBinding.FieldName = 'MONTO'
            HeaderAlignmentHorz = taCenter
            MinWidth = 107
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
            Width = 107
          end
        end
        object cxGrid9Level1: TcxGridLevel
          GridView = cxGrid9DBTableView1
        end
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 528
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    PanelStyle.Active = True
    ParentBackground = False
    ParentColor = False
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
    Height = 94
    Width = 1138
    object cxRadioGroup3: TcxRadioGroup
      AlignWithMargins = True
      Left = 454
      Top = 5
      Align = alLeft
      Caption = 'Estado'
      Properties.Items = <
        item
          Caption = 'Nuevos'
        end
        item
          Caption = 'Usados'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      Height = 84
      Width = 78
    end
    object optipo: TcxRadioGroup
      AlignWithMargins = True
      Left = 538
      Top = 5
      Margins.Right = 10
      Align = alLeft
      Properties.Items = <
        item
          Caption = 'Nombre Producto'
        end
        item
          Caption = 'Referencias'
        end
        item
          Caption = 'Codigo'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
      OnClick = optipoClick
      Height = 84
      Width = 135
    end
    object cxGrid6: TcxGrid
      Left = 2
      Top = 2
      Width = 278
      Height = 90
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid6DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsAlmacenes01
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'EXISTENCIA'
            Column = cxGrid6DBTableView1EXISTENCIA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid6DBTableView1DESCRIPCION: TcxGridDBColumn
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
        object cxGrid6DBTableView1EXISTENCIA: TcxGridDBColumn
          Caption = 'Cant.'
          DataBinding.FieldName = 'EXISTENCIA'
          HeaderAlignmentHorz = taCenter
          MinWidth = 74
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
      object cxGrid6Level1: TcxGridLevel
        GridView = cxGrid6DBTableView1
      end
    end
    object cxGrid3: TcxGrid
      Left = 280
      Top = 2
      Width = 171
      Height = 90
      Align = alLeft
      TabOrder = 3
      LookAndFeel.NativeStyle = True
      object cxGrid3DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsQinventarioEQ
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid3DBTableView1EXISTENCIA: TcxGridDBColumn
          Caption = 'Total Exist.'
          DataBinding.FieldName = 'EXISTENCIA'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 100
        end
        object cxGrid3DBTableView1Column1: TcxGridDBColumn
          Caption = 'UND'
          DataBinding.FieldName = 'UNIDAD'
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
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 996
      Top = 40
      Width = 118
      Height = 25
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      BevelOuter = bvNone
      Color = 3846482
      ParentBackground = False
      TabOrder = 4
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 112
        Height = 19
        Align = alClient
        Caption = 'Crear Articulo'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = 75
        ExplicitTop = 11
        ExplicitHeight = 31
      end
    end
    object Panel17: TPanel
      AlignWithMargins = True
      Left = 693
      Top = 22
      Width = 276
      Height = 50
      Margins.Left = 10
      Margins.Top = 20
      Margins.Right = 10
      Margins.Bottom = 20
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
      object Label7: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 268
        Height = 13
        Margins.Left = 5
        Align = alTop
        Caption = 'Nombre de Articulos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 105
      end
      object Panel18: TPanel
        Left = 0
        Top = 49
        Width = 276
        Height = 1
        Align = alBottom
        Color = 10449444
        ParentBackground = False
        TabOrder = 0
      end
      object Edit19: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 254
        Height = 22
        Margins.Top = 5
        Align = alLeft
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = 'Digite el nombre de Articulo'
        OnChange = Edit9Change
      end
    end
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 1138
    Height = 65
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object btnsalir: TSpeedButton
      AlignWithMargins = True
      Left = 1108
      Top = 15
      Width = 30
      Height = 34
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 0
      Margins.Bottom = 15
      Align = alRight
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
      Width = 1138
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = 13092807
      ParentBackground = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 449
      Height = 64
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
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
          0B54504E474772617068696336100000424D3610000000000000360000002800
          0000200000002000000001002000000000000010000000000000000000000000
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
          000000000000000000000000000000000000DA983552DB9834B0DB9224070000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DA973453DB9834FADB9834FFDB9834B00000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DA983552DB9834FADB9834FFDB9834FCDC9734580000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DA983552DB9834FADB9834FFDB9834FCDA983459000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DA973453DB9834FADB9834FFDB9834FCDA98345900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DA97
          3453DB9834FADB9834FFDB9834FCDA9834590000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF800002DB983639DB983579DB993493DB9835AADB97
          3596DC983574D9973436FFFF0001000000000000000000000000DB993355DB98
          34FBDB9834FFDB9834FBDB983454000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000D5AA2B06DB993470DC9834E6DB9834FEDB9834D3DB9834B2DA9735A0DC98
          34B4DB9934DBDB9834FFDB9834D9DC993566FF800002DB993355DB9834FBDB98
          34FFDB9834FBDB98345400000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          372ADB9834D9DB9834EFDB983579DC95351D0000000000000000000000000000
          000000000000DD9A3626DC98348ADB9834F6DB9834D3DB9834FBDB9834FFDB98
          34FBDB9933550000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DB9A353FDB98
          34F1DB9833B3D59C391200000000000000000000000000000000000000000000
          0000000000000000000000000000DD99331EDB9834C8DB9834FFDB9834FBDB97
          3556000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DC953224DB9834EDDA98
          3499FF8000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DF9F4008DC9834B4DB9834E7D794
          3613000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFF0001DB9834C8DA9834BCBF80
          4004000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000D89D3B0DDB9833D5DB98
          34AB000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB983454DB9834FADC9532240000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DA98353EDB98
          34FEDD9A35350000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB9734C0DB98339A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DC97
          34BBDB9735A50000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D7943613DB9834FBDA983445000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DA97
          3467DB9835EEFFAA550300000000000000000000000000000000000000000000
          0000000000000000000000000000DA983445DB9834FDD5AA2B06000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DD98
          3725DB9834FFD999332800000000000000000000000000000000000000000000
          0000000000000000000000000000DC99335FDB9834E800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000E38E
          3909DB9834FFDB97344000000000000000000000000000000000000000000000
          0000000000000000000000000000DA983368DC9833DF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF80
          0002DB9834FCDC9A344900000000000000000000000000000000000000000000
          0000000000000000000000000000DC973651DB9834F600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DF95
          3518DB9834FFD998362F00000000000000000000000000000000000000000000
          0000000000000000000000000000DC97342CDB9834FFDD983725000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB99
          3346DB9834FBDD99330F00000000000000000000000000000000000000000000
          000000000000000000000000000000000000DC9833DFDC993373000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          3494DB9834BF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB973587DB9834DDD5AA2B060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000D9993314DB98
          34F0DA9734670000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000D59C3912DB9834EFDC9835740000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DB973596DB99
          34DBD5AA2B060000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB993364DB9834FADC99
          3341000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB97345DDB9834FCDB99
          3346000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DB993493DB98
          34F2DB96344E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA973467DB9834FADB9833720000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFF0001DC98
          3583DB9834FCDC993498D6993319000000000000000000000000000000000000
          00000000000000000000DD983725DB9834ABDB9834FADA983368000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DC9A3449DB9834D4DB9834F7DB9833B3DB98356ADA99334BDB963238DB98
          354DDB983372DA9834BCDB9834FBDB9734C5DA99333700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFAA5503DB98344FDA9735A0DB9934E0DB9834FADB9834FFDB98
          34F7DB9934DBDB973596DD983543000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DD99330F0000
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
      object Panel4: TPanel
        Left = 75
        Top = 0
        Width = 310
        Height = 64
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 33
          Width = 304
          Height = 22
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label3: TLabel
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
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 10
          Width = 304
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label4: TLabel
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
          object Label5: TLabel
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
  object DsqArticulos: TDataSource
    DataSet = IbqRArticulos
    Left = 896
    Top = 160
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.unidad,a.precio_a, a.codigobarra,a.precio_b,precio_d, p' +
        'recio_c, a.comision, a.unidadventa, a.serie, a.lote, a.permitird' +
        'esc, idimpuesto, a.descpermitido, a.cod_art,upper(a.articulo) ar' +
        'ticulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, a.modelo,a' +
        '.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr, a.benefic' +
        'ios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a.mayoreo3,' +
        ' a.obs, a.aplicarpormayor'
      'from mtartuculos a'
      
        'group by a.unidad,a.precio_a,a.codigobarra, a.precio_b,precio_d,' +
        'a.cod_art, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimp' +
        'uesto, a.descpermitido, a.comision,a.articulo,a.cod_cat,a.politi' +
        'ca,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_p' +
        'r, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, precio_c, a' +
        '.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs, a.aplica' +
        'rpormayor'
      '')
    Params = <>
    Left = 440
    Top = 128
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
    object IbqRArticulosPRECIO_C: TFloatField
      FieldName = 'PRECIO_C'
      currency = True
    end
    object IbqRArticulosUNIDADVENTA: TWideStringField
      FieldName = 'UNIDADVENTA'
      Size = 10
    end
    object IbqRArticulosSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 2
    end
    object IbqRArticulosLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object IbqRArticulosPERMITIRDESC: TWideStringField
      FieldName = 'PERMITIRDESC'
      Size = 2
    end
    object IbqRArticulosIDIMPUESTO: TIntegerField
      FieldName = 'IDIMPUESTO'
    end
    object IbqRArticulosDESCPERMITIDO: TIntegerField
      FieldName = 'DESCPERMITIDO'
    end
  end
  object DsAlmacenes01: TDataSource
    DataSet = Almacenes1
    Left = 160
    Top = 264
  end
  object Almacenes1: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.en' +
        'trada - a.salida) Existencia  from minventario a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'left join almacenes c On a.cod_alm = c.id'
      'and b.politica <> '#39'Servicio'#39
      'and a.cod_alm = 1'
      
        'group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descrip' +
        'cion')
    Params = <>
    Left = 32
    Top = 304
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
  object DsEquivalente: TDataSource
    DataSet = QEquivalentes
    Left = 662
    Top = 10
  end
  object QEquivalentes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.* from mtartuculos a'
      'where a.cod_art = 0')
    Params = <>
    Left = 718
    Top = 10
    object QEquivalentesCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object QEquivalentesCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 40
    end
    object QEquivalentesARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QEquivalentesMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object QEquivalentesMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object QEquivalentesCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 45
    end
    object QEquivalentesCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object QEquivalentesCOD_SERIE: TIntegerField
      FieldName = 'COD_SERIE'
    end
    object QEquivalentesCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object QEquivalentesCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object QEquivalentesCOD_PROV1: TIntegerField
      FieldName = 'COD_PROV1'
    end
    object QEquivalentesEXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object QEquivalentesITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object QEquivalentesABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object QEquivalentesCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      Size = 22
    end
    object QEquivalentesCOD_UV: TIntegerField
      FieldName = 'COD_UV'
    end
    object QEquivalentesUSUARIOMOD: TIntegerField
      FieldName = 'USUARIOMOD'
    end
    object QEquivalentesFECHA_MOD: TDateField
      FieldName = 'FECHA_MOD'
    end
    object QEquivalentesPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object QEquivalentesCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object QEquivalentesIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object QEquivalentesCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object QEquivalentesCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object QEquivalentesPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object QEquivalentesPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object QEquivalentesPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object QEquivalentesESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QEquivalentesEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 4
    end
    object QEquivalentesDESCRIPCIONWEB: TWideMemoField
      FieldName = 'DESCRIPCIONWEB'
      BlobType = ftWideMemo
    end
    object QEquivalentesPUBLICARWEB: TIntegerField
      FieldName = 'PUBLICARWEB'
    end
    object QEquivalentesCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object QEquivalentesEMPAQUE: TIntegerField
      FieldName = 'EMPAQUE'
    end
    object QEquivalentesCANT_EMPA: TFloatField
      FieldName = 'CANT_EMPA'
    end
    object QEquivalentesCOD_PROV2: TIntegerField
      FieldName = 'COD_PROV2'
    end
    object QEquivalentesCOD_PROV3: TIntegerField
      FieldName = 'COD_PROV3'
    end
    object QEquivalentesREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object QEquivalentesOPCION_SABOR: TWideStringField
      FieldName = 'OPCION_SABOR'
      Size = 2
    end
    object QEquivalentesSTOCK_MA: TFloatField
      FieldName = 'STOCK_MA'
    end
    object QEquivalentesSTOCK_M: TFloatField
      FieldName = 'STOCK_M'
    end
    object QEquivalentesFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object QEquivalentesTIPO_PRODUCTOS: TWideStringField
      FieldName = 'TIPO_PRODUCTOS'
      Size = 10
    end
    object QEquivalentesFACTURABLE: TIntegerField
      FieldName = 'FACTURABLE'
    end
    object QEquivalentesSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object QEquivalentesOPCIONES_BOLA: TWideStringField
      FieldName = 'OPCIONES_BOLA'
      Size = 2
    end
    object QEquivalentesPARTICIONADO: TWideStringField
      FieldName = 'PARTICIONADO'
      Size = 2
    end
    object QEquivalentesCOMPUESTO: TWideStringField
      FieldName = 'COMPUESTO'
      Size = 2
    end
    object QEquivalentesBENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object QEquivalentesMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object QEquivalentesUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object QEquivalentesTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object QEquivalentesFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object QEquivalentesINTERES_ACUMULADO: TFloatField
      FieldName = 'INTERES_ACUMULADO'
    end
    object QEquivalentesALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
    object QEquivalentesPERCIO_COPA: TFloatField
      FieldName = 'PERCIO_COPA'
    end
    object QEquivalentesCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object QEquivalentesARTICULOS_OMO: TWideStringField
      FieldName = 'ARTICULOS_OMO'
      Size = 10
    end
    object QEquivalentesCODIGOUNICO: TWideStringField
      FieldName = 'CODIGOUNICO'
      Size = 5
    end
    object QEquivalentesEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 25
    end
    object QEquivalentesCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object QEquivalentesUTILIDAD2: TFloatField
      FieldName = 'UTILIDAD2'
    end
    object QEquivalentesUTILIDAD3: TFloatField
      FieldName = 'UTILIDAD3'
    end
    object QEquivalentesPRECIO_BRUTO1: TFloatField
      FieldName = 'PRECIO_BRUTO1'
    end
    object QEquivalentesPRECIO_BRUTO2: TFloatField
      FieldName = 'PRECIO_BRUTO2'
    end
    object QEquivalentesPRECIO_BRUTO3: TFloatField
      FieldName = 'PRECIO_BRUTO3'
    end
    object QEquivalentesMAYOREO1: TFloatField
      FieldName = 'MAYOREO1'
    end
    object QEquivalentesMAYOREO2: TFloatField
      FieldName = 'MAYOREO2'
    end
    object QEquivalentesMAYOREO3: TFloatField
      FieldName = 'MAYOREO3'
    end
    object QEquivalentesDESCRIPCION: TWideMemoField
      FieldName = 'DESCRIPCION'
      BlobType = ftWideMemo
    end
    object QEquivalentesCOSTOPROMENO: TFloatField
      FieldName = 'COSTOPROMENO'
    end
    object QEquivalentesTIENECOMPACTIBILIDAD: TWideStringField
      FieldName = 'TIENECOMPACTIBILIDAD'
      Size = 2
    end
    object QEquivalentesCOMPACTIBLECON: TIntegerField
      FieldName = 'COMPACTIBLECON'
    end
    object QEquivalentesUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object QEquivalentesOBS: TIntegerField
      FieldName = 'OBS'
    end
    object QEquivalentesTIPOB: TWideStringField
      FieldName = 'TIPOB'
      Size = 15
    end
    object QEquivalentesESTADOCONDICION: TWideStringField
      FieldName = 'ESTADOCONDICION'
      Size = 10
    end
    object QEquivalentesIDMONEDA: TIntegerField
      FieldName = 'IDMONEDA'
    end
    object QEquivalentesCOSTO_DOLLARS: TFloatField
      FieldName = 'COSTO_DOLLARS'
    end
    object QEquivalentesCODEQUIVALENCIA: TWideStringField
      FieldName = 'CODEQUIVALENCIA'
      Size = 30
    end
    object QEquivalentesDESC_EQUIVALENCIA: TWideStringField
      FieldName = 'DESC_EQUIVALENCIA'
      Size = 100
    end
    object QEquivalentesCANTEQUIVALENCA: TFloatField
      FieldName = 'CANTEQUIVALENCA'
    end
    object QEquivalentesPRE1: TFloatField
      FieldName = 'PRE1'
    end
    object QEquivalentesPRE2: TFloatField
      FieldName = 'PRE2'
    end
    object QEquivalentesPRE3: TFloatField
      FieldName = 'PRE3'
    end
    object QEquivalentesCOSP: TFloatField
      FieldName = 'COSP'
    end
    object QEquivalentesCOST: TFloatField
      FieldName = 'COST'
    end
    object QEquivalentesPRECIO_C: TFloatField
      FieldName = 'PRECIO_C'
    end
    object QEquivalentesUTILIDAD4: TFloatField
      FieldName = 'UTILIDAD4'
    end
    object QEquivalentesMAYOREO4: TFloatField
      FieldName = 'MAYOREO4'
    end
    object QEquivalentesPRECIO_BRUTO4: TFloatField
      FieldName = 'PRECIO_BRUTO4'
    end
    object QEquivalentesUTILIDADSOBREITBS: TWideStringField
      FieldName = 'UTILIDADSOBREITBS'
      Size = 2
    end
  end
  object DsQinventarioEQ: TDataSource
    DataSet = datos.QInventarioEQ
    Left = 288
    Top = 424
  end
end
