object FrmConsulta_Proveedor: TFrmConsulta_Proveedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Articulos x Proveedor'
  ClientHeight = 677
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid5: TcxGrid
    Left = 535
    Top = 79
    Width = 402
    Height = 354
    TabOrder = 0
    Visible = False
    LookAndFeel.SkinName = 'Office2010Blue'
    object cxGridDBTableView1: TcxGridDBTableView
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
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
      end
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Proveedor'
        DataBinding.FieldName = 'DESCRIPCION'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 240
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 57
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Nombre del Articulo'
    end
    object cxTextEdit1: TcxTextEdit
      Left = 7
      Top = 23
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 421
    end
    object cxButton6: TcxButton
      Left = 434
      Top = 24
      Width = 49
      Height = 24
      Caption = '&Ok'
      LookAndFeel.SkinName = 'Blue'
      OptionsImage.ImageIndex = 951
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 1
      OnClick = cxButton6Click
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 79
    Width = 529
    Height = 354
    TabOrder = 2
    LookAndFeel.SkinName = 'Blue'
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
      end
      object cxGrid2DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Articulo'
        DataBinding.FieldName = 'ARTICULO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 281
      end
      object cxGrid2DBTableView1POLITICA: TcxGridDBColumn
        Caption = 'Politica'
        DataBinding.FieldName = 'POLITICA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 105
      end
      object cxGrid2DBTableView1PRECIO1: TcxGridDBColumn
        Caption = 'Precio'
        DataBinding.FieldName = 'PRECIO_B'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 73
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object FbqFabricantes: TDataSource
    DataSet = datos.FbqFabricantes
    Left = 768
    Top = 168
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SortedFields = 'ARTICULO'
    AutoCalcFields = False
    SQL.Strings = (
      'select first 20  * from mtartuculos ')
    Params = <>
    IndexFieldNames = 'ARTICULO Asc'
    Left = 328
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
  end
  object DsqArticulos: TDataSource
    DataSet = IbqRArticulos
    Left = 360
    Top = 155
  end
  object QProveedores: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 696
    Top = 264
  end
end
