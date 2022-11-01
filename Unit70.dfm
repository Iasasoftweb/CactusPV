object FrmRma: TFrmRma
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Control de Equipos RMA'
  ClientHeight = 589
  ClientWidth = 936
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 8
    TabOrder = 0
    Height = 89
    Width = 919
    object Label1: TLabel
      Left = 96
      Top = 14
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 22
      Top = 34
      Width = 85
      Height = 13
      Caption = 'Fecha de Entrada'
      FocusControl = cxDBDateEdit1
    end
    object Label3: TLabel
      Left = 28
      Top = 58
      Width = 79
      Height = 13
      Caption = 'Hora de Entrada'
      FocusControl = cxDBTimeEdit1
    end
    object Label8: TLabel
      Left = 344
      Top = 11
      Width = 10
      Height = 13
      Caption = 'Id'
      FocusControl = cxDBSpinEdit3
    end
    object Label9: TLabel
      Left = 280
      Top = 33
      Width = 76
      Height = 13
      Caption = 'Nombre T'#233'cnico'
      FocusControl = cxDBTextEdit4
    end
    object Label10: TLabel
      Left = 721
      Top = 3
      Width = 156
      Height = 75
      Caption = 'RMA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -64
      Font.Name = 'Eras Bold ITC'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 425
      Top = 7
      Width = 8
      Height = 18
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 120
      Top = 8
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = DsRmaM
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 12582911
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 88
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 120
      Top = 30
      TabStop = False
      DataBinding.DataField = 'FECHA_ENTRADA'
      DataBinding.DataSource = DsRmaM
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Black'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Width = 121
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 120
      Top = 53
      TabStop = False
      DataBinding.DataField = 'HORAENTRADA'
      DataBinding.DataSource = DsRmaM
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Black'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 2
      Width = 121
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 359
      Top = 8
      DataBinding.DataField = 'IDTECNICO'
      DataBinding.DataSource = DsRmaM
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      OnExit = cxDBSpinEdit3Exit
      OnKeyDown = cxDBSpinEdit3KeyDown
      Width = 65
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 360
      Top = 31
      DataBinding.DataField = 'NOMBRES_EMP'
      DataBinding.DataSource = DsRmaM
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 12108797
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 281
    end
    object cxButton3: TcxButton
      Left = 360
      Top = 54
      Width = 161
      Height = 25
      Caption = 'Buscar T'#233'cnico'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 5
      OnClick = cxButton3Click
    end
  end
  object op11: TcxPageControl
    Left = 8
    Top = 103
    Width = 919
    Height = 442
    TabOrder = 1
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    LookAndFeel.SkinName = 'Caramel'
    ClientRectBottom = 435
    ClientRectLeft = 4
    ClientRectRight = 912
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'Resepci'#243'n  '
      ImageIndex = 0
      object Label11: TLabel
        Left = 592
        Top = 16
        Width = 70
        Height = 13
        Caption = 'Tipo de Equipo'
        FocusControl = cxDBTextEdit5
      end
      object Label12: TLabel
        Left = 519
        Top = 16
        Width = 10
        Height = 13
        Caption = 'Id'
        FocusControl = cxDBSpinEdit4
      end
      object Label13: TLabel
        Left = 25
        Top = 360
        Width = 80
        Height = 13
        Caption = 'Fecha Prometida'
        FocusControl = cxDBDateEdit2
      end
      object Label14: TLabel
        Left = 11
        Top = 162
        Width = 9
        Height = 19
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 516
        Top = 61
        Width = 64
        Height = 13
        Caption = 'Numero Serie'
        FocusControl = cxDBTextEdit5
      end
      object Label19: TLabel
        Left = 91
        Top = 35
        Width = 8
        Height = 18
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 17
        Top = 360
        Width = 8
        Height = 18
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 592
        Top = 58
        DataBinding.DataField = 'NO_SERIAL'
        DataBinding.DataSource = DsRmaM
        ParentFont = False
        Properties.ReadOnly = False
        Style.Color = 14215400
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 9
        Width = 279
      end
      object cxGroupBox5: TcxGroupBox
        Left = 472
        Top = 176
        Caption = 'Observaci'#243'n Tecnica'
        ParentBackground = False
        ParentColor = False
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 169
        Width = 417
        object cxDBMemo3: TcxDBMemo
          Left = 2
          Top = 18
          Align = alClient
          DataBinding.DataField = 'OBSERVACIONTECNICA'
          DataBinding.DataSource = DsRmaM
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 149
          Width = 413
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 8
        Top = 13
        Caption = 'Datos del Clientes'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 146
        Width = 449
        object Label4: TLabel
          Left = 97
          Top = 32
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = cxDBSpinEdit2
        end
        object Label5: TLabel
          Left = 17
          Top = 59
          Width = 90
          Height = 13
          Caption = 'Nombre del Cliente'
          FocusControl = cxDBTextEdit1
        end
        object Label6: TLabel
          Left = 61
          Top = 86
          Width = 43
          Height = 13
          Caption = 'Direcci'#243'n'
          FocusControl = cxDBTextEdit2
        end
        object Label7: TLabel
          Left = 62
          Top = 112
          Width = 42
          Height = 13
          Caption = 'Telefono'
          FocusControl = cxDBTextEdit3
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 112
          Top = 29
          DataBinding.DataField = 'IDCLIENTE'
          DataBinding.DataSource = DsRmaM
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          OnExit = cxDBSpinEdit2Exit
          OnKeyDown = cxDBSpinEdit2KeyDown
          Width = 76
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 112
          Top = 56
          DataBinding.DataField = 'NOMBRES'
          DataBinding.DataSource = DsRmaM
          ParentFont = False
          Properties.ReadOnly = True
          Style.Color = clInactiveCaption
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 330
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 112
          Top = 83
          DataBinding.DataField = 'DIRECCION'
          DataBinding.DataSource = DsRmaM
          ParentFont = False
          Properties.ReadOnly = True
          Style.Color = clInactiveCaption
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 330
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 112
          Top = 110
          DataBinding.DataField = 'TELEFONO'
          DataBinding.DataSource = DsRmaM
          ParentFont = False
          Properties.ReadOnly = True
          Style.Color = clInactiveCaption
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 121
        end
        object cxButton1: TcxButton
          Left = 194
          Top = 25
          Width = 112
          Height = 25
          Caption = 'Buscar Cliente'
          LookAndFeel.SkinName = 'Caramel'
          OptionsImage.ImageIndex = 980
          OptionsImage.Images = FrmHome.RibbonImages16
          TabOrder = 4
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 312
          Top = 25
          Width = 130
          Height = 25
          Caption = 'Crear Nuevo Cliente'
          LookAndFeel.SkinName = 'Caramel'
          OptionsImage.ImageIndex = 1039
          OptionsImage.Images = FrmHome.RibbonImages16
          TabOrder = 5
          OnClick = cxButton2Click
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 463
        Top = 80
        Caption = 'Descripci'#243'n del Equipo'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 79
        Width = 410
        object Label17: TLabel
          Left = 1
          Top = 8
          Width = 9
          Height = 19
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBMemo1: TcxDBMemo
          Left = 2
          Top = 18
          Align = alClient
          DataBinding.DataField = 'OBSERVACIONEQUIPO'
          DataBinding.DataSource = DsRmaM
          Properties.CharCase = ecUpperCase
          Style.Color = 11794687
          TabOrder = 0
          Height = 59
          Width = 406
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 16
        Top = 165
        Caption = 'Fallas Segun el Cliente'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Height = 177
        Width = 441
        object cxDBMemo2: TcxDBMemo
          Left = 2
          Top = 18
          Align = alClient
          DataBinding.DataField = 'FALLAEQUIPO'
          DataBinding.DataSource = DsRmaM
          Properties.CharCase = ecUpperCase
          Style.Color = 12582911
          TabOrder = 0
          Height = 157
          Width = 437
        end
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 592
        Top = 31
        DataBinding.DataField = 'TIPOEQUIPO'
        DataBinding.DataSource = DsRmaM
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = 14215400
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 279
      end
      object cxDBSpinEdit4: TcxDBSpinEdit
        Left = 520
        Top = 31
        DataBinding.DataField = 'IDTIPOEQUIPO'
        DataBinding.DataSource = DsRmaM
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 4
        OnExit = cxDBSpinEdit4Exit
        OnKeyDown = cxDBSpinEdit4KeyDown
        Width = 66
      end
      object cxButton4: TcxButton
        Left = 465
        Top = 28
        Width = 49
        Height = 25
        LookAndFeel.SkinName = 'Caramel'
        OptionsImage.ImageIndex = 980
        OptionsImage.Images = FrmHome.RibbonImages16
        TabOrder = 5
        OnClick = cxButton4Click
      end
      object Panel2: TPanel
        Left = 551
        Top = -38
        Width = 378
        Height = 112
        TabOrder = 6
        Visible = False
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 376
          Height = 110
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Franklin Gothic Medium'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.SkinName = 'Caramel'
          object cxGrid2DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid2DBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DsQequipos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = 'No Data'
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
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
            object cxGrid2DBTableView1TIPOEQUIPO: TcxGridDBColumn
              Caption = 'Tipo de Equipos'
              DataBinding.FieldName = 'TIPOEQUIPO'
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
              Options.Grouping = False
              Width = 300
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 25
        Top = 376
        DataBinding.DataField = 'FECHA_PROMETIDA'
        DataBinding.DataSource = DsRmaM
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 8
        Width = 200
      end
      object cxButton11: TcxButton
        Left = 717
        Top = 380
        Width = 188
        Height = 25
        Caption = 'Imprimir Recibo de Entrada'
        LookAndFeel.SkinName = 'Caramel'
        OptionsImage.ImageIndex = 1007
        OptionsImage.Images = FrmHome.RibbonImages16
        TabOrder = 10
        OnClick = cxButton11Click
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Presupuesto'
      ImageIndex = 1
      object cxGrid3: TcxGrid
        Left = 10
        Top = 43
        Width = 879
        Height = 349
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Franklin Gothic Demi'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Caramel'
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnEditChanged = cxGrid3DBTableView1EditChanged
          DataController.DataSource = DsRmad
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Monto Total =RD$,0'
              Kind = skSum
              FieldName = 'TOTAL'
              Column = cxGrid3DBTableView1TOTAL
            end
            item
              Format = 'Total de Items =,0'
              Kind = skCount
              FieldName = 'ARTICULO'
              Column = cxGrid3DBTableView1ARTICULO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = 'No Data'
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid3DBTableView1IDARTICULO: TcxGridDBColumn
            Caption = 'Cod'
            DataBinding.FieldName = 'IDARTICULO'
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
          object cxGrid3DBTableView1ARTICULO: TcxGridDBColumn
            Caption = 'Nombre del Articulo / Servicio'
            DataBinding.FieldName = 'ARTICULOTXT'
            HeaderAlignmentHorz = taCenter
            MinWidth = 360
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
            Width = 360
          end
          object cxGrid3DBTableView1CANT: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'CANT'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object cxGrid3DBTableView1PRECIO: TcxGridDBColumn
            Caption = 'Precio'
            DataBinding.FieldName = 'PRECIO'
            HeaderAlignmentHorz = taCenter
            MinWidth = 77
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
            Width = 77
          end
          object cxGrid3DBTableView1ITB: TcxGridDBColumn
            Caption = 'Itbs'
            DataBinding.FieldName = 'ITB'
            HeaderAlignmentHorz = taCenter
            MinWidth = 98
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
            Width = 98
          end
          object cxGrid3DBTableView1TOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            MinWidth = 180
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
            Width = 180
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object cxButton6: TcxButton
        Left = 10
        Top = 12
        Width = 121
        Height = 25
        Caption = 'A'#241'adir ITEMS'
        LookAndFeel.SkinName = 'Caramel'
        OptionsImage.ImageIndex = 1003
        OptionsImage.Images = FrmHome.RibbonImages16
        TabOrder = 1
        OnClick = cxButton6Click
      end
      object cxButton7: TcxButton
        Left = 280
        Top = 12
        Width = 121
        Height = 25
        Caption = 'Eliminar ITEMS'
        LookAndFeel.SkinName = 'Caramel'
        OptionsImage.ImageIndex = 995
        OptionsImage.Images = FrmHome.RibbonImages16
        TabOrder = 2
        OnClick = cxButton7Click
      end
      object cxButton8: TcxButton
        Left = 137
        Top = 12
        Width = 137
        Height = 25
        Caption = 'A'#241'adir Notas'
        LookAndFeel.SkinName = 'Caramel'
        OptionsImage.ImageIndex = 924
        OptionsImage.Images = FrmHome.RibbonImages16
        TabOrder = 3
        OnClick = cxButton8Click
      end
      object Panel3: TPanel
        Left = 137
        Top = 33
        Width = 360
        Height = 136
        BevelKind = bkSoft
        BevelOuter = bvLowered
        TabOrder = 4
        Visible = False
        object Label20: TLabel
          Left = 19
          Top = 40
          Width = 124
          Height = 13
          Caption = 'Descripci'#243'n de la Nota'
          FocusControl = cxDBTextEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 19
          Top = 83
          Width = 32
          Height = 13
          Caption = 'Costo'
          FocusControl = cxDBTextEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 354
          Height = 32
          Align = alTop
          Caption = 'Agragar Notas'
          Color = 13602864
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 19
          Top = 56
          Width = 318
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object cxCurrencyEdit1: TcxCurrencyEdit
          Left = 19
          Top = 96
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.SkinName = 'Caramel'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 2
          Width = 137
        end
        object cxButton9: TcxButton
          Left = 181
          Top = 91
          Width = 75
          Height = 25
          Caption = 'Ok'
          LookAndFeel.SkinName = 'Caramel'
          OptionsImage.ImageIndex = 1016
          OptionsImage.Images = FrmHome.RibbonImages16
          TabOrder = 3
          OnClick = cxButton9Click
        end
        object cxButton10: TcxButton
          Left = 262
          Top = 92
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          LookAndFeel.SkinName = 'Caramel'
          OptionsImage.ImageIndex = 996
          OptionsImage.Images = FrmHome.RibbonImages16
          TabOrder = 4
          OnClick = cxButton10Click
        end
      end
      object Edit2: TEdit
        Left = 18
        Top = 208
        Width = 121
        Height = 21
        TabOrder = 5
        Visible = False
      end
    end
  end
  object Panel1: TPanel
    Left = 368
    Top = 66
    Width = 397
    Height = 132
    TabOrder = 2
    Visible = False
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 395
      Height = 130
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Franklin Gothic Medium'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsempleado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1COD_EMP: TcxGridDBColumn
          Caption = 'Cod'
          DataBinding.FieldName = 'COD_EMP'
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
          Options.Grouping = False
        end
        object cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn
          Caption = 'Nombre del Tecnico'
          DataBinding.FieldName = 'NOMBRES_EMP'
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
          Options.Grouping = False
          Width = 309
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxButton5: TcxButton
    Left = 477
    Top = 551
    Width = 136
    Height = 35
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    OnClick = cxButton5Click
  end
  object guardar: TcxButton
    Left = 332
    Top = 551
    Width = 139
    Height = 35
    Caption = '&Guardar '
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 256
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    OnClick = guardarClick
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_RMAM_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 723
    Top = 32
    object numeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object DsRmaM: TDataSource
    DataSet = datos.MRma
    Left = 768
    Top = 40
  end
  object IbqClientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.* from cliente a')
    Params = <>
    Left = 752
    Top = 252
    object IbqClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IbqClientesNOMBRES: TWideStringField
      DisplayWidth = 100
      FieldName = 'NOMBRES'
      Size = 100
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
      Size = 30
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
    object IbqClientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
    object IbqClientesCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object IbqClientesNUMEROPIN: TWideStringField
      FieldName = 'NUMEROPIN'
      Size = 10
    end
    object IbqClientesTELEFONO3: TWideStringField
      FieldName = 'TELEFONO3'
      Size = 15
    end
    object IbqClientesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object IbqClientesRUTA_ID: TIntegerField
      FieldName = 'RUTA_ID'
    end
    object IbqClientesREGIONID: TIntegerField
      FieldName = 'REGIONID'
    end
    object IbqClientesPROVINCIAID: TIntegerField
      FieldName = 'PROVINCIAID'
    end
    object IbqClientesMUNICIPIOID: TIntegerField
      FieldName = 'MUNICIPIOID'
    end
    object IbqClientesMUSADOS: TFloatField
      FieldName = 'MUSADOS'
      currency = True
    end
    object IbqClientesMPENDIENTES: TFloatField
      FieldName = 'MPENDIENTES'
      currency = True
    end
  end
  object qEmpleado: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from MTEMPLEADO')
    Params = <>
    Left = 384
    Top = 288
    object qEmpleadoCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object qEmpleadoNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object qEmpleadoDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object qEmpleadoCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object qEmpleadoTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 10
    end
    object qEmpleadoCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object qEmpleadoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object qEmpleadoLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Size = 8
    end
    object qEmpleadoPIN: TWideStringField
      FieldName = 'PIN'
      Size = 8
    end
    object qEmpleadoMODIFICAR_ARTICULOS: TWideStringField
      FieldName = 'MODIFICAR_ARTICULOS'
      Size = 2
    end
    object qEmpleadoELIMINAR: TWideStringField
      FieldName = 'ELIMINAR'
      Size = 2
    end
    object qEmpleadoIMPRIMIR: TWideStringField
      FieldName = 'IMPRIMIR'
      Size = 2
    end
    object qEmpleadoCONTABILIDAD: TWideStringField
      FieldName = 'CONTABILIDAD'
      Size = 2
    end
    object qEmpleadoMODIFICAR_FACTURAS: TWideStringField
      FieldName = 'MODIFICAR_FACTURAS'
      Size = 2
    end
    object qEmpleadoMODIFICAR_UTILIDAD: TWideStringField
      FieldName = 'MODIFICAR_UTILIDAD'
      Size = 2
    end
    object qEmpleadoIMPRIMIR_CUADRE: TWideStringField
      FieldName = 'IMPRIMIR_CUADRE'
      Size = 2
    end
    object qEmpleadoIMPRIMIR_FINACIERO: TWideStringField
      FieldName = 'IMPRIMIR_FINACIERO'
      Size = 2
    end
    object qEmpleadoCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
      Required = True
    end
    object qEmpleadoINICIO: TDateField
      FieldName = 'INICIO'
    end
    object qEmpleadoSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object qEmpleadoCOD: TIntegerField
      FieldName = 'COD'
    end
    object qEmpleadoCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object qEmpleadoFECHA_ING: TDateField
      FieldName = 'FECHA_ING'
    end
    object qEmpleadoESTADOS: TIntegerField
      FieldName = 'ESTADOS'
    end
    object qEmpleadoTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object qEmpleadoIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object qEmpleadoDESCUENTO: TIntegerField
      FieldName = 'DESCUENTO'
    end
  end
  object dsempleado: TDataSource
    DataSet = qEmpleado
    Left = 440
    Top = 328
  end
  object QTequipos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from TIPOEQUIPO')
    Params = <>
    Left = 536
    Top = 312
    object QTequiposID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QTequiposTIPOEQUIPO: TWideStringField
      FieldName = 'TIPOEQUIPO'
      Size = 50
    end
  end
  object DsQequipos: TDataSource
    DataSet = QTequipos
    Left = 576
    Top = 312
  end
  object DsRmad: TDataSource
    DataSet = datos.RMAD
    Left = 152
    Top = 208
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_RMAD_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 536
    Top = 384
    object LargeintField1: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object FxRmaM: TfrxDBDataset
    UserName = 'FxRmaM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOORDEN=NOORDEN'
      'FECHA_ENTRADA=FECHA_ENTRADA'
      'IDCLIENTE=IDCLIENTE'
      'IDTECNICO=IDTECNICO'
      'HORAENTRADA=HORAENTRADA'
      'NO_SERIAL=NO_SERIAL'
      'IDTIPOEQUIPO=IDTIPOEQUIPO'
      'IDMARCA=IDMARCA'
      'FALLAEQUIPO=FALLAEQUIPO'
      'OBSERVACIONEQUIPO=OBSERVACIONEQUIPO'
      'OBSERVACIONTECNICA=OBSERVACIONTECNICA'
      'FECHA_PROMETIDA=FECHA_PROMETIDA'
      'ESTADO=ESTADO'
      'MONTO=MONTO'
      'NOMBRES=NOMBRES'
      'DIRECCION=DIRECCION'
      'TELEFONO=TELEFONO'
      'NOMBRES_EMP=NOMBRES_EMP'
      'TIPOEQUIPO=TIPOEQUIPO')
    DataSet = QRmaM
    BCDToCurrency = False
    Left = 680
    Top = 304
  end
  object Recibo: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43172.513135439800000000
    ReportOptions.LastChange = 43172.513135439800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 688
    Top = 400
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = FxRmaD
        DataSetName = 'FxRmaD'
      end
      item
        DataSet = FxRmaM
        DataSetName = 'FxRmaM'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 115.200000000000000000
        Top = 19.200000000000000000
        Width = 740.409927000000000000
        object configuracionEMPRESA: TfrxMemoView
          Left = 13.379530000000000000
          Top = -0.000000000000000711
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          Left = 15.379530000000000000
          Top = 23.000000000000000000
          Width = 400.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          Left = 43.379530000000000000
          Top = 47.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 181.779530000000000000
          Top = 46.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 18.379530000000000000
          Top = 47.000000000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 38.400000000000000000
          Top = 75.288249999999990000
          Width = 694.828820000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Entrada de Equipo a R.M.A')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 153.600000000000000000
          Top = 48.000000000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 336.000000000000000000
        Top = 163.200000000000000000
        Width = 740.409927000000000000
        DataSet = FxRmaM
        DataSetName = 'FxRmaM'
        RowCount = 0
        object FxRmaMFECHA_ENTRADA: TfrxMemoView
          Left = 115.200000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA_ENTRADA'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."FECHA_ENTRADA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 19.200000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Entrada  :')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 19.200000000000000000
          Top = 28.800000000000010000
          Width = 326.400000000000000000
          Height = 115.200000000000000000
        end
        object FxRmaMNOMBRES: TfrxMemoView
          Left = 28.800000000000000000
          Top = 48.000000000000000000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBRES'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."NOMBRES"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 28.800000000000000000
          Top = 31.800000000000010000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre Cliente  :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 28.800000000000000000
          Top = 67.199999999999990000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Direcci'#243'n  :')
          ParentFont = False
        end
        object FxRmaMDIRECCION: TfrxMemoView
          Left = 28.800000000000000000
          Top = 86.399999999999970000
          Width = 307.200000000000000000
          Height = 19.200000000000000000
          DataField = 'DIRECCION'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."DIRECCION"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 28.800000000000000000
          Top = 105.600000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefono  :')
          ParentFont = False
        end
        object FxRmaMTELEFONO: TfrxMemoView
          Left = 30.800000000000000000
          Top = 119.800000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."TELEFONO"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 374.400000000000000000
          Top = 230.400000000000000000
          Width = 326.400000000000000000
          Height = 76.800000000000000000
        end
        object FxRmaMNOMBRES_EMP: TfrxMemoView
          Left = 385.000000000000000000
          Top = 257.200000000000000000
          Width = 307.200000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 384.000000000000000000
          Top = 240.000000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tecnico  :')
          ParentFont = False
        end
        object FxRmaMHORAENTRADA: TfrxMemoView
          Left = 364.800000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'HORAENTRADA'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."HORAENTRADA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 268.800000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hora Entrada  :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 384.000000000000000000
          Top = 278.400000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Entraga :')
          ParentFont = False
        end
        object FxRmaMFECHA_PROMETIDA: TfrxMemoView
          Left = 489.600000000000000000
          Top = 278.400000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA_PROMETIDA'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."FECHA_PROMETIDA"]')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 374.400000000000000000
          Top = 48.000000000000000000
          Width = 326.400000000000000000
          Height = 96.000000000000000000
        end
        object Memo12: TfrxMemoView
          Left = 374.400000000000000000
          Top = 28.800000000000010000
          Width = 141.656710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Datos del Equipo :')
          ParentFont = False
        end
        object FxRmaMNO_SERIAL: TfrxMemoView
          Left = 384.000000000000000000
          Top = 105.600000000000000000
          Width = 163.200000000000000000
          Height = 19.200000000000000000
          DataField = 'NO_SERIAL'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."NO_SERIAL"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 384.000000000000000000
          Top = 89.399999999999970000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No. Serie  :')
          ParentFont = False
        end
        object FxRmaMTIPOEQUIPO: TfrxMemoView
          Left = 384.000000000000000000
          Top = 67.199999999999990000
          Width = 259.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPOEQUIPO'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."TIPOEQUIPO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 384.000000000000000000
          Top = 53.000000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo del Equipo  :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 19.200000000000000000
          Top = 153.600000000000000000
          Width = 170.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripcion del Equipo  :')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 21.800000000000000000
          Top = 240.000000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Entragado por :')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 23.200000000000000000
          Top = 278.400000000000000000
          Width = 103.256710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Recibido por :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 115.200000000000000000
          Top = 259.200000000000000000
          Width = 230.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 115.200000000000000000
          Top = 292.000000000000000000
          Width = 230.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object FxRmaMOBSERVACIONEQUIPO: TfrxMemoView
          Left = 19.200000000000000000
          Top = 172.800000000000000000
          Width = 681.600000000000000000
          Height = 48.000000000000000000
          DataField = 'OBSERVACIONEQUIPO'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxRmaM."OBSERVACIONEQUIPO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 508.400000000000000000
          Top = 1.000000000000000000
          Width = 84.056710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No. Orden  :')
          ParentFont = False
        end
        object FxRmaMNOORDEN: TfrxMemoView
          Left = 594.800000000000000000
          Top = 1.000000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          DataField = 'NOORDEN'
          DataSet = FxRmaM
          DataSetName = 'FxRmaM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FxRmaM."NOORDEN"]')
          ParentFont = False
        end
      end
    end
  end
  object FxRmaD: TfrxDBDataset
    UserName = 'FxRmaD'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'IDMASTER=IDMASTER'
      'IDARTICULO=IDARTICULO'
      'CANT=CANT'
      'PRECIO=PRECIO'
      'ITB=ITB'
      'TOTAL=TOTAL'
      'ESTADOS=ESTADOS'
      'ARTICULO=ARTICULO')
    DataSet = QrmaD
    BCDToCurrency = False
    Left = 720
    Top = 304
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
      'CLAVEANULAR=CLAVEANULAR'
      'TERMINAL_TPV=TERMINAL_TPV'
      'MONTOCF=MONTOCF'
      'REDONDEAR=REDONDEAR'
      'COMISIONVENTA=COMISIONVENTA'
      'CONFID=CONFID'
      'LOGO_FRONTAR=LOGO_FRONTAR'
      'LOGOF_TXT=LOGOF_TXT'
      'LOGOP_TXT=LOGOP_TXT'
      'INSERTARSERIAL=INSERTARSERIAL'
      'DIRECCION=DIRECCION'
      'ITBIS_D=ITBIS_D'
      'ENLACEAWEB=ENLACEAWEB'
      'PISTOLAOPTICA=PISTOLAOPTICA'
      'TIPO_FACTURACION=TIPO_FACTURACION'
      'EXISTENCIAFACT=EXISTENCIAFACT'
      'RUTADB=RUTADB'
      'CANT_CAJA=CANT_CAJA'
      'TAZA=TAZA'
      'MONEDA=MONEDA'
      'APLICAR_AUMENTO_TAZA=APLICAR_AUMENTO_TAZA'
      'ANCHO_IMG_FRONTAL=ANCHO_IMG_FRONTAL'
      'ALTO_IMG_FRONTAL=ALTO_IMG_FRONTAL'
      'LEFT_IMAGEN=LEFT_IMAGEN'
      'RIGHT_IMAGEN=RIGHT_IMAGEN'
      'REDONDEOCOMPLETO=REDONDEOCOMPLETO'
      'CLAVEAUTORIZACION=CLAVEAUTORIZACION'
      'COMPROBANTEDEFAULT=COMPROBANTEDEFAULT'
      'USOAPLICACION=USOAPLICACION'
      'ARTICULOSVARIOS=ARTICULOSVARIOS'
      'MENSAJE_PIE1=MENSAJE_PIE1'
      'MENSAJE_PIE2=MENSAJE_PIE2')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 760
    Top = 304
  end
  object QRmaM: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      
        'select a.*, b.nombres, b.direccion, b.telefono, c.nombres_emp, d' +
        '.tipoequipo  from rmam a'
      'left join cliente b on a.idcliente = b.codigo'
      
        'left join mtempleado c on a.idtecnico = c.cod_emp1 and c.cargo='#39 +
        'INSTALADOR'#39
      'left join tipoequipo d on a.idtipoequipo = d.id')
    Params = <>
    Left = 80
    Top = 408
    object QRmaMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QRmaMNOORDEN: TIntegerField
      FieldName = 'NOORDEN'
    end
    object QRmaMFECHA_ENTRADA: TDateField
      FieldName = 'FECHA_ENTRADA'
    end
    object QRmaMIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
    end
    object QRmaMIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object QRmaMHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
    end
    object QRmaMNO_SERIAL: TWideStringField
      FieldName = 'NO_SERIAL'
    end
    object QRmaMIDTIPOEQUIPO: TIntegerField
      FieldName = 'IDTIPOEQUIPO'
    end
    object QRmaMIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
    end
    object QRmaMFALLAEQUIPO: TWideMemoField
      FieldName = 'FALLAEQUIPO'
      BlobType = ftWideMemo
    end
    object QRmaMOBSERVACIONEQUIPO: TWideMemoField
      FieldName = 'OBSERVACIONEQUIPO'
      BlobType = ftWideMemo
    end
    object QRmaMOBSERVACIONTECNICA: TWideMemoField
      FieldName = 'OBSERVACIONTECNICA'
      BlobType = ftWideMemo
    end
    object QRmaMFECHA_PROMETIDA: TDateField
      FieldName = 'FECHA_PROMETIDA'
    end
    object QRmaMESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 15
    end
    object QRmaMMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object QRmaMNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 100
    end
    object QRmaMDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object QRmaMTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object QRmaMNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QRmaMTIPOEQUIPO: TWideStringField
      FieldName = 'TIPOEQUIPO'
      Size = 50
    end
  end
  object QrmaD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.id, a.idmaster, a.idarticulo, a.cant, a.precio, a.itb, ' +
        '(a.cant * a.precio) Total, a.estados, b.articulo, a.articulotxt ' +
        'from rmad a'
      'left join mtartuculos b on a.idarticulo = b.cod_art')
    Params = <>
    Left = 176
    Top = 416
    object QrmaDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QrmaDIDMASTER: TIntegerField
      FieldName = 'IDMASTER'
    end
    object QrmaDIDARTICULO: TIntegerField
      FieldName = 'IDARTICULO'
    end
    object QrmaDCANT: TFloatField
      FieldName = 'CANT'
    end
    object QrmaDPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object QrmaDITB: TFloatField
      FieldName = 'ITB'
    end
    object QrmaDTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
    end
    object QrmaDESTADOS: TIntegerField
      FieldName = 'ESTADOS'
    end
    object QrmaDARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QrmaDARTICULOTXT: TWideStringField
      FieldName = 'ARTICULOTXT'
      ReadOnly = True
      Size = 100
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
  end
end
