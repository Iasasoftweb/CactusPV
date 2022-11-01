object FrmNFact: TFrmNFact
  Left = 110
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Sistema Gesti'#243'n Heladerias SGH. Ver 0.002'
  ClientHeight = 682
  ClientWidth = 1249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 831
    Top = 754
    Width = 26
    Height = 14
    Caption = 'ITBs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object OpBuscarEmpleado: TcxGroupBox
    Left = 760
    Top = 454
    Caption = 'Buscar Empleado'
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 3
    Visible = False
    Height = 178
    Width = 253
    object Edit2: TEdit
      Left = 11
      Top = 135
      Width = 230
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object cxGrid3: TcxGrid
      Left = 2
      Top = 14
      Width = 241
      Height = 115
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsqusuario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn
          Caption = 'Usuarios Creados'
          DataBinding.FieldName = 'NOMBRES_EMP'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 235
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
          Width = 235
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  object opdetalle: TcxGroupBox
    Left = 53
    Top = 165
    Caption = 'Detalle de Factura        [Presionar [F2] para buscar Articulos]'
    Enabled = False
    PanelStyle.Active = True
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    Style.Color = -1
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 315
    Width = 366
    object Label10: TLabel
      Left = 41
      Top = 19
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label11: TLabel
      Left = 332
      Top = 18
      Width = 91
      Height = 13
      Caption = 'Nombre del Articuo'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label23: TLabel
      Left = 137
      Top = 321
      Width = 23
      Height = 13
      Caption = 'Cant'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 177
      Top = 321
      Width = 29
      Height = 13
      Caption = 'Precio'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 281
      Top = 322
      Width = 20
      Height = 13
      Caption = 'Tipo'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 285
      Top = 75
      Width = 30
      Height = 13
      Caption = 'Ancho'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label28: TLabel
      Left = 339
      Top = 75
      Width = 19
      Height = 13
      Caption = 'Alto'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label29: TLabel
      Left = 328
      Top = 91
      Width = 6
      Height = 13
      Caption = 'X'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label33: TLabel
      Left = 114
      Top = 21
      Width = 77
      Height = 13
      Caption = 'Codigo de Barra'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label26: TLabel
      Left = 60
      Top = 321
      Width = 33
      Height = 13
      Caption = 'Unidad'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 4
      Top = 0
      Width = 362
      Height = 314
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.CaptionAlignment = taLeftJustify
      LookAndFeel.SkinName = 'Silver'
      RootLevelOptions.TabsForEmptyDetails = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnKeyDown = cxGrid1DBTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = datos.DsDetalleMaster
        DataController.KeyFieldNames = 'NO_FACT'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total de Items =,0'
            Kind = skCount
            FieldName = 'ARTICULOID'
            Column = cxGrid1DBTableView1Column1
          end
          item
            Kind = skSum
            FieldName = 'TOTAL'
            Column = cxGrid1DBTableView1PRECIO
            Sorted = True
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'NO_FACT'
          Visible = False
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Articulo'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 186
        end
        object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
          Caption = 'Cant.'
          DataBinding.FieldName = 'CANTIDAD'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 37
        end
        object cxGrid1DBTableView1PRECIO: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 106
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
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
        DataController.DataSource = DsFQgustos
        DataController.DetailKeyFieldNames = 'ID_FACT'
        DataController.KeyFieldNames = 'ID_FACT'
        DataController.MasterKeyFieldNames = 'NO_FACT'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        Preview.AutoHeight = False
        Styles.Background = cxStyle1
        Styles.Content = cxStyle1
        Styles.ContentEven = cxStyle1
        Styles.ContentOdd = cxStyle1
        Styles.FilterBox = cxStyle1
        Styles.Inactive = cxStyle1
        Styles.IncSearch = cxStyle1
        Styles.Navigator = cxStyle1
        Styles.NavigatorInfoPanel = cxStyle1
        Styles.Selection = cxStyle1
        Styles.FilterRowInfoText = cxStyle1
        Styles.Footer = cxStyle1
        Styles.Group = cxStyle1
        Styles.GroupByBox = cxStyle1
        Styles.GroupFooterSortedSummary = cxStyle1
        Styles.GroupSortedSummary = cxStyle1
        Styles.GroupSummary = cxStyle1
        Styles.Header = cxStyle1
        Styles.Indicator = cxStyle1
        Styles.NewItemRowInfoText = cxStyle1
        Styles.Preview = cxStyle1
        object cxGrid1DBTableView2ARTICULO: TcxGridDBColumn
          DataBinding.FieldName = 'ARTICULO'
          MinWidth = 210
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 210
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        Options.DetailTabsPosition = dtpLeft
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
          Options.DetailTabsPosition = dtpLeft
          Styles.Tab = cxStyle1
          Styles.TabsBackground = cxStyle1
        end
      end
    end
    object t1: TcxTextEdit
      Left = 81
      Top = 101
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Visible = False
      Width = 75
    end
    object t2: TcxTextEdit
      Left = 56
      Top = 135
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Visible = False
      Width = 273
    end
    object t3: TcxTextEdit
      Left = 134
      Top = 333
      Properties.ReadOnly = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 3
      Width = 42
    end
    object t4: TcxCurrencyEdit
      Left = 178
      Top = 334
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 4
      Width = 94
    end
    object cxButton9: TcxButton
      Left = 50
      Top = 63
      Width = 56
      Height = 25
      Caption = 'A'#241'adir'
      Enabled = False
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 114
      TabOrder = 5
      Visible = False
      OnClick = cxButton9Click
    end
    object cxButton10: TcxButton
      Left = 254
      Top = 118
      Width = 32
      Height = 28
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 6
      Visible = False
      OnClick = cxButton10Click
    end
    object topcion: TcxTextEdit
      Left = 509
      Top = -8
      TabOrder = 7
      Visible = False
      Width = 78
    end
    object PanelDesc: TcxGroupBox
      Left = 405
      Top = 313
      Caption = 'Aplicar Descuentos'
      PanelStyle.BorderWidth = 2
      PanelStyle.OfficeBackgroundKind = pobkStyleColor
      TabOrder = 8
      Visible = False
      Height = 122
      Width = 287
      object Label17: TLabel
        Left = 26
        Top = 28
        Width = 123
        Height = 16
        Caption = 'Clave de Autorizacion'
      end
      object Label18: TLabel
        Left = 146
        Top = 28
        Width = 98
        Height = 16
        Caption = 'Monto Descuento'
      end
      object cxTextEdit1: TcxTextEdit
        Left = 25
        Top = 43
        ParentFont = False
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 105
      end
      object desc: TcxCurrencyEdit
        Left = 146
        Top = 43
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 103
      end
      object cxButton3: TcxButton
        Left = 104
        Top = 78
        Width = 75
        Height = 25
        Caption = 'Ok'
        LookAndFeel.SkinName = 'SharpPlus'
        OptionsImage.ImageIndex = 81
        TabOrder = 2
        OnClick = cxButton3Click
      end
    end
    object cxComboBox1: TcxComboBox
      Left = 275
      Top = 334
      Properties.Items.Strings = (
        'A'
        'B'
        'C')
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 9
      Width = 43
    end
    object ancho: TcxTextEdit
      Left = 284
      Top = 88
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 10
      Visible = False
      OnKeyDown = anchoKeyDown
      Width = 42
    end
    object alto: TcxTextEdit
      Left = 300
      Top = 94
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 11
      Visible = False
      OnKeyDown = altoKeyDown
      Width = 42
    end
    object calcular: TcxButton
      Left = 379
      Top = 86
      Width = 25
      Height = 21
      Hint = 'Calcular a Pie 2'
      Enabled = False
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 990
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Visible = False
      OnClick = calcularClick
    end
    object cat: TcxTextEdit
      Left = 425
      Top = -9
      TabOrder = 13
      Visible = False
      Width = 78
    end
    object barra: TcxTextEdit
      Left = 112
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 14
      Visible = False
      OnKeyDown = barraKeyDown
      Width = 119
    end
    object LUnid: TcxLookupComboBox
      Left = 56
      Top = 333
      Properties.KeyFieldNames = 'UNIDAD'
      Properties.ListColumns = <
        item
          FieldName = 'UNIDAD'
        end>
      Properties.ListSource = DsQ_Unidad
      TabOrder = 15
      Width = 75
    end
    object Edit8: TEdit
      Left = 81
      Top = 131
      Width = 121
      Height = 24
      TabOrder = 16
      Visible = False
    end
    object Edit9: TEdit
      Left = 32
      Top = 120
      Width = 121
      Height = 24
      TabOrder = 17
      Visible = False
    end
    object cxGrid7: TcxGrid
      Left = 63
      Top = 318
      Width = 363
      Height = 106
      TabOrder = 18
      Visible = False
      object cxGrid7DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = DsFQgustos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.AutoHeight = False
        object cxGrid7DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'ID_SF'
          Width = 73
        end
        object cxGrid7DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'ID_FACT'
        end
        object cxGrid7DBTableView1DESCRIPCION: TcxGridDBColumn
          Caption = 'Gustos Asignados'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Width = 356
        end
      end
      object cxGrid7Level1: TcxGridLevel
        GridView = cxGrid7DBTableView1
      end
    end
    
  object opmaster: TcxGroupBox
    Left = 132
    Top = 70
    Enabled = False
    PanelStyle.Active = True
    PanelStyle.OfficeBackgroundKind = pobkGradient
    PanelStyle.WordWrap = True
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    Style.Color = -1
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 89
    Width = 283
    object Label1: TLabel
      Left = 7
      Top = 48
      Width = 61
      Height = 14
      Caption = 'No. Ticket:'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 84
      Top = 48
      Width = 36
      Height = 14
      Caption = 'Fecha:'
      FocusControl = cxDBDateEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 213
      Top = 81
      Width = 24
      Height = 14
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 196
      Top = 93
      Width = 104
      Height = 14
      Caption = 'Nombre del Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 16
      Top = 107
      Width = 83
      Height = 14
      Caption = 'Cod. Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 105
      Top = 107
      Width = 121
      Height = 14
      Caption = 'Nombre del Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label16: TLabel
      Left = 182
      Top = 48
      Width = 29
      Height = 14
      Caption = 'Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 3
      Top = 63
      DataBinding.DataField = 'NO_FACT1'
      DataBinding.DataSource = dsmasterFACT
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsNone
      Style.Color = -1
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Width = 76
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 83
      Top = 62
      DataBinding.DataField = 'FECHA_FAC'
      DataBinding.DataSource = dsmasterFACT
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsNone
      Style.Color = -1
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.ButtonStyle = btsFlat
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Width = 108
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 92
      Top = 101
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = dsmasterFACT
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'CREDITO'
        'Contado')
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Visible = False
      Width = 138
    end
    object cxButton1: TcxButton
      Left = 264
      Top = 103
      Width = 30
      Height = 21
      Hint = 'Buscar Clientes [F8]'
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = RibbonImages16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 92
      Top = 107
      Width = 25
      Height = 21
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 4
      Visible = False
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 109
      Top = 107
      DataBinding.DataField = 'NOMBRES_EMP'
      DataBinding.DataSource = datos.DsMaster_Fact
      Properties.ReadOnly = True
      Style.Color = 13684944
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 5
      Visible = False
      Width = 122
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 192
      Top = 107
      DataBinding.DataField = 'NOMBRECLIENTE_PRN'
      DataBinding.DataSource = datos.DsMaster_Fact
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 6
      Visible = False
      Width = 150
    end
    object RxDBComboBox1: TcxDBComboBox
      Left = 306
      Top = 69
      DataBinding.DataField = 'CONDICIONVENTA'
      DataBinding.DataSource = dsmasterFACT
      Enabled = False
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'DETALLE'
        'AL POR MAYOR')
      TabOrder = 7
      Visible = False
      Width = 110
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 13
      Top = 107
      DataBinding.DataField = 'CODVEN'
      DataBinding.DataSource = dsmasterFACT
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 8
      Visible = False
      Width = 73
    end
    object cxButton7: TcxButton
      Left = 300
      Top = 99
      Width = 68
      Height = 35
      Caption = 'Actualizar Itbs'
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 9
      Visible = False
      WordWrap = True
      OnClick = cxButton7Click
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 3
      Top = -1
      TabStop = False
      DataBinding.DataField = 'MONTOPAGO'
      DataBinding.DataSource = dsmasterFACT
      ParentFont = False
      Properties.AssignedValues.MinValue = True
      Properties.AutoSelect = False
      Properties.Nullstring = '0.00'
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.BorderStyle = ebsNone
      Style.Color = clBlack
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -27
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Blueprint'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Blueprint'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 10
      Width = 270
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 182
      Top = 62
      DataBinding.DataField = 'HORA'
      DataBinding.DataSource = dsmasterFACT
      ParentFont = False
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Properties.Use24HourFormat = False
      Style.BorderStyle = ebsNone
      Style.Color = clBlack
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
      Width = 98
    end
  end
  object OpBuscarCLiente: TcxGroupBox
    Left = 158
    Top = 797
    Caption = 'Buscar Cliente'
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 2
    Visible = False
    Height = 246
    Width = 765
    object cxGrid2: TcxGrid
      Left = 3
      Top = 16
      Width = 742
      Height = 181
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2010Blue'
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsqCliente
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Nombres'
          DataBinding.FieldName = 'NOMBRES'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Width = 300
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'TELEFONO'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
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
        object cxGridDBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'RNC'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
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
        object cxGridDBTableView1Column3: TcxGridDBColumn
          Caption = 'Contacto'
          DataBinding.FieldName = 'CONTACTO'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
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
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Edit1: TEdit
      Left = 255
      Top = 203
      Width = 278
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Opb: TcxRadioGroup
      Left = 13
      Top = 203
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Nombres'
        end
        item
          Caption = 'Numero Pin'
        end>
      ItemIndex = 0
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Height = 25
      Width = 236
    end
    object Edit4: TEdit
      Left = 160
      Top = 67
      Width = 73
      Height = 21
      TabOrder = 3
      Visible = False
    end
  end
  object linea: TEdit
    Left = 478
    Top = 442
    Width = 33
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object Edit3: TEdit
    Left = 215
    Top = 410
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object Edit5: TEdit
    Left = 550
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object Panel1: TPanel
    Left = 170
    Top = 279
    Width = 132
    Height = 41
    BevelInner = bvRaised
    BevelKind = bkSoft
    BevelOuter = bvLowered
    TabOrder = 8
    Visible = False
    object Label30: TLabel
      Left = 11
      Top = 1
      Width = 43
      Height = 13
      Caption = 'Cantidad'
      FocusControl = cxDBTextEdit1
    end
    object dxBevel1: TdxBevel
      Left = 24
      Top = 8
      Width = 50
      Height = 50
    end
    object Edit6: TEdit
      Left = 6
      Top = 14
      Width = 75
      Height = 21
      TabOrder = 0
    end
    object cxButton6: TcxButton
      Left = 87
      Top = 6
      Width = 32
      Height = 26
      LookAndFeel.SkinName = 'SharpPlus'
      OptionsImage.ImageIndex = 1001
      TabOrder = 1
      OnClick = cxButton6Click
      OnKeyDown = cxButton6KeyDown
    end
  end
  object Opserial: TcxGroupBox
    Left = 824
    Top = 818
    Caption = 'Introducci'#243'n No. de Serie'
    TabOrder = 10
    Visible = False
    Height = 330
    Width = 262
    object Edit7: TEdit
      Left = 3
      Top = 298
      Width = 256
      Height = 22
      Align = alBottom
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cxGrid5: TcxGrid
      Left = 3
      Top = 15
      Width = 256
      Height = 283
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object cxGrid5DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsSerial
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Existen Datos'
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.Header = False
        Preview.AutoHeight = False
        object cxGrid5DBTableView1SERIES: TcxGridDBColumn
          Caption = 'No. de Serie'
          DataBinding.FieldName = 'SERIES'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 252
        end
      end
      object cxGrid5Level1: TcxGridLevel
        GridView = cxGrid5DBTableView1
      end
    end
  end
  object panelcobro: TcxGroupBox
    Left = 692
    Top = 790
    Caption = 'Cobro'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    Style.Shadow = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 6
    Visible = False
    Height = 368
    Width = 445
    object Label20: TLabel
      Left = 151
      Top = 28
      Width = 94
      Height = 19
      Caption = 'Total a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 151
      Top = 51
      DataBinding.DataField = 'MONTOPAGO'
      DataBinding.DataSource = dsmasterFACT
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Blueprint'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Blueprint'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 0
      Width = 172
    end
    object paginas1: TcxPageControl
      Left = 129
      Top = 84
      Width = 292
      Height = 268
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Properties.ActivePage = page1
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 11
      Properties.TabCaptionAlignment = taLeftJustify
      Properties.TabPosition = tpLeft
      LookAndFeel.SkinName = 'Office2010Blue'
      ClientRectBottom = 262
      ClientRectLeft = 27
      ClientRectRight = 286
      ClientRectTop = 2
      object page1: TcxTabSheet
        Caption = 'Pago Efectivo'
        ImageIndex = 1
        object Label21: TLabel
          Left = 11
          Top = 30
          Width = 113
          Height = 19
          Caption = 'Total Efectivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 11
          Top = 94
          Width = 89
          Height = 19
          Caption = 'Devoluci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 11
          Top = 52
          DataBinding.DataField = 'EFECTIVO'
          DataBinding.DataSource = dsmasterFACT
          ParentFont = False
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2010Blue'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
          TabOrder = 0
          Width = 172
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 11
          Top = 116
          DataBinding.DataField = 'DEVOLUCION'
          DataBinding.DataSource = dsmasterFACT
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2010Blue'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
          TabOrder = 1
          Width = 172
        end
        object cxButton4: TcxButton
          Left = 56
          Top = 179
          Width = 129
          Height = 36
          Caption = 'Pagar'
          Enabled = False
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsImage.ImageIndex = 295
          TabOrder = 2
          OnClick = cxButton4Click
        end
      end
      object page2: TcxTabSheet
        Caption = 'Pago Tarjetas'
        Enabled = False
        ImageIndex = 2
      end
      object page3: TcxTabSheet
        Caption = 'Pago CHks'
        Enabled = False
        ImageIndex = 3
      end
    end
    object opradio: TcxRadioGroup
      Left = 4
      Top = 21
      Caption = 'Forma de Pago'
      ParentFont = False
      Properties.Items = <
        item
          Caption = 'Efectivo'
        end
        item
          Caption = 'T. Cr'#233'dito'
        end
        item
          Caption = 'T. Debito'
        end
        item
          Caption = 'CHK'
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Height = 230
      Width = 119
    end
  end
  object total: TcxDBCurrencyEdit
    Left = 789
    Top = 754
    DataBinding.DataField = 'MONTO'
    DataBinding.DataSource = dsmasterFACT
    ParentFont = False
    Properties.ReadOnly = True
    Style.Color = clBlack
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clYellow
    Style.Font.Height = -24
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Blueprint'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.SkinName = 'Blueprint'
    StyleHot.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.SkinName = 'Blueprint'
    TabOrder = 11
    Visible = False
    Width = 165
  end
  object BuscarArticulos: TcxGroupBox
    Left = 158
    Top = 797
    Caption = 'Buscar Articulos'
    TabOrder = 12
    Visible = False
    Height = 296
    Width = 617
    object cxGrid6: TcxGrid
      Left = 3
      Top = 15
      Width = 611
      Height = 281
      Align = alTop
      TabOrder = 0
      LookAndFeel.SkinName = 'Sharp'
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
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
          MinWidth = 50
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 50
        end
        object cxGrid2DBTableView1ARTICULO: TcxGridDBColumn
          Caption = 'Articulo'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 193
        end
        object cxGrid2DBTableView1MODELO: TcxGridDBColumn
          Caption = 'Modelo'
          DataBinding.FieldName = 'MODELO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 182
        end
        object cxGrid2DBTableView1MARCA: TcxGridDBColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'MARCA'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Focusing = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 119
        end
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Existencia'
          DataBinding.FieldName = 'EXISTENCIA'
          HeaderAlignmentHorz = taCenter
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
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 2
    Top = 485
    Caption = 'Opciones'
    ParentBackground = False
    ParentColor = False
    Style.Color = clBtnFace
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 9
    Height = 157
    Width = 416
    object B4: TcxButton
      Left = 317
      Top = 20
      Width = 79
      Height = 68
      Caption = 'Enviar a Hold'
      Enabled = False
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 453
      OptionsImage.Images = RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      WordWrap = True
      OnClick = B4Click
    end
    object B1: TcxButton
      Left = 3
      Top = 18
      Width = 79
      Height = 69
      Caption = '&Venta Mostrador  '
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 464
      OptionsImage.Images = RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      WordWrap = True
      OnClick = B1Click
    end
    object B3: TcxButton
      Left = 156
      Top = 18
      Width = 84
      Height = 69
      Caption = 'Ticket[F4]'
      Enabled = False
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.Glyph.Data = {
        F61E0000424DF61E000000000000360000002800000030000000290000000100
        200000000000C01E000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000060B0B0B7A0B0B0B9200000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000404043F090909860E0F0FE3222223FF0E0E0FFF000000CE020202360000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000040404470F0E
        0ECD131212FF121212FF131212FF232322FF111010FF000000FF030303FF0505
        0582000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000101010F06060675101010DD171515FF1613
        13FF141213FF161414FF181615FF282522FF13100EFF000000FF030303FF0202
        02FF060606CD0101012700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000101011808080880151515F9191A18FF171615FF131111FF1210
        10FF161413FF1A1817FF171515FF292724FF161311FF000000FF030303FF0303
        03FF020202FF040404FF03030369000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01200C0C0CB8171515FF1B1918FF1B1A17FF171611FF14110FFF131010FF1513
        13FF181615FF191716FF171515FF2C2926FF181613FF000000FF040404FF0303
        03FF030303FF030303FF020202FF060606E30202022100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000504043E0E0D0CA91616
        17FF1A1B1CFF1A1819FF181515FF171615FF151411FF151311FF161414FF1917
        16FF1A1817FF1B1918FF1B1918FF2C2928FF171414FF000000FF040504FF0505
        05FF050505FF040404FF030303FF030303FF050505FF05050574000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000606064E151616E01E1D1CFF211E1CFF1C1C
        1BFF181818FF1A1818FF1B1919FF1B191AFF1A1718FF191716FF1A1817FF1C1A
        18FF1C1A19FF1E1C1CFF1C1A19FF25221FFF141110FF010000FF030404FF0505
        05FF050505FF050505FF040404FF040404FF030303FF030303FF070707D40101
        010E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020E0C0B7F1F1D1CEC201E1EFF21201EFF211F1EFF201E1DFF1D1C
        1AFF1D1B1AFF1F1D1DFF232120FF211F1EFF1C1A1AFF1E1C1BFF1E1C1BFF201E
        1EFF222021FF1E1D1CFF1E1E1AFF57554FFF2C2926FF000000FF040505FF0404
        04FF050505FF050505FF050505FF050505FF040404FF030303FF030303FF0606
        06FF050505770000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000100
        005E23211FFC2B2924FF242320FF1C1A19FF201D1CFF242221FF211F1EFF2220
        1FFF252221FF262423FF282625FF242221FF221F1EFF252322FF262423FF2725
        24FF282626FF262422FF34322EFF84837EFF474642FF000000FF060606FF0505
        05FF060606FF060606FF060606FF060606FF050505FF050505FF060606FF0303
        03FF050505FF080808AE0101010C000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000030302F990B0A
        05FF272622FF252420FF22221CFF22211DFF262424FF272525FF282625FF2A28
        27FF2D2B2AFF2C2A29FF2B2928FF2D2B2AFF302E2DFF292726FF2E2C2DFF3634
        33FF3F3C37FF4A4541FF55524EFF363733FF272926FF040504FF060606FF0707
        07FF060606FF060606FF060606FF060606FF060606FF060606FF050505FF0404
        04FF030303FF040404FF090909FF060606710000000000000000000000000000
        00000000000000000000000000000000000000000000000000003A3A38C81312
        0DFF2D2C28FF2F2E2AFF2D2C28FF2F2E2AFF32312DFF32302EFF322F2FFF3432
        31FF373534FF353331FF2F2F2DFF282928FF2D2C2AFF32302CFF2C2B28FF4F4E
        4BFF56534EFF58544FFF706E67FF2C2D2BFF080909FF141414FF070707FF0A0A
        0AFF090909FF070707FF070707FF060606FF060606FF060606FF060606FF0505
        05FF040404FF040404FF030303FF050505FF080808BF02020220000000000000
        0000000000000000000000000000000000000000000000000000494847C82B29
        25FF3E3D39FF3E3D39FF3E3D39FF3F3E3AFF3F3F3AFF3E3D3AFF413E3DFF3E3B
        3AFF312F2EFF302E2DFF343434FF0C0F12FF292A29FF777671FF4F4F4AFF4C4B
        47FF56534EFF57524DFF64635CFF2F302DFF000000FF171717FF0E0E0EFF0909
        09FF0A0A0AFF090909FF090909FF080808FF060606FF070707FF070707FF0606
        06FF050505FF040404FF040404FF030303FF040404FF090909F80404044B0000
        00000000000000000000000000000000000000000000000000004A4A48CA3231
        2CFF464541FF474642FF484742FF4D4C48FF4C4A49FF44413FFF383936FF3236
        34FF515251FF686968FF686B6DFF898F95FF62676AFF0E100EFF201F1EFF4341
        3DFF4B4943FF44433EFF44423DFF282726FF000000FF0A0A0AFF151515FF0E0E
        0EFF0B0B0BFF0B0B0BFF0C0C0CFF0B0B0BFF090909FF080808FF080808FF0606
        06FF060606FF060606FF060606FF060606FF040404FF030303FF070707FF0909
        09AD000000000000000000000000000000000101010101010101474746CF3232
        2EFF474743FF474744FF4C4D48FF4E4E4BFF4B4948FF444444FF474B4AFF5B5F
        59FF6E6F66FF747268FF5B5C56FF5E6263FF3A3E40FF020404FF0C0C0AFF2F2D
        29FF3B3B37FF32322FFF302F2EFF2A2A29FF0B0B0BFF010101FF0E0E0EFF1616
        16FF0E0E0EFF0D0D0DFF0D0D0DFF0C0C0CFF0C0C0CFF0B0B0BFF0B0A0AFF0909
        09FF080808FF070707FF070707FF060606FF050505FF040404FF030303FF0000
        00FF060606B4000000000000000000000000020202050909090D4A4A49D13739
        36FF494A48FF4E4F4EFF484847FF161715FF242523FF5F605EFF5F5E55FF5E5A
        4DFF403D32FF26241BFF191611FF0B0808FF0D0C0DFF242423FF272623FF2828
        24FF292C2AFF272928FF252625FF272827FF1E1D1EFF050505FF020202FF1616
        16FF171717FF0E0E0EFF101010FF0F0F10FF0E0F0FFF0F0D0DFF110C0DFF0E0C
        0CFF0B0C0CFF0A0A0AFF080808FF080808FF070707FF050505FF040505FF0000
        00FF000000FF3F3F3F89000000000000000000000000090909104B4C4BCA3537
        35FF4A4C49FF4E514DFF3D403DFF060907FF090A09FF1A1B1AFF292823FF2724
        1FFF151212FF121011FF1E1A1AFF282222FF2D2A28FF32322EFF3D3A36FF4341
        3CFF2B2A27FF202020FF242324FF212121FF202020FF151515FF050505FF0606
        06FF181818FF191919FF131311FF131412FF131413FF131212FF131111FF1110
        10FF0F0F0FFF0D0D0DFF0C0C0CFF0B0B0BFF090909FF080808FF080707FF0906
        07FF030303FF000000FF070707C01A1A1A220000000000000000414241BD2529
        27FF424642FF444943FF3D443EFF161A17FF0C0D0DFF0F0E0EFF161414FF1615
        15FF212020FF282627FF302D2BFF3A3632FF413F39FF44463EFF4A4741FF534E
        4AFF43403CFF211F1DFF1E1D1FFF1E1D1FFF1C1D1CFF1D1D1DFF121212FF0000
        00FF090909FF212021FF1B1D19FF171915FF181818FF171718FF151616FF1515
        15FF151515FF131313FF111111FF111111FF0E0F0FFF0D0D0DFF0D0B0BFF0D08
        09FF090808FF040505FF000000FF202020FF1D1D1DC50A0A0A402C2D2C7A1B1F
        1CFF3E423DFF40453FFF424641FF1D1F1BFF101110FF1C1A1AFF262322FF2522
        21FF33302DFF403C39FF44413DFF45433DFF46443EFF484640FF46453FFF4341
        3CFF46443FFF32302EFF1B1B1BFF1D1D1DFF1D1D1DFF1A1B1BFF181818FF0D0D
        0CFF050605FF0C0D0CFF252624FF202020FF1E1D1EFF1D1D1DFF1D1D1DFF1C1C
        1CFF1B1B1BFF1A1A1AFF1A1A1AFF181818FF181818FF171717FF151515FF1514
        14FF121111FF0F0E0EFF0D0C0CFF020202FF000000FF121212E10A0A0A0E393C
        3AE6252925FF383C37FF40403DFF242522FF101110FF211E1FFF2A2424FF342C
        2AFF48413CFF4A4640FF46433DFF43403AFF403D38FF3E3A36FF383832FF3334
        2EFF32302CFF31302DFF242522FF1C1D1BFF1F1F1FFF0C0B0CFF000000FF2829
        27FF444542FF000000FF151515FF282828FF212221FF222222FF222222FF2121
        21FF212121FF212121FF212121FF212121FF212121FF222222FF212121FF2021
        21FF232121FF211E1EFF1E1B1BFF1C1A1AFF090909FF1D1E1EEA000000003737
        3767050505FF30322FFF373836FF2D2E2DFF111010FF1F1F1EFF322D2DFF4A3F
        3DFF4F4743FF48423CFF413F3AFF413A38FF3B3531FF33302BFF2F2E28FF2B2B
        25FF292927FF252624FF252724FF1E1F1EFF121111FF3A3737FF6D6A66FFB1B1
        ABFF8F8E89FF1C1B17FF000000FF1F1F1FFF292A28FF252624FF262626FF2626
        26FF262627FF272727FF272727FF262626FF262626FF282828FF282828FF2828
        28FF2A292AFF2A2A2AFF2A292AFF2A2A28FF1E1F1CFF2E2F2DE8000000000000
        00002E2E2DCD0D0E0CFF2E302DFF323332FF191717FF1A1918FF3F3B3AFF4941
        3FFF443E3BFF413D37FF3B3934FF383331FF35302DFF302E28FF2D2C26FF2829
        23FF252624FF212221FF1F201EFF1D1E1DFF000001FF696867FFE8E6E0FFC2C1
        BBFFACADA6FF6B6B66FF0C0C0BFF020203FF2B2B2AFF2A2A29FF282828FF292A
        29FF2A2A29FF2A2A2AFF2A2A2AFF292929FF292929FF292929FF2A2B2AFF2C2D
        2CFF2B2C2BFF2B2B2BFF2B2B2BFF2A2A29FF1F201DFF2F302FE8000000000000
        000026262534121310FF161715FF2B2C2AFF272526FF141212FF2F2C2BFF3D3A
        37FF383531FF37332FFF34312DFF322F2BFF312D29FF2F2B27FF2B2924FF2827
        22FF242423FF202120FF1E1F1DFF1A1C19FF111212FF030303FF747471FFBAB8
        B2FFAFB1A8FFA8ABA6FF515351FF040504FF101010FF2D2C2DFF2B2B2CFF2C2C
        2CFF2C2E2AFF2B2C29FF2B2D2BFF2D2E2CFF2C2D2BFF2C2D2BFF2C2D2AFF2D2F
        2CFF2E2F2DFF2B2D2AFF2A2C29FF292A28FF1D1D1EFF2E2E2EE9000000000000
        0000000000003C3C3B7D000000FF1E1E1EFF2A2929FF1F1E1DFF22201FFF3231
        2FFF2F2D2BFF2F2D29FF2D2B27FF2C2A26FF2C2A26FF2C2A26FF292824FF2625
        22FF242521FF242421FF272524FF272522FF41413DFF222322FF0D0D0DFF9F9F
        9BFFB3B5ABFFB0B3ACFFB5B6B4FF2C2D2BFF000000FF1F1F1FFF343534FF2C2D
        2BFF2A2B28FF2A2B28FF2B2C2AFF262725FF2B2C2AFF2F312EFF2F2F2EFF2F2E
        2DFF2F2F2DFF2E2D2BFF2C2B2BFF292828FF1C1D1BFF2D2E2DEA000000000000
        00000000000000000000333233A4010101FF202222FF262625FF272523FF2A27
        28FF2B2928FF2A2A25FF272722FF272623FF272723FF292924FF2C2B26FF2B2B
        26FF262722FF21211DFF1F1A1AFF120F0CFF272722FF4B4C49FF121312FF2E2F
        2EFFB5B8B0FFC3C5BEFF9B9C99FF2C2C2CFF000000FF040403FF242523FF3031
        2FFF3B3C3BFF3F413FFF363835FF414240FF373937FF272A28FF313230FF332F
        2FFF302E2CFF2F2C2CFF2D2A2BFF292727FF1B1D19FF2C2E2BED000000000000
        0000000000000000000002020202252525D8000000FF262525FF262323FF2725
        24FF2A2826FF252322FF23221FFF292824FF2C2B26FF2E2C27FF25241FFF1111
        0CFF10110DFF1E201EFF1B1B1AFF2D2A2AFF2D2B2BFF1A1C19FF141614FF0507
        05FF393A37FF444543FF0E0E0EFF131314FF141414FF000000FF1C1D1BFF4547
        44FF383937FF292928FF252624FF333130FF4C4A49FF414240FF2E2C2BFF322F
        2EFF312F2EFF2F2D2CFF2D2A29FF282726FF191A19FF2D2E2EEC000000000000
        0000000000000000000000000000080808092D2D2DD7030203FF242022FF2321
        20FF242221FF322F30FF3B3938FF24231EFF191815FF110F0FFF191716FF3130
        2FFF3A3B3AFF303230FF222323FF282727FF161414FF080807FF0E0E0DFF1B1C
        19FF0A0A09FF000001FF151515FF181819FF1C1C1BFF292B28FF2C2C2AFF3030
        2EFF1F211EFF1A1A1AFF181618FF0C0908FF181413FF2D2A29FF3A3737FF302E
        2DFF2E2C2BFF2E2C2BFF2D2A29FF282726FF1A1A1AFF282A2ADB000000000000
        00000000000000000000000000000000000022222235000000FF0C0C0CFF2222
        22FF202020FF252322FF2F2C2BFF1E1C1AFF020101FF0B0A0CFF343534FF3334
        33FF1E1F1DFF0D0D0CFF0E0F0FFF0D0F0DFF141413FF161313FF1C1817FF2625
        21FF2E2D29FF23221EFF1C1C1AFF1C1D1BFF1D1F1DFF363634FF2E2A29FF2625
        24FF2E302DFF2D2D2DFF272727FF141414FF0B0A0AFF0B0908FF272524FF403E
        3DFF2D2B2AFF2A2727FF2C2A29FF2A2726FF131313FF272A2ACB000000000000
        0000000000000000000000000000000000000000000020202032181817FF0909
        09FF222222FF161515FF020202FF0D0C0CFF090909FF090A09FF0B0C0AFF0304
        02FF111210FF181917FF191916FF1D1D1BFF232422FF2E2E28FF3D3C36FF3E3F
        3AFF444440FF373732FF1F201DFF212220FF1B1C1AFF21201FFF373433FF2928
        27FF272927FF30302FFF2D2E2DFF2D2D2DFF1B1B1AFF100E0DFF110F0EFF312F
        2EFF4B4B49FF323130FF252322FF242222FF000202FF3F404083000000000000
        00000000000000000000000000000000000000000000000000002B2B2B5E0000
        00FF121111FF232424FF161818FF000000FF070706FF131411FF121311FF1919
        18FF222322FF282825FF302D27FF35342FFF383935FF383A36FF353733FF3030
        2FFF282928FF232322FF242523FF232422FF232422FF1B1B19FF242523FF3334
        32FF282927FF2B2D2AFF30312FFF2E302EFF30312FFF201E1DFF181615FF120F
        11FF2C2E2CFF3A3D3AFF383634FF282625FF373838D605050507000000000000
        0000000000000000000000000000000000000000000000000000000000003030
        3069000000FF121212FF252525FF10100FFF060605FF161715FF21221FFF2B2D
        29FF333430FF373733FF383633FF32322FFF2A2B28FF242624FF212222FF2121
        22FF1F1F1FFF1F1F1FFF222221FF21221FFF242523FF252625FF1C1E1BFF2A2B
        29FF343534FF252523FF2C2B2AFF323130FF2F2E2DFF333130FF2A2828FF1F1D
        1DFF161615FF1F1E1DFF353232FF222020FF3839397100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000037373780000000FF020202FF1C1E1BFF161715FF1D1E1CFF2E2F2BFF3031
        2BFF2A2C26FF282A26FF272927FF232423FF222321FF252624FF242523FF2324
        22FF252623FF242623FF252624FF272826FF252524FF262726FF292B28FF2122
        20FF292A28FF333230FF282423FF2C2928FF343231FF32302FFF333130FF3230
        2FFF2C2A29FF312F2EFF201D1DFF050405FF2C2D2D5B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001D1D1D4F252625DD0E0F0DFF20211FFF20211FFF20211FFF2526
        23FF262724FF232421FF242523FF262725FF242523FF262725FF282927FF2728
        26FF272826FF292A28FF272826FF272826FF2B2A27FF2A2825FF2A2A29FF2B2B
        2AFF252624FF2D2C2BFF302D2CFF262423FF2D2B2AFF32302FFF302E2DFF312F
        2EFF312F2EFF353332FF1E1B1AFF151413FF2B2C2C4800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001010102262725D8070705FF10110FFF0B0C0AFF1A1A
        1AFF242525FF272726FF262724FF282927FF2A2B29FF282927FF292A28FF292A
        28FF272826FF282A28FF292A2AFF292928FF2C2A25FF2F2C27FF2E2B2AFF302D
        2CFF312E2DFF2D2B2AFF2E2C2BFF2B2928FF242221FF262423FF2B2928FF2F2D
        2CFF302E2DFF232120FF0E0B0AFF2E2D2DE30202020300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000707070D2C2D2CC7060704FF0E0E0EFF0F0F
        10FF1F1E1FFF272727FF292A26FF272824FF2B2C2AFF2B2D2BFF292A28FF2D2A
        2BFF2C2C2AFF292C29FF2B2B2AFF2E2C2BFF2F2E2AFF302F2BFF31312DFF3736
        32FF3A3935FF393934FF363532FF343231FF282626FF211E1FFF262423FF2422
        21FF23201DFF1F1C1AFF0E0D0DFF3D3D3D6D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000005050508323232DC070707FF0C0D
        0CFF141414FF232423FF2A2B29FF2B2C2AFF2A2B29FF2C2D2BFF2E2E2CFF2E2C
        2AFF2F2E2CFF2E2F2DFF302E2EFF33302FFF353430FF3A3A35FF3C3B37FF3E3C
        38FF464540FF4C4B46FF494843FF494745FF444240FF2F2D2BFF1B1918FF1413
        12FF1A1817FF131211FF434343BD000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000424242AD0000
        00FF080907FF181917FF262826FF2F2F2EFF312F2FFF302E2EFF32302FFF3232
        2CFF343230FF363434FF353434FF3A3838FF3F3E3AFF413F3BFF4A4743FF514D
        49FF504D46FF58534FFF64605DFF5F5E59FF605F5AFF676661FF62625FFF4749
        48FD333433DF2221217903030305000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003434
        34961B1D1BFF0B0B09FF232120FF2F2D2BFF383633FF373533FF373734FF3D3C
        37FF3F3D3AFF403E3DFF454240FF464440FF4B4A46FF52504CFF56524EFF5C59
        54FF6D6A64FF716F6AFF73726FE3646462AE595A58904646446C1D1D1C270A0A
        0A0D000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003838375F2E2D2CFF181313FF262320FF35352FFF42403CFF44423EFF4242
        3CFF494A44FF484843FF4F4F4AFF5C5C58FF605F5CFF73726FFF787676E35958
        57953C3B3A6C1516152000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001010101B3B3A3BAC373736FF2F2F2CFF413E3AFF514E49FF595A
        55FF666863FD6E6F6CDF4D4E4D904041406E3131304D1414141E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001414142945464693535350BF565551C34848
        4775090909100000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 113
      OptionsImage.Images = RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      WordWrap = True
      OnClick = B3Click
    end
    object B6: TcxButton
      Left = 131
      Top = 39
      Width = 29
      Height = 22
      Caption = 'Aplicar Descuentos'
      Enabled = False
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 698
      OptionsImage.Images = RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      Visible = False
      OnClick = B6Click
    end
    object b2: TcxButton
      Left = 237
      Top = 19
      Width = 81
      Height = 69
      Caption = 'Cancelar Pedido'
      Enabled = False
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 715
      OptionsImage.Images = RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      WordWrap = True
      OnClick = B2Click
    end
    object cerrar: TcxButton
      Left = 82
      Top = 83
      Width = 75
      Height = 68
      Caption = '&Cerrar'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 429
      OptionsImage.Images = RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
      OnClick = cerrarClick
    end
    object c10: TcxButton
      Left = 81
      Top = 18
      Width = 76
      Height = 69
      Caption = '&Venta Clientes'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.ImageIndex = 464
      OptionsImage.Images = RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      WordWrap = True
      OnClick = c10Click
    end
    object BT_gustos: TcxButton
      Left = 156
      Top = 85
      Width = 82
      Height = 66
      Caption = 'Gustos'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Silver'
      OptionsImage.ImageIndex = 686
      OptionsImage.Images = RibbonImages32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 7
      WordWrap = True
      OnClick = BT_gustosClick
    end
    object cxButton22: TcxButton
      Left = 238
      Top = 87
      Width = 78
      Height = 64
      Caption = 'Abrir Cajon'
      OptionsImage.Glyph.Data = {
        361A0000424D361A0000000000003600000028000000400000001A0000000100
        200000000000001A000000000000000000000000000000000000000000000000
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
        000000000000000000000000000000000000000000002020202A121212330808
        080E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003F3F3F931C1C1CFA4242
        42D53A3A3AB93B3B3B913131317B222222511B1B1B3C09090914030303060000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000029292942393939DE222222FF2626
        26FF252525FF212121FF2A2A2AFF2E2E2EFF383838FF343434F7424242E93636
        36C23B3B3BAE333333843030306522222242161616250707070B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000141414351B1B1BB1181818FF414141FF303030FF3535
        35FF363636FF373737FF373737FF3A3A3AFF373737FF363636FF323232FF3333
        33FF333333FF313131FF3A3A3AFF383838FF4B4B4BFF474747EF4E4E4ECE4545
        45B63E3E3E902E2E2E772A2B2B4F191919340E0E0E1600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000030303062F2F2F6F1E1E
        1E7B30303082363636AB070707FF000000FF252525FF4F4F4FFF2B2B2BFF3434
        34FF333333FF353535FF363636FF373737FF383838FF3A3A3AFF3B3B3BFF3C3C
        3CFF3D3D3DFF404040FF414141FF424242FF3F3F3FFF424242FF3E3E3EFF4242
        42FF424141FF4B4B4BFF4B4B4BFF565656FF5B5B5BF85A5959DC5A5959B65655
        559647474773333333581D1D1D3C141414200404040700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000050505073535357B484848E4202020FF0000
        00FF000000FF000000FF000000FF1A1A1AFF5F5F5FFF424242FF2A2A2AFF3232
        32FF323232FF333333FF353535FF373737FF373737FF393939FF3B3B3BFF3C3C
        3CFF3D3D3DFF404040FF424242FF434343FF454545FF4A4949FF4D4B4BFF4E4C
        4CFF504E4EFF545252FF585656FF5A5858FF5B5959FF5C595AFF5C5859FF6662
        63FF625E5FFF454242FF615F5EFF716F6EFF656362E9626060CB4E4C4BAF4C4B
        4B903635356D302F2F4E1C1C1C2D0A0A0A100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000505050B32323277464646E4353535FF454545FF313131FF0000
        00FF000000FF000000FF000000FF1B1B1BFF555555FF434343FF232323FF2424
        24FF2A2A2AFF323232FF333333FF363636FF363636FF383838FF3A3A3AFF3A3A
        3AFF3B3B3BFF3D3D3DFF404040FF424242FF454646FF494848FF4C4A4AFF4F4D
        4DFF504E4EFF535151FF575454FF5C5959FF636060FF636564FF555B5AFFC1C5
        C4FFABB1B0FF3F3F3EFF6C6968FF6C6A69FF6D6B6AFF686665FF6F6D6CFF6664
        63FF696766FF656362FF615F5EFF565453F3585756CF36353551000000000000
        0000000000000000000000000000000000000000000000000000000000000606
        060B3A3A3A783E3E3EE8353535FF363636FF444444FF4F4F4FFF313131FF0000
        00FF000000FF070707FF353535FF515151FF5F5F5FFF353535FF383838FF5252
        52FF3E3E3EFF2C2C2CFF333333FF383838FF3B3B3BFF404040FF414141FF4141
        41FF404040FF3F3F3FFF414141FF444444FF464646FF4B4B4BFF4E4B4BFF4E4C
        4CFF514E4EFF535151FF565454FF5A5858FF636060FF696A6AFF454B4AFFBEC3
        C2FFDAE0DFFF434443FF6C6868FF706E6DFF72706FFF737170FF72706FFF7674
        73FF72706FFF656362FF5D5B5AFF595756FF636160FF4A49497B000000000000
        000000000000000000000000000000000000000000000808080A3E3E3E793B3B
        3BE9363636FF3D3D3DFF444444FF444444FF434343FF4E4E4EFF2E2E2EFF0000
        00FF262626FF545454FF707070FF6B6B6BFF585858FF2A2A2AFF434343FF7575
        75FF5F5F5FFF1C1C1CFF0F0F0FFF121212FF141414FF141414FF181818FF1F1F
        1FFF262626FF2E2E2EFF373737FF414141FF494A4AFF535353FF5A5757FF5C5A
        5AFF5F5D5DFF626060FF605E5EFF605E5EFF646262FF6C6969FF6A6666FF6F6C
        6CFF5D595AFF52504FFF767473FF72706FFF737170FF737170FF777574FF716F
        6EFF6A6867FF6C6A69FF716F6EFF676564FF686665FE4242416E000000000000
        00000000000000000000000000000808080B37373777424242E72F2F2FFF3E3E
        3EFF464646FF444444FF434343FF434343FF424242FF4C4C4CFF282828FF0000
        00FF666666FF757575FF4D4D4DFF272727FF414141FF3A3A3AFF232323FF3030
        30FF333333FF282828FF242424FF212121FF1D1D1DFF1A1A1AFF151515FF1111
        11FF0F0F0FFF101010FF0E0E0EFF0F0F0FFF111111FF161616FF1A1A1AFF2222
        22FF2C2C2CFF373636FF454343FF535151FF605F5FFF6F6C6CFF716E6DFF625F
        5FFF5A5756FF716F6EFF716F6EFF757372FF7D7B7AFF787675FF737170FF716F
        6EFF767473FF767473FF72706FFF6B6968FF6B6968FF44434272000000000000
        0000000000000707070A3E3E3E77434343E9303030FF373737FF454545FF4545
        45FF454545FF434343FF414141FF414141FF404040FF4A4A4AFF262626FF0707
        07FF4B4B4BFF2F2F2FFF202020FF323232FF565656FF373737FF1E1E1EFF2424
        24FF262626FF2E2E2EFF323232FF383838FF3B3B3BFF3F3F3FFF414141FF4242
        42FF3F3F3FFF3A3A3AFF373737FF343434FF2F2F2FFF2A2A2AFF232323FF1E1E
        1EFF1A1A1AFF151414FF171414FF131212FF151414FF1C1A1AFF615F5EFF7371
        70FF737170FF787675FF767473FF757372FF777574FF767473FF797776FF7F7D
        7CFF7B7978FF787675FF777574FF6E6C6BFF6D6B6AFF44434372000000000707
        070B3C3C3C79464646E82B2B2BFF373737FF444444FF434343FF444444FF4343
        43FF434343FF414141FF404040FF404040FF3F3F3FFF494949FF2A2A2AFF0606
        06FF1C1C1CFF313131FF505050FF5E5E5EFF5A5A5AFF2F2F2FFF1E1E1EFF2828
        28FF292929FF2D2D2DFF2D2D2DFF303030FF333333FF343434FF363636FF3939
        39FF3B3B3BFF3E3E3EFF454545FF4A4A4AFF4F4F4FFF555555FF5B5B5BFF6262
        62FF636464FF646363FF626060FF5C5A5AFF555353FF4F4D4CFF6B6968FF706E
        6DFF6D6B6AFF706E6DFF6F6D6CFF747271FF7A7877FF807E7DFF838180FF807E
        7DFF7F7D7CFF7D7B7AFF7A7877FF706E6DFF6E6C6BFF43434275262626354646
        46E82D2D2DFF373737FF444444FF444444FF414141FF424242FF414141FF4141
        41FF414141FF3F3F3FFF3E3E3EFF3E3E3EFF3D3D3DFF474747FF282828FF0000
        00FF2E2E2EFF5C5C5CFF4B4B4BFF474747FF4B4B4BFF232323FF151515FF2020
        20FF242424FF2A2A2AFF2D2D2DFF2E2E2EFF303030FF313131FF353535FF3737
        37FF3A3A3AFF3C3C3CFF3F3F3FFF424242FF464646FF494949FF4E4E4EFF5353
        53FF585858FF5E5D5DFF646262FF6D6B6BFF767474FF7E7C7BFF737170FF6C6A
        69FF6F6D6CFF737170FF797776FF82807FFF858382FF848281FF848281FF8482
        81FF817F7EFF7E7C7BFF7B7978FF737170FF706E6DFF43424276262626593737
        37FF3D3D3DFF424242FF414141FF404040FF3F3F3FFF3F3F3FFF3F3F3FFF3F3F
        3FFF3D3D3DFF3D3D3DFF3C3C3CFF3C3C3CFF3B3B3BFF444444FF262626FF0000
        00FF272727FF464646FF3D3D3DFF3F3F3FFF505050FF393939FF3D3D3DFF3D3D
        3DFF3C3C3CFF393939FF343434FF313131FF2B2B2BFF2B2B2BFF2F2F2FFF3333
        33FF353535FF373737FF3D3D3DFF424242FF464646FF4B4B4BFF505050FF5353
        53FF565757FF5D5D5DFF636262FF686868FF6C6C6DFF737272FF777574FF7775
        74FF7C7A79FF838180FF868483FF838180FF848281FF878584FF878584FF8886
        85FF868483FF82807FFF7D7B7AFF777574FF716F6EFF41403F7D2020204D3E3E
        3EFF373737FF3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B
        3BFF3A3A3AFF3A3A3AFF393939FF393939FF383838FF414141FF242424FF0000
        00FF242424FF414141FF484848FF4E4E4EFF353535FF1D1D1DFF2D2D2DFF3333
        33FF343434FF323232FF323232FF3A3A3AFF454545FF464646FF424242FF4343
        43FF484848FF494949FF4A4A4AFF4C4C4CFF505050FF555555FF595959FF5E5E
        5EFF616161FF676767FF6B6C6CFF6F6F6FFF737374FF797877FF787675FF7876
        75FF7D7B7AFF82807FFF858382FF888685FF898786FF898786FF898786FF8987
        86FF898786FF868483FF817F7EFF797776FF716F6EFF41403F7F2020204F3A3A
        3AFF343434FF383838FF373737FF373737FF373737FF373737FF373737FF3737
        37FF373737FF373737FF373737FF373737FF363636FF414141FF1D1D1DFF0000
        00FF303130FF3A3A3AFF373737FF252525FF070707FF010101FF000000FF0000
        00FF000000FF000000FF0D0D0DFF1A1A1AFF1D1D1DFF121212FF101010FF1717
        17FF1D1D1DFF191919FF232323FF313131FF323232FF343434FF393939FF3F3F
        3FFF494949FF4E4E4EFF555555FF616161FF6B6C6CFF757473FF7F7C7BFF8684
        83FF8F8D8CFF979493FF989594FF9A9897FF9E9C9BFF9D9B99FF959392FF9290
        8FFF8F8D8CFF8C8A89FF868483FF7B7978FF747170FF414040812020204F3535
        35FF2F2F2FFF333333FF343434FF343434FF343434FF343434FF343434FF3434
        34FF343434FF343434FF343434FF343434FF333333FF3A3A3AFF181818FF0000
        00FF000000FF000000FF000000FF000000FF070707FF070707FF070707FF0A0A
        0AFF0A0A0AFF131313FF202020FF1A1A1AFF121212FF101010FF0C0C0CFF0303
        03FF000000FF070707FF111111FF131313FF0C0C0CFF050505FF000000FF0000
        00FF000000FF030303FF131313FF1D1D1DFF171717FF161514FF262423FF302E
        2DFF373535FF41403FFF535151FF636160FF6C6A69FF757372FF81807FFF8785
        84FF817F7EFF777575FF828180FF6F6E6DFF636160FF4B4949982121214E3232
        32FF2B2B2BFF303030FF303030FF313131FF323232FF313131FF323232FF3232
        32FF323232FF333333FF323232FF262626FF1E1F1FFF242324FF3E3B3DFF4340
        42FF2D292CFF212021FF191919FF111111FF090909FF020202FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF020202FF0000
        00FF010101FF0E0E0EFF111111FF0D0D0DFF161616FF191919FF111111FF0909
        09FF141414FF292929FF313131FF2F2F2FFF222222FF090909FF000000FF0000
        00FF050505FF0E0E0EFF111111FF060606FF000000FF000000FF000000FF0A0A
        0AFF2E2E2EFB444443BF2C2C2C7938383880424242871F1F1F3C2121214D3232
        32FF292929FF2D2D2DFF2D2D2DFF2E2E2EFF2E2E2EFF303030FF313131FF2F2F
        2FFF242424FF1A1A1AFF232323FF3A3A3AFF555655FF757475FF939092FF9F9C
        9EFF989497FF939192FF8A8A8AFF818181FF777777FF707070FF676767FF5B5B
        5BFF545454FF494949FF3F3F3FFF353535FF2C2C2CFF222222FF191919FF1414
        14FF0E0E0EFF070707FF030303FF000000FF000000FF000000FF030303FF0000
        00FF050505FF090909FF080808FF0E0E0EFF121212FF111111FF040405FF0D0D
        0DFF1C1C1CFF212121FF1B1B1BFF1B1B1BFF0E0E0EF809090ADC1818189F2424
        245C0D0D0D1A0000000000000000000000000000000000000000212121463030
        30FF262626FF2A2A2AFF2B2B2BFF2E2E2EFF2C2C2CFF202020FF171717FF2020
        20FF3A3A3AFF5A5A5AFF7A7A7AFF969696FFA4A5A4FFA5A5A5FF9D9A9CFF9B98
        9AFF9F9C9EFF9D9B9CFF9B9B9BFF999999FF969696FF969696FF959595FF9494
        94FF919191FF8E8E8EFF8B8B8BFF858585FF7E7E7EFF7A7A7AFF747474FF6E6E
        6EFF686868FF5F5F5FFF5A5A5AFF535353FF4A4A4AFF434343FF3C3C3CFF3535
        35FF2E2E2EFF252525FF1C1C1CFF151515FF101010FF0D0D0DFF0E0E0EFF0A0A
        0AFF040404FF040404FF020202FF000000FF424242D500000000000000000000
        0000000000000000000000000000000000000000000000000000222222402F2F
        2FFF232323FF252525FF1A1A1AFF121212FF1D1D1DFF393939FF5B5B5BFF7D7D
        7DFF9A9A9AFFADADADFFA9A9A9FF9D9D9DFF9A9A9AFF9C9B9BFF9F9D9FFF9D9A
        9CFF9C999BFF9A9899FF959695FF949394FF929292FF8F8F8FFF8D8D8DFF8B8B
        8BFF888888FF868686FF848484FF828282FF818181FF838383FF828282FF7D7D
        7DFF7D7D7DFF7B7B7BFF767676FF737373FF707070FF6D6D6DFF696969FF6565
        65FF626262FF5E5E5EFF5A5A5AFF545454FF4E4E4EFF4A4A4AFF454545FF3939
        39FF2F2F2FFF353535FF383838FF353535D93C3C3C9400000000000000000000
        0000000000000000000000000000000000000000000000000000262626422424
        24FF020202FF171717FF373638FF5F5E60FF858486FFA6A5A7FFB7B6B8FFB6B5
        B7FFACABADFFA7A6A8FFAAA9ABFFA9A8AAFFAAA9ABFFA7A6A8FFA2A1A3FF9E9D
        9FFF9C9B9DFF9B9A9CFF989799FF979698FF969597FF939394FF919191FF9090
        90FF8F8F8FFF8E8E8EFF8D8D8DFF8E8E8EFF8E8E8EFF8A8A8AFF878787FF8585
        85FF7F7F7FFF797979FF737373FF6F6F6FFF6C6C6CFF676767FF626262FF5C5C
        5CFF565656FF4F4F4FFF4C4C4CFF4B4B4BFF4D4D4DFF505050F7444444D24444
        44AB3E3E3E78252525490F0F0F1F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000202020373838
        38E45A5B5AF38D8D8DFBAFAEB0FCC1BFC2FBBCBBBDFFAEACAFFFB0AFB1FFB3B2
        B4FFB7B6B8FFB5B4B6FFACABADFFACABADFFAEADAFFFABAAACFFA1A1A3FFA09F
        A1FFA1A0A2FFA2A1A3FFA1A0A2FFA09FA1FF9D9C9EFF9D9D9EFF9C9C9CFF9D9D
        9DFF9A9A9AFF989898FF979797FF939393FF8E8E8EFF8B8B8BFF878787FF8585
        85FF7F7F7FFF797979FF727272FF696969FF626262FF626262FF5E5E5EFF5D5D
        5DFF595959E9505050C33E3E3E943434346B2424243E08080814000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101020202
        02030F0F0F101515151A1414141B11111119191919213C3B3C493B3B3C4E3B3B
        3B4F39393A513C3C3C536160617E656566886464658E605F6089808081AF8C8B
        8DC189898AC689888AC9868587C98B8B8CD1A3A2A4F5A4A3A4FBA6A6A6FDA1A1
        A1FB9A9A9AFF979797FF979797FF959595FF8B8B8BFF7F7F7FFF7F7F7FFF7777
        77FF797979FF797979FF787878F9696969D2585858A93B3B3B812B2B2B581919
        192E040404070000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000F0F0F12131313191414141D1111
        111A292929363A3A3A4E39393956343434553F3F3F625E5E5E865A5A5A925C5C
        5C9641414169222222390F0F0F17000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 123
      OptionsImage.Images = inicio.Toolbar32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 8
      WordWrap = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 848
    Top = 832
    Caption = 'cxGroupBox2'
    TabOrder = 13
    Height = 285
    Width = 405
    object Label32: TLabel
      Left = 22
      Top = 237
      Width = 143
      Height = 16
      Caption = 'Entre Nombre del Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid4: TcxGrid
      Left = 17
      Top = 26
      Width = 368
      Height = 189
      TabOrder = 0
      LookAndFeel.SkinName = 'Office2010Blue'
      object cxGrid4DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = DsHold
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.AutoHeight = False
        object cxGrid4DBTableView1NO_FACT: TcxGridDBColumn
          Caption = '# Fact'
          DataBinding.FieldName = 'NO_FACT'
          HeaderAlignmentHorz = taCenter
          MinWidth = 40
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
          Width = 40
        end
        object cxGrid4DBTableView1FECHA_FAC: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'FECHA_FAC'
          HeaderAlignmentHorz = taCenter
          MinWidth = 50
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
          Width = 50
        end
        object cxGrid4DBTableView1CLIENTENOMBRE: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLIENTENOMBRE'
          HeaderAlignmentHorz = taCenter
          MinWidth = 170
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
          Width = 170
        end
      end
      object cxGrid4Level1: TcxGridLevel
        GridView = cxGrid4DBTableView1
      end
    end
    object cxTextEdit2: TcxTextEdit
      Left = 18
      Top = 254
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Blueprint'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Blueprint'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 1
      Width = 219
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 421
    Top = 0
    Caption = 'Familias'
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    PanelStyle.WordWrap = True
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    Style.Color = 197602
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 14
    Height = 204
    Width = 820
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 3
      Top = 18
      Width = 814
      Height = 176
      Align = alClient
      ColCount = 8
      Color = 10930928
      DataSource = DSCategoria
      PanelBorder = gbNone
      PanelHeight = 88
      PanelWidth = 99
      ParentColor = False
      TabOrder = 0
      RowCount = 2
      object AdvPanel1: TAdvPanel
        Left = 2
        Top = 3
        Width = 95
        Height = 81
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UseDockManager = True
        OnClick = AdvPanel1Click
        Version = '2.1.1.2'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        ColorTo = clBtnFace
        ColorMirror = clBtnFace
        ColorMirrorTo = clBtnFace
        Hover = True
        HoverColor = 48815324
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
        object cxDBLabel6: TcxDBLabel
          Left = 3
          Top = 46
          DataBinding.DataField = 'CAT'
          DataBinding.DataSource = DSCategoria
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -9
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Transparent = True
          Height = 31
          Width = 89
          AnchorY = 62
        end
        object fcDBImager3: TfcDBImager
          Left = 10
          Top = 0
          Width = 71
          Height = 49
          BorderStyle = bsNone
          DataField = 'IMAGEN'
          DataSource = DSCategoria
          AutoSize = False
          BitmapOptions.AlphaBlend.Amount = 0
          BitmapOptions.AlphaBlend.Transparent = False
          BitmapOptions.Color = clNone
          BitmapOptions.Contrast = 0
          BitmapOptions.Embossed = False
          BitmapOptions.TintColor = clNone
          BitmapOptions.GaussianBlur = 0
          BitmapOptions.GrayScale = False
          BitmapOptions.HorizontallyFlipped = False
          BitmapOptions.Inverted = False
          BitmapOptions.Lightness = 0
          BitmapOptions.Rotation.CenterX = -1
          BitmapOptions.Rotation.CenterY = -1
          BitmapOptions.Rotation.Angle = 0
          BitmapOptions.Saturation = -1
          BitmapOptions.Sharpen = -1
          BitmapOptions.Sponge = 0
          BitmapOptions.VerticallyFlipped = False
          BitmapOptions.Wave.XDiv = 0
          BitmapOptions.Wave.YDiv = 0
          BitmapOptions.Wave.Ratio = 0
          BitmapOptions.Wave.Wrap = False
          DrawStyle = dsProportionalCenter
          PreProcess = True
          SmoothStretching = False
          Transparent = True
          TransparentColor = clNone
          OnClick = fcDBImager3Click
          TabOrder = 1
        end
      end
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 421
    Top = 202
    Caption = 'Productos'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 15
    Height = 484
    Width = 820
    object DBCtrlGrid2: TDBCtrlGrid
      Left = 3
      Top = 18
      Width = 814
      Height = 456
      Align = alClient
      ColCount = 5
      Color = clBlack
      DataSource = DsArti
      PanelBorder = gbNone
      PanelHeight = 76
      PanelWidth = 159
      ParentColor = False
      TabOrder = 0
      RowCount = 6
      object cxDBLabel5: TcxDBLabel
        Left = 15
        Top = 33
        Align = alCustom
        DataBinding.DataField = 'OPCION_SABOR'
        DataBinding.DataSource = DsArti
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.WordWrap = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Visible = False
        Height = 29
        Width = 78
        AnchorY = 48
      end
      object cxDBLabel3: TcxDBLabel
        Left = -3
        Top = 17
        Align = alCustom
        DataBinding.DataField = 'OPCIONES_BOLA'
        DataBinding.DataSource = DsArti
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.WordWrap = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Visible = False
        Height = 29
        Width = 78
        AnchorY = 32
      end
      object AdvPanel2: TAdvPanel
        Left = -2
        Top = 4
        Width = 159
        Height = 69
        BevelInner = bvSpace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        OnClick = AdvPanel2Click
        Version = '2.1.1.2'
        Caption.Color = clHighlight
        Caption.ColorTo = clGradientActiveCaption
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.Position = cpRight
        Caption.ShadeLight = 300
        Caption.ShadeGrain = 10
        Caption.ShadeType = stRMetal
        Caption.Shape = csRounded
        ColorTo = clBtnFace
        ColorMirror = clBtnFace
        ColorMirrorTo = clBtnFace
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
        object cxDBLabel2: TcxDBLabel
          Left = 79
          Top = 3
          DataBinding.DataField = 'ARTICULO'
          DataBinding.DataSource = DsArti
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Transparent = True
          Height = 47
          Width = 76
          AnchorY = 27
        end
        object cxDBLabel1: TcxDBLabel
          Left = 80
          Top = 41
          Align = alCustom
          DataBinding.DataField = 'PRECIO_A'
          DataBinding.DataSource = DsArti
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Transparent = True
          Height = 29
          Width = 78
          AnchorY = 56
        end
        object fcDBImager2: TfcDBImager
          Left = 3
          Top = 2
          Width = 75
          Height = 65
          BorderStyle = bsNone
          DataField = 'IMAGEN'
          DataSource = DsArti
          AutoSize = False
          BitmapOptions.AlphaBlend.Amount = 0
          BitmapOptions.AlphaBlend.Transparent = False
          BitmapOptions.Color = clNone
          BitmapOptions.Contrast = -1
          BitmapOptions.Embossed = False
          BitmapOptions.TintColor = clNone
          BitmapOptions.GaussianBlur = 0
          BitmapOptions.GrayScale = False
          BitmapOptions.HorizontallyFlipped = False
          BitmapOptions.Inverted = False
          BitmapOptions.Lightness = 0
          BitmapOptions.Rotation.CenterX = -1
          BitmapOptions.Rotation.CenterY = -1
          BitmapOptions.Rotation.Angle = 0
          BitmapOptions.Saturation = -1
          BitmapOptions.Sharpen = 0
          BitmapOptions.Sponge = 0
          BitmapOptions.VerticallyFlipped = False
          BitmapOptions.Wave.XDiv = 0
          BitmapOptions.Wave.YDiv = 0
          BitmapOptions.Wave.Ratio = 0
          BitmapOptions.Wave.Wrap = False
          DrawStyle = dsProportionalCenter
          PreProcess = True
          SmoothStretching = False
          Transparent = True
          TransparentColor = clNone
          OnClick = fcDBImager2Click
          TabOrder = 2
        end
      end
    end
    object Saborespanel: TDBCtrlGrid
      Left = 3
      Top = 18
      Width = 814
      Height = 456
      Align = alClient
      ColCount = 8
      Color = clBlack
      DataSource = dSgUSTOS
      PanelBorder = gbNone
      PanelHeight = 114
      PanelWidth = 99
      ParentColor = False
      TabOrder = 1
      RowCount = 4
      Visible = False
      object fcPanel1: TfcPanel
        Left = 1
        Top = 3
        Width = 96
        Height = 110
        Frame.Transparent = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        Frame.NonFocusTextOffsetX = 2
        Frame.NonFocusTextOffsetY = 2
        TabOrder = 0
        object cxDBLabel4: TcxDBLabel
          Left = 1
          Top = 87
          Align = alBottom
          DataBinding.DataField = 'ARTICULO'
          DataBinding.DataSource = dSgUSTOS
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -9
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Transparent = True
          Height = 22
          Width = 94
          AnchorY = 98
        end
        object fcDBImager1: TfcDBImager
          Left = 1
          Top = 1
          Width = 94
          Height = 80
          BorderStyle = bsNone
          DataField = 'IMAGEN'
          DataSource = dSgUSTOS
          Align = alTop
          AutoSize = False
          BitmapOptions.AlphaBlend.Amount = 0
          BitmapOptions.AlphaBlend.Transparent = False
          BitmapOptions.Color = clNone
          BitmapOptions.Contrast = 0
          BitmapOptions.Embossed = False
          BitmapOptions.TintColor = clNone
          BitmapOptions.GaussianBlur = 0
          BitmapOptions.GrayScale = False
          BitmapOptions.HorizontallyFlipped = False
          BitmapOptions.Inverted = False
          BitmapOptions.Lightness = 0
          BitmapOptions.Rotation.CenterX = -1
          BitmapOptions.Rotation.CenterY = -1
          BitmapOptions.Rotation.Angle = 0
          BitmapOptions.Saturation = -1
          BitmapOptions.Sharpen = 0
          BitmapOptions.Sponge = 0
          BitmapOptions.VerticallyFlipped = False
          BitmapOptions.Wave.XDiv = 0
          BitmapOptions.Wave.YDiv = 0
          BitmapOptions.Wave.Ratio = 0
          BitmapOptions.Wave.Wrap = False
          DrawStyle = dsProportionalCenter
          PreProcess = True
          SmoothStretching = False
          Transparent = True
          TransparentColor = clNone
          OnClick = fcDBImager1Click
          TabOrder = 1
        end
      end
    end
  end
  object cxImage1: TcxImage
    Left = -3
    Top = 85
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000190
      000000B30806000000A7F04AE0000000017352474200AECE1CE9000000046741
      4D410000B18F0BFC61050000001974455874536F6674776172650041646F6265
      20496D616765526561647971C9653C0000FF9549444154785EEC9D079C5D65B5
      F6BDD7EBB55CBBD4400AE93D218584DE418A08A282A07405444541A417E9A8F4
      0E0112D27B27BDF764924CEFBD643299DEFBACEFFFBC7BEF61739CC984A25EEF
      47F82DCE9953F7D9FB7DD7B3CAB3D6FA82997DE173F9BF770EDADADABE20095F
      DBE0B1F06D57D7BEB5B5F50B0793A6A6A62F489A9B9B9DB4B4B4FC07AFFF0FBE
      2390FFE4B1FFE435BAFD22DF17C87FF19AFFE2B12F85E4BFB92FF9B22F5FE135
      92AF225FE3BDFFE3CBD7B9FD06F24DBEEB5BBE7C9BDBEF20DF450E430E478EE0
      7D4722472147F3F731C8B1BE74E7B63B9F119663F9FB185FBA71DB4DEFF3DFAF
      CFD067E93325872387F11AC9F790EFFAF21D6E25DF96F09A6FF9F24D1DAF7FDC
      3A76C9D7F99D92FF09C9D7B82FF9AAA4B1B1F12B9CBBAF706EBFA273C267FD37
      EF937C49C26FF82F5FBEC8ED7F4A788D247C0D74BFCB7DAED7E85AF33DEDD753
      D7548F45AE13BD46D73D581B1DADB7AED6D6E7CFFFFBEB9D2E17D5E717F9DFF3
      221F2A8074042A5D3DC69AF88F40041621A5F59F3E40FC17B7922FF1590288FF
      46D90814BEC26392AF225FE37DFFC3F392AF23DF40BE1952B852BEDF41BE2B45
      ED2BEC2378DF91C8D152EEBEA297D2EF81F4448E437A237D91FEC800BE631032
      04198A0CE71846202391E391513C2639DE9791DC8EE0BB8623C3247CC6506408
      321819840CD4E7FA9FDF8FD7F745FA20BD91E3905EBEF4E456C71500542438E9
      3704E024600AC049C0E4C009F91E9F2140D439D0B9080049E749E7EBEB3A87C8
      5791AF205F46FE5BA2F38E389046BE8804C0F21170F1AF63BB1ED0B50F404120
      A1FB7A2CAC0782D704CF07AFD1E391AFFD5C7FFC7BEA8F43BD6E9F03C8FF410F
      2CD8C8C1660EFF1D795F4AA013F90F791358A04EE4458480425E443B48703FB0
      8ABF1C0208790BCE53E03BBFC9FB9D87C0DFB2D465B13B0F81DB830202EFEB8D
      F445FA23039041C8106498C080CF1E898C42C6202720E39193915391D3F9FC33
      91B3917391F3910B908B7CB998D7047211F72FF49FFFBEFFDAF378EC5CE46CE4
      2CE44CE40CE434FFF34FF1BFEB24FF7BC7F9C730D63F9ED102298115BFD58193
      400C19E603DA105E371819840C440620FD917E485FA40FC721401430F6E26F81
      5277E4183EB31B7294CE21228F4B4013008C031744D740602DD076DE8B84D7B5
      7B2EFCDD0E2EBABE88BBEE81081CC21E49E06D066B26009BCF41E4FF36507406
      289F03C8FF21004119380BB02B096DFAFF402184C5859A7CF922B7FF450845F2
      25EEFF3740E2C24BB276F90E8595DA418205A6508D1498F3187CC576148FCB53
      50D8A8078FF7F215A23C847E02041E0F3C0429552958295A79056390131A1A1A
      C6232723A7D6D7D79F8E9C5957577736721EF27D1EBF10F901F243E432E4C7C8
      15C8CF90AB916B90EB911B915F223723B7F239BF466EABADAD95FC1AB995CF93
      DC8CFC0AB909B9B1A6A6E606E43AE45AE41AE4E7C8D5C855C895BCEF0AE4A7C8
      8F91CB91CB904B911F2297F09A8B918B900BF9FB02E47CE43CE45CE41C8EE16C
      FD26E40CFFF79DC6ED29C8C9C8499CF3F1C838642C329AEB703C3202198A0CE6
      1CE91C0A6C7A0B6090EE88426F0AB909A015621368B7830BAF6FF75C141A43BE
      AC6BEBCB97B8FD2F5FBE28C381FBFFC939FB4FCEC77F48382EB766FC90A50398
      CF81E47300F91C4CFE8DC1E420A0F19158B86F653A6F027120E18B03095FBEAC
      B83BA238BCE2F35F47BEC1EB956F6807095F41052021C5250B59A11C790CF216
      14F611308C94F29312E4FE78E4243E5B4AF27414D2470081BF2F447E80FC10B9
      ACAAAAEAC795959557545454FCACBCBCFCEAB2B2B26B4A4B4BAF2F2929B911F9
      15720B721BF23BE4F7C89DC89F907B90FB0B0A0A1E421E411E439E409ECACFCF
      7F06F90BF2D7DCDCDC40FEC2FD67F2F2F29E429E441E47F49E47FDF73FCCED83
      C803C87DC8BDC83DBCE74FC85DC89DC81DC81F90DB91DF21BFD9BF7FFF6D4545
      45B722B7203723BF446E426E3C70E0807EC775C8B5C82F909F2357213F43AE40
      7ECAEFD6EFFF11E7E1D2EAEA6A01D24500CFF73937E72267711E4F434E46C621
      6338C7C723C390C188AE81AE85BCB89E48F7C073E1F608E4305EF35DE4DBC8B7
      FC6BECC0C537109CE7C2DF6E5DC8900048DC7AE1B5CE7311C0F8E2725F8104EB
      B133CBF5F3C7FF6F00CEE7A0F1BF1C34BAF226229E6F078B0028FC10858B85F3
      9842172E468E384F02C5F155E47F90AF23DF9022F1158A148BAC5759B1ED20C1
      7D59B9B27615FB572E4021188184720A5260E35034F2184E47CE42646D5F8002
      FC81AF042F47114A31FE0C20B81A257A8D14292285FA2BE416E436E477C8EF51
      B477A284FF545858780F0AFB7E94FE4328E6477272721ECBCECE7E127906F92B
      F21CF222F232F21AF226F2765A5ADABBC84464323215999E9A9A3A039989CC4A
      494971E2FFADC7F5FC34640A321999844C44DE43DE4126206F216F226FF0DED7
      9157915790979017911790E79067333333FF8AFC05791A792A2B2BEB09E471E4
      51E4CFFC0EFD9687900791FB91FB907B90BB91BBF8BD77F2BBFFB06FDFBEDB39
      0FBFE57CFCBAB8B858C07923E7EF5ACEE3D58800F67280E612E442E43CE42CE4
      74CEF9C9C838CEF918C0E778AEC530807B3032806BD397EBE5C085EBE73C17FF
      5A7FC473917789B487C5042E41582CF05CF80CE5BA042C5A675D26F43F0798CF
      01E473F0F927804F1700D2CE749235188045082814F75672554956255B655DB6
      7B12DC0F184B8AA32B9EDE4D8A0469F7245014ED20817250F8640C8A671CD6EF
      C92823791067299CA4108D2C6494D6E5780A57E0295C2D05274587E2BB192578
      1BCAF0766EEF4064B1DF8342BD3F2323E321E411E431E449E419E4AFC873483B
      20F0DA37D3D3D3DF4669BF9B9C9C3C31292969726262E254EECF4066237391F9
      C8226409F201B202C058C57BD620EB900DC8266433B20505BF955B27BC6E0BB2
      19D9846C443620EBF98CB5C81A6435B20A59892C4796E93B78EF526431B20859
      882C40E623739139BC661632D33FCE697CE754640AF23E3209790F7917790779
      1B790B0980E9357EF32B9C87979017380702A4BF003C022201E8C37849F7217F
      42FE80FC16B905B989737D1D72357205E7FB7200E812C0E742C0E73CAECD595C
      A3D3011D5D435DCB3100CAF100FF3085C5FCD0A20B8B05E0A2B51184C5B87F18
      8FB77B2EBEE1212F55DEAABCD6F6843EEF3968429FF5D54EC8F8DC2BF9F70395
      CF41E09F00029F666374E261048C1A8511E45D8871A38DAA8D2B769380421457
      25AE3B04093FA4E13C0944C95BE74920C7234A482B217C32CAE17414CB592818
      79121762CD5E82F2B91C70B8026574B54230DCDE24CF4116328AEA0F282D8575
      EE431E461E93C24319FF1585FA3CB72F21AF02006FC4C7C7BF9D9090F02E3211
      998C4C456620B391B9C87C5E2BC5BC04A5FA01EF59C17B56C5C6C6AE89898959
      171D1DBD91D76C46B622DB919D4814B207894662794F3C9280E85F32920AF0A4
      F9928E6277C2E7A7F992CAADFE2523497C772292E04B3CB771482C128344F3DE
      BDC81E64371285EC427622DB916D7CCF56640BB299EFDE846C40D623EB90B5C8
      6A6415B252BF0F598EE8B72E45F4BB17210B7D709CC36333F9AC698800F43D1E
      17E0BCE67B3FCF72FB34F238F230723FF2278EF30F00D06F011C072E7873D701
      26F2FEAEE03A5E0EA0E89A3ACF0523E02C8C0119062723E3B83F86DBE3311A86
      B10E062303580B7D590BBD796D4FD64777A41B7214E2C26202177FED292FF611
      CF456B14694FE8B3374447162123A0778BC9270980E5731DF5BF58477D7E71FE
      89174760C0C66AE7DAB3D1DA1950C1E311B7011B2688332BA9A904A7129D4A7C
      7E85CDFC3536F7D7D9D8DFC47AFC8EC24EBCE6C8C09BE0FE713CA6508592AD2E
      2781284E2EC5E0C24D880B37052081D2B804E5A0509312C457737B1D0AC68104
      D6AC14D11FB08CA598A4A01EE6F671E46994FDB302089E93E5FC164A4B0A6E32
      32DDB7C4E7712B65B838F01050F2AB903528C375C846295A5FE96EE776279F17
      85EC41A29158249ECF4E409210297A297EDDC9E418B2783E07C9E5B97CA400D9
      87142245C8018E49528C9460CD97006E6129E6EF03BE14712BD98F14FAB28FDB
      025FF2B9CDE33324B9488E2FD9DC6621FA97C131A5236988FEA520C9BE2471CC
      894802128FC421B1480C128DEC45F6F01DBB915D7CD64E8E793BB285DF210F69
      1D22F011E02C411620029819BE77F61EE74F1E4D3BB870CE9F461EE7F98791FB
      79FE4F7CAE7236BFE5BAEADADEC4FDEB90ABB97F05207339D7FC12E4420C85F3
      001BE7B90034ED61310C8AE3592FC3583F2EA1CFDA124142CCB19E483BB80439
      17DFA09161A37C5A002E5F53582C042C010559A0E2C084E7945F71F5296282B1
      66BFC077764818F93406DBE7EFFD785ED0E700F22F06106D08091BCC81059BC4
      D555481492F2AD3359692E671178187E5C5A969EE8B00A3F1DCBEB45F5D40656
      AD82030AFE167BE72436DB69020936DE79622E29DC244F4256287235CAE23A3C
      0859A7B7E045384F0225A2DC8312D1F2241E571C1F85F42C0AFF25BC80D7F002
      DE8E8B8B7B0FAF603222CF610EB200C5B40491625BED03C3261F147670BB0BD9
      8D44230E1090042409494139A621FA9789A03BB372905C440A5BCA7B1F005688
      14210738A6621F084A79AE8CC7CAC91D5420954815DE90A49ADF5083D44AF86D
      7507113D2FA9094935F7255521A9E47E259F57E14B39B792B2909462F197F852
      CCED0109E7B208D98F14728C927D48812FF9DCE6F992CBEFC941B27522F897C1
      6F4D0344749E04A002D3181F607771BBCD0FC1AD17B80054CBB95D8228AC3687
      6B370311A00BD8DF465ED3B5E456C0FFB40C01EE3B7091E7C2673B7051588C73
      7813BFEB3AD683D68AD68C0317BCCF0B0196F3088739CF45EC3125F465A028E4
      190E8BF96BB31D5CF83BC8B9680D7F8FF7C800FAA6F271BC579EB468E1A2883B
      0FC50FD3067BA4BD4625C24BFF5CA7FD1375DAE727FB9F78B2233C1007186C30
      89A8B35F64E3380F838DA37094DC7C252B459555D5B2C201ED80C1DF2A4C132D
      B61F22CF4235110A3D9DC4FBCF40CE452EE2332FC5D3F8091BFC2AE524909BD8
      F42EDC84525068E34FC8FD288B8791C7A548E449A04C5E425E4391BD8DFE7A0F
      C5A524B414D01C14FF0214CF124063397FAF46D6F35AE516A4C076F1397BA4D8
      A4E0785F129282A4FB56B92C7459ECB2DC0B5050FBA4487DA52A052B452BA52B
      E55B8694739C1548A50F060E1090764040B1D521F528F47A145C8384DFD72841
      C93549F8CD926609D6744B203CD71221CDFC1D887B6F07A2CF0D4B037F87A59E
      BF03A9E3BEA416C51B480DF725D51CA3A42A2495DC975448F8FD159C9B72A48C
      6B51CAB590C7242F693FE74F609A8F0868B2900C2495E792907824866BBB07D1
      35D98628BFD30E2E7E6870018FCDE1B919DC3A7001401CB8680DC860F0BDCBC7
      B546B456F8DE3FF1D97F407ECB7B6EE1F19B78EC3ABEDBE55C38EECB39BF9710
      1A53C853F93191294E672D9ECC9A1C873870E16F854CE5B9F4E77E1FF6414FE4
      18F6C2910A85F961B06FF846938C27ED8BF6C2C8C033890490E0EFCFBD898FE7
      4D7C92F3F53980FCF3002470C39D77C10611587C918D256AA42892A2CE3ADAAC
      EFDA8B2EAB823B316254B52C968C2A9DFBB1D9148B1EC9FBC622623CA98E40D4
      CE4B0839FD44B50A781837B0796F0538C466FA238AE85E255D1131809E4611B8
      7013F21AA2E4B45846621D8989340791D5BA04A5B51C59CDFBD6F3BE4D288A6D
      C82E5F31C5F05C3CCA2D0949E53B32902C94482EA27FFB50ECFB9103480952EA
      5BE9B2DA65BD0716BDACFB1A147FAD2F75DC0A0C040A0DBE34722B6992F09CA4
      1965D58C226E91F840D00A48384189B5F29813FE6E0B84C7DB02E17D6D5D482B
      CF7F1C71C712714C3AB67660E2B9A640FCDF11FC9E46FE0E8BFBED9C27493DE7
      B39EF35BC7B9AE456A906AA41211C894212548B1C0D8F76CDAC145DE0B92EA03
      7A3CD7CF810B9FB70BD9C67B36F11E5DE3D5BC6639B204913729836186722E00
      4BBBE712E45C78FC698C89C731261EE6F67E5EE3722EBCF7B77C9EF35C9473E1
      7C3BB6981F1ABD84B5E9722EAC57854E4F650D9F288206EB5F85962AACEC83F4
      60AD1F8D1C2EEF84E7BE21CF04515703C7FAE2B501E32B209474590715069C4F
      A2343F7FCF87C0F43980FC6301244804BA161FB29E58F08E4AEB6F82AFB271FE
      0730F806F26D36D0F790239494E4F91E486FFE5605B62A9647F21927F0DE5394
      D466235EC086BCD40F415DA3FA0294E96FD8AC7F44D928ECF4289BF7691483D8
      4CAFB0B1DF64B38BC134D90F65285EBE80E7A428A430A4381C4820DB008C5DC8
      1E1E8B419C272105E42B22855364F52ADCA2108C149614971498BC0659CEF218
      9CA780D42275528048832F8DDCCA4B680A890304A45D01A3405B25FCAE4869E3
      31A7FC39074E420061282CC3DB321EFB88E8F140F43CEFFF54C2F75A48DA8F25
      F29882630B1E0F808DDFDA7A3009C04BE784DFDBC2B99034737D9B249CE746A4
      01E9105CFC6BA16BD221B8700DB204FC3200B886495CD37844D7DC792EAC956D
      C8267999BEB729AF73896F60CC611DCCF0BD53B1C9DA3D17BC926779FFD3AC31
      97D097E7C2E73AB618DF29EFD7810BBF4F5EF1CF307A7ECC5AFF01EBFC7C441E
      F489EC0355F1ABEB806A59B41F8E9667827C1B690F73F97BCA814910E652CEA4
      33CFE47300F9EC3C93CF01E4530248278B548BF7EF72180A49B1C89D87E16F02
      C57D8F60E374437A20BDC5724186022C62BE8CC3425305F6D93C76217229F7AF
      C47A133DF6576CBEDFB131EF421E449E60D3FE0D79198FE22D6412A29A86B96C
      E2455888CB94B00640947C75E126318650004AD4C648714881447A123CD60E12
      BE75ABF0525910569215CCDF35483B48F81673A3149C0F080E1442D2AE340305
      1952AC1F51C2BC4720D1A19297E20E03441818040E84509C90EB691740D702C1
      02FEC873E1D77D56F7F55D07FBAC30A01DE4BE03C7E01C0934755E043C9CE340
      5AB82F69E6DA489A04D00AE729B4A79C8F9F0312A00BD82B052E3CAE6BD90E2E
      DC2F94EBC8732E2C16782E4158CC37286458C80BDDC6EB36B1069CE7C2DF2EE7
      227051A853860A39B2C97E9E4C8CBBD7588BAA93713917D6AAA8C80FF175F7F0
      FBEEE07AA82B803A00FC5C55FD2A9A94B184A8F074943C6F8109FB47DEB86A93
      14E652325EAC43ED2DE50983047C6453C98FE5991C0AF8E835FFBF7B23FFDF9F
      804FBB00420B2D5C93214B480B594940E531D4132AC861A8E622F030E4A60FE4
      6F550E8F62938C57B29B0D740E1B48ED2F7E84025455F275288F9B5106B7B3D9
      44917D888DF7249BF65936E4AB00C104640A329BCDB91059CE265EABBC041B75
      3BB75162F62827C1FB920005E749F849EA764F42A10FE520146E926241A4602A
      F9DE6AC48598505A75483D4AAC01093C0885915C28A98330527BB8281C3A8A54
      F652F881048A5FB79D3D1E7E4D1828C2E020800804D0B540F0DEECB312AE911D
      4C82EF097F7FF87E47BFA3A3C782F3A0F3168066A4E713118A0B87DD02F06E56
      D8CF0F032A1CA85C91031779890A232A2FC3E75772EBC0456B81E78A11AD0DE5
      AA6450E422594886D6920C0F853203CF457930792EACC74DC87A3CDFD5CA9741
      BC580298B8B0186B723A8033197917307A83F5F8129FF157BEE331BEF77E8EEB
      0F1CC3CD1CCB35FCE61F03C21771DED4B540A12EF51673612E81092212891A4F
      7E044CFC3DF8B1BD9243058FCF01C4BEF039807C7A0F240C1C4AF0B97A0C44ED
      20BE0570288FA1868162492987213AAD1A01CA3D1FCFE3A7F3F8B9DCBF988D71
      391E867A2C5DCF66B905E5F77B3693DA653CCCA67C0A0BEE39984FAFB111DF61
      434EF5699B8B553FA08DCAA655519CD8384A6027B03953955865738AC9C3DECC
      E3E3F6ED475CB8898DABC4AC632CF19C0B37F19CF210ED20E1C7E45DBEC19740
      1985BD888E42492E54842238A8843D02DD0F2BFDC8FB1D29E18E402250DA52EC
      9D7D46F8355D81C0A779BEAB63EE0A40C21E4C00A801F80A483A03DB0070C25E
      4BD8730942820A8971ED5B5803CDDCCA5314D9A05106824F4A503ECA810B60D2
      EEB9043917191C02179EE76585F9DCE62A0FA675C7FA72097D192EACD118D6EC
      1E447532DB589BCAB9ACE335AB58AFAA7B59C073B358E3EFABB685C75FE0F927
      79EE015E7B07DF770BC7F60B7EAF3C930B30B4CEC0E81ACFBE51676519616AA1
      A39E6BA2B08B6CA23AA8A025CB4792EF7E78EB90425C5D81C9A73540FFDDDFFF
      3980740020E145C3226CE79E8B772E11071D65AF66722E4CC56B1C738A85AC24
      B862B3E2B98B9AA8AEA9020D2D70350A3C81F7286178AE9AECA96ABBB8B4E4EA
      0325C53720B716151FF8C3FE0345F71616ED7F84CDF2341BF27900E1753691DA
      714C6323CEF573162BB333B3D6E76465AB823A8AC763B551D970E96CB46C859D
      D8C0AA5D10AB496C2631991C8B0925E0404256A71404CAA2410A23CC52E27E8B
      2FED09E970123A74BF3DD7D059C828FC7847E1A448E58CE765611100447A0EE1
      F7702DEC60C275B28309D7C33A12AE9B493A7B3E78BCABCFC720B08E044BDA24
      5D79429D792EC1E33A3F61108E0C97450274F0B7FFBA36AE8913AE9313110F42
      12E4A29C87E9E7AA5C58CC2738C8D010B3AC8635E13C17004BEC3179AFCE7351
      7E4C6B51F932E5CD00862CD6B0FEA58A8ACCDF71DCEE659DABF8720B40A2E2CA
      651843F3784C85A56FE3B128ECA52E056AF5227AF9AFF88E9FF3BD3FE2FC7D5F
      F461D6CC099CE7110A01736D8EE3DA69F68BBC7D3592D41C16B119D5BA478415
      F5F3728D22830691C1BEF629F5ED1461ED7F49A013FEDD15FE677DFC9F034817
      00A205A5C2255F1CED569D49912FB2605D7D068BEB6BBC4E89F0EF224772BF07
      8B4EF45A791AAAC350C3BBF3798FBAB4FE8C4D7F3D9BF6D76CD43B32B3B3EE43
      FE9C9195F90CF2427A66C61BC87B6CAAE9C83C6429B28ACDB3510C2836E16E36
      632CE0910454A850823FB315B316DBA9D80F3BB804B6F212F226B4E1D9702EDC
      24F68FCF0872E1A60885F177E1A67008A9B3FB91B98683E51822434C81220D6E
      23952DE7AC1D2002651D286F29F8AE00A42B00F84703486700131C77E4EF8FFC
      5BBFFF60A2F3A5F7087405AC0296005404129D79741140D29127D30E2A91E0E2
      B3DCDCFAF15970A2473BCF4574E670584C064B38E7E2D3914B44BA60DDAA1646
      546451BAB358E7D843AE26682FEB7DBB481D7EA1E43C00648A727BBCE6791E57
      3FB1FB78DFED3C260AF155ACF54B59DBE7F3BBD4CD782C6B4314E1FEDCEF2552
      0AF70F673F3A26177F8BC9A528C17F73EED46DDA31B9440BF6C50186F67E2480
      7C1EB6FA6802FE73008900904897D547ECF630150B4A8B4D4C2AF1D29510D7AC
      0B25C38F6621F662B3ABD5C348B5E246D4AE5BD45A81869ADFA919DEDD287475
      875547D817D332D2DF4426213390F9C8D2D4F4B4D56C0C551B6B13296119C786
      49565840FE455E4E6E417E6EDE7E44096D15AFA96EA05AB5067EFD8142102E81
      1DAA7968E5FB25ED56270A26B8FF1105120E8B1C4A32391214C256735779888E
      00A323851928DC4810E9CA03F8240012781F9F8507C2FAB040C29F1BDCEF0A00
      BB0298E018751E74DEF4FA3090447A38911E4D707D220125B8EE614F27044C6D
      5A3B92800517D0A675AB5C9842634AE6FBB931ADC50E13FABC4E753D8E86CCFA
      562700792B7948262093EC8763B7031CAA5FF90099AB7A15BC93371085741F23
      AF720F5ECAEF78FC46DEF333F6C30FF9DE73399653384635911CCA3AD0F02FF5
      7853FE5103BB349BE61B9C33197FCA55865BAAB8B9283CEEAADF3FF7423A676D
      7D0E209D0088BF68DA69B82CB8A0C04F2DAE9514D7C852F1D3D58050D5B52AE6
      53CBF253D9C4DF57775416F0B5C86D6C9EBBD9248FB229FE8665F51AF21E22FA
      E37CBC8F0FC850AC4136213B90BDD9B9396244A5F8494A252C556CA724664941
      5E7EF9BEFC82CAC202EA260ABC3094F21400471360D10C4038AF421B59F1EF20
      44A1DB40297496683E58FEA1B3E73A0B2F0561A88385A80EA61C036089F44C02
      70890494CE80E4E30048470ABEABC7BAFAFC8EDE1F7E4F571E4657212EFDEEE0
      5CE8B3C21E49643830FC77705DC29FDF11F0875F1709265A1301132E94E4776C
      31B1C4589B01B5DAD5E288711730F1FC7C9AA3702B99CFFEA8677FD42135886A
      5B147A153D5C49FB4C913F009768F68CDAB9AC03503E4066031C9390D791BF11
      EE7A943CCADDC86F0095EB912BF8DC1FB017CE515762CECD686408E7A9AF588F
      5C1BD598A8A57DA7B4607926021349D8B8FCAC4341FFAE9FF73980840024CCA8
      F2178EC254FFA5423F16996882EADDA3B9DBAAD5389645D897E786B281C772FF
      0C6EC59C5283BA1BD914BF67E13FC8827F8685AE76DFEA203B4B6D3ED4E243DC
      7AC57D095BED4512009214441BA51D30B489D800F230AA000D0718FBF715D617
      155261BDBFA8A9B8E88018350A23B80D2A9653106E5082559BFB60E1252980AE
      12C407534291CF49D9078A3F508C9D791881D2EBE8FBC39FDB116074A5B43FC9
      F35D014567CF77F55D6160EBC8DBE8CAC3E8EAF9E0FCE99C05E73F7CCEC20075
      B05C4C10060B426191D725924D161814418E2BECC104F537A25F4730C69CC722
      70510D8F446B9735DCCA3A6F61BD37B3679AD8038DDC575D4B8D081E4829B21F
      9167A26AFB44642FA2CE07621B2E653F696F4D04345EA5C9E65FF7ECD9F3C8EE
      DDBBEF22AFF26B00E73A3EEBA77CDFC57CDFD91CC349EC955118542AC81598A8
      67D7515CE3765A30FBDCF5E6E2B1607A63D05EA8BD60514AFFFFF724FBFF7900
      39D40B1C6266B8414B7E98EACB6A56C8E252124EC93871CF65B9F467A30D6713
      8D67319ECDC2BC84057A1516D2CD80C51F59CC7F06249E53333BBF91E0228106
      A224A1BAB6AAABAB1AEB65021A79781DFB808D0339790E3054A5AD0A6DD166DB
      F317804613A0D10C68B4941C286E2D2D2E692D2B29759B51169F366D38DC1430
      7622EB1E223D86CE92BC1FF7F18E721581751C56A2910AB72310EA4869868129
      AC88BB52E09F14180E1676FA389FD9116884957A5700D11580EB7A4AB94BE1EB
      B3F4D93ADF3A2F3ACE8E3CB3C8633A18C804C717E951068012901CC29E4A505F
      13CE99859963326CC2B53D5AC3ACF936F6501BC0D12A56984421308189EF9954
      732BC6A0F2272A5E95A195CE6B12788F6A99B6B2F7D6B0BF16ABA3334CC57701
      925708713D8347F2108FDFC9BEBB95DB6BD89F3F06542EE2FD67B23F4EE4B7A8
      E64A93313542D8D598F861690DD9FA3AD25E6322DDC0F3ED73E5C321AE8EEEFF
      BB7A16877ADC9F03889F38F31745647EE35B9C480D553A9AC5D18B8D37908D72
      3CCAF964C55851F097B118AF6151DEC622BD87C5FA04A246836A3028F77A190B
      75838AAEFC3C86688DEA0555C0E30758F00E30C48E0AE8B3A24F2A191984A304
      1848AB0F1A6D028DF2D2B2B68AB2729304C0A14D1B2892700C3C6CA186ADD440
      217715833FD4E7C3B9898329D8704E8073DE29432A0086B082D531477A241F47
      991FEA6BBBCA5B1CEAE71C4A2EA5ABF37BA8401E091CFA0D3ABF91C7DA11E076
      E625059F193C1F0E9505E1B248CF47C7ABC7B416037009E75964E4045E71E0BD
      085C042AEC2749E099C8309267E2BC134485910A75A966457462ED9B12C0673F
      EFC90580D20012754C88C230DB0C58AC62FFC9705327E877B87D893DF934FBF3
      41BC943BD8B7B7F0DA5FF01ECD4AB980633903301ECF7A53FE7220B7BDD93BC7
      72FED497EBBB88A30523F24CDA69C1E110D7E700F2296B220E15B5FE99AF3B88
      07E25C518E45D6447BFD068B4055ADED345C9EEFCDA61BCCA21FCD623B8DC579
      018BF1272CCAEB5984BFE3F67EE419EEABF9DCFB80C27C16E64AACA52D58387B
      59E4492CEE2C1669010BFD8058525857558AF5022275DC571B0A556DABCE42B4
      C9A08F9347AB3C50EC048FC3000F033C1C705496533321F181439B36AC608390
      445721A04F9B84EE0838C20A381230A4D424C1BFE0EFC8C783E723DFDFFE46FF
      CE2751E6870A70FAEEAE3EBFB3DF1A3CDED9EF0C7E6F579F1FF97B23FFEEEAFC
      1E0A18864125723D84AF4FA457A6F7059E67F87D7A2C0091C8D09880259C4BD1
      7D79C941D82B0879F9AD68DA59817E4ECF25E89537F1A9C4CA01AA8F9A68EA22
      94A8D031C76FCB12C7FEDB856C62AFAD64AF698CC03440648268C1ECD327799D
      BA0EFF8130D8AF30EC7ECEFB7FC4E77E9FEF3A9DFD7E02C73582EBA3B1C01FA1
      05734EBE89A8C6C43578443ED2934BF992004CFE99BAEE5FF15DFFB61E48000C
      91274D8F872D81F0F3FE7B5CBB741685EB7CCBF36A172DAB42ED45BE83957504
      1BA03B0B5F437386B1884E60419DC1E2BA984578250BEE26358B63013E0450FC
      8DFB6FAA4683FB8B58846B58ACDBD51A444554BC3E076010BD569E869A072A2C
      A52EAD8D6C9826AC3125BC5573E112DE01A345B98C002404180168E8B16A40A3
      A682DC05528574160209420E910A21D202ED4A8175F57C5721A448051B56485D
      29473D1F093087FAF7A17CF6FF86D77CDADF733005AF6BD7D5F5E9EAF9E0FA77
      F6BA8E4025BCE6C2648820BF12092207AB650985BE5C42DEDF234195BDD85E2E
      09EFB76911A3AB5CC58D2A9AE57E16209182C4B22F77B22F37B22757C8C863CF
      6A64F15B80CAF318844F20F771DFD18279DD55BCF7523EF77C80E434642C7B75
      18C7D91FAF44910811671C2D98F3123478FC0A8F3B5A30A2CEDA1D0EC58A3468
      FF154AFFB3FCCE7F7B00E142B9A14C020D5D9C8E4E8E3C0D5EE30AFF100147D0
      66E46BBC5ED6845CD4A3008E1E2CF2FE2C94112C981351F267B3887EC862BC9A
      45A5B6D577B1C01EF5B9E813589433F97B298B52BD807662ED883D95AE641F7F
      17A9D25BD5BBCA65F8A12971E5C59F0F18296D0094A34386DB78C822ABAEACB2
      DA6A2AA97D4F436021A9E5F1BAAA6A27354843DD87856A1D81495700D29502E9
      EAF9AE3C98CE00E45095F7A12AD88F0B4C87FAFDFFE8D71DEAEFEBEC38FED500
      120930615698425EE135D91133AF236657386FD7491EA5BD379892F0AAAA679F
      062D5AEA23C044F3573436400553C9EC497569D8C1BED578E36500877AC569BA
      E31BC873DC7F0C20B947D1059E77B460443AE05CBEE314F6EF18F4C3507E573F
      7E9F26323A30E13A885CF30D7EFFD710D7938B6BA6E16FAE6051FA4712E8A9CE
      0CE0CF52B9FF333EEBDF1240C2282E00390888B4B750E735AA3EFD12F2152E64
      D066E430FEEE0670F462710F64E11E8FC573320BF23C2C901FB1E8AE61A1DD86
      DC833CA9468580C54416E11C16E37244EDCD35312E515443165981AA6F559BC1
      7BAB794C2EB60AF8D4CADBD16B4345598EA1125863811526901030D4D7921005
      1C745F40528F34D4D43A69E439895ED358EF159A75162B3F58025BE0D0150074
      F57C5731FCAE422C5D29E84355B09D85C0BAFAFC7FF5F31FE7F77574ACFF2C00
      E9CC9BE9287F1266E005A01149C70ED6AB72749D5189052E91C49070FE44E012
      D1AAC5D1847D8AB0EA4ED4E74B9D17D4AA47EDEE0F8816CC7E65DB6626B197A3
      0109F58A5B8768BEFD6CC0C3D1820975FD8D5CE6A3C8DDE44C7E4362FE7A9EBB
      82F7FD00803A87EF3D59616D7ED710B131B90E3DB83E4773EBE698705F54FFAF
      B13FBE8C48EFB48389425C326A3B3378FF198AFFB3FA8E7F2B008974FF820B10
      3C2E749737E27B1BCEE39015100A53B9FC068F1FCE453D8685DE9B453804C53E
      060FE13416C6052CB09FB0486E00306EC70A7980C5F48C86EBA87889C717B0F8
      56011C5BC54957711FAFCF5635AD9ACEB160D57850D5DFB28294F46B669139D0
      5058CA6F01F291C477B081824463E07904E01000491360D20C58485A1A1A9D34
      F92225DE593D41C0C8E9C8939052E80A003EEDF301807C520FE1D32AD87F3440
      7C9CE3EBE8B55DE5503A7A4FF8377505205D85203FC9F39139938E92EB014084
      0124C8D1E9F5C1BA8C647945D288BB2A7C0CD79F04CD3A7D505158D8CD61616F
      CB887360A250B2E8F1EC61B558C9E3BE5AD92702307BB9D51883B5EAFE205A30
      DEC844A8C0AF4209FEEBDEBD7B1F21017F1740F26B74C175BCEEA7BCFE62B130
      01B993F81D6A863A9873A3D6F3DDB946AE5B30F71D938BEB1C667229E71AEE16
      DC291DF8B352F4FFA8CFF9B701908EC0230C1C3E78C84D74612A213EE2F21B88
      26FAA9F2548DD65C7E036F63180A7D1C207026C0E0F21B2C9C5FB238C4D07858
      633ED5D44D345C1E5BCC6BD602163B144FE5566CAA5CDEB39F05A9BE3F9A28A7
      2A7031A8D42AC425C3454FC4BA6A0B688D915D63B539E4610834C2A12A3D5627
      6FC3078D00305A1B9B4CD2D6D4ECA40569E6EFC8B0415734D7B0D2E8CAC3E8EA
      F9AE002612403EAE423F1405FD713FF3B37CFDA11CDFC15EF34900449F17FCFB
      570048D81B89F44022EB7FC2B52961E008D660A4E1135940DA198D3860177654
      411F2E9EF58D371153B427D5CF4B5D88D5DA5EAD7E3496589DA7C5E4CAE3B974
      6E13D8D37B6424B2E7D7E0892CD6B866BC90779157B8FF0C46E543E8883BD10B
      B7E2B55CC36B7FCC675F04909CC99E3E1110D428DF41FC46470BF6C1444D55BF
      25CF846BE6985C0A73717BD06EC1FF28C5FF597DEEBF1C400E060C87021A2C40
      3537FC0F16727B7E830BE3FA53214A70A933A778DD3D79CD0016DE0816D58972
      43B9F09702103F6731DC8A6892DA632C8A17009277008759C80700C506B13958
      6CF1BC2783C5C6FACA575CB59CF76B1CA9F21B8E76CBC26D89F0381CDF5DA12A
      B9E272D503AE7EB071020051E84A20120E61293C1580876EC3E061CD2DD68A38
      10394828EAB34E9A475AAC5DE5482295E767A9BCFF377CD6A70590AE3C808E3C
      B8CEBE3332A1DDD5671FCAF387FA99C13A080025302C3A0AA186BFB7B3F71D6A
      AD4A67058E81478F42970117E4191505F83B2617A0A13C6505A2A999320AD551
      D8D182D9E35100C966F48266E9385A30E268C1FCFD3421AE07B97F07AFB985F7
      FC02FDA059F117B0DFCFE0D8C673FE4622AE5B30D74D1DB98F44BE8B7CD3D751
      EAC915092487DCBCB12BFDF9590145679FF36F09202196557B63433FCEF86516
      A41AA589B3ADF90047A3B07B71210772414771614F61719CCFA2B81C90B89645
      F11B6EEF459E6201BC02584C022CE6B21056F0BACDB244021A2E8BAB00302846
      2A901AB9C4B266E4228B4925E050425C8B3568C1EDC7685DC75A2D68B9E761BE
      BEA3412A094E2E43790E49E079283CE5C0210422911E4818403A52E491E1AB8E
      14C6A755801FE7FDFF1B14FE677D0C1FE7F777F4DAAE94786739A48E3EEB5095
      7D57DF197E3EFCFD075B3F91DF1DACC78EDE1F5EAB07334822D76F243809643A
      4ACC87732A4188D8A70BB7771E0E87B9D4374EB460C0C3D598F8394C470B0610
      C4A4D4CC93380CCA5D9AB183B1B912F058C87D470B06405EF473A4F7A34B342B
      FE577CCECFD10F1FE916CCDE1F2E239673D28BEBD74D212E6E35BADA51823B02
      92AE00E073008139D5D549083FEF8387A3E2228E518538E040BEC5053A4C343B
      E4386430CA7C3456C7692C860BB9B83FE562DF800BFA7B16C083A9C9297FA104
      FCF5C29CBC29FB73F317ECCF2F584DAB906D5CF868DAAAA714161FC8660915E6
      EF2F2CDD77A0A892BF6B69BFDE505256DC545626D020295E42BFA9D2E236BC87
      B6EA2A8F3D258AADE8B655D06EE529B43550195C4B115C15C9F04ABC908A2A77
      ABBFAD1E4FA21EB0A8231415E43914AAF20BC13E5AC7A1A4B7AA8BE57950A380
      E8F3DBBD119FB6D9D4C2EB9C34FA344EBC97C063F1DB94BB30442BEFFD07FF0B
      2BBA7FF057FD4B3E5EBF8F92BD0EE8C60105B9232A32E7BD8D75C17B9B5BDAAC
      B1D513DD77C27509146B5B0B9FEE4B6B6BB3FB2E82974620D3DD1AEF335D476E
      F57C4B1B46472BEB2D242D2D4D7C9EE4C3CF0DAE7F6760A26370C7D1C63A0B4B
      C467844F7A70ADC360120EB5E9F120FC15804164082F389E00643A0398E0FD5D
      B1BC028009C82A32EEFC2E0D2E2F29A34F612E3123D51648058BAACDE2B6561D
      210097721ED7FC9C7D00833A06A70016B1C84E353C458FACE0D6D1820196B7D0
      2FCFF3D81380CD7D80CEEDBCFF26F4CF557CE7A580D87984E84EE5B78DE1BC0C
      4134504E5EC911212051F424C891A84EEDA0467E57BAB3ABF77FDAE7FF651E48
      F0C3592041E2DBDD06AC2ADDB2483E52D3C17BDCA8587EF41711D74A9D1DF535
      F6D2B710558CBBC686B5F575434ACBCBC6020267D01EE4625A855C498BF45F62
      31DC999292F4485A6AF273E969296FE730F2B52C336771696AE6BAA294F41D45
      99B9B1A5854569A5A5E5B9FB4B4A8B728A0F94EDAFA9AACAAFAEA8CB292D6AC8
      2C22315EBABFA5BCA6ACB5AA864EB6A5456D95A507008A62AB2544D5505D612D
      78116DE42FACAEC1D0E0D654CC63C595D656CA63657566E53C1E4859BD591520
      50D56456C9E6AFC41BA9A48AB712FA2E5E4915ECAA1A3671355205205437B75A
      233FB21991EA6FA8E7BD4EC889F0DAE62618594D540237D191B591F6DE8DD500
      08E0D4CCF734F31D7C86A7B8104E1CD0E5ED6F85D4FF55F269D5FEBFE2B89DD2
      F6404367518A3C0011774A7D51AA42A7BD0E03A1BE9170248A58E7BE99EBD3D2
      50CBE568E41AB570E95B11AE33B775CD6D5C4EAF0589F25BCDF5AC1914AFF15E
      5D797D137EACB1DAAC1E184123FBD756D794D723343369175A2D72A88DBC5DC2
      3A11C80026029846DF80E0909C51D2D88847DC44825BC68740436B8CFBF5FC88
      FA16BE0F9151A2F73B30739FE5014D186C742E0209C02778CD87C68D67E47415
      02EDECF9004082EE0B41457CB8B03108EDCA5389AC900FA2047E7ED281886A4C
      FCDCA5C25C624E8A76AFE99B22C654C933217A710070280048B2000DD72D98BF
      7710C150C709759E988B9E71B4607226CF012A8F813BF70046EAC47D23C77B25
      3AEA07C85980DF386E87211AD37B0CEB491E89A2274AB82B47223D17D4933843
      3B88BE047A33D0A39F16083EE9FBFFE5001279E09188AAE7051CF2383869AED5
      087FABFDB26A383CE068B56ECD8D2DB41E00384A4BC71614EE3B93DE523FA049
      E1552969A93727A7A6DC853C86BC0878BC9B919E3A2B3323ED83DCF4F48D25E9
      195165691909004946795E617EF581D2035515F80F35B5D5C5B53575C985F98D
      C94579CDE9C54C6EAB286A2DAD2F6FAB6EA86CABAC52FB855C4083AD5C516A2D
      781FD0A2B41351E828EC8A6A00A3CAACA8CC6C1F92576C96BDDFDAB20ADDADE5
      96F2188F17F29AFDBCB6188029F7DED78417D3D458EF367055439D95D4575B09
      B755EC745E613528A61AB0800817FF431A512E7C6F2B1B5B1BBC0165E16DF83A
      2C5A3E070069E5EF7625E20388B6F9E700F209C0B303001198386F40174DE2EB
      7CE720FA0F35B6A1B49B6A0110AE35F70D6FA1162F52D753D795D5638DDC6F02
      489CE789478A56F7000465DBC89AA8017CAA786505C050A38B0F10B835C7ED87
      00C21AE07981470BF7DA5AF964D6853537B835220070C782E8B0C312D813C1CF
      109008688235D5C867688D093C1C18FAE071A800A2D78541A42B00E9285F127E
      8F425491ED54C2C9FACE4024989B12B4FD518E52A1669F29E91893E812977C57
      985AE16A40C0357804442A018A32404460922F4E3020E1BA056B8E8968C100C8
      0730B66603228E168C57A2A2E33FE3D9DC0568DDCA31FF0230B994DF770E3A6D
      1CEB6728721CA2F1BC2A50FC1F40527A4E2CD2A0F7D6E700E20342A749A28870
      956B358238E050A80A5172FC5B3CE63C0EC238BDEB6AEA879495948FA50CE34C
      2EEA254929C957272425DE8ADC0D683C0188BCCC9C8D8900CADCECAC8C1539D9
      999B913DB9991949055CF50339B90C7FDE5F5CB9BFB8A2E240490DA1A7FAAA9A
      EA26947773715D554B515D79EB817AFA4FB554B5D5B6127E6A2A07234A093995
      622196B0390180E62ABC8C7DD6949B696DD9996659D96629196689696609DC4A
      12795C929CE549129218088FA7E500364580086054CBE7D554B1E70975A17008
      46A10A3C4FA4B8BED64A15FF7516ADB49317E6680F1DA09814CA90041BDE85B3
      5032C1C69727E269B94FA0403FCBF77810F6C9FF7D96C772289FE58387173A92
      17E27974C1DF61F0D04B1AB840F500402DDE461D20DE226F407E640B1E4823B5
      3D8437EB1B5AF052B0F4B9AFBF655D2BFFA5B063F8FA483156E391D4A3BC0538
      750081F32AC9A5C9B3084258FA0E893C0F190E020E07327812F27AE495068686
      42662C1D27C2A9C85C46E04B046B491EAED694BE4BEBE75001449E48F8B50188
      7C9C7C4C476012B0BCC214E10040DC790C4D960CE8EEE196F7816712B454098D
      3C70F94C7926021385B8D46A482D87D47A88F094DACFB7770B162DD82F20CE40
      0725E279EC259CB50DF0580B882CA5B1E32CA8C0EFF1D82BBCFF293EEF3E3EF7
      3700C9351CC30F39D63339F7A3D16DCA911CCB71AB46ED1BBE37A28EC0D281AE
      AD7CD80B09EB4BE9D67FB6FC53BFB0A3785DE08A4584AE1CAB0A69EF8ACB49FB
      1A224EB5FAF777E3B9DE2C8821C54525630B0BF69F9993957B496A6AFAD55C30
      01C73D89C9494F0224AFE089BC9F9B9F373F7F5FC12AC87A5BF7171644EF2BC8
      4BC9CF533BCFAC420817A545458595F49AAA2D2F26BF419B74BADEBAA2BFB2EA
      F2B6AAC6AAB68A7A7A4F355438E068A83B40B82ACF1A8A73F1180A50F4781695
      FBF02852AD266697556FDB6CF59B3759CDB2D57660FA3C4B7FF51D4B79EE55DB
      FBD8B3B6ED81C76CE3BD8FD8E6071FB3ED8F3D6DBB9FFC9B65BF3AC1AA785DCB
      D255D6B87CB5D5AD5D67161D8D77029854004E55782A7584C16A6171719FF099
      553513A292050A20488934A218C2E180F64DC3F3F244A4B8EAF14A64710620E2
      C5CD3FAAA0FE2560F2C9A1C37BE7A128FDCFF235017004B9093F2CD4AE85BD28
      A13BB54D0A6171885528DCD23A0A449B096F3A9791B054632576071E6815DE48
      659DB595D7180BCE5AC88F19E14B8344A1F09488139E42C40B20C454D3802121
      AF469E8A1C1EA72003458981A05C978045B13301873C185FDA084F29CCD98408
      049C97CAEBEA78DC032F8FF5C793BC576822F7C48BC70924053AF58D0018A2EF
      3C1400890C65450249640EA4ABBF2301A7231A7998F91506C4305B31789F1E0B
      2AE6C32D5682D098DFFCB11D48FC3927AD0089EB16CCAD3C13977C274FA2D6F3
      253824FB01913C445D29346151B3E0B75047B21AAF64210F4FE5F13778FD33E4
      57EE034C7E4D48ED6700C9051CCF49BE37A244BBA69BAA6E4DC4208DCC7655ED
      6110E948A7FE3341E49F06209D257B2200A41D385804AADEFC328BFA6BDC3AE0
      401C7080DA43B8B06351F26766A4655E825C9D9E9A716B5A5A862AC69FC2DB78
      15994CDE6301E0B106F0D8CE9CF158668EA7951417E51E282A2C2ADABF8FFA0D
      66841741C325315E5A59D1545651DE72A0A4A8B5A8787F5B6979097BBACC0A0F
      E459FEBE343B509869F5E5F96C764250C528F77C3C8BBC54ABDFB5D1CA562CB6
      AC29132DFA6F7FB555BFB9DD66FCF02736F59C8B6CC17997DAF47167DBCC7167
      DACCB167D9F4B1A7DBD413907167D8E4F1C84967DAC2F32EB6B9E75C6053CF38
      CF269D759ECDFBC915B6F3BE7BAD64DA14B3AD1BCD62A30879A59A711CAD25F9
      56539C6FD5154556534FC2BEA99A748A84BC0996695D03D6613D608292513C5B
      C022CB57402391E5AA708436955310589FFF74051CA9CCFF9D0024E47D04896D
      E701382FC037E3B9EB224E8A2AF25B6B51509558EDA535A5565C56081BAF10D2
      044647F501B3120C905C8C8F0C6E5372AC15AFB4259DB5A5C70E60385027544B
      034D47EFAEAEB5AABA46229C84AFAAB9AE8A4A71EEE060B8EBAAB09794A10B67
      72FD95177320C47A507EAC951C8C4260F2662575CD12FEC6A8D0AD2BE0AB28B7
      3A7AAF3596965B7379A5B542F4709FA1CF55B84A5E146B4D22309177D29507D2
      513E240C225D014690988F4CD007EF8B0C8145D62D457A5441123FCC12736C48
      7F9A6364E163B8CE44C9F7A02038D4BBCED182F14E9A00123546ADF3BB50B8D6
      F3FCBD9FB0562E1E491A61AC38F4D32E0064BD8A1509698912AC22E52779ED5D
      7CF60D84D42EE3379CC1EF3D9ECBAB762922047D97C7BECE712A02A3C68D0E44
      0E9640FF6781C83F1C403AFB91811BA61F1A24C7B995C7A113A45E32CEE3C045
      3D0C6456BB91DE6A1B805B39968B772617E612A24F57A724A5DE9A96927E4F66
      7AD653CC627A950B3185C4F9423C0F4DF9DBC1BC8D38EEA7D364240F0FE440F1
      81FDE530A7AA614ED5C1A26A043C9A8B2BCB5B4AAB2B5BCB6AE84B550B0D57CA
      B9A1927D48B8AAA6D86A4A72ACB19010D47EC252F9E966313BAD7CC93CCB79F7
      0D5B7AF38D36E3F24BEDED334EB709E34FB249A3C6DBD4A1636DDEE0B1B672F8
      C9B663DC39B6E5F8D36DFDA0F1B6BCEF485BDA67B87DD07F842D1B32C6568E38
      C13E1836C6960E1F65CB478FB725279C68338F1F65EF8F3ADE165CF87DDB7CEB
      2D96F1DC5F2C7FF27BD6B0698D5966323915400C106946F934027002B912C25D
      1535B43C51475E344BB3185DB25401110148359B5D00524B484B4951171A91C2
      138BEBB3B4CE3FC967FDBB004807E021107196BEC24378081E1B4E2DD4C5A692
      2E6FF3801D055D83075959CA752B032C2AB97699717660C31AAB5EB2DA2A672E
      B57D13675BE684699633658E157F80271A150D986459436EBEB50124F2446AB9
      AE95358D565C5167A5954A827BF93085321B3816C7CA6B400272056B400C3F51
      C23D7205F902449E502DC687C471B9C89134D741B8200FD07AA0C4B0A0ACADB0
      D45AF723A5151E2944E120D65203B9B8DA7AFC5F3C9843019060497406249100
      11F977B03C3A7B5D188022195EF22C0E4619D6EBF5B9BA0D12EDE1962B029570
      AFAE20F11E6A49EF585C2A5C14A0A827973C1375A11098C83351AD1800510E78
      94001A6272699C4322F7A3042484B616514BF2BEA8C000CD43BCE736425B3F03
      48CEE7FBC7A1FB06A9471FC7773820F24D7E8F12EC41DD487B48AB333DFB8F06
      927F098004E0E1A3A8635621AEA5BA0F1CAE8E23F038348652C0C1893D1357F1
      122EC0D5A0B786C3DC939490FC546A72DAAB00C8147A182EE4F9B524D1770016
      71483A1E483E72002FA482BF6BF040EACBCB4A9AA0DC36D7D454B5B0405ACBAA
      887512AE5298A1BC89AAF0561A15B600200D84901A08339410AE4A8EB6C675AB
      EC00CA3CEEE1076DE91557DAC4134FB229A3C7DADCB1E36CC1A8136C6EFF6136
      AFC7005B72EC405BDD6D80AD3BB2BF45751F6A7B7A0CB1E81E432DB6D7508B39
      0EE933D4F6F61D66BBFB0EB11D7D06D8965E7D6D6B9F81B67DD030DB3C64982D
      EF3FC0E6F61B60D3070DB6E5E79D678B2EB9C456FFEA9796FCE2F356BF6A25C7
      128FF7938595BACFEA2A4BADAA46930501BBBA1A57372265E368BE28B25A291E
      2C2C499D060C0500E2149E0F209F5689FF7FF0FE8E2CE0760071E1A24800F128
      B92ECFA450126BCB007B2BC70349DA6329B3DEB7F5ACA3393FF889CD3AED07F6
      CEE833EDD511A7D81BE3CFB629975C618B6EFDBD2D7BE011CB58BCD45AB3597F
      1033D4FFAC01D4A800180EE08554F29522F1D5F03DF50057B332F07512B92580
      19B12ED75A1DEF4361CFCA16D87DCDCCE9C030AA6922244B585639368A8FF810
      441EC781728C24BCA3AC7DD69241A8362BCF9A19258065E27E470020024571BE
      BAF240C236454720F249964E184CC2002330111874542F123C26400987C1BA02
      908EFA7485C73B07734F7C2AF047262DCA331198A0AF1A00915AC0A40A03B70C
      109157E28084FCC82E0064353207798B10FC93BCF64E5EAB298A9760146A44F6
      7074A042F64729A4C5EF54DD88BA6CB47B23D2A9FF8A70D63F1D40C2E021578C
      13A2D6C76E64AC9246C877395147FB751C4338296339796772812EC13574C041
      1CF11E628A4F71FB6A425CE2144064215EC85AC6FBED0040E2A1EF66949495E6
      13922AE6B682DA8D9A0325C50D48139E474B6545596B6D4D551B0AB74D457C55
      30A84A50C4076A4A484E9703222528E542AB2BF13C8EB6BD3BAC78EA64DB75E7
      1DB6E4A21FDADC134FB179780C8B868EB6F5A34FB44D234FB04DDCDF04806C03
      1C761D37D876771F687B8EEA6B49DC2677EF6FA9C722DDFB5A5A8F7E96DA0BE9
      D9DF52B84DECD1CBD2FAF6B7740023B1377FF71F6849C3865BD48021B6AC7B4F
      9B83BCDFBB8FBD3D6890BD73E289B6F4DA6B2CEBE597CD3611DECAC61B2A2DB2
      568EBFAD1A0555ABBA12C5BDC5CAF1C2534ACACA13A92329DB0868041B28A80B
      F9241BF8FFB7F78415D6DF855C446995B4D7D9781E88C44B8293F02ED96F2DF9
      ACA5C23CBCD7284B7AEB559B73E32FECBD33096D8E3CD1E60F186B337A0DB7F7
      3132DEEF3DC2260F1F67534E39DBDEFBFE25B6909068E1D20F1C2983EE801E5D
      9B0B50CE35ADE43BAAB9CE029046E2650290B67A0F44041ECA9BD490EFA8848D
      570ED1A3BC05E3A89971004D65E431CA3C0208E15083860EA5D02C07EF3636D5
      AA37ECB4BC852B2D7EE622AB4F4AB7E60258830218004461B0EA06793034F274
      39B583D378239DD2C89CC867B99602000933AFC275541D814824804432BA3A9A
      1D1F0615BD5E5E8AC25BEA38E14F5A741E8992EF78286E642FC0E192EFE8A73A
      00A45A9DBA018942C0221343388EFCC816FA6E2DDDB973E7647A6F3D0F98A80F
      DFCD80D54F10CD741F834EECCF6F3B56C635C7FD0DCE9DE6918413EC7F0722FF
      B61E488086E1E4B8EE2BE7E127819CD7C10F54B8EA7F785CC8AA5E556A393248
      278C98E01924AD7E806B7835487E2B00720F27FF295CBF57011215EE2C2479BE
      36373B6F475E4E7E3C2CAC0CF519C1DB28C60B711E47001C00490BB521AD8087
      0AFEDA6A50B880085D6E8933735B5DCB70262CB2F2DA22DA8EE459DD01585179
      2956BF7E95A53CF3B42DBBF4729B3A98CDDDADB72DEA35D8D60F1C631BFA0FB7
      1D0347DACE7E436D47DFC1B667C0704B1A3AC6320094ACE12758E690E32D0990
      48C2C348EED9D7527AF6467A011C3DDC6D5ACF1E96DEB3BB65F6F0A53B7FF740
      7A1D67C9C7F5B358806557FFC1B6AEFF205B3E6CA42D1E3BDE793C934E3AD936
      DC78A3E5BEF69A356CDF6AAD9900C9FE426BC8C352A5E2DDD188095BA8E5BBAB
      2570E2151FB65B607E715847A181F0A63ED410C367A9083AFAFE7FD4E77F9CCF
      EDE85C043511ED96B07C0EE540D4AF0C656F8416AD18258DF2AF5BBBC6629E78
      C2DE3EF30C7B79C8609B3D72B4AD1B36CEB60E1A635BFB8FB20D7D8EB735C70D
      B7A5C70DB3D97D86D97B0387DBEB844457FEFAB75686276239D956CF356E2264
      5943BE4B35428A5829A9DEC89D46BC8E866A12DD55D40FD5D4113EC363E07844
      F72D6BAEB4031040AA6A0F400429B2EAE26C2BCB8863EDA478848DB4746B5AB7
      C9F2DE9F65ABEF79CC5EB8EC2A7B06D9FAF6FB50CF0116C258F5556AC743912C
      005289B1A21C4C18403ABAFF49A29A9DBD27ECC104F7754D3ACBA304A1A92061
      DE51C3D1CEBA5877D43DB8A3710941E84BA012508183192641B760D5974424DF
      DDCC77A40A00294197E5A3CB92018C280CE3357825B3086DBD016BEB71C0E5F7
      80CDCFD18117AA69A38843ECE15EC811CA0DF3F7D7F80DFF8D846790382009D7
      D105FAF8B306947F98071276A7E4750838F8D1EA90AB8687413DC757F95BFDAA
      94203F5608EB8F8C3D8D137E11A0711527EF56C4010788EDE53872721672F2D7
      223BF2730BE2918C02E6C714141416BB9E3645FB6BF0421A90A60038F046DACA
      2BBD6A7181475D2D15E1488B12CF6CC83A00A411668CB1D1AC023A6EC26EAB5D
      F981A53EFE846DFEC9D5B668F018FBA0C760DBD267A4450F1C6BB10347DB1EBC
      8D68C064E7D1C7D9D6237BD8EE1E7D2C0590C91E0588A0F093060CB2F8DEBD91
      5E96705C2F4B3AAE07C0D0DD494AAFEE96D6EB18C0E368CB42B2BB1FE3C9B1DD
      2D0720C9EA711C9E4A1FCB1D31DA12868EB09DE449D68F1843986CB0BD735C1F
      9B36823CC9C597D8E6FBEEB784B7260024DB515407AC259B5C4DA9426F62FAD4
      FB0954BF0923E10FD71E05C5A364BA38FE1D55517F0E207F0F2B9D01A9586DA2
      B8BAF3C8DB5CD04A914115E9C81B542D074ABF6DDB4ECB79FD0D9B7BE10FEC15
      AEEBCCBE836CCDE091B6A937EBA7D720DB7BDC10429BC32CAEDF088B1E34DA76
      032C9B8F3FD9168D1C6F6F0E254776E3AFAC72E9526B4B43E1E32DAB00484585
      D50045ADBA1CD4E16192306F267CA5FC97CBC338C2308FABE890B0AC0BC9D629
      1C25E620B998020C8FDD3BAC64CE2CDBF3E433B6E296DB6DEE15D7D94BA79C6F
      F791C37BE2F40B2DF69DA966E9D9D676A0D8AA0EEC77DEBA6A42C4FE9327F4BF
      1D402293EAFABB23E6D6C140E660C0135083034F24C893048D5383098B41D25D
      237BD16BCA95388F049D568B7EABC028DE0F90386F0410D98C07B218AF6412B7
      CF2A54CF6B6EC293B954A37735C31D9DDA97D3AFC2E9EFA03BFF2748B0FBE900
      47F595C11E447CC2FAF8B304917F08807474B0F23AF8418E9AAB9095721DFC90
      6F73718EE431B51D198AAB762227F87CC0E2A79CD05F1127FC13C9A72741E757
      FD76EA0E3838F93B785D3C2093B17F5F517E11B971A4E200351C5CB00642560E
      389056814605398E4A3C0D6A3B9CB721E050BEA081B86E7555192517A556535E
      642D889521C909563069A26DBDF9369B37F6145B3100EBB0DB10DBD56DB025F7
      1965E9FD475B4ABF9196DAFF784B245C150380EC3AA2BBEDEED6CBE2FB0CB2A4
      41433CEF012088E9D3DB62FAF6B2D83E3CD7BB8725F4EEEE24A9F73100C93180
      C8D17821473B2071602210C10BC9EED1D3327A1E67E97C4E3CDE4894CB910CB7
      7583B1500191050387DA9CE3C7D89493CFB02984D5B63EF0A0552C59426D49BC
      B5E564584B1189DA32298C5A07226AA7D2DEC15700E2179275DC86E3C3B1B35D
      7920FFCCE73F8EB7F059BDB6A3DF17B678C54672A11C94B52C72493B8010DE30
      8A422D31C5125F7CC53EB8EA5A7B8BF531F3D8BEB6A5DF3017EADCD387FC188F
      B97583179B8A379B06C9221510491872826DC13B99D97B90CD3EE52CDB73EF03
      CE8B71440A72195AB78D180A320AA4CDDDF5857DE5E5C0B85561693DDF4F4702
      2884AC6DD1CD53AC2D2ECA2AD62EB5FD33DFB7AD77DF690B7EFC137BF7C4D3ED
      ED5127DAFB63CEB4D7069F684FB3C65F39EB128B7965026B0AC62189F53AD653
      3D7B4686876A5B3E0B00E9C8AB083FE665913EAC6C8FBCDF9507D2599D49247B
      AB2B36D7A10051C0E40AF222A1B629ED237BC340A2BA12518101927A8CE22A40
      A2043D978FCE4BC11BD945887ED5F6EDDB67EED8B1E3D55DBB76A99DFC6F0099
      2BD17FE70150E3D0996AD2D89D53A49AB86F702EBECAEFFD929F16F848CD4838
      47F2BF16403A4BE2F0B86BB3CE45508B7551D1BECE8FF82E720C3F4C54B55180
      C719425880E37A75B7E4243EC6C97A9913AA39E30BD54E1DB4563BF5784E7A06
      27315F3D6A4A0E9456941697D55048D8505656E1C6C4021AAD3E68B455E36A4B
      6A50A4920038041E8DB8E20D781E4DD55874158A03B3C1E2E3AC78F234DB78ED
      4D3665E0289BF43F47DAF6EEC32CA3EF09967ACC304BE936C8D2BA0F22043518
      E53E945C8697E348ECDECFE2510CB1E439A2BB1F470EA497ED3AA6BBC5E28178
      E01100480F3C1100C479221E88A4E089C81B49EF298FE44300C91288E0D52421
      313DFADAEEDE036D1761B26D4346D896A1843B868FB1794346DBDB84D2DE3BE9
      345B7CC3F596F5FE24ABDDB1958244C25965C4B501CA566897A271BA50164944
      E781F800224A65A010FF9960F069BEEBB3F4903ECE7144864A74EEC200E214AA
      6F950BB015F691E2B5BDB1B6F4D6DFDABB634FB2B9BA7E830187BEC36DCF613D
      1D6824208990291214EEE43A271DDBC7128FE96B31C7F6B34D471D677B479F66
      4B479F6CF32EF88155CE9DC3B5259F8227D1588B8180F7E36A3554544A3D8758
      571E7D17EF47EC2D429B5640EE05CFA5857551B1609EA53CFF375B76CB4D36E9
      BCB36DC2C8913665C8489B031B70E130C265A3CFB285A3CEB649C34FB577CEB8
      C8F6FE8D7C5B3200428C9FB8AF9744672D8994712821ACAE00E2933C1FEECDD5
      1580445EDFCEC25D7F776D237A7E8581280C3641D1627BED954F090E3C9220E1
      1E6EB01A54BC87995B7E71A2F346D07BFBD17F9980480CE0B171DBB66D0B9177
      C88F3C437EE48F3C7E1D7A5083AD4E0148D4A0F13896DD9132C86598FB3965D7
      26DE4F17B44F6CFDAC43599F9907D21178E8314EAC3C0FCDE7F81227FB2BA2A2
      F198E609F7400623E338D9E783C6570216BF063C1EE0E43DC7FDF7008E7980C6
      6A0187BA616AF88B521C9CB862C0A34203622ACAC85C945536559657B5545656
      B7AA7D3380E1804380A1DA88B00838026982BA68D01A713F5C32DA1212AD68C2
      FBB6FA8A6B6D1A5EC7ECC3FAD8FAC30738F0D8D76FBC651E33C432BA0DB4F463
      0738D048817195C4264F857595EC27CBF55872CF7E4E942457EE23B9576F5FC8
      7F28071208B91085B504262EA4E5E743041CF24024397C4626097729961814CB
      2E64478FFEB6B5E700DBD06BA0ADC7925D3EF0789B43886B1AC9FD772FBCD0E2
      5F7F8DBA82046A0DF85D84E75A014AB5D088AC4AF7C22F1F6D96F77137F4DF35
      DB8B6CBED7C5DF5D6DE8CE147C00221FF7783FEEEB3BFA7DE1B08DCEA9423AB2
      CAE5857C0440E88B66FBA9D959B3DEE65C758D4D1B77AA6D1E73AA45F51E62C9
      DD3036BE7D34248AFE16CB5A89EDD907E3A3B7C51D8BA171CC71967834B747F7
      B6E86E5C7B4259F30975BD4BCE64FF3B6F99A5E2658AE06184601BABBC563514
      F7898ADB4EA2A09F9A15B0A6A313AD6EC57ACB79E52DDBFDC7FB6CD37537DADA
      CB7E6C0B4F3BD3A6C3F85BD87F880BA5ED1871A26DE837CAD6F51D63AB069F6C
      73879E86777B81A5BDF03A752AE448A80F69AE24FC8B07EF28E3F2720E2184D5
      D5F9EE6AFD44BE3FF2F55D0148B04E3E8DA110ACD18EBC1979260214BD263816
      FD1DAE2B0977040E268FFA15EF416EA40DB5D68A7E6B22FA528FDEAB26EA5282
      2ECCC30B492227B28350D672642AF222212E25D86FE1F91FA31BCF2212331ADD
      DA4F0639A22EE45FE758D5DDF7BF0E5678F85978229F1A403A038E2051CE89FC
      223FEEBF95ECE1647F1B71212B64388F89A2F603C24ED782BC7770429E043CDE
      E004CEE444AE40B6728234C0291D8476C0A11C07C8ED425520B9030E7A57B5D2
      8090E14DB56D8E350170D050D101879AD849021091071288721FAD84B0A8A062
      93A45BC1C4C9B6E227D7DB94FE636CC1D1836D6BF79196D1FF24CB0340F27A8D
      B41C5832D93DF0408EE96F69781B59C4AD337AE395E08D084052782E13AAAE7B
      9CBF538FE963E97826E9782581A40104693D7A3B119024F7F244F79540CFC473
      71C001FB2A074F261345928942C9E4FB52008F783E33EE987E160D70EDED31D0
      A200AC3D784A9B47507B32EC787B83B0D6D42BAEB05D6FBC6AA57B7660A99639
      255307F7BFAE952AE2A0211E9C7EC71E12F5F12020D2D506FFB4CF7705205D79
      479FB5823A98C2FAFB78BFBA00A83714FDC6E48D38514908D6B9BC0001088580
      49EF4DB409E75F684BCE3CCFB68F3DD5761CDDC7B2B8861987F570DE6C3C5E6C
      3C46421C648B780C8E04799D5C6B679CF41E6A09782C8BC9B5BD0A4B6FD35D7F
      B0FAA84DD6549A417A85C47C4329069197C3535F36C7962AABB466C24EA5CBD7
      5BCC33AFD88EDBEFB725DFBFC2A60E196FB3084DAD86F9B573FC591633EE74DB
      0973701721B26892F7BB8E1D623B59F3DBFA9D64CB879F66F34EBBD8720420E4
      40AC88FC5A55A5AB62AFE1B7D542CA90A88031B24162F8EFCFF2FA74B4D6BA02
      90AE3C90E0F98325E23BF33E02B6572435B8231658D03E250C26626F05AC2D8C
      61971B115B0B5DD8880EACC51329C7902EE4361DBDB81730590798CC25C1FE66
      5454D4E37824BF27ACF57342FDDF07444EC4CB5182BDA70C747E8F6BCAA89096
      9F736EF7463ECB7CC83F044002F0E0F6BF00902F03164AF27C57751D424A3C0E
      85ACCEC2FDBA1C8050AEE33E4ED2B3A0EE446E17F1F706C0632FCFA582CA791A
      E0248F8393E48083F73571B2F0382A61B056C360053CB0B8C43C7195A43E7804
      001280877BDC4F9E2B17A2EEB9ADC59E8B5FF6C1325B7DF3EF6CF2B0536D49BF
      71163BF42CCB1E860C38D1527B0C43008FDEC351F200054CAC4C36770E351DE9
      842292280E4CE889550980A4022619DD113C95B423FB5836F520D9280B290CBD
      4780E281885859DEADC0241DEB330BEB33FB98DE9677EC71960F68480AB1500B
      008F3CDE9FDB7D003912C00B004BE16F7941920462E962822D1F30D4169F7286
      3D3F76ACBD7BFD35B67B16D5EC84391AA16E56B7D6D0840F8F0C1091C26BA3B0
      4C2D2E3A029060A36AF37705105D2551BB7ABEB31875F078786377988F38487C
      FC508EBF2B05D7D9F107EDF2456B6DA2C6226826F851001103ABC476BEF28A3D
      3B1E2FE294D36DE3B0D11683E758C0B5CC3FA2B7E5B2AED2A1F0A6C0BCD2758C
      3F4EA12C3C5BAEBB44612C792CABC889BCD2A79FCDBCEE2A6B882744D9B2DFCA
      EAF3092501202A7825C7E142B1EA0A9D9A6E29D3E6DBAA3B1FB657C79D6FD347
      9D6B8B079F66CB8F1B636BBB43C8E83DDAA2FB8DB5380821497CB63C9DD46306
      63140D654D8EB1D80127D9DA21A7DADC71E75AC6532F7821AC22A8BCAA05E19F
      EA89EA60F4A932FED3024857EBA3AB6BD81580B8F57D9070D4C19E0F87AA3ACA
      8104DE47183082D785435A41E25E5E49B80F97C0C46F2DDF4E01563122FAAE05
      2071DE08FAB00AF028C6E3C8013C12008FADD07D9710DA9A4458EB59985A7703
      2C3700383FE47DA793641FC9F7F4E1988EE6185C821DE9B482FDD37A219F3980
      F8E011F4B052C8CAB1AC94EC41060120E350FCE783BC3FE307FF1624FD336ED9
      2B80C7744EC20A643BA89BA0421BFE69D464B98083D7BB71B19CA0F6E14DAA02
      D5043F814715B3353C00A1E216A07034475A9A57AB8329F7F598376F190A2496
      5A0D7D881AE1C0B7E5A55B3905823B1E7CD8A69E7CAE4DEF457E61E0C99635EA
      3CDB37E26C4B3F6E94C51FC5A63E068F027050882A93F0511E409276E471167B
      0456A34258140BA674478E1960A9DD000C3C903C4025008E307808382441784B
      F4DE34E781F4722022CF4320222986AD2350493BA2A7A51FD5DB32041E47FB42
      3E261D6658225ECF36BC9E0D8421A6E189BC4445FCD45B6EB6C4C5F30110140C
      EC320148751B001A02108188367083FA1CF95E484771FE0F41440D1AE5B1788D
      FBBC76DEC1EC09D5030475011FAD0F38B892F870764547732BC2C7E3F235ED8D
      E8C541F25BD373FC5E73FA50B2D5EF4315340A74B71D84D3BCB093271D110AA4
      08228FDF9BB3E2890310AC72D765D6EF5CEB5A9E9377A2E70C21AC7D963EF13D
      7BE5A4536CEEA871B696A4B90818195CCB5C0024134343CA5BF542493D0741CA
      18E82409AFC049FF91B685C757E2854C1E39D63EB8ED57E433E895D6B08FE2C0
      FD0008808177292FA499EF6B2B3960E5BB76DBA6C79FB509675E6A6FF439C196
      0E3ED3760D3BC7F6E059EC3A8A02D6C3FADB9EC3F1600F673DF1D9A9E459DC71
      1CC9F71E39947CDD78DB30F0545B30FA5C4B7BEC7992E830FBE4815081AE76EF
      95020EF5E142FBA8025EDD0D3C65FBE179D139705D7BDD7509AED387735374AE
      1D4BCC67047674FB910EBF0041D8D809AE896B6819EE4BE69A8A7A21A5A04758
      F8B83E728C5CB7F6F5EB1A4CFE7D7B796FFE4E24738B6BCE75D7B5D771AB9F98
      F242D2338A76A8DE4A2C38353A0D6A829AE5A9A99F999A6742B3AF63DC8368C1
      415760E54844FBF56B49DA543BA2043BFA5045883580481940B18FF0552AFA32
      0ACF631532034079C59FD7FE6B5E7305EF3B576D9E38E6015C93637D86AB7470
      7BCD8872D29F552EE4130348D80DE26205B90E97EFE060D5F84B25F7E2290721
      AB619CB853385117F323AFE5C4DC09AA3EC5C9781B949D47886A9D2600CAEBC0
      852BD0E07B80A30A00513F7E071C2ACAD18C7190DB85AAC4765021A0449C77B9
      D6F5241185F46A7BED2A6FDBEAB925CCA0591A58DC5A3075586B8D4DF0E18BE9
      3195196B6BEFBDC3DE3AE1045B3CE6645B0C00AC6733C5F416C36A24C9CCA196
      E4844D2E21FF2180C84601E4E061E41E3D04C13B81A595750C212C9ECFC0724C
      27AEED0A06A16CA692484FEBC36D5F4F927B13E3866115471D486C1F4FE27A1F
      0B101C0BA81C8BB773ACAB0F096A42E28E3ED6628FEEE925EEA91548EF030BAC
      D72812F7235032636D17F7D7F61F6B53F0901E38ACBBBDF7A32B2D7BDE423C2B
      D83A84F35C033DBFCDBB0BB7D0BAA2D5BFAD2699AE36F1AA29700BDF9FB7AE84
      AC5A57B4CF8EE075AE3DB8C0832EAFAE3DB8FA2111FF775D5FB5695D1758818C
      5A896B320514523F591F39E4C853006AF6A8B01AE4066E1BB1E4757C6105DD1E
      7FE673BDCFD430251D099BDD27AA9AEB70EBD169BD5092DF12CAAF91707512DC
      77439B82D9150EF8D41EBF4DAD0DDD9C15818C1783F2A4CDA73D4BB128CFE172
      1D020FBF45BE6BEDC179F20A35A1B6AAA714EBAE9E16214DF58446ABC9416424
      59EEDB6FDABC73BE6F2BA0E46EEE49C8534C3E42A452DA0A792A619E70544F4B
      C650484462BAF574448C388C87A83E836D0521AFB5C3C7DB246A8C36FDE14E6B
      DEB9C55AA853AAADA6F6878EBEAE650706927214463F2B4B4AB22DF7FDD9268E
      39DBE6E14D6F1E700AD4E09349D64304E93912036884651C3702E2065E33E155
      57E08A81E43C9063C6584C4F8A63FB9E61F3879D6B997F2689BE877D524C7F2C
      F21EAEB3B07F9A74BED4874BFDB4BC068E5EE75F75006E66DF35220DAD182981
      C7EBB77C5181A54EB13A0A57A27C25EA32ED66DE704D5C6B16D6A46B23AFF924
      7E1B152FE42ACA34EBD437171C81C059075C64B5B6770D42D52ADFBBF566DF78
      ADEEC3E2D31DFCB5EA752FD6FA6A3732FC8FADAEF2953D8408B5841127CCFD3E
      2AF80581E5E450AB593D557C5719066B25C7AB8697AEBBB10E4987A12605EA76
      43A1A73A2FD7021E35B5B418C2E00D0A15037D26201188A86E047D2871DE087A
      B10EA3BA1243BB88507F1640128B6C447F2EC0337987DBA700933BB9BD96D75D
      C4FB4FE6B38671C0BD9460475F7F2B48B08B09CB9AF94FA4C37E5A1FC72BF9D4
      0022F090D7A1640DA2A48DC0436E93DC275594F705388E0769CFE0C4FC8813F2
      4B7EE0BD9C846739019340D5C580C966002496E732E575E0BA55682218B98E46
      0D76D11C6350959640550E38C2632C9B50909A1DEE5A762826EB1A0972715AB9
      986D3556CE22A6C187DBE4E2C96BE1D4D61F808185722D4BB6D62DCB6DD66517
      D94BDD8EB1355493EF8442B983F0902AC953FA1D6F096C2A8188072402112C36
      00240700C93FA28F151E31C4F61D31D40AB0DC728FC65B2064A530930720C4B1
      7BF60418A0EE5207F25121617A1C8AA24F7768BEB0B51047EF0DD5892401227A
      7F4CB71E168D6249EE3BC2B2A058660E3A05101A6F7B8F1D6531FD4FB4A86167
      DAEA1167D804EA53269C75B1453F4FDC5AD4CB6294188B55B4CEB08518004833
      40A2852F0051584200E2EA17D48D9573E8BAB74A496ABE8814A81ACAFBC389BC
      CDAA76E2C1B0221F48FC56E2414BF1BF078EB0772200013CA851F0400482030A
      27001167C9B77B0D1E8078D3F8BCFFBCB97C524382014FB9B8467D6ECA1F3F81
      8DABBE82FA498EE9CADF9E45E8CD931780D4A110020011FDD6431F95F03BC471
      E7CE59A0AAC27602C82964E5E67A709FE7B4B6A4E85CCF2BBC0101487383F211
      B0E00AB2AC94C698CB2FBACC369077881E8222EF4508E93B7D2CE35842A352E2
      78B46984B4E4D93A8FE038587EB4B9491A34CA76900351727BC51028B643C75B
      D4DD0F59EBB66DE45608BDB641CF167537984CA94E04AA11494DB62D77DC6753
      869F42EE449F012810B24AC0BB164864F71A66B9F465CBA29D4E32F916898820
      29B4DD493E96D7F638D936F7818D35F47CCB7AE41500847A1186A2E9B7D6707E
      09CCB503B2FAAB696D689D7800C2F500309ADB34F64AD7533369BC9A24DC24AF
      4B02E75EAA58E73D0C1C020F7D3EBD89DB0124B8565E77610FA83EF47AFDAEC3
      1C97BC6989080502AC40BCB5E48BBC6FFF785A586712E7BDF90D26D52F2C3008
      D432465243F34AF74F1E2D20ADBC692339D3BA4A68CDE417AB30528B68512351
      D34CB1D30420AE3380704CCD35FDC36C6C0800843D87175743B444519340A7E9
      56497685B5941BC178B62037827E6C463736A03BAB31B84BF0365C821DD90E80
      2CC31B9982BC0080DC876EFD253AF4723EE34CA50BB86E7D916EC877D1034AB0
      AB78BB7DEA61641EFB1F0E20E12FE46082F1B22AA9FF0A7FEB00BF27F7496E14
      E03156A31C01832B41D2DBF8F10FE379BCCC0F9F8EACE0EF1DFCD8444E9006D9
      178B0FAD2A4D1094B1B1652D1AEAE28387D72C10F72F10B9802A049465A0296E
      EA0714545BD7031C940A3AEB406DDF5C775A1F40EAA9366FA985DA589464A92F
      3C65D34F1C6F738EEB6F3B29164C24211D87A51F4F5157FAE01360C60CB538C4
      01C9B11E80A4032079781F05877F1440F200905C002487B625D9E43AB2D898CA
      6DA492144FA6303009AF23498C2C0A0193FA10E34692F14812FB7820130F8537
      813A1001470AE0E2BC96DE84BA38B6144254692892CC412751277022AF1D633B
      8E25BCD167BC7DD0EF041A319E63CB7FF80B4B7B8EEAF40D2898BC42ABCF8796
      ECF7C692F5E83C0A7F42A1368F00A4C689D712DED51338F0F0447F4B21CB1AE4
      4C23DE1022290B810B6676BBD5196CF06093B76F7417DA881455C47BC95729E4
      C003F1BC118FD5A4B0884456687B4EC61F62E4599812791E309008CD055E9017
      7B561B1155837B8E921CA640D4EC303CDE57411689C0C4B51E518FB0F66EB6AA
      2657375B15627A131F051A9E0483A13C135396AE3C20AF3F94BE580A13555B48
      BFB2A52B6CC9E55741951D6F9B069E607BF120B77F03AFF33028BBE440924860
      A7C923C03BC9E8419E0D459FCCFD183C85AD50C737F51F67B320714CC7A348FB
      CBCBD6B26D37545E0A01D5C34A0A4ABDDD5DC104DF5B09B5372BC3D6FDE68F36
      09D0594B3E231A491C309E3C1D6BD8B1080739A0CA20D7928AA7E3481D00583B
      807CC4030140F6E281D0A157CA95C1024C43C48A76DE070A560699AC77813DCA
      BB8DEBD98238EF836BA36BDB44E7DF760071DD7D3DEFC20105A67A30D2377CEB
      E694A897981BD225EDCD17FA068E03753EC715F139A58F97C077071EA0A20F91
      22CFD0EB40EC75237633769026BC064F3C3DE21514B2EE54D98FB47770601FC9
      581551A1AAB88066CA79E810E601718D0BA1CCEF2BC8A1A68C9200FD3EBFA2B4
      89F7FB36169FAF6E011E8068F68B1A63CA13712177F49A74996E1555911722AA
      AF9F6077DE88425AE84779238DE8CB5A8CEE72BC9142241D00D9037068EEC86C
      BC90D7C9913C0A98FC0EDD7A15BAF37CC43565441F77F7D309AA1909CF60FFC4
      9EC8C7F2403A605CB9AA7244E0A19095BA451EC145E8A906889C9093381917E1
      41FC0286C11F084D3DC18F7A931F3D87DBB5C4F67683AA699C189E2E28F507DA
      AB8B65B3E671C8E3D050179D549DDC605C6550FD2920710A1145E72D446F3349
      89B00C58A0284717EC9032C1F1558B6BACA4665986356CC0842DF6C1D53FB5F9
      74C0DD33E6148B1B003F5FC970C20A02907812E4D1E41804221E90906F60F379
      21AC3E9677044072941FC2F2C358D9E425B2B1E6B201117922395895A2E10621
      AD945E80860304ACCCDEF4BF82BEA9709680C5818B139859AA4467732BBC9009
      03472107E56352FB8CC3421C6D51C71E6FDBF142E6A160DEC6335A7CEE8FACE0
      393C8F3D89B4BCE0B7ED2F3686B7FBCACFAB449712F442539EF52500F158591E
      587CE87D78F79D32569CDB857914BA90A782C5AD4DABF9ED2A941388F809F9C0
      6B690F7FF9D7E6A3000270B8D6E31E8068434BC92837E3C49F5FA2EF09DACF3B
      E52E9A647B424331012F64D18A15AEA97BCEE371A139AF6052E127D7C72342F4
      7800226E9DF831F8760011780A401C88A0907DF180C46B8BEE28B33E8868DA9F
      4400168C8975A0E72AD1393774B4B55D31B6FAD63FD8EBD0AD67E2D9EE1A0488
      B04E767EBB87ED3D6220C6C970424924B4BB914C3F1A00E1DA261E032B8AB5B5
      092361191ECB6BE427165FF273AB9A435F2C0D2A43C93461B1AAE795949CF78F
      F00E9332AD20D7D6DCF6079B82C7B2996478C2603CD601E3DCFA8D63DD26235A
      57A9DDFBB43302D5A34D39BCA4EE78B5C70174034EB7F92309613D0680C450FD
      0E8D570ABA9CDF5906503ACF01A343215089D69163A4C943E33ACAF39034726D
      DD04468DE6F55BEC687DC8109161120CB20A2E6D30173EC81D044D2A1DB0FB86
      8D07E85E8B1E071A4835801D88FE0E0044F72501C038E0F0BD481DABE735795E
      910C88E07B832EFD0D780A6A62A973ED48044C0735CE710BC3E38CF6FC7AAC55
      AD6AD44288F5A156F884429C172BA3A515D070F3BC4200128088461D0B40C243
      B1C220124EB0FB35230292160CEC660DB402483419F100067936E0118F41BE19
      E0580C3BEB5DE42F00C95DBCE67AB58302444EC1C3198E0ED7D4C32359FBDF02
      505C675FC40DABEA8851DB953772C800D21178F098CB7728B6867C9BFB47A1DC
      192D5B3302E01023E05200E246E46E7EC8DF009089FC60B1AC36713F56A32001
      8DFD9C9472DC35CD1DA65F5CA166113BAF23C87504E0116642048C066FC29A2C
      552F6CE19403CA26001059476E7B293C41AFA066351DACA6B88B560EFB164CA1
      69DD89781F14FFD1823D9E7082A3E4C2A6DAD3AD8F6D274C15CD639EC822A4DD
      04CA3C51097492D94A68A7417D4CC68A94F5E692E88892ED4A6E8BB1254B4FB7
      FA5B34DF64BC188150029E8C12F3AA6417EBC6D138F1581C85136696D85A02A1
      F4EF41F944C9641E39D8B261C864F43F85EEBE346E3C86EAF881A7D8B213BE6F
      CB2EBACA521E7EC66C23B45D35C4137D148BA609F75874520167A0003D252F17
      3F1877EB7B13A1C143CE8BF0AD448528823C89420C0A752969A884A036B1AB72
      47A17A8AF543097A707D78CDBC109944DEA25C7CDDBACD4FB8519B3FF086BCF9
      257E584D790BDF1AF5BADFCA12F5E3513E80C8DA15180A40B41EDA81D00DCB90
      47E185A3BC9C86075E4EFC3C8C0BB3F9DE99031F0716FE7B83CFE036F044C200
      2282427D93840ECE8EB4E1C5C0EB6A3987F4A472638AB38B2CE3ADC9B6E0F2AB
      6D1A5EEE0A12E37B0847C653579470382CAC6E633036C6913F1B038162ACE51D
      77A265611CC41E37D6760F398396FFA7DA4466C9C43180CCE23110D4AA068BDF
      59D53558F9B4F077F3D615D6ABE6399A36AEFBED9D366B183DD3FA021C181D09
      783DB118367124CC1D051D265836868C881B12C70AD4FAC4EBD9DBFB0497449F
      3FF26CCB7AE2450024C97DA7DABF97010A07303ECA0526CA33E22D56218192F6
      3C4A19039E61D0488E4093173DE5EB0189D69F42950A7D79C4052F8DA1EBEC72
      95FE3A7133DAA594B1FEB58EB5DEDA3D64AD3FD68FBC542F8CF6A1B4CF71F707
      AD79C9712F9F174830744B60E6AEB91F0A74B98A20E4C97D9D5FEF3B59E7E497
      D4E1A19542CEFACC242BDBBB13BA7492956EDD614D0A19B3DF44A1A672D99A18
      67DDC61AD0DE9327226F26088B09401AD4B78C75A6647A789A6247D5ECAA1951
      825D5E8980044070AD50D09D0D00490DC6782961AB02002445DD7DF9B70286D6
      34AAD85F02441EE0B95B78ED8F31C4CF52D1369A5033D88F565985AFBB3B0591
      4F0D209DD47988532CD472F90E6E95EF508C4D14DDD120E7D980C24F41CA5BC9
      733C0442BE84D73115E0580E906C075012B9CD4154D751C509A953A25CF387E5
      79844356817BA7131B28237920011DCE9BB08635E3D820BEA7819253BC9EA5DC
      BE483D00416970318CF8A586416D7DF2417B6BD8605B48AE62EF4025A4875826
      FDAD141B56E5B78AF6D4EB4A00B21700D90DD57237AF8986252385AF2230818E
      DAB4C723BA95C411B70E248A7CCA1E36AEF364A06B0A88F650D9BEBBDB30DB81
      152A45B28B8A76513577532CA6EF535D80C20C39E45D945B29387C98651F36CC
      0A7A9D6CD9306AB67467860896EA07E43DE26EFE93ED7BE16DB375503BB3991D
      9143680E6B499BAE8CA140DA841E804821FA0ABF1D40BCCDEC26D6B949740A4B
      7971E6809D5506F346C9C172D7125C13100161175AF040D955B94788C28A2EB4
      48584040D27EDD420022F0909721E0A842D9780298E0517406202E54130611C7
      90D29556C2D6ABC770B16FD684F3B682162EBEC52AAFC0CD1B776BC5630F79C9
      F120718FA2091A4F72CE5A582F1F15AFBEE3C3DF47008711C74D4E64717BA154
      17FF063B5AD55ABD8A735A58624D3B765BDEDBEFD99A9FFCDCA671BDD740014F
      1C700246C42812D7639D241D331ACF03E2061E48349EC0961E23C9CB9D6C1F9C
      79A16DFCED1DD6B869038044FE8E51CA02DD0ABC376A9F48A6F3DD1A358BB26E
      AA846E9B93669B0190D9D47D6CC27B8987BE9B042924819A93448CA234D6B5BC
      E24C98808EA8E10388BA2A246A7D02361B069E84677EBA653FFE3C00C2F880D2
      FD8ECDC758672BA65F5C19ED51CA607E69DAA24416BFB3F6010D4FA83B22BFA0
      635221AB0BB7F920D2AA10920004E00F6A676400BA35C13512A3C959E7624E8A
      7AAFDA2DBC17AD270F44BC75AA415ECEEBF3276D86C917AE3643B54EFE844697
      80F745E37F0391272D11F946DF29F00F447F2B1CD5443B1A149335E1D9656F5C
      6FCB5F7DD126DC79BBBD74C375F61A1D2B5EBCF25A5BFAE85356B6997E74AA99
      2987569DBFDF9ACAC985A9A1A53FB6D801879F5B11A0C8080B483F0125D8E9B2
      D070AB604AA27223212069F31B34AA154A1320524748AB12A02842DF6612CE8A
      0138D60320F3D6AE5DFB2660F2383AF87674F25518E5E7A13FC7F21D03D8C1AE
      97565720D259AD9F1EEFD203E9E0CD028F60E893C0E3BB88E862033500851FFA
      7D75CF052C6E573B1250F10D7ED86C50720D0E47143F56B51DF984AD4A916A5E
      DBA04479001C41C82A6027840124DCF04C6E9F5EE3D1E93C268C2E4E40BB7345
      73C4C6B5A99DE5EA06EDB01AE48A52FBD112B5DDE6DEF0737B7D401F5B310CC5
      3F82F0D020E2D0B40BC9EACFE6567F226A2BA4D0D5E84EE01145D1E00ECDF0A0
      F5847A53EDE5B5316A82873288063476033EAAC7D83E4054E011B699CF5B0EC8
      ACE4F1F52444B70E3FC9768E38D5B663196E2597B19EA4F78A01C7DB4ABAF6AE
      A525C9E6C1A3685542088196DEC924583348D097741B6B45478EB17D476299F6
      3EDD12069C01788CB0F958965B7E74BD153C3FC1EA97A358D2695D525C6A2D95
      D403A040A5E8CBB06EDC39513886667B1F4EA7F3129B2EB9E900C407111F3C64
      A579218626ABC0BB90880EAD8DAD73ED3671D00696C46D1B15D01F153D86E509
      F8B42ACCE88349FBF51373C94F3A0B384476801EE14024F0445C080BC092A20F
      3C10478D0C289B3E5D53C0E15DE70F4326E11045787CAB37DAD7B358258ADF2B
      C4292FD559B07C9FB37E9DB5487C1EA90B89CEA50059716EB50C1155B7A50D25
      E184FB1ACC24C5E5A5675CF842E7A9894684AD5959342EDC6B792FBF66CB7E70
      992D3BFE24DB3278BCC5438848EC7B92C5F63BD1625813310C1EDB33689CED1C
      7A1255EBA7D9FC134EB6B537DE60B9F4AD323AE836371459695391ED6FA12A5C
      F90785766108D5A99810EFA359FDAE12636DDB6FFE6073FA8D76209444223DB5
      2F9DA1F186C5F44A4532A088A71FA3C25535EEF45AE668C48028E17B78ED06C2
      6C0B8E3FC5729F7816008971D3135B285AAC6E2CB5326E2B6A491A43850F46DC
      CA1B72612340C30DAC024094A06E145B4915F275F4E492003CAD7832F24E6A38
      67CAABB96B01103830A2554A25612255BB57D4D2315BC00408E97B94B3D05A92
      C1E29A85AA0F98A62362E0B86BE11B325A772DCA8FFAEB4FAFF7BCE420F4E811
      21147213F5566B5BECA98A90786C2AD6053DF43C9D71C052972FB377FE70873D
      75D96536F9E69B6DDB134FD9D6071FB70F7EFB277BFFFA5B6DCA6D77D8BA9708
      2367E65ACBBE22ABDAB79F30AF97B37580C8BE716B0803438C2C79C30210C7A2
      0BCD29711115DF480E138682B9EDA1D096E68FB4000C0A693560A457AB6684D4
      402E809108886C5BBF7EFD922D5BB64CE4FE5F79EE8F00CE357CCE051CD33881
      08BA5B20224F240867755870D819887C5C000983C7D7F952F5A5EFCEED6000E4
      240EEA227EDCB500C31F39D86788C7BD03322E004C36E26DC4F023D58AA45021
      2BBC8E5A80A33D64A5812C028F302321C87D082C82FC4710BA0A686FAE2D890A
      747C947709304E7E6005C92A91D5EAC20975021276776181D5AC5C61932EB9D0
      DE1ED88FC98028FE0134B21B3CCCB55F575E228A22BE582894610F4400B21D00
      D9DE8FC2BDBE035D6F2A79204A4E0A44E4496CA6D7D15A0061195D74171D3FD6
      DEE773A7717FDE49A762499E6F6BCE6538D43997D88AD32FB6A5A79E6F1F9C7B
      91CD39F9549B3C74A4BD47D3C419148EAD02ACE2497C16C2DD4F3B1CDAE511A3
      2DADDB3812EE67DAC6BE27D3527EA82DA14A38EFC9173DF048CA648313132F61
      921C7165719258F28E2DA3822FB9D01F02889F1076D6BAEF81B864F847192E01
      FDD6A336FAD61C1BC14DA7539B0C5C742B83364A75B2A9804D55D081B8C7241C
      81369F44F91289BAD3FAA28DDDC800AF3A94A18AE1EAB06E83446730AFDB4BA6
      7B20E2802454AFA2E392251B80876E035697FB2CC4CBAF4859A1DC249C1D4F50
      10884816C17CF9C07BF04083C367A95481BB6E7013B7D578400217974B539C9B
      DFD34C43C32642A24D24AF9B2BA8FA67829FC2178D489DE69BAB3604D64EED3E
      DA81E4719DB66DB1B467FE6AEBE9F03C77C4493687F0E71CC817B3097D2EC098
      F840532A9931B39282D09554AFEFFCCDAF2DFB9D57BDDA0FA8E745A599965D99
      639955FBF81558E0CA2DA8B53A43C51A4A89C933ADD2A27658D4ADBFB3397813
      EBA8F988E5F395D74B12DB8B5C47166B3C97B06D36B547EA7AE000843C9C5AEF
      A898515EF16608248B69A152F838A1D1BD7B209C70FCCCC869868022124A5325
      9E10FDE3D41FAB95E25CEDC37A4255ED002290706CB4080069A05E8546908DCC
      2771D7855F21AFD3E52F00821AC0A69AD642959CD70ACEA912F2CAA1C86B69E5
      BD6E3097EA6B48583BC6192DE6DB05E3C9B8069E88D2ACD7F07AAD47EABFDA90
      66404C0D265DF5BE3A346054E8FBC546E4CAB58BCBEBC880E1BC2A1C9CB7658B
      BDC96C9627695CBAEE9E072CEF95372DFAFE476DDB6FEFB63AA64916314DF2BD
      9FFFD29E82429FB37CADB5E6D1D15B5E0B6BDFB5818F001047F0606F067A2D68
      87A2F0BB727341ED49B8F030F046C24D1A9560174B559310018E460CF55AF46F
      39FA761F9E481AE1AC28F2212B91E9D48BBC00AEDC8B017F037AFA2281080035
      406CD94F0A229D024880387CB86BC4852EFA4FE4BF902FF3DCD791C3901EFC3D
      04857D32EED525FC881B018B7B40C2E790F791A5781D6A47920078E4A8A21CC4
      AC0438EA541488D7D1CEB272351D9ABA161A43D959F567F8F1F662217F8CA86B
      632DFEB8FB0FEBD7F1D3A540C5B0515295FF1514303EF45D9B78D659F66EDFE3
      E0D8E3B6330D30BEEF00929BD0664960EFC2425397D4BD586D7152E85865B154
      EEAA83EA367216028F44C24E49306972891B8B35B393C4FB261A1C2E3E1EC038
      ED145BFED3CB6DF73D775AFEEB2F5AD1FBEF5AE1A4F7AC76EE3C6B5EB8C86A67
      CE4566DBBE096F5BFC334FDA4AC6D74EF9FE053681C986EFD31C71416FC21784
      1F567F8F0DDDFB24DBDDEF345BDBF7149B0D036BD159975ACEE3CF592BA34F5D
      BF2325CB698BA0CEAC8A472BC959CA3928554F1EF1D9C52208666503B08E9EEB
      877B148772A12671F539416E5E369BBE1E51A762CD80502D892A9C5D67D92AEE
      97010C921C793D1012D4DC2F9318701A2377A1905A1AF75361EE24A7586B6292
      B5A69084CDC402CF25BC865566FB798F9A0CBAE42303B12AF008ABB8A5416013
      E38435FE55C720A2AE2810D89C5EB88BE3D4A60E8AFEE4C5783461C2574AD812
      1229832051589E6B958D258478E8B20C674810A12161B29CE996C62D4C1A2C64
      018A0B03A14094D095C529E74AE051C25C0DD53B147102512128160E1D40A885
      D62963A48639E6ADB9286C0AEC5CBD4D21BF4B21C4347E67018FE10D6A9094A8
      9E0D4DE5BC8F097F65FC7E42A716BDDBAD818CC79FB65DB7DD6E2B7EFA337BE3
      9453EDC9A143ECF1A183EDA593C6DBB21BAEB58C17FE62F5CBE631D06C0BE71D
      CFA2B9CCAAEB8AAD9030552109DC5A1477ADCEBF805A4A137690E56558DBDAD5
      167DFD2D78B7636CCB111035C8BB89C59748D23C897A13791F3930AF724200A2
      19340E4058D77B08E16E21E12F302B79F871726B1829F151D4B4C4F11D39D6B4
      8FEBBB4FBF93EB4FAF2F63667BAB14B5E8B2A2CA8AF9C8ADD69363A361F983A2
      4EDAF0403C0061A402005F41FE48D7C1852055D3528967B32FDF2AF368215F81
      474DE84CD28A07D406F3C90AF94E350ACD47603E590EC7910D300792CB5A54F3
      4855CE535469EA485DCE5AE35A583922638771D5203F4A9A59F384E58AEB1926
      C7FD3CAD1DCD0442731C601D165731CE9AF7B6F2599B274EB4BBCF38D7E29F7D
      D9CADE98646B7F718BADB9E226DB72DDEF6CEAF93FB1BC67DFB258DAC63C76FE
      0F6D991A5012C2D224C77ACE8B638F6AB05BD81012A9C79FCFF3F72CC50FA726
      868757050012141F067DB534A75D745F546C0B067B137AB78EA84F25D19F220C
      F92C80241A0059B775EBD65984B55E264F721F7AF906DE733186B83C91FE1CE3
      D12C71D58A7C85E371145FFE766DE1259D151E1E2A80B483071FEAC00360E9C1
      170D45992BBB7F293FE29700C4FD1CD88B20E13464253F662748980C80E4817A
      25004C3588D94022C885ACE475689EB010551E858B73FACDC9C27D663A3AC1C1
      6301800473A82301C425CB14AFAF15B3467910B4038A2CE385D76C0A1D6C67F6
      ED4767DBE18C9855EEA1BF031035B6DBC506DBE30388F8F349B47FD0AD46D3AA
      0755BC4B92C38EFA6E3F2B224490C354B98D24BDE7C2B25A72C61916F587DF58
      C17B62456DE6FB487CE6B3E97250AEFBB50158E0D92C74368AE5B3092836B398
      DDD6BA71ADAB1988BEFB5E9B79C6F9F63C95EED3291C5C34E8449BD1678CBD41
      4B95D9675F62397F79C96C3D9F9B247A259B0CCB4A20A0300C5B1485D7C626E0
      166B260010C74A72E279134A2A2A67E00044C571AEB122716014B7AAF4B5712A
      444DD40695821458D022C312F80DD1346A8C262EBE7D97353062B76AD1022B9A
      399DD9ED93AC60F2143B306DBA954C9F65A533665B31405936772154D655D6BA
      1E45B8034B5A49D904CE470A928C52CAE1771CE03BD8B0C6C62513EC6A1C84F8
      9A4FCF047B2BC2222DE3772AC4A1B083A31DB7B7A820CF82A5AA187D0D0AB6BA
      960AED7A420835546BD7E60308FC5D8732E7B1464230F5280C0195ACD01A3707
      064343B17772098D78A94AA2960120A5C4ACE5C9019B000E5E49E0791C4001A5
      720D533966184A8DEBB759E3CA4DCC375F63554BD75839CD130B366CB0FD097B
      60F014A1385044F5FBB0DE51F05588BC04A8B6B61DBAF59AB5661BD659F3FAD5
      345DFC8001662BAC652B86C15E725A599CA77DBC8ED0958A1205B03A66B55457
      F16CAB12BCCED2063C98D561529E9A17B26295655C7F9B4591C3481D38DEF2C8
      B564337A40E15917BE62EC4006B54592C0030903C85E3C69856157D376A5E2EE
      07CC165394BA99E3DCAB35B797A985804902D73196D05632C747DC1F13D859F9
      F21694FBA8C1BA17983800210CE59A962A1F22AF040069D2C8685AEC08F0E58D
      1013E4FD9C57191502802C4081FE74CD09B1182131D61A1F6D0DBBB759D586D5
      7660E9422B9C3DCBF2A74FB37D3367D8BE69D32C7FCA5427FBA7CD60BEC95CAB
      58B4D8AA972DB3E64D1C735C2C9FC51ACB48B63644206B45B980523ED787CAFD
      AA422B65CDE403F0F915F946B3242BAA65FE09613A93C7C4C0AD2D6F4FB0D77E
      768D95BE33CD9ADE9A6A53C69F6F79773E66F6EE3C7B7ED829B6F38E47AC75E1
      1A7BE9A7D7D80B37FEDAEA98E4D88291D448A70C01BD2AD43F098004212CAF8B
      86BA6D7812008B40440976F4AAE179B4A16F5BD1BBCD78222EA4A59A11C02417
      108907443602227301915735F1101D7D03BAF82200493991BE7CAE0A0EBF816E
      FDB25F10FE77002220613BB44B8700125165EEC2563CF6658107E2C0034F6128
      AED9A9FC80CBF801BFC2B37810907805009989ACE187388A2EA8B88FC7CB0097
      1AB1AC827C878043C97281871035CCB40AC0230C269D8188926172FB5404A6AA
      4FA53BDCBC02C7C3F2689D8E86A51C402D77C80B5866B6C53DF2B4CDA0A9DC32
      368B2609C6D1A22401E6952ABE137AF7B7DD34B6138028819E0870A4F6248EDC
      835B68B3A924BFB3A824DE879440B72CA6502B937CC60747F4B21984B776DFFC
      4B2B9DF28EB5EEC672CB43D956E46061EF638FA02009A910DBE03159426C2A59
      45585756CCA629E5B630CB5AA3B659F6C4776DE7438FD8BC2BAFB6574E3CCD9E
      6433BF74C67916F50421856836040B4616165D24BD3834E721288A93D293C882
      1689480AD1D1989D788C94A0304E2122173AF063CDB584089A883DB795E30D64
      031E7811B627C6DA366CB5BA851F58D9E41996F3D21BB6F9AEFB6CD12F6EB0A9
      175C6813CF3CDDDE1A3FCE5E1D3DCA5E6762E284B127DABB279CEA6402DD67DF
      A281E08413CEB4774F3DCFA69F77992DFAD12F6CF5B5BFB60D37FFDE8A5E7FD3
      9A17CC25B4C3468F4539A50028F97CAFC04403BE0011B17A2A093D4802E01075
      55F44A8FE6A9B01C962F9E8B942CA6BFB5A0089A4AF81CCEBD95735B2BCA25CF
      E1114829B8069A0AB389D1C4FA1373A6550C1A191A7C640D0C9AD22AE2EFAC27
      157D5595A2F0448D4661D66CDC65A5F35658FE1B532DE6FEA76DD52F6EB3953F
      F9A52DFBD10DB6F82737BA4E00AF5C738DAD9CF092D5D0EDA0A1A9C0496B03D7
      B792EBBC1FE558A890160A3F0365A696EBFB793C87735DC0DF0778AE90D768E0
      130973D146AD649F3516EF770AA959E133670CA9E8913B78020D3B775AC98205
      563E79AAD53DFFB2255EFC334B19738E650F39C5B23042C42E548E234BEC3E3C
      1179200A63697099C2572A7AD514CC4498590ADDEEA2C9E286C1C7DB815FDE62
      F6D28BD632E95DAB993EC9CA67BC6FC553265A154AFBC07B933192665AF6F405
      56BC799BD73A1EE0D7EEC3DEF62A6CE4D98A2ECBFAD2AD030F5FD4A3CD55ECCB
      68D038857CCE81FA6EC5B267B6EDB2B615AB2D974841E2F3CF32EFE67E5BFEEB
      5B6CDE5557DAB44B2EB64967D38A1EAFED8DD1E3ECED31E3ED9D134EB277C79D
      6CEFB1E624EF30C7E7ADB127DBC24B992F7FC5CF19C8758B6DBEE73E4BA52F99
      0C1EDB8A31134F684E39A332009DAAFE1626366AE856534B39E1B77267C83411
      162C05BCDEFA1D49F31FFFCC1AA7F1DE698B6CD9393FB14D975E6FDBAEB9DDDE
      3EF50796FCE8F3D6307FA54DFAE56FEDFE4B7EE20044B5334AC0BBF9430E403E
      9C21EF28C36E2FFEBD7C68187933ED0389AC8153682C48AE03042A3A742082DE
      6D4507B7100D723523DC9669EA212985440064F3C68D1B1D88D0464A06FFF5E8
      E5EF63D08F4117F701988E502D1FBAF7BFD50857F4DE8379211F01902E12E6ED
      612B791EA0D5A900C0657CF9CD78160F0112AF72E0B339E075DC46FBADD7F7F3
      832A78BE961F27F0702CABC0EBD08F177874E67D1C2A807889D58E01C471BC79
      4E943AB4240A024B272DD376FEFE3E9BC1B09ECD54E42623494752D877586F4B
      C0EA4F6603ED61330940C4AA4A527117CC98CC6EE4238E1E4615FA602B386230
      55E883AC90FBD9B0A5C4B49AF1CD236CD929A759359D702D6A231B1B855099CF
      42A11F550B3C7A92ADF0863C6B99D8B16340A98E008BAD0D57DE54BD4C71925B
      D0B92C4094E9CED75FB679F7DE6573EFBECBF6BCF3A6D5EDC46AD57C6DCD2EC1
      A293C2F7C2302423F974F9144E8495C4EC45BE9204B5172E41A76431A23C8312
      984A5E7AF167C20A58FB46184153F4AA77A094162EB5DCD72758F4BD7FB6458C
      38D5ACEEE90C379A3AFE347237A7DB82F127DA8251A369273FC2E632CB7DC1B0
      51B608593068A4CD83AE3A9FDA9A798C6B5542770661C06928B3C98402DFEFCB
      AC157A42CDE573965D70B16DBDE1264B7EE4612BC18A34C6F45A2E0A542DF609
      A32976AD7C4950F3E392D8FA51A25BA24C95A8747506B2600977A8BF59732AD6
      71268A280DB08D83DE9C81172849C67372E1362C527940A9804B0A9221AB97F3
      5E029800B46D50635D0E436D29C86B3466E631882915AB77BE2DB9E50E9B7CC1
      4F6CE2B8F36CCE09E7D9A45E636C1A859D93604EBD4F22FC2FFCEE3B47F01BEF
      BBC3CAD2A2ACA624C5EA8AB07C8B050EF212380666A3DB9E5D284BEEB31E2D99
      E7E3B0EAD339465D7BDD26F1378FB531E0AC4D1E0BC9782BC160A0B6A4FE006B
      89EA702B2BB55A0821096FBE6D4B6EBCD516FE00C5763E49FA9E8C5B86ED9742
      01620C05AF3BBF7D8CED3D8CB93347E17D10C6CAA4C0359B225525CFD3F1B8C3
      001287A7E27921C36C111D15D6B2A6575C70BECDBFE05C9B7CE669F6DEA9A7D8
      B453CF44799F6C7F1D718AFDF5F48B6CFE3D0F5906DE94F23035AC61E5179403
      712D73FCE242DDAAA83000909646425FD5849954539191624DDBB65AE1C469B6
      F7C1C76C238A7819B4E7D9B4809971FAD9440BF84E8C9499340A9D35EA789B31
      78086CB6FE369F09A00BF096E631D66001A1B7C5748F584EFE66EDC8536CFD98
      D36DF9289A420E196B93E9253669384D46019B69679D631BB5DE9E7AD28AE64C
      B7FAEDEBB9F68A12B026E4ED11EA34BCD4C672C2661875853BB7DAB3D75F67AF
      E38118B3E2CB09572D3AFB72DB74F98DCC68B9DAD6DD749735CDC07B5CB8DA16
      DEFBA83DFCE3ABAD313DC7EAF20A1C80B81944228EA8DE2AE8AC20EF390240C2
      C011DC0F00261CB60FC828BA0DC259C14C7655AFA36FDB0424E860D706C56769
      95C3D02A202792B8997F1B366C9887BC4272FD3EF222D7A0B3CF23AD703C3ABD
      177AF930F4F5D7F97C9568B48348181F022FA41D403A020F1E739E875F5DAE86
      883DF87B281F7C2A6875196ED32D20D8C3C86BA0DC1C6ED77320311C78163FA2
      8883A844EAF8514D020F0D9917788481236059859908E1EE96070B5FE93947C7
      F301C48188EF81108C701E480020ADA2B23A10C12E67C36EFCE5EF6D163D8976
      509C9709DF3EFD70A8B3DFC302A33D895A688B61A54D1447015F124C96D46E1E
      806451ECA5FE57029002EA33728EA246837CC50E289053BE77946DBCF452B3F9
      B3BCCD2F4B926EB8CDD01E2BEBCA89AB13970738C4FD6E04CCC48ED294C46A2C
      62C758C1E26EAEE1F5955872E508D65149CC763B4038A32C6E2756298B1BCBBC
      95F8B7365E1309E8122CEA036CD60A573015D04883A66DEA96EA0188AA86BD6A
      7D2CF7004094247480A37A6EB1D860B5110E69221492BF72B56D7DFA595B74DD
      AF6CC90FAFB06567FEC0E691F45DCC665C8B47B16AC4785B4BE3C64DC347DA66
      62F71B070EB6CD03211830357107B3BCB72B8E4EDDCC56A8CBDB38873B0801EE
      A49DC65664635F668113F65BC5736B609D2DE45CCF801A3DE7F8136CC5253FB6
      BD7FBCD70A274C64A430A19C0C7E73BE2C77C21C5C6FBF60C02B9E13AB573CFB
      4AC003EA646B5EBE15AC5D675B5F79D936A31C925F7CDE725E7CC1D29E78DC0A
      9EFD9BE53EFD174B7FEC29CBFBCB0BDC7FD1B29F79C9350B8C79F8AF16FDEC6B
      963869BA156D01A015D7C7D23768D02E5703ABA6927C5312A1C36557DD641348
      2E4F1830D2A65241BE8CF919CBF142D753C3B1BAFB68DB3AE6029B37FE3C7B6A
      1C09F2BBFF608D2958B9FB52AD91EB57B1769915CF9E6909CFFDCD76FDF9118B
      7DEC498B7EF849BCE1BFD89EFB1FB3A8071FB5B8A79EB1B867FE623B1E7DC436
      3FF2A0ED7AEA69DBF3C28B96337396B5EC614D15723C6AD70E4594AEA22E1FA0
      B0CEEE3F3F61D3CFBAD026713E3FE8471EEE9B3D6DEBF7FA5B3E80A64ED23147
      325AD98D06A0AE084F5BE301944CD79881A0B167125EB74824AE2E8931BB9A96
      B80E3AFB6648206B3114168F3DC1660E1B81F21E6EF3311026717D5FC7FB7E6E
      D869B6E8377FB2B28D9BD85FA584A9BCDA18AD69C74C6B6F2DE215167A202226
      159E87BC6F35345DBBD2629F7BDE16FEF45A7B8371BE6F434A99C02C94993018
      578C1C67DB4F3DCB769C7A9A6D1C79BCAD6754F43626724633E2791BC6DE4E0D
      E78280A031D3F1FCF6184073379D234493DF74E400D6210CCA2134923C1E220B
      048129D4C2CCE27D1F30CD73C35557DB8E3FFE0123E9256B5EBD0CAF6437E165
      C0BC8875A73DC89E6DCB4AB5657FFD8B3D70E6B956F4EE546B9E34DB165C78A5
      65DCCDB8EB9BEFB5673022B25E7DDF5AD66CB78930B2FE7AE36DAC59AD213C18
      08270A373AFD16EAAAE0DAB1F8356C61065624880449F5484009F46247345F79
      230A69292F02904000CC6AC203A90328CAC97F14E079240944D6AC59331796D6
      4BB0B4EE26C1FE0B425EE7A2B747F0BE9EE8E8EF72AB9654AA11E9B4157C7B72
      240240DAD9560A5BA9FC9D03EEC1070D454EC595BA0C4FE21680E261E26BAF93
      A899CB016E004462D542978356FB75D708911FD20C78B406E0A19055985D1514
      D10427319285D0112A871F0B0044D66800202A4F1280A899829E5712DD59AC32
      CB5564979E65EBAFFB8DCD3E8E6A6E2A80B37B8DA531E2300AF6A80E3FA2BFEB
      4FA4E4792C0B530D15052029478F8409452FAA6398798EC72110C96671AA215E
      C1B013E97184D58DD7B2FB173F379B0780306BBA4D162F0ABF515E02612117C3
      57652BF44EE515EB6B48103BE5EE351D743D9608D334EB3DE5B0384A49CA9260
      465BF022857418EA4318A60E575BF50795FC5D88A5B41FE051519768B66E1E36
      6D1214E668AC5165B0F7B355981714E7094464D12821ADDE43CA9B2851AD0A75
      B1561A93926DE78BAFDBABE75D6C2FE2A5CD85CEB99956296AC3B18A4EC0ABD9
      809B687D110565396118353303201FD076259A3088C27FA9D4B3A4212AA8547B
      0EB5C34FE9CEB9E4BC4573DEA2A8AADE09606F81809032789CEDC662DFC06B97
      E0C54D27BF341305B2EAD2AB2CEAF7F75B396DC96D1B4AB8504C2F4E9A32DC7E
      A75351B75DCB924A8E7B3FC097986ADB5E78D59EFFFEC5F6D2C967DA34586F73
      F196E6D2247301D6F29CE127F2D9CCC41879AACD1E75A6CD197D8E4D1F4EF86D
      F04924B1CFB7F7AFBEDE36BDF89255ED4589284FA51C15C646E3B2551675C7FD
      368D6ECD135913B3303096A1B0D6727F1716EF0E8C88A8C3A17A53C7113DFC5C
      9B43CEEA9513CFB05DCF41814D44E9230A49AE250CA2962693C613D61B39C6A6
      9F74862D3CF5425B300E2B7BC469361D0537FBC4336DF28984FCC68EB709279D
      6C6FD059F9B93127D8DB4C235CFE87BB2C6F3EF908BC4385405B2B4448A0A9E2
      AA65B6F3F63FDAFC1369DBDE9F31B8FDC7DB4E3CE5D4E346DB3E4258D9CC0091
      51940628682440BE5AED402FCF02B883B1021E787800E204C69640641B40B383
      EBBC890998AB60292ED3002A0C844D00D50A6A4BE640417E9D99390BAEBDC5AA
      D711B2C5036923FC530F38681ABB233884FA518962FD61753A1E9E7E437A8245
      03FA537F72A5BD330A4F63E0185B3FEA0CDB8677B38B6BB691B5B4EAC81EB6F6
      68C646D3FE277120AC32082FF16A3809AB2C968E0FF1FCA64415F6529C9B0578
      E4B2DEF20839A71DC59E6614B55A11297FB91B6346D76C1BDEEF1AFADECD85B2
      3F7FDC89B6E6D2CB2D0D0FB861DE6C3C438CB57CBC408802F5A978B039E9B613
      02CC1DA701380F3F664DB316DB4AF447FDDB33AC61DA127BE7D2EB2CF5B5C916
      FBDAFB7633FDCE66417D6ECCDE47E434B71300F1BA587F98BF5505FC47C50BCB
      7F28E1E7C346B57469382F228F44F5227ED1A1A92123867D2BFAD9810820514E
      72BD807C4802E0B171D5AA55B357AF5EFDC2A64D9BEE62DAE1553C77162A7C18
      BABC077AFCBBC8D70E06221D0188625E725BD470AB3DE781C219CA079DCA6397
      117BBB056078982F791DB7682E5FBA011089257923FC28E64BAB40B206F19355
      552EF050C25C3F2CC87784AB2FA5CC7482821316A6B17505201E6AC81475F960
      77D76BB127EB1A65A3EE9924CE5D1259AF1163850BBBFE9ADB6C4E6FCD3A1FCE
      50A871967BEC68CBC5924CA6757B0AB4DCBD145DC531E74305580290446A2F5C
      AB09E541A047AAE23C190B299EB1A44A50EE1D3812CB6FB0EDF8D18FADFACD37
      CCB6608DA5109E80C5D404E5509E960E41B570AA83AAAD6E835D08C8E114A987
      97B3A8F584DA3DE81819472BE6492B40A2F1A50291A6269AB7910C56C28FF98B
      AE50721F9BF5001E4E95C203D47FB4F77122962F20515D8C6A4254451E74DD75
      5E88AB9B69A630AC0521FC15F4B7523888AADA2D8F3E637F4641CE44A9AD1D79
      1AD4E5136C272D53761E063B0D2F4DD5FA6ACB924618415315D5C32BF9587510
      A61D3D566B8EE6A51C0D559476F7B94731D384AAEB7D740FCE17609347CAA07B
      71128A57F1F90C36742A61AE787A7D6DA7886D25E77C61DFB13695161C4B2EFA
      B9253EFE9235ADC63348CAB2BA9C7D5683E5EDBC2D794F18068EA25D84359B92
      6D3B995FF1129B78CA98336C31C7BD92BA8ACD28F40D7CDE467EC3260AE4D41F
      6ACDE0536DCDA0D36D559F936C366CB77700B257019B857FBCD34AD7AF023844
      1488B2FC89936CD57537133A61AC2C86C28641636DB3E8DC58B04974C74D87AD
      944807E614D84EA97820BBA159BF4FD78069B0715A96ADE433F65AE3AAD5B6E9
      D63BECFD51A7C16C3ACD56630D7F0068AEE1B3D6D32D770395DFEBE92EB0016B
      7E33ED47D6325E763961C09580888684BDCD1C90B7868EB0374F3EC5B6FFF961
      2F4F0441C0EA302EF2932D6FDA245B40B3C63900FC3A3AEE465138184BDBF60C
      8D22C0C04954CB7F805939BED4C3095F1D410D88EECBFB40016B7A663B70B829
      9AB435D1644DAEB194738CAB6FA2AD0A80B39550D15ECD6BA7FBF35E18819B86
      91D7E23C2EB9F2466BD9C09AA70A1EEB073B8D3C943A83F90012146C065D97D5
      0A068A9F9703846CB0F6A107ECCD33CEB169A34EB6159CA3DD23CFB43DF40053
      4D94A8F42AEC8D3EB6A7A93375D2D18C7F3EAA1BBF41BDE3180B0CF0A5D11628
      9B90732EC0A77597F13DC61F7CFB58D76EA880162E7918326E14358CCA54F66B
      423FE6A20090AABBDA8547B9B0DF707BA7FF609B7DD1C596F2DC5F0111C29E02
      11E8CAB69F48427A8A2D7AFC71BB833CCB96479E7020D2346BA9B52DD9600D4B
      36D9C6475FB087CFFFB1BD445EAF342ACE4AE252ACB9A41C63D0233C7CE88178
      B4F860144247FAED508023086905650F413B94A0154A0022E8612384E540047D
      DD8C88A1550E58E4930F89A7D07003203273E5CA95CF01287710E2BA129D7E06
      60338424FBB1E8F46FA3D335984AB57F722C3E82199100128087625F2A12FC1E
      7BB4076F16DBEA546E2FE3B15B38C8870187D7F992B964F337A8B5300795CD97
      15F365D50088EB67A50660020FA1A1627481F711FC589DD420CFA1938617E4E4
      B301102D5F2FCC21B68AAB62161B4B9CF0EC3C5B4F12773600B24A160ACA2597
      4D97DF13A60A7F6B3E430C968CC023D90790042AC7D59F4874DD54DAA66BFE87
      2C1ECDFFC8A53D452C8A64318B7C2131D694BBEE36A3E8C8885D5B110A8F9050
      F93E5A6F53FFA0EED32EA9ED1D9A4F8C222741C5AAEB2D4532D77949AE660220
      81F35E475C5F09E21678F32228A3FA01038D876AB0223C9152D537A81F93E277
      0EA1B875C90FAFB25A212B57A8E5F72DD27D55FC56AB0D843055A745AC26754B
      154B0DAB3BEACF4FDA1354D12F40296D93B240E1A71C4DFB0B9A45CA8ADD8F22
      510236E5D86E587DDACCDD00E1EEB68FC7F629494BAC3DEB7B3DAC98CDBB9FF7
      14307F220FC65AF677B17EF13E54659F436EC9598C0076065E4AECD1036C17D6
      A2061EED40D1AF1B4A68E4F8B36D393DA0129E78C15A36298C07EB8CB554465B
      8932C7B1E777D770CCB41BB7B46CDBF3E8DFEC4D66882F1973A6AD64B2E446F2
      00F100474C0F143DB3315219ACA40EC67B6903B367C0C914848EB7F530DC66E2
      51BC8C929E7BC32FAC6A195E4F22398AF52B6DFDAF6FB505677FDFD6034A3B46
      A03C08DB4441E58E116B0F83612F0968F536732D6D583F3B7B9F68B30889AEF8
      D92F6157A184D4E2625B9425DEF190CD4731AAEDBE427A9AF11143E1682254DB
      648E33168B390A65BF9BC777123A5218700F09E23558FC4B07E1F190249E306A
      94ADB99DF088C29955782130CC2C2FC9B2DE78C9DE67DEFA02C233BBA95C8F63
      5DC7695D63E4C4B13ED3A097670258F240B20865E51E05C0E38164A8FF953F97
      E6A3000220CA40506B13D679124A574A7CA7A660F2DB9304F8FC8644C06F3DE7
      EF7DC06FFE253FF39881A2F6129EAAA59643EDCEC5EE0BBA39AB75890A7CE585
      7C082080201EDA86071FB0498488541BB384B6409BD8837B586F3147036E1AC4
      E657CE6B564E0E20927FD431F4A13BC6AB6139CECBE7E431B1319F28401EBF2B
      8F6AFB5CDAE0277FEB68CB3C4C83DA587BFC9E0CAE9F220C6A21A41AAE38FEDE
      45D7874DEAC22D0302EFF05D92F37B05D44411EC00BF278B90566E861DD8BCC1
      DEFFFD9DF6DCE53FB3577F74B5CD240CBEF52FAFD9AC3FFED91EB8F0A7F6D4CF
      7F659B27CD205F4658AE9CF01DB933014813FB5EBA4E7ACDB597D7FC1A7F96CE
      A17A1E1DE542A43B0300090C72DD065D7D05220210893C11D17C0192268CFD5A
      F47619A1AC3C22597184B2D62D5FBE7C3A20F237F222BFC73BF929CF9F8AB732
      10E7A01B7AFE5BE876CD13F9BB9E59E124BA9A69FD27F225E46BC8779163D12D
      4344D545E95FCAC1DD8C3C0C10BC4E5C6D2E59FD8F781E84B4AA91060D4251D8
      4A5E87286601781C8C6D15206A64CEA34B84D69021A7383DF74335026AFEA7D8
      BEBC91B61A2FD9EAB5C1E08ED84F2450F7DEF1004A833A0BC0208A44792E8A32
      8BEAEF6CACC7422CD28C63C5BC1A4991E070E8BD7822283BF5BC523B6CCD46CF
      42A1BA19E928BE647D063521CB61B8CC60A2DC92B3CFB5F447FF6CB672396085
      154301593385648D78152A4C120D53E126AFF503350A84A5CAB0745440A58E9F
      F2989C6B12248A356D91A23DD7E3C9D16E3520AB8A4237DC5720A50CF05032DC
      25E8D49244EF158808B06071A8B58712E60219D53C406075055340921145E7D6
      4FBC93EC6B3B40EC96846EF4238FD9F36CC20F5428D96784ED23CF53A0F92787
      1F6B850CBDCAD300AC6E4701B84758C69147301CE9689E3FC60A8E0244344D91
      90828046920730141C46E884987CDEE16A79CFB9E39C6692544F464988D5E686
      2A29568FC5A990D61EC22EBB089F2DC2A27CB3DB71F6CE789A5D921F302C3B4A
      95413D7E171E96FA40A947550BC9644B4F77C0F7C63014F8C8936CDB609435CA
      2783EB2CEB335D5D95012C290DD77686EF8A4279ECE175EBC68CB3F7860FB6D5
      375D69B66C86D9AAB976E0ADE76DCE7967D9EC91CC5B21DFB3837E69B2BE3792
      47D88AA2DA06057C2B75449BE89EBC1D05B70985BDAE3FF3C4879F6D317F7A0A
      E02091AF24FDE61DB68BEEB80B48E8AABE62DBB1BD6D07DD97A3FBF5A000F538
      C27E58FD809068E47B9028D6D06E5850D114A46EE2EFCD4346DA5AE6DD4F188D
      D7F2C7DF9280C71B83926CC57C76F21EDB49AE651AE0B29AFCC48E81183AD434
      25D32921F6985E4C3424AC0870A84D8F428AD94751448807927B3442F23C8D9A
      1035ED4C22999E0898B89E6C1AB18BD7120F78A83796277C26E7CC13EA4AF8AC
      583CB10DE4116740885874C995D6B864058A165013C55895FA6AABEF7A9F7906
      8CD69F6B5FE2CF535125B92682B626C5DB86FB1F74048D9584AC3650B7B21BE0
      9081A6D62BDE04500002AF48133A0FE03995B0C68A8EE9E9D6623E63A073358C
      CD1544E27950D3E224F87D1A85C0EF4D621D69F68A263D2AA4A769A209EC5975
      9D4820C1BE9B1AAC5530CFDEE473A7411CD80781C5E87945EB5DCF1381D65EB8
      668325BD3FC7D6E215BF76C3EFECD99BEFB017EFBCDFE6BFF2B6C5AC5C6F2562
      5F95A9E6057D4308D945045CED95C2AD5EFF2E49D05121EC6D040674F8361C95
      912E8CD48FAE48D1978E28BFD2BF414E241CCEC2E8AF25EF514A123D97F055EC
      8A152BD6205360683DC3DFBF01582E83A97512AFEB879E3F1240F93AF993FF46
      55B8FA90BF4BA2EB093F69AE36BFDF42BA2103919338F01F82A0BF02D91EE280
      5EE340E682481B48CAC48252CEF300DD9CE7A1BEF59AEDABA65F020EA16040D5
      0DD856E1847964B1605700F211F72E5495EC2558C571F2000415EA00C4C53994
      1F9103821235B18C70477713D35E3AEE2CA7A0B631F92D77E8895830A32D13EB
      B88050555E4F86366115AACA5CCA46B70290742C4D81871B20E52BC22826CB45
      112288399E782D55C4F3A1B26EBCF24ACB7FFE6F280FD858304C1C6B4A35209A
      E3A00422C7D22A3AAF23DC224C0CAC25F751510EC3C6D1537958D1397E88FA2A
      B97216612140A911BDB5B4695087D16A6A38CAF4B7E8806A46E7B7CBF6D804DE
      9C04253183DE4341F5B52AB015A546EDB60348833A8DE2EDA815C61E2CC217BB
      1D4B8845CA6828B52E83AD98D1A7FB8E222C70CC315431E375F43C9AF3712440
      7A3456E131968F6598478D812628CABA95D5A8D9F0EA4E5C406850A4835C85AD
      6824E99A56F299AE85398A3D5D8C21B5302779AAE4ADD74266B06DC2AB9B7AD8
      91F616619CC53FF9A9A5BDFC3A9621A1C132796A84E8686027907455D1243B77
      3FFAA4BD3D14653A629C45A1AC77722CD9B074341952CD2993BB790AC49BFE27
      4F7380C5117EDC360A2F6430FDCFAEFB2939ACF7ACFECD676DD7AF7E6E0B69F5
      3F9FA4ED06147314ED6914AADC8C02DBDE6F208481FE24737BDB56DAE1EC2647
      B0096F62CDF0B3182BFC23CBFEDB048E93EB0EBBAB6DCB2E5A8BDCE5F230DB38
      965DB40F89EA7994C5F5EBE60D12A39D7F0A2DFED501612FD329C5008C266414
      3F88E3677D6EC1DB11C0BD3B6A84ADBDEB77D61A034B8DDA052B653D6D596D1B
      68C93367E470941F6BB91F03A9FAA128FBC22864064D1C7929D535C5A27C1335
      6280DF9F8742CE551B133CC60CC2420210CD041180C4119654C350D73894EB11
      47C8361E2349E01E808726250AA0E2C81F6C26042486DD828B2E77346F7981C4
      595D0E4EF69ADA762884DA0E206E289737B7C3B523119D3A29C13651DD3D1B00
      D90C7B4A6D83125CA352426C1CABC26D1980B64624C8B3D0A867192905D4B114
      10C2CAE37C661ECB20368D4260185B0243D992F8ED1ADC9602406BE2A77E5F12
      CC33CD9A5741A5FAD8690E4B1E409D0DDB6C27F4FDCDAC95BD43C6D812CED504
      AEF1C21F5E6A496FBD6A0DF2F854C4482345354D6CA2F6A781215BCD49395610
      9D64FB008DAA7D074853A2EB28ECAD82E8D0E827D0DB3B088700241CAEFFB800
      120922E1D116414BF83090480707ADE145F355380B7DDD8217D20420C81329A5
      57560E799068006415B7939027086DDD02805C8C973206A0390EAFE430DEFB55
      425C5FF241C4391FEE7F8084BC8F2F22FF8D88AE7B04D21719CB0FBC08B9014E
      F0FD1C88EA3CE6001C1B0859C51223CBC6BD29E6B176CF43E041F25CE5F50E3C
      E47504891EFDC03078E8E48501A42B4E74E4890FB7B57000A2B6DFFE98A17600
      D11D2963E9632D5A29EDAC34DB73F7C3B6E69C1FB8C4F726E2A76984A18A18D6
      9441223D5DEC15E2C75268419344B9BB496C2A85050422F23E9C27428DC8EEEF
      F5B29D840512B17A634E3AD356D0C264EE09E36DD18517396A6ACEABAF5AC5FC
      B9D6E42A7A895FE7125355D15706E10DD1555544E72A6451E09A2CE7E6036848
      560BEC2D2C378043F5081558DAA578282AA653E5B47E5615CAB35CAF07441C7B
      0D0071BDBFD4E794D704E103F57BF27A3E7D38594FB4C22A9055D51602DD1601
      881A4DC6EDB11DF7DC65CF03141BA049C6FBB165597B028A54BC8EE4EE489F6E
      78274763DD420FC50ACFE845633E2C3F514213B1AA256A59AFB9139A919287F5
      AF7929EA62ACB0443C0A4253F1E4190844C41672CD2955350D204BF6B2D1D763
      9D2F1D39DA669D7A862DF8D9B596FACE142CFB1C6B63C3B65471CCEA87548E45
      9E9D627B1E7FC2260C3F1E00615223F53D018068A47024804821C62A8F85251A
      7BFC38F21284247F06804C78CD0EDCF95B9B3F6AB82D27ACF5018A6733BF610F
      C9E45814FB4E35DFEC4F97824183E81080D219CCB1F2FEADE451560E3BC3365E
      72A3D54F5B8AA780359A4D529910D6D6DB48724346D846A86C3716F3EE5E8007
      1E48FC714CA1EC8D12D7F031945C0CF5197BC943E87B12E9A52632C746C0780D
      2307DE3D7EB8ADFBE3EF28E823D720F028C9B1FA79536DDEF967D8BCC1FD6D05
      B9A81D7DF13AFA08947AB81933198318B7CCEF8AF5AF873AF0E62967A0616500
      7F1A0AD8F342BC2ED0F2400420E12ED4AE1335C01E8BD5AED05D6C3FF283FDA9
      588709B56DC809361FEF7DFE853FB2FA45CBAC2599DF4CD8A6A15A868B97DF0B
      1A677ABDC882D921AA650140D48E2429CEA2EE7BC051BA37E1E5E97B92C9BDA8
      E851497E97E8C76B9324E31DA41EDBC3495A777E1F4091C2BA4B0438344F27A6
      47370C3EEE6B309BCE2B7375B42655EB22CAB23E4B40128F77164FD1700EDE56
      1E8644D4F78EB1ADDF3DC6198B3B48B0AFC0D39C7BD2E936896E1299F3A79350
      679F6A8D31E8A9AD801C6406E75F859CDA84F2F635D40BCF5FC0510F63504D14
      15BA72337502BAAE3F0DB3A351BDE1107E471E48676CACC81A91B047A2FB41DB
      1381889859F242881EB5A1BB5BD0E18DE8F21AF22125781E5984B0F60022CB97
      2C59F2CEB265CB1E219C753D0CADF3019811804977FEFE0E0EC3970979291FE2
      DABF073910FD21CAEE5711756714E36A04720E4AFBE728F93F41EB7A81F0D44C
      5C9A7520522CB1B16C1232C5A059B5266505390F818706A1C875125D37A0E906
      31BA70C25C27EA60B51EE1F055242BC19DD0D08CEB8E0044F9067781852DCAA1
      0B40EA9503C9B4645A632F3DEB025B44AFAA8D28833D62A8500CA8046FC23789
      B3F662742C611B0188DB3C2835372B04B75EF16E8188F34608C56848CF5ED849
      31C49AA3B17CB7A24C16104678874DFB0E4D1A555C37E9DCF36CCDCDB7580A61
      98D2772751DD8B821165547D8648B45A0A71567A74A92D842B6C53F80920507B
      0D8187CB5528114E38405243584A40520DE054D30B49E7D7D578A8F5B562AD0A
      75F9C37E041C41D3406FF00F9BD7B5752707A2096ACAAAA81258857B9A9512BB
      0B00F9A3BDD0A3BBAD866F1FCDF9C940E96462F1A51E71248482C361C01CCE39
      3912AA7337840DDB9B4D8C259DD4072BAF1F54D001246D91141293A958AB1AF3
      9B89F5AB59E06978326AEA97804270792442586984B05C1E81F3ADB61B597828
      B99AD6C77B94F0DC31EA44E2E3A3EDBD71A7D93AA6ED556FDCEEA8BB6AB1AD64
      ACA33E53E9BFF789471D80ACA1A5CC4EACCB3080683E4BE081B819F678957147
      72AC5CD7348A4A3793D3C8B8E812B387007DBC9D458C225E47CFB335D05FC546
      8AC1F28EC142DF8D328A813C1027F699264EC20A8A86D6BA8150D91CF22D7B6E
      BCCB6C35C79780D2C943E96CDF635B7E7DA7A3416F2781BB074B3A9A992FF1FD
      10149DAC64CD8BD178D958249AFBF17861C9782B3178709BF8EEF5ACA377A14B
      AFFFC3AFBD8A70D59314A45A15DD0E668C85C03110765C77007D30C9F101B467
      EFDB0340389A268A782358E22E5446AE40F9824C59E6783E4928DA34852243C9
      7485BBC4BE529350350815135112ADE439E0B107CF6B37D777577FD859AC8B1D
      B0DA16D3F871F10FAEB4D6E56B308A308E34B215CF5075481E807820E235C7C4
      C87133E5C52F0740684DD2B66B9BEDB9E75E9B4F98721DDF1385B1A1E47E01D7
      2F67002163AE4B6A1F92FA187B4A98EB77689D69189B9BF2D947E37F8FE37C32
      E593DBB8BE2A06E6F76B305B777E2340A37C5D369E48A6E6ED10EA8AC76389EF
      D69D39F09060F04EF7913FCA87C811733805C484A91318DEB564E4C9F6EA383A
      1A3FF667ABDA218200A041EB18352CD510A92AC8316A2CDA48DEB20E434680E1
      C5CDD9AC22F3F85D35D44EDE0D4FF367CFB871BDDA9FA1084A67001280496789
      F5704D48470587419D888C7919F5AA13F12BD69D27221041A757EFD8B1A39824
      7A0620B26BD1A2458B172C58F0FA071F7C70EFBA75EBAE42CE4006E1951C0588
      7C0340F9D2F4E9D3BFC8356C071085AF9CF7C1811E89F4474E462EE724FC160F
      E219DC9FC9A0CF2A265EED45B2F862071E781F0D1A70C281B5AAC5B0C023F03E
      82FE56918CAB3065B72BAFA323E0084EB666090420120920C28D30808875A4F9
      DD4632DA72B3687EF6BE2B889B0F0D75FB08C20FC447D5EE5A89DD94C3B056F1
      2CD28991CB22D6661280045E88533E7822527819247D25FA3B01D77B2FF50FAA
      81580DF5701196FB5214D96CACF889DC7F0BEB6F22C0B2E8D4B32DEA8A5F58F2
      EFEEB06268A7D593A759EB52F2255B084DC4ABD5021E09F507AD075413422112
      4975D7DA9ABC8900A39CCA564925B914CDE2D673816717F413132DD8E55842E0
      D13E7AD4B1BD6401FA5D71DDCC78208AC22EAB268485CB1EFDC8BDF63280B00C
      0B367AB0B78915EE48390AAB958D99CC068DC6F3D8795C3792BEC7D0AF8B783E
      9B3AAE1F1B1CE088C33A8F1B44988AF7A630DBDBCDDE86FE9B720420C4A64DE1
      7C8B05140088CEA10059A12D792579781F855C8F6CC28399243FD5E9F80394EA
      F4E1E36C1E7529F12FBFE955C9935732AA99DBD42B2A3FC5629E7E14D0265730
      7C94630EED52488D10853C90480091C7A30252015836DEC31E2CEF2480AAE2B2
      9F5A0AD6E73612D83B000DE52C7623A228C760ADC7E041C4A28CE250BE09FC9D
      C6EBC4E8594581E454EA10B21F82BE1B058142C9D4FDD411ECD86B9B6FB99342
      4B01C868D70A27465329FBE1A9F5F2BC0F85FC14B24940D41541398B3412BBD1
      00EE2E806FCBF0D13611A0DAF85B2AC3770320FBC97FD05624FBCFD08B01A275
      03FADBDA2300760139A1C584A30E63D6C8772DE688EF3012F9086799CB424F86
      F490DCFD28E73926E301A5F01BBC59201EFB2A0010AD77ADFB44C28009D4BCC4
      02660AABED863EBB0BCAF64E40684BEF3E78201E80ACFCF1B5DE488142AE0760
      518D21532506A00F20C18C0F15B43A85AA9CA5BA40ABE3C09EAD16FBE07D84FE
      4EB355AC952D47F58050418E068F4FED57BCFC10C04AA8CD796F1CF36E00712F
      C0218905CC12060130F4114B19C235A441AAC2574984B6DC7A3DBA1B21CCEE5E
      EF2F0126E75CE0A97057BAF22B1829FBC86316C2088C635264EC776873CF202E
      111EDEC28B7D9742D7E837089D661331A0B055AD962BA8A6A76A8AF2242ACDFD
      79E96E281B46B1F493BC0C37D39DDF1ACC2AF1A67A7A22DABC4044FA2BD0711D
      E540BAF246225300E18EE50294A0054A302A37A8589727A28A75F438234D921A
      C8735411A6DA0F88A42E5EBC78EBECD9B3E7CC9D3BF779185AB7E3955C06809C
      00B8F426D9FE3D5EF355EEFF17DFFD1FE1F095B2EC6AEBDBDDF73ECEE3F67A40
      E02140E12DC0620948B593B8593A6E4F112E50151E480307A1C1260E3C041C92
      B0F7118047789A606709F38E0A6A220124F2240717C0055CFD1096E6663B0091
      25A06CBA08496AA22806843AC6C2EF6F5ABAD2E65D74A9CD188A1B4E75EB7ADC
      DA9D2417E551A8CE2387FA0F0D7F0A422A610051282BF044D2A06F66D2D22408
      C1A81DB63C113169447B5C8EA5BD86FB6A0BA1468B1B88CF8B47BF8444E94C36
      ED34E89A8BCFBBC876DD748BA53DF0A8E5517F51327996D5AD586F8D58AE2E09
      CB785A5748E7E6202879EC753F75D3DF34C087D097FA39B936EE9A9DA0D626EA
      324A75B95AB20722468C6BEDA2590AEA1AE8CFFA56075C15253A00A940E925ED
      6634EE93F6EAD08136176B73E75028904386130E40D9A238335056A958BC7B01
      986DBDB1CED9C4522A517DB1DE5030CE4A1D80B241628893C72A5ECE6F158D34
      E5C85E008912F09A4B8147C2B954084BDC7D89983F1AAF9A0383A680AE008587
      F772F917E54B7640B55C3E749C4D26D7B4E296DF59F5FA755E5F29D5C85413A3
      2E48A6A1DDA3F6EE487205C346720D48C602203958B21AD0252F2848A2EAFAB9
      D0196C254916C9E05812EACA65C5E24DECA2EBF25EC05E4AD38594C823A8F620
      96104A0209DB78423F09E411A4F8B308796CE7B89771BBF0E40BACF69D995E75
      7B11E119C26C0E4048B6CE631EBA8A296395A0C69A4E2609AF31C7F23E145E53
      68CF258EA1058B299489551C0B834821A56DAC9B698307DBF6DB6FA59F18BF3B
      1765B67D83EDBAF13A9B2B454A886B33B4D66894E2DE23BE67F1DFFDB6233864
      9117C8259493D51F90C23A4FEF790CA1A0A300280F403401D3636279B51FCA0D
      7920E287122134084094EFD0B9D0F5DDDD875C110A7C1B80BA919A8D39B49F5F
      018DB74DBDCED4A1D9F794CBE5DD92979307E28D595012D89B48A9BE50DE2C1A
      BC5E9A34A6FEF5499B75125D0D00D65D7C571CE75F0400E564F6AA7929B73B39
      C6ED1CEB365EB39563906CE71C46114E939113CF5E4E1882C8FBA54D4BA23378
      A09693B793F79C4DD84B89F674425E2900AD1B1B0D7866331D340DEA6FEA6114
      5812BE56517106DD0512A8119A43978A17C87DADFE23CC4A3505559D16CD18F7
      5320ACC68BAAED0A661539E52D2F4BA30A34F913D5138087482E020EF128DD64
      4FD7F0A56B00F182EFD2651E433500A870723D6C8447024A305B2460664937CB
      C8573E4420420A423522CD4494EAC98754E08914001809B366CD5A3763C68CC9
      80C913C82F096B7D7FE1C28523F04E8EC53BF926F7BF2C2FC4010807A39896A6
      0A1E8E685AD589C88F90DBF12CFE0648CC24E9B21100519BF97D8047258FD5CB
      F3405A55F12864539C4D07287729EC7D04899E705F97E07EF8C777C5B8EAC8CD
      F34662BAF8945BB88AFB0700226FB2595D78FDE4B300A415A6934B68EF204CF3
      FB3BECBDA1836C2509C8F54A5CB25173601CA9383053895E12ACDA5072E9258E
      CDE283477B280B00C927EC9503832B9DB6D9F2443208B9A853EF0EACEC7825E8
      58F85B01A8DD585771808736A262C951546DAFA79A76D928E2EF24DF179F708A
      CD3B8151A2675C60EBD9907BEE78D04ADE9A6635F3961347DF0D9810127155D2
      584188BABD3693D3A9E73729011E8089860B39FAA4BBFDB0402972B88E0A991C
      3F3F98EF2D00294111A7C5591E7980D7C61C6F13D870CB091F44F13BB4A9E3F0
      AC1C7D554964A893B2D2B7B1E1D5E65E55C15B39879B394F9B882D4B747F1BD3
      EF941017B8BAE2422548D9B029504AC562CBE0DC7D0440A494397705B4DC283A
      A2BB958A724A12351A05B78910D04C14F5DAAB6EB09695D46BC812573D4435E1
      857D0916F7973FDB7B4A3603203B38EECE00C45D2700248FD6F8D94792F7C2FB
      9107BA8B70C666E2E39B018CDDAA7626841243182B8ED0492A211B018812DE52
      FC8AC76711624A51B53DE1CE458440B742E5B4E52878A8E2EA85E4AAD97746DB
      A65F12C2A22A7C2721AE387EB3BADEA6700E95DC1508294794493E268550A8D6
      9D2659E66088244085D6BADB46127F3E9ED59E3BC9816CC05BA5D5492395D3EB
      7FFC23984BD0CF69F7B1976B21E59944582DE39863AD84305B390ABFB41FB46B
      F220057887F9E40372B0CCD37AE18DA048BD51CA017878EBDD8108EB3C001137
      F3060F506B56E72256E13B3E534CB1D5847D26C1C25AFCD3EBAC9A36E6AA9257
      18B58A8D5922AAB81B14E5D539A998D7D92F6C55D7A34DA316E84165B97196F8
      F25FEDCD71636C22C7B7032A7C3CFB61076B4D3DB9A200B128AACCA360CB4976
      0C1D6DDBF0C8B6728D37F1FC16C25E221A68FDA93E270A40881649022096E1A0
      EAFB4CC2A66A2299CE7949056493FD1C492CA1AD4CBA5F6B905C26AF3F407171
      9E8A5E0111D1943792179D4EF7850FAEBE8E5A2442746AF6580339880E10A5B0
      201586929DEA42548087EEEB91A06B7424807CE8857C3C00E90A443AAB540F0F
      A8924E0EEA43940F51380B3DDE8623204F4449F53AD21365781B39F3E7CFDF3B
      73E6CC65DCBE396FDEBCFB008C9F21A74E9D3A75C0C489138F7CF7DD77FFE7F5
      D75FFF925AF5AA3844751FDF40345C6408721607F40B44CDB6DE043096F205BB
      357B172029E50B6B018E267FD0BB869AB47B1E018008F182D91DE1266091F73F
      ECAAFBF7D5989149F38E5CBC0F014448E273AC410C5D440148839A28CA14D085
      157D0E8BC1F5588A4FB06C1AABBD316288CD8645B3868D9646F8A2006B2AF17B
      B8BFF4C5D254401553059B4AB7C1D8DA20849589F55AC04C6B15C965AB6D360A
      C0C5EDB1AEE3C5FA2089AC51B57158EE29586CAE65B612976A644782762796D3
      2E1840BB61D96C814AB8968DB212594AB1D902064F2D3BF387B6F2B26B6DED4D
      BFB3ED0CAFC99B8E751B4B75ACAAA48B5052654574F9A6E5352D17342F41DD5A
      C5B30F38F8DEE84E21A827DEB4C10FBD12E7660B6854D8454B14D7D4916474C1
      8CC9F622E37E9F2291FE0EC97385E3D6B3D136206BB9BF126FE403BCA875B434
      11E369F550DA90A88D0656F36272460B386F0B605F2DC09B580E7888AD130D51
      2109259B440B9004A8BDB1DF13BDD2AB1456616110C24AE57373384F859C33B1
      BE8A091FA97F935844D100882CFDB5175E6E85AF53B0A9E4662D06410D405218
      6FF17F7BC4261D3FC2D6A15C7671EEF790BF083C10B1C2745DC4C212AD57A095
      CF2CFB5CA8DBA9741550EE4520B983EFDEA1792F7850CAFFC88392C790413E27
      8E7321C59F84F5EB66C7A876033285AAF46792508EF9E343842261ED280C8941
      65F4D36ADB156D5B0090B9034FC4B3610AA168E10A5161502879AD068739AA87
      61EDA4517499DA0DA5C7F9CB87269B44419CBC2F29C8A5E4D212180FD0B28AFC
      59722C0A7B89CD39E75C5B00CD77D7F8336C1DE136E525F602EC4A10E7037AB9
      50ABB30E3BCA520E3FD2D28E3C1A7A754F57ABA3508E72012EA710029060BD0B
      40E475EFE2FAA94D8F94B986A5C9909067164758763774E98530CF5E25D43BEB
      C7BFB0C2051C176157C5DD45CE287105AC1F0288A6626AD096DAD329AF27E5AA
      2AA4D642C80F135EB697CF39DD9EC52B98464B9CC500E6120CAD85AC9D25E460
      9611FA538FAB154330B6F8DE25145B2E82E6BC9CA4FB070C6B5B0CD82E647F2E
      06D05772EEB600EA6273A550B392C67A94D1224657F2D1802620E292EE84B262
      D8877BF14292317252306A72C8C515707D52E996A026AA9BA9035B4145FC920B
      2EB38237DFF1461560AC69505615FB45E163071E1A00A5C6960A78A899AB86AF
      4584B094FB08E4504358810712E9897414DAEFAC5A3D184E259DACA47A98DA2B
      E35F4975747B0B0E42235E480D89F303781C6984B0B6021E0A653DC7ED6FF14A
      2E79FFFDF7C7BCF9E69BBD5E7AE9A5EF3CFBECB35F950722F6D55738C0EF203D
      51F0A351EA17F3980A069FC2BD990A78AC074412019342C0A30A3A57A386BBCB
      05923B14781F4237C5DA74A0E141F11D792041ACAE33DA6E7082C227B0230071
      392BC7D1753C5DAF482704204142CB958A286CA3B19A156C6CB9A31BD6D9C21F
      5D6213B0C456B121E268A1914E1C340DAAA93672B6669C63916AD4A71BF70987
      5C00216051FEC32BAC1BE2DA9AE4A208454F95E7928E25A3C13D0A0DA4B29965
      B1A66ADE029B3695C4740A610515E0C523517CB71292B1842792507A09149729
      8FB299CF5F09F555ED2266A370DFA32AFEED913482BBF812DB74D75D563879A2
      B56CA1099C2AA6A93369A4015F138DDF1A6A8A19DBA116D9D493786466AF5BAD
      AAF1FD18ADB6AD204685850D9C3B79296EB2A39A286AA636DD5F1B776CB1BDF4
      6C9A77D5553691D8F4EB28CF7750AE53A0B14EC17352E86DCEB8536DCEA9E7D8
      5CBA042F3AFB625B76EE0F6DF939CC43A06FD6E2532FB0C5B4FE587AE2D934AD
      1C6593D9D8F3D9E04B38AFEB09F9C9BADB83E59FA4C98BE49DB2B1FA944817F3
      4AA09BA6842F34D37C949CA89A0A43C4D3CE421D02D6A210E6004609F73EE035
      26A4A8AEB908765B418CC53CF580BD3B7CA8ADA35F937A992987908747A8EBA1
      6EB4627E050022C0CFA2C051D72E1BA691E8CAEA81A610896417248804ACFA64
      1499148CE6D5CB1371D6372D35B6F1F71E94CD560A1157D21E65C1593FB003EF
      4CF646C0168866CBB9645E48F38E28DB76F39D287ADA7EF7190B75182022CF21
      A04C868E9AC531A95A3A9F759525EF0365A7A2B77CD55B1C4E129CF5240AF12C
      804B03A66C3BD4F0985DB6FBB597ED594065EA98936C06132DDFA64667D9E091
      B69C75B7FA5B875BD477A00A7FF348CBC19B2BC41BDBC7E379E417F2A1ACAA23
      AF881132726211570F21E1BB740D1436536D93F326B1F297D3AB4C83D2368D3C
      C176D0E74BFDB13E80663C8D90E284F1E7D8B2DFDC6965D448A859A9B66209E1
      51FC2FAF5B803C10D884EA47A725293ABA631512E621D843C784FD56B26BA36D
      F9DB13F6FE6597D88BE4255FA76D8A9A754E1E351EF2C0187B6BE028F21163B8
      B627D914DABDCC6436C71C0A3C979E7FA92D3DFB078C50B8C8169F763EEBED1C
      5B48C1A78669CD2624B5F83BBD0040000482831877DAC39900B7C28FA24DC772
      0D62F158DCB02DC052E73FD8C7A22EEF56B70A3A102CA09074E3ADB77B9D8235
      9E572300C8318AF5E80AA2FDDB6084B3634486BAEF06399120911EDC7615A28F
      04904820E9A836245C74180CA492F71174EE15B537986A18F4CC9227A25016B9
      907A2AD42BC87D1410AA8A9F366DDA9A2953A64C9A3C79F2A380C7F5EFBCF3CE
      396FBCF1C61000A4DBC30F3FFCCD2FF0650A5FFD0F0776388AB89F864371FB13
      1EBB13B47A09649A4F7C6C070092C19794A83DB06A3D9434178028E7115969EE
      06A8C00A0A7B20E1F0559839D05908EBE30188F4A49044E5DD0188888744CC50
      4C2C9E72734200108DB6547B1175376D43496EF8CDAD3679343D7DA026AE5188
      0A4EBB5A6CE4D1904D00224B3095F0822C18DDD763E958CFAEA53B166C0020D9
      FA5B00E2BBCD1E8088F1218E3D56A412CFF0D353A99F50F8C0C5A2B9DD7EC477
      A9843D92A68D28491453160A2B03C5E7AC61ACC09DC4A23711565B8DC25C0435
      75128AF17536D8B4F3CFB59537DF6845CCE0B09D307ED4BD55D638EDBFD52F4B
      BD88540D2371B3A17D00D139C108240EDB2ADBCF2B58279EA06BE20A4E34F807
      BA62036D58CA36AEB3C2B9B32DEED9676DE31FFF68DBEFFC9325506098F9CCDF
      2CFFA557ECC0DBEFD25C8EF6DE93A75BD5AC79D6307791B5CC5D4CCBEB7956FB
      DE0CAB796B322481D72DF1AE076CD58F7E66B308CF4D66336B02DF6646B8C60D
      3C995A0C2AB10522F46ECA562D887EB7149BE8C0E45732392FD9588A0213295B
      B5E55083C6F900EACE1B6FF65A4E94AB3B311B1B00897EF27E1F404692E427F4
      4298CC0108CA210010D500C8081080A819A6B3FC352F1C25298AAAE2FCBBB04C
      DD4C18BE338ABC8D8048D3FA04F0AAF9D84C4E683D0A55E3891793D79846DB14
      3502AC1313896974C6744837848B6144ADCC43DF460E6401C9E60040A4B0D394
      5342B97B003230042058C2EA598512CF3852CD0E613FD1CE7F0EDEEA8EDBC881
      6CA2EBEDAEADB6F3AD37EC51265DBECAF4C27750AA930881AEFFE1E5B6F3028C
      0C94BB8A28A30FD7CC8FFEB68FB0633E00AA0E01D9E49614D6712406D544002C
      AE3646B511AC7185AEF600A6AA59590D95781515F13350E873C78EB3454CCF5C
      76C6594E56D29FEB831F5D6573AEBEC1D6FFF9192B5ABFD55AA9BED6F0A452BC
      5DFC59E0E143007123155866ED00828752C85AAD61D85753519655ECD86859B4
      8ADFF6C843B6F237BFB155B7FDC615B426D1D433F7C537ECC09BEFBB791CC513
      A7B2EEA75AF1D4E956A775377D9ED54D9D63F5EFCFB4D2972758D29FA0E8FF90
      E31A75BA2D626CF04AF25B2EF704C9416154E76591631398283C2851EB16197E
      DABF6E0F237ADD1E7265AAEF994E5460216DFA6D0B7B8DA2558ADC1827C0AC74
      8D6B063C24D22F923075F7235E811F4EFE485839D4EFAA2303F95000E4602012
      E8E0A0C549301657C6BE24B2C8102FA489647A2D61AC92A54B976691E7880238
      1613B27A75C284097FC2FBF8C9CB2FBF7CD2D34F3FDDEFA1871E3AEC0B7CC17F
      7300DFE040BB713B04399BFBD7123B7B109098804BB35C13AD00100D85AA50B1
      A0BC0F25CD55221FAE340F9A24064925814364DE23008FC8447A6794DDAE3C10
      391F2E59DE098028DEEAE68470DBDE6F4A23400BF3DD909AB4575EB0B729169B
      A66A5F629DDBD4748D70860ADB649566AB4EC15F5439A296A2C0DC22032C72B0
      50544CE824D2FB10AB85F8723C89BB0468847299C5FC1068A4C2FD4F83B994DA
      A73BD6DF11B06360C6E0894861A6C36C51784BDE8B2CDE24F20BBB955FC0A5DF
      4A7DC9DA51636DC1F0E1367BC4309B398EDE4E3FFF8545D1BFA96CC634D753C8
      0A014612E14DCC357073BA891938DAA41637C94B372FC501481B0C2D6F785243
      BD379BD9594F24E82B088D95E3D1B4A80710D306EBB0764B37AFB7FA2858366A
      CFA2E13C6ED0147907186D96A7FBBC567F6B525C36F7D5459741434E99EEDA63
      D57316580E93DA76A348979F7E092DB84FB68D8368194148279173ED0108A103
      CEB9B3F249D22652D39042A23E550290244BD1B95622B48DA14667D9F77F6875
      3412B422C20AA51C530105908F7B0022D2826A196250C00180A4E0458826EB01
      086132C246920C1489A3F72A9443E82A014B3F96BCD56EC2667B49E2C752BD2D
      865D1C56EC263CB0F9781F930961695CF18291A7DB847EE3ED158A5267DFF41B
      ABD800355B0C3A72816ED89326E331786BDB2DBF07404EA4732C6D46B072A5B8
      DD7526D4E401889A1CCAFA2554C6F164A3D0F2B18C45319557B00BCF620621B5
      2DB7E1816CC1036170D47EEA8A62264DB2C4B7DFB194D7DFB61C422C9593A658
      ED4BAF5AECA557422B3EDE9102D2314872583F9958DBE9B09BD2001079D6CEA3
      F63D6585F7E4652B5C168B07BC83DFB9162F33F3BA1BEDC0030F5A06BDAA5418
      5BF4D66B96FFDA2B96FBCA4B56F2FE64DB3F69AAE54C9969FB97ADB1BAC434DA
      7710D6C1DBA8C4605389ACE8E7F240DC18600720B08EFCBB6500483E79B752DA
      F1C8736E65C89365A75A1BADEEEBB66EB45AF593539BFB2CD61133C6AD088F8E
      10996A31AC987525C961AD69DAA55EA32A78E59E76C7580D864CD14B6F59DCAD
      77DA8A53BF6F4B0011B579491A38CEE2083B2A7AA068822209321EB4A73DEF83
      F0A15AA700F02A34D498862D84C126F2FCA4D3CEB6069777639C302D8AD455A2
      955095A8BC81382FDF9770C5B928F92E871B71DB1503EB5001E4603910E9DC48
      2009A61906E12C955FC80B8169DB8217D280175205D36A3F61ABE44993266D04
      386690F37806B9F585175EB8080019F9C0030FF4F802A1A6AFF0E5AEF603A53E
      0A14BC888376E12B4256D3A0EC6EE003930090FD781CD58046136E8FAB345726
      3F5C691E781EE15A8F30FB2AE87D15068FCE802340E32E010485E801883C0DCF
      03E10AFAA12CAAD2A1EF2AFCDF0E208E81448D4539CD0A59AC55C491A7FDE447
      F6CEC8B1CC316783D3786FDD37A167020A8EA68BC2CA21649287A8A25AA2FA84
      5C1498402428289445EB425B2802D788CE35A81308F0593DBDA2AE440044C93B
      71F0031133C6B163FA10DE724A92D7616D2710A78D857AA84AE2042AA1E3B178
      775393B10D96C9565A566C399E6EB0CC45D0DCF5492451B7FEEA66863D4DB446
      4D8ED3D85436643D2D1854852E46969BFFC18910FB45612BD7DEDD3F2F3A3775
      B4BA573D491D457995B4E42EA79575234C9336445D819B34135BEDAD45BB545B
      07128910E0AD924147D51545B4EDE2751AE8249282DAC5B851B730BA982ED796
      CEF1A4A2E463093331B12FE9EEC76CD6D8F36D21FDAEB6D00E3D9E304126B334
      3209058AF99682E24C4449C7C01E4AA09EC12B8A230742C82181E763B02657D0
      0E7EF6B833DC2444CB231C59CAE7E7C73800790F0F6D23210F5552C7D2CC319F
      9629BA26021035E51380486128712D859106DB473463358754E1A3A38DAAEE03
      2B752FED5B12086B4693BB5989F5FA2EA0F22254D29761A6A953EEAC732FB7F9
      3FFEA5ADB9FB518BC63A6E55811975014D58A8ADE59C23B5867100F23B5B48CD
      843AC1C6F19D2A66534D860720BD7D00E178C44C53D535C798C779D0F1C5026E
      DB51E8D3C93D6CBB9D24FAEE5D5C0B3EDB85C8948456B3BF0C3728CDE238C76B
      375ADCAF7E634BA0E06EC50B4B100B0D3280F26F8E3ECDE7EB7CC8E310032CD3
      F59982A840885161BC68E8C35B08892D1F3DDE2A1E7D8C098780F436402B15E3
      4183B0344F25451E1FCA5AADF6F351E4EA965C0A53B00A65854152C37E94F751
      C3DE0C0388F22032E46A29BC1380B06AE88600639071078DE4F258501E355B1D
      1B2AFC75A690B3D69344236A994ED9C6FA96281CDD463B942694BADAA2B8C244
      86A14133E2783927005B346D6466D12265DD70FA840D3F8D3028FDECC85BC9E3
      0DDA12298C994BEE295B212EAE816A63B487D54C52B4FC9978C6EFD13DB96A09
      791E8C4FB5256A64205C00200168B83C63906F0CB52C095A97FCDD6D885D15F6
      403A038EC81056988DD511092992A115B0B2C221AD809915B43A21E2D444C579
      1D351F6524CE73F14062085BAD78EDB5D72600200FBEF8E28BBF78F2C927CFB8
      F7DE7B077D815093D8579A32D807C52EF6D5E5C81F084BBD48EE631EE0B1030F
      24031AAF46D2D6A9C36E40D955F25C4919A159D8FBD041078CA9488F23B27030
      F8D1E158606727B2439E74170022775AD7D37921AA167517173F9A16EBAD6A4F
      90B0D7525E7DC5DE238EFF0A0B682FA32A577C078E3F566E0CF17A850F32D884
      F244544720C9C5E5D5DFB25C9C05E35B315E033A81C78700A2C479225E854445
      4F6AB1203051BB8544C25869808BC485B814EA925064261EBBDE13DD03E5094D
      51C56A513CBE094EFB668AA076409BDDCE0C8EF58435961152597DE6396EB641
      06732F5C1338DAA6B431A8A795452E00D14C71D7CEBD9D974F704B5E99D8CD0A
      35F0878A13B9724419001BC772A70797420C8C89ADA323B0060089C258CBC020
      35CB137DB8567FC346D10C6CCD2457B3470D0E821AE6080B4D8CC66D92A528E2
      825AA4C725D97EC25B0B21064CA2EDF85AC6AD46639567002059EA202BE0E6DC
      4A91CB0B89053C243A0F7B4960EF2554184F37DDF503685A48C7DDDC77DFC3EA
      4C42E1A02C72636DEFE30F394055D8410D0A63E9C61A0088F218AAF456C84656
      A600244D16398F39EB9CEF9445AE02C73894AC8AF862A1B0464110583B9CCEB8
      D08735DCE8835F5CEB26E4453FF782C53FF7A665BFBFD02A37EDB1FA64B5F150
      BB1CEA6F9887ED792002901DB6FDD6DFDA42BFB8D1912B604265A9CD06464226
      80A40680B9282D0D7A52657826C79843525CEB2D9A63DD49F87236D5F83BFFF4
      270A0961E48989A7215A6AB8A9DC952B40E5BEA648EED96B51BFBDD366C3565A
      A73C10399C04C2A3893E734CA0910EB55C2DF71D8598EF1260A9638000640FA1
      ABF584CC169E00A9E48927BD30A142A4FBF97D6A05242341C3BB14F2542B12BA
      23B010DC6F6FABC660E3AE86252AFF51EDAF37374E41ADF811E5435C97058C98
      22D6660945ACE5182435844EDBD4090123C58103B5166EB4B15A9FB09E445F77
      EB0AC3A5918EBF8D9AD60883501D1CD44541F3E76BE8025CC767688EBAED07DC
      72B2AD64E2145BF6832BF0DC4FB2AD4368A449C7E754F677166D5AB2C4C263CD
      E5012079F4DF1280A4EB1AB02614058826E4A71A1F25EBA7E381942D5CE066B0
      B4602C35F2DDC190B3709FABB0A7D151B2BB335DD791D1DC95077228C9F43019
      49BA39DC7031A854F7EB43D4B5B70DBDDF021BAB112FA41A2FE40074DE74C257
      DB009179C80B84B0FEF0D4534F5D06809CF00514BAF21F2A1E1CC8FDD3F9B2AB
      0183FB4894BF09127D80EC4572499E6BB2A02ACE5BF0405CEE230C20918D1283
      83EEA85549575E874B8A77F0EF93008814A392C6CE49514345872678281A7653
      C5E6667E41CBD6CDB6EBDE87ED0D92BD330961ED623EC46E1698AAD0D5285180
      E0126C28A04CDDC742717911173BF53A967AB788030FD12111B5C686C1A3FA81
      242CEA64D13F096B250A1424781A2928C55468A3BA55BE447913D7BF87A2BC54
      2A6D552BA0CADB5880C515AE89DFEEB7A588A13F54CCD0916C0ACDAF86DECAED
      62E2D2FB5E79CD9B572D0B916EBEAA11719307F1CE54DC55A371B00C4B1778A8
      5791BC1279246A67A236F895ADD55646EB78465D31678421580DC5E807360C23
      3E5BD8ECF26A1AD54E458404B485185CDA4C9AA7EE8652517FE238FE84CE4431
      D68C1337465620924F98614FBCA53EFD1ABD8F2EB655E410764214D0C0AE7C06
      76A9A57E0621067904623AC90B89EB4FAF31428151E423F6A83667D029B671C8
      693677DCB96EE4A96B78770000C989B7D8A71EB5F7A9DADE086BC7F57122499E
      CF002B777DFE0E40F004A81390B2C826C99CA559268496E245194669AB88300A
      D0583DFA245B75CE851675EB6F08DFBC66B5EAB4BC07259E42B8253A955028F3
      B5F39847524C4CBC0AE5C8B0A7EA0328375526CB43D8B1DD76DC7A1B000200E0
      09688E85C81459842C5360B93900C1BBFA7B0021A18E628F52F346C249EF737D
      37DE7127064294678D8BF5136E968677EDC6CA2624D9D6DBEFA6E8722CDD7C87
      B9BA9C380C8E78BE532DF735482A0BAB3A13CAAB94A5BE3FCB4D2684A5A6B61E
      14CFA9927F160092F9F453DE14C702804983CC3048340849C4466519EBB9B66D
      5C6FDC0CD79BAC0DD7C31D125B8DF1F2CCACC168F1433A6AF5A1CED81A452CC3
      4E54DFFD78BC25181CE5005135FDCC9A68E9D38281226345455C6E76883A4D03
      342DBCB691D735F09A060D6A5301A9EABA28AA6D65FD698055A56A3330780424
      0699C43533DDBCD9121E78C4169C7CB62DC51BDD45F7E354E8D41A519D49CD57
      1840E4016A24812AF4B517F77C8F4259F6FA46DA144D670A63D19CD9ACE14C07
      205AEFE1991EEDCA5CB9571514EA0CF91D333ABA8D2C4BE8CAEB385834A633A0
      0A0A8C83EF92EE951722835FE0A1085210C6524AC24FA6B7E2343453135247D1
      603954DE7CA8BBF16FBDF5D65A64D22BAFBCF2180072C3DD77DF7D9E7A6129FF
      71343F78281F7E0E5F783D1EC69FA1EB4E24A1B286CC7C3CF7F7814C55E43F1A
      35E12AE875A50C7ED03031CCBE8A9C2ED851A2FC60EC83AE50F7234012E981C8
      D50887B058A4DE62F7A25B0E4078DE2942CD63C682B654ACAB156B5C7C7E025E
      C79E13CE75895A25DD12085D29E119B49456725C6D3812D5E15360E1D37C3F4A
      F70D0108E11085449CF8ADB31D48202A6252ACD5099660AA420CBC46CFA9CE20
      9185EC0ABDC4E282CD950E70286EAECA6535C093224AC00BD984025C8BF25B8C
      C27B970DB09CB1A6554CD7B3BD8433CA082BB1F10420159C091577A9A75603DD
      4215BAAA257E5B01B1C0B578076ACB992DB2AFA6D0F6D7C08CA1E36B7533B337
      18F129EBAE9ED05613048456AA6FDD686059947E5CBA8DEFD130AA56A48585A9
      104E03C946CD576F568F2F3C14D7878CB9DE96936F655317D8CCB32F256C7832
      DC7D0F400A8E1E65850CEE12AD564C24259963F1BA5459BC87A4BA0ACA6201F6
      5800642DF99339E3CE67042A7DB1320991151256C94AB084BF3C6553986CB801
      32443C73ECE30F2797E0038892E46A56A8AA66858634B344E02D65A116176225
      E91A28FFB193EF5E8BE2D54C8EF53FBCCC121F78C0AA2114580C792655242BE7
      438B7E2B26D27F00002DA7EA97F00DC422B7CE1AF14270DDBC79E7DBC3000200
      C22A1399224BA14C9878E91813EA8CAB39E5525EA9EA2ACBB108D494E8563DD1
      7AC0E32D28BA6BEFB803D08A068C0128B50301C0D5C1590D25D517AC857A2C4B
      4C861C72A74DC47BDA2476210C3AB5334950EB7D8A0DD5D2238BB59241C8CEEB
      29E5F5C31268ABDE49059B2B603ECDA0457CEA134F7BFDDBB0BAA5AC55AC5A03
      50D5B1A104005A33E2525110C1F5F5DD0E010887A62EFB1574A31580B82A6D1D
      235D151AA8DCAE23E7268F586B52848E4619225A2778179ACA59C51C9C8A4A1A
      130216B5804633F3EBB5B694BC361A8E3A2F48BDDB44952E01BC79AC86F05729
      EF2D63BDD634A97B356499028825F4DAAA9E3AD5D6FFF42A9B47586F2354F058
      404434DD1435F2248220128CF24DCEFB5075BE2F718C01564DC916E8EA9361BB
      95CE9EC3B9C87100528FB1244A7CB8A59240430D5D5D970C1759FFF0EFE0F1E0
      D6917CFC10D6C7010FBDB6B3AAF548BD1A74A670ED8DFC51197A4C067FC0C60A
      9A2D12C20A00A48D9A90161A2936D295B7064A6F314CAC4C1858BBC8852C8281
      F5EA134F3CF14700E4C702906F22C722EA7D75815AB6932C7F0A049A86E7B111
      E04821FF5104FBAA468583EAE628A40AB2F7914974D177C349F443018F30121F
      EC44767CD24249F40E12E9BAB8EDFE8C4A451C8050738255A311B256CF425433
      C3445847F4A85A45F25114D13524D457118E52119C0AA9E2D5E21A4B50D5D46A
      F4268913AFBC4300096A470638F071C97071CD35A8070525C5A87049260ACDD1
      84B170C4104A43414A5C65B0BAA3B2A9E38F24C4C173D9BC361D65A70AEE5CDE
      AFDA81D8C38FA13E814D4F88CBD14F510A738EE84961176188DFFE91F6DA4A30
      2B8E8C57E01A27B6C08E69C6BBC04A9607A2A8029663051B5AE12B18ED502B19
      BFDB8C95C7BC910666B9971DC8F23C35D588C89350DB7442972EA9A9F1AA9A23
      9EA9B838A244A64B66920728E071F5F622565C47FEA4C10DC6E2BD1A612AA54A
      9C7EC5CF6FC22A87164AB829859C86376F7E088599E4981C559A643A9E593A14
      E7580034815A8864F52BA2206F15333D669D70B6154F99E19A63AA2F940024E9
      6FCFD814CDD120D7100B93CE0B61D1CEDDF5D9227FA2E9759C4F81B6BABBBA06
      7BA209EBDCA240D53A438D0C37C0C69A47D870D905175AE29F1FB2B6752BBD59
      E584069B112551EB958360BAA4623535D58D9C6ABAB16ABCAEF2714A30B991B8
      1F05905D28F38E002407A3408A5D8A2B0C20091CD70ECEC11626184E62E6FCF6
      FBEE4321E211100140B3B296F1B0B9768AAD4B39BB59321959B6E97777D9FBD4
      EC6C271495388846A0B44D89EF4EF539735BD4174A6B4ADE9672300AA3C90356
      625FE0B903D2C64A1866D3A1D0E63CFFA2D7A78D4EB48657A9DD540D19C363F2
      49E8A7065143CD3C5573C5B672512739A03A274AA8AB8D900044F902791FB51C
      A3481B6E32A6E3091256616DC9FB704686267252D0DAA09A24BC12E7B98A8CA0
      73A9B5A7B5A5509DE6DA6BE47081DAD8E45A23A48FFA0AAE0B9D091A9BF9AC46
      9EC383568F345BB9D4A27F4718915CE76A00720F9105D52379231A3C128C8C0A
      B70600720720BA25C499ACF1CC9AA78E975F3D7F9E979F21E4261DA2E150414F
      AB304048E7FC2B0024B2523DD0C7414448FA588FC9E097EE96289AE4375A34F4
      BCE134B4A1FB5B69B2D84C18AB9EC68A1584B1F6E185240020EBC9814C01409E
      F8D39FFE74D317F8E06FF15B5D029D24F8C57CE06D64E2FF0A02CD82C2BB95D0
      553A2052826B53A721ED4AB42879AE2F540D48E07944B6159617E2DC367F5463
      672ED6C745DE4FFC7AC0C5312058B4AE3B269B4E6E6F6D398B94097F1A0D6A71
      51CCC67ECA5E3985E13D2347BA213E2B8907AFD1584F2533516A7130375404A7
      3E4A6E600FCDF8E2E930AB82B224B8FCEA9FA5D6162A5E12E0B8022525850105
      CD67D06D16CCAA4CD51638405125B3D82FAA20F63C176F221C40838891A35E3D
      6AC3ADF8ACAC24B9D98AE1CB8311A75D2D46D4372815D10C89250C209A73C619
      96FDC2F3D686F5AB4D57434C5E9BBE58CD18B9AD50280B25E73ACB43CAAF65BE
      86736FB1AA94C36892B2274CA0B19E72D98D56E96AF36EDBB612C2596A85B3A6
      5B2E633E0BDE996819AFBE61F12FBD6C496FBF4531D95C6BD8B48E5E50C4CDA3
      77022C245BF7135E5288A90290C927DC9485451BB3D3D29F618E370A3596F3BC
      1B80165556614125B8F3A9D64EA7C3B12C7035D18BA7B1A144F3BAE30835AA02
      7ACEF833AD701275176A970F0DD4729963F2D49F697B4E2F2CF242BB00D4DD4C
      E0CB254496498BFE4C063E89F1E5A89C0A45AAD32B202DF0C805585CB75E0C82
      5D84711691F752282CE6C10799CDFE81B53105B08EF621F590066A49E2CAFA54
      BF31294EA720B1B8458756A19C2CF1062594E963E614DECE1DB6FBD7282F8E49
      ED5512504C62DDA9A7980AFADC602E5F89CBCB74DE298FE7C3BA52BDC26EBCA3
      2DF46B9B2A00814EAD4989CE0AC7B354A850F5086EB4B328EACABBA465D8E6DF
      DE450535B34BD44180BE6409B49D171941440D791D8E3EAC90AC3A22BBE3114D
      9935CAF747714DE4F1CC1B7D8265FEE52F5EC21C25EEC62D6B12246BC80B0D43
      09072D246A97E375DA155880A00250BA40B871C3DCD763D211D5786595559035
      086505F36D0805B8A474D37E155F72BE34C44973C9B352AC05BA72054CBB8259
      D3607B4DB2ECF7DEB1F4B7DE76924DFE6BFFF4A9D6B08ACA7C1895964CD83637
      09804F2197920D5106C0879DD796B2CDDAD62EB29CC71FA44EE444C81030EDA0
      C6C72BC7C9F516F9450C2C0D4BF3F695B7B7BC2EC0D4FE00A8EBC9ABBD3762B8
      954C7FDFDB0F78E3424BAFEEECC3909533727D25D5D5ED27D6659DBCB1A37627
      41CE39D0C3FA5BD721A0F50A40C2EDDED1F1021175EB1588B4302FA471EDDAB5
      35B430715EC8DB6FBFBDEBF9E79F5FF4CC33CFBC0C80DC2900F936C7D313641A
      83E7F0433EEC7784AE9E2379AE39E7DB499E670222A57ED3C416BC8F3681873C
      1021571840820C7FD0B6FD5012489FF549FCBBCF73B12BF9921100225A2BB1FB
      3A4235F8C52C72166E5581D5EFDD62BB5FFA8B2DBAF11A7B67DC587B8FD0D042
      ACD2CDF4C4D985C5B21B4B4509B81CC66DA6D3F23D09101155546C1F579DAE16
      F00A83D18262CFF78EA5988BF6D2146EC9BA53E33DA73CFCAEA2AE2D06610481
      C7DF0388D78641A11C8187072080478866A885AE319EB29A042E49308454F8B6
      0E8B731A00B8F6A61B2DF9B5D75DAC5E6EBE40BD80D867099BBC5C8DEE086331
      E410238D204419055D95D893C4446BF3187EA5D8710E1B256AA7D52D5D0C6DF3
      158BFAD35DB6F2DA6B6CCE2517DBB4EF9F6733CE634638233E279F749ABD77FA
      9936E1ACB3ECDDEF9F4F5DC095B6E5AE3FBA7052ECF34F59E962BC8444802C1F
      4594B40DF0809EB969B96590F09EDD1F40A075858AF6A2D4BB484584A2B4AAC5
      098D0EE59DB9EA7DC807F1E40CA4E434276335618839CC1D8F04903D0088062F
      AD1C0E159510D02E5AA1E40AD4098DE574A70A9E41618950853DA0F612A66A71
      210A6D0649547503DEC9672BD431FDACF3AC682A2132156B525CA96AFF3ABA39
      57A048CB517A9528CC4A14B8FA1E69164BA39B4F2C000188FF0E406E7795D3EA
      91E60188DA90D3E04FF917CDE3602D24918B4823AFD50E20784001806C1B0E0B
      6BE870DB71E71DE45F042058D7847B0200D184BBD67600490F0108460E00123F
      0880A06BB2FA3FA5A8C9E047004414660FA00520CA9928F4A5B936ED00A28E07
      0210E5BF0837692D4979CA0A578E42FF05E3025CA75D9D8B5A4084B05E304E41
      1E87F376556CE872269C2C85A44AF0926151A94BB6BA531763E527BEF09C453F
      FA886DB8F5165B4E31EBBC8B2FB259E79D67D3CE3AC7DE6736F9246A5F26B3E6
      66E221CEBEF487B6E89A9FDBB2DFDDC25CF2E7AC74CD420C17428DFB30540E60
      B0C4ACB3BAC5932DF9FE3B6DC9F8136CA9DAE6135508FAAE89D22DF0F000C4DB
      770188687E886A833C0019E601481E7B4300A2F942AEEEECC3505467F9DB7FB8
      9E8B086B05BAB72300099A2C06AD4DC25E883F02D7D0F9A2F4B682034D84B1EA
      E8CC5B4E83C57CC2587178206BFEFAD7BF4EBAE79E7BFEAC424255A0F702484E
      E0FE657815BFC7757911FAEE7C9068A706468146E50180047DAF82D055002041
      BD47D08F5E07DE19807C1CBADAA73EF15D0048331C74B55368ACC645178868D2
      5B46B4152F9A695BEF85C972FEF9368DCD3B0F8B741D61911D3086C4E2D078D4
      642A90D5962211E04824B99B481C559D5D556498F8FFD87B0BF83AAF2B7B7BA0
      D381CE74DA86A10D35CCE880C3CCCCD83033333ACC31C5CCCCCC6CC992C52C8B
      C192655BCCB6B4BF679DF71EE5F5AD14A7309DCEEFFB67E6F44A16DD97CEDAB0
      F65AF886A7FF064A2E9EE94E34504041A4A9B910B161D420D7E0A0A3568A3ECA
      F2B6A2DAD8820C44117240EBD40AE885C1CDEDD553F57BC5DC29604A3BED574C
      1EF3F91A32907168228D3B07C6D0438FDAF65832814AD27AC0A302F9F30AEAC9
      9BA19ABAF2420D0F711D0F731D9149110F7129808AA743EBF25556FCFD505BF5
      F8B3B6E8963B993447FAFE8C736DE6C967D854CA29D3A5E1454D783651EE2C86
      EB2692A90D85C9D49F8753DED2137B21FF70F1653CF0E7D9B207EFB5B2BE5F58
      EB34665516520288596C367BB295BDF6125ED49402611725D2E74992B911BF43
      00522AA143323D572E14AD16F0700022F910367795A8A6749381FCC90042EF21
      1F6097FA6F16814026A58D582449A622C9BFF89E3F58E3BCD96E1686DA08AC1F
      34DE9A985B80C127009197FC1F01087B8A22EE2E0021D8B2F8383290FFE30002
      43AA1D991C377D4DF61E00080108E7408D64656392267172ED94B8C4BAEA848A
      A525351DD77E64D5D3376B5376D244FE22EA6F31CF5D0E2548EED1CA91A3511B
      7ED6C65D7CB98DC31B64DA2967388DB839B0C9E6A021A729FB79DC6BB3B9D766
      400E98A6C584FE68EE9971647753CF3CDB96DC7E1BE5BB472C9B20B06A22048B
      F8A56480941FE74CB0D2375FB44567E147CFBDB69E4C508C333F40F853016433
      FEF34EC8528A0DB287F83F0E20DDCC8348EEDD1B4F75904C6C87D2DB0A1BAB1E
      4AEF26060A730190B59F7CF2C96458589F0B40645D7B20EB54D6F500C4B39887
      7C038D6B06BF683D00524C26520B80B806BA18584A79BC6C89F7FC88D6A2EF09
      40FEE668DD0380A88CA50741C3766DDBD910EACAC846B8995B01903ACA5A6ACA
      26AEB6FC6F3EB7C577DD6593F04A9E0523477A3C73615D2D46FB6A2DB5F5F594
      52A4CF944C76E218426428F9F84597D280D7EC884A50EA5768F357BD399D2666
      869CD330FF11880840D4FF709948A4C9AE7242A0920A134B8C9DC8F2FED5C18C
      493067A2A8550022B98A4CA42BD2612A49E44E0FDCD433CE6146E1566B872020
      9FF38EAD34C461AC544101AD6452BACE513F61D45410059610054243ED5C8B44
      F8C011B61203A419975E67934F3ACBC6A2C9348EDECF3C8E47C3692BA921AFA6
      419B8826918E7F2D5F5F4E7F6129D1F572CA4BAB8E3EC5563253B304E99589B0
      8EC61FC7E01F93F34B6FB9DEF25F7FC16CFC30B3A103ACEE85E76C21C27CE90C
      714A93C8E94C711E9C1A6F64E23F0B2A6DA69AE9CCC9A4BA129600E404E8A927
      D8B45EE75AE5F01D4B587F2A8014900DEADA6840340DD99034583A6BF0ED9806
      E73FFDEDB7AD6939604719AF83991A49C46C61E3A88218E0C0830DF3CF0110CD
      B3FC9FCB40BA011037BCEBE61E68149381B91923B7C86AC96EB554DA6BA4912E
      5C95CB6B1DAAD2ED35A4BD35642605042C8969563D6CA4C53EF3924DBBE25A1B
      04480C40BF6C3219A2BC4162010B95FD24909800ED584BB45AF526D7D2175C05
      CD7E1159F952EE4769B2CD219B1DCE8CCEB8B37BDBDC9BAFB5EC375FB08E11B0
      12470FB1CAE71EB715A7D31FE39E93B0A993A8E1EFFC940C44DA6ACA40FEAF03
      881FEEF6252C65216AA87B9145AFD42B1051290B0295060B5D198B66FA163290
      4234B01219249C4B06324000B20B99C2416CECA749C2841F7C1E31ADEFC84066
      F17122E0512AF55D7E595B44B6DD355EBC4D6D98BE1B962EE90E40FE9451FDBF
      38F3F0BFC0034877652CEAB9F215871342D91A0A2A8DE36628ABCDB5D4606BA9
      C7CAF52D33C96AA78C73B5F00537DDEA6C37A5983BEB64A2718693663174B510
      01C1D534DED3914EC83FF11C2B40B2A204A0D948245B8AE48606C24AB8E1CBA0
      F49650B229A0A1A91AB880C431AA04228E811580869B03892C29AB6A69904E65
      0695705C19878D4FAF69AA9DB364F3299F6B6528A93C702B78F0E69DD4DB665D
      728D9379B0241AAF1544C3F0E81B89A26B2981346B286BB3A2C04AA67FB3E96D
      2CB7ACF7BEB24537DE675331D49977746F8B65D25A827231F477D239CE1CFA3B
      2992C8A05F91CEDC8CEFDF88FE2913A40C84EF64C0B59E9ED06A7A1862F42C05
      44E6F3004E44027E41EF532DF7CE9B2DF7A6EB2CEDFCF3F09408F4A6D2353049
      335B20E94A732A0732252E5DA6340D15426B0E00843E114DF7E5647FD369A257
      0D0340B028F63D909E00A448ECAE7D4FA65414F87BFB1296C809C1E01E264A64
      20C9D07F251039F3C2CBAC62D0206AEB9442189CEC80565A4F16A2EC630BEC1F
      478966776C8022BD43092B9281B4546BA88EEC56CD5FCA80F18F918140C58D87
      E0E001249720E2EFA184A51268B88425797439514EA58495F769A407120520CE
      3A590022F695320C80C2A91A001EAEFDC1C76EF16551C755D9D3506F33F2F6B6
      1972410125B125B156FED9378E1D35EE24F4AB98759946DF672601D30A32D924
      CAC74EE8918F9D8CCD1ECC4EB1F4B17B66C83CA429E61C14B9CFE4DCB80CA2C5
      3CEEA7F92790199F82170F2E8E29375D6B25F7DC6549179CCB7371A85391CEA4
      BC29C2C4CE3210B12D55C2128048E1E0FF1A80445B64440388740B3DA5373495
      EEB290C864BAB29076E8BC4D489B5443E32D85C29BCA5A020B6B847A20BB0220
      B2AF3D835F7E3340F1229DF7FEB0B0E6C0B84AA6075246F651C7C7EDB2ABF56E
      837E80300C205EF5514D1A01484F54B33F97BAF66781CA8F024860F6423BDDCD
      3FD433E750D74694DEC286218F09181D8EC181F2A9F4A69AA74FB78A01832CFB
      BD3E36EF9E07AD1FCDDF2FC806FA73E30E63639B40D3568AA00B889A57B3F139
      8322D2644D35A7494D96528900423320297BE1E6B7C71E9112561840028B4E2D
      4DADCB554D838772AE0BFA006CDC9166A75ED35412DB736FBCA20FC0374356BC
      C1BCC31ADEC70CEABC534E3CCB4AFB7C45CF811E84982BD201A376EEFCD80520
      92814072A46EFA7C5BF5F4AB36F6F44B6DC1A997C1FA391F6557A2B55FEE67AB
      FE6B5F4BA6242779F132A2426DB8813114FD0531C278985D24CF03AD61342726
      491F482521F514D201D9380418670374D3A1922E443C721EE0B9104690FCBF95
      6138E149368EA07949EF07C0D2A0A64A72920F4FC6E33B450AB89A963E049AEE
      81A7504EBB1000A14711021035D1BBEB81740720FA9B0180284B04A8003D6554
      738FA06472D575C8E8536EA3916BCC25C82FA59139831A1AD7CE835E854F0720
      11EF07DF03E90140D63FFEF40E00E25C08B9C6FF9B00223B5737F71001100174
      D044FF130144580288380051FB0300910DB3947845F5AD93E999243FE87F1833
      3256865BE9ACE516F3CC9B36EEC4DE369312D53CCDACF0BA98FB61094E81B1DC
      2B9A7D4AC60153B332453C3392A1D76B09C15509B46EB1D69C93A31C1CC9E263
      76DFD73947AEE67E5AC3D4FE5228EE7308BA16713C8B008D857BEF8B678A9E25
      D856B25A8E10557E2C03118048C2FEFF3A80F876820044FBB45A0D1E3CBC3E56
      D82BC497B1E417A2C9F455AB5635D348AF6112BDFC8D37DEC87AEFBDF7563DFF
      FCF31325E72E0F1039109E4906712BCD93571820D110E13C3E4E0585CA010FCD
      80B44B4051CD732FD9EEB310A5437EE2DCB3B1F4467B02903F0B08FEDC1FDA09
      8070DFBBF4BA811AEE161AA435507B3511D1D9091D52732292EE90699178FFE2
      FF67A63921BB7CD8462B3FFBC4E63EF9942D7AF0119B76FD4D36F4B433ED7BC4
      E746C37C998929D122E42762D06412BD761D1BA38C8974F32ADAD694B9E4C1FD
      8C88EB8544D837C1743A9905BA59D2CF92048A0024E8030400E27E8F860AE9A7
      489EBA84F9812A36704D348B0A2CF09AC5063E9E72DABABB1FB196E9D4F22529
      42335474DACE1A2263B8FD96986C55A326D892079FB251BD2EB0F144F64B008E
      D8034EB478A673E37E456F85D28E06DA4AC86C4437D52C411EAB80C1B4223676
      695549EB4BF22B2AD3496FA90073AE7C74A4D4945496120FC02DD9750F5BB6CF
      DECCD8EC6FF1CAAA78B015618AB2AC66B61BE092C39FE663F473CA0A0010D9C7
      26625615069055079C62B34E0A01887C41222CAC308024EC4676C63988061095
      2E042025BC162059E28617C94CE2981F9982F8E23C4A7F6D0B165847418EB593
      8134927DD4C34E53C6A13908D5F3D51496E5B0330F8A0088585892EBD03061A7
      32104999203DF2F70C202AE12903F9B301842C44FA561A4C550622A55D81872C
      986BE913D44BFE5CD3F2EA0765E658C3F40548B2BC81EC3E0290C8D54B7E7D35
      99EB4AEEDFB5DCD7B2CC4D214B9702411ACF40FE610758D95180FD61FBA30A81
      41145A7239D8F5661084E9BED333B0015DB22C067645F516ED399EFB467D8ED4
      234FE0158A3B4409014C0AF7A7029D52BEEEFC413483F5234DF46800A91A339C
      A092E748FB822C10FECE7B2061F75781483480842D6FBD6FBA1AE96263F9A142
      18B9AE91CE40612D7226152FBCF042CEDB6FBF1DFBD4534FCD909CFBEEACC3C8
      44CE0608EEA05CF53A032483A97D2DE0E334C0A302F068A07CD505205E7D5775
      339F81840144A5ACFF1B0082222D6C1167BD09D028CD66BCD00D46B5489EA309
      E6123A4FF2DB4061D0A9D41AF2209A70ED60AEA1A920DB9AD91C18D7843932CD
      72BEED6BCB9E7AD6C65E76A50DA4D1FC3D3556E917292D97AAE93AA67BD7CBBB
      01E090A7422E29BB4C7A5472925DAA7A1A927CD760591E00E24C7F1838CBDA7F
      6F0722F279761ED02A633966929ABE81547C19AF156CEE05D48F45CFCCA52FB3
      8CA87A227D19C95D6F19027B447C7EA689ADA6DCB6A911083DB37A2CE071D7FD
      3680A87B24E5B6048628338F3D073BD55E5095A1D2F2705590756C658A7A331A
      5CC5020CB287BC7DB10AD5FB3B602F1E5CC0EE101103545A5064F87BAB04C0B6
      4295ACC0577B23E5B47CC9A2E3F35000212197875D64020DCBB9BE0E25094704
      100B290420A2D426134D26D168FF0140F83D6420AB0EC04A1500D93C34928108
      40C8163D8D77718485F5630022A0127DB750C65634EC37A0C9B50E6DAE7194E0
      E6DF7C97B52DA17704C82A5B93E9962C48A523A63ABF987D72D8D3409C1CE87E
      144012E32D3E2A03D179FA7BC9403C807816D6CE321051E0B7FB129686891C80
      D00789380D4AA453015923ECACA67668E104664EDF2A2BD3052BCBEF7B022DB4
      0B6D2AE73AE1B05391594160927B6F0365E012C80B39B008A54E9D7D2865AB83
      50B03E8C8CFCF7FB2063F36B8BDBED9796BCCFAE64AD0890F23CA4E103AF5E62
      C9315850737F49F34B596B1AD955227D3B5500F2215D9442F6C8E759D3EC8BB2
      E6729EB70D48DBFFFF1D407C135D43855E5D440385ECFBAE07222616D5A876DA
      1ACD082BD632855E0970E4BDF6DA6BEB1F7BECB1799232D993CDFE08F6CEF300
      90BBE97DBC45D3642833208BF9C10C521837442809775178255FA23296FEA0C0
      4369903210EFFFE105133DF2FD4D1957DD6529CE2724585EC8CCEBD6E8A15782
      22D905E6EABA4044A62FD28FD24C84B8DE326A72120B7A10E0BC77C07D6D6232
      5BE281EEC1906860198DF7BC3C6B8989B1AD73665BD5D87156FA5D7FD4539FB0
      E5B7DE6133CEB900C5DF6388F03159425A5B663973B8D197285B204BC9A43E9E
      2EC913455302917DC93EF6D8152009366A513E9D839CF4B4D8787D235DB2E7EA
      8F6C40F1B700998A02D58725C721132067B2A326F6E996FFE9E7C114F5261845
      6CB6D5EB5759E58CA996F6D2AB36FBEC8B31D53AC1161D8E7E14D222EB23F32E
      E930C8D289E03376DF078659F01EF20E667E8099823CA2C394BD77B5F83D7F8D
      E22B5EDC87F0C01FAEFE0CF20FBBEE05030D90A10752A199189AE21AA84CC056
      D4811E60A187B84CFA53944FB4242858A8A141A74344198B9FF10092889B5E02
      6E7A2944A69AE1C839B4177D99D36CF6C91705FE1B2A6185006418F2FC021019
      4AF504201212D4792AA3015B2E0D241498E54D220099C294F2D23B1F74CC2037
      BC261D266A341AB66C6A8681A49B8568BB1365596D9A92E796DF4C2B0CA30E0D
      16F2EF2DF5D20363A94C0880AC7B1431459842EB0163D1B89D3F0C40BCB31256
      3A259764A8BDA2F18E91F918F46847E3D5701D9BF3CE68BCCBE4A6A8399023E4
      7D01D82B30D1901CF454A7EDE6668A546AFC81C62B00D11CC8E4934EB6DC4F3E
      66E3A7842B8D2A28BC9214099B940564140D0B0633201AAAD34C481D3A56B504
      6052D97594D7B262AB618A3BE9F1676C1901CD1C0828CB1918CDC317A60456A3
      B317A66C59421F2D0F928186298BE999151C2C23B67DE97550F295ED81327254
      9A33B0E8CD2498D980BDB2044B5D5F89674B6A0332EBCAA42797CCFD2721CA0C
      593170DE8B989352B62BE28954AF750D346724AB0649FAFF141A6F740F44F337
      7F8924C99F5B58E9EEE7C24384E1B98F701FC4F740A24B58E126BACF403C8080
      092E03C11FA48E41C24A4A57F928F1263EF0C0038BD444DF8B75246FE87CC0E0
      0F641FEFF003C3018E2552E1058136C981301A40BCEFF9FF650051D4D422CE3E
      352C4D66D7B101D452AB95AC87A24D5113A5F1D4A981214D9D52C268E3A16D66
      2ABB595A5AD42B24F2E64A15B58AB248D3357D5DC2265DC0E05C161CF435ABAD
      65D66C7C0C865A519F8F2CFEE1C79C5ED558E8B06371559BC490D264EAACF3D8
      4013C94AF269D63999EF3DF7A236BF97F3B42EF89D441755D22212731A3DC106
      2B2AAFD27701889B5E8606EB2429784804207100C81224C8A79D886CFA8B4C30
      C7318351A6F98E6CAB5FB5C4523EE9836FC275CEDD6D36BD139511D2B10F55DF
      42DE27EA0DC819B0980D2C9F87553ED2F9B83796E3E258825F7A06E584B4DFE3
      EA86626ECA61FC4D4D8C434D8EA73490B83BB56336E632C4EB2AE8C3141F2F29
      ED63D9042895E00A970D306509641C2D391011FC4900C2C690ED00A4D75F0C20
      DA4405201B916B1780E420BE1847096FAA079018366A8921622024AAAAEAF8CD
      0048BB004403830085F399890088E6405C092B1A409250E37DEC499BA6E14618
      727F2A80C861F07F1D40A48C1B011009088A7DA541400D166A2E44AE967A5571
      4F33218D7A4660AE99540C18BEB4D52B2DFF9D776DFDB53759ECC967D3A3C3EB
      6637AEFB7EC7920D9C4009967B8EEB508C2B6039F7B5B4C1B4F41C64EE4D4082
      806806DEEF394792AD1F4D9681E272CE8978F7305CE9062D311C936F7A3699F4
      068CE1720886F20F97FBA53C66204D908D6BB0379DA151290148ACB480C044F2
      2DFF0F407E606169C62F0C20EA81084056AE5CE932109AE895CF3CF34C010CAC
      947BEEB967997A207B815647F1385C4037FEDE98989877A1F08E007D960220D9
      0048551840FC14FA4F0190B02AEFDFB4711E86E7A8ECC34FA30759484033D4DC
      9386EAEA6089A86EEB66C100901AA9CD02180DE8EEC83CC6C98CB234B0E5A77F
      E503E01E26F4A5B6D398EA64B3D9568780A0A4262478277F0C810936B4C0B8D5
      CE9C65C58049E27B1FDADAA7A1B15E7D232AAB27D3ABC0EF9B0D2603A73745E9
      597B119DD2271080042042F4AFD2967A05526D8D98DE88A12296960044921C6A
      44EBDF94C20B405661013A053AED5A26A19D8F441E4371D989563C72884DBBF9
      469BCC80D44222B7E56404F21D4995B10E9BB41AAC321D529D58C0A4DF2FC560
      31C792F6DA9DF2C05E4EA74A2AC10934B7D70064AB009B553433452088613E26
      1E0F8618FA0F12AF5B4786937E1C4AA8B090249791F26B3604062D9DCC3A1B86
      3BA6C8B1B9212E1AE8CA40D43752092B814834993E88D85E02909507FD690052
      B227B4EA7D88A8F786492616966C6D1D801C04800094110089FFFDC95100C235
      446B4A00229BD21654679DB785E3A5EE0440109C74D2E27F0180A4EDB5AFB3A8
      FD9F02100DA02A0BE92E039974F2C996F32919884824F4813A09A074DF0B40BC
      7CB90044E53D57E25380A5A97474E66468D6562BAD30022A9402AA07F4B755D7
      5C6F2B8EEBE5A45292F8BB697B926D532ECC6315408DD72067C1AEFB9311FEDE
      362933C4B724F7D764E2BB720ED0A44A24634CC2506D1525D0F99C932578D64B
      AF6C0E99ED441C1867EEB11F93F7084E92F5AE64583409B65E0A43A42980D53A
      7A2DF1BB10B4A8D728591CFA8CB90446FF0F4076A4F1860144CABCB431A4CCDB
      8EC1543372260E409E7EFAE942FA20A9B7DF7EFB2A6961ED0020A42AEF32BE3E
      828C6329C8432B24DB018874B0C232266100F1598877210C4BB6FF1499F6BF24
      8DDB29D32B54BADA113C02790539160A63D80B5C73B4864D42F55BB6096229B5
      4A91668079234142D729D442FF869CDD89C2A974A13298CAE26DD4C49D789AE4
      1E0012272D21C55ACA7CCEBF41944EE94049844FFE18C87C6F1E3C0C7F8C576C
      C53537D88293989DA0362B273CD17B8BD54FA02C55E44044B2DFBF0B7A05D068
      BDFBA1935B101B252202D725494146114F46B18C0C64025159ECC38F9B2D63A8
      2A8D32D6DA65B6E299A76D0065915934A8D742938DE577A4C18D4F23832984DE
      A84DA590D91295C43468E7665178F0A4901B079B65C56EBBD94A58544B89E816
      F0B5B900C76C7A3933A153CE92373A1EE1F331509A092D760CD3E4C377FDAD63
      A82D12434C0AB3642819D08003BFF94056A4AB7C15029064BEE67A200E404420
      A0D484378768BCB34EB9C0AA70440C97B052FABC63DD95B0BA0390A084454625
      2F6C9C099581740B2094A2C200E2A4C935D440EDDFB9C1F912968208E2090526
      4D0D5CFB1080AC7DFC870CC4CDFEFCC41256184046D31B88C33CCC95B0B6702F
      FD154A58DD01483C43A84B8F3AD60420D99F7C44268D444808403AA51849B0E5
      33906640A5857BDD092292BDB793A9B4433A70FDB66232DE552B2DE3C9676C36
      C3A74BC99E6361EFA5290B25D0C9A59C9BEC541AE84349521EE999224AA70275
      575ADC932086EC210EA2C322866567137C8C233319411977BCCA6CC7E00B8346
      953E9E88EED714D85C13D0009BC0CFCC2008998D42C462EEB535B00825CF2FB9
      1F592C38F6A2C44AFF5F06D265751B6EA2AB07220021037173200B162C68C29D
      B0A66FDFBE02900256DACD37DFBC4600B2A79C08D9E855C2BA8766C9DB4C1E0E
      034016F3839900C826A8BC5D00A2F4467D10FD31B1B0041ED10012DD0709EBD1
      FFB50709770620610397B0667F603B190088638FA8EC4026215AAF7F20244BEE
      54E104020CE0B9A5BAB6C4EBA87BB5200CA726AA146DB7A27B5481DED4164A59
      5BEB9094AEAF7369BDD3E3E481EBE0673B1B594C82B7C364EB90C8A194533350
      025EB4183EFC17B6F2DA1B6D068D3E45F2B928AF8A9524E01088143AF010AB29
      D0C10AC4DFA41B150CC2391F094964F0808AA19502F34B00B2145AEA74040B97
      DD7617D3B830B1E2D65AFDE89136159A6A5F1829ABA9ABAB411D27132BE93031
      A55B0A9014B3A1CB025512E39A6351AD582AB6796448D9273087410D79C22EBB
      D9F05DF6B2290C7FADBCF80A4BBEF35E4BC338290B21BFECA75FB19C675EB7CC
      275FB2B577DECF54FA95369A077C1C35EAE90047ACE44414214AA892C130A7FF
      E527F029CF499F482C2C6544626125502A0B0004D0395C3E1727D80C5C0065A9
      FB970048315948A9FA01D4C0E5812DEBD3A9879E6CCBEE7A08804F08AE11D75F
      5221625BA9762CE74676499779BA5A333791EB81440388AEBFCC90C840BA0310
      911176D603F1002213B12E0091A19400E4274899ECAC075222999C5006228B00
      0F20130090CC4F2300028944DA7192FF9128A2326E65DF0A16452270C6713C48
      025327F72EBF10193C65A45B2DD768E9A557BB0023568AC8DC779A5F52E935E3
      F043F12CC7F9516C420DC622AF2F8A78210D7095504BB192CDA724257BDDA9DC
      23A320A08CC1937DC6D5D720D573BFAD0198639E79D6D6BFFC32E0FA02AA0748
      9FDC7AA74DE77E9C70FCE93682FEC6244CC1D690E5E8BE51535D5E2FA2D43B00
      FBFF398084595861514589E646E44C9C1ED6E2C58B1BF147AFC60BA482E679C1
      134F3C9176FDF5D7AF1580ECC143703837C239641077021EAF43E31D0C856B01
      4DF4749AE915A4310D9A030154A4C4EB1AE9FA6302100DA184FB20DE81305A83
      250C223F557DF7A764267F0E8078CF6227AAA8266864058D27EAD81E34304452
      A6C141BA92D4764A53020FD9BE36CA2C89EC446AA2D228ADE7E1D94AA9A30642
      81562D60D100D82823D1B9F0122F021D2D652F923D77CAA2D8C476629599F7FA
      9BB6A4F7B96C8E343E35292BD554190F01223B0288AC37030071120C11814545
      F03B02C85138CB31CB8173DF5406E36CFC44B3258B2D1953A21934CE47A1EC9B
      73F229B6818738C94DC70350F88FB89E07A5AB227A331B50F7D5832CE561C9A9
      A7C31C5B77DC09A8B532EDCEA0593EECA22D1F7E6A366112BF9B0C270611C538
      22E438321DBCC06DF96A6B8542BC15D1C584679EB705975C6563018CC594B6D2
      68D827F0400BEC1C9D370A40DC1C08D98836B524A8C2C9344F1D7D192D2C4999
      6812BD270059428D3CDC44EF3E033920B2816BB3C2F80B508B3DE4649B4C86B3
      F46E00641D1BB50084EC53AAAB4D6C8C124F74334E11614EEFF3200B1B892A06
      492A1988E4EEFF4A00229997FF690051162B1696CE755C2403118048CFCC3211
      2A0C01887CC01D80381BE4C05B4642924E54929E902B71B9214AFA1FAB632DE5
      C5376CFAF1BD992C3FD679CA67416E500929192BE724D87B89B0AD52B8B629BF
      A5594EC9CECD03515215F1220DE1D195945867438D9F8B06D6BA7B1FB0F22FBF
      B08EB933839E5E0AEF0D7697E593E948F4715D8C6D5BBAC46A21B1E4BFFBA12D
      BAE27A9B85B2C002585ED2384BE17E53A35D4388A2E83A5F9FFF1F37D13D8074
      C3C2EA2471E890B914CA24AD9A441F356AD456841437DE77DF7D058048FAD557
      5F1DEBE640D8380F61E3EFCD83710BA0F1127D90FE80C66CF8BFC9004819694C
      3D802200E9F0652C01883AF73F06203B03113D7C7FE97F3F1540FE38FB0824A6
      45631370A806D52C4024336827BBEA4026BAB590FE051A526EA2584D72652040
      86DCF7AA9811415A0E3F8356ABC3898F362B4002C5130697977776D199BC3758
      DA501A512215F553252F4DE5566FC1B7A0AAD23ACAA0A0E2B950376C84ADBBEE
      26D8504C72F3D0A89711642102911F3210E7D1EEC0432E6A87BA545F91A463D3
      EC90811C85052EAE7FA79C6353CEB9D06C1CA28653A6D88C2BAEB1D9A79C674B
      A04DE631B15B7838D13753D1E934EB8B0EA51FA1F28A8C964473748E7D1AF643
      EA8341AF58146AA71F4689038DABB2D75EB6F609FCCE65CB8834A99317D3EB41
      E6DCD5FD55B2432EC5106674BED688E46D9B37DF0A19C25C70D19594B94E72A6
      4F9A544F8479E34A530E44D4FF088E4F00220F73CD7F38006149D63D0DD69AC4
      14A7C9D2B6870CC4034822CDFA72C02A1A40A4B1A58DCAF980489B8CBF23EF97
      581C1227D17C5DEC0144C7E000844C93528DE640A446EB3C2022D987B30CF81F
      0290D43DA9FDFF3D00087343DB236661021081870411B751CA6BC339CA2D1868
      CAE65D5FB08EB2ED460457274EB77937DD8D90E4699670EC99640127B829F034
      28DF8907EC03E9028505081819BAB650C33308969CE282441D096656D0E3184F
      763CEDA4532CE5B147AC6A507F73D2FA2844D806D415A4E0ABD9266785ABF2B0
      AC05726C5BFC3A6BC67EB6EAEBBE167FC77D36E3C8936C8E988994B03290F949
      A34C2B6748DD07FF0F40EA1CABD6D378A3B4B024E9DE4A06D23061C2842DEFBF
      FF7EF91FFEF0873C185869975F7E79AC26D177611D4884DC8BD7EB409CA7F981
      AF64670B80C403204500480D4DF5567E71979C7B4F00E20D4CC2BEE7D1E3F4E1
      BEC85F1B409C0B5864795A5BB8F711641D017BC4F52A34214B294242834D92DE
      D6E057699915CC9D6793DE7ADBE2060EB64E797957E0338056BE8C6BA440AAA1
      32A4E51C70D490D6D7A3CCAADE89585CCDDA58D43D211A1368D4235FDD84BB8E
      DCFFE40F2DB65715194815C64C8D486338CF03AC37DBA64CB3784A4D0B280949
      8A5CD2EFDE314EE52BDF401773494D744950CBC7B914F0700022AB54CA009A26
      4E46A557B219AB6960CFC19275C165D7984D9E668676D4681860B3915B49A704
      94C2E6E428C258ECA6EDBDA7951DC6E64D794A96AA9AD4757569C96FC0CE8A97
      4F3674E331F44E56DF799775C89D4DEE78F2C816D3A6012B52CA2AA23ECB7EB4
      492402994FA98CA3071D755F8148D13B1FDAF28BAEB585879F8AA65620EF9142
      54EACA536A72AAA9EEFCE50300116824C39A1180B8214AA9F1023C018040E3DD
      C0DF8FD07853FABC6DC351E30D0004EA70D720219232FBC2D0A1899E274F6CBC
      ED051AC171321C292BDB0880EC90810840A8EFAB84A50CA491CD5300A220216C
      26A47BCD6720329412B5BDA70CC4B3B07C094B72EE52E3554D5E6ABCEA63A91C
      59C25C430A640A01C86AE61C461C8E0E94EB81844A5891C6B6DE9FEBB969606F
      439EF303919CBBA43D643A967938123750603D8D576A0232D42A210A17855A19
      88C81B4106720453E1C7DA04B2D36C39124A2A1DE74EB8C9AE1FD80E886A0EA4
      9DB1736185188C62338A9DA66C3E0010AEFBC64ACBFD76A04D39FF6A5B7ADC59
      B6819E552A254B5913CB65328D01C16C5E35EF91065557EF4F331DA2A6ABA495
      8CA6D534CA5B83C84E16DF79AB354E62E627850C379F4CA3A2D03AB1A46E662E
      4B36CBF2F6D1DC968C9E9C9DADC82B72BF5CB0CC0ADEF9D8669F73A9633C2EE5
      5ED3606FBCFC7924A8088038C5EB281A6FE00B4249CDA9F1FE20E71ED0780994
      EA39CFF47CFEAFD378FD147A34804424DDC5C0DA4606D2820E563D83849B912F
      29837DB5E1AEBBEE4ABDE8A28B5C06F22B80E377AC13D8F32E276D79988EFB47
      4CA28FA594B5964C240F26D616EA61CD94B1B6AB36A612969AE87A0D3B122A1B
      F152EE1E34BA0392BF068074B1BA94C4A8911DB19024AF50DBDB2D6F25A5A85F
      37BB17EA77E5081A905A1A0A5376D044C6013A3A0A6ED5ACE936F69E7BACCF19
      B8905D7F9D6DF81A2990381E5A040925FBD1B9899BA7891912F51279689CA61C
      6FA311C0A8038C3485EBB47FD45F613351C6D184309014AEC5FEDCCC03564976
      22D34E375B40166225CC91CC5F6C29773D6073E95DAC63F3CC8C30ADBCF787F7
      281090047313817F76111BAC28B092E9CEA49FE17A1A44F2DA98D71E8C66140A
      B3F32EB81CF018631D5FF5B5A16CBE8B18E04A3EE254C79FCF27C2D3723D9608
      50794F68E74D4EB49688CDE932806D326E7F73AFBFC58ABE1B80C61351A0A450
      28556C63D84ED403B9A2CB7FBD05D3A0E6AD1C21E75612F1AD3555CE88A9233D
      D56A274CB194875F44ABEB025B7CD849BCC7A35DC6A5CD4B00211054161294B0
      70211420026A9A94561F466ABC4B39470E40868C8390C0038DF195956169FBD1
      1B36F244D8394723BCA786FF1E101030042A94EF3552EE85185615ED839DEB5E
      B07EF63EC2D195A5785C2835655622CDFFA9082AAEB82754C252DF8BFB440021
      2324CD3BE8FE12D95BF792DBBC1D801095132068354BB6838DD6EA9881C0BF23
      E689A76C3AE02BBB5835717D135D721CCA803261BAB9A6AEA6A999A5D13C5011
      1BBF24FFD741A8588D1FC8284031E6B967C8E6984FA1A9CD78B738C3AE2F2199
      7527B72E3F8DA2625BFBFCAB360AF2C40A184919508735A59DC2FDA1E85ED6BD
      C534A5CBF73AD049E028BBCDDC0BA5033232B917AE919614D2F333CE3CC70AA1
      9EDBDA35803FE7177B6411031AEAC9BB3907BAC76550B6451E13BAD1DD7F8089
      DC029511E46659E2BB7D6CEAE9E7D38B3BD9B90066C0884A867891242582C3C9
      3CA086A7B3920F6669BE8363D73D9949E0B20EF09B0A684EBDF2222B1C35C03A
      730956F09569AAC8B3ED351C27B326ED18DA34617BAB67B9919EA5C442DB055E
      5B393752FBCD40A667CC0C4B7A0CE56702A63994D1621004955243AAB20F5955
      53025620A615984A7963A91080D0BF1B46E0B4196743772E3807941382522695
      14BFFE566CD3EEFE8EFF37FF5E9421475781A227D1558109CF80445C0989C936
      74923C74680A5D3226E860D551C2AA7AF4D1474BC83E726FBAE9A69473CF3D37
      C65BDAEECD953F8A37703EBFE01EA47BDFA47132844C642999481660B2895FD8
      44FFA31D1AAFCA58CE502AEC46E8870ABD0E96EF79FCED0044B76E001CC4875D
      00A22A99EAB2AA4DEB55FFA973D1C24DE7FC936976CB25AD5D320BAC7AFCAEA7
      DC7BB70D39EF5C1BD51B69124A3CD3AFBADA32DE7ECFDAE7903AA730B496556C
      9D05DC9C9BD424651BA9E5C6C59049CD748188945A0522020B4DBACBFFB98EEF
      D12B18E2545C65EC540553AB968CA6A382AC078987EA81436DC525D7DA62BC47
      A40A2BD32A95AB02598F488FC0890D0653DBEA8F48C644836132262A204ACF41
      2C4E0377EB01905836C738A2FC8944DBEB6EB8C36CD8182B7AEC399B48F96721
      02892B61A8A891584843B3908D4A201450691591061BB974AAA405144BF43697
      3AF434C42413D89C1AE62E72606A5BD1D6D24029994735A5BD6AE7BD1E4878BB
      1D865745AB8EE6891CBA73B6433E65E317DFDBF2CB6E73EAC6ABD8E0D6F13754
      B250B61106900C1E7095B79429E96B3F00C851110099C046C5032D00294F0540
      5E034030443A2A0090584A401A225349AC1496951C0F8BF70650F60C4044A28D
      8A408BF0C6CEDA07C742A6DCA7231AF90380B011B688BEADF617B57EB24797C1
      760108A0C126EE01C4890BB2990600A28CE00700990663C80388F3BD173D3B52
      42138068202E0010697E69601386921C09019095281A8F3AFA485BF3BC071004
      30718F74D91E00D24E262200E904A8AD30DF56A26E3B82A6F10AEC8233B99FB2
      88BAA576AC0D5AA655CA5A372288590CF5BB108AB6732464E39632C26AE8B1F3
      A0944F3EF50CCB7885F9A1152B824DB35A43810871020E8DCABA39070A823613
      89D7E18ED826D6993B51724624204B4BB2F5AFBE69334F3BCFD61ED68BF70001
      03BAAEBC71946568AEC3898A02208907333BC40AE479749D610712F9CFEAD5CB
      12F1F1684D5C4A66914B96B191ACBED2651DED94D4A44F560B88481559BA6492
      9611C877E28668B22A28E13D2730013F70A42DBEEE0E2780BAF6A853B9D7A0CC
      0366DD018802B62EDB0419C911802CDF01402893A9ACFD770420DD81474F00E2
      7D9BD4BB8ED6C1F2BEE824120210DF406F42CABD66C08001950F3EF860113D90
      EC6BAFBD36B977EFDE6B2565F20BAEFAEEAC43F883BD41A49B162D5AF43CA8F3
      1D19C85C560A00524E4A534FF6E11479350B122DAAA8EC4369BB9731F18DF2FF
      0D001140084C9C2FB14043FF2FC505321157B7968566071B5E631532EE5B98DD
      C04BBAA4D83A12126CED9B6FD987471E6583998F988184FB38243CFA91EAF6C7
      DE73E17D8F59E9A0B1D6BE94083099A87783A2BD4A6B2DDB68AD183669A85054
      C6FAED5C181EE8167A23753CD41A4694FC034564F7DA44D9AA995240ED16C9A3
      90CD1495D2145C68A94F6078734C2F5BCA1C452612E9B2BB75C2840E3C02F976
      D7688E6866A93F2225DE3C5CEBA48555AAE95AA278D58FC55E8A053854C21A87
      AA6D324C281B39DED65F7F87CD3A1CB9F5834EB6B5BBD16F10032904209E4AAB
      BFE30144522B31941EE6C82BFBC2ABACE4F3EF8882E97954F1709269E8B8AB01
      904D6C1C553072EA54C61080A8B58430922277D9E56AB8CC95174ACAAC7DCA3C
      8BB9FD514A69A73AEEBEA2CD1F00242861C9ABFA0700094A590290A0840580E0
      19B16306926AE900C8A8133C80404F8E02106520018020ABB2D7117FD700A20C
      241A40D6BE80A15432D9705D04409479B099EB1EDB2E8F709556D03C5BF6E4F3
      361CD97B0148168403096C2AC3108068505525CF32E6306466A59E974045CDED
      0499A701202A558E8571B7F2FE076CFBDCB981EBA35855A8313463032DE1D11A
      823078854E955881A3E6A01CC55DDEE655E556BB6AB9ADE59E9E894A75E261BD
      E9E91DE7AEA968B952D395A8A8669B34202BB9FE8024418F8BFB3C9946F70A4A
      78134E39D1CA077D43392C134F749ED16D284060BFE022139EF006B20EE96D49
      B05192444D723E94AC8A68D62D448FB5BC273291E6398B30437BD046D10B9947
      16B20E999D1CCE8BB2DCA0141C2C7DBC7300F9FBC940C23DE070E6E1E8E511E1
      C4F05845D097650F62AFD69EADA52C449524E91C460CA55C039D7D7F1BFB7F2B
      D947E3E4C993AB9170DF78FFFDF717D203C9BCEAAAAB124F39E594359232F937
      7982F0BA3F6FE024FEF09534D11FC581EA63EA5F532967C5A90F0278385329F5
      41E409E23310AFCA1B2E5FE9CDEBC0F4DFFF3480C01A74144ACD61A89C10ACA0
      B4E0E9956ED683FB5AF5D9A0F149A4D25E6B35F515D87C6BD25875E34C4BFEEA
      2B1B79C965781F93751C85A1D071F40AA0114E63AA75347D8461F2C6B8F4065B
      F1C4AB563E70AC6D5B406A9FCA83050038B6CED62A9CFD0014E41BDADAA0EBF2
      37DA69B677F0FB3B98E45574D829FAA51E7209B10940547E59B8D40AC418B9E0
      329BA53909584FDA3873A9532B1252F6A1DE80977257194213E9CA3C14C10A40
      8A24FD109144D7262B39877822ACA56C20933986B40799039930D5126FBC0B13
      27349FF014CF3CE038A7AC5B4C16E33310D57E7DF6A1BF29C68A1E66C9A2C827
      7ED99537DA4695AF32B338DE2DAE27540F65734B6BA355F2206F113181666A7B
      230F710359584387B3CE45FF97FE10D1E24695094B619DE1FCF8D00B368B5E8C
      3C4662350F4073557D1081A5328602A42E32011249B8CB2FC435D0D95CD2901A
      5F44A965CA1F0148FA4F06901F4A587F850C2454C2FAF10C04FF1857C222A3EC
      2103C9E51C383A6BA484250089E3D88312D691160D20CE7ED82924440044BEF5
      B939B6E2E9175D06B20C5F1AF9C86BDE464DE3CC08555BFD0F95B1143068E6A8
      80F39F8D6CB9A6B9630E3BDA16F30C8C90B3E50517DAA66143031BDD62EE7580
      AB0DA5EA960E32773671B910AA1FE4A4781DF38C4049145E32CD8615CBDDA63D
      1E81CAF8DF532EC5F3BE804CAF88C046F799AC759DFA0020228DB740B25FFDAE
      DFBB92E6E2238EB609679E6ED51387511DD8604DD5053C575849E0C9D24AB6E3
      FCD9012F27ABCFB3DD00704805D84BC9BB80B11E30A33CDD16136B312FBF6613
      4E3FD7E6012212CDCC6042BD7B00F9C1955041DC0E3D9031F4DC5C0F84DC2BD4
      03F9DF2A6175275F12F47883E5350A3D8878C5749F7D8401447D6D0F20549C54
      BE729EE8A8F0D63303B2E5D5575F2DBBF7DE7BF3EFBCF3CEF44B2FBD34E1F8E3
      8F5FA91EC8CF891E7E49EF621FF6FBA3591702187FA0E3FE16CE846300905500
      C9061AE9CE179D0C645B84CEEB6A675A6155DEBF7506220071E011021095149C
      C56764CA4FE021731B7DAA7F9750627D5395356022D5BE8568622337E7E23936
      F9965BAC3FA59A05C7F6B635ADF3C7040000D5DC49444154479C6EEBE8132CD9
      973EC23167DABA332EA5667F9E7D4F39E05B36E029175C676B1E79DE8ABFFBDE
      6AA763A189EB9CE5C00A2962639519550D69AE0CAAE42DC2E7DB0BF89AA4E18B
      F99A56668AD5CE9D63255FF7B71C4A422B6872CB696D3919410AB5D93C52F862
      99DD4436F4C00324588A229D21910390FD7910010000A490328F3C351C80F070
      68D662F11127DBA4134EB392B7DE359B3AC365209335EFC0039DCDA4B8A6CD4B
      180C2C869BAF87597D9620FB00B0E4C5C07B48650E2449D12C26512BAFBD1926
      0C1B4A6EAE7554B24950D6D82A87434A085BB918756A20B387A07E0EB8F08873
      EE1B00147D4D2E7ED562699513C9AE4EB2D467DFB61950795730ECA812991AFF
      2A57693A5D3D0BAD2C80449B9F80230C20F369F44E3EED2CAB18BA630FC46720
      2B90BC48D08024436B2A6129A329A184E53390BF1E80ECD803F96B0388063B3D
      808C41C2A30B40087C54C272E52B390402201D524B804A6E79F916F7CA5B368A
      6C76099176164405F5923C8088DD5722A61B00E2C42C2953E60120596481F2A6
      771E2E34E0C72002FACD115C83F7DE6118108AB69AD75B8BA19F63BE56BF91BF
      4B3620BD38D19529033BA6A2A8EF0A90D0EAEAE4999879E39D3604A660CCFE27
      59DAEE47704D03C9923C68E1220F94009045008928E4811AF0EFDD7553463A9F
      46FE948BCFB7EAA934CFCBB2ADBA32D769D06D4197CB95CC88512582EA8450B9
      EF1A75AFA97FCFAAE58B0DF43DC5746C6176AD797D82AD7BE77D1B7B063E37C7
      9CEA441C9361316E2023121DBE04E5692D3FA0DB55C2EAB689CEF3EB9AE88117
      FDFF660FA4BBACC307ED3EDBF073795EB34C7D6A6F24152E612903517B22A281
      B55D12261251A4795E377CF8F02A44144B68A0E73240984AFF23FEA8A38E5AA1
      1EC8BFF08B7FC1C6EFCA58205A6F7EC9CD20CE0B50B7066324B28881C20C1AE9
      958048235988F3055106E2CB584A7FFC4CC8DFBA892EA6935B1A60A26EA2398E
      6005E52A95AF548F57FD5A652C5DF0164A48757515A8B5C3AA2A4CB4AD0B26DB
      BA575FB091A79E6EE3D9AC5622F496C00D9FF85B9C06F73F9906F269160F0571
      156BEE11BD6C02003296877234C643B32FBFCE96FCE17E4B7BEB2D2B19D0D74A
      C60EB5C249C3AD64EE04DBB272B6D5AE9E6735CB66D996B993AD71CE546B983A
      C12A867C6F991FF5B1958F3C66B32FBCC216F5BED01611152D62338F458E2127
      D220CF47A221E847040C991D0124C842B2115DCC813F9FCF03984FEFC3D5D029
      4324E3B0B7022145D1174730E1DE321419EA99B319E8BACEA61195261C712600
      71AC9B342F41B04F00A2FE87CF3E9CDAAFE4E769306792CDA440F95506B2F4CA
      EBAD66044C94A27C6B2D2F74122FB5D4FAD54CDD4AED5F16D81A9DA166E57A20
      02906AEAD1A53436B7D28C6EE281B672B2B5E589E882BD8AC0E0990E4094E124
      F377329811D100A1C0A3682FA68679C8A3012485A9E379947726E1C5DE3D80E0
      9C48195286447102107A1A2A9D780051133D9FDF1F34D1FFD20CE4A70048A26B
      A24FA31CBA6306B2EF0E3D1035D17D06A2192095B00420F15CFB35CCDEFC1180
      6CFBC1A3DC498C28F267FE484DF48C8F3FB771279F698BB8D69ADC57C3D80388
      13B3A44C9A470F44D99E33E9D22C0E54ED241CFE2481A3AC70067604FDD9CC17
      DF71A7157CFB85352E9225008CC4CDF4BE08BEAC856B295B0065D29AF9906199
      28DCEA73951658CB8A65361B3BE4C10048DCC1A758EA1E00080199FEAE3CD995
      31976ADE0800514014A8010700A280629E00E4D28B6DF3248645CB72AC86E679
      3300A266B9988E0E40080A65BDEEC1A356AD0F0298ADA421B544325BA1E5B796
      955BE3DA75B6FCB9576C28CFEC7CC823C9879D66C97B08408E72F75A09FD30AD
      2E0089948E73A23CD1378F251B0A59DAFE6F0388DFE77CC6E1C1235A1DDD7F1E
      2E5F452BF1AA3581E2882B5FC9CA165DC436F6FF4634B06AA4C2FBD0430F15C1
      BECABEEEBAEB92CF38E38CD8830F3E78B97A20FFCCA3FE6FFC81DFF026F6E7F3
      930084ABE6CD9BF71859C8B7F442668144494CA497F14BEBE8A9B7C9178449F4
      4E3212C71DF6F2EEDE1F5D20A2371A46427F80D10385AECEF567FCE76B7F6100
      11704829D42DA77515008880C34D9D2BCD265A1263A8A5BA9CE675AED5AE9861
      AB5F7ECC46C1B89A42696415A96DC2BEB8EEED01579C466BC6EF50A84536633D
      A0B296C6DB6A1EC6B5C79C6E2B2971CD272A9F44B4368A61A76128ED0E41DCED
      FB337AD9C0F3CEB0A1575D68E36EBBC6A6DF7B8BCDBCF7569B7CE35536F5EACB
      89A82EC4B4E9749B78DA19CEF3790EBCF865B08A6218708A8352998CF26D1E8C
      986236F5DCDDF774732002109535762C6151CB0640B2F0D770228BD490B3A456
      CBA6A346E83A3602459FAAF94EB8F21A7A2C3CFC0B17DA62B4B76630E7B09EAC
      2AFDC0E31C8094F1F754C2FA014022D987000450D3A69E8A65E8429A89337A9F
      47D6042B2D3BCDB6951538EAA89864D5342FB7D2BCACE76956EFD801080F736B
      7D27A5C2362BAFC10656C3939BD874724BAD75D21274C0EEC3531D00915616EF
      D50388CA0A45EEA13ECAF9CB4B13CB67202A652503207360E74C384300022B06
      DAAA67612903197DFC51B68A09FB2480348E41C83080B8C6B903100CAB689AFF
      3D00887A109E8515069062C9DE737DC20012F32234DE14CA490D44F8008828E5
      EABBE926DF4626E8E8B3E51BAD74C0109B78E6F930FA18DEC31933514E950087
      FA63EA8548EB2C0709176598D24D13C0A471DED311D24C24F088E1DED03D3E81
      FED770043EC75D0863EEB1872DB7FFD756BF8021BE54E8B45C7FCB23AB964D40
      36E52DB252275D82CD819512A527C4DAB2FB1E24D8820976229471CE772EF7A5
      97DFC927932E22EBD5F25A5C0A9204FC021065209370AD2C1982256DD9066BDF
      546CCD641FCD904FEA9B5BACA611AF11EE31651B1E38AAF9BC1A1FF61A68C58D
      105B5A2AB9DF8ACAAC7ECE625B81E7CDAC93CFB7F8E3CE8358703A6AD7C750FE
      252B252BD2BDF69301A494E384246034EFFF1E00A427F0F0CD722F31E5CB57EA
      7F84330FEDE14A0642D987A3EF927DB4D2CA68183D7AF4561C08CBC93E0AD0BF
      CA64FE23F1E4934F8ED97FFFFD97FE039BFD3FF1A8FF9C5FFE4BD29A7DD8988F
      E6DF2EA479F2070CD43F8A8B8B9BC8747A2C59482135B16A1A2BADA0D476FEA0
      0310FDE1B0C994F70709EB62859B387F4D0071BA5332F221FBF053E43B0248D0
      400F34DB79516D45BA54A219CAD7A328DD4A877E69132F3CC38623AB200FE674
      A4A5730090CC5DC5802203D9FD48BCCE8FB20486D1129866953C88562C3E172B
      29EDC4E20BAE747F0E20320926D17852FE09C71F67A34F3CD6861C7D38A63947
      A3BC7BBC8D38F27078F9380432C13D0E3098C6A4B97E2E89B2907E6F1211A1F4
      8034BC570A23A78287AB84B2946B322AD38834B57D135DC0E2FC3318BCCA43E2
      4335E424563296B9F13C7C926E5844B634ECA4D36DCD0B2F5AE70A4A10AB56D8
      5A68C213A076AE86AE9A8AD05C50C20A00C4653BBEDFE23CD7030049A30E2CBF
      8685F467C6C1CE497A015FF3B5083396AB165C43D584862AF31ED5D49BEBEB5A
      000D85844106D284F7B5978A717675A2562612497E3FC3669D7183CD23135A05
      D5384EA27734EA956DB872938B08770E201B6196850124E3C31F0044BD9B7800
      A4904D54FD146520021045C1020F59E606AAC37F090BAB9B0C0426D68E34DE50
      06C23C4DD0034104133324D7C38A02105D630D3996D2E7711EF7DC2F6B2319C8
      3A7CE4770010CAB50E40E808380091BA41E526DB347A9C4D38F712B4C838AF78
      D4C70310299427E53BA3ACA6687F7C55D0995270200049621835954C41A65AA9
      48AB27E00593427F6A160DEF410819F6A7EC350A46D4A42B2EB3057FB8DB92DF
      78C5CAFB7F6B65430659D1808156D4AFBF6DE8DBD7D2870CB0CC71C3AC2E0696
      5EEC728B7DE2719C23CFB0827391BA212B96B9981AF6B998A329F0F1D4716FA9
      EB6651E8C3C8075D1E3ADF1F415FE6CD57A0E32672BFE14D4F23BF1D39A026C8
      1B0DB0E3B6D277D98C42F216861AB5B6A2535603F351B4F98E7ACECB66CE0776
      CD455F0DB25917DF4479FA6C4B39F26C32EB936896B3F68E021002172F542AF2
      4AB719C8DF118084FB1DBE4425A01078440388B71C0FB3AF041EDABF35922113
      29B1AFD8E33BC83EDA57AC58D13C65CA94BAC183076F46BEBD14F0D870E38D37
      A65F78E18509C71C73CCEA7DF6D967F13FF0C7FE8937F12FD4D2BACA586412BD
      C92A6E1E3366CC9B20D0087ED1727A213980C966092BAA3B4F29AB83B296FBC3
      4A7DB4F4B1DE8CFA227A939ED21BCE44A23F8EAE1FFE5832123D75DE138068C7
      F25A576D2A8E6A5644F44AA9A8AAA9263A2213ABA51347D9BC5BAF466CF0209B
      C6C0D63AEAC419BBC310D90D2DA8DF9E088D16B90D5612BD8404CA2B090792E2
      CB67808D49F21B6E588FCFA52E1A0BC53516DBD635444D2BD12D5A86CCB486D9
      66D0189C8597C55CA4A365AD2966C91A1445E33096920F48F20148A8F3303B6F
      66FA1D8AC64AA1E76AC9BE5300A24CC3E94475517883C84DF5E36C2C3F8B18BE
      4A45AD77CD5E7BD17C448C91790D4DA0AF38FD121BC926B2A16FFF40E6219E46
      224C3295DFD4D749A5BCA13E4BE11E7B73BC4C9C6B268063D106A3F295363A89
      CD6512BD66B309C7D2A31907F04D3CFF02CBFAEA331E4CD840F8A174D0500CC4
      2639D79CE20ED515689EBB1216D1604B1D14E6EA3A06BF286F64D3139A89B8DE
      23EFD8A8FD202A1C8A9CC991A75B1C9B4B964C8500BE6C6AE495FB1DEF28B7D9
      7B31911FE98188CAEB183A9CBFB9871E6EE34F3FD3CA35892EB5E32AA2E19264
      4A83AFBB0C64059B6F325CFF44661D8AA12D0B4094796C4034D1651F94B4F2F8
      9B6204B94132D76F91B7F6C98EC6BB9CE6AF9332A1010BEDC8DD3FD1345EB1FD
      769C0351861BDC6B5D0002EDD59260F7A1D93403D5E544B256E7420970E4629A
      24D9189749120C085424B4286AB5061CA5499641A947439631C763F8C566BAF6
      D9A70341CC566AF01DF401E87D74E973896E0CA346C39B1D2B56513EBADD26B3
      09C71C7582535ACE8416AB4679865338E0BCD2031180E8FE930E58362B07F0C8
      C617259361CB14A4D6D7717FAE8184B11412C95C64FFA7C2CE9A741CA28527F7
      A207D5DB469E7CAA8DA694A835F2BC0BACDFE51759FFDBAFB5955FD037495A6D
      EB9F7AD4E6F73ECB52F03C5FBD1BC3AA1A22DC8BAC19EA6E11C38D72DF5480E4
      ED9AC3CCBF35C8FF0F26889A7DE3F5B6651CD7B9846BBC99CC0B22462B03BF8D
      00899401B6B2AA2969C96658CC71014B0373209DE55C3BEC73B7CD5C62ABEEA4
      CA70E049B81F9EC86026122D7B714FEC0D89448D7D820A47EFDE938C14669EEE
      074DA76BD0343BCAD2B66A0CFDBF12B22D4CE59C9865941FC84F2DA6FCB9F322
      D1ACAB3080E8E3E8FDD58389EF7BA8D5A09683AA46020F651D6A9CAB25A1D90F
      2DD448B69334B4CD9F3FBF69C89021355F7DF55525D947310DF41CCA57A9679E
      7966DCA1871EBA6AF7DD775F2816D63FF287FF998DDC95B13801FB93E29C4426
      71250622CFC1FDED879CEF3CBAF1A964251B296335B0DAD4A557BDCC0387C043
      6FC26B64750720D107EBE5DE7F2A83A13BD912DFFFF0E52B8187C40B55B2D252
      03BDA19AA1B6CDF2EB20BD2F25F3282EB19AC58B6CC9B34FD9F81318AA43BE23
      512A9DA4EEB9BBD0BCDEE3680C8F4E720F91C063BD070F4A22723B5393DAF507
      600CA5F1604A5F47C092C8C3A825C9F2146EFE646C6DE37868D731982596512C
      80B30EE0890380E2D8B81364B4C4DFCC6116414D3B0D06AA1E2CF090FF73210F
      97B37965EE23008F60DADC810CB5E3727A244568076D208348DC632F8BA5191E
      4F26B406BDA14508024E3FE11C1B73D9F5563B6D16D9160F5F5AAA15BFFF994D
      865DB6E28833DC60973CA50BF47BE0E68BD29BAF5A381B8CB7DA953D6E9EB483
      004F65367369AC4EA7FC16F3F823563E72B06D4F4EB04E3DD88072074B0FF636
      864C4DD11F6504495AB443F7DDA6C6398CB3ED4BD65AE567836CED65F7DAF83D
      8F67060400C1FD30599B18E77903E74F0F70F9BEC7B832D61F03081EE99CD7F9
      9CD78958086F148030F7E000A47847004901409235EB4059D2B17F2200E2B20F
      CA352AA76823FDCB01E40729931F0084AD4C8384CC19390079EC699B712C330D
      0088CA46625909408A987DF93100C98A00C83A36ED5187C3D07BE6A90040D47F
      60EEA68DBFE1F4E7D4C456C916214FD787484CB0B9F4E64612D428925FCD7556
      26930A494101823B6E587A592CCD4378F0C8E33C6DE0BC6F80EAEC8004A65E26
      F22E69479329236AB81A3059428F641ED7692E6B3A6B1AF7C54432F25194803F
      3BE628FBE84CC40F3F7DDB6CE55CCB7DE3459B7DFA690ED0D7509ECD90D234C7
      BD012F99DC837E30490BEC9A83529628BEA21DEB999C00B04E3AED548B7FFA29
      AB9B886CCEBA588E3FCD3AB9E68ED1A8714E24E49B31BAD26C8A68F3B59B2BAD
      A9186664360499950956F2EE57B6E0AC6B6CCE81276335708225EEC33109387E
      0B8028E3080308D6C67F098078F6E9CE80E4CF0190EE28BB3B03109F952898D7
      9EEC29BB1E40B47FAB9224109178221F3BF615AAECADB366CD6A407D77EB071F
      7CB051E5ABBBEFBE3B0BFDAB24CA57E85FEEB7E237BFF9CD7C4999FC23EB9FC4
      C6E28FFD9203DF1B20398A37760126228F209EF52919C814C6D9E35845D4C66A
      C83C5A4975B6870144E0E14B59BE1712CE40C23D907019CB3781C220D2D3C9EF
      16405CF33C104154F9CA81879329096415E4F7D15CA3812E3634BD1673D365E6
      59429FCF6C382E81A3D8A8E3B0C12C4674B0F877D44401103175F268302BE58E
      43A7498C10651FCA3C34E0A44127CF52D2BFB97FE741925E540E65985C65142A
      C7B021E6D023D124B0A880CA5844938C67A35EC7C6108F95AA1E5C170D4BDFCA
      4D44531316A34A06514CEB06D947E0D2E79DFB9479083C362289BD89CD409FA7
      EEB68F7B40E52BBD0CDAF1DCA3CEB0894C7A2F7F9472536C52D0E0CC2FB4D611
      136CB2D3C13ADD5298071123476504D9D0E64A5C8EE3935F782E344A3558D369
      AEABA92FE1B9643E5F0BB572F1F134D42FBDD4E29F780CB3ACE94CA4F35097D1
      58953B630D519F323C651B957CCE7C8CABCBF3F1F6156B2CEDED4F200EDC680B
      8FBBD8324FBFC6B1C1123114126B4C7F57658322B231E97C1531199EC579F134
      5E65203AFF693477170194937B7507206FDAD8E3F0D766C30A0004A9F62800C9
      0540D4A8CFA574F3B70290358F3EF54700A2124E4F0052C8752997A0265A642A
      E9AC6308B10B405213BA00440C2C091A36D7728E35152DE91835B571695C8AEC
      C9F7C8812C60A66939E48A181AF3B208D63994FB9F4A851AEC13882888D17D28
      A0D5861AB0D4583C131BF667A8951EA0587B2994B812602D25717D92B977D793
      B188EDB79AC1D4A5A8DF0E467265F0C5E759F564481B892BAC79F077B690A1DC
      399465E33487A22C170A73216091A7BE9D34D8F85873207AD5FDAE63978C8EC8
      207ADF9329CBCE38131D2DB931E26A686B11514C43625EDA6B388576605CE5AC
      A7E5534E7FD34DC117723FC62559D927DF411CB9D5A6011ECB20C6AC438D2089
      4C43C1E1068EC5F5C1C83A947DB80CE4A70048C8133DDC03F95340E1CFF9DE30
      65D7EF973B03109F95682FF6BD0F55883404EEE5DBD9CB9DFFB95446D49E90FF
      07042AC7BEFAE69B6F363FFBECB3A5641F790048FAC5175FACF2D5DABDF6DA6B
      E92F7FF9CB39A2F16A0940FE853FF60B366F892B1ECCEB1994AAEE44C2F72D4C
      44460226CBA98BE530A15E0580348156DBD4AD973AAF379952F6A1F4C80388DE
      70340FD983873F811E40A2FFBD3B10E90E40BA0028021E41F6412A0778B89EB9
      18415AA266947363ADCFB0DA71D36DDC9537DB845E67DB7C78F9E934B20B4569
      154B6477981994B192192A1268083C3425AD012B651F9258C892464E240349E0
      46976785C043C6388564149A6E963486D37352AD998DCC8911AA59297972D5A3
      E1E1A731B4A49281A23E37F7206976C994F0A04BDEC2891A021EC1FA6102DD65
      290CFF9593796C028CE4E09689177A1C5984FA385319949A46F6B1E8BA3F3068
      C7A476060FDA268E9DF98BB6C9336D5CEF8B1CC0ACA747922A2913FA2D85641A
      9A3B71EAA480E1068E57E0E2BC46F43D92BE8E4CA5AFA08EBE8026F5FCB36880
      DF79A7AD2293CBEBFBB5B52F994F9681326A118D5466119C547D2274E5D9732D
      F1E3CF6CC1FD8FD8AC4BAE83AC007B6D1FCA2307D2DC25D3131B4C8D725197B5
      7108488BD59FE09C48CE259844A7360E80B8F30F43681959DEB453CEB44A79BD
      4B8B2B9281647DD83380141251AB84251DACBF1E800432165E4CB1BB0CA43331
      D17A029042A6E5B30916A24B58DA44CB24A8B927F311110019894ED99AA79EA4
      811D011006F9DC80AA4A66110091A199B3BB2DCDB7C4AF3FB3EF4FA1F4744A2F
      58699458B96EA994B036C83656E0B11BD7977B55201204310175BA900DD50F5A
      66FC8673BEBBEECB63AC9C5E5539D3E4FA9E7C9E13B1E4B277A57FB22B2C2B00
      27E9E4736DFCF10851DE7F0FE6650B506C80DA3E6F9AADBAFE5A9B028064E1D5
      2165031714EDC3143E80A1D295C0436ABCFA5819B7CAA992D957762C02C15CA8
      E963A1AA4F391EB2C98D375A2E6AD235DF539695A8A24AB36245D11FB112EE3B
      A8F475CB175B56DF7EB68661CAA557DD66D3516398CDFB8B21AB8D87AA9B0648
      E422EFA37BC0F5C1F85C7E305A5D00C23DF84309EB084AD2C7D9506C92ABC600
      8C0210290C90F17407203F250BE96E2FFBB17F0B97FAC37BE64F0190E8E67918
      40D4C31680C0B0ED9458AEF675F6FA365A178E7DF5E9A79FAA7CA5E9F39CDB6E
      BB2DF5ACB3CE8A3FE4904356EFB6DB6E8B7FF18B5FCC120B4B00F28FAC7FE68D
      FD1BEBD76422FBB1E59EC02FBC0E19DF673FF9E493BE8CB2CF612E2499325619
      59481D7FB0156696D3C6521DCD4BBC7B4AAF9AE97EB8D0B3B27420D12E85DD65
      26E113190692EE4EB09856813B9A5CD282A5DF298D2B4DA436D303E964BAA863
      2391091224556367514E78D5FA1D719ACD879111436A9E8E1E53A6CA25BB5046
      22FBC8D9F3705B4FE33889CC41A5270188B20C6D5E125FD35254AC7280A6B425
      109721073DEAF5F9FCAC4A2F92CD28A57FA268378B682F936C269DA57281223E
      3DB40178D0D8A591A71ABD6BDEC9235C9ED0501C5513574AAFA66A78023D9078
      473917FD2AD16F73A1FEA6B0D1A864B6E4B853EC7B329D89E75C61051FF5255A
      23522B8056A98C80D25DEBC22536F9EA9B6D2CB4DC9530B424D4970B7D329F4D
      4A9A50B9E8011500781E40A4D9A43E4C1953EE65F45732185A8CC73E3486F29D
      FA39D3995A1E8B46D09473CFB5E5345733DE78DDB23FEC6329D897C6BFF2065E
      0DCFDBDA879EB07957DF64534F3BD7661D7DAA2D505D9DF39345BF21FDB7506C
      69A02BD25616246DA85C32AB52FA1EAA436BA0525A5C1A2E1343C76547F43456
      B201CC3AF99C6E0164DCB16420943FE44497BC07B21DF89C2BB20E038800CB35
      74FFE212D64F0710F9B2844B58AAFD7B00110BCB976F6474150610657EB19826
      7501885858CD5C4F0044DE1CEA3B6D8771E43C4A60197612955B79816D9C3DC9
      265E7BA54D3DE564D7839371986469541ECAA3619ECF126878F0D03D2870D026
      EA7A01BC3AC095650020BF894CCEF5A676E539F92503A8BF617EE4D7045AFFBE
      9F2DFDF77D6D2D8ABB23A02AA7BFF716FDB6650410640A6B96D89AFBEEB19162
      80412BCE246053669BBADB5E0E383D800844F4B1EE6D9148CA589A9297E4493C
      7DC485D0D56772BF2FA6BFB8E69C732D9EBE483A65D4F5CF3E6369EFBEE3BCDB
      D3FBBC6FB12FBF648B1E78D0A6C33C9CD8EB2C9B4AC96D1EEE98AB081E12204F
      083C1494E8DABB40497EE97B4B1B2C58FAD895B03C8030B12F56631780E0A5E3
      9866CEDA411EF1543EBAD1C2DA1988FC5400E90E38BA6B054433B1C2745EDF4C
      D77E1CDD03F1D45D92056520DBE97FB453BA6AA1795E3F62C4882DAFBCF24A39
      D4DD7C002453E5AB134F3C711DECAB9594AF16FDFBBFFFFBF42E00E180FE09F0
      101BEBBFC81CE4937E0465A98B48671E808DF5E1D75F7F3D1E305903806C5033
      9D3A591380D2AE2C44E94FB43E961F32F440A2FA5BF48C884E4EF864844B5BDD
      A578D1275D2A86DE5A53C307BE7CA593E7CCA1009056C94DA389D39A576925D3
      17DB8CFB9FB7F1E75E67138E3C8728BA37627330A198EBC8A0E69BB99B1E1C3D
      5047B906AC9AB5020F4DC52AEDF7D2CFD9F257E6E653235D65120143B6241A68
      CE8A3954C62A07144AB869B569E5A931E99A9441AD399BEC2497875575E682BD
      C97CDCA27CA6875913E86A60AB0EECD46977A4EFBA0142D47337EC0FDD773F16
      1B7AB6983AF44456D06C9DA448A9D7194E8DD596525ACAA1695D895E15996173
      29511AD6BAAB5F7ED5861EDF0B9EFD8994900E71169F6ADC4A79570052C8C3E5
      DE83321F664CB2F1662FE341AE0444F277DF0BC082F9A5063B65B9F4234FB038
      9AAB4B69AECE842934F514B4B7E8918C42FA6520003CE6A8936DCE2967DBF253
      CF43CF89DE09A27A494CC7E7C176DB88356D0EE7AC184011083A732545A7C88F
      94C170D314B0FC4052BB841635954F990B098A35FBD3483F0931C5C1A10CA428
      D99481780049034052A2002407905706F23F0B20B251A7FF01B5593D099F8108
      401298795120A2598CEE00C49125340714C94032392F1E40461C8A5DF0934F04
      2C2C00A4131D283774E30622601D49629D5E80A1F1B66D53A16D4B8EB1F8D7B8
      DF4F959CCDDEC89A20B4A91E08437C028F4D6E9034C83C5C00E3163D28010791
      B9CE5311402DB281E8CE92C52FE37AE5FF922CE13FF7B7CA5D8FB0FADF9FC186
      4B93FD17FBDB7222FD71679E6BD513B826D9D07C8B095E32D651B67CDD06705C
      8B283D4A12278DCC3E8DFB75837C41C87E7DF94AE52C59379791616FE4BED66B
      2E9F8B201287FB652C814C1A0092AE8CEA580CA6004535F5A79E0805FF94DE36
      09C6E104EE3B097ECEA4DF349F00693EEF7D2DF74A3265B66C28CAAA12E8BECA
      E11C14718FC9EBE68F01846C3F0C20F43897414418CADFAE1ACD50A3FA890210
      279E193040FF5410F9A900D253B611ADF0D11380A874A57D37DCFFF0B45D05FD
      DAB735184E5FBB83A440CABB6D53A74E6D647050CDF34DCC7E94A07F954B1692
      76FEF9E7AF3FE2882362605F2DA77C35FFE73FFFF9145FC21290280BF919E0F1
      1F6CFEBBB2F11F08809CC12FBD9974E6A53E7DFA0CC41357CDF414864BCA78AD
      A553DFCA5C882B65A91FE2B310D5D6FCFA53D47AA3FB216E923CF45F4F00227B
      4D0F20728B93339A068D9AA5892362502D0DB6CC129BF7CE97F6F69167D90098
      3FF38EBD18D1429A7B7860C731E7914A49257D0FFA174ACBD9E445294DA63712
      078088972E0F6D45267AB8945528EB48E1664CA20C95C143A74CA28455B9F7F1
      56B927E93E1CF3224A6245FCDE7C40448CAE5CA8911B48A35D342CFAE09EA8C3
      EE75925B6284B806A66BEEB2A99311A891ED0C94DC2202971A2DEC958C036946
      1EB4173D164CA0E89364B3C1261125CDE27B469E804ED4C30F5ADD34A6E38BC8
      3CCA8854117294095613322B565ECCB0E3189B7A5DE0871E83F862C64181435B
      F0404169954FB928C53CDCF9620AF1606F84E65C4904B871B7BDAD74D7BDAD04
      1029C2B33A7F374A5C9443D2E861681850332D62EC2C61F660119BA58CA35603
      166A94A75302C9A6565E4A3D7D334DFE2A5E5DF98063CED7EC4B8479B6616FB2
      2B476595740965972800C9C78D30968878DE893D03C86A4A5C3D0188020031BB
      5C24FE3F9281FC3180AC7EE449E70C19061045E0D11948178070FECBC9BCB2A1
      21CB433EE6A8E3AC0B40A485D544BD5FA285BAC14556D0E239703D1184063B6B
      B9F6E539D6387184CDBFF2629B7208AE7CCCCEAC979112117831F764D50194A3
      9C644C64023BF2B1C0C39D235626E747346E45ECE5D0BFCB29D116FC1A00F925
      B6B3BB0120479E6715475F604BF978AE2C8C6FBAD9B6AD45F8B09CD25235917A
      69A6D54C1E6BA3CF38DB2610702D24F34B612E2485DFE78CA5DC7D1D641F1256
      94795A19E5AA0AE47536F25A79087D414417C5D64AE7BE903F4A1A814D329E34
      EBF1CD598B66DC3232FC2580E04AEE8B75479F6EF1A81BAC43BC711D814A22F3
      2C9A77123D594058CA335BCCB35C40C957866905B2416015CBD698A58F052A3F
      0E201AA4841C110290EE82DF1FCB42FE5400E909207656C2127044CB95A86CA5
      CC43E0E10707C5BCD2E4B9A8BB90A7EAE97D6F79F1C517CB019082471E79240B
      F7C1E45EBD7AAD3BE8A08356EFBAEBAE4BFEE33FFE63F6BFFCCBBF4C8806907F
      0638FE1584FA6F00601FD6B164179720AEF81019C84783060D1ACFC7AB41A85C
      285E5564270DFCE13695B234FEAE7E886FA6ABA1AE372A2051C346194958B137
      3C5EFF53E744BAED81B8F295002458DE66531988404456B5DB9B49334BB7D8E2
      4FFAD967A75D69838E3C9F29DB0B6CC9EFCFB1F5C75D4899EA54221C9A6B6404
      69640B296C686A7627D0C0132D56E513F53D94EE3A00213253292A60501D1550
      01F7E0C6DC9DEC83F9918ADD00923D8F238A822AC8BFEBEBCA36DCD0128052CC
      9C49094C10F95314ED79925B857B69A82F1A4002FD2B3F812EA907E7DCF6FBDF
      461612D894B8041E09279C62F37A9D6AE3AFBCCC32E947B8A1AE2D4449756806
      C1996F47C8B11D7D91ED95C5D6B0760559C8CB36E244AC698F92A52D513E1159
      090FA37C118AD50791B409A5838C7DF7206ADB1B10842EBCD7EEB6898C6433BD
      170149259BDBA63D78F076A35703212095F43F066AE8F2DD0FB0A57850AF6123
      5A4709246E371ADF94F6B2A93F67A9FC4116B095875BCBB929625F1A0C94C979
      31F07E17A558653BC9B8CB135DA65262BE09600BD828E2A0982EA4CFB36590CF
      40D8AC5C06F2BA8D3B8E199D48133D011A6F213D13D5BBB58164F31E95493ADF
      1156A1D86F6C1A32E6D2D0620A19E90E345EF9C3C8D298FB4996005E8DD72B3F
      0734DEA007E22C03441777345E517FC5C242643369BDAD7EF4719B71CC490008
      EAB892A497F2EE7E64926C8E0A0264A4A41296B2BE5CC97BB0B96DA46C9A859F
      89E63762887E0520AB9E7E3C105304403A90E4913E8FEE6F270045BC258D28A7
      7A8C169B6D25FB5CBFD2563FF680CD39FB4C8B618E633D74F33C36F00AD85525
      5C9752AE89232CB0022141CE03D75F5992D886399015D4275326B881CC41648F
      CC5F718D7E7DA055208E5874502F2B39E1629BCFBD3BE5F8336CD1638F5B67DA
      7A6BDB9A6FED4DC8F733ACAB8C69D1BDF7DB449AEC0B38FE6406149300F0F57B
      A984E583228CA40E20B325AB2EDA6F6F2BFB2D81CAEFF6B492FDF6221BDBC32A
      0F3EC0AA6476B6E75E96F2AB5FDBFA5D7F63B1BBEEC13C073323BFDECFD6FCE7
      DEB66E1766A1B8B712599229D1B35C04D3B050192FD75ED9B506282B082E4A35
      EF4420242D38C73EE4D57F2CF0108868E5F03CA40AA4088AA491B779D4D8A041
      0F85D8B1EC2203CB6E7059F701A5F39E4AF03B2BC7774B120AE95A8529BABEB7
      BC3300095BD66A2F8E060F558F285FC9F7BC5DBA5728B1370020D56FBFFD7625
      8DF362E4DB5DF61199FD88D977DF7D57FEF77FFFF7A27FFDD77F9DF9CFFFFCCF
      635C098B1A99E8BC923571CD74FEE82F40AE5D01818399F7501672138D9517C9
      42FA31D23E1B71AD4490AA98525635E0D12CE4F259880711A19B40C44FAA0B44
      C29A594AAB945E8553BFEE3EDE59335DCD72B1AD3A010AD96CCA7443AF41194B
      5EE5B55C67688E34910BE721EEF6DC0736EAEC5B6DE21197DB82C32EC52AF452
      5B71C06934184F27E3389D080D613F3618D9A126E14BBE9E198BF5948D9C5F38
      9948C69E44FC0C6029A5174B48A5AA8ABD58507F2B23AB0220D1DAC82ADD3398
      7255C3D1E900B98679B05C16B2DBD156BA076003A550836E7A401579E753BA2A
      00C0244F924E0A9F89547B029B4CECBED8801EFA7B8BC7C56D0D519BE6509612
      552D3EED6C9B77CDF596FCD9A730543000C200AB13CEB733CA62D0AF85D28684
      F73AB61099E2D350367EBC4DBEEE06DCF78E74332969640FCA242A01C7D2DD60
      80EDB62711A7BC19F6408C6F6FA2B8DD01CC5DC952F62282DB1BD0C37C4ACD7C
      994E013E4EF831C2E04A65434EE51C29D22D62B35789248F8D4A51AF6AEB6564
      631B7E437643F622028086184B24E3CDDF14234C0402CD0AC8E25476A76BD958
      B2889E35499D09ABAA80466E2A0DF8D8D32FB3ADDF0E0E1C0F2B5885EB2DEBA3
      576CECF1CCDBE0B2B81E5F94D5943E328FE067150468529FDF2D21436DDA1AC2
      2C83065D4936B545C65C005E06E5CC69B0E796DE7D1F2C1E4A80A8CA6E435D56
      FA6A322053CF21A87B235687748E80A45352072294AA6415D95064792C0F7183
      19B42D31160079840CE438B7814BB63D831E5626C09C8D84B98C945238A7EE3D
      51C293848D68DA15005C2E7E260900F66A9AE04ECAE4A5676D5BD25A02838D90
      AE50BF06A41C8D977BBC95799576B4B0DA9BC840D407A915F32EDDB6CE988057
      F8BD0CB31E694BA09467B389E7EF7280D572BF55D00C2FDBE330EE43194C1D42
      AF4BBE28B80512ED671D46135BD780EC338D79952CB271D1B955FECBDC83C00A
      3B80648048960112E89CCECC510A64092B29449FB414B3349851285E77E010B8
      69D41827FB338BDE5B02334AF1EA3DD0B3CB3D8C4CF328862A0FD99761DA5D01
      AD5D2951EEC9A6CFBDB0DF6E6CE0BF2438F92F9E955FDBC6FDB8E77EBB3B7D99
      DF70BFED6205DC1732E2D27D97450093BEABF4DC2823936D28D0D32AA57CA50C
      2BE9BF796E7EB527CF2FC109802C4F14F59DD4E31378EB19931E97403C8B677C
      03F7A69AEA25F4E8D2F63F916C9AA15CB2EADA5190520A00104444A1BFB1D760
      2A1509629DF28544F96410E4971F64E6FE702CAA90E19DF72BF2C011AD6B152E
      5F457FEC81C3EF8FFA597D4F78EEC3ABA3FB614105F10AF0439987E63E3A6845
      6C4340B795CA5213E0514BE9AAEAE1871F2E63E5937DA8F7917CEAA9A72AFB58
      43F37C19CD7395AFA6FED33FFDD3709781083C78430210517AFF19F0F8573678
      6521FB521F3B06D6D545FC91FBFAF5EBF71E69CD48244E96F2C73200958D94B1
      EAF85A0BAFDB009A0E40C395B2648B286E7158EAA43B00E9EE2475574FEC0E5C
      A4B6AB66B996663E9C83938BC678B079D09DB43A12D735B8B4B5A01CDB59BCD1
      6AE6ACB6F817BEB01917DC67538FB9DAC6EE4D2FE0A0332CF6988B6CFDB1E759
      1CA96F122AA69A3558473498C0662395D02C4A3DB9008A1A809A4E2DE2212A25
      C229A5E9BE91D2573942715A650C216A95C04ED1D2D79D44829A93917AB39A96
      6EF643B567CA5C65CC2794EF0780C0D852F4A39B3C6D8F3D698CEF6E89BBED62
      497BF020318C9841041A0790ACA4E1B8948D67CD5170FCA1098FA16F321F8DAA
      AC8F3FB6DAE54C9CA345D45ABD85D415973636377925D4A396DB8AE4BA5481AD
      72A3D5AE5C09CDF3051B049B6A0ED17A024CB402545B25692D00511353A5ABB4
      DFED665947EC6BE987EE45D4F81B4A507B58C141686FFD764F56E045A2C67A96
      6ADAA21AEBFCC86B5D6279007105658F52B235D5CFD58415555AE721F1179423
      7E858E17D6B929BBECE2FA012A4F1451B6D3009D26B1059AF1CC0BAC250ACD46
      A245F3138E6A7AD029F89D9C0061E01CABFA765020355E250089B5B43ECF33F9
      7FA8AD380A390C1C0C57ECBB3B56BC6C7662F950C649D7A673208C20366DBDFF
      AD44C05500C8C6DFB0B110C1A6315C3983F7BCE4BE07AC037A72E7E632E77647
      2E4B1627E9F400409479B4E140D905202E03F901401AD008DB86E19141316D4F
      02401E7FD4A6E2E9110FF12095802495283BEDC0BDB9A6901F2845060042044E
      9D3F9FF24D29E7B4122285646DD603D4AB008FD1C750CF7FE9696B4F5C053894
      3A59F396ED0462044AAD9047F4F7B7A1372626566713A411546BD54CD71477DC
      876FD900A4D1E79D0071E138CA89BB1F685B28ED14EF712899043E298067CE1E
      687191F9649101A6716E046C2A99661D4C06C273900A3B50E41195B532F87EC9
      9EC4D0A05E8A35F144E65B66239353361A65804D150C90D6581B92EF6EB46F33
      6E9E788AAC46DA7D12CA0BF3507258CDEF7003B91C7332D737896C23996025F5
      00B28A03F7045C7707E8F7B0845FFFDCD277FB0559C86EDC4BFBD21B93D4CF2E
      64F3BB923153F6E4B910E944E28C2A4D55308FB29167B38C606813BDB522EE67
      95483376FF9D25FD662FEE31C0820C4F19A0805CC184C0437D16DD6F22AFE877
      95C23CABA472A0002F73FF5EB6F288B36DF89167D8E6A1642039B0BE44594746
      C679C550F9705590BF32800824BADB1FC35987004400A4EF73E42100CD53767D
      F9CA4F9AFBEC43C4274D9CD37E70331F24006D4856354D9A3449A6515B9E78E2
      8972A6CE0BF13DCFBEF5D65B53CF39E79CF50827FAEC63C9BFFDDBBFCD21FB98
      08800CD21C885B113AEF3F0226FFC49BF817904CBD905DF8430792DE9C027DF7
      5A7A214F3354F2156B2A48150388E4F16F55FCF1064D2ECA80448328CA42F466
      FD64BA4024BA8CE5339068BDACE83E883F31DD310FE40CD702F2060012296369
      DA5CCBD583F560D14492A7359E158444D464B1A45D9C60391F0CB195B7BF48D3
      F76A9B72F85936F3D0DEB69CFEC83A1AEB72EA4B477222891B5293CF92C05629
      490F90A2602730A8DA39A9ED863D296B45182DAAE7ABA6ACCCA41880D052F413
      785B0416AD2AA528827335787D4C49452503CD24041E09F0E1A9FDA693696422
      7521F090E1CE86A3D0A33A029992A3F06B38F670C4040F4466FE109B7E22F212
      E75E18588FAE2332AD4005185BCF26F8F00D6C786E3257DEEDE8F6C8F4A95D91
      A99CE50A0BAC64CC685B78C76DAE343283CD3F1D59967422F1F4DFEC83D09DD8
      586C74FBEE693987C1D73F8472191162C6FE94B4F0B1D61058069B9E7BF860C8
      A44B108FF3A307502C2237B3C266534CC4AADAF946369962793070CC254CC2A7
      50FA8AF96F80812C2B76F7DD03213D995A511B2F8398A0CD4CA0940A886B0375
      73299ADDA08F94F37B06DA880CA711C9960D1CC235A54C52830A72D16A4BFAF0
      191BD70B41CCA3F9BD900D56EFB33B00A83E8AB4C2C88A64DF0B8064CA3E95F3
      EBE8D06C2A15487928624DE67D4E467179FEBDF86000201D5B987A0640E43ED8
      8A6DB106F7347324CBB2163EEF0210224E6DE0CA841589760148336AB029B1B6
      E491876C2292EC2A45A5D2FC4D9489121948C621DC53CA40D8B0958188C6EA32
      1000A48273990F9027022AAB8F455A9DEBBEF6C527785FCB294F16F0F7B69005
      11283107A56741CF80CB90A40AA0FB5D3311CC47C8EEB766FE0C5BF9DC9336EF
      E28B6C1620B660377A696CE42AEFE5711FABB19EB4FBBE0083A6E27128A49CA8
      39957C6472DCAC0A04075D0F65C78EE841A6BA01008AA794B88866BC587DCBA1
      6977AE5C1D44E7081E7670FFB1B30696C668656D193FC162EF7B887B16062474
      F3448234F5771229872631C32432473EF76216019B80DE813D81520665AD34EE
      C34C5E75CD64C495C3F3218287B206815D16E74C14F8329EA34DF427374A329E
      8C64C31E48F510981533EC28A9A0E43DF6B5845D298371CD9D843DF75C06ACC2
      74B23C05404594348BF9994D047F5BF738D64A7611C5FC145B7ED89936984C6B
      CB08861955C2128D97731CCE40BA05901E7AB861DBED7006E2F7BF68766AF4BF
      FBAFFBCC439F87E9BADEEBC3FB7C449AE5CA3E3A353028B912DA0FDBA822B591
      7D34CBB296718DAD6FBDF556057E1F4500482ECCABF44B2EB92451CCAB030E38
      600DBD8FE5641F0BC93E66021E63FFE11FFEA19FCF3C947DB88F3599AE2C448C
      2C80E0BF0085BD0090C3F923E750B6BA9DD1F6D790F5FDFE8D37DE98CF1F4DA6
      1752BC64C992ADA05813E5AC7681086FD081889F4E17027AC145AFDA2B74548A
      25B40C8B7D85515727A7BBBA5F97B2245157ABAC4479787582DD050C01881E28
      01882B0ED303708DAF2DB2BA64C5A1EE39769EC53DF1964D3AE71A1B8C13DDE4
      C34FA3D6D9DB620E270B3994F904E6298AD1112A816594235909D5CDA90967C1
      CAD02C876420B298DD5046E2981D9157374FC146AC5767CDAAFA31AF81ABA0F4
      86029974D5E173255F2EE01030498A9D0D591B5C01E58322B4B4720EE577F19A
      415D7FED9187DAF2638FB039C71C6643895EFB1FB2BFAD7EE03ECBF9F4638E07
      6F920A3CC71189D486574F794326B37532DDE10CF038BB0DAF4532D492FD46C3
      4A13D25B460CB681A7A0D575309BC2A55759D671A73A55D632D82D696CAE1992
      9A60F395F4841E6045EEB944F67A8F697CACAFAB04A04D474D616D345A0210B1
      BA34499DA7191936AB3426BF1301DE82E34E439CF1585726CC41807231201947
      29414C32816C3951AD2895CE3742439AB0CCD4B74807ACD32905A62245B162BF
      936C22EE72A5A35006DE986D1D3519D60980A47CFC9CCB40561D49098B0D3096
      52DB8643455DE57D4116D0269D033140D1BE7A10796C1E453454375292143825
      1E0A93882C64EE1F1EB46DF1EB6CBBCF402861790051E98A58DF9DCF1DA44C88
      460520BAEFBA4A588D5BAC25799D2D45136AC20927914970DC9CEB78CE69C2EF
      D9BCC88AD23887699234D7EC0FF7413EE7C10D8B429E50392F9173E30124E685
      47AD63DD62A27C6C5D1B37B9D29AFC38FC4612D0DAC54884CE2B7FFA2636EF3A
      4004F98DA605332CE595176C0293DD43D840A7F17756B389C600F4B1F43B1245
      D600D0DD464ECFA91CB9189516C58E2BE19E75CD67EE77C9BFA884ABC674D2EF
      4596E8E594A953DFC032209DD99F5A3657EEB14E40C4F50920705805A5D38C34
      2BECFB9D8D38FB1C1B87DCCE864BAEB15C82807CCE772125B01228B77A3E52C8
      C0D527DA8098A4B235D934E7D234CF65A05076052948EF640038DAFCD3555EE3
      FC2970D10C511E74F03282B38D6422128B4CC3342B594D71FE5E11EC2C898DAE
      079493356B72D83194E2B806BB701F93A1E4D18B53065EB6DBA1B6799723AC76
      8F13C8427A71EF9C6E0B0F3EC3BE830EBE718858580088F4F4004801761713B4
      BB0CE427024874F9AA3B00E989BEEB65DBFDB4B96F9A6BAFF564265584D4EFF0
      4D7389254A6D979E7633231AF5CC7C6CFDECB3CF2AB1AA2D91E615C651199846
      2551BA8A63EE63ED9E7BEEB9EABFFEEBBF96D2FB9847F6310D001901807CE5B2
      0F8187964A59915EC83F828A3F0308FE1D94FA1525AADFA2CC781C0D96CBE007
      3F441FA4CF1D77DC31E6BDF7DE5B018064A293B551AC2CD2A1166A6AEDA28401
      266EB251652C018932129F8978132ADF54179044CF8A785683078BF0AB170A6B
      E1E2E9E1F1628AAE06C954AE5BE2C4F3B98F18359DEE1CD394853428AD66132D
      24D55EB1CE723FEF8F6ED07D36FA541474A973CE61927B39E59C1580C21A6EAA
      7436BF6C36BCAC43985D60898195CC4DAA29F342FEBD90BAB234A4F2899225FD
      A14846E021C96AEFAF1CF80B6818307815988871A33E87E630E4CEA6482A633F
      A229CA2DAA0D6F388ADF7582C4F01882023816B2A61C873AEAB18762B74B5DF6
      FEDBAD6E06115132035B9505C8881412F956A16388B56CC45EB60610E6489D38
      AECE55AB24BFE989A0694FE45E6C354B66DBDAB75FB62167F5A6C60E630AE13B
      7994AF62AE249379120D0FBA3AB34CABC80634E4E8BCD77970B35DCA1F0C3DBA
      C58399C7C6A766A48EDFE908F17B343C295BD01858387378F017434C8861332D
      BEFA1A2BBBE62AE642D8C838773134BCD3A8ADCB3150E5BF725E95C5B99905E8
      A399C86F27EFC506BC1FC36A346FC79E70A6554C99649D1559D6B619CA68C93A
      CBFAE46526D1693653DA48675351745B0CC9C00D27BA12987A35BC37C04E4B35
      7F31CF7229E524F2FB63D90CC7113CCCBF8F8D3A7EBD756E2A7356B152BD75BE
      1B9159269F8138F36435D2A96DEBBE74BD380188840D9505C07C93DCCBAA679E
      B3C9279F06D515214BCD758810813489BCCA25EF217911E98EE93EC9878850C4
      A657467021304E00FC561D4B0F84C021EEB947CD620010185686219A227CF5ED
      BD75B31C38838D468A0CF4479A02CD2C6BA01F929B8A9BE65C4B7AFB3536F1B3
      EC3BDEC3EC13D045EB759AA548AF0A5D2B291D6B93CDA7ACA93E81986005F24E
      E71A966B3E888FD5A79340A5586EF1B0181712748D66C6A7B0FFF74CC053DEA9
      95FA00C7DFCA73A6120FFDA0B62D480851CAAA5EB1C86652CE1B7E0EFEE41882
      6D38FD5200E2244BA13F9819B115CE07C825B392CEDF528025699D54EE2BC9D1
      EBF952565B44D69EC3E6AF8C3D191D3BF56D547E4BFD15E530FA1D624DE6401B
      5E8210E4EC5DF664C8B197D5DE748B6DBCE4524B42AF2E8180503605CAA472A1
      7AAB595E0CFB722399AD5894028FFA7D4EB7FC5FE938A1FB1F7B810D86B45139
      6632F4E422F4DF2047383B617A8B5C6F97FD09BCA37B203FC2220D37CDC30012
      3DDAF05380C35375BDCAAEFA1D5EF34AD51F05F4F4B3B5278BAE2BAB5A797DB4
      B0773740D9AD66E2BC12A14481479EFA1E575E79A52C6BE30F3FFCF098BDF7DE
      7BD5AF7EF5ABE594AE16FFEC673F9B03784C043C06B33E764D740F20CA402280
      F28F6AA8030AFFC21FFD0F5E77C5D6F020EA63A7626D783DB5B2E75E7AE9A56F
      69B24CA7E1B20E14CB132B8B52563DC0D14AC6B24DF53531B322E3F1AE1FE281
      C433B374803A600F246119780F20DD89838533106D8A5AEA87B88B2710710355
      918C444506951C446FE4A16A9776109E09ADF23496B0620574C83CD82A2B6319
      80FBC2265D7CB50D3D02B138E949C1FD5E7B2CF6AFDCB0F38852E6FF7A2FA659
      993C27BA49828195006B4553D2CE78C9CD6D04F45BD170F3B9D10BDC86155002
      BB5B2AF5C8D35CF44495AD14CD6752324827EB48A6511E0785710DAFB3895627
      51EA1846D96AD8A9C7DBECDBAE23EB90C90F93DF25D4FEAB31C6AA2EE139DD08
      5020738D95EE26CA1812C4758B5321731D110EB6EBA19677B5222736479537B6
      C5AFB0F8F7DFB47EA79E625FB2C14F26EA8F39EA240613B14265E3CF80AE2B0F
      870A32081911E50A5C78EF0217457D8A4EB5A4ECABCD4F1BB29BE12002747332
      9CCF78A690A7F333DFFDE72F6D020DF1949B6F32FBB88FD53CF5B8CD3DE6187A
      16C7D92A7951C00CCA859490F31B5841BB011EF497A4CD24DDA22CD491D7C35C
      5B494D7A012547017ED54CE8CA1B736CDB46495BACB70D1FBF66E38F3E0C4997
      20434CA28C5146FFC5990649364660A1A6ABD40404F49437E47A28698BF5B0E3
      561E7E06037BBD6CCEBD8AF499F81619412649F4D3DC6641994A9B85B2106524
      0210AD308010D12020A9E85F4DF4600E64195226638F87368E99511C0AB96E40
      15F7C134B19CD89C9335712F9698A445E44521B61999AE4A3C6BE8D32C459E65
      240144DC73B0B0629638133435E895592B0397269C2794B471EF8BCA2EE244AB
      6645E8DF18A5340C35F8393C7030874AF9FC139B7AFBCD36BAF769CEE970CC61
      87D84CC8068B51934E4036A5884062331B7C818226EE7957B6E2FA485B2C4514
      5F4ABC52A55E820CCDECE3CF76C3A9B533D15C2B517947FD17FE2ECAB84E8412
      299B7AB971D217E9D858609B97CEB775EFBD67DF03A8E3B93FE61120AC831891
      4136238F8E743280127A82A5FB436DE79C28835589578092B11B010AE5C672A8
      BBA214EB5A2A5B51A65AC8BDAAB2B2843FA545B716301C89D8E84C844D0B1872
      35065CB73CF8802DA594B89C19A60495A9616C25ED82843CECC074081ED9F42B
      73C83E0A7E43F0B23B55885DF1AA390076D98997DAF0B32EB7DA594CBF43816D
      0724BD55F55F0A203D651F61766A1844C27BA2F64C05E061855D0F1C5EEF4AD6
      1B91D295030FCA57ED5494BA1857B06B37011AA50825CA6D308B2C24858973CD
      7CC4FEF6B7BF5DC3D0E04A860697021E0BFEF11FFF713AC03186D597F56E1778
      A80722F0F080A2B91029F5924DFC9C7EC72F4971F61C3972E411489B9C376CD8
      B0BBC942DE82E235149EF0C2FEFDFB27F3F5624A5A5B19446904DDDA94220126
      1D527714F249B0CB37D6BD19954A5B614B5CCF1AD009F200F263E8EBBE2F021E
      817D6D8446274DA0901F88E4DCF5353D544D6C9CF56CA0B544958D341A356067
      5B781037F27025A5D8968993D8843EB5B8471FB3055742F9857D321E15DD4550
      30634F40F88FC9F5643698740C72D278786276DF9F858821697702EC8D145268
      49A0BBD2169BA8362C47FFED76B18131759D453941A9792694D58CC389B27990
      63884E25F238059AE798C30FB5F1F8958C47E974D1930F5BF9189847494CF96E
      E261DD824F34DE10AD94335AF187204EC69FBC096F0EA265B60EF18324E7D2C4
      A4F276CA7B1A360BD465E913412EB01A4A0BB8CC35AC5C64AB5E277A27421BCB
      90E1744DB5C3CC4AA15F2199EF3C1E2E45672204E4514A1209C0891152AA2B91
      FC3ACBF782F22117E4A8BCC1F7C4C819914D73118DDB314CAD8F3C89C1CD271E
      B5FA81DF9ACD9D6165AFBD64E3692ECFE3EB4B981B59033534F3A0D30056841E
      7FC779169850AECA3E90E81873AFE54870CF3DA097CD3DEE129B882B64F5AC79
      6E53B4324A271B122CBFCF5B94B68E63BE476AB24C1FEFAA39027E17B4E94294
      58B32410C850999B1161ADE77D4BBA3C152AB7E8DC8B8F3EDB0651CE9CF90700
      2416D1C28D44EED297D2C437E7743BD2E1CA30747FE97E52F6E14044D91D1948
      87364DC81CDB6AD4400740589DEB936C315E14A38EC547E6F8736C1D13DB6BD9
      BC6407A0B990753099D671DC09B07D920F3881DEDB31002F1E1AF463D6B2312E
      E01E9CC3391A7CDCD1B6E679D4786391D2DFC8B56F200A2628521F5043B3C1E0
      6C071C1232209E0DF9B43891414A592202C8BF4219912C593B5393AC62F2788B
      E3FC4FB99AFBFCE4136DF871F8C750B61A4B86B600604B60286F1D13FD71AC75
      0451B164DEF2AD59CD26BD8A7B632925A7A9D06427F7BE84FECACB1C2780BB99
      E6B2004434669975709B29A8139835309FD2544D2652852242EC5A4BA56F37FD
      E2CB6D22C183DC386370CFD4B5C890178C48255C2B81BEA481340DAF4C41654D
      35C72B24F808932F0D0AB9941E04BCE92C9DB324D40E14FC8D852032F1DCB32C
      E3E5676C1BC29F367B9A95BDFE9A8D64FE6922158395F8FA683E49723A0928F5
      A61C42EF136DB65432DC8CDFF6E27944B1FAB0F36CE9E167DBF8132FB47EE75C
      6E5BE601DE9B2A79E6389F1C9CCF407CE93DA07433E01C59A10464877F8F665E
      857B19FA5D3F7550D037CA7DE61156DA55D547B61BCA3E947968DC428C59FAD5
      2D0C85374086D2B06015ED88B21B6EB8211FA7C12CB90D32309870F4D1473BF0
      A0EFB192BEC732663E1653BA9A0B804C063886B3BE60BDDA0520BE91EEB31101
      89FA21A4383F63B4FDDF40A95FA30BBF1F607122E9CE157CFED8E79F7FFE0902
      5BE3E9DAAFE46B99886F9553E6AA216369222369E375BB40443A2B94C39CEAA3
      0711DF1F095BE286157C3D80F44465F3C0E22F441848C26012184A45A875EE92
      773A56D216D859D52DC8AD908ACAD7DBAA59B25B958E537AB235CC9C6AE91FBF
      6F314F3D66F3D0F271D3D5A4F563888266111D2E67206EB93C13B85953E89124
      3391AD883D99E83289CD4B598A1466B55169E9E68E5E923729C513241F0FEA0C
      CA60896CB0B188DF2D43067EE651344D8F38CCA69CD9DB665E73A525BFFEAA55
      8C1C62ED6B96058D721EC43636CE3A32881679B033E321468E360CF9446B88B2
      45AC34F633CAE434CF610C21B3DEDE48548AB153E093D2660D35B08CE4302703
      A0D444DB3462A4CDBDED4E1BC6863EF338FCCA11995CCBC39C0EEB69031B9C54
      4C330112F9A6280B13DF3E1B3A680ED4DC74D864690C4A2A92D4C3B856D2E810
      0AC640331ECAF99974E96596F8C6AB4CC8B3E90B00D7AFB20D1FBD6F834F6592
      18AFEA3994081640A58E412560D501A7023EBD28F5C0B83A1CB9773283C5079D
      6C9371891CC3433EED8C6B6CCA75F7D9E6D94484B0CA9C374976B265BFFFAE8D
      398129E4234E61F21AB32E369A141AA089642D290761532CFA2FE0BF9621C635
      AC580813522358C67B9E03BB6BDA71E7DB77C7F4B6A90F3C6DDBE2A0436F6443
      54A6CA80AA00C479CA68DE4873212E80094A581E403A05202D0430D5FC4CBD4A
      A544DD49A9B6ECD9576DC4A91731217DB6CD618872014CBFA500EB3206DFD443
      58043160D921000CEAC4CB0F86F5C3BFAD66839B4399742203AD639123F9EAE4
      136CE92BCF6315ABE001E027085266DD4813BD09166233AB89F26D23AB81525B
      1D91C3167A11BC4B8824D0B9EB913657435B8297EA531403BC6CE455F49152B0
      AD5DF2C0FD36ECCCB3EC2B4A8C83D1CC9A722CEC2A193B9185CF258B94F9D992
      937AD3833BD9C6538E1CCFBD3BFC383241149F93BE4536076286CAA3AD7A9628
      13375501249C2EDD6B4D9CA3ADAD046D2D48FF37F275149C3B13D6E12732D016
      DC75BB8D3AF914B2FEE3901D39D25631A82B1B8534952D010F2D69D3AD67B628
      9DD712AE6B25D7B098006E3DDF93A47B91B5160ABE065727F1EC8D3CF6241B73
      F1C516F7CE6B94ED30534BA44718B7D272BFFCCCBEC179B41F03AF5379EF8B50
      A55E44196E3EF7EA226C6E17B31601268B0956961E7CBACD3EF8349B485031E6
      FCEB6CF04DF7E073C20C0E20E98E91004283CBE17EC5DF1A40BC35ADF407BDC6
      959F34275077990795209779083C50D9157834D2F7A8612FAF82695546C65100
      706453C24AD5BCC7B1C71EABA6F95A81C77FFEE77F2EA7EFB104F050F63103D0
      18C71AC0EAC37AC6651CE1156163750D18BEF9E69BFF8432E3CFF863FFF1F1C7
      1FEF8E2ED621BCF64664EB16860B5F7AEDB5D7FAD1AD9FF9DC73CFADC3067703
      0DF54ABEBF8E37D9CC6BBB261C45EFF559888024A2FEF8478386D18E862A5585
      D907E166915237EF83E02F622B1BA75B5057D517914AAF1BECE9324D0FB8D2FA
      F71659DBB2AA91DB56BD7A9B1A7DF0E7D182E6E1440ABA981AF3066AC6AB17BA
      883FFE753476100E9C7FF93536F7CC8BE0F4239B40743D8A998729A4D8F378C0
      962077AD09EC85F44F16C2E4919DA836279937ADC3F3422E8089479F69EBA103
      CA6F5DB21E317860ACA1E7B0026F9005C8904C0640C69C882C08C63DCB1FBACF
      0ABFFED2B64C1A17C858A3B06AA545B6ADB204D0A381CA03A959836DAC76663C
      342CA8E30F4A1A813D874B41001081C7367C3FDB9B2266337C9F5AC135CC0A88
      AB6F7AA8B5292527B92C2CF3FD8F2C81B2CBBCF32E47EF8ACD95077A2D1BDBBA
      434EB3D5BCEF1528F90A5C62311DD2BFAF64AA596AA7DA881713C9CFE5019F48
      743A15E5DF89E75C66F3EE79D072D8645A970380D9A9D6B621CD5A52E32C6D60
      5F1B74F5D5F611203CFCD4F36D2CCE7523009F319C9F89E8954D44A76CC6B1B8
      37E2533F9CE8F26B3689FEC7A1A975CB23B6E60D665E5224A447F688026D3B32
      E705DF0F6243BACF469D046B860C6424403F6EBF136D02D987D618946547B3C9
      8C46A2630C91ACEC89C731AB3284AC69109BC8A83389886FBACF623FFBCEDA92
      C96A90A357DFAC13B97457BE1255964DC39717E404A839101FB4B888DB097802
      DE22741089B7A465D9069C13973EF6824DBBF05A1B737C6F1B42843C982C6FF2
      2917D8D8A3F1D2389C8DF8F033DD1A73D8E9360E60998404CCF7471E6F9F9001
      F73BE76C9B78FFBD96367C887548B0125F0C79352B0B12803452C2724183F0CB
      2F4905B9B7C3AB14ABC956DC50A46C6F55C285DAEE4A4EF9044D29C9D6B260A1
      157D3FD8E2DE7CDB563EFE94AD78E0619B7CC53536FEFC8BB93667DB408655FB
      012A5F93317C81447C1F665A065D76AD8D7BF0712B9A3DC7DA00904E9EA55A65
      F494AE5A51C06E25706961C851418D4044D2EB6E3E464D685161B90F2AA78DB5
      E40FDEB5D8871FB5A5175D4D567382CD85E1954840B18A7E542C8387EB91C189
      8334B106199B9500CA1A8043FA56F3293D2E046C97608D3C0B12CC249EB36998
      572D7FE4294BFCEC736B8D0738E4DF41E9AC3523C952860DB5FE37DD661F9CD0
      DBBEE5BE1A75CC59368646FE305C3A87D0FBD41A4EF03106B1D13158588F3AF9
      3CFBF644CE3D19E9AA2FBEB3C674D87ED5BC77EE099529BD94C94F95618ACE34
      A2F7373FC7E12548A2A9BC6EBE2D22CDEECBFF3EFB50C60158B87D55ED8388C2
      6E57E6A19E073DEC4612821AAA482EF380A65B70CD35D76433699E26C6D50927
      9CE0C003AF8F9534CD57001E2A5D2D023CE600183EFBF88A8FDF603DF4470022
      3009838832138108EBE7AC5F22AEB50F7FF818D645EFBFFFFEBD00C93BF44386
      82600B9E7EFAE92440A41010A982B155CFABE643DA953A89DEEBE5DF75802A63
      7537272244F5EC2C9504C223FCD1275700A2C9F33080081404205A7A689C1C8A
      EB8DF81558DD6AF850F4DF06F974539E507F44756E6B53C371335E03F4452A88
      6AF162B6DC24EB485865DB962EB0D6C993ADE2EB6F2CF1A9176CD14D77D8D093
      7BDB5068894361160D21321B0C9DF17BB290FE804B3F1847C378104640631D43
      D4399E1B733C11EF386ED6B16CC2A3B1C85D78CAB9B6EC9C8B6D2D1CFAD8BBEE
      4122FD094B7BFF6D2B63A3A89F4FE4949DEEFCC75D942D9F0700AF9DA8B2858D
      400C33CDBA280A0D7A3C80020FAAB7F97500C2614B2156C64EDB988F6965C8B2
      89EF6B646B696635004292BE70944F65626580677A86B5AFE478E72EB0FC8F3E
      B7750F3C817CFB0DB6A0F76536FDB833DDFB1F093B4DCC9BC108216AA31EC06C
      C70032B261940426F7BAD8165E7EBB2DBFED218B7FE635CBFF6A8035CEA3F12B
      864E39E7756B25115CB9B5551659FA8C49B690DAF494C79EB2C9773F64A3AEBE
      C3865D7CBD8DBCFC061B73C575360666D894ABAEB3C9D7DCE83E1F7EF52D2E3B
      48FA7CA0954E5B641D795813CBB6548D5B00102367DB38769C25BCDDC7963DF2
      AC2DBDFF495B7EEFD3B6E69E67594FDBF2FB9EB465F73FC1EB13B6EADEC72CE9
      91E72D9EDFB7F4CE876DF9834F5BF2FB5FB0D98FB54D4BC56A632304003A7860
      45D1EDAA3D470215DD5FCE2F80E5EBD86EC796A99400846CA4B386067269B935
      C4255A394AC8B95F7E67EB5F7BC7563383B3F2D9172CE995772DEED9B7C974DF
      B2B8A7DE762BF689D7396F6F58E22B6F13B8BC65CB5F7DD512BFFBCA72A78CB7
      3A4A4F9A6E6FDDBA9978076BE610800844760010F149F476C8001C80A8F4A612
      A6BC43545E53A35B93F61834396611AAAC96454F2D2111A05F610DF316582E80
      9CFECD774E4D79DDBB7D205CBC6BABDE78CB96BDFCBACD7BF1555BF5E9179634
      669CB56CC8B5ED4C3A6B70B55ABEF77AEC380FEDDC776DAD9D4166C4E6D78482
      AD7A078E60D022428702363217C0BF65DE3CABF8A6BFA53CF1822DE53ACF3987
      72EA31BD6C0499CF1032B1E14CD08F638357503196D2D6604AA92328074EC438
      4DF7DB9ADB1FB1C4C75FB3824FFB5A9332D34C367BBC4140323758D95C5162C5
      AB56D97CDEF3E8879FB5D1B73F68D36EBECFA6DF70B74DB8EE761B79CD4D368C
      79AAE10489232EBBCE465C71BD8DB8EE161B89B9585CFFC156B214FAF4569E13
      917108C4B6D5331EE0FA613BEA61F554BEEAAE51DE1D807866AAF6B7E83E88F6
      406F0EA5805B4B4D72EDA9DA4F55E5D13EEBBD3D78750D73651EF237A7975DC3
      1E5DF5F2CB2F97B36717927DE4002069175D74916C6AE31816F48C2B0F1E8B01
      8FB980C53496A8BBFD23D9C7B3BCDED12D8084412404203F83BEFBEF345B76E1
      F540D62900C735F0861F6742FD93071E78602C9DFB658F3FFE781A4E86253469
      B6682C5EF536DF0F89E86539F9772D2F7712A6F9EA847810F1E28B6143F8F0C9
      DD1980280B71725AAE0EEB1F6C9E2689CF39BA2520A27991C806E0427689D151
      DA92C7C0F61A366D315D68508BE56465CC1BE4A1F1938A5403F6B04D0B0094F9
      0B6CEB78FA26FD06E131F289C5BCF981AD79F52D5BF5E29BB6EAF9576D019B92
      1AB2D3EF7CC826DFFA079B72DBFD36E3AE076DE1FD4FD9D2879FB11C36BAF2AF
      BEB5C6F113AD7331F555D27ACB0534CA78989509D5330049B94165B616A8B7AD
      0087DEAFB20C6D0EDA401485FA1B2DF85A908139768E67E870AC025AB7E17032
      6A484D384A67C0239D2CD75807B0AD4972E00055397F5B4E7F1919D6387FA155
      8D1C6BE5DF0DB294B73EB0458F3E6D13EEBEC786DE84D7FBDD0FD8D43F20D3CE
      C63CFFE1E76CC5736F5BC6C77D6DCBA8A9D6CEE47FF342EAF58AE49525D4A8B9
      CA62130976594A42353CE0B0C13A0197D6357156BF648D352D5F4B639F5201A6
      48DBD6303417A772179FC7C559FBBAF5B62D856B504AF4DAC045D5AF51C4ADF3
      A20C52F464F96114519ED106A288910CC0920904B4F4711AEF472B85F39C94C6
      EF4DB4ED4B57591B7FD732F99E12AEBB73225480A281548057EACE9A39223021
      1781AA109037406DD74F52961BF4E0223BB6DBB583E12ED16AB9A983CD5A659E
      6CDE7F4E6A20459ECE869DC47B49E07D25F2B7B5B01CB004DE17EFB12329C91A
      98646FCB4B470C33CF659E0A746A008F2DB57581E65BD4723D11BFF41E001617
      4769B3C302561B5FA798887CECDE178C1DD3A62F790E593ECB04CBBD579536B9
      F7896A1DBB4AF23802990D7CCCB9DD46A0D182647F9BBE8F8CA6652B03BB8053
      03D1B96236955085AF3A7C65218DFCBD8028C3D715B0913137D6711D25BDA292
      1A99505B6CBCD52D586CA523C75BDA17DF3AA09AFB140388F73F6CE3EFBCD726
      DF812CCBBD8FDBCA879F4758F2354BEAF3A5657EFBBD558E9C6C4DD316D8F685
      5CC3759CDB5CCABC5CC30E66D03AB9BF5D8541D2F7BC870E4CE5DA533758EBDA
      2482C2B5989CADB1D6656BAC991996D635AB6D5B2CF7DB3A988D04232D6BD652
      B6621E8873D0A273C171B673DE5D76A9ED42D6110ADABC2F917AB1A16973EE86
      AEDE47777D8EF09C5B7701B253190034F47CFB390F2F8CE84B560AC6E971B8EC
      C383871C633552C19C473BE42635CC1BE951D7A06758854C49390DF342BCCD73
      0011071E279D7452DCEF7FFF7B071E4895AC8071B58CCC43E0311FA098C99AC0
      1AC2FA9CF51AEB41D6B55D3D90E85296FFDC37D79585D068F939BA28FF8546CA
      1E34CF0F054CCE22EBB8996CE40532916FE00E4FA186B61A03924C40A48C32D6
      5690AF51A28B1A5AE1803A3401A9A68E065B6489EB1D0DBD6E96F7131188F89E
      88078DE8D7E812962E6450C2F9A184B50380B87C3E0220DCDCA25C2A22176BC5
      4DB23B0617371853DBED0CE3B5D25B30A67D291C3330B4C53AA0C86AB2D854F2
      E1EBAEE4A5070DE4B722365C3D4805DC64923AD8C0CAE161CBE1E1CBE281CB60
      69F34AE721CC64E52AE2D3F7F1F57C3695BC7C6B4362A4A570039447A8A39A1F
      A0ACD446EDBA95ACC8691C092822E0A1F997A0791A3473A30124D8E454A68205
      23AA299B8CD8683A376CB546FB151091E824D90BCC3495683A7938B6B1996C03
      4014E1B6297A63C3EF447DB443DE1E19BCFF54363740C5F2391E65461BB4A168
      83D1F1721C5991A507B88073522A014796C80A6E434619B499A88955A7C890D2
      9B0315BE677B5EB16DCF2FB1267E671DE5BA36A6A81BD968B717F277CBF9FD55
      A28272BEE57848642FCFEB9626E46AD810CBA9ED5702464D4CDA3B190F6554AC
      0E656DFADBF4229CB9151F77BA7FE31AEAF82072C843DC4A88C2751DB589B239
      3733C92FAFF76058351858E50C39E00816199D8AFBCE74E60700118DB6835292
      96A3D472CB3573DE9B385E378323B323B1A7741FD5F377554BDFACF7C7FBD58C
      925EAB780F023035A46598545D41DF60339B6D25ED98AD2E8AAF219368E29655
      C33C509E0E56184CF49E154028486AA177A3F265A019C77DDECCA6043B4AD995
      060F3568AB09F60E8E590D621953A91CD5C9F968E37D3492393601F4AD642B1D
      3491DD7B73EF8F8D19D0D9469FA81AE7C916DE57237F47360A8D5C1B6ECD200B
      E173E988E9EBC18648C60C934DCDF56DCC53E8EF6FE75C74EA778BB850CAF5E0
      796A4A49B30E4D7EEBFAC84D348F7B2A937B2C9DFB219B7B4CFFA6EFD5BDA667
      6E839E438295729DD75A1E5FB21D9574959D93457628A3C45ED936A1505DC8F5
      96D541A14AD63CB765FCBE8D7C5C2976A282087E4F95EE11BE07FAFB7651E035
      B029C501052E04095D597F08405C393302223D0D094637C93D40F84972CFAEF2
      03D77EEF8B368552C611E9273BC6ABCA568C53689FDD269D4218B22D6817BA86
      397DEB2A82FE72E63B0A2FB8E0829C6BAFBD360D10D921F3E8063C6601149322
      8DF36F787D87F504EB56D6055D00C2E9F8D17216DFFC8F00C83F5327FB57B451
      7E85B9C8BE50BE8E01482E0030EE06445E074406F0F9CCCB2EBB2CF69D77DEC9
      81F2BB11D4AB16334B36B8A0E136D050C828F312E9B0382377818980C4CF8A78
      4F11DF13F143877E5E247C52C3E59BF0C5F4A9A122421715FA2CC4D5A75DF01B
      3497011495B302113C0188BBE3DD43250DA44636F2E6882C83A419C466696538
      4B13DDDB684AB66C41EBA7860D408D56D5956BB8C9B4C169B352542741437DAC
      D4772B1FEBEB8AC46500A4488608499B88EC609BB654B07F55593DF5E19AC66A
      ABC01848C36AA28BBA721C37A57ADF3A1C6D6A6A943A00E17D2BBB701126919D
      24360412D879B9572AD111C7C6E0559FA3920580B4DAD606A6D64537D5B1FB5E
      91D26436925A6D76D4AD15C1B98D42D98918367AD0D9840530DA60DC71C87530
      C23AD2B16D67036CA67453CD0D5E535EC6C68E02809C22D9349A984FA8278A26
      4127200C369FED159CA30A7E7723E79FDFD32A50811480D51C07CBD738E7CA0A
      75DE9BC9329AA0893635D2246643A802983671AD36B7D65803D16C5333D2F5FC
      5C637B2D653ECE02CB6D942CA71DA59E11A403B8DC41C6C27BD33574C7C9FB52
      36A3F7A5F3ACCD5F9BB2573C50E617E8250619870710C7F2D32602680420A278
      24C81235C4A9FA7F6B071BA5F4C810416C69AB76333BAE1FA061576D4A5AB0BC
      F8625026E13D288869A2CCD34A10A3E369D0CFAA4CAB8C42B7321F48C4B10D60
      D07DA00C3378CF91056D5BF352AE6FE3A44EF898285C6C3265572200B86E98EE
      19FE5E35E7A2863E60B3E45074DF0156AD104E343FD446E9544BD7A60100AE63
      83D5B5D3A62CF1C87A843B85A7F530FEEA201088B8D6DEC439A1FFD641192B18
      B20C8683751D048475DC530D2C652EED0222404BB2432D004913146A814A8732
      2495DBF48C89DDA5EC490CAF7ACE11E7693BD2EA6D9B702504785C3953405CAB
      C044C7A9FA2DE74AE53DB9F2719FB6D5F27BF8F74E01890046BF57B3510A08B5
      78F69C0C4C9D7A397C1DF06FE059DF4CE9B5068FFB3AC05560DCC2DFF741AB0F
      5CFD58411840A24B572ED8F3D723C2B88ACE3EF44C7A7AAEDFFF3C5557998717
      46F4331E222A4558AFDBA56DC51EDBC6AB94751BE87BD430EB5145125046AFA3
      903DDC81877A1EA79C724ADCC1071F1C83C3E06A663D5640D75D1ECA3C6647FA
      1EA378156DF703D673ACBB5997B34EDD01400422DD0189B2100188164D967FB9
      E28A2BFE83BAD92EA43FFB33F67E0219C9A530B11E20357A8772D610CA587330
      21897FE1851736506FAB206DAAA1A1DE0422B6A2E02BE12E71913B042291468F
      636785414427263C27E233120F22AEC9C4C3A11E808B6222AA957EA027D07157
      133D001055A77CC95A0FB7EAB35A5D7D02DF2F50C94B1B83BEC043E5D82BC866
      3761DEE3161F2B2368234BD1D2462B113B276607BB4937A8961E52F55D9C4743
      64297251CFC6BF47D7805354CEB1B491614872A549B44C361C8A3BEE559FEB21
      1398EAD805009264D303AFFE4D001E800BBF57F4526DD26A54B205BB55B75DEF
      9DCD409B5464A9E15ECFBFD50088DAD89A35D1AF63E021D6FB7693B511CC5503
      B61E813E110D54DF6E032C94AD085884CA2AA9353127A1636EE1C1D29C8936A6
      6D5219E03D6BE6C6CDDE707CF56C42B57CDEC0E70D2A5F1085566DDECA3ECEEF
      DBC2FBDBA4BA3CBF57D1AA405C611EE75CFE16EDF4A51A6B2BC0DF2DEE216E40
      34D3358D7917755CAF2D5C8BCD008700A485EF6FEEE4D83415C34C8C00380057
      3572F9BBFC544B270FBF06EC04B06C90026D796A37321C564B9654C3B5D046DD
      C4795504AF0DBA3D72AEB5093AE91C37B8AA8023C8EC02F2460840F8926348B9
      6B1934B375EEDBB8875A382EBD8736DE9F36F0ED9A2877F6B45C47FEAEDBBC01
      D006E6371ADA004D1D0FD7AC118AB6DE93FEBCFA0C2247488957146D57E28802
      109D6F3D27EEF95009936BD7CC7DAAFBD5E979E91AB2A45CB0055A7B25E77733
      321D2A6D6A836F06ECB5F49C050393924D81BDC7F75693A5A9AFB60D297995A8
      4440D3632451E226868FD4526CA7CCB85DA992D858FCBB539750A520223124F0
      706499C88CD676CE7B27E75FD9509B8081D54AC0A5D54660A1674840D4C6F56F
      6A109186FB9B0D5EF799EE39F7C7599D643FAD0210DD428087CA67DAF89D2A38
      F7703BF77B2D015E231F37E899D573CC73DDCE722AC794B1C572DB4EA54120AF
      E7BE9E6BD7C073A76BAACC4EE0ADE7CF93777E281D0773690E44940546840EC3
      FD5CD7530BF5D5C20012060F3DF7D1CD72DFF350E6C19ED94925A753D51DF53B
      285DB513A8B7C29E6DA6DF514FF6514D3568931AE604FD05B41972D8BF5DE6A1
      2973CA56D1E0B184B2D502F67A35CDA7B24647FA1E1FF1FA12EB7ED635AC3359
      47770B203D65231110F92781C8D9679FFD9F94AB76272BF93D65AD53311DB99A
      72D6A3641E7D68AE8F60466401689700432B0F8D950AD0B04699C8BC79F31C88
      C87B97814357D28A0C1C3A10094FAD0B65C353EB1E447C06A2074325185786E1
      A6D64DE844CD144DAB54E5EAD09129DD4892A1DEA6EB6F069587A007CA0DD695
      A578CAAF7650B157540AE261F60F921E7257D3E601143068F3763FAFEFD703CD
      A6A68850114A1B9459DDE44ADDF53DFA4FFFABB7A5CCA15111A186FBD8901C66
      E9A6E47FF435D5DCDD4FB89D9C8711B0D0D274B1E42B1C65575992361C471DE5
      49D18323474636410D146A03AD211257341E6823299A62499D9787AE164A653D
      0F44BDCA3494F2F43EF5BE5DB35DF30492C3E7C01A38D6261E40455CCD6452AD
      F502A41F36246D4A2A91B84D2952CEF16AA47AC0B5A40D2500D1A6A4925A6B04
      002B2BC86430FCB2AD5C884ABD2AFA0EA469B459A99CC84EE0D6769AAE8A92EB
      00AD4640A6996BECA270CE997E6F0B198593EF40C4B0830DB19DB98776365C37
      3CC9B1E97AE93A2A106866C04E43763A57DA9445E9DECA6BAD68D08EA5176C0E
      AEF4C375EC20DBD1A6E432A426ED906A462B85D5CC12E72BD21B710C38A70E1D
      64B83E6374AF0278322745D9DB9479E91AF21E04260A54EA8872EBB561AA9FC3
      7B91F8A5667BDA28A32A0391444D8B7A56525370F52B7E6903AFB0EB747CDA5C
      25AAE89F09FF2A3090A0A8C435F55E75A36A13AF0338390B64A28DB685BF51CD
      DF526021D05580A2D54856564B96B6850C59AB9A8C553F2771CE46DD4BDAA029
      5135715E9AD4F3D071EA1E57FCD4C05137B29A783E44E2E059712558D7B70B88
      1F2E10710B9A39BF33C8023971AA7DA927172991B9A14C367D055CDA785DE0E4
      9E3BEE11A923F31C68058D3FF7A8759D7B3D4BF5FCAC022E01AA8E497F7B2B59
      B4B2F8FA0811C10500BC0F655D7A1F2AE53939160EB211B0AFE3BC5473BFD48B
      A0C3BF8A361D940DD523FBA17CEE079BFD68816FB27B10F7E0A1E7C597AE7C7F
      233C18A88CC38F390848BC9B60441CD153749DA22E01B974ADDAE975B4A296DE
      0470D4B1B632F45DF9E4934F96B25F17B05F67D334773D0F651E489468CABC2B
      F360D64374DD8511F050D35C0383DFB33E65BDC27A887503EB5CD6F1AC03FF24
      00096522FF0C72FDEBE9A79FFE5FBCA9BD48870EA39C750693E937F0669F2455
      FA14AAEF181AED8BE88B249289E40D1830A0424D1C98598D00490B93EAED32A3
      52DA25297881881A407E62DD4BC1874FE05F034094FABBC55DEE1691A5EB83B0
      016BB9345F59827A0691297745E88D6C427A38DDC6E87705DDA84A8FD53E8944
      3AEAAB3A6F0836B76695091495B929610196CA1C4105CD57D4F4EF2EBA15D0F1
      737A4F4DFC9C1E10FDE7225DDF09D7D0A4E42988925A142D09CC9C847D04409C
      2A281B0937397919FFC7E64054DE4809A8433D01696011F169B2BA29522653AF
      444D75953914B1291BD0CC88A22BBD17CD14D4EBBCA8D4277747BE474B60530F
      905461955B079D51C72010748AA0BC07F7FBA410CB7BD6E62EA69B40DE51A889
      309541EA01520F633B650E9E4ACA0EBCD6720C44AFBA26AA073BF919E929B974
      91875B13E09C606D832E0877E509CD6470CED880B6B3B989DEAC52916AEBFA77
      A757C4EFF30ACD02DF3665002C9584243A59C7BF6D01A0362BF256A94DE27400
      C7364A31DBEB00ED5A163D97A074A2A6B8C084DFAD1222C7A4F3A84CC3BDB748
      50E03215AEBDEE31DD0B8A7A03F55685E652F60528909C515151D7B31600A913
      80F0B11349E4FD0940B6B1A94BBADDEDD6DA6CD5AFD34D240069E463004DE0E8
      3656657B2ADB29D361A9145ACF71A98CA7DFEB01DD5D2376DA0AB2B58DED3556
      B58DBE5447702E5CB0A46C58654CC0434B01809705D26B3D13F65B29DFB65002
      529948C7574D29680BE5216587EA7B48ACD6651EBA7C0A4AB8679A799FFADB01
      4352F7ABBE28A40DAEAF5B021081BE1AFADC273F2C5DC7204B0B4822C1F0A632
      5C5FC2757D27950EB931BC52B758878E69A9EB1329092B8BD7C7A2172B6008B2
      C4A00CE9CE21C18E482BEAD9E94E73D907AF2A6C4692A92E00716AC821665E78
      26ADABB91E51CBF5A52B77AD420012DDFB10787800F17BA01F12D470A0E63B34
      1CA83109DA034ED70AF0F034DD5AE6F2B67CF4D14715F4A94B008C7CCA55D9EC
      D3A9975E7AA9C411FFA86C15018F4521F010E34AE0F119EB75D6A3AC9B5917B0
      4E621DCCDAAB4700E1AC75FBB54816F28F48FCFEECB4D34EFB7790ED57A4437B
      C3273E92A1C2B301915B907C7FEED5575FFD82999171346D969036259189E40F
      1C3870A3522A10B281925633A9571BA021D993ED6AFCA837A2744C652D0189FA
      237A556FC43B1B7A49784F71D346A5E5990AFE46F293E8AEB4146132B8C8878D
      D9493E446EB49D3983F9C6B5635A84CA645DDA375D53A79E6DF1C3AB7208D756
      D0C61F79F5F573FFEADE47A476EE5FC337E01FBF3F015B30BC16CCB744F61580
      C6B3D5BC6C8B3621A5DE7534E39B995A76EC27D5F6D948EA5BD9582861D510D5
      BA5285E66168E6BA4D1240AAAB6143D30C83F674A2F07AD59D0598AA10E8E310
      8ED65212D15216A3A5CC4A1BBCA2F85A4DFE136DEA21D6CC8D80C60D32F28BDB
      704A14E8D40240350CDE09A48201C7203374002CB68BAE996631385E17C1F246
      6A555671B1743087A1DE8F36059D176D806E784E64018E57A528E533AED4E9FE
      4F53DAD4B2E943D4B141ABD4277D5D6DB655344DEBA8C1B75132D13060E75695
      D53827DA477851C9683B838202D35665416CE6419F838021D82B1D5DD5659844
      E82AFF29DA0E98479407559A5246A53C8C4D5D60AFCD5D1BB43205BD37C1BFDE
      8BE6745492DB4EEF441989AB09710FBB2C5BC1066523290CA8B4A60D4CD605F5
      5CE746CA506DFCBC08059B37A332401F4F6F5EA598FAAD6CFA9472DC7BE37771
      94086ED296E3758B4A9BF213E1FA3556439EE0EFA8ECA3C8DDE5167C7F07D7AA
      9DFB641B25662D35DBDD86EFB6E780A6AB2CA55EA54B9D0765A600ADCBC815A4
      E9FAAB04C503A067D1E9D729FA8A5EAE1719B52265695F8EF43D4FDD13612694
      2F25855FC32CA9F0F3E57B16FEF5870D3FC82C9DFC5164BECACF8E0560A17264
      50AAD2FA23A088EC15BE59DE1D93D48BC8467B96ABF2E219AADAF7FCFEA77F53
      90AD7D5281377BE676AA39ED80472B41B953D44529C431ADB0DED8885E61F119
      679C910770646A4890C679C271C71DB74E6CAB70CFA31BF0D0B0A0B4AE346DAE
      798FC7596A9A5FC43A8575286B6FD6AFFF640011B0781001C9FE853ADABF9385
      FC86C6FA6F6FB9E596630091F340BD3B2867BDF8FAEBAF7F85C2E378860C975C
      7CF1C58934D737002AE50CB26CE160EB786DA28CD50A48B483A6620D7448434B
      1C669D289D3895B54453F36ABEBEC12E74F6A28AFE355A78315A47AB3B5994EE
      7C46C2FFD6D324BC1F1CEA09807C132D7A42BEA71BB6A71B3CDA80C6815258FB
      CBB14182C8DFF53214F5ABAC22F323A5D6AADFC2766AA364250091864F33CDC1
      1A1840DA40B740A35464AAC8B89E26649B18409423F4E0D7519AAA236AAC230A
      748389CAAE78F87D14A5BF25FCD28325D070FA4B0088CA04F580760D116C0D91
      A4A6A1B7528AD82AB2819053F5430D3622F7A17AB4363E95015CCF81E350C94C
      BF477F4F60A5CDA79948577F577F5375FB7A3655C14413A5A76696CA122ED301
      40D8961D4B2A90B16F717D0D814933D1BEFA0ECACE9A3AF819FA0AF59DF556DB
      AE121199199B743B0F6C7B05ECA80A9AB19B4472E0DFCB3827BC3A8450790D00
      71F2306467B5024CAE872A3575EA3F28CA5534EB985B528BE6EB94A2C43C5346
      A1F8B5B98D7E11599218769AE961A7E2C45232E438D48B715F17F34E252CCE8D
      FA02A25ABBA6379BBACE81363031B0B419BB8F397F2AC5A934E6EAF75A040E62
      6F91D201D61C1300E568C76C7CAAFDD7B0F92BAF29A49423ED3407C82AC14A86
      85A6775B152411BE4765356DF08D621C56F3FB5D298FEF8610B20DCA7423F337
      0D48A4B4AAF7A4F7EE8E3302DACA449525A8ACCB12F03A6656A48514100E0220
      F953960791E826763478F8E72AFC1AFD4C468340773FD3D3BF45EB58F5643F11
      3D041DDD20F7A52B95AA7C835CE57C05D1117291F643CD77A8772C89A86D928C
      5AB76E5D0BED81462A3B7534CCB7D22ED8442FBA0CF0283CEFBCF372C9383258
      297CECC0233224B85A6CAB48C35C652B651E9AF598CE1ACF125DF74BD65B2C31
      AE6E675DCAEAC53A8CB52FEB37AC5FFC5900120211D70F61FD076F7017DEE87E
      F4448EA3817E11A5ABBB68A6BFC4C0CA57F444C653C65A0C0A26B072E893946A
      9885E64E0D23F58D1A720148C41A502AB65D201229677529FAFA5911AFE8EB19
      5ADD517BFD94BA5EA301201A44760620D15F8F068C9E7EBEA79BD4FF7B74C4F3
      670348A416A668C8A7EA6E638F00480B9B94FA1DA2208AD25A929C6865489654
      4391154DB81630515357CDCAF4D8382BCBC8EEA23EAAC7A486AD80C955ED54D6
      0328441C282ACCC7083013B629F45B4979389E3A59013565BD3A7141CA132AFD
      2923D07BDA0C05B7492C34FA296D95D5961B9FC8D80B521AA8B4EA7B05246AAC
      3B9611519E4B46345F21FA3111BC4A52AE74A7C89CAD4F1BBF36E416CA507594
      E8B6C29653298AA3410FACC1AA688056C21652D35D00A33E8380428D6BDE9955
      B7C238DA56639B51AA6D825A2B665953E606DBB27ABDD5AC49B2BA35A956B59C
      C1C4E509569D906DED45CC156C01501A38BF94DDD417AA6283AD06B8D8DEE100
      D0476013D780669D4A46022D0106C0D5A89E0BAF6E694327FB5399CDD5F69591
      111055714E3313E36D53499ECB14B7890DA4F28ECA286A626B93E755005A4736
      257054A6A3B90B65770220F7BD029B72328FBC4C6788654D8021ECB54EA47AB6
      42C1DE0C1DDBB1E3AA2A5C74AD73EE320F950AD9DC9BA1B75627675B755AB6B5
      9461C2C68C819883DB45AF2D425C7243B1D5A530B7B321DF1A60523697156190
      88BE157F434D685D0F0188AE93EF75FC203818CCA4B852AF9623B9FCA061F763
      1F47038C2B5D8668FB3F9679440340F4F3D91340ECEC39F60DF2EEFC3ABCA65F
      50620D4AB2028EB0FC88A7E5AAB2E2FBBD2A59F9E0590C55D173B5F837297A6C
      A74AB38DBD522650CDF4941BA8E8D492796C469FB082BDB5049A6E3E994736A5
      AB741AE64912463CE6986362F7DF7FFFB5380AFA390FB1ADD43057CF231A3CBE
      E2DFDE663DC5BA837519EB34D611ACDFB27661FD27EB5FFF6C00098388321135
      D5CF3CF3CCDD28671DC8019C483672094072370386AF40F3FD9A81C3714CB12F
      82B115CFD7B368BC17E32D5229FF5D52AE7A357E18B56FD5E47A8486B65DBD11
      6523626BF97911AFA12594D689F6B542FFEA8D54FC45FA3100095FE09E328D9E
      320C8EDFFDF7D702909E6ED41FCB4082297B652041E35DF55C27A01701106D3A
      32F5D183DDCA66518637F7C8F7DFB7295F7E6E1B35988726521B94CD16663EB2
      D7AEB56F5E7FCBE68D186DD59AE740C2A305C98606B20645A1625FB9012A516C
      39F7CBE7CEB1AF3EFAC0962F9A1F44D162FA40F155942A1AA6FA16CED8C8D7B8
      950D41C96CA96013A20CD2945B684B468FB3EFDE7DD78A3319FC12ED14F64F83
      E8C1F4325A68BC8B59E386BFB4B1A926CEF1B8A6269BB08A45EA0B888E2B006C
      A661AEB9925AF512586AF40AD8C410733B96C00D906C21C2D7F76B6B17B3A96E
      3BA51E8044FA4C0D39B9163768944D7AEE4D1BFFF41B36F4D117ADEF03CFD8C8
      E7DFB2455F3289BC9801B38D44E30008753DD7B856C35BA531B7113B900AFA0F
      DACC557A52A6A1D766584B8AD05B00B9EDDBA561A5734A76400F49836DDB596B
      A64FB3414CE5AF5F3837302C52C6A0D911518D45A250F31DB012172A60EA0597
      5FF7BE1ADCC14028EF8B325CDEC2F9B6E4FB7EB6797D0C733439D698916A33B8
      EEC35E7BCD46BDF3AECD1AF8BD6531A4D94876AFD98F36AEF37658491D45E5D6
      9E916FA9E3A6DBF2FEC32C7FE1726BD11C467199353074B9E6FB114C727F63E3
      19285DD86F80C58C1BCF79C38F85E0A09DFB498D701DB3CB7C1598A8294D5F43
      CF57A049A7A8C03F3D3F3C3F3F0C62FE208AEAC551A35F5DF62F06634496281A
      3876C8F2A3CA5B3F35BBF065B1EE9EBFF0BF85F78DEE14733DC0F43404E88123
      2CBFEE1D04352FE72549001255679C77B95856EC954D680FD62349522D4D2B74
      09CBA9F414011A1BCE3DF7DC2C041155B24AA4CD1087AA6E8C841177D9651779
      7A6848F0C7C0E36B8041B31E4FB3EE625DC13A9D75246B3FD6AEACFF72E0F10F
      FFF0B3BF0840C220C29BFC39A8F75F34D677271B39906CE42480E212A8BEF7A0
      31FF0A3D90AF68AA8F7DE6996716F0F93AA55634DE0B29716D645E640B032FB5
      9A9624156B06593533D22EB377D0B6ABA4A5C6919F1BF16E87FE02F4F41A5DC6
      FA2965ADF08DB0B30CE4C74A5CBE11BFB328A6BBAFFFD88DEBBFDF0388A329D2
      47A965135664AA26B063B848829C4DA879338368951556B07499BD70C9E5F6C1
      CDB75AE19C794EBE623B13DBCD6C100BFA0EB43B11CAEBFFF80BB6754D221B25
      1B9886DA34E4A692133D113AA430A5A87DE717DA842FBFB2AB7BF5B22128AAD6
      2263E1D48C35DF42EDDC360320D4C7B7C3E3D7547B2BF228EDA4E2A41AC150E1
      269AC528DD8E7CE50DBBAFF7D996306922BF9B9FE1FBDB9919E9D46C8D9B8FE1
      6F6BD88DF74E04C1F754F1399B297C7CDBCADF535906A090CAACB22C09F569D6
      4260D22C3EBFA6EBD5B4762533426BE95A9195CAEE55F33DDB3AA1AE36568067
      6CE05B99435A1363631E7AD65E469EFC9D73AFB6F7AFB8D95E3AFF6A7BE5E2EB
      ECB50BAFB7614FBC62B97396107933B056C2DFA7B6EF06F398FFD11C82CB24C4
      04D23C10A50865342D950CA1C1806AD7D0A24A8534CA3518E8060A35D058CE71
      156B786D934DE39C3E74F12536F9F34FAD85ECCECA38675204609377730A6251
      D1BC16386D2663D230A6323781ADEB91888958516625CB97D9D0679FB1E72F38
      CF12470CB59A95CB6CCA1BAFD95308738E78E2291BF4D863F6E25557D9278F3D
      62C973B90F60D6B503109D85AC946C2B9E30DB463FF89C7D74C52DB6E2B37E0C
      87E63B61C9F91F7C66EF233133F481276DCCD32F5B5F34B03EC23B3E0EA7C116
      E96991ED6D9742B068E340B44A59A2943BFD2B35CC5DBA1101900888B80DD61B
      6275F3EA7DC49D6D6B375FEF093CBA32FD0880F81EC91F05949101C030B078F0
      702E8F21B5EF6E3F7603BA11308BEA7B740DF786B20F5172FD04B982606518AA
      AA78AAAEC023E21EE8CAF82A59D124DF4EDF639BAA3422202D58B0407A56B504
      DE5B5048AF84A25B2A4144FAD2B904F219B40A52009104390986FB1DA8EA4A18
      5113E63EF31055773ACB97AD041EEF4681476F3E3F2A021EBBED001EFFF00FFF
      F4D70210CD88386656AF5EBD7E09456C0F0EE4F71CC4C9F4472E0548EE81D2FB
      3275B92F0192D1CC8CCC4305726D848F9C47A3BD74C488119BD4602723A9074C
      948DB40844E4D90B88389743093246961BDD57835D27DC33B67C9FC4B316042A
      7E08C7537FC3D20061D9E49E8026ACB4B953B008DD4C5DDFBBB31B30EAEB3B8B
      78C23D102F9DA146BC9824D5447A8E864AD6A1285853DE6D7EF342E06EEBAA35
      F6CCE967DB07975C6D9BA613E566F3D06F20DB201B88F972803D80C6D5F07B9F
      325B9DCCA6C1C695926375C83DD4AC8EB79CC9B3AC62FE724C9690FF60BA7E19
      9A4537634035B5CF876E1ABD3D39D51AE3D65BE5A2A5963979AAE54E9F69F96C
      4E6DA969C1B437D3F67531EB2C6DCC782B9834DDCA26CDB409681E3D8DEF4492
      8C8872F2DDA4FB46402E71E2444B9936DDAAE2E2AD763D60A6897E7EBE0183A7
      8D8B975AC6A4C9963D7DBA152F5B620D0544C711CA652BCD5B45E86EE00D006B
      6190B13E2DC74A17ADB6A2B9CBAD3696E38236AC6973955C1A982B69EF64436E
      E6FD31C55E877CC5042459FAA09ABBF8D5F7AD7CCA5CCB1A3BD9D6F51B627D6F
      BEDF5E3DEB329BF1EE27D61497C2FBA134C4B47DFEDC45963C6586A54E9D699B
      63915991EA409126991936C5C6B57CD56A2B58CCF74C9D663509EB03E142A6B9
      DBB228FFAD5963798810664F9D6E9B96ADB031AFBD6E8FE1D637FF93CF020916
      CA8986926F299A64A912B8E47C5665A43B95804606FE82414F366580A3AE7A93
      25AC5C6AC3DF7FCFBE7EE8617BE99CF3EDE5DE6759F6D021563C6EACBD7FC925
      36EA8107AD76FA0CAB9935CBA6BCFA8ADD83B4FEA0E79EA7090250E515F2DE4A
      AC6D498C8D4023EAED13CFB73EA75F6CCB5FFFD849AB544D9A6D9F5D76837D0E
      98E6F41B66EDC87FACFCF46B7BEAAC0B6CD0332FD8C6B56467647BDBC99CDA68
      FC07FA0730BD3487A34913EE4D8148178B3102241E40FE9C0C5C3F13069070E6
      D11D807822CC0E59430840C2C0F1533FEEA974E5F793B047B9770A0C0388270A
      094422FB96EB75689FD36C07BD8EED04D4ED04D61A7F6896015464AA7CB34849
      EC9DC52A59916964B3EFA6011E2A59C54B8E5D252B4411C334DD65F43BC2731E
      A2EA76071E1A14BC9225F0389AB53F6BF70878FC9BCB3C041E9A0D5416F1972C
      6965B95F14AC9FF1A6FF0D20F92526EC7B1C7FFCF1BF2723399903BA0C30B907
      36D64BF448BE004846C1D69A438F640D079F0CC52C97219762BCD62B64EA4E5F
      44D948C352147DE5D94B735D945FA7EAAB89CB883CFC0E1E2361B32A5D083F80
      E3D95B5E63CBEB6B7995CBEE1C0F7BFAB7EE40C6D776FD6B4F3D969D46321120
      F953002488C882B91671D3B7F2906E8D50523D80B89AB88406291DD52D5F6DAF
      9D7E9E7D7CDE6596D76FA8D54D9D67B5331658D3DC6516FFCE17F6E671E7D8EC
      FBD85096265AF394A5B6E6BD2F6DFCC32FDAB07B1EB34F2FBDD106DE788FAD78
      AD8F75B221277CD1CF1E39EA448B41A1D4A89527F71D6463D0C8FAFA86DBED53
      44E9FADE768F7D877651222274968B89D0EC0536F9B957EC9D0B2EB72177DC6F
      EBDEF9CC26DDFD887DD4EB1CA7B1658B565AC2A75FDA803BFF609FDE70B37D73
      CF7D360445D8251F7F6E1D6B29B711012F7EE703EB7FDBDDF6F9B5D7DB37B8CB
      7D4A26B564E0406B932C399B977A3C520668A1F968553085B20B2D76C0681B78
      CF53D6F796876CC2336F5AFAD8E9CE404C9219DB9936DEDE49E6D24486867CCC
      96D5AB6D04CE941F6154953970780004949824D5128FBED7476425231E78CAAA
      662CB4E6792B9DA0E3F8475FB06F6FBB8FF774BB0DB8FB61547C89D86353AC7E
      C14A1BFED093D6F78EFBF8FA3DD607B1CCFEF73C600968A6596EBE554C9F6363
      9F7DD13EBCF116FBE41684FC9E7ECE3EE0B89E3DFD4C8B4703CAD6A758C98871
      B6ECF5F76CFC434FD92757DD649FDD7A8FCDFAE42B0401D7B87E443B4181CA72
      6A9CD792E9ACC15FE5DBE79FB5EFEE7BD0DEBFE872FBF292AB2CFBDB7E96F1E5
      D7F6FA49BD2CE6F5B7CDE62DE25C2658F9F871F6D0B1C7D84737DC62D50B9611
      2C0058314916F3D6A7080ADE6E73EE78D2C65E7597C5BEF081D9E275D6387696
      0D41E872C2AD0FDAA621E3CC56C45B16E5ACD7CE43F0F085D7AC2E2EC9659F52
      5410034C652CF1C9D4FFD16A975C096406F5B33428190CEA8A4127EE5CCFCB27
      2C3D7D8FA7F3868DE5766059F91256243B880E087DE6D113607896674FAFD14D
      F3F01EA17D245C5AF7B31CBE5CA58140ED5B220A2920D650A0C003D290EB7528
      7816CB4A3D62B28E26118FE8756C85A2BBE9DD77DF2D43F5A3A877EFDE1BA8FC
      6452AE9214BB932539F4D04363F6DD77DFE892D552C0C36B5B29F31078886DA5
      86F9572C5FB6F2E0A141C16342E0F14B3EDE013C5C05EA2F010FFDAC6643A49B
      150D22071E78E07FEFB7DF7E7B723007D3C03905B1AECB40C97BC84C5EA47CF5
      19403202C6D62C185B2B287325A86E0798146862926CA48AFA5EF5DCB973250B
      DFA4B40D41C6369D5095B5D464178808A52520A693AFB44F6C2D8FE41E307C76
      E235B6BC699507906826D74FF93C0C307F4D00F929E011CE40C2005243BD7F33
      A5020F209A755093B64D0ABBEA49D00C6D5DB5CE3E3AEF0AA2CB336D02E28EA3
      6FBFDFBEBFEE4E1B7FF7A336E8925BEC79FC3C66DDFC389B4CBC957C39C2BEBD
      F0469B82826DFA477D2DEBE3FE36EDEEC76DE815B7D9C67E232CE19D4FED8563
      4EB1ACAF07B299AC416AFC71B761CD7FEA65CBFD7A80AD7DEB43FBFA8A6B6DEE
      73AF5AEDB45936EBE997ECF34BAEB481D7DCEA842693DEF8D8BEE97DB17DD7EB
      5C6B1E38CA9A50C0ED7BD115F6C159E7D91AA4E4E33EFFC6BEBDE50EB2A52B2D
      77E030CBED3FD4FDFCE0EB6F4340EF734B44B8B21F1BEFF8D7DEB4FAF47457E2
      6A2E29B66D30F7D09CE078A13CCE5B61C31E7CC11E3FEA4C7BE6A8B3EDB5332E
      B7D108F0D5291391BC0C9B5C3D252C01881498259A3714907CFFA4732DE19B01
      D64956C5D3EDB281AC2FBFB78197DF624301989CAF075BF157C310C87CC2663C
      F0AC25F7F9D6F2BF1D6EE3EE7AC406B2C9E6F2F5A40FBFB5E790F61F7DC74396
      FCF1D796FCC97736E4E6BB6D0A60606B122C1D007EFDB4736C10D2F3B329E52D
      7FEF238EE74E7BF79C0B6CC3379C53B2BD3137DE657D29A125BCF191FBFDCBDE
      F8D046A01E3C8BE3AF5C15671D651588D922EF42B94E836F6A6697AF58619BE6
      2CB0394FBD64FD2EBFCE56BEF4BA550E1E6E9F9D71AECDBEF741EB9C0C8092D1
      647DFB8DBD76D69936E4EEFBB175462C70798CC57EF8A50DBBF62E2BE8D3CF2A
      3F196C33AFBDDF963FF022EF25D60515AB9F78C3065D789D4D40C176264AC763
      B8E6EF9C7F95A50C1EEDC42DDBF3904C97B22FF76133B3271A92F40A0EBA1F1D
      8844C81DE269BB89FB9F08200292EE9E8F685663577937024A5D14DF3F1340DC
      B0F28FACE880311A407C69CA8387AA2202109F85447ABB4E1F50FB99E8B91241
      647F6B27FB688354D4CC1ED8C07E584BC6B10503A80AFAC9A5F4900BE839E7B0
      D2D93B930191F504ECEBD8772588B8FAD7BFFEF58AA892959856124694B6D514
      96E63C06B144D57D9BF5344B3D0F651E1E3C0EE063651E028F7F67FD0BCB651E
      1E37FE6200098B304640447FE06720E0BF7310FFFDBBDFFD6E2FA863879095F4
      3AECB0C32EC3ACE46ECA5C2F02249F0224C350859C4E2F64197D913832913490
      740327A784A650051A2E5BC430A047A2B44DBD91564EAECA5A2E1B91DBA19AEC
      3AF1126694B696EF8D083874F1A2CB5B1E58C2FA5A6179947089CB6BEF87F9DA
      5D33258E6D149123F0B2049157EF17A19F8FEEA144DFE0D14DFA1FDA8BC1473B
      9B5351FF434353CC602390083B87D5C003AC07567306AE762E7F0674B81A511C
      7DB7F745F6FA3167D8D8DB1EB44180C73797DDE8A2EE0117DC60AFE3E911F7C4
      BB66E397D8827B5FB02FCEB8D2563DFB8ED50C9D625B064EB0D944F25F20D5BE
      E491176DF5B36FDACB180AA5B099D9C265564A46B3E9FBE1D6347A8AB58D9F66
      99A8A4F639ED6C1B7BFBBDD6307E8A0D2133F90E69F6CA0123CCA6CEB59AFEA3
      6C300E6F6301341B34C6E201983E27611CF5D6FB666BD7A1469B6C095F7E639F
      5D7EB5AD7CFB7D5BFDC67BF61C9E291FF7BEC092DFFBD83AA7CDB19A89D3AC71
      6D2CA5A22C6B965AAC8E5356AA125A44742F75F434FBF8AA7BEC1E0CB09E3EAC
      B73D7FFCF936F8FE67AC662D653127D50E31603BDA592D804E3D74E6C42407A6
      6F2359BFEE33B20095752843A9C457376ABA8DBAF236FBACF7A556FC2512E7AF
      0060A75DCE797AD6EA874FB5DAA1936D1E0DF70F4F3EDFA6DCFE902D7EFC15FB
      E0E473EC9BF3AEB4BCCFFA5A0D6AB16D93675BF38419663317DA34149A756E8A
      078FB06D0B28C54D9D65F39E7CC15E0394B33FF8D25A874FB6AFF1A21871E10D
      56D76F8C350E9F6EA900D5A797DF6A2F9F7FA5654D98E5CA712234D4A399E626
      B865145540499266F7D4879FB64FCEBCD08ABE058C160146D7DF6A2F6102B5E4
      E1A76CDA5DF7DBC83BEEB0377B9F6943790F55BCA75CC80323C9A0B23FE94F09
      33DDCAFA0CB0EF4FBBC2129F790FC059CBEF88B7C5F73F6F6FE099D21F73A5E1
      37DF6B836FBFCF5E3B1337C2CFF919896756D244572F4884051AE8D56478BE84
      A53E88E45A5CF6E1B58580849D95B0C22D939E40E4473398903B604FF4FC1D24
      4622AAB76169916805704FB9F58C2A2FFAEA034BEFD7E1093D020B05B67E2FF2
      864FCA38D4D7154948BD5E555900906D94EFDB089EE557DEC46B3D15996A26CA
      ABFAF6ED5B4E0FB99806791E959D2C8043252B35CAE3653FCB5EBB86925517CB
      8AF90E5FB2F24C2BA9EACAD343DA56035952D61555F7C90878A8611E0D1EFFDD
      1378FC5532906815DF3088E80FC337FE35DDFF7D18993F6C9F7DF6391530B98C
      ACE46E6A74CF53B3FB84933018E098C220E22252B2187A25C9CC9664032E859C
      AC32985A550049352052470AE77A2330B5DAE4BBAEDE88DCB6042002120188CC
      AA84EA7E5EC4DBE77AFAAF2F6FF9A9769F62760722FE26EA6ECEA44B4DD3FB91
      44BFFAA1C3485FA48B2F1ED5F3D819CBEBA70288DA96B50E40A4F524FA64A07C
      EB244CD02C921A6D1D72E5EFB3610FB8E60E2B1D027B661AA598994BAC7EE25C
      8B79F103FBFAD4CB6CED236F5AE56723F04778C0065F7ABB2D78F8155BFAC4EB
      36F5B647DD66390BCF85A457FA5832D1F0D7F83524BFD5878C65A96DFD7EA415
      7EFC8DCD545673FE15CECFE3E31371F66393292123F9F2AC0BF1F2B889CD9312
      CAF238406A96ADC187638A6AEA2FBC61D36FBCC30652DEAA00846C15F5F435EB
      AC72DC24FBE4922B6CD693CF59FD8499B6F89997ADDFA5D7DA67679E6F5F9F4B
      3FE2F167AC70061BA95453659424197235DE1172DC9E5F0A5160994D7CFE7D7B
      19207CFA586AFA97DE6A8B3FE9671D94B6E0BD3A724133B3300E4068C86FA55F
      311C33296520C95FB229529A73CAC9C8AD1752AEFA02B3AB8FD9D44BBE1864B1
      F84EBCFBFB936CCA8D44E3773C62C32EBDC9A6E37FA2D7E4573FB4A611531DD0
      8EBCFA561B76C54D36E0C2AB91C17FCECABE1E641D93E7D898EBEEB0C157DC08
      B04020E0FCD9A25516FFDAFBF6D969E75BDA6B1F5A3E25C56F01A3AFE9452CBA
      EB699B7DE79336EBC1176DE81D8FDAF0875FB06A9D43A8D09A5B91B82475AC40
      12BD8CA67D629A8DB8E7617B9BF260EE9794D496ACB6CC0F3FC7A6F761EC04EE
      B5858F3D63F11F7E646FD16FF9E002CA9980C72CB2C2470908163FFFB6AD78FA
      2D1B07F07E06E00EBFF4368E77A8957C3AD8065F78938DBFF65EDBD46FAC354E
      9E6F85C327B9467B5F7C557228873A1561C98F70DF2903D1FC8B480D020F0DB5
      4A82A70B409C76D04F07909F9A9D477F5F4FD6B1DDF533C33DD1F0E09FEF6374
      07240A52B58784055E3DB0F8990E0147681F5289CA35C8C5328D94E5BBA6C9A9
      B6B4E2E4DAAC123E36E16EA29CA1C04A46214A09B20BD93373D93333E81FA7D0
      3457A3DC4D954B9204EFF25511074135CA9742D1951194B20E5FB29224FB7056
      3FD6272C4D986B4850731E020FDFF3F09947183CFE399C79FC8F64201E4C4220
      A294E73F04220CADEC03901C0E429EC6C15E4179EB6E80E47932923EA0E94050
      7502028DF310675C493F643D194A3AC8BA81ECA4F8BDF7DEAB004836333B52A3
      6C045476D988676A6900D1FBAF4B5BCB6B6AA9BC15968B8F0691B0485977628D
      4E6E239269FC30E51D48A77B864574092B2C9418762BF337ECCEE64E7EEA9C49
      D7EF61F04B4D748D6ED1C2641E01055E1E54F1EF1D80888D45DAACA6AE4C925E
      BFE06AFB9EB2CAA6E90B88F261FAA4D1D48DCFA40CD3D7651CCB1F7ED3367D3D
      8EF2CC3336F4CABB2CE7D34144DF33AC71C40C36C5E996FFE177B675E058CB78
      FF73FBEAEC4BAC84E8BA79D8781B7FD52D36E1CA5B2CF9E9D7AD8A4DBA94FEC9
      D46BEFB0457F78CCB6F41D6A43709A1B73D5CD669368DE2F63F323A28FBD1F00
      B9F47ACB7BE3035B72DFE3F6DD7997D886AFFABAFABFAD4BB6B25113ECCD33CE
      B349185A75CE596E35A3A6B848BE52D1F28D77DB43F8767FFA87FBAC38860859
      945F29F88AB6ABD98A1ACE483E6A060B626C21C730F2D9776DDEC7FD2C6FEE0A
      DB065555145C31D4AA91E66F6C064068FE6E5A41DFE2960701BB2B2DFDB301D6
      B1680DEF83F7B272BD2D27A378E7F05E94819EB48E29F331AB7AD13E38FA0C4B
      7CF93D6B008CAB078CB276329EFC0FBF31E3EBB632C18A3FED675BFB8FB48CB7
      3EB12944ECEF60613B90924FCDE0B136FAAA5BED4BB2C192AFE8114D5F6C3667
      85C5E0A532F0FC6BACF0C3BE56FA517F1B72DEB5B60A002FFB7C88559001364D
      5D6A4563675BF6F8D98164390022614BE96375409E5073DDCA37D9B6C40CFBFE
      AE87C9302EB26CA8B8B68AB996F1D339870095C06AC92A2B183ECA5E3CE36C1B
      4D49AD9172D9A8275FB43728217E4B096FF02D0F90BD5C696F1D7FAEF5E97DB9
      AD7DFD535B452FE49B73AFB3F857C93897D2EF589F6B1DAB92EC931BFE60AFD0
      5C5FAECCB29CEC830CD0D18235651F910BF1545EC7C4F21948044076D61B8C06
      84E8EFEF0958BA030EF7CC440616BBE652426287E17E4678823C5CD60ECF9D09
      34FC1EE2F70F3F3EE075AB3C8828DB50A6A18C43945CC990A8CF210D2BC9AE33
      BAD0BA72E54A071C94ACEAA8BC6CC53ABC8AD18772F6C462C0228F7E8702EB34
      3FDBC1DE19AB92550F8D72651DF358E19295FA1D9264971DEDCBAC47589A30D7
      90A0A8BA625BEDCF52D96AA7E0F157C9403C127553CA72CC2CD6CF59BF60FD06
      10F92D0879C42F7FF9CB531968B98C5ADD9DA45D4F0124EF51BFFB8E3ADE68B2
      911964234B68B4C730DD9E2C01305621F32465E8696D221BD9CAAA83A9D5A829
      4C69C0F0AA6693A3FCCA4845174A284F39CBD17EBDD2AFA280B07995AF458687
      78744384B3933F0540BA9BA4DDD9247BF8EB3B03973FA2143B11AE60CC21D0B4
      D282F922B90C272CC99C029BAA632441D3CC59B0D49EC45EB6CFCD7FB0B4F133
      AC8D8DA62399E6695296AD7AEF6B7BE998B36DE6032F99CD586D49EF0FB0AF2F
      B9959EC6DBF8A44F339BB5CAB23FEC670BD838EB474EB1D52FBF6BCF1D728CA5
      BEF389350F9F60DF61F3FBDDE917D8667A05B660B5557D31D0465C7CAD737A6B
      1C3A0E63AD27AD3F59C3BA675FB3CD44E185EF7E6E03E9818CBAE45AD7FF28A4
      19FFE5053464FFF0A0D54C9D6D8523C7D918CA2D6FF333AAFDE77C3BD4A66358
      95D8E76B9ABA3156C486FD3299C813975E6EABA64EC26DAECCC97A6B5EC2CD8C
      C8BB1C29926D459BAC218D267E1CE6475925CC5CC08EA27CD5C146271DA61AE8
      B0A2F48A1E5CB962AD0DB9F3317BFFF44B6DEA432FD80A7A0F6B71288CFBF02B
      1B44F9AAEF25D759E10032A4656B6DF92BEFD837975E67CB9F7BCD1A29DB6D83
      A5B4E1D3EF6CC9133A3F93AC6EC4449B72E78396FCF6C7D6306AB2D500B25F9C
      753165ADB3AC7DE22C4A83AF59FF8BAFB118D85E5534A5F3BEA4217FFB03F61D
      009FFFF900AB1932C1F59B465E77B715F71D49A6B8827332033AEEC7368F1ECB
      F662A8BDD0931BC940A48AEB440555AE647ABC363ED5BEBAEB217BFCA4B32D7D
      F018CC92626D36D76BDECBEF581DA64B9B29A58D7DEA79EB73FD2D963A640C6C
      AF02D8732BAD6CC172AB8450B101A2C19C973FB4B7CEBDC6C63EFC9235CD5B6B
      A543A7D3E3BA0D807DDC52BE186EA903C7DB4AC0EFD5CB6E82F5F58CE52F066C
      A1676FC3BEC0091ECA63C689360612FE9205F100A2F7EA562803D9199D37FCF5
      2E71421AF13DB2B722C0103DE8170EF8546A8E9E248F2E67FD18780840BC2B60
      789E43CD715FB2526F43438011F6A846123A5439513F5795145C025B35BAC07E
      A681400920565369A92260AE78FEF9E74B29F17B7A6E26E0912A09765A0071B4
      03DC6C87060343B31DBE512E355D0D07CAC35C5E1E2A5949D74AFD0ED17425C9
      2E55DD1B599227D184B99FF388EE79749B79FCD532907013BE071011E54B4327
      9A5CDC4520F2F39FFFFC7081083D924B316EBF8D7EC96320E9EB871F7EF817B0
      088630473209FD967934D95732B9BE9EE67A3A276F03E5AD62866536C27FDECC
      89878D38AB9E6CA48991FE162E880312898B09E1417CA7F41BF162D745DC41ED
      D7D72375B1BD747C58B8D1B3B87CC411BE91C2A0E2D470A5B2BA93D5131D38DA
      F3381A707E0C54DC6096BC4C78F5827ECECE57FCF508806846400274D22FCA5E
      B9C65EBAE52EF8FFCF58D6E215642694B7E4BE8719D47236F5E7A9EF8F7988A6
      E9CA54DB3A75191BF84BF62E35F86F6FBCD746DCFD987D4B86A1A6F0D671D36C
      398364CF1E7FB2A563D16A0B57D8B4FB616A9D75914DA284B5F299576DDE434F
      DB881BEEB04FB1EBAD1A319E8D77284DE607AC2F1EDA13606169031D75C36DF6
      DDC557DAE651E3AC162AEB8CE75EB4772EBDC2FAD1ECFD14BBE0F7AEBAC14633
      97B2113A6DF9B899368E06F217D7D04BA1193D8C1EC25B588E4EFDE24BCB5801
      459706BA0803DA449DBF082AC89D9289AFD602506A00943A8D590B6DC9201136
      14234833151A60D4DCCA46D85E63B0927DF7826BED4B9AC9DF02B45FD0C81E78
      CF4336F691671CD3AC76318375F46872264CB0A9AFBE6E231F7CD8BEBAE65AFB
      E6BAEBADFFCDB7D8A4C71EB74D13265A35CDEAA177C0BEBAE012CEDD7DAE0C37
      E8A6DB2DEE834FC86AB0B71D3ADAFA5F77B37D7DD58D8E953600B7CACF615A7D
      73FDED964339B08DAC60F99B1F59FF5BFE605F5E4F73FD8A5BED13CEFDE78F3C
      6793BF1964D594E8640C2525E4CD9024D44C7696001B37590559D3D017DFB297
      AFBCD9D6D25FAA02402603C2AF02588371C2EC4756F8E6B558037FF0A9D5AFA6
      1F9447E39BAC6CBB8C95E4E391BEC156F61F61DF3DF88CAD02BC2C1B82C2F264
      1BFFC45B901AE8035D7FBF7D70E303F6CECD0FD8D7B0F462193AB432C0832CB7
      0910D16C8CEC01940584EFEFAE61C148E3DCF534221B7D4F83843E8BEFEED53D
      5351731C3D066CA1E7D3596047564F5947B89F1156B6F052EB5E8AC437C53D68
      2848551F56C1ABC0236259E10463051C544ADAE58D24A756328E2601871AE42A
      D3031E5534CA2B34D640B9AA88FE461E83D9D9C840A9D7914CE9CA35CAFD6C87
      E4487A2859C9C7C3537487F3B1BC3C7CC94AFD0E31ADAE659DC79230A2E44934
      61EE8704C5B6FAA386797784ABBFB889DEDD2F8D2A65397A6F1844F8785F40E4
      30C0E41498021750BBBB718F3DF678906CE445EA797DD06CE907BBC065234CB4
      2F61A23D86AC240910C922952B00504A116BAC94A616A28CB56229C86F44FD11
      A58330B6DAB9404A0F5D56E29BED12695436A2F91195B67C46126EB487C14480
      12BE61BA33B472063D52D58C6AA4FBCF7F307AFA418CB13B4DAEE87FFB29252F
      0720CE493118C60AFC28022F78018896CC91DCF82FD16A0DAE89B3868FB585F4
      162AF3697A7A196174AA4AD7C6D9C2BE439840A6C95B4049A78881A605ABDC06
      B4106AEAFC0FBEB0781AE5A513F97A2CD21E8B97D9EAEFBEB38A3994A452532C
      6FEC588BFFEA1B68AC788A0F1B6185A3C6D8FAEFFADABC77DEB1FA654B6DFBBA
      58E63F26DA4226E1E7BDF5B6E58D186525E32658FCB7DF0516A20CCE35C7ADB3
      65FDFBDB8C4F3EB5C91F7C64B123C65A25F57B6343EB4CC2BD72DE3237293E0D
      1B604D4367D078AE4A48B24DCC46D41120C84D517EDF02107947742A0B09541D
      596C66980C3949F6888486136D94A78C321786205B70444C9F36CF967EF5BD03
      D495DF0E62DE65A0ADC7CEB708FA6BA7FCC27167EC2CC63D323FC7F2962DE03D
      0EB6096FBE6C635F79DE52460FB3BAD5CBB0E30D8EA768EA149BFAFA6B36E7BD
      776D419F0F2CB6EF77D6194BD31FBAB0A5A458E6C8D144F1DFDA828F3EB55866
      615633D91DFBFD606B465246EE9555D06B33C74CB2391F7D69635FEF632BC854
      52E7AFB00D71A9F46F2435AEB16EF92AA10EC0B517D5B4995E57032E7B1994FC
      96525AAB4F456E04FBD68DCBE36D1ECDEE312FBD6BE30193352327581DD9E736
      B9FB4586463B647A268325D487E3A7CFB359647D852A37E6531A4B2FB79AA529
      163F6092CD7EAF9F4D7CE76B9BFDCD704B9EBE04D748E648B6A0C25BB6C9C9FD
      3B5979290FF39F071001800709959D2454E301E4A7C8977417A075650BE161C1
      28B6555800D58346F859EDA9D7E141A327850B5FBAF26C2A498F684F890C3B3B
      415896F3E850994ABEE4F437DA44C955737CFEFCF90E38688E6F85205405F3B4
      022F25071C94EEF3D4072690763A56D2118C4C94C752FAEF6A944BCB2AAA51AE
      92956F944B8A5D82881A0E941194BC3C54B2BA8DE59BE5926497AAEE3E0AEE59
      9A30FF23AA6E777BFCFF4806D25D36C21B12803866561488ECC354E4219C8013
      18AD3F8734EC6A7A247753D67A8A46FB5B471E7964573642294BD9C80AF4B5E2
      E5E1CBC9CC851A5CC4C92DC705B18AD91195B53499D980898ACB4844FBD5008E
      9AED9AE4F4B2F1CA489452EA427BE978DFE08A06128149749F24BAF92E13A6F0
      D283135E5D376DA86FD29DE481EFA9F40424DD455681052F352C96CA031ADDF2
      E9BD7FE0E49D2DE5557979C8C7A3067AEB66FCC92519DF4869A10171C1062441
      EAE1EFD723A7B16D239B059B93569B7CCCC95CEA19E46B60C86F3BB6BBF2C36E
      7753D2D8CF16E7DA3679B7438135692E553120979BC1664C2D1C998EF67C7E86
      EFB14D640725B9D65A8CA4C68674ABCF4A6613D6C09D2432F87979BF6F621392
      1DEDE6726B958E53519EA3E5DA26CA4B44D5DB9992B652DE0F199324471A98A5
      50C35C13EE6D4CBA3BF747195DC9F783F2542B4CACED28D5CA87C2A904AA67AB
      2540D1BE2B1C91D22FDFDFC979316C7125B1220749C98AB403B0ED4CDCB717F1
      1E9081518F647B0DF322B2A26D21E26FACB4C62D85D6500AF095E21B5F40AFA4
      2ADF3A2BD1D2CA5C67DB4A616F95E1BB9D9F0E30A5D9D6E458AB4B679090F3D0
      B681E1CACA52EB28C8E1B83658A33CD24B8BAC9DA1C856AC7C4DD3EBD0D2DB73
      3758073334CE16B8B882DFC5F925D2771E20BCFF9AAD9249919ABB042403897B
      778C48CD7756A0B2BC81ECB21675825C26CC4B201714E37F91B4C1EA13014239
      40560118251C8F842311ADAC817CA0F3A6C1A21614074A12B3AC6603E7BD9C7F
      2BE4FBF301DA34DE47421183901580E866DBC6EFECA8E45EA944BD57AAC5C8EA
      48B65D72FC62083AAF9B88C5AF235FF17E25C1CF99776FD5CB94F40422DD0247
      247B08DB38F7149445935DC25E1C52EAEE2EBB106878065574892A4CC3F5F31C
      2A5745CAE58ECC13698E3B469566D85466A731DEB262C58A2602DD7A4D916B9E
      8392BCFCC9378A96CB607521FB99030E7A1D1980862B576928D02BE8861BE511
      3992E8D98EE9ECB11359235903589E65F52C1F874B56D2B552BFE340D65EAC5F
      B3D46608E449A2A8BAFFAB00A23FDE0D88E8CDEA4DEBCD1F4836720C687A06D9
      C825A46537D1147A88FADE4B189EF4A151D49726FB284EE674CA598B99645FC3
      106222A3FB19A2B3D1372906B53782DE558CF56FA5D1AE74B01E20696435E37E
      D8CA056C8F78B23BFAAFFA24916C441A5B5D3A5B8A22C220E20DADBCC899BF99
      C2A02277372D4994FB8FFDABCA0BD100120D14DD0D27861F861FEDA1840044CD
      4927F31ED10912B8B8874F5E24C866D7B131D46F455011930F29ED4AC155EE6A
      5BE444C7AAA6F9ACF78ABE8753636DD5F7AA04C4BFD53243E2E8B192E85053DE
      E953A1245B83EE555DB95BF5556CB6B51BADBE5C8082140953DEDBEA580815B2
      435317AF4248B1149B7236C67AB1A6B4E16FB1C68A426BDDCC66AA8D990966FD
      DE7A81088CA226A4C79D7786880C9236E1EF7742086813AB4C6C1F194BB1D106
      EF4B401A29E9916DC91FC3255E11EF12B7BBB271C9E449E7409F3BBB5324D19D
      AF07C7EA8ED76565940161CED491AD762049D222C91109BE2345520388384D2B
      D85B6D380572B0FC42DE3713EDADF565602160D0CA7B6540B11390E1C0F89C9F
      972D2FDFDFA0F38390627511BD27F4B7AC9EFE0582962D5B2457A2E307EC113D
      94F4899B6991DD2A332B2D65083E02FEAD9B19D0AB95440D99266FBF85EB257C
      ACA6F75303794012EFCD083EA2D3EFC0A36D0B7A615B51292EE33DF0EAE47755
      D6ABE7B8658C550B80225323B5E36A060125B72E1334816B3300D589A360DB26
      32BA5249D4F00739D556A48FF9FD759C47128D76DE53A30009A55D2927EB5ED3
      7FF2C5718669DE273EA8B63AF0D0E5F85301245C7A0A53E59DE5422440EB5151
      226221EB7D38041E5A61555C0F1AE1D90DDF27F5602176A7024BED0D5A7CEC86
      FF54AA527F03D0708C2A01871AE3EC3FCA381A25B50E01A80601D92D1A04FCFA
      EBAF378A5925E040BF2A8FD25436E09141BF3795CF9D00A2A4483414A85E87A7
      E72AEB08C99184673BE41EA8C1C0A1ACEF5872107C9525355DCD775CCD921194
      2F5949D7CA37CBFF838FD5ABFE93C0C3EDED3F862E7F8DAF75C3CCF29988DEF4
      AF2207A183398C6CE42490F55C652394B5EE46B3FE49CA5A6FC271FE9C41C4C1
      30B32650139C03602CA7A9BE0EEFAA14A6DBB338D9F9A47BC5FCDB46E647D468
      5769AB8634B14EFA5AF21E8908358AFEAB019D6D4A2D23D2C82E1B51D3DD97AF
      BC17890025729338A5CC70BD53FFAEC8C3838A6C317D033E9CA5A8772240F0CD
      3C7F836BA3D77FE17E4A185C3C70789F132FFCE82236677F18D9109D23958C79
      7EE8C3384B5ABFD41F51A4C546E4FCA0013595189CBD299BB3FC3AB4F9C8B14D
      51A332957A34AF9AF0955604AF2537BEC0914F064F52858DCCBFB0D9754A067D
      3B1B0A8E796EE16C172C363E563B1BA73CE4B7E1572E6FEFB636091A929D48B7
      AA09973C32952679CB237228131F69588955244145C992D4302857CB7C873C3A
      24ECD84446D5023140428B6D9863E96BF5883436224FD202C875B92246CE5157
      29908D360057B94F4AFD35184770F2F244DC727574B6B07856288216C8CAE7DB
      7D0C1BAFAB1716C930DD06249B5EE647DAF116696E661EA3BE92EF43B812AF15
      1DAB3E6E420957C72BE563FFAAE3F6AB01B1441DA7441FEB6AC96C9C9911228F
      EA6BC84B4436C26EE96356C4FD31785FB2B09590265E245A00A8F3DA90D52A5E
      250219BDFA8FF5B95484059C7A95F3A40CBD640C56C7756F04789B3907F27E69
      E4BAEBE79AB9EEAD88476EABA324CADA26F062B5E322A925E97F7F5FA894DB75
      6F44EC5AA39BE32AB5BA7E8D1AECBC46EEE41EE79DBACB2CC220D15D133C5086
      0EE6B47C8FC3ABE12AE3F019869E570F207A8E3D48847BA11E3054A550F9DB6B
      57F1FC3B924E043CD4E3707A552A9F53016995522EA5F54626C81D70207AB805
      56D5A60F3FFC7023C3D22504C2859A798B00473AC1708A320EF638D7E7107068
      AE83D2BE860257AAD7119575F8467978B6438D72C9B0AB51FE024B0E82B7B0C4
      B21245F7385674C9CA0F08BA66B9D69FB2EFFFCD00246A5A5D6F564D1ABD79D5
      DD547F531DEE2040E4D8503672232C838768B2BF40E3E8036647BE83073D02B0
      9806E577214CAD55A8FBAE27234965B25D089E4FB6520CED4DA5AD4A4A5B9B41
      FC6A06713443E2FA244406AEBC452DB29D6C440265DB6509295A9D9A5E0213F5
      4CA28712C33A5BBAC1BCE94B58C431EC5FECA3192F9DE26F643F5BA207434010
      4D0F8E6EB647672CD1BD116721FB232BB0C30D0044CB0388EC3FB509CA7BA39E
      CDA8498E716C183228AADFCAF712C56EAF87A54204BA0DCB542D6D28FA1E6777
      EBEC3CF1E360E3D7C6A80D534B1B69B0984F60B56158D58EC56C332AB47A6DD2
      BFA144AB3901F990C86849CE77B25BD5ABA4E0C520D3ABDCF3E4D0A7A5AF37B2
      C9EADFF433FABA04236B99FD70A64780491340D8E57617A9B17797C1ED404C00
      383AF0BE706E8B7261E4F85AF8376DA6E1A58D552BBC210B6C24972F0F0C193F
      E9550E8312759489973E96174B774BDFEB6C6C014B67060558C89F43D1B4269F
      755C02781D93D60E204650E2661364A426DBDD08883820E1BAB86BA34CF34796
      3F4EE76902586AC97D523FEBEF07993EC9EBDCF99DEB15B0D1F2A0E23CC71550
      B0A27B813E43F08AB9BED9EDB5AB7CBFCE0B244603414F731A3D9578C3ECA9F0
      FC564F9A54020F1FFCF93E4678D8CF078EDE9B23124C7602289D11F070BE1CEC
      1BAA6A485EBD9D3295D4C49B29552968ADD3D801A5AA2D83060DAAFCF2CB2FCB
      29579530EB5620C55CC8425904C5E900460A017022652B57AA92CD6C24E3D801
      3842BD0E3FDBE11BE5E1D90E59CFBEC97A9AF507D6752C39087A9695E63BF68C
      04EE7F54B2FA53C1E36F9A8174D3580FF74574303D6623F446EE8A6423AF83CC
      9F71A2BF0728C67221660224A2FCAEA1479240669206532B9B067C1EAB8889F6
      3234632A40FF2A1A555BD1CEAF252BA9A779D5C845F6E52D8189031228BFAEBC
      2500918CB25E15717857443F47E25358FFB9A214AFB91516720C7B9644B33AF4
      B96EFA9D01C88F297DBADFD1D320A36799C8A95000E24B6D44D05D75607E5EBD
      106FE0A40C445177034376AD94357CE6B18DB284A2D61F1CE5D84C64E52A2B4F
      4A4E0209BFE4DB2D80701E23924D47195772E6FAD87B776C931F07E0A1614735
      F99DED2C253801873EF720A1CFF5B1FECD8386FEAD8B122A1FF288CC84DB4C55
      CA90736484DEE9645FBA11B80C0388A270651E323B52F92670CC0B8E4F4B7E28
      5ADE6DD15B1F073F13BC5F497448BE5C80E0AD64BB8E2F623FEC0CA2E41112B5
      6402A5485CEF5FBD2ABD7781A000D19925454CC2BA9B4372321D9488548EF4EF
      D779743BA3A91F5FFE38F5BDF205D76AE65CE977E978F5F39A2F52F9D3592E47
      0CA1FCF1EBBCB915219174977D84ED12A201A44B04B187F2533883F8313009CF
      6B84A7C77D6F236C15ABCCC303872F4DF9B98DB0C0A1AF44E89956635CE56E0D
      FE0938F87E84A237CBAF4881A7328E36651C94AA9AA592CBDE52077854B3DF6C
      A6545589DA7839E57555470A008A5CCA5259921F21FB10AB2A91A0B70B382293
      E4123FECCA38041C1A0A8CE85845671DD18D72CD76C87A5683819224399B7502
      4B0E826259494D57B2247F76C92A3A3BF91FCF40FC1FEC81E2EB4144F5B77036
      22BB44DF1B399DDEC8C5F4466E84F27B3F8DA4E7116C7C0F20F91A201906904C
      22239943296B190DF618585B0970A7651C9FC5C5CA831A5CC86062C9B7DF7EBB
      918C64D3E8D1A3B740979391551D80D2C892294B8B181230B644B17354E048AF
      C40937EA068AA4AB8EB9159E2709CB1384EAA2AE4EAAE541C4DFD03E33F19A5C
      D153EEE121C53005D24FC9463F243B03105FF3F58D7DE7C31C2941E977C9A35A
      1B8622596D14029026E8BDF2BAF60022F0D066D1B5C9BAA83730F3E960CAB893
      46BC8AE1729556453EBCF47545E22A5AC8918FC285DB64256BA18D37984656AF
      26B00FEDB21105543C68F86C435F0F0388039D6EE4B83D80B819819D00884A41
      7E53741B65C8F25812311E40B4A17A80D179F00012986701421C8FF722F79FEB
      38758CD14B53D9C192F5ADCC77A9A445C0C231949C6FBCBE1E9CE31DEC94C3C7
      A372500440A241E4A70248E06608E8083C941173CC5A020FE798ACD74833DC79
      BCB3B691A9A88FA4E50144A52B5FBE0AF727A29952DE3BBCEB35924DF5346F11
      7DFDA23390F094B89718097B04F912555809D77B8B476719A2DF0A30FCF0B1CA
      DA916A84C6013AA47A21755CB1AA983B137088F5D9047834502AAF1315978AC7
      6640A3927255D9C71F7F5C4C85444AB9B9EC579994A6D2D8AF9259096420F132
      79122557C28711A3A71D8023A29CAB8C43C0E18702D5EB9082EE70567F961AE5
      6FB3C2B31D17F3B90603258678104BBD6639088659567F56C9EA7F0D40F4877B
      903DF10387BE3712CE467EC741AB37726284A97515F5C03B38D98FC1D67A154A
      DB475C987E5C885180C554D2C0F900C772B29018B29104E8BFA96428595CB85C
      52C302D85CC5AFBDF65AB9524AEA929B870F1F5E4DE3BD163E768338D934DD5B
      C8465AD527117B4B0D3195B70426DEAB5D354FDD78DE6E32C2F9EE0216A5BABE
      192F70F1228E1E387CC9CBD75FBBA3068741255A5E41A58CB0164F4FF461FFEF
      020E0F1ADE8A361A400406DA303C80A80FD24679C2671EAE661E89D25D44EA3C
      B8037FF2766D9264193FAC1D374D6DA6DA2C45DC94AC859F4E96E1A936502791
      A721B8088884C1449BB340240C241E4C94B5B8CC25A4E4DA9D35E9CE00C48387
      8BB0392E357D9D4F7D6403F51B7117B80860F47D6CA26E0648D469B904CAEC4A
      60C871F9E1397DAE63F4CB7BD9875F0512EA03B8DE8000595953E463BD46CF09
      EDA0E7A4AF47B4D0743DFC72D961E43AF5F41ABE8E1E34BAC0435745146731A6
      22CB31A8226C2A0F240E4C22198807909E58871E08A30164678EA23D35C57D86
      E269F6E1BE46B83CE53FF693E161BF711F08EA795595413D8EC8E0B16B8A475C
      51051C6EF04F641C66CDDAD418670E4DEAB88E8A0B686C657EA3EA8B2FBEA840
      35A30C57C02202D97CF6A31C82DC4C1C5BD3F838997255022578193CB90972A4
      9DD610143BED2A091FAAC7C15EA76C4392EB1E383410A86972CD75A85CA5A140
      89208A9EAB89F270A3FC1A3ED76CC7C9ACC359BE51FE2B3E56D6B103CB8ACFFF
      A47E4777BD91BF590612FEE37F6636723427F7544EF20534946E20CDBB97D2D6
      3300C95BA47E9F7341BE27DB180B584C07E117C06658C1C8BFB4B5D6C3D84AA1
      F99E013558F4DF7C86148BF02429254AA810071B201117BB560D2F6525BC36AB
      9E29DB48E4529C02B038DDEA936838515189B212452ABEB1A61BD0CF9784DD13
      7D992BDC805766A294F9C728C2FEC1F060D293A09B6793F4F42A269800C34FC9
      EF0022341B9581681372B2F0910CA40D5692C0A30B40000F0188364DBFC92AF2
      0DCA2D3476C34B0AC0A1A5CD529B6A2BD3F1020FB9F7093CF4B9242EDCC61B91
      B5D0AB40C1F741F4B90790E857958EB476664DBA33000980E087E37200C2D2F1
      69F90DD865261E60C42CD2E61999BFD131E85C04E0A1AC88DE91CB24041E0150
      0659913728DAD1A8C883463873EACAAC42730DDDCD067900D1E61F0691AEF71D
      3A167F4CEEDA4596BE4F3C0267551F0121B1A41CD536725F3810E9063C1C9044
      328F6800F9238142322D95189571F9E53E0F1114A26542142845DFFFD1DF1F66
      4C85E5D2C30D71DF08F722863ED35079DAEB54A9FF29C088CC6FB8190E010744
      1B8D01B4031A6D4C8CB7A88FAAE13F594E88F5293740AA1B15641BA518E61551
      FDC82398CDA1BF910170A4021C49AC68E058EDAD65BD626E147048BFAA3BE090
      148918561A0A9408A2B28E07596A94CB765642887EB643BEE57E30F02F6A94FF
      5853FD7F0540C2D9887F7342C3C80AF746C24C2DD5F00ED5DC0835C1B3A0B25D
      C6C9BF0DF47E84ACE4252EC807F449BE212B194A5A3801B098C9C8FF42EA8C2B
      E0544B16454092CCC7E9789564D390CF6328B190DE49C9EBAFBFBE911B601352
      C95B687AD5606A550757BB41A266441D4E2E4583402A6F49BF46379780046071
      375CC4B3D8472F8EA9E101C54BCC876F62DDB402111F157527A9E21BF2DDA906
      8785DB7606204D30930420819DA878F941EDDEAD0880E84B01232C2861A9ACE3
      320EF53E22E0E1CA15DA6CFDE6A328BD6B538C5088DD06190086CB300414CA52
      54E367B3D0F098DC12C5C06996C56D64B31560080C5C39485A4991B296CF32FC
      6BE0B9FE435612F41F82124F57A9E7274C26EF38DD1F44D92AD3748147042C7C
      D6D175CCA18DD7D353DD06EC4A7941194A802C505356A13294DBB4759C91F315
      FDEAB28C6ECA7061F65077DA6B5D3A6B1A097144B2A0F4E441C08385CFA6A25F
      7D694ABD9D70B6A5E3D1B188C426C0ECA984D505BCA101DA1DCAA951EE7C028B
      EE5677F6096190889EFC8EB6B00E9358C23E1B61AAADCF3AFC9478C4F14FCFAB
      CB34D4EFD4F3AC4A83AC2224A7AE3215598763541148B6F0DA4475420166ADFA
      A9127955599CC678E9830F3E5848B0AA91826C02D80CB28C54825801C77A651C
      EC452EE390CCBA6C657DC611A1E386330E2F7C2866954A553EE3F0C0A126B918
      562FB2D4EB103D5713E5E7B3C28D723FDB11F896870DA0FE0A59471850FE6E00
      C475F4FF1844C24C2DD5F0DCDC08EB48652300C905CC905C4B56720F59C993C8
      A3BC0E987CC285EA079361C441071D3489AC641669E4222EE8721A576BE995C4
      D12B492233490340B2FEBFF6CE2D46CFEA3AC3522E73857AD35B2EAA5E54AA8A
      5AA9AA54B5A2955A55AD5451252DAD9A286942A290A0C44002E40081D0244008
      180389C399402040203621181FC78C8D4FF880ED39CF78C6733E783C3E607CC8
      A1E9F36CEFF5B3E7F3FFCF3F3E90D8C4484BFFCC3F3366E6FBBEBDDFB5DEF75D
      6B534EF65295D8DD9EE82DDC121394A3FB7848667C58A84612BDE5DC2D78CF1A
      BDE548794F0CB369289F4B320B486206578C970F7D44F0B064361BAA72B1D52E
      F8A8524ADDA43C59312DBE4AE362F5F300903809CE8DA7A68300205A41DD304A
      0091D611304A00890D2336CEDA4658CBB0D501DE059238A74190103CFCFC1D85
      6EC0C173DB8FB16B27915AE714349520A1BE11AF259094B4D62960924566C5E6
      52448F4DB9590592DCD0FCFD25882481998DD5A8071EB54D35D35C1A1162E30D
      CA2B0D096894FD678A2CAE6108FFFECEF137F87B9776D4B073D746709008247A
      AB02200122F30590A840FD5DC228E0BFE935F13AD4FEFE5CA9A56A2D0BEA275F
      DF3DD2A0FABBCDA25F1B004875D65C1550E2D90FB1BBACDAE378D8463D1AAEB1
      7056091ED1299EC78BA431471A6742DB003C52B511C2386B3E59711D99A46ECA
      74DC694F4EF5186EE6540DA16F0C9090F6DAFC67C58148EEA14E3BB4E2F2F966
      E755792A2089EDFAA0AA8A3E8E10C61D7AD80838EC24B7E208E05024B7AF4387
      9573ACB4E746D5114279D9DBF19E82C76FC585753A9EE27954234E88F402598D
      FCB1E51A20F2377086FF0C905C09907C9A1B741D60722B14D7DD34DF2C8667FC
      2137F105B49297018AE554252D00C77A28ADCD1E6425BD4507680755490F377C
      0F00B3D72166F8B5C719A3EC8881FDFAB86D04C2DB7D04E0388A70A65DCF099A
      BA306C1C4A23530413749354998483CB07D76A24B21E677251B5A4F70495A83E
      C2C915E27B6450556B705991C430B7D053E2DC925227A94711541769E9F089D1
      2B610D8EC63A2B17BF563D27A1516619348522B44E1F233985D8A9156B0D33E7
      5AE77CBDE38079AFD9D89766478F36FBF9B91A35CB39498DFF9D77E9A07A6013
      1A42A3D766B39CCA511CF50E2F4BE27B9D88EB92C685649D28AA9DF4B5069311
      9AD964AB3A5AA97954C1A07A1C4249C3EA3833AA1A46004569B1ADAE91A8E663
      FE548044E88FF1EADA8B83E6048D988BA720EE5A0D0BAE4DC6EA1BD0D5C71D87
      E421764EC5B58F8CB53FC31E30CD591C139C983A0A4D3544CB403FFB482FBA6A
      1734551BFBC94E4F03C45DB5552BAE3D1C8E1CB1E270C4BAC30EE7011C1EF2A4
      386E17B9FD1CF71352559E14E8181281E313C49584A3482E27D43A1C82181DE5
      E5381293EF7322949F9714563360E18F0F4A2B44762F88735A74124435A2AFD9
      0BF897C4DF032457101FA13AB99A1B760340723B55C93DDCC4C5DCCC27A94A9E
      A32A590A58BC4A86B09A1BDE8AE8BE91EA632BA2D75BF0976DBCDFC528953E1E
      900100668871CA630F3CF0C0A407D8332D73C687CAAA24666F99AD90B9A4E644
      4A60C1E4D78E97B73AD1C1953BDD13D5E5A15770AA2913B212B13A892CA97C8D
      6A255C22A54DB8EC8A8F0CAC747A95E01107DD5441A4EA7829457B33CA34A534
      877D2482496C14A758251B9CD67684F78DF71A401A0158BCDFAC43F96C0124B4
      9146AFBF6B00299D5CC9764DA5968E67CDDA43B31338AB36F27AF3A492D30F47
      5F333A6AD6414CD894B52A97B3A6E63ABDAFAC32AA0012EB4440890A3F1B5912
      2B909D54C9A22F05ED5043292A9BFE60178E63E9B75BDC89B84788C3ACEF8368
      1CFB716C4E791687C7C7526D0CE2F6ECD790630F0780D1C6804393CFED50576F
      323123551C795655EAE19803387454794687D3723DE0C90EF2273270386EFD4E
      428D43AAEA738415C77F64E0B09B5CBA4A87954D816A1D26D59710EF89507E41
      024893BE112F94D588BE662FA017F2CF08AD6BFF08887C88F83840F2392A939B
      3EF8C10F7E839B793737F541B492C7B0023F0B48BCC40DFF3919C44AB8CAB574
      82BE4127E81640640719C62E4AD34E68AF1EB4927EDE1F84E71C452B99C069A1
      BF3B89EE505C8771631C512BA12271648A0E0DCF3076785A7A5023DBD1C5E583
      9CCBE6DA1CAED04B0AEBE02C1757E9EA1264EA5985E390AC921F0EDB62D8871B
      8995B583B410DB4BAB6F682BB306CFE5F10F7EDFBB404573200D80B54C326796
      9161BA59B9694505121C7DCDF1A38ED2A0FA984F0570B600D288EAAA9E1B51CD
      CC6B954F93111ACD00AAE9D7E798F29C28A2261548F491A4418B023A9461BA37
      F444A48390EA8CE029DF6BD48754F635D53378C473574FC3A84747558F7C8DA4
      296CF3C594DB947885DDB61C3F94CF170FF7945DE2A9D250D3702DDAF067A5C1
      7AD51C734C8ACA31239EFA171371A938124D65C738D5461A6E4892B9079AAAC7
      B3C79D8C8BDEF116EF6D133860359C8E9B9AFFAA5DE3757A38040E1B009764E0
      F0585981C3D3017555397E44E0B08B5C8DE3E38454D5BF1055E0D0A1FA878423
      A1C29E6B927DDAE3489A25F3173480D40192E862B71A5124F202DA5D7929A175
      CD592F7F4BC80FFE3B40F23F19486E84E2BA15E1FD2EE8ADFBE1241F819B7C8A
      8CE1054AD1446F2178B5C05FAEE701D90CB5B58DD95B8E4A694788D78EB787EC
      C311CBC3D75C73CD189DEE9396B6769B7AD83D15C9DBB834DE71B6BF6353A232
      099A2B9F739C443AAA14CF3EAE9D13E0C157D25AEA26E5A4E072D194031FCBDE
      9300950091D2B6586F9A70691B769107C77CC4512708EEE51C2F1D5C092CD2F8
      8CD9F1EE103A4F633B79225B6DD3C8DDD3A983DA6C5710299AF30491E8356846
      3135FBFAD90248C333B3EB6CDCF5A6BFBED715CE5CC704CC0740CAAAA30490E8
      8FA8776FCBF74E7153E51121516D5445ED7210613DFDA2048A723C5029804792
      14D494CF7B5959081A619FB7A2CF76DB2488E7B1E956FF02C6AF5887A94BDCBE
      0D7ABD8EE9B064BD1E81A23A4C586978DAE93456DC4968AA71A67C8F001A8324
      8D03681A7D5A71A93C3A58F769A43A3AEA36C0648B3D1C4C0E4F565CE754559B
      FF1AF47068C5F57C0E1B001F27ECE358487C9BB899D055E5C45CC5F10FE73DEC
      725E6558A2E21038DCEFA2AFE3B75E759C17227A33D4ABF68C5446A1549D5A76
      576A594BE35008274DCA0F7AF1B5B77D981BFAB10F7CE00357A3995C0F90DC42
      55F22DE8ADFBA0B77E40E6F024CD3C3F86DE5A82E8FE2A36BC553C38AD94A9D2
      5B6F4A6FD1EDDE06A07401268E21E87788233ACAE8D5575F6DB7E9140FE17E32
      9998BF65639103D40493343AC5B3DCED2F11503CFC4A20C93D26A959D1299EBA
      412CB94B6B70BD3E931240FC7ACCEC8A6EF872E05B55742CE775A52A8531E6C6
      E183874E463E50AB5CFCE526510518E74145CCB6DA9E1CB71123376A1DD5D12D
      1E427283F1DBD58DAB613F40237136BFDF6C838F0C7E56B35E311A462AAFDADB
      508256B37FBF190036FA7A0047A346D1F8BDAAD6D8D222EBD7E6A2B0D2989D5C
      55367AAD35A23A3A25D35E6575E11899344E865952D5A83AA466D1504C4F9E21
      42F38BD97255B02881A35285247A18BA586AD8751336FB6ACF463AE94F7B3E55
      C6DB267B88E2330AE2D870A7B0E18EE3A41AA5537C88F53C00EBE038A41E1908
      92C736CC36BBA0A99230AEA30AFA3B35FF011CC98A0B70CCB787C329B94F130E
      3B14383CDCC931EB1E2BEBB45CE7567D9470FC88C9AF49B07B987B990C8BBAAF
      15473DE0A8691D7CFDAC7B3B9AEDCD171480D46D5E79571F29AB91B2013168AD
      3FCD37C196FE7FF2E6A891109FA62A5900BDF51580E476B492BB79101EA42A79
      8CAAE45944F7446FC16BAEA08BB405D0B02AD902906C67CED62E8ED93523E941
      2FD94316B217BD6498076DECBAEBAE4B1497C2BBAE0DF5121D1C8E3840983B0A
      DD75CCA37815E0B508F2E0A71E13C0A426C26B271448627C821457239A2B1AA0
      2CE7C3D9552E44DF0B2AA07C2D278C1ED83FC358F0937170E64012F5CB131ACB
      09C4824AB54A71F85F1961B52D298E1A375E38A5522F42B2CECE7D4E4AB30D3A
      80A9D16B3D61B7760604BF4F09207E1C1B779808420BAA4E7FAD6DD495238FAB
      FFBF66BFFF6F03400244EA6920CD00241286EAB9189198CC30C4D2A82774975A
      4569AB4D55F3140EA9C99395453D90F0998EA1A656E656192657AE0BD7870997
      C350D51A5D436A1A3AA848D2A4A714C3A5A7DEA1C2B0D9EF1015C60119037ABE
      A6B0EB4FDC74D34D267F82C65EC021758B537174B1CEDB611F7643656BF94F33
      AAA0B9379358D61C55F3B0E2DAC3A115379AFF040EADB81EEC64E7F8FF125F25
      1610F671387A443BAE1DE4BAAA6451D476FF88088D23A8AAB2E270FF33993EED
      2188A70312173485D5E8978F8B962FA0BC5F390EC58B1D6E2D6F8237C39BE2CD
      F10847471BFF2740F24980E41A8024E8AD3B0192453C208F50963E458362B8B7
      5E0324D6082400C726E92DE66CBD45D6D206987452A5F492B5F453DAEEA5C41D
      E6F0ABD11B6EB86182075517D73402FC0C02FC41053A282EAB931AD56569EDE8
      6717400692D4FD6E292E98446592FB4D4EE935896A252A91588C91ADC5028DD7
      AA68BF7F1F23A9734446588AF651D584785F525D521D4EC43DF1CEE13441F764
      3006A588E3798E9520524E166E061CF3AD407EF70072B237E54CE3740124006D
      BE1548230DA4A4B0CAF36CAA94569A324D655AD528A29A986612F2ACC863CE4B
      234869A74DA031C1B109C4E4F8C9B14061B10DD0C88EC55A8F86BA619CB31127
      FBB9560234D41E9D20E1045C2DF71E30071B7088C39A0ED0AFB15F3725899D62
      F8E8673FFBD9619D961868D4357A79F59CF17674CFDDC44E00643BAEAA546DA0
      7F4A5325615C2BAE8E2A588BBA8E2A3AC79B5971EF66CFB99DF832F105C2F339
      3CDCE98ABC27392DF72FF25EA5ABAA0A1C3603862DF777567154F7E3DF591F48
      33040C0AABD9F71540E2458D712831572B80C49BE14D5123B15353B1DD967FED
      70EA24416F5D07BD7573A6B7164A6F51A63E21BD4523D04F69087A956C641560
      A17B6B036352B630676B3B40B28BB9FEED804A17198D0FE51E28AEBD70A7437C
      CF281338C77978E558F7D9BD6A75E2EC1C47A89029BD03377BD4B93A01266652
      8E86563731C3D2222CCD15272B9A81E52AA5A69DC4098BB1204368F4B51422CB
      8F13F54526182190948E96C8200344DC44DC50CA2AE4885372DF3E40F87A6A24
      004920521F409A65E8CDBE7E360092AA858202AB1E3E146EB4B928AC33058EF8
      B9B9CEAF986BCE59154082CAAA6A4231CD57E15CD7D36147C5433B8556E6FD4C
      F734BFC6E7F16A551A95695951D4740AC6CE7BA46E2D72EF45091A659521704C
      8CF14C12E3A327E74E4945C5246C750C2B8DFC8CAB17FE9A6AFDD70E3BD532CF
      3AF12CF1345244D0002C8E51E93B8628D96EA5919949B51FA34B9A49A55E0973
      30CC3A54BFECA7A230D913343AAC34705A0A1A3B58ABDB783F0D368CFE0D692A
      F50DCC371E1DFBBAA3468AE6BF558046B587A3B4E23A6EA45E0FC7274D5E7312
      EBA45CF722F724F726F7286978CD4197106ABCE72570D45A2E9A6DD017C2D70B
      10A9CED50A20F16678531CD2782961D38DA29476B8A0B7FE2DD35B9FA22AF902
      55C997A5B7746FD1391AEEAD1F918DBC88CFFB6788682BC852D60016EBD04A36
      6905467CDB2198305EBE9D8FBB78687B2C8FED78A73C1EE2411DA16219C31A6C
      335272735162273081DE4A8E2EAA94A308F2DA0ACDA84E00301E85995C5D0E79
      24EB4A653B1958E27E595CFFA728EFC78AF1F699F8AAB8A8306F85120E2F2981
      E8439116888C2FC0A79CE1158BBE0494B24765F6C7FB1A9E2BEFA663F5E28615
      3D2CE554D4527CAF37B2BC1E05556EBA8DDC6555BEBED1F735B3B14AF1CCF53D
      CDFEFFD52391CBBE07AF43A39E9C7AD377675D8BFC7B254713A050BED6D3AFCA
      C3924AAD22EE63A231337D59F61E35B297C773618262C5E03314DF1B73A5CAE7
      2D9ECDA0A1828AF235AA0B292943ABAD430B754D29820B183AA7B4DC7A242C91
      E8298F85756A04FAC601A862BBC3F7A1674C404D8D010EC380C42080D1CFFAEB
      25E1EBA6F2E840C76CCB95C60E9C97DBA0AEDEF4FC0D292A34D034D8503715C9
      636B754615FAE9EA622A6E3D2BEE93EC27F67068C5B587E356422B6EF470081C
      4EC9B573DC5301050ECF23B71DC1BD491D37804393501CF274DE541C174C0572
      26C0D50048BC09DE0C3512ADBF36DBE862D0CDA03815F49625E43F10FF4A486F
      7D22D35B3790797C1DF7D69D94AF8B78B01EE6017B8A07ED79AA92A574B22F23
      6B59851EF23A0FEB0628AC042676BB3BCC11FFB89549270F74375F73DCC100C0
      3308B00CC3B18E314A453E768A5E9369A605CFB0200E66878882DF3B804A7275
      39972B73BCBA4AD2C4E038C7C46E5A17A10D8C86D4576471FCCC6FEC3F89052C
      A8082271367CD9E0E8FBE1042B47B0544F612BDD31416D54BFA7EC61898EFAAA
      E7BFDCA88253AF6E7E8D36E01278E6FAB8FCF9F9FECCB9FCBE7ABF7F755AEC7C
      7FC77A96D87A2689F2BD464EA7008EB9BE1E67E0847E11F46854B7A151C4B314
      EE289F2113182B662B671D87F14CFA5C4A43F9ECE609B7BFB2BA3049C2021F0D
      7DBFA037E30400719C38A6B351C030C122A93ACCF71DE2F3041A681AFB38D96F
      129BFD18E38A46008B41D6583F15451F00D24DF5D14132D766C3B09586A061A5
      E1697F0E351434B4E096DDE27178539CFC97416345A6A96246D512F6097B38E6
      B2E2567B38643DFE8AB0E5C024F652C2E91A02877B937B54091C357DC3BDED4C
      F6C4F7FA67CE5B0AEB6CFEF00A9084634B8FB41CA222543423AA9354E92D3303
      3DD77AAFC3BDF519B28FEBA84ABE4655F24DAA927B286B17436F3D0E983C0B98
      BC0898BC4265B21CDE74350F672B60F20695C96628ADAD643C3B008A5D9C42D6
      06987420B8774B759115F503268AF043E82BA380CEF8B5D75E3B89453809F12C
      900308F02E96B79DFE4979AE05D10575DC12DEF95C6668868B5031D1EAC4F3DF
      A5BD6201BB78E5910B2ED9AC2F810A5FFB0DEF2750090B71B573DE0D21B2CC10
      EB63EC4A9CE41607EF84DD38ECC5F17D5185949DC6BE575632F584FED2C9533D
      5A38516A64E0A71BF5ACA7EFD57BE591A9D5FF47A3F11CA513AEAC16EAB99AAA
      D7A7FA795941D413ACABB454957A8A7E8B788D196F61EEC8CFD12C81DBE7CC67
      CEAA58B0705488E129A05616F664C4D810AB0B9323FBA800079F6D3BC18F6617
      E3DBF65AA967B816704ECD3CF4D043D374844F310C750267E41855C588A79192
      90F54351F541297793B475B2DE744DEE02547690A86D8329486278B8A83C7BC3
      4E71478CE8A41234A25B3C0F365C55A7DA286754958EAA85EC155A713DCCE98B
      843D1C1F23ECE1D0057A3911CD7F4ED0704AAEC061325B02C7AC3E8EF315342E
      0817D6D900489D9128525B0249A99304905CC2FBD25BDE506FAC37587A4BEFB5
      563A9D11D25BFF4D486F7D5E7A8BAAE41B5425DFE1C17B8007F0111EC4A77920
      5F209B598A8B6B19E2DB0A329C161EDA7594C91BC88C36F3806FC5DDB19D077F
      2760B29B2379DBE168BB00955E2604EF0150B4110E61131EE1E331DE9FBCFEFA
      EBCDB014020FD0197B0831FEB01DB376C2B3A88E9AA1B1D82CED1DADE2D9EFBF
      40544CD91C595D38BC92CBCBACAFB40E9B1D86BB250F847423486012B3BCAA96
      E218815D6E34824A498785ADD8CAC34D2B32D972738B8DAB2AEE97E26BFC5CD5
      4936CB45C6FF63AECFEB6DB0F52CA7EFD57B8D2A84F8FF554FB4ACFE1E738DF1
      684C29BE6B8F2DC77B94FA58D98CD7A889D57B1C3D4AB9728D796FB55741221C
      513E63262F0E25F42804ABE47CBE4EEAC5C01DF50B1D88BAA4D42F040B0F6232
      39E2E323244A87A1A9A4736DD23DA035FEB1C71E9BE640A604189853C65943A3
      D0C1C3246883BCF69388F5516174431B775E75D5556D0088A061A35F1A2D0233
      501B6658AFD22841A3A4A8A83682A20A3755748C3B6AC419553AAAAA56DCCFF0
      9E3D1C1F22B4E24A8FBB8FE80695ED881E0E81230E7632A9BDE080E37DA581CC
      0536751A114B9DA411BDA5E73ADC5B3A23FE9A50F092BFBC527A8B9E92CFF1C0
      7D1130F93A60F26D1EC48580C962C0E40968AE6711DF5EA4E3FD65329D65F8C6
      57C2B1B6600B6E051C36902D6DA23A7993877FBB3D265A837187B423C477022C
      DD54287D7C5DDDC4F109C3505F63E8291394E9530C7C9CBEE38E3B6610E4B525
      26ED84C5788478C732DF72DFD10CDA85A501589027E08F5DB8A95A71416771DE
      6A45FA200995B9724942BD02A662A6C2A69B431E165913EC0354CAACB4B41B87
      23CC0D2836A70092EA50C9AAEE728A4B2C1FCC559E1257024ABD513055DE7EAE
      8DB69ECDF95CBE57825B534B7561A10E606934232DAE6375FE53A3CFEB814769
      932D1285D45FE1016ABE06159A758A5AA39ECF4B3C4736EC6949F7D9F21C1DFB
      9D744641BD9EA0523E6ED7B74D7CF663E84024E9B191EF6D2A0D9FDD83D0B607
      3C528121A6D3DAE071304EB226C6A9DCC7A08347580B43504FF65D0DF0DE1E74
      C45E8C29DD245F1D24596D00CB2E12B064BB65CD6C8501480E2A8F87D541C53A
      ACF56C94E345AC342AA0513AA9B4E00A1ACEA7F20C0EFB371613768CAB6F3815
      5747D502422BEE47087B384C384D3C757DDAC3E13ED2A887E382058EDF1B0039
      45F4993D63AB11BD55756F29745D46C85F5E4E58969A657C1420F90C712D0FE2
      570093DBE14DBF0B983C4075F2089AC95300CA7354272F4175BD0CD5B50CAA6B
      052E8F1644F856B2A3F5541C9B0008A92E4F524CBA098BA38D8CAB8305D20D68
      F4B298FAE170F792590D9981112EAE094AF5294067FAE69B6FDE8F866289AF7E
      9240452BA3958ADDF1542B47CDF60416CF397171DBDCE842B7C1916CF197500D
      BF9462E035692B6692363B1A72D8998EA8353B7A767C3867FC38221FC45313EB
      4373090AAC0A3AD12859BAC5CA4DB00A10D50AA591C32CDEAF1EF0D5CCD6DC0C
      904EF7EBD5FF5FB5A3BAD9DF177D3D8D5C4D25C514F452F95A7C7DD6FDF23EC5
      A149E5391899E64C62B6910F53FB951545F45B78B892952EAE41C79D9FF079F2
      B9E2F93A4E12E37396ECB46A1652514E69908AA5623E989B6D53F7B753AF7527
      A2014E603E51C318A5521F26C11A0434926B8A04AB8F35D1CB3AE826C9EAD4A0
      C273BF1BD0D84952253D952A0D6DB724689BB283AA061A3AA8E6091A1EDAB4A4
      021A768B3B66C4C186DA706DFCB363DC5123D7103AAAFE8BB02DC0F600DB04C2
      8A6B43F379DDC3714E589E73F18F5CA8FF063738063656E92DDD5B5AE82E2114
      B882DEB20C8DE6C4E829B982F7F4735F05907C9EB81130B91530B90330594875
      F27D749347A94E9EC6D5F11C3D262F529DBC8C45F055A8AE156449ABB107AF85
      EA5A8F2F3D515D887F5BA942B6539AEFA42CDF0D98B42F58B0A08BD71E1C267B
      786F804535A83D91EF35431B0384C6E18327C9CEA69826BC8F1E94FD9C6D3203
      881C20EC4171DC4A021617B61347757CB1C08FF19A7415DE4F596359ADE88431
      C394BBCECE98B4A9C4498D799CBD5DC0353A2CCE931774A4C9428389E6C8C86A
      DDAC823A73138B301B8EA81ED4551ED625E8D4DB34CBF74A809ACBD2DC0C88E6
      B242CF550534D210AA5A42F5EF888AAE91F650027680410908712DE380A48A06
      167D4649C81628F2FD4C4011E761E48A2201853A8560A1564138472AD14F3E47
      36CA7A7E0E95C4DB58D40F93C81CA2F7E9A0FD4F7CEC34EB69E8576DB5933C9B
      1354D926402642C33CEF26452647FD3CBF1EF6D60BC56BE2D405587400166DE8
      190930AC32F8DEEDE885E19E4A9586A0C16CBB59DDE1824679CA5F51698418EE
      30C3000DEDB79EBDA1AE2168E8A4D2826BD39FA7FE399FCA89B80B083BC6A5A9
      D4376C03D0511556DC3FE1E3B287C3FD43BDF5BCB6E29ECDFEFDBE14D14FF782
      1440D288DE92AF94B7749480E5A8D985EEAD3FCF0F8F0F91F496133315CFAC4A
      AE23BECA837B3B7117E5F27D00CA62C18407FB29C0E4C7505D2F22C42F453BF9
      39FCEC721C21ABD54D7075B592516DA01CDF4486F5260B6B3B027B505D6D8049
      07627B17AFBD68247D0C7DEB67A1ED65810DC2FD5AEE0B2AA37C3C2EF5C5829C
      E4FBA7A0BEA6E194F7D36035632F8A03E4ECD25557D147EF460098D888E5C690
      ACC4865458588AA5C388D0589280EFD9287970A4876D394032CD21B2D94B0FBF
      D6E3E0C6C3819333DB9A2E237526D044F364E6D5CB13E212D89440130702951B
      68F171CD6956DD9C6353AE82CB997CDE0C78E298D4DC4D9DB42523B4260D0CB1
      B9C76BF4F904C00608F87E182182520A81BA7CCD53671330785FB2689D80C1A3
      07BC5F561146504E4EA6CDA196A6EBEFB8BD49D24F0285FD4A3C0756B436C21E
      CE53160E021007040A62BF13AB1F7FFC719397298E769D64F8E8B8965A9ECBA4
      5BA8EF117BD12F061C504892D40B38F4105D0ADF3A16498C76536DEFE26B6F65
      017C3B34EE563BC2A17F9D41952CB78E13097A2A7A35E6B0DD960EAA186618A0
      E15CAA270AD050D75010BF95088ACAF9544EC4D5867B05E1540BF50D85711D55
      A515B7DAC371DE5B714F77BFFCBD11D14FF7C25480A419BD65C38FFE6D1F1E1F
      221FA6CB09C533B950C713D86D6AA9FB45C0E46BC43700933B01937B0193EF51
      9D3C0298FC10AAEB19A8AE17A0BA964075FD4CAA8B8C6A25AEAE1632AC1AD505
      30589D6C031404949D417729C603245D37DE786337D10BB0F491E5ED216B1BE0
      FBF7022683646DC32CC411ADC32CCC71AA9B0932BC49E8AF7D9CC6386D4F0AA0
      E2215AB5112CCE0E32B31458A4C20416E930AB167B55F85CE7CC71E90B361A37
      1EBBEAB51BA7512D46CE5EA53A92B89F2DC8892FD789935D64A9492C8BAE6993
      0B7EDDD31FF346989C65B94F20CE5E49AF556340D9C11F6740C4C9914595338B
      C209E0096A2EC6F04725D0E8351F5254331D48EBF9B3FE3BFEBF4A5008C0F3D5
      DFD15E9ED21997A70FD4FEA6303D44B5170302AD1204E798322B0569E3693E45
      2F5DD34C2FA5EB2FC5941BEF4E90109CD0740195749C7B7B9C7B7B8C7B7E4C87
      1FAFEFE4386242E119387C7E486BB95DDD1EB2C6EB7E06884EDB73E1310777DD
      75971DDEE33C7F9A3E4679B67CCE869C15877964C011E8540D7BA838AC2C7A6C
      B6152C783EA5A29CE4B04B8BAD60E168741BFA009B37F9D92D5A6DAD300230A8
      D8DFB0B9CF3E0DD64A6BD0534D2A0D6DB78286A3D3E394BF000D9BFD420C7712
      EE6D19349C4DA5934AD090A28AF954DA70AD3682A6929168E4A80AE038EFADB8
      A7BB4F5E04104E3F6C76D10A30391D7A4BD14CF1CC9E1245F7D4E94E38242DC0
      E47A2B13E256C0E40EC0E41EC0E441C0E421AA93C7A1BA7E94A9AEA49B04D585
      AB2B515D343DADB33A2123DBC462DB22DD6585E2EC1E28AD9D2CD05D8E5821F3
      6B87F2EA045CBAD452D055D45274ACF493112660B15A21EC471961919B292660
      E167A76876DC471639FDF0C30F272A8C2A454BF141402351618E655108F56C14
      1BBA1C56A7389A2B9824E87BC6429E0176548B264093C2019379F4C471B2DBE3
      08AC0980F2D1C127ECC8371B0E9EDD4DD0F0E01F374937CC883887253657B3ED
      D8607DCDEF2790890D3A40C84C5D80CAE75F079D53AB84C28A1A5300028C0208
      04893CFC72166084F1C07F372A2FFFFF02A0D598E1EFA9E624584655A015DB8A
      20ACD9FCCD6A0D496F50AF2AC0385D2B1D4D7C6FAA1614ABB996E9DA7AAD6DB6
      CBA33D520F05F7C96E6DA9A6443709108E311724B8B787AC4601078F6B3DE0FD
      8672DACFD404750AC7804CDE76DB6D13D04F5614A300C108E2F6B0E236CF8F09
      CA00D16F55C173D40B18F40018DD0043A7B675228185098F898F2E29C1C29E0C
      456F9BF9040B27DC1660B141ABAD023815466B091861B965CDB4B07E56B38EC2
      725BAD3402341C6468BF868D7E3AA8BE47DC4B081A8AE15F219C842B68A86B98
      FC091A5AF9651734D1B8AE7567DABF61E218FAC61FF07138AAECE1384518772F
      69B6DF5CA85F6FBA915EA87FD8B9FABD0B20A9476F6905F6E1F12192DE2A7B4A
      2EE373AB121D190A6C525C82896E0D1F521FD66B01922F6730F9160BE16E16C4
      2200E50755AA8B45B4946627A9AED7A84E56A19DAC01505E67D1AD67F16D0054
      36012A5B9CE3C362DEA6C34B9151EA0B50D825350080B4C12D772846B2117411
      3DE82902CB1EBE4F0EDA8D60103D658871D6C34E1BE6DF18633318A79A51B49F
      0494A6A026E4B3A79964EA4453A98BFD6C40336C46338AA47AF6EDB03773E53D
      4301355165869B16E10696C047E0C9F459B227CBAB0700D948E96628F0E8E471
      93CC4054031F0188705C77CAB4F3699109843409B061A76AC8704396BA1188CC
      DA8B3E9AD44B631594299E38693240C8D7A4FF949147CD94FD0DD18F93A8A30C
      00892ACAFFAF548D6969E5F7F5555B6B8440AAC690740603313A89D286D78257
      C5E9245087481D40CE35B467E2B0D75A6A5240000C12CD2465E9FD7112AD8725
      39EE43CA8921838ED799A2BF2201C52DB7DC32EEF80F2A83519292119AEF8689
      41130E36FC01C7F42072F70116BD3C1F3D241D5DD04D9D36EC61A17502439BCF
      9B9A85341440932A0BC7A03BD1969E27FB31D42EA4A2D2AC29CF0B0FB080CE5D
      07AD9BAA0B2929C12257182DAC8B352560E0864C8051586ED5341A81468C4EF7
      B02641C361868286CD7E26778286C618933E933F354EA7E10A1AB20C6A1BD2D7
      36214B675F42A86FC470C30BDE5175267BE64500994735E285E5BF10DCA3A7C4
      B95BD5E6441FAAB2A7243ADD1D59106062B7BB0FA9198EE2BB65B2C29C03D66E
      004C6ECE5497BAC9C292EA62313DC3A27A1E21FEA72CB29F0128CBC8D056C005
      AF463F6901545E6751AE6771AE474749A022152025208F1CC0C2C2165876BAD0
      1528A958DA01930016AB951EDEEB055CB44CF693710EF0337BD93086A427E4B3
      D94846781D655319056CB4198FE9D3E7E7C61D2429B5B178F1E2492A984978F1
      29688F2936B27D069B9A87F6243D86EEFBFD6C62D2220AAEBA73D2666746CC46
      A74673D00D5110E2730FFE39ECABE0A3BB878AC77358D2662A476FB8C1660032
      F3D681A62B48103A2A0009440146B161B3A9A74CDE69AE0048A2E10099144E00
      2800285503A1194465909B3A6B3FEBBF41C5709C9F3DEEABFF3FAB037F8788AC
      2B2440F060235D73010636D05125A4BFD5711D0282D7C26B93C36B6578B859A2
      95AC18ECCC36BCE6BC4E0214937C6D02CA69E2BEFBEE1BA7AA1C936E82BE1C25
      71B0DF68447A537DC209096CF00E1AB4937B0FCF4B9F150520D04D12D1054874
      728F3B08FB2D9C23A556B193AFBF6597770914767BEB8C724C48541625584845
      F1FC26B0706C88CD7C217CDB9B6175C1B3BF9A35B02A57182B018CE51930A4A5
      42041730C272AB102E3D159586A011B6DBDBF9F86B848D7ED2CA8286C9DC87F3
      7A745D0A1AF66D48493B9B4AADD3DE0D4D34A16D046854478DD4A8AA33D9882F
      D49FB90820F3049059BC5F7DF756D9531255899DEE6A25F2A482892E8DCBF243
      2ACD6579AC6672057125A1BBE35384B37366515D2CA27B584C0FB0A81E62713D
      4E56F62300E53900E54516DF5216E12B2CC665542A2B5898AB58A06B0096B564
      77AD00CB3AC479816503C0B29185BDB9041600609B34981DF3D260F2D2562B02
      0B36E10E68B04E84FA2E5EF5DE27708196E8E3FBAC5CE4B7FB01104F6E94F31E
      7090A41DF6889ECE22B24B7888CD68587E9C9F19A18A19A19F6584CD6C944D6D
      6CD1A24563F7DF7FFFB807FA78F6B4C78852DD4C429F0840536E8600CD141BA4
      1BA333C4E4E01308F1B9548B403423F5929D3F5A9A93ADD92C9C4DD6D7436CA6
      29740AB129A76AC80DDB10887283A655909A4F58A0EDAD49FD35D95C30EB559A
      CEAF49DDD9E36005E5CF5B5145850518243D41F0E377B132F07748E048244008
      30D0B5E45915020291FE5EFED629AF0355C224D765C26B84FE302E20608C1823
      4639416F94EB3902F538CC3D1B06F487D8DC057B477B38EDC0FB31E05936069F
      EF21FAA80C7A0509BEB7877BD38D36D145E2D0A146C1E7C90165739E09872E28
      9288649DCD5AC5564FE5132842AFE039DB68FF8522B79A85CD7B2439EBA2B228
      C12253512D0DC022AA8B57018D008B68EA5300F760267B34040C9BFBECD3D03D
      A5A6B190B057234043DBAD6BCAB5259D2C132023203320436072E7BA747DDAB7
      11BA86A0A1A5DFF51C63466222AE09E4FB5ADF980FA85D0490330090393ADDAB
      558956E098BF25983830CD87D3CCC6B2D8F2586E5561EE72C2262467719D4275
      F1DE4D525DC437A5BAC8C61601288BB10B3F4A3CC9227C86CCED79A8AF97C8E4
      5E46987F051A60190B7639C0B2023D65B5A08240BF1660795D6041A45F070DF6
      86C042A6B891BE94CD9EB6E6D8072A8BAD8E8060D3DF6EC5A2D0E9462215A60F
      DFAE5FE8B07683CD469EBB83AF751A6C5E5D6C385DF2E00EB16393EA815AEB21
      2BF530AE5E40AC8FACB48FFFEF1E3EEE67F3E9E76B0364C2035A3AA14EF60264
      83FC3B831EF403E536848B6C1883C030F4D9087CFC08DDF9A37428A78D936A67
      ECDE7BEF1D7343158404A008C065127099F41C889C954BD95805A54AC8CD5A9B
      A9940E9B79A2E23CA50E7091EE91F6394025601C348292CBB45CFADCFE06C386
      38814B20A3AA326AD581FF3F7E8F5419A82BF0FB4D029A930041AA0C185F33CE
      DF33E6E14680EB287FEB08E7CB08B6C3540B435CF321AEFFA0D7C6332CD41D04
      6BEE57BFE7D2782DB9975ED7748D01EE1EAE670FD7DE7BE0F4D92EEE6527F7C4
      0AA2037008809072DACDF5DEE59041418264628776598F6D9576D201A54E6157
      B7D36AAD280228A49F744379325F152882862A2A0BC1624D9DCA6245AE2E9665
      B050F4162C96100ADF36F4595DA863D8D4F704F128618F86806195619F86EE29
      8570E9292B0D41C3263F13331D92AE2D41231C543203BA29430C777DBA4E43D7
      1034C2821B1495D32C6A6CC47C36D9F7F3F75C0490B30090798C4C2929AE0013
      1FCEA0B9E454E55615E614E0B505DBAC68563427D5C5D793AB8BB893B89705F8
      20F130F118C0F214A0F20C0BF50540E54540E5A7542C2FB3907F4EC5F22A15CB
      6BD060CBA9565605B09029AE455B69850AAB010B8D591BD9DC3792A9A68A0560
      D9C2A6F4269B5202171D619E9F207D21D7EDE623EFCD4664EC34EC12CE9CB85E
      7E690FA7A1B6B111B6F3FDEDFC3B9E33DD01607502329D6C565D6C8A5D6C56DD
      FCBFBB01B61E36AD1E7E1781A797F7FACC9CF9BE3EB2EB3DBCEEE177B2FAE9E7
      77906A1B6006D2DE1C831E4F6ACF0C2037E4466C769E63845737E851AAAB5100
      6A546AE74B5FFAD21814DC3899BCC79B4E90D5474CDAF4C606AF4E30857BCDA9
      0093764D1BFCDC84078AF16FA921241D817F7F8CFFEF28FFFF11FEF61127C41A
      FCFD435AAEF97D07F99BF7E669CDEA0B8E1BF728000F38EAE33AF8B7F67A1EB7
      071EF1F56E36F42E80A3CBEB6500261D1E82E4D1CB0084D7D51950C90AEB2C28
      2B4AC1DF7BE2FDD1EDE4FD1220BC870AD98284CD78FC7F5235E1CC28AE77CD01
      E5D1AD541349A7705A6D0085C2765414855ED1C233370B28320D250595808250
      B7A856164B78A64BB07896CFEDCB7882102CAC2E14BF17115A6DAD30BE490818
      525337100B08B545E9A9A8346CF23331BB9C8809B88D40C364CF755A0F347EEF
      AB8D7A40781140CE018034A0B7422B89F95B01263E9C663672A99710362A2ACC
      29C05F4A846E72191FCBC736A5BAF81E5D24B712363D7D0740B98FA8010A0BF6
      4916F1D3C4B300CB7300CB4F58E42F012C4B4A602163145856082C500EA96211
      58D83C5AAD58D848D6D3B4B59EEC7303D9EE46C36C944D7E131BFB2632DFCDD2
      6399227B537AC3ECD50D4A715F1DC60D4B2D461A44CE3CC04700924B672334E4
      D575EBECE2EBBBF8DCD7DDBC1A6D7CDCC606D80E68B4F36FB57B66351B60079B
      6C271BAED1E5990F9E67CDA69882F77A72F4F27D9E09E164E404467CDD0DDBB0
      12F2B8626792252A2E6FF06EF4114352728623FA012F29BA88BD565186C3FD9C
      D5E4387F27C3F2773B9EA6D76A8C8F7B78AF9B7FB39B8FBB78AF936CBF93BFC7
      932E3B008576FF460340DC0D3D68EC32B826C9C5E475CABAC30E7E6EBB212028
      567B9DBDDE5692560E067FE716FB28AC32439770B0A0AE272AD144393999D66A
      A2A49D4A07943A4503A058254814402148CC020A0023AA8AD02C82868ACA42B0
      50BB082A4AFDC2663EDD52DF21AC2E14BFED04B73FC30A43DD3000C3FE2B2DB7
      218447A561426662266838E7CE3526AD6CA5A1187E1134CE620FBC08206771F1
      9A95A63C9C55E1BD0A260A71E550471FE8B3A1BA16F0F3666266646666095008
      33B645820AF10316F7A3C4E3C40F0516404560791E60793103CBD27AC042C6B9
      3283CB1A74961632D1B564A4AFB3E1B4929DB6B2F9AC33A864D603386FB021A5
      0078DE6093DA00F86C08F08172117C36EAF31780C87A37058566B513E0A301C0
      CD904D39814F1580321029E0EE60E37553D5F96348C738C27BA700C4E76EC069
      33264BF7F4B95409111E61DA4E6564247A07AA481A2E5171061544375A403734
      5D37DA90D35E7BA82C5240E5751B506D86FA41EA7390D2F3E863A922FE8DE44E
      5278CE5598BD0F56088EE3488090C1D3BF611618F8770BC02595548241A694D2
      9459003D01829DD90AD6010A560FC47AEED17AEED57AEE5912B0D5258C0009AB
      89927642A348D504B126534F01120ADB49D42E80E2E7D24F844EA8A09F14B74B
      A0B0AA50B32869282B8B008B857C2C15A5BD56FDC20E709323350C9F6D1D531A
      4E349E2880AB1B6A4651CFB0B9CF3E0D8570358D929E0ADBAD4EC9B91C54AECF
      8B95C669EC891701E4342E5633C098EBEB3C988DC044DD44015E714E30391BAA
      CB4E593331C5423333179D8BCF8CCDCC4D50B1EC7781BA50170228F713DF2B80
      E5093685A700961F5580E5A7542C4B899F012EAF40872D6383790DAD6539B182
      CC74A54196BA8A4D688D4135D362003C2DE8302DD0656BD9B05E37D8C05E0780
      5AA9725AD9D0D6B1B9093EEB037C0280041F291484D90D82101BA42094AA1F36
      CD8D6CA0097CA20232CB768355CB31F3168804A1D88473255403223377E91CA9
      38AB20291EA91EFB6AD8E01315A7802C15241DA70E0420D4C2CF0DBF2E2048E1
      955491FFBE93617365B0CDFF7F8081BF9B601922B4D4919DD682AA602010188A
      D25E030141CD4130F05A052048290520708D1320E86EE2DA0B08C9E194632DF7
      682DF72E05F76F0DF7720D00B1DA0024569344AC32B8FF2B334804ED2458248D
      225713255004F564BF455951286E3F4104051540A16661521395458085DA8509
      D0B584FA8560A1E55D0DC3675BC7949494C61329DECB097B34040CAB8CB0DC86
      106EA5D10834CA0EF18BA07186FBE0450039C30B770EC1E45C525D6660F2BD66
      6466662E3AB9603336C54441E5F384FE7717AAD9DD2D84D480C0A247FEBB84C0
      F200F17DE2217515693081857886CDE5C7C4F36C303F01645E2296104BD9785E
      8960337A95581601F0BC462C67C33256B079AD047852B0A9AD32D8E45607F890
      0DB718013E2500093E0140804F2B5975022037543756375880E80D41884D3705
      9B70AD0A1284D8A037084051093988AF42C525100A20D2961A601480E4AB214D
      176020782936679AA80606F63C4815658752EA7D707E93BFA7BF6F5406824109
      080281117A831582C1B54A6010802018644058CDF5AD0182A090816125F76625
      F76D85C1BD5B1EA126213810AF1A0112BC5A4994D54409143AA042D4967A7286
      944D7A65451140A15E21052550DC4A5821070DB5808FB5D596602115A59144B0
      B0994F3AEAEF08AB0B29298D279711D2529A51048C4B0969602DB721844B4F35
      B5DDF23DEFDB46BFB3D9A7E6F3B3FF0FDD49BE42F909589A0000000049454E44
      AE426082}
    Properties.ShowFocusRect = False
    Style.BorderStyle = ebsNone
    StyleFocused.BorderStyle = ebsNone
    TabOrder = 16
    Transparent = True
    Height = 74
    Width = 135
  end
  object cxButton15: TcxButton
    Left = 4
    Top = 272
    Width = 53
    Height = 117
    Caption = 'Subir'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Silver'
    OptionsImage.ImageIndex = 131
    OptionsImage.Images = RibbonImages32
    OptionsImage.Layout = blGlyphTop
    OptionsImage.Spacing = 0
    TabOrder = 18
    WordWrap = True
    OnClick = cxButton15Click
  end
  object cxButton14: TcxButton
    Left = 4
    Top = 165
    Width = 53
    Height = 114
    Caption = 'Bajar'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Silver'
    OptionsImage.ImageIndex = 88
    OptionsImage.Images = RibbonImages32
    OptionsImage.Layout = blGlyphTop
    OptionsImage.Spacing = 0
    TabOrder = 19
    WordWrap = True
    OnClick = cxButton14Click
  end
  object cxButton13: TcxButton
    Left = 4
    Top = 386
    Width = 53
    Height = 93
    Caption = 'Eliminar Registros'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Silver'
    OptionsImage.ImageIndex = 504
    OptionsImage.Images = RibbonImages32
    OptionsImage.Layout = blGlyphTop
    OptionsImage.Spacing = -5
    TabOrder = 20
    WordWrap = True
    OnClick = cxButton13Click
  end
  object PanelSabores: TcxGroupBox
    Left = 831
    Top = 640
    Caption = 'Gustos Yogurt'
    Ctl3D = True
    PanelStyle.Active = True
    PanelStyle.WordWrap = True
    ParentCtl3D = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    StyleFocused.LookAndFeel.SkinName = 'Caramel'
    StyleHot.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 17
    Visible = False
    Height = 289
    Width = 779
  end
  object cxGroupBox5: TcxGroupBox
    Left = 1183
    Top = 282
    Enabled = False
    PanelStyle.Active = True
    PanelStyle.OfficeBackgroundKind = pobkGradient
    PanelStyle.WordWrap = True
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    Style.Color = 12699639
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 21
    Visible = False
    Height = 185
    Width = 448
    object Label4: TLabel
      Left = 3
      Top = 16
      Width = 78
      Height = 14
      Caption = 'No. de Pedido'
      FocusControl = cxDBTextEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 116
      Top = 16
      Width = 32
      Height = 14
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 241
      Top = 16
      Width = 24
      Height = 14
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label12: TLabel
      Left = 244
      Top = 56
      Width = 104
      Height = 14
      Caption = 'Nombre del Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label13: TLabel
      Left = 11
      Top = 56
      Width = 83
      Height = 14
      Caption = 'Cod. Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label14: TLabel
      Left = 113
      Top = 58
      Width = 121
      Height = 14
      Caption = 'Nombre del Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 6
      Top = 30
      DataBinding.DataField = 'NO_FACT1'
      DataBinding.DataSource = dsmasterFACT
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 13684944
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Width = 101
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 113
      Top = 30
      DataBinding.DataField = 'FECHA_FAC'
      DataBinding.DataSource = dsmasterFACT
      Properties.ReadOnly = True
      Style.Color = 13684944
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Width = 121
    end
    object cxDBComboBox2: TcxDBComboBox
      Left = 240
      Top = 30
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = dsmasterFACT
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'CREDITO'
        'Contado')
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Visible = False
      Width = 138
    end
    object cxButton5: TcxButton
      Left = 393
      Top = 72
      Width = 30
      Height = 21
      Hint = 'Buscar Clientes [F8]'
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = RibbonImages16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxButton8: TcxButton
      Left = 81
      Top = 72
      Width = 25
      Height = 21
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.ImageIndex = 947
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 4
      Visible = False
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 112
      Top = 70
      DataBinding.DataField = 'NOMBRES_EMP'
      DataBinding.DataSource = datos.DsMaster_Fact
      Properties.ReadOnly = True
      Style.Color = 13684944
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 5
      Visible = False
      Width = 122
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 240
      Top = 70
      DataBinding.DataField = 'NOMBRECLIENTE_PRN'
      DataBinding.DataSource = datos.DsMaster_Fact
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 6
      Visible = False
      Width = 150
    end
    object cxDBComboBox3: TcxDBComboBox
      Left = 281
      Top = -13
      DataBinding.DataField = 'CONDICIONVENTA'
      DataBinding.DataSource = dsmasterFACT
      Enabled = False
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'DETALLE'
        'AL POR MAYOR')
      TabOrder = 7
      Visible = False
      Width = 110
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 9
      Top = 70
      DataBinding.DataField = 'CODVEN'
      DataBinding.DataSource = dsmasterFACT
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 8
      Visible = False
      Width = 73
    end
    object cxButton11: TcxButton
      Left = 362
      Top = 29
      Width = 68
      Height = 35
      Caption = 'Actualizar Itbs'
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 9
      Visible = False
      WordWrap = True
      OnClick = cxButton7Click
    end
  end
  object cxButton16: TcxButton
    Left = 346
    Top = 2
    Width = 69
    Height = 63
    Caption = 'Retornar'
    OptionsImage.ImageIndex = 450
    OptionsImage.Images = RibbonImages32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 22
    OnClick = cxButton16Click
  end
  object cxButton17: TcxButton
    Left = 10
    Top = 2
    Width = 65
    Height = 64
    Caption = 'Calculadora'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000300000006000000090000000A0000000E0000000F0000
      000B000000090000000600000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000005000000190000002A0000
      003A00000047000000520000005B000000600000006300000069000000690000
      0064000000600000005C00000053000000470000003B0000001A000000070000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B0000003320201FB8787878E17F7E7EE27D7C
      7CE47C7C7CE57C7B7BE67C7B7BE67B7A7AE6797878E5787777E5777777E57777
      77E5767675E6767575E6747373E6747373E5727272E4706F6FE0302F2FC60101
      01410000000B0000000000000000000000000000000000000000000000000000
      000000000000000000010000000504040462494747FFDBDBDBFFDCDBDCFFDBDB
      DBFFDBDBDBFFDCDCDCFFDBDBDBFFDADADAFFDADADAFFDBDBDBFFDBDBDBFFD9D9
      D9FFD9D9D9FFD9D9D9FFDBDADAFFD9D8D8FFD8D7D7FFE1E1E1FF605E5EFF0B0B
      0B84000000030000000200000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C54494848FFE4E4E4FF9C9B9BFFADAC
      ACFF9C9B9BFFE0E0E0FF9C9C9CFFB2B1B1FF9C9B9BFFDEDEDEFF9D9C9CFFAFAF
      AFFF9C9B9BFFDEDEDEFF9B9B9BFF9C9B9BFF9B9B9BFFD9D9D9FF575656FF1B1A
      1A7C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54474646FFE5E5E5FF9C9B9BFF9C9B
      9BFF9C9B9BFFE4E4E4FF9C9B9BFF9C9B9BFF9C9B9BFFE2E2E2FF9C9B9BFF9C9B
      9BFF9C9B9BFFE0E0E0FF9C9B9BFFBFBEBDFF9C9B9BFFD8D8D8FF595857FF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B544A4848FFE0E0E0FFDFDFDFFFDEDE
      DEFFDCDCDCFFDFDFDFFFDADADAFFDCDCDCFFDBDBDBFFDFDFDFFFD8D8D8FFDDDD
      DDFFDCDBDCFFDFDFDFFF9B9B9BFFB2B2B1FF9C9B9BFFD6D6D6FF5A5858FF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B544B4949FFE3E3E3FF9E9D9DFFB4B3
      B3FF9D9C9CFFDCDCDDFF9C9C9CFFB5B4B4FF9D9D9DFFDCDCDCFF9E9D9DFFB3B3
      B3FF9D9C9CFFDFDFDFFF9B9B9BFFAFAFAFFF9C9B9BFFD6D6D6FF5D5B5BFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54484646FFE5E5E5FF9E9D9DFF9D9D
      9DFF9D9C9CFFE5E5E5FF9C9B9BFF9D9C9CFF9D9C9CFFE2E2E2FF9D9D9DFF9D9C
      9CFF9D9C9CFFE0E0E0FF9C9B9BFF9C9B9BFF9C9B9BFFDCDCDCFF5E5D5CFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54494848FFE4E4E4FFDDDCDDFFDCDB
      DCFFDCDCDCFFE0E0E0FFDCDBDCFFDCDBDCFFDCDCDCFFE0DFE0FFDCDBDCFFDCDB
      DCFFDAD9DAFFE0DFE0FFDBDADBFFDAD9DAFFDDDCDDFFDADADAFF5D5C5BFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B544B4A4AFFE3E3E3FF9D9D9DFFB2B1
      B1FF9D9C9CFFDDDDDDFF9C9C9CFFB4B3B3FF9E9D9DFFDCDCDCFF9C9B9BFFB2B1
      B1FF9D9C9CFFE0E0E0FF9D9C9CFFAFAFAFFF9E9D9DFFD7D7D7FF5B5A5AFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54484646FFE5E5E5FF9E9D9DFF9D9C
      9CFF9D9C9CFFE5E5E5FF9D9D9DFF9D9C9CFF9D9C9CFFE3E3E3FF9E9D9DFF9D9C
      9CFF9D9C9CFFE0E0E0FF9D9D9DFF9D9C9CFF9D9C9CFFDCDCDCFF5E5D5DFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54484747FFE5E5E5FFDFDEDFFFDFDE
      DFFFDEDDDEFFE1E0E1FFDEDDDEFFDCDBDCFFDDDCDDFFE1E0E1FFDFDEDFFFDDDC
      DDFFDDDCDDFFE0DFE0FFDEDDDEFFDCDBDCFFDCDBDCFFDCDCDCFF5E5D5CFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B544B4A4AFFE3E3E3FF9E9D9DFFB5B4
      B5FF9D9C9CFFDDDDDDFF9D9C9CFFB0B0B0FF9E9D9DFFDDDDDDFF9F9E9EFFB4B3
      B3FF9D9C9CFFE0E0E0FF9D9C9CFFB1B0B0FF9E9D9DFFD8D7D8FF5B5A5AFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54494747FFE5E5E5FF9D9D9DFF9D9D
      9DFF9D9C9CFFE5E5E5FF9D9C9CFF9D9C9CFF9D9C9CFFE2E2E2FF9E9D9DFF9D9C
      9CFF9D9C9CFFE0E0E0FF9D9D9DFF9D9C9CFF9D9C9CFFDCDCDCFF5E5D5DFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54474646FFE5E5E5FFE1E0E1FFE0DF
      E0FFE0DFE0FFE1E1E1FFE0E0E0FFE0DFE0FFDFDEDFFFE1E0E1FFE1E0E1FFDFDE
      DFFFDFDEDFFFE1E0E1FFE0DFE0FFDEDDDEFFDDDCDDFFDFDEDEFF5E5D5DFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B544B4A4AFFE4E4E4FF9E9D9DFFB4B3
      B3FF9D9C9CFFDFDFDFFF9D9C9CFFB0AFAFFF9D9C9CFFDEDEDEFF9D9C9CFFB0AF
      AFFF9E9D9DFFDEDEDEFF9C9C9CFFB0B0B0FF9E9D9DFFD8D8D9FF5C5B5BFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B544A4848FFE5E5E5FF9D9C9CFF9D9C
      9CFF9D9C9CFFE4E3E4FF9D9C9CFF9D9C9CFF9D9C9CFFE1E1E1FF9D9D9DFF9D9C
      9CFF9D9C9CFFDEDEDEFF9D9C9CFF9D9C9CFF9D9C9CFFDBDADBFF5E5D5DFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54474545FFE6E6E6FFE3E2E3FFE2E1
      E2FFE2E1E2FFE2E1E2FFE2E1E2FFE1E0E1FFE0E0E0FFE1E1E1FFE2E2E2FFE0DF
      E0FFE0DFE0FFE1E0E1FFE2E1E2FFDFDEDFFFDEDDDEFFE0E0E0FF5E5D5DFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B544B4A49FFE4E4E4FF9D9C9CFFB3B2
      B2FF9D9C9CFFE1E1E1FF9C9C9CFFB1B0B0FF9E9D9DFFDFDFDFFF9D9C9CFFB2B1
      B1FF9D9C9CFFE0E0E0FF9D9C9CFFB1B0B0FF9E9D9DFFD9D9D9FF5E5D5DFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B544A4949FFE5E5E5FF9B9A9AFF9B9B
      9BFF9B9A9AFFE4E4E4FF9B9A9AFF9B9A9AFF9C9B9BFFE1E1E1FF9C9B9BFF9B9A
      9AFF9B9B9BFFDFDFDFFF9C9B9BFF9B9A9AFF9B9B9BFFDBDADBFF5F5E5EFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54474646FFE6E6E6FFFEFEFFFFF6F6
      F7FFF8F8F8FFFBFBFBFFF8F8F8FFF2F2F2FFF0F0F0FFF5F5F5FFF5F5F4FFEEEE
      EEFFEBEBEBFFEDEDEDFFF0EFEFFFEBEAEAFFE5E5E5FFE1E0E1FF5F5E5DFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54494748FF707071FF666566FF6563
      64FF656364FF646263FF646263FF646263FF646263FF636162FF636162FF6361
      62FF636162FF626162FF626061FF626161FF626162FF717171FF5C5A5AFF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C54444242FF3D3D3DFF4E504FFF464C
      49FF474E4AFF484F4CFF49504DFF4B514EFF4B524EFF4B524EFF4B514EFF4A50
      4DFF49504DFF494F4CFF474D4AFF464D4AFF424946FF414040FF515050FF1B1A
      1A7C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C54454343FF363435FF75867EFFBCE8
      D1FFAFDCC4FFAADBC1FFA6D8BEFFA3D7BCFFA3D7BBFFA5D9BDFFA2D7BAFFA3D7
      BBFFA3D7BBFFA2D7BBFF80B295FF80B295FF9BC6AFFF3A3739FF535252FF1B1A
      1A7C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C54454344FF363335FF6C7F74FFB5E3
      C9FFAED9C1FFADD8C0FFA9D6BDFFA6D5BBFFA2D3B7FF9DD1B3FF96CDAEFF95CC
      ADFF93CCABFF93CDACFF668273FF668173FF8EBEA3FF393638FF545252FF1B1A
      1A7C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B54444243FF373536FF65796EFFB8E4
      CAFFB0DBC2FFAEDAC1FFAEDAC0FFAFDAC1FFABD9BEFFACD9BFFFAAD8BDFFA8D7
      BCFFA3D5B8FF9FD3B4FF80B295FF80B295FF8FC9A7FF393638FF535151FF1A19
      197C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0A0A54403F3FFF3B3B3BFF393D3BFF4B57
      50FF4B5650FF4B5650FF4B5650FF4B5650FF4B5650FF4B5650FF4B5650FF4B56
      50FF4B5650FF4B564FFF4B564FFF48544DFF47554DFF3C3B3CFF4E4D4DFF1817
      177C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000090908553F3D3DFF5C5C5CFF565556FF5553
      54FF565456FF585657FF5A5859FF5C5A5BFF5E5C5DFF5E5C5DFF5D5B5CFF5B59
      5AFF595758FF585557FF565355FF545253FF535052FF5C5C5CFF4F4E4EFF1514
      147C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000090808473F3D3DFFADACACFFB9B8B8FFB7B6
      B6FFB7B6B7FFB8B7B7FFB9B8B8FFBAB9B9FFBBBABAFFBABABAFFB9B8B8FFB7B6
      B6FFB5B5B4FFB4B3B3FFB2B1B1FFB0AFAFFFAFAEAEFFAAA9A9FF535151FF1413
      136D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000032C2B2B89959595F3949494F19493
      93F1949393F1949393F1949393F1949393F1949393F1949393F1939393F19393
      93F1939393F1939393F1939393F1939393F1939393F1949494F23F3F3F9E0302
      020E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    OptionsImage.Images = inicio.Toolbar32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 23
  end
  object cxButton18: TcxButton
    Left = 73
    Top = 2
    Width = 65
    Height = 64
    Caption = 'Calendario'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1B6C1F1F1F721E1E1E711E1E1E711E1E1E711E1E1E711E1E
      1E711E1E1E711E1E1E711E1E1E711E1E1E711F1F1F711F1F1F711F1F1F711F1F
      1F711F1F1F711F1F1F711F1F1F711F1F1F711F1F1F711F1F1F711F1F1F711F1F
      1F711E1E1E711E1E1E711E1E1E711E1E1E721D1D1D7005050541000000000000
      000000000000AAAAAAEEFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF8F8F8FFF8F8F8FFF9F9F9FFFAFAFAFFFAFAFAFFF9F9
      F9FFFAFAFAFFFEFEFEFFFFFFFFFFFFFFFFFFF6F6F6FA18181863000000000000
      000000000000ABABABEEF9F9F9FFF9F9F9FFF5F5F5FFF5F5F5FFF3F3F3FFF2F2
      F2FFF0F0F0FFEEEEEEFFEBEBEBFFEAEAE9FFE8E8E8FFE7E7E6FFE6E5E5FFE4E4
      E3FFE3E2E2FFE1E1E0FFE0DFDFFFDEDEDDFFE2E2E1FFEAEAEAFFEEEEEEFFECEC
      ECFFDEDEDEFFCACACAFFBEBEBEFFC4C4C4FFDFDFDFFA17171762000000000000
      000000000000ACACACEEFDFDFDFFFDFDFDFFF5F4F4FFF1EFEFFFF0EEEEFFEEED
      ECFFEDECECFFEDECECFFEAE9E9FFE8E7E7FFE7E6E6FFE5E4E4FFE3E2E2FFE2E1
      E1FFE1E0E0FFDFDEDEFFDEDDDDFFE1E1E0FFE0E0DFFFE4E4E3FFEDECECFFF8F8
      F8FFFFFFFFFFFFFFFFFFF3F3F3FFC2C2C2FFAAAAAAFA17171762000000000000
      000000000000AEAEAEEEFFFFFFFFFFFFFFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFE2E2E1FFE0E0DFFFE3E3E2FFECEB
      EBFFF5F5F5FFFEFEFEFFFFFFFFFFF8F8F8FFB0B0B0FA16161662000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFEBE2DEFFEBE3DFFFE8DF
      DBFFD6CFCFFFF6F6F6FFF0EFEFFFD6CFCFFFF0F0F0FFEEEEEEFFE5E4E4FFD6CF
      CFFFEAEAEAFFE8E8E8FFE1E0E0FFD6CFCFFFE4E4E3FFE1E1E0FFE0E0DFFFE3E3
      E2FFECEBEBFFF5F5F5FFFDFDFDFFFFFFFFFFC0C0C0FA14141462000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFEDE4E0FFECE4E0FFE9E0
      DCFFD6CFCFFFF7F7F7FFF0F0F0FFD6CFCFFFF0F0F0FFEFEFEFFFE6E5E5FFD6CF
      CFFFEBEBEBFFE9E9E8FFE2E1E1FFD6CFCFFFE5E4E4FFE3E3E2FFE2E2E1FFE0E0
      DFFFE3E3E2FFEDECECFFF5F5F5FFFFFFFFFFD3D3D3FA14141462000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFE4E3E3FFFBFBFBFFE1E1E1FA14141462000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFEFE6E2FFEEE6E2FFEBE2
      DEFFD6CFCFFFF9F9F9FFF2F2F2FFD6CFCFFFF3F2F2FFF1F1F1FFE8E7E7FFD6CF
      CFFFEDEDEDFFEBEBEAFFE4E3E3FFD6CFCFFFE7E6E6FFE6E6E5FFDCDBDAFFD6CF
      CFFFE1E1E0FFDFDFDEFFD6CFCFFFEFEFEEFFE5E5E5FA15151562000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFF0E7E3FFF0E8E4FFEEE5
      E1FFD6CFCFFFFBFBFCFFF5F4F4FFD6CFCFFFF5F5F5FFF3F3F3FFEAE9E9FFD6CF
      CFFFF0F0EFFFEEEEEDFFE7E6E5FFD6CFCFFFEAEAE9FFE8E7E7FFDEDDDCFFD6CF
      CFFFE4E4E3FFE2E2E1FFD6CFCFFFE5E5E4FFE1E1E1FA16161662000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFB9BF
      D2FFB9BFD2FFB9BFD2FFB9BFD2FFB9BFD2FFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFE2E2E1FFDCDCDBFA16161662000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFE9E0DCFFEAE2DEFFE8E0
      DCFFD6CFCFFFF6F6F6FFF0EFEFFFD6CFCFFFF0EFEFFFEFEEEDFFE4E4E6FFB9BF
      D2FFC7CCD9FFC5CAD7FFC4C8D5FFB9BFD2FFE5E4E3FFE3E2E2FFDAD9D8FFD6CF
      CFFFDFDEDDFFDDDCDBFFD6CFCFFFE3E2E2FFD9D9D8FA16161662000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFF0E8E4FFF1E9E5FFEFE7
      E3FFD6CFCFFFFFFFFFFFF9F9F9FFD6CFCFFFFAFAFAFFF9F9F8FFEDEEF0FFB9BF
      D2FFC9D0DCFFC7CDDAFFC6CBD8FFB9BFD2FFEFEFEEFFEDECECFFE3E2E1FFD6CF
      CFFFE8E7E7FFE6E6E6FFD6CFCFFFE4E3E3FFDADAD9FA16161662000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFF0E7E3FFF0E8E4FFEFE7
      E2FFD6CFCFFFFFFFFFFFFBFBFBFFD6CFCFFFFCFCFCFFFAFAF9FFEEEFF2FFB9BF
      D2FFCAD0DDFFC7CEDBFFC6CCD9FFB9BFD2FFF0F0EFFFEEEEEEFFE4E3E3FFD6CF
      CFFFE9E9E8FFE8E7E7FFD6CFCFFFE6E6E5FFDBDBDAFA16161662000000000000
      000000000000AFAFAFEEFFFFFFFFFFFFFFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFB9BF
      D2FFB9BFD2FFB9BFD2FFB9BFD2FFB9BFD2FFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFE8E8E7FFDDDDDCFA16161662000000000000
      000000000000AEAEAEEDFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFF9F8F8FFD6CFCFFFF9F9F9FFF8F8F8FFEFEEEEFFD6CF
      CFFFF5F5F6FFF3F3F4FFECEBEBFFD6CFCFFFEEEDEDFFEDECECFFE3E1E1FFD6CF
      CFFFE8E8E7FFE7E6E6FFD6CFCFFFE9E8E8FFDEDDDDFA15151561000000000000
      000000000000B5B5B5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCFFD6CFCFFFFFFFFFFFFEFEFEFFF4F3F3FFD6CF
      CFFFFAFAFAFFF8F8F8FFF1F0F0FFD6CFCFFFF4F4F4FFF2F2F2FFE8E7E7FFD6CF
      CFFFEDEDEDFFECECEBFFD6CFCFFFEAE9E9FFE4E4E3FE1A1A1A69000000000000
      000000000000BABABAF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCFFD6CFCFFFFEFEFEFFFCFCFCFFF3F2F2FFD6CF
      CFFFF8F8F8FFF6F6F6FFEFEEEEFFD6CFCFFFF2F1F1FFF1F0F0FFE6E5E5FFD6CF
      CFFFECEBEBFFEAE9E9FFD6CFCFFFEBEAEAFFE7E6E6FF1D1D1D6E000000000000
      000000000000AFAFAFF7F2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CFCFFFD6CF
      CFFFD6CFCFFFD6CFCFFFD6CFCFFFDEDEDEFFDAD9D9FF1C1C1C6E000000000000
      000000000000A1A1A2F6DEDFE0FFDCDDDEFFDCDDDEFFDCDCDDFFDCDCDDFFDCDC
      DDFFDCDCDDFFDCDCDDFFDCDCDDFFDDDDDEFFDDDDDEFFDDDDDEFFDDDDDEFFDCDC
      DDFFDADADBFFD9DADAFFD8D9D9FFD7D8D8FFD5D6D6FFD4D5D5FFD3D4D4FFD2D3
      D3FFD0D1D1FFCFD0D0FFCECFCFFFCDCECEFFC9CACAFF1B1B1B6D000000000000
      00000000000093908DF8C8C5C1FFC6C3BFFFC6C3C0FFC7C4C1FFC7C4C1FFC7C4
      C2FFC8C5C3FFC8C5C3FFC9C6C4FFC9C7C5FFC9C7C5FFCAC8C6FFCAC8C7FFCAC8
      C7FFC9C7C5FFC7C5C3FFC6C4C2FFC5C2C0FFC3C0BEFFC2BFBDFFC0BDBBFFBFBB
      B9FFBEBAB8FFBCB8B6FFBBB6B4FFBAB5B3FFB7B2B0FF1C1B1B71000000000000
      000000000000876D4BFFA88861FFA98963FFAA8A65FFAB8A66FFAC8B68FFAD8B
      6AFFAE8C6CFFAF8D6EFFB08E70FFB18E71FFB28F73FFB39075FFB49177FFB490
      77FFB38E75FFB28B73FFB08971FFAF876FFFAE846DFFAE836CFFAC806AFFAB7E
      68FFAA7B66FFA97964FFA97763FFA77460FFA7725EFF30231F8B000000000000
      000000000000846B47FFA68459FFA68359FFA68259FFA68159FFA68059FFA67F
      59FFA67F59FFA67E59FFA67C59FFA67C59FFA67B59FFA67A59FFA67959FFA678
      59FFA67759FFA67659FFA67659FFA67559FFA67459FFA67359FFA67259FFA672
      59FFA67159FFA67059FFA66F59FFA66E59FFA66D59FF3224208D000000000000
      000000000000846B47FFA68559FFA68459FFA68359FFA68259FFA68159FFA680
      59FFA67F59FFA67F59FFA67E59FFA67D59FFA67C59FFA67B59FFA67A59FFA679
      59FFA67959FFA67859FFA67759FFA67659FFA67559FFA67459FFA67359FFA673
      59FFA67259FFA67159FFA67059FFA66F59FFA66E59FF3224208D000000000000
      000000000000846B47FFA6865AFFA6855AFFA7855BFFA7845BFFA7845CFFA783
      5CFFA8835DFFA8825DFFA8815DFFA8815EFFA8805EFFA9815FFFA97F5FFFA97F
      5FFFA97E5FFFA97D5FFFA87B5EFFA87A5DFFA8795DFFA8785DFFA7775CFFA775
      5CFFA7755CFFA7735BFFA6715AFFA6715AFFA66F59FF3224208D000000000000
      0000000000004D3E2AA94D3F2CA74D3F2DA64F4130A6504231A6514333A65244
      35A6534637A6544739A655483CA656493DA6574A3FA6594C42A65A4D44A65A4E
      44A6594C42A6574A40A657483EA655463CA655443AA6534238A6524036A6513E
      34A6503C32A64F3930A64E382EA64D362CA650362CAC1F151165000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    OptionsImage.Layout = blGlyphTop
    TabOrder = 24
  end
  object cxButton19: TcxButton
    Left = 136
    Top = 2
    Width = 80
    Height = 64
    Caption = 'Administrador'
    OptionsImage.ImageIndex = 123
    OptionsImage.Images = inicio.Toolbar32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 25
  end
  object cxButton20: TcxButton
    Left = 280
    Top = 2
    Width = 66
    Height = 64
    Caption = 'Consultar Caja'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000A0000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000507070791282826A6000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00080C0C0C97B8B6B3F9F5F4F2FF6F6F6DCD0000001800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A1111
      119DC0BEBBFCE1DFDDFFFFFFFDFFFFFFFFFF5353528900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000C161616A2C5C5
      C2FFD7D5D4FFFCFCFAFFF2F2F1FFA09F9FAC0C0C0C0F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C181616A3C5C4C2FFCAC8
      C5FFECEAEAFFEAE9E7FFAFAFAEB8070707090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000009181818A2C7C5C4FFBCBAB7FFD7D5
      D5FFDFDDDCFFC0BEBEC20D0D0D0F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000412121298C6C6C3FEACAAA7FFC0BFBDFFD4D2
      D0FFC5C5C5C50F0F0F1100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000007070788BDBBB9F99D9C98FFA8A5A2FFC8C7C5FFCACA
      CACA171616180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000052A9A9A7EF979490FF8F8D8AFFC5C4C2FFC0C0C0C01212
      1212000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000130000
      0031000000430000004400000033000000130000000000000000000000000000
      00000000003E8B8B89DF95928FFF787572FFCDCCCAFFABABABAB0B0B0B0B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000290000007F252527C77979
      79ECA6A6A6F9ADADADFB8E9090F3464648D70000009600000031000000000000
      001A696967CDA29F9DFF6B6865FFDAD8D7FF8B8B8B8B01010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000600000063484848DCE9E5E5FFFFFFFFFFFFFD
      F1FFFFF2E1FFFFF1DFFFFFFAEAFFFFFFFFFFFFFFFFFF8F8F8FF50000007B0000
      0071D8D5D4FF94928FFFE5E3E2F7636363640000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000050000007CA4A4A6F9FFFFFFFFFFE2CDFFFFC4A7FFFFC4
      A4FFFFCAA8FFFFCAAAFFFFC5A5FFFFC2A4FFFFD4BDFFFFFFFFFFDBDADAFDA7A4
      A4FBC7C4C2F7A9A8A8B73E3E3D3E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000062ACACADFAFFFFFCFFFFCAAFFFFFCCAAFFFFDFBFFFFFEC
      CCFFFFF2D0FFFFF2D0FFFFEFCDFFFFE4C4FFFFD0AFFFFFBFA0FFFFF4E5FFF5F2
      F2FF2A2828B70000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000002458595ADDFEFEF9FEF5C7AEF5F6DABEF6F5E9CAF5F5F2D0F5F5F5
      D8F5F5F5DBF5F5F5DBF5F5F5D8F5F5F3D3F5F5E9C8F5F5D4B5F5F5B699F5F7F1
      E3F7BEBEBEFA0807074100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000007FE6DFDCF8D6B5A4D6E1D3BFE1DDDDC8DDD9D9C5D9D5D5C3D5D4D4
      C4D4D4D4C7D4D4D4C7D4D4D4C5D4D4D4C3D4D4D4BBD4D4CCB0D4D4B59BD4D2A0
      88D2EBEBEBEB5A5959B800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0019424243CAD0BEB3D0C7B4A4C7D5D5D2D5C9C9C4C9C1C1BBC1B6B6ADB6B4B4
      ACB4B4B4ADB4B4B4ADB4B4B4ACB4B4B4AAB4B4B4A5B4B4B49DB4B4A791B4B38C
      76B3B8A599B8B4B4B4EC0B0B0A2A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00408C8A8AE5A6897EA6CBCBC9CBCACACACABBBBBBBBB0B0B0B09D9D999D9696
      90969797939797979397979792979797919797978F979797899797937F979780
      6D9792756692CBC2C1E021202063000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      005B9F9998E1896D638AD2D2D2D2C6C6C6C6B4B4B4B4A7A7A7A7858584857878
      74787A7A777A7A7A777A7A7A777A7A7A767A7A7A757A7A7A717A7A7A697A7A6D
      5D7A735A4C73B7A8A4C736353588000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0061958F8EDB6E574F74D8D8D8D8CBCBCBCBB3B3B3B378787878666664666060
      5E6060605E6060605E6060605E6060605D6060605C6060605960606053606056
      4A6058443A58998A86B63C3B3B8E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00477F7F7FDA4F3D3661DCDCDCDCD6D6D6D66868676860606060848484845353
      535346464446484846484848464848484648484845484848424848483E484840
      3748402F2840847977BB3433337F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001D646465D23527235DB7B7B7B7787877785B5B595BA4A4A4A48B8B8B8B5D5D
      5D5D2D2D2B2D3131303131312F3131312F3131312E3131312C31313029312F2A
      232F2C201B35777373D41E1D1D51000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B2B2B9A3D36339E1C15122567676767D0D0D0D0AFAFAFAF8E8E8E8E7272
      727232323232181817181D1D1C1D1D1D1B1D1D1D1B1D1D1D191D1D1B171D1411
      0E14251A1657777778DB06060615000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000032808081E20000002D938C8999F8F8F8F8BDBDBDBD999999997B7B
      7B7B5757575717171717070706070C0C0B0C0C0C0A0C0C0B0A0C060605060805
      0411323132BD4846458F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005150509129292BC600000021908D8DA3E1E1E1E1B2B2B2B28888
      88886A6A6A6A454545450F0F0F0F000000000000000000000000000000010000
      0081878787DF0706061500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020101057F7D7DBF161617C20000002A3230305FA7A7A7A7A2A2
      A2A283838383646464644242424212121212000000000301000F000000858E8E
      90F3191818420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000404040B737171AF505050E700000071000000340A09
      09381A19183C171515300D0B0B1F0301012200000056080C0EC4929090E61A19
      1942000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000353332608A8989D74A4A4CE30000
      00BB0000009D00000099000000B0242426D87B7B7DE75D5B5B9D080808190000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000302020721202042504E
      4E8061605FA1656363A85A595991353332600A0A0A1B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    OptionsImage.ImageIndex = 123
    OptionsImage.Images = inicio.Toolbar32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 26
    WordWrap = True
  end
  object cxButton21: TcxButton
    Left = 216
    Top = 2
    Width = 66
    Height = 64
    Caption = 'Buscar Clientes'
    OptionsImage.ImageIndex = 137
    OptionsImage.Images = inicio.Toolbar32
    OptionsImage.Layout = blGlyphTop
    TabOrder = 27
    WordWrap = True
  end
  object dsmasterFACT: TDataSource
    DataSet = datos.FbqMaster_Fact
    Left = 824
    Top = 528
  end
  object IbqClientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 888
    Top = 488
    object IbqClientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
    object IbqClientesNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object IbqClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IbqClientesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object IbqClientesCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object IbqClientesTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object IbqClientesCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object IbqClientesCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 15
    end
    object IbqClientesCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object IbqClientesRENGLONCNF: TWideStringField
      FieldName = 'RENGLONCNF'
      Size = 15
    end
    object IbqClientesTXTCNF: TWideStringField
      FieldName = 'TXTCNF'
      Size = 40
    end
    object IbqClientesCREDITOLIMITE: TFloatField
      FieldName = 'CREDITOLIMITE'
    end
    object IbqClientesTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object IbqClientesRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object IbqClientesCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object IbqClientesINICIO: TDateField
      FieldName = 'INICIO'
    end
    object IbqClientesSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object IbqClientesPAGOITB: TWideStringField
      FieldName = 'PAGOITB'
      Size = 2
    end
    object IbqClientesCREDITO: TWideStringField
      FieldName = 'CREDITO'
      Size = 2
    end
    object IbqClientesBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object IbqClientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object IbqClientesMOVIL: TWideStringField
      FieldName = 'MOVIL'
      Size = 17
    end
    object IbqClientesCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object IbqClientesNUMEROPIN: TWideStringField
      FieldName = 'NUMEROPIN'
      ReadOnly = True
      Size = 10
    end
  end
  object DsqCliente: TDataSource
    DataSet = IbqClientes
    Left = 704
    Top = 608
  end
  object dsqusuario: TDataSource
    DataSet = QEmpleados
    Left = 82
    Top = 792
  end
  object Zqusuario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.NOMBRES_EMP,B.CARGO from musuario a'
      'left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1'
      ''
      ''
      '')
    Params = <>
    Left = 450
    Top = 600
    object ZqusuarioUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Required = True
    end
    object ZqusuarioEMPLEADOID: TIntegerField
      FieldName = 'EMPLEADOID'
      ReadOnly = True
    end
    object ZqusuarioTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ZqusuarioPASSW: TWideStringField
      FieldName = 'PASSW'
      Size = 10
    end
    object ZqusuarioIDAC: TWideStringField
      FieldName = 'IDAC'
      Size = 10
    end
    object ZqusuarioNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZqusuarioCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 30
    end
  end
  object numero: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(G_nofact, 0) from RDB$DATABASE')
    Params = <>
    Left = 202
    Top = 792
    object numeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object numero_detalle: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(no_fact) from detailfact  ')
    Params = <>
    Left = 360
    Top = 472
    object numero_detalleMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object master: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBDataset1'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'FECHA_FAC=FECHA_FAC'
      'TIPO=TIPO'
      'COD_CLIENT=COD_CLIENT'
      'COD_EMP=COD_EMP'
      'NO_FACT1=NO_FACT1'
      'MONTO=MONTO'
      'POGXITBS=POGXITBS'
      'HORA=HORA'
      'TIPOPAGO=TIPOPAGO'
      'MONTOPAGO=MONTOPAGO'
      'CONDICION=CONDICION'
      'RENTA=RENTA'
      'CODIGO=CODIGO'
      'TIPOITBS=TIPOITBS'
      'VENDEDOR=VENDEDOR'
      'SITUACION=SITUACION'
      'CAJERO=CAJERO'
      'NCF=NCF'
      'RNC_CLIENTE=RNC_CLIENTE'
      'NCF1=NCF1'
      'NOM_CLIENTE=NOM_CLIENTE'
      'DESCUENTO=DESCUENTO'
      'ROTULO=ROTULO'
      'NO_AUTORIZA_NCF=NO_AUTORIZA_NCF'
      'MONTOFINANCIADO=MONTOFINANCIADO'
      'CUOTAS=CUOTAS'
      'INTERES=INTERES'
      'DIRECCION=DIRECCION'
      'PAGADO=PAGADO'
      'LEYPROPINA=LEYPROPINA'
      'COMPROBANTE=COMPROBANTE'
      'TERMINAL=TERMINAL'
      'EFECTIVO=EFECTIVO'
      'DEVOLUCION1=DEVOLUCION1'
      'RESTANTE=RESTANTE'
      'ABONO=ABONO'
      'CHEK=CHEK'
      'NO_RECIBO=NO_RECIBO'
      'PAGADOCXC=PAGADOCXC'
      'MESES=MESES'
      'DIAS=DIAS'
      'PENDIENTE=PENDIENTE'
      'ESTADOPAGO=ESTADOPAGO'
      'DEVOLUCION=DEVOLUCION'
      'CONDICION_PAGO=CONDICION_PAGO'
      'FECHAVENCIMIENTO=FECHAVENCIMIENTO'
      'COMBO=COMBO'
      'COBRADO=COBRADO'
      'QUEES=QUEES'
      'USUARIOID=USUARIOID'
      'CLIENTEID=CLIENTEID'
      'CLIENTENOMBRE=CLIENTENOMBRE'
      'NOMBRES_EMP=NOMBRES_EMP'
      'TIENDAID=TIENDAID'
      'CONDICIONVENTA=CONDICIONVENTA'
      'PINREFERIDO=PINREFERIDO')
    DataSet = datos.FbqMaster_Fact
    BCDToCurrency = False
    Left = 472
    Top = 808
  end  
  object detalle: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'NO_FACT1=NO_FACT1'
      'MASTERID=MASTERID'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'IMPUESTO=IMPUESTO'
      'ITBS=ITBS'
      'ITBIS2=ITBIS2'
      'COD_ART=COD_ART'
      'UNID=UNID'
      'COMBO=COMBO'
      'LINEA=LINEA'
      'ARTICULOID=ARTICULOID'
      'ARTICULO=ARTICULO'
      'TOTAL=TOTAL'
      'ANCHO=ANCHO'
      'ALTO=ALTO'
      'TITULOPRN=TITULOPRN')
    DataSet = datos.Zdetalle
    BCDToCurrency = False
    Left = 504
    Top = 808
  end
  object Recibo1: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41440.780885324100000000
    ReportOptions.LastChange = 41588.732760092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 360
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = master
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = series
        DataSetName = 'Series'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'titulos'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 10.160000000000000000
      BottomMargin = 5.080000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        Height = 187.077180000000000000
        ParentFont = False
        Top = 19.200000000000000000
        Width = 718.821251640000000000
        object SysMemo2: TfrxSysMemoView
          Left = 587.909030000000000000
          Top = 118.574830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 587.600000000000000000
          Top = 95.000000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object titulos: TfrxMemoView
          Left = 297.600000000000000000
          Width = 422.400000000000000000
          Height = 38.400000000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[titulos]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 9.600000000000000000
          Top = 19.200000000000000000
          Width = 200.000000000000000000
          Height = 110.000000000000000000
          ShowHint = False
          AutoSize = True
          DataField = 'LOGO'
          DataSet = Config
          DataSetName = 'configuracion'
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 99.000000000000000000
          Top = 74.200000000000000000
          Width = 220.800000000000000000
          Height = 57.600000000000000000
          ShowHint = False
          DataField = 'ROTULO_ESP'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[configuracion."ROTULO_ESP"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 9.000000000000000000
          Top = 98.600000000000000000
          Width = 211.200000000000000000
          Height = 67.200000000000000000
          ShowHint = False
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object frxDBDataset1TELEFONO: TfrxMemoView
          Left = 46.000000000000000000
          Top = 147.800000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object frxDBDataset1EMAIL: TfrxMemoView
          Left = 7.600000000000000000
          Top = 128.600000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'EMAIL'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[configuracion."EMAIL"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 46.000000000000000000
          Top = 164.000000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 10.000000000000000000
          Top = 148.800000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tel.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 12.600000000000000000
          Top = 164.400000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RNC.:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 135.800000000000000000
        Top = 259.200000000000000000
        Width = 718.821251640000000000
        DataSet = master
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Shape2: TfrxShapeView
          Top = 106.000000000000000000
          Width = 729.600000000000000000
          Height = 28.800000000000000000
          ShowHint = False
          Color = cl3DLight
          Frame.Color = clNone
        end
        object frxDBDataset1NO_FACT1: TfrxMemoView
          Left = 528.000000000000000000
          Top = 6.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'NO_FACT1'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FACT1"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 435.600000000000000000
          Top = 6.200000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '# Factura:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 528.000000000000000000
          Top = 27.000000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 435.600000000000000000
          Top = 27.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 528.000000000000000000
          Top = 46.800000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 435.600000000000000000
          Top = 46.800000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Condici'#243'n :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 86.400000000000000000
          Top = 15.800000000000000000
          Width = 230.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'CLIENTENOMBRE'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLIENTENOMBRE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 528.000000000000000000
          Top = 64.600000000000000000
          Width = 182.400000000000000000
          Height = 28.800000000000000000
          ShowHint = False
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 435.600000000000000000
          Top = 64.600000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cajero:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 115.200000000000000000
          Top = 35.000000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 86.400000000000000000
          Top = 35.000000000000000000
          Width = 31.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RNC      :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 144.000000000000000000
          Top = 83.000000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCF"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 19.200000000000000000
          Top = 83.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '# Comprobante :')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 110.000000000000000000
          Width = 60.170130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 73.400000000000000000
          Top = 110.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 432.000000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 518.400000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 604.800000000000000000
          Top = 110.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 135.800000000000000000
          Width = 729.600000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 345.600000000000000000
          Top = 111.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 22.677180000000000000
        Top = 412.800000000000000000
        Width = 718.821251640000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDBDataset2CANTIDAD: TfrxMemoView
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'COD_ART'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2ARTICULO: TfrxMemoView
          Left = 72.200000000000000000
          Width = 288.000000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2PRECIO: TfrxMemoView
          Left = 422.400000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset2ITBS: TfrxMemoView
          Left = 508.800000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."ITBS"]')
          ParentFont = False
        end
        object frxDBDataset2TOTAL: TfrxMemoView
          Left = 585.600000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."TOTAL"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 364.800000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."CANTIDAD"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 349.077180000000000000
        Top = 528.000000000000000000
        Width = 718.821251640000000000
        object Line4: TfrxLineView
          Top = 8.200000000000000000
          Width = 729.600000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Left = 422.400000000000000000
          Top = 16.200000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Venta')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 422.400000000000000000
          Top = 38.400000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ITBs')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 422.400000000000000000
          Top = 59.600000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Descuentos')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 422.400000000000000000
          Top = 80.800000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total a Pagar')
          ParentFont = False
        end
        object frxDBDataset1MONTOPAGO: TfrxMemoView
          Left = 547.200000000000000000
          Top = 82.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MONTOPAGO"]')
          ParentFont = False
        end
        object frxDBDataset1POGXITBS: TfrxMemoView
          Left = 547.200000000000000000
          Top = 39.400000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset1DESCUENTO: TfrxMemoView
          Left = 547.200000000000000000
          Top = 60.600000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset1MONTO: TfrxMemoView
          Left = 546.200000000000000000
          Top = 16.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MONTO"]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 121.800000000000000000
          Top = 19.200000000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Top = 19.200000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cabtidad de Items')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 9.600000000000000000
          Top = 192.000000000000000000
          Width = 182.400000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 508.800000000000000000
          Top = 192.000000000000000000
          Width = 182.400000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          Left = 38.400000000000000000
          Top = 192.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Elaborado por:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 547.200000000000000000
          Top = 192.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibido por:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 28.800000000000000000
        Top = 892.800000000000000000
        Width = 718.821251640000000000
        object Memo34: TfrxMemoView
          Left = 403.200000000000000000
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact V. 3.05 :  Iasa Soft Developer')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Top = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Todos los Derechos Reservados')
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Height = 19.200000000000000000
        Top = 451.200000000000000000
        Width = 718.821251640000000000
        DataSet = series
        DataSetName = 'Series'
        PrintIfDetailEmpty = True
        RowCount = 0
        object SeriesSERIES: TfrxMemoView
          Left = 105.600000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          ShowHint = False
          DataField = 'SERIES'
          DataSet = series
          DataSetName = 'Series'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Series."SERIES"]')
          ParentFont = False
        end
      end
      object Memo11: TfrxMemoView
        Left = 38.400000000000000000
        Top = 255.800000000000000000
        Width = 117.770130000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'Facturado a:')
        ParentFont = False
      end
    end
  end
  object combo: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_MANCOMBO=COD_MANCOMBO'
      'MACOMBOID=MACOMBOID'
      'COD_ART=COD_ART'
      'PRECIO=PRECIO'
      'PRECIO2=PRECIO2'
      'PRECIO3=PRECIO3'
      'ARTICULO=ARTICULO'
      'COSTO=COSTO'
      'COSTO_PR=COSTO_PR')
    DataSet = Dcombo
    BCDToCurrency = False
    Left = 536
    Top = 808
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 448
    Top = 512
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object Dcombo: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a'
      'left join MtArtuculos b On a.cod_art = b.cod_art')
    Params = <>
    MasterFields = 'ARTICULOID'
    MasterSource = datos.DsDetalleMaster
    LinkedFields = 'MACOMBOID'
    Left = 768
    Top = 584
    object DcomboCOD_MANCOMBO: TIntegerField
      FieldName = 'COD_MANCOMBO'
      Required = True
    end
    object DcomboMACOMBOID: TIntegerField
      FieldName = 'MACOMBOID'
    end
    object DcomboCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object DcomboPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object DcomboPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object DcomboPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object DcomboARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object DcomboCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object DcomboCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
  end
  object PRECIOS: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtartuculos')
    Params = <>
    Left = 122
    Top = 792
    object PRECIOSCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object PRECIOSCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 10
    end
    object PRECIOSARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object PRECIOSMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object PRECIOSMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object PRECIOSCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 45
    end
    object PRECIOSCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object PRECIOSSTOCK_M: TFloatField
      FieldName = 'STOCK_M'
    end
    object PRECIOSCOD_SERIE: TIntegerField
      FieldName = 'COD_SERIE'
    end
    object PRECIOSCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object PRECIOSCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object PRECIOSCOD_PROV1: TIntegerField
      FieldName = 'COD_PROV1'
    end
    object PRECIOSEXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object PRECIOSITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 1
    end
    object PRECIOSABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object PRECIOSCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      Size = 22
    end
    object PRECIOSCOD_UV: TIntegerField
      FieldName = 'COD_UV'
    end
    object PRECIOSUSUARIOMOD: TIntegerField
      FieldName = 'USUARIOMOD'
    end
    object PRECIOSFECHA_MOD: TDateField
      FieldName = 'FECHA_MOD'
    end
    object PRECIOSPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object PRECIOSCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object PRECIOSIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object PRECIOSCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object PRECIOSCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
    object PRECIOSPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
      LookupDataSet = datos.Configuracion
    end
    object PRECIOSPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object PRECIOSPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object PRECIOSESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object PRECIOSEXTFOTO: TWideStringField
      FieldName = 'EXTFOTO'
      Size = 4
    end
  end
  object NUMERO1: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(COTI_GEN, 0) from RDB$DATABASE')
    Params = <>
    Left = 162
    Top = 792
    object NUMERO1GEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object QEmpleados: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtempleado')
    Params = <>
    Left = 34
    Top = 800
    object QEmpleadosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object QEmpleadosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QEmpleadosDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QEmpleadosCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object QEmpleadosTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 10
    end
    object QEmpleadosCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object QEmpleadosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object QEmpleadosLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Size = 8
    end
    object QEmpleadosPIN: TWideStringField
      FieldName = 'PIN'
      Size = 8
    end
    object QEmpleadosMODIFICAR_ARTICULOS: TWideStringField
      FieldName = 'MODIFICAR_ARTICULOS'
      Size = 2
    end
    object QEmpleadosELIMINAR: TWideStringField
      FieldName = 'ELIMINAR'
      Size = 2
    end
    object QEmpleadosIMPRIMIR: TWideStringField
      FieldName = 'IMPRIMIR'
      Size = 2
    end
    object QEmpleadosCONTABILIDAD: TWideStringField
      FieldName = 'CONTABILIDAD'
      Size = 2
    end
    object QEmpleadosMODIFICAR_FACTURAS: TWideStringField
      FieldName = 'MODIFICAR_FACTURAS'
      Size = 2
    end
    object QEmpleadosMODIFICAR_UTILIDAD: TWideStringField
      FieldName = 'MODIFICAR_UTILIDAD'
      Size = 2
    end
    object QEmpleadosIMPRIMIR_CUADRE: TWideStringField
      FieldName = 'IMPRIMIR_CUADRE'
      Size = 2
    end
    object QEmpleadosIMPRIMIR_FINACIERO: TWideStringField
      FieldName = 'IMPRIMIR_FINACIERO'
      Size = 2
    end
    object QEmpleadosCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
      Required = True
    end
    object QEmpleadosINICIO: TDateField
      FieldName = 'INICIO'
    end
    object QEmpleadosSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object QEmpleadosCOD: TIntegerField
      FieldName = 'COD'
    end
    object QEmpleadosCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object QEmpleadosFECHA_ING: TDateField
      FieldName = 'FECHA_ING'
    end
    object QEmpleadosESTADOS: TIntegerField
      FieldName = 'ESTADOS'
    end
    object QEmpleadosTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
  end
  object zDetallePrint: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 744
    Top = 536
  end
  object HOLD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'WHERE a.situacion=:situacion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'situacion'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 800
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'situacion'
        ParamType = ptUnknown
      end>
    object HOLDNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object HOLDFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object HOLDTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object HOLDCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object HOLDCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object HOLDNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object HOLDMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object HOLDHORA: TTimeField
      FieldName = 'HORA'
    end
    object HOLDPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object HOLDTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object HOLDMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object HOLDCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object HOLDRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object HOLDCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object HOLDTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object HOLDVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object HOLDSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object HOLDCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object HOLDNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object HOLDRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object HOLDNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object HOLDNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object HOLDDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object HOLDROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object HOLDNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object HOLDMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object HOLDCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object HOLDINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object HOLDDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object HOLDPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object HOLDLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object HOLDCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object HOLDTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object HOLDEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object HOLDDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object HOLDRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object HOLDABONO: TFloatField
      FieldName = 'ABONO'
    end
    object HOLDCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object HOLDNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object HOLDPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object HOLDMESES: TIntegerField
      FieldName = 'MESES'
    end
    object HOLDDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object HOLDPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object HOLDESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object HOLDDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object HOLDCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object HOLDFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object HOLDCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object HOLDCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object HOLDQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object HOLDUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object HOLDCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object HOLDCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object HOLDTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object HOLDPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
      Size = 22
    end
    object HOLDNC: TIntegerField
      FieldName = 'NC'
    end
    object HOLDCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object HOLDNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
  end
  object DsHold: TDataSource
    DataSet = HOLD
    Left = 264
    Top = 800
  end
  object ncf: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from ncf')
    Params = <>
    Left = 472
    Top = 560
    object ncfNCFID: TIntegerField
      FieldName = 'NCFID'
      Required = True
    end
    object ncfNUNTEXT: TWideStringField
      FieldName = 'NUNTEXT'
      Size = 14
    end
    object ncfDESDE: TIntegerField
      FieldName = 'DESDE'
    end
    object ncfHASTA: TIntegerField
      FieldName = 'HASTA'
    end
    object ncfUSO: TIntegerField
      FieldName = 'USO'
    end
    object ncfTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
  end
  object numero_cliente: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(codigo) numero  from cliente')
    Params = <>
    Left = 392
    Top = 808
    object numero_clienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ReadOnly = True
    end
  end
object Config: TfrxDBDataset
    UserName = 'configuracion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_COM=CODIGO_COM'
      'EMPRESA=EMPRESA'
      'RNC=RNC'
      'TELEFONO=TELEFONO'
      'FAX=FAX'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'DIRECCION=DIRECCION'
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
      'CLAVEAUTORIZACION=CLAVEAUTORIZACION'
      'CLAVEANULAR=CLAVEANULAR'
      'TERMINAL_TPV=TERMINAL_TPV'
      'MONTOCF=MONTOCF'
      'REDONDEAR=REDONDEAR')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 568
    Top = 808
   end
  end