object frmMantCombo: TfrmMantCombo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Recetas'
  ClientHeight = 495
  ClientWidth = 637
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
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 0
    Width = 637
    Height = 495
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Office2010Blue'
    ClientRectBottom = 489
    ClientRectLeft = 2
    ClientRectRight = 631
    ClientRectTop = 27
    object cxTabSheet2: TcxTabSheet
      Caption = '.'
      ImageIndex = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 33
        Width = 629
        Height = 372
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Office2010Blue'
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
            DataBinding.FieldName = 'COD_ART'
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
            Width = 77
          end
          object cxGrid3DBTableView1NOMBRECOMBO: TcxGridDBColumn
            Caption = 'Nombre de Receta'
            DataBinding.FieldName = 'ARTICULO'
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
            Width = 319
          end
          object cxGrid3DBTableView1PRECIO1: TcxGridDBColumn
            Caption = 'Precio Venta'
            DataBinding.FieldName = 'PRECIO_A'
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
            Width = 118
          end
          object cxGrid3DBTableView1Column1: TcxGridDBColumn
            Caption = 'Costo'
            DataBinding.FieldName = 'COSTO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
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
            Width = 107
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 405
        Align = alBottom
        Caption = 'Introduce Nombre del Combo'
        TabOrder = 1
        Height = 57
        Width = 629
        object cxTextEdit1: TcxTextEdit
          Left = 43
          Top = 22
          Properties.CharCase = ecUpperCase
          Properties.OnChange = cxTextEdit1PropertiesChange
          TabOrder = 0
          Width = 233
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderColor = 33023
        Style.BorderStyle = ebsNone
        Style.Color = 11887127
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Height = 33
        Width = 629
        object cxButton1: TcxButton
          Left = 3
          Top = 0
          Width = 134
          Height = 33
          Caption = 'Crear Nueva Receta'
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = inicio.RibbonImages16
          TabOrder = 1
          Visible = False
          OnClick = cxButton1Click
        end
        object BtModiCombo: TcxButton
          Left = 3
          Top = 0
          Width = 145
          Height = 33
          Caption = 'Consultar Contenido de Receta'
          OptionsImage.ImageIndex = 988
          OptionsImage.Images = inicio.RibbonImages16
          TabOrder = 0
          WordWrap = True
          OnClick = BtModiComboClick
        end
      end
    end
  end
  object ZqCombos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from Combomaster'
      'where estado = 1'
      '')
    Params = <>
    Left = 553
    Top = 104
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
    DataSet = IbqRArticulos
    Left = 601
    Top = 168
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SortedFields = 'ARTICULO'
    AutoCalcFields = False
    SQL.Strings = (
      'select * from mtartuculos '
      'where politica ='#39'Combo'#39)
    Params = <>
    IndexFieldNames = 'ARTICULO Asc'
    Left = 296
    Top = 144
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
    object IbqRArticulosPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object IbqRArticulosCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
  end
end
