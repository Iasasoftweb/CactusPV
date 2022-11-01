object FrmArticulosBuscar: TFrmArticulosBuscar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Articulos'
  ClientHeight = 511
  ClientWidth = 894
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
  object cxRadioGroup1: TcxRadioGroup
    Left = 14
    Top = 8
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
    Height = 63
    Width = 161
  end
  object optipo: TcxRadioGroup
    Left = 181
    Top = 8
    Properties.Columns = 3
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
    Height = 63
    Width = 396
  end
  object Edit1: TEdit
    Left = 8
    Top = 474
    Width = 489
    Height = 28
    CharCase = ecUpperCase
    Color = 48815324
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = Edit1Change
  end
  object s: TcxGrid
    Left = 8
    Top = 77
    Width = 857
    Height = 391
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LevelTabs.Style = 8
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid2DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid2DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
      DataController.DataSource = DsqArticulos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No existe data'
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
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
        Width = 55
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
        Width = 340
      end
      object cxGrid2DBTableView1Column3: TcxGridDBColumn
        Caption = 'Referencias'
        DataBinding.FieldName = 'REFERENCIA'
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
        Width = 160
      end
      object cxGrid2DBTableView1MODELO: TcxGridDBColumn
        Caption = 'Unidad'
        DataBinding.FieldName = 'UNIDAD'
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
        Width = 58
      end
      object cxGrid2DBTableView1MARCA: TcxGridDBColumn
        Caption = 'Precio'
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
        Width = 100
      end
      object cxGrid2DBTableView1Column2: TcxGridDBColumn
        Caption = 'Ubicacion'
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
      end
      object cxGrid2DBTableView1Column1: TcxGridDBColumn
        Caption = 'Existencia'
        DataBinding.FieldName = 'EXISTENCIA'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 79
      end
      object cxGrid2DBTableView1Column6: TcxGridDBColumn
        DataBinding.FieldName = 'OBS'
        Visible = False
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object DsqArticulos: TDataSource
    DataSet = IbqRArticulos
    Left = 842
    Top = 416
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,upper(' +
        'a.articulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicaci' +
        'on, a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo' +
        '_pr, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo' +
        '2, a.mayoreo3,'
      'sum(b.entrada - b.salida) Existencia, a.obs'
      'from mtartuculos a'
      'left join minventario b On a.cod_art = b.cod_art'
      
        'group by a.unidad,a.precio_a, a.precio_b,precio_d,a.cod_art,a.ar' +
        'ticulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis' +
        ', a.taza_compra,a.costo_pr, a.beneficios, a.TIENECOMPACTIBILIDAD' +
        ', a.mayoreo1, a.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, ' +
        'a.obs'
      '')
    Params = <>
    Left = 800
    Top = 416
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
    object IbqRArticulosEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
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
  end
end
