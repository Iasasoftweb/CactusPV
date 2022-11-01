object Frmfacturacion: TFrmfacturacion
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'facturaci'#243'n'
  ClientHeight = 570
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 128
    Top = 103
    Width = 55
    Height = 13
    Caption = '# Factura'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 134
    Top = 248
    Width = 77
    Height = 13
    Caption = 'Tipo de Venta'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label24: TLabel
    Left = 17
    Top = 75
    Width = 53
    Height = 13
    Caption = 'Actividad'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel
    Left = 624
    Top = 550
    Width = 131
    Height = 13
    Caption = '[F12] Consultar Precios'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBComboBox1: TDBComboBox
    Left = 80
    Top = 71
    Width = 233
    Height = 26
    DataField = 'TERMINAL'
    DataSource = DsMaster_fact
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'FACTURACION'
      'COTIZACION')
    ParentFont = False
    TabOrder = 14
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 64
    Align = alTop
    Color = 5341520
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 178
      Height = 42
      Caption = 'Facturaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 378
      Top = 2
      Width = 120
      Height = 42
      Caption = 'Cerrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 896
      Top = 2
      Width = 14
      Height = 25
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label25Click
    end
    object Panel2: TPanel
      Left = 8
      Top = 40
      Width = 185
      Height = 2
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 728
      Top = 3
      Width = 134
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = 196
      DataField = 'HORA'
      DataSource = DsMaster_fact
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 728
      Top = 23
      Width = 134
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = 196
      DataField = 'FECHA_FAC'
      DataSource = DsMaster_fact
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 728
      Top = 43
      Width = 134
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = 196
      DataField = 'VENDEDOR'
      DataSource = DsMaster_fact
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Edit8: TEdit
      Left = 504
      Top = 22
      Width = 121
      Height = 21
      TabOrder = 4
      Visible = False
    end
  end
  object DBEdit4: TDBEdit
    Left = 187
    Top = 100
    Width = 111
    Height = 21
    TabStop = False
    Color = 10994931
    DataField = 'NO_FACT1'
    DataSource = DsMaster_fact
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object cxGroupBox1: TcxGroupBox
    Left = 131
    Top = 124
    Caption = 'Datos del Cliente'
    TabOrder = 2
    Height = 119
    Width = 354
    object Label3: TLabel
      Left = 8
      Top = 21
      Width = 109
      Height = 13
      Caption = 'Nombre del Cliente '
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 64
      Width = 52
      Height = 13
      Caption = 'Direccion'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 198
      Top = 67
      Width = 64
      Height = 13
      Caption = 'RNC Cliente'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 37
      Width = 185
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 10994931
      DataField = 'NOM_CLIENTE'
      DataSource = DsMaster_fact
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 80
      Width = 185
      Height = 21
      TabStop = False
      Color = 10994931
      DataField = 'DIRECCION'
      DataSource = DsMaster_fact
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 199
      Top = 80
      Width = 149
      Height = 21
      TabStop = False
      Color = 10994931
      DataField = 'RNC_CLIENTE'
      DataSource = DsMaster_fact
      ReadOnly = True
      TabOrder = 2
    end
    object buscar_cliente: TcxButton
      Left = 196
      Top = 35
      Width = 153
      Height = 25
      Caption = '&Buscar Clientes'
      Enabled = False
      TabOrder = 3
      OnClick = buscar_clienteClick
    end
  end
  object panel: TcxTabControl
    Left = 131
    Top = 267
    Width = 367
    Height = 298
    Enabled = False
    TabOrder = 3
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 292
    ClientRectLeft = 3
    ClientRectRight = 361
    ClientRectTop = 3
    object Label7: TLabel
      Left = 8
      Top = 279
      Width = 60
      Height = 13
      Caption = 'Por Articulos'
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 1
      Width = 361
      Height = 240
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        OnKeyDown = cxGrid1DBTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsARticulos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Articulos'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Width = 171
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Precio 1'
          DataBinding.FieldName = 'PRECIO1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Width = 74
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Precio 2'
          DataBinding.FieldName = 'PRECIO2'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Width = 52
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'EXT.'
          DataBinding.FieldName = 'EXISTENCIA1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object op1: TRadioGroup
      Left = 1
      Top = 240
      Width = 345
      Height = 36
      Caption = 'Criterio de Busqueda'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nombre del Articulo'
        'Referencia')
      TabOrder = 1
      OnClick = op1Click
    end
    object Edit1: TEdit
      Left = 74
      Top = 277
      Width = 231
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 504
    Top = 70
    Width = 404
    Height = 474
    TabOrder = 4
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    Properties.TabSlants.Kind = skCutCorner
    TabSlants.Kind = skCutCorner
    OnChange = cxPageControl1Change
    OnPageChanging = cxPageControl1PageChanging
    ClientRectBottom = 468
    ClientRectLeft = 3
    ClientRectRight = 398
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'Detalle de Factura'
      Enabled = False
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 176
        Top = 360
        Width = 29
        Height = 13
        Caption = 'Total'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 176
        Top = 379
        Width = 60
        Height = 13
        Caption = 'Descuento'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 178
        Top = 400
        Width = 25
        Height = 13
        Caption = 'ITBs'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 177
        Top = 421
        Width = 58
        Height = 13
        Caption = 'Total Gral.'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxGrid3: TcxGrid
        Left = 1
        Top = 3
        Width = 396
        Height = 351
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid3DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSZdetalle
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          Filtering.ColumnPopup.MultiSelect = False
          OptionsView.GroupByBox = False
          object cxGrid3DBTableView1Column1: TcxGridDBColumn
            Caption = 'Articulo'
            DataBinding.FieldName = 'ARTICULO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Width = 160
          end
          object cxGrid3DBTableView1Column2: TcxGridDBColumn
            Caption = 'Cant.'
            DataBinding.FieldName = 'CANTIDAD'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Width = 39
          end
          object cxGrid3DBTableView1Column3: TcxGridDBColumn
            Caption = 'Precio'
            DataBinding.FieldName = 'PRECIO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
          end
          object cxGrid3DBTableView1Column4: TcxGridDBColumn
            Caption = 'Importe'
            DataBinding.FieldName = 'IMPORTE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
          end
          object cxGrid3DBTableView1Column5: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
          end
          object cxGrid3DBTableView1Column6: TcxGridDBColumn
            DataBinding.FieldName = 'NO_FACT1'
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object Currency2: TcxCurrencyEdit
        Left = 256
        Top = 375
        Margins.Right = 20
        TabStop = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.Color = 10994931
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindow
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Width = 121
      end
      object Currency1: TcxCurrencyEdit
        Left = 256
        Top = 354
        Margins.Right = 20
        TabStop = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.Color = 10994931
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindow
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 2
        Width = 121
      end
      object Currency3: TcxCurrencyEdit
        Left = 256
        Top = 397
        Margins.Right = 20
        TabStop = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.Color = 10994931
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindow
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 3
        Width = 121
      end
      object Currency4: TcxCurrencyEdit
        Left = 256
        Top = 418
        Margins.Right = 20
        TabStop = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.BorderColor = clWhite
        Style.Color = 196
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 4
        Width = 121
      end
      object cxButton4: TcxButton
        Left = 16
        Top = 360
        Width = 129
        Height = 41
        Caption = '&Eliminar Articulos [F3]'
        TabOrder = 5
        OnClick = cxButton4Click
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Facturas en Hold'
      ImageIndex = 1
      object Label19: TLabel
        Left = 26
        Top = 416
        Width = 95
        Height = 13
        Caption = 'Por Numero de Fact'
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 1
        Width = 392
        Height = 320
        TabOrder = 0
        object cxGrid4DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid4DBTableView1DblClick
          OnKeyDown = cxGrid4DBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsMaster_Hold
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid4DBTableView1Column1: TcxGridDBColumn
            Caption = '# Fact'
            DataBinding.FieldName = 'NO_FACT1'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Width = 104
          end
          object cxGrid4DBTableView1Column2: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOM_CLIENTE'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
          end
          object cxGrid4DBTableView1Column3: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'MONTOPAGO'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Width = 73
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
      object op2: TRadioGroup
        Left = 25
        Top = 373
        Width = 345
        Height = 36
        Caption = 'Criterio de Busqueda'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'No de Factura'
          'Nombre del Cliente')
        TabOrder = 1
        OnClick = op2Click
      end
      object Edit4: TEdit
        Left = 136
        Top = 415
        Width = 233
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = Edit4Change
      end
      object cxButton2: TcxButton
        Left = 22
        Top = 327
        Width = 353
        Height = 40
        Caption = 'Actualizar HOLD'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton2Click
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Facturas Devueltas'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid5: TcxGrid
        Left = 0
        Top = 1
        Width = 392
        Height = 320
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          OnKeyDown = cxGrid4DBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dSRETORNO
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = '# Fact'
            DataBinding.FieldName = 'NO_FACT1'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Width = 104
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOM_CLIENTE'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'MONTOPAGO'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Width = 73
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxButton3: TcxButton
        Left = 22
        Top = 327
        Width = 353
        Height = 40
        Caption = 'Actualizar Facturas Devueltas'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton3Click
      end
    end
  end
  object nuevo: TcxButton
    Left = 8
    Top = 107
    Width = 117
    Height = 58
    Caption = 'Abrir Factura [F2]'
    TabOrder = 5
  end
  object guardar: TcxButton
    Left = 8
    Top = 232
    Width = 117
    Height = 60
    Caption = '&Enviar Facturas [F5]'
    Enabled = False
    TabOrder = 6
    OnClick = guardarClick
  end
  object hold: TcxButton
    Left = 8
    Top = 424
    Width = 117
    Height = 67
    Caption = 'Enviar a HOLD [F11]'
    Enabled = False
    TabOrder = 7
    OnClick = holdClick
  end
  object cerrar: TcxButton
    Left = 8
    Top = 168
    Width = 117
    Height = 61
    Caption = 'Terminar Factura [F7]'
    Enabled = False
    TabOrder = 8
    OnClick = cerrarClick
  end
  object descuento: TcxButton
    Left = 8
    Top = 294
    Width = 117
    Height = 60
    Caption = 'Aplicar Descuento [F6]'
    Enabled = False
    TabOrder = 9
    OnClick = descuentoClick
  end
  object cxComboBox1: TcxComboBox
    Left = 217
    Top = 245
    Properties.Items.Strings = (
      'Venta Normal'
      'Venta al por Mayor')
    Properties.MaxLength = 0
    TabOrder = 10
    Text = 'Venta Normal'
    Width = 177
  end
  object Panel3: TPanel
    Left = 391
    Top = 217
    Width = 287
    Height = 351
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvSpace
    Color = 196
    ParentBackground = False
    TabOrder = 11
    Visible = False
    object Label9: TLabel
      Left = 66
      Top = 10
      Width = 137
      Height = 19
      Caption = 'Buscar Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 265
      Top = 0
      Width = 11
      Height = 19
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label10Click
    end
    object cxGrid2: TcxGrid
      Left = 2
      Top = 35
      Width = 281
      Height = 310
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cxGrid2DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid2DBTableView1DblClick
        OnKeyDown = cxGrid2DBTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsZvendedor
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Vendedor'
          DataBinding.FieldName = 'NOMBRES_EMP'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Width = 318
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object Panel4: TPanel
    Left = 555
    Top = 98
    Width = 329
    Height = 194
    BevelKind = bkSoft
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 10994931
    ParentBackground = False
    TabOrder = 12
    Visible = False
    object Label15: TLabel
      Left = 8
      Top = 0
      Width = 38
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 8
      Top = 33
      Width = 111
      Height = 13
      Caption = 'Nombre del Articulo'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 8
      Top = 80
      Width = 50
      Height = 13
      Caption = 'Cantidad'
      FocusControl = DBEdit10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 161
      Top = 79
      Width = 35
      Height = 13
      Caption = 'Precio'
      FocusControl = DBEdit11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 166
      Top = 3
      Width = 32
      Height = 13
      Caption = 'Costo'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 166
      Top = 29
      Width = 45
      Height = 13
      Caption = 'Precio 1'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 13
      Width = 107
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 10994931
      DataField = 'COD_ART'
      DataSource = DSZdetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 48
      Width = 589
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 10994931
      DataField = 'ARTICULO'
      DataSource = DSZdetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Panel5: TPanel
      Left = 0
      Top = 68
      Width = 321
      Height = 3
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 8
      Top = 96
      Width = 134
      Height = 21
      DataField = 'CANTIDAD'
      DataSource = DSZdetalle
      TabOrder = 3
      OnKeyDown = DBEdit10KeyDown
    end
    object DBEdit11: TDBEdit
      Left = 161
      Top = 95
      Width = 134
      Height = 21
      DataField = 'PRECIO'
      DataSource = DSZdetalle
      TabOrder = 4
      OnKeyDown = DBEdit11KeyDown
    end
    object DBEdit12: TDBEdit
      Left = 211
      Top = 1
      Width = 109
      Height = 22
      TabStop = False
      Color = clBlack
      DataField = 'COSTOS'
      DataSource = DSZdetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object cxButton7: TcxButton
      Left = 24
      Top = 140
      Width = 121
      Height = 37
      Caption = '&Aplicar Cambios'
      TabOrder = 6
      OnClick = cxButton7Click
    end
    object cxButton8: TcxButton
      Left = 151
      Top = 141
      Width = 123
      Height = 36
      Caption = '&Cancelar'
      TabOrder = 7
      OnClick = cxButton8Click
    end
    object Edit2: TEdit
      Left = 184
      Top = 25
      Width = 121
      Height = 21
      TabOrder = 8
      Text = 'Edit2'
      Visible = False
    end
    object Edit3: TEdit
      Left = 184
      Top = 41
      Width = 121
      Height = 21
      TabOrder = 9
      Text = 'Edit2'
      Visible = False
    end
    object DBEdit13: TDBEdit
      Left = 212
      Top = 25
      Width = 109
      Height = 22
      TabStop = False
      Color = clBlack
      DataField = 'PRECIO1'
      DataSource = DSZdetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object Panel6: TPanel
    Left = 256
    Top = 336
    Width = 372
    Height = 102
    Color = 196
    ParentBackground = False
    TabOrder = 13
    Visible = False
    object Panel7: TPanel
      Left = 4
      Top = 4
      Width = 365
      Height = 94
      Color = 10994931
      ParentBackground = False
      TabOrder = 0
      object Label20: TLabel
        Left = 24
        Top = 10
        Width = 155
        Height = 13
        Caption = 'Entre Clave de Autorizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 201
        Top = 11
        Width = 63
        Height = 13
        Caption = 'Descuento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit5: TEdit
        Left = 24
        Top = 25
        Width = 159
        Height = 31
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
        OnKeyDown = Edit5KeyDown
      end
      object currency7: TcxCurrencyEdit
        Left = 200
        Top = 25
        Enabled = False
        ParentFont = False
        Style.Color = 8421631
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clYellow
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyDown = currency7KeyDown
        Width = 153
      end
      object cxButton1: TcxButton
        Left = 129
        Top = 58
        Width = 106
        Height = 31
        Caption = '&Ok'
        TabOrder = 2
        OnClick = cxButton1Click
      end
    end
  end
  object rehabilitar: TcxButton
    Left = 8
    Top = 358
    Width = 117
    Height = 60
    Caption = 'Rehabilitar'
    Enabled = False
    TabOrder = 15
    OnClick = rehabilitarClick
  end
  object Edit6: TEdit
    Left = 336
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 16
    Text = 'Edit6'
    Visible = False
  end
  object Edit7: TEdit
    Left = 336
    Top = 98
    Width = 121
    Height = 21
    TabOrder = 17
    Text = 'Edit6'
    Visible = False
  end
  object DsMaster_fact: TDataSource
    DataSet = datos.FbqMaster_Fact
    Left = 888
    Top = 48
  end
  object DsARticulos: TDataSource
    DataSet = FbRArticulos
    Left = 896
    Top = 128
  end
  object FbRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtarticulo')
    Params = <>
    Left = 888
    Top = 432
    object FbRArticulosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 18
    end
    object FbRArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object FbRArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object FbRArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object FbRArticulosCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 25
    end
    object FbRArticulosCATEGORIA: TWideStringField
      FieldName = 'CATEGORIA'
      Size = 15
    end
    object FbRArticulosCANT_MINI: TFloatField
      FieldName = 'CANT_MINI'
    end
    object FbRArticulosSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 15
    end
    object FbRArticulosALMACEN: TWideStringField
      FieldName = 'ALMACEN'
      Size = 3
    end
    object FbRArticulosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object FbRArticulosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object FbRArticulosCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object FbRArticulosCOMENTARIO: TMemoField
      FieldName = 'COMENTARIO'
      BlobType = ftMemo
    end
    object FbRArticulosPROVEEDOR1: TWideStringField
      FieldName = 'PROVEEDOR1'
      Size = 35
    end
    object FbRArticulosPROVEEDOR2: TWideStringField
      FieldName = 'PROVEEDOR2'
      Size = 35
    end
    object FbRArticulosIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object FbRArticulosEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
    end
    object FbRArticulosITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 1
    end
    object FbRArticulosABREVIADO1: TWideStringField
      FieldName = 'ABREVIADO1'
      Size = 30
    end
    object FbRArticulosUNIDAD_VENTA: TWideStringField
      FieldName = 'UNIDAD_VENTA'
      Size = 15
    end
    object FbRArticulosCODIGO1: TWideStringField
      FieldName = 'CODIGO1'
      Size = 10
    end
    object FbRArticulosMODIFUSUARIO: TWideStringField
      FieldName = 'MODIFUSUARIO'
      Size = 30
    end
    object FbRArticulosFECHAMODI: TDateField
      FieldName = 'FECHAMODI'
    end
    object FbRArticulosEXISTENCIA1: TFloatField
      FieldName = 'EXISTENCIA1'
    end
    object FbRArticulosABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 17
    end
    object FbRArticulosPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 2
    end
    object FbRArticulosCODIGOXTR: TIntegerField
      FieldName = 'CODIGOXTR'
    end
    object FbRArticulosTIPOCOD: TWideStringField
      FieldName = 'TIPOCOD'
      Size = 10
    end
    object FbRArticulosCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 15
    end
    object FbRArticulosESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object FbRArticulosCANTIDAD_MAXIMA: TFloatField
      FieldName = 'CANTIDAD_MAXIMA'
    end
    object FbRArticulosCOD1: TIntegerField
      FieldName = 'COD1'
    end
    object FbRArticulosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object FbRArticulosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object FbRArticulosBENEF: TFloatField
      FieldName = 'BENEF'
    end
    object FbRArticulosBENEF_PORC: TWideStringField
      FieldName = 'BENEF_PORC'
      Size = 2
    end
    object FbRArticulosPRECIOABIERTO: TWideStringField
      FieldName = 'PRECIOABIERTO'
      Size = 2
    end
    object FbRArticulosCOD_ART1: TIntegerField
      FieldName = 'COD_ART1'
    end
    object FbRArticulosCOCINA: TWideStringField
      FieldName = 'COCINA'
      Size = 2
    end
    object FbRArticulosCLA_COSTO: TWideStringField
      FieldName = 'CLA_COSTO'
      Size = 10
    end
    object FbRArticulosCLA_PRECIO: TWideStringField
      FieldName = 'CLA_PRECIO'
      Size = 10
    end
  end
  object Zvendedor: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtempleado')
    Params = <>
    Left = 888
    Top = 200
    object ZvendedorCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object ZvendedorNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZvendedorDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object ZvendedorCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object ZvendedorTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 10
    end
    object ZvendedorCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object ZvendedorTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object ZvendedorLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Size = 8
    end
    object ZvendedorPIN: TWideStringField
      FieldName = 'PIN'
      Size = 8
    end
    object ZvendedorMODIFICAR_ARTICULOS: TWideStringField
      FieldName = 'MODIFICAR_ARTICULOS'
      Size = 2
    end
    object ZvendedorELIMINAR: TWideStringField
      FieldName = 'ELIMINAR'
      Size = 2
    end
    object ZvendedorIMPRIMIR: TWideStringField
      FieldName = 'IMPRIMIR'
      Size = 2
    end
    object ZvendedorCONTABILIDAD: TWideStringField
      FieldName = 'CONTABILIDAD'
      Size = 2
    end
    object ZvendedorMODIFICAR_FACTURAS: TWideStringField
      FieldName = 'MODIFICAR_FACTURAS'
      Size = 2
    end
    object ZvendedorMODIFICAR_UTILIDAD: TWideStringField
      FieldName = 'MODIFICAR_UTILIDAD'
      Size = 2
    end
    object ZvendedorIMPRIMIR_CUADRE: TWideStringField
      FieldName = 'IMPRIMIR_CUADRE'
      Size = 2
    end
    object ZvendedorIMPRIMIR_FINACIERO: TWideStringField
      FieldName = 'IMPRIMIR_FINACIERO'
      Size = 2
    end
    object ZvendedorCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
    end
    object Zvendedordescmax: TFloatField
      FieldName = 'descmax'
    end
    object ZvendedorINICIO: TDateField
      FieldName = 'INICIO'
    end
    object ZvendedorSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object ZvendedorCOD: TIntegerField
      FieldName = 'COD'
    end
    object ZvendedorCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object ZvendedorFECHA_ING: TDateField
      FieldName = 'FECHA_ING'
    end
  end
  object DsZvendedor: TDataSource
    DataSet = Zvendedor
    Left = 528
    Top = 128
  end
  object numero: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(G_nofact, 0) from RDB$DATABASE')
    Params = <>
    Left = 344
    Top = 56
    object numeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfOffice11
    NativeStyle = False
    SkinName = 'Office2007Silver'
    Left = 896
    Top = 512
  end
  object DSZdetalle: TDataSource
    Left = 576
    Top = 272
  end
  object Master_Hold: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from Master_Fact'
      'Where situacion ='#39'HOLD'#39)
    Params = <>
    Left = 880
    Top = 320
    object Master_HoldNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object Master_HoldFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object Master_HoldTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Master_HoldCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object Master_HoldCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object Master_HoldNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object Master_HoldMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object Master_HoldHORA: TTimeField
      FieldName = 'HORA'
    end
    object Master_HoldPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object Master_HoldTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object Master_HoldMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object Master_HoldCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object Master_HoldRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object Master_HoldCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object Master_HoldTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object Master_HoldVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object Master_HoldSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object Master_HoldCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object Master_HoldNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object Master_HoldRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object Master_HoldNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object Master_HoldNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object Master_HoldDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object Master_HoldROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object Master_HoldNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object Master_HoldMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object Master_HoldCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object Master_HoldINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object Master_HoldDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object Master_HoldPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object Master_HoldLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object Master_HoldCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object Master_HoldTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object Master_HoldEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object Master_HoldDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object Master_HoldRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object Master_HoldABONO: TFloatField
      FieldName = 'ABONO'
    end
    object Master_HoldCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object Master_HoldNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object Master_HoldPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object Master_HoldMESES: TIntegerField
      FieldName = 'MESES'
    end
    object Master_HoldDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object Master_HoldPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object Master_HoldESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object Master_HoldDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object Master_HoldCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object Master_HoldFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
  end
  object DsMaster_Hold: TDataSource
    DataSet = Master_Hold
    Left = 848
    Top = 136
  end
  object Master_Devueltos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from master_devueltos'
      'where situacion='#39'DEVUELTOS'#39)
    Params = <>
    Left = 888
    Top = 272
    object Master_DevueltosNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object Master_DevueltosNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object Master_DevueltosFECHA_FACT: TDateField
      FieldName = 'FECHA_FACT'
    end
    object Master_DevueltosTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Master_DevueltosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object Master_DevueltosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object Master_DevueltosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 35
    end
    object Master_DevueltosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 35
    end
    object Master_DevueltosCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object Master_DevueltosPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object Master_DevueltosIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object Master_DevueltosITBS: TFloatField
      FieldName = 'ITBS'
    end
    object Master_DevueltosITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object Master_DevueltosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Master_DevueltosDESC1: TFloatField
      FieldName = 'DESC1'
    end
    object Master_DevueltosCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object Master_DevueltosITB: TWideStringField
      FieldName = 'ITB'
      Size = 1
    end
    object Master_DevueltosCOBROITB: TWideStringField
      FieldName = 'COBROITB'
      Size = 1
    end
    object Master_DevueltosUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Master_DevueltosCOSTOS: TFloatField
      FieldName = 'COSTOS'
    end
    object Master_DevueltosESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object Master_DevueltosTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object Master_DevueltosABREVIADO: TWideStringField
      FieldName = 'ABREVIADO'
      Size = 13
    end
    object Master_DevueltosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object Master_DevueltosCOD_CLIENT: TIntegerField
      FieldName = 'COD_CLIENT'
    end
    object Master_DevueltosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object Master_DevueltosCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object Master_DevueltosCONDICION_ART: TWideStringField
      FieldName = 'CONDICION_ART'
      Size = 10
    end
    object Master_DevueltosLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object Master_DevueltosOPIT: TIntegerField
      FieldName = 'OPIT'
    end
    object Master_DevueltosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object Master_DevueltosEMPLEADO: TWideStringField
      FieldName = 'EMPLEADO'
      Size = 30
    end
    object Master_DevueltosCANT: TFloatField
      FieldName = 'CANT'
    end
    object Master_DevueltosTURNO: TIntegerField
      FieldName = 'TURNO'
    end
    object Master_DevueltosCLAVE_COSTO: TWideStringField
      FieldName = 'CLAVE_COSTO'
      Size = 10
    end
  end
  object MontoUpdate: TZQuery
    Connection = datos.Data
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 896
    Top = 488
    object WideStringField1: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
  end
  object verifica: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 880
    Top = 376
  end
  object FbRetorno: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from Master_Fact'
      'Where situacion ='#39'RETORNAR'#39)
    Params = <>
    Left = 896
    Top = 240
    object FbRetornoNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object FbRetornoFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object FbRetornoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object FbRetornoCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object FbRetornoCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object FbRetornoNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object FbRetornoMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object FbRetornoHORA: TTimeField
      FieldName = 'HORA'
    end
    object FbRetornoPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object FbRetornoTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object FbRetornoMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object FbRetornoCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object FbRetornoRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object FbRetornoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FbRetornoTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object FbRetornoVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object FbRetornoSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object FbRetornoCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object FbRetornoNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object FbRetornoRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object FbRetornoNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object FbRetornoNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object FbRetornoDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object FbRetornoROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object FbRetornoNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object FbRetornoMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object FbRetornoCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object FbRetornoINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object FbRetornoDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object FbRetornoPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object FbRetornoLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object FbRetornoCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object FbRetornoTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object FbRetornoEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object FbRetornoDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object FbRetornoRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object FbRetornoABONO: TFloatField
      FieldName = 'ABONO'
    end
    object FbRetornoCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object FbRetornoNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object FbRetornoPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object FbRetornoMESES: TIntegerField
      FieldName = 'MESES'
    end
    object FbRetornoDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object FbRetornoPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object FbRetornoESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object FbRetornoDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object FbRetornoCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object FbRetornoFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object FbRetornoCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object FbRetornoCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object FbRetornoQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
  end
  object dSRETORNO: TDataSource
    DataSet = FbRetorno
    Left = 688
    Top = 456
  end
end
