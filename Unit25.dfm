object FrmUsuario: TFrmUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Mantenimiento de Usuario'
  ClientHeight = 289
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton6: TcxButton
    Left = 0
    Top = 233
    Width = 657
    Height = 25
    Align = alTop
    Caption = 'Insertar Modulos por Defectos'
    Enabled = False
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 1000
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    Visible = False
    ExplicitWidth = 665
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 258
    Width = 657
    Height = 198
    Align = alTop
    Enabled = False
    TabOrder = 3
    Visible = False
    Properties.ActivePage = pG1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = True
    OnChange = cxPageControl1Change
    ExplicitWidth = 665
    ClientRectBottom = 194
    ClientRectLeft = 4
    ClientRectRight = 653
    ClientRectTop = 24
    object pG1: TcxTabSheet
      Caption = 'Operaciones'
      ImageIndex = 0
      ExplicitWidth = 657
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 649
        Height = 170
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'Caramel'
        ExplicitLeft = -25
        ExplicitTop = -18
        ExplicitWidth = 657
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsPerfil
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid3DBTableView1NOMBRE_PANTALLAS: TcxGridDBColumn
            Caption = 'Nombre del Modulo'
            DataBinding.FieldName = 'NOMBRE_PANTALLAS'
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.CellMerging = True
            Width = 377
          end
          object cxGrid3DBTableView1ESTADO: TcxGridDBColumn
            Caption = 'Activado'
            DataBinding.FieldName = 'ESTADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderGlyphAlignmentHorz = taCenter
            VisibleForEditForm = bFalse
            Width = 90
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
    object pg3: TcxTabSheet
      Caption = 'Inventario'
      ImageIndex = 2
      ExplicitWidth = 657
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 649
        Height = 170
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Caramel'
        ExplicitWidth = 657
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsPerfil
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Nombre del Modulo'
            DataBinding.FieldName = 'NOMBRE_PANTALLAS'
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.CellMerging = True
            Width = 377
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Activado'
            DataBinding.FieldName = 'ESTADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderGlyphAlignmentHorz = taCenter
            VisibleForEditForm = bFalse
            Width = 90
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object pg4: TcxTabSheet
      Caption = 'Contabilidad'
      ImageIndex = 3
      ExplicitWidth = 657
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 649
        Height = 170
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Caramel'
        ExplicitWidth = 657
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsPerfil
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Nombre del Modulo'
            DataBinding.FieldName = 'NOMBRE_PANTALLAS'
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.CellMerging = True
            Width = 377
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Activado'
            DataBinding.FieldName = 'ESTADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderGlyphAlignmentHorz = taCenter
            VisibleForEditForm = bFalse
            Width = 90
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object pg2: TcxTabSheet
      Caption = 'Facturaci'#243'n'
      ImageIndex = 1
      ExplicitWidth = 657
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 649
        Height = 170
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Caramel'
        ExplicitWidth = 657
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsPerfil
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Nombre del Modulo'
            DataBinding.FieldName = 'NOMBRE_PANTALLAS'
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.CellMerging = True
            Width = 377
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Activado'
            DataBinding.FieldName = 'ESTADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderGlyphAlignmentHorz = taCenter
            VisibleForEditForm = bFalse
            Width = 90
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Reportes'
      ImageIndex = 4
      ExplicitWidth = 657
      object cxGrid7: TcxGrid
        Left = 0
        Top = 0
        Width = 649
        Height = 170
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Caramel'
        ExplicitWidth = 657
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsPerfil
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Nombre del Modulo'
            DataBinding.FieldName = 'NOMBRE_PANTALLAS'
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.CellMerging = True
            Width = 377
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Activado'
            DataBinding.FieldName = 'ESTADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderGlyphAlignmentHorz = taCenter
            VisibleForEditForm = bFalse
            Width = 90
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Utilidad'
      ImageIndex = 5
      ExplicitWidth = 657
      object cxGrid8: TcxGrid
        Left = 0
        Top = 0
        Width = 649
        Height = 170
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Caramel'
        ExplicitWidth = 657
        object cxGridDBTableView5: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsPerfil
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Nombre del Modulo'
            DataBinding.FieldName = 'NOMBRE_PANTALLAS'
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.CellMerging = True
            Width = 377
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Activado'
            DataBinding.FieldName = 'ESTADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderGlyphAlignmentHorz = taCenter
            VisibleForEditForm = bFalse
            Width = 90
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Mantenimiento'
      ImageIndex = 6
      ExplicitWidth = 657
      object cxGrid9: TcxGrid
        Left = 0
        Top = 0
        Width = 649
        Height = 170
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Caramel'
        ExplicitWidth = 657
        object cxGridDBTableView6: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsPerfil
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Nombre del Modulo'
            DataBinding.FieldName = 'NOMBRE_PANTALLAS'
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.CellMerging = True
            Width = 377
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Activado'
            DataBinding.FieldName = 'ESTADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderGlyphAlignmentHorz = taCenter
            VisibleForEditForm = bFalse
            Width = 90
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBTableView6
        end
      end
    end
  end
  object Opgeneral: TcxGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 74
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Enabled = False
    ParentBackground = False
    ParentColor = False
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.Shadow = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 0
    ExplicitWidth = 645
    Height = 156
    Width = 637
    object Label1: TLabel
      Left = 17
      Top = 22
      Width = 53
      Height = 13
      Caption = 'Id Usuario'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 17
      Top = 46
      Width = 114
      Height = 13
      Caption = 'Nombre del Empleado'
      FocusControl = cxDBTextEdit1
    end
    object Label7: TLabel
      Left = 17
      Top = 70
      Width = 35
      Height = 13
      Caption = 'Estado'
      FocusControl = cxDBSpinEdit1
    end
    object Label4: TLabel
      Left = 17
      Top = 100
      Width = 59
      Height = 13
      Caption = 'Contrase'#241'a'
      FocusControl = cxDBSpinEdit1
    end
    object Label5: TLabel
      Left = 19
      Top = 129
      Width = 85
      Height = 13
      Caption = 'Perfil de Usuario'
      FocusControl = cxDBSpinEdit1
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 144
      Top = 68
      DataBinding.DataField = 'ESTADO1'
      DataBinding.DataSource = DataSource1
      Properties.AutoSelect = False
      Properties.HideSelection = False
      Properties.ImmediatePost = True
      Properties.IncrementalSearch = False
      Properties.Items.Strings = (
        'ACTIVO'
        'INACTIVO')
      TabOrder = 2
      Width = 106
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 144
      Top = 19
      DataBinding.DataField = 'USUARIOID'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 65
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 144
      Top = 44
      DataBinding.DataField = 'NOMBRES_EMP'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 226
    end
    object cxDBImage1: TcxDBImage
      Left = 472
      Top = 18
      DataBinding.DataField = 'AVATAR'
      DataBinding.DataSource = DataSource1
      Properties.FitMode = ifmNormal
      Properties.GraphicClassName = 'TdxPNGImage'
      Properties.GraphicTransparency = gtTransparent
      Properties.ImmediatePost = True
      Style.TransparentBorder = False
      TabOrder = 4
      Visible = False
      Height = 103
      Width = 121
    end
    object cxButton7: TcxButton
      Left = 462
      Top = 127
      Width = 131
      Height = 30
      Caption = 'Agragar Avatar'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000049000000E30000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000E200000048000000E3000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000E2000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF0000003400000000000000000000000000000000000000000000
        000000000036000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000F600000089000000380000000C0000000C000000380000
        0089000000F6000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000B60000001C0000001D000000B70000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF0000001C00000000000000000000001D0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF0000001C00000000000000000000001D0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000B40000001B0000001C000000B60000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000E3000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000FF000000FF00000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000E20000004B000000E40000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000FF000000FF00000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000E30000004900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 863
      TabOrder = 3
      Visible = False
      OnClick = cxButton7Click
    end
    object ePassword: TEdit
      Left = 144
      Top = 95
      Width = 156
      Height = 21
      PasswordChar = '*'
      TabOrder = 5
    end
    object Panel17: TPanel
      AlignWithMargins = True
      Left = 369
      Top = 45
      Width = 29
      Height = 19
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      BevelOuter = bvNone
      Color = 6376140
      ParentBackground = False
      TabOrder = 6
      object SpeedButton9: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 23
        Height = 13
        Align = alClient
        Anchors = [akRight]
        Caption = '....'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton9Click
        ExplicitLeft = 7
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 299
      Top = 127
      Width = 29
      Height = 19
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      BevelOuter = bvNone
      Color = 6376140
      ParentBackground = False
      TabOrder = 7
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 23
        Height = 13
        Align = alClient
        Anchors = [akRight]
        Caption = '....'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = -5
        ExplicitTop = -9
        ExplicitWidth = 32
        ExplicitHeight = 23
      end
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 144
      Top = 126
      DataBinding.DataField = 'NOMBRE_SESSION'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 156
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 236
    Width = 637
    Height = 50
    Margins.Left = 10
    Margins.Right = 10
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    ExplicitTop = 237
    ExplicitWidth = 645
    object cxButton2: TcxButton
      Left = 259
      Top = 9
      Width = 113
      Height = 34
      Caption = '&Nuevo'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Blueprint'
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
        0000000000000000000000000000000000000000000500000055000000A40000
        00D7000000F3000000F3000000D7000000A40000005400000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000050000000DB000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000DB0000004F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000008A000000FF000000FF000000D4000000710000
        002C0000000C0000000C0000002C00000072000000D5000000FF000000FF0000
        0089000000020000000000000000000000000000000000000000000000000000
        0000000000000000008B000000FF000000F90000006D00000003000000000000
        000000000000000000000000000000000000000000040000006F000000FA0000
        00FF000000890000000000000000000000000000000000000000000000000000
        000000000052000000FF000000F9000000430000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000440000
        00FA000000FF0000004F00000000000000000000000000000000000000000000
        0006000000DC000000FF0000006C000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        006F000000FF000000DB00000005000000000000000000000000000000000000
        0056000000FF000000D400000003000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        0003000000D5000000FF00000054000000000000000000000000000000000000
        00A6000000FF0000007000000000000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        000000000073000000FF000000A3000000000000000000000000000000000000
        00D9000000FF0000002A00000000000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        00000000002C000000FF000000D8000000000000000000000000000000000000
        00F3000000FF0000000D0000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        00000000000E000000FF000000F1000000000000000000000000000000000000
        00F3000000FF0000000C0000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        00000000000D000000FF000000F3000000000000000000000000000000000000
        00D9000000FF0000002A00000000000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        00000000002C000000FF000000D8000000000000000000000000000000000000
        00A7000000FF0000006E00000000000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        000000000071000000FF000000A4000000000000000000000000000000000000
        0057000000FF000000D300000003000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        0003000000D4000000FF00000055000000000000000000000000000000000000
        0006000000DD000000FF0000006A000000000000000000000000000000000000
        0000000000FF000000FF00000000000000000000000000000000000000000000
        006D000000FF000000DB00000006000000000000000000000000000000000000
        000000000053000000FF000000F9000000420000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000430000
        00F9000000FF0000005000000000000000000000000000000000000000000000
        0000000000000000008C000000FF000000F90000006A00000002000000000000
        000000000000000000000000000000000000000000030000006C000000F90000
        00FF0000008A0000000000000000000000000000000000000000000000000000
        000000000000000000030000008C000000FF000000FF000000D30000006F0000
        002B0000000B0000000B0000002B0000006F000000D3000000FF000000FF0000
        008B000000020000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000053000000DD000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000DC000000520000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000600000057000000A60000
        00D8000000F4000000F4000000D8000000A60000005600000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 1039
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 378
      Top = 9
      Width = 113
      Height = 32
      Caption = 'Guardar'
      Enabled = False
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Blueprint'
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000800000007E0000000000000000000000000000
        000F000000B90000003700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FC0000002B000000000000000F0000
        00C8000000FF000000F000000037000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000080000000FF000000FB00000058000000000000000F000000C80000
        00FF000000F8000000FF000000F0000000370000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0077000000FF000000FC0000005C000000000000000E000000C7000000FF0000
        00E100000024000000A3000000FF000000F00000003800000000000000000000
        0000000000000000000000000000000000000000000000000000000000770000
        00FF000000FC0000005C000000000000000E000000C7000000FF000000E10000
        00210000000000000003000000A4000000FF000000F000000038000000000000
        0000000000000000000000000000000000000000000000000055000000FF0000
        00FB000000580000000000000000000000AB000000FF000000DF0000001F0000
        00000000001D0000000000000004000000A8000000FF000000F0000000370000
        0000000000000000000000000000000000000000000000000003000000A10000
        005C0000000000000000000000000000001F000000C000000022000000000000
        003B000000F20000007F0000000000000003000000A4000000FF000000F00000
        0038000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0057000000FC000000FF000000800000000000000004000000A8000000FF0000
        00F0000000370000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000055000000FB000000FF0000007F0000000000000003000000A40000
        00FF000000F00000003800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000055000000FB000000FF0000007F00000000000000030000
        00A5000000FF000000F000000038000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000055000000FB000000FF0000007F000000000000
        0003000000A5000000FF000000F0000000380000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000055000000FB000000FF0000007F0000
        000000000003000000A5000000FF000000F00000003800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000055000000FB000000800000
        00000000000000000003000000A5000000F10000003800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000002D000000000000
        0000000000000000000000000004000000290000000000000000000000000000
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
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 998
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 497
      Top = 9
      Width = 113
      Height = 31
      Caption = '&Cancelar'
      Enabled = False
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Blueprint'
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
      OptionsImage.ImageIndex = 45
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 799
      Top = 10
      Width = 113
      Height = 33
      Caption = 'Cerrar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.ImageIndex = 264
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton5Click
    end
    object cxButton8: TcxButton
      Left = 16
      Top = 5
      Width = 177
      Height = 41
      Caption = 'Buscar Usuario Creados'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Blueprint'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000001400000013000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000015000000D1000000D0000000140000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0016000000D2000000FF000000D1000000140000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000A00000082000000DC000000F7000000D90000007F0000
        00D6000000FF000000D100000014000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000C60000
        00000000000A000000C8000000FF000000FF000000FF000000FF000000FF0000
        00FF000000D20000001500000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000590000
        000000000082000000FF000000E0000000450000000C00000046000000E10000
        00FF0000007E0000000000000000000000000000000000000000000000000000
        00E4000000FF000000FF000000FF000000FF000000FF000000FF000000250000
        0000000000DD000000FF00000044000000000000000000000000000000450000
        00FF000000D80000000000000000000000000000000000000000000000000000
        005F000000FE000000FF000000FF000000FF000000FF000000FF000000080000
        0000000000F9000000FF0000000C0000000000000000000000000000000D0000
        00FF000000F70000000000000000000000000000000000000000000000000000
        00000000004F000000DF000000FF000000FF000000FF000000FF0000001B0000
        0000000000DD000000FF00000043000000000000000000000000000000450000
        00FF000000DC0000000000000000000000000000000000000000000000000000
        000000000000000000040000004C00000096000000CA000000EA000000570000
        000000000082000000FF000000E0000000430000000B00000044000000E10000
        00FF000000820000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000A000000C8000000FF000000FF000000FF000000FF000000FF0000
        00C80000000A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000A00000082000000DD000000F9000000DD000000820000
        000A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000001D000000AA000000F10000
        00F10000006B0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000027000000EE000000FF000000FF0000
        00FF000000FF000000C500000022000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000AF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000A7000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000F2000000FF000000FF000000FF0000
        00FF000000FF000000FF000000E9000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000F2000000FF000000FF000000FF0000
        00FF000000FF000000FF000000F1000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000AC000000FF000000FF000000FF0000
        00FF000000FF000000FF000000AA000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001D000000ED000000FF000000FF0000
        00FF000000FF000000EE0000001D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000001D000000AC000000F20000
        00F2000000AF0000002700000000000000000000000000000000000000000000
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
        00000000000000000000000000000000000000000000}
      TabOrder = 4
      OnClick = cxButton8Click
    end
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 3
    Width = 637
    Height = 65
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    ExplicitWidth = 645
    object btnsalir: TSpeedButton
      AlignWithMargins = True
      Left = 604
      Top = 15
      Width = 30
      Height = 34
      Margins.Left = 0
      Margins.Top = 15
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
      Width = 637
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = 13092807
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 645
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 359
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
        Width = 278
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
          Width = 272
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
            Width = 191
            Height = 22
            Align = alLeft
            Caption = 'Control de Acceso al Sistema / Perfil'
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
          Width = 272
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label8: TLabel
            AlignWithMargins = True
            Left = 121
            Top = 3
            Width = 52
            Height = 17
            Margins.Left = 5
            Align = alLeft
            Caption = 'Usuarios'
            Font.Charset = ANSI_CHARSET
            Font.Color = 12091960
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object Label9: TLabel
            Left = 0
            Top = 0
            Width = 116
            Height = 23
            Align = alLeft
            Caption = 'Mantenimiento de '
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
  object Opbusca: TcxGroupBox
    Left = 363
    Top = 77
    PanelStyle.Active = True
    Style.BorderStyle = ebs3D
    Style.Shadow = True
    TabOrder = 1
    Visible = False
    Height = 199
    Width = 273
    object Edit1: TEdit
      Left = 3
      Top = 175
      Width = 267
      Height = 21
      Align = alBottom
      CharCase = ecUpperCase
      Color = 15194560
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
    object cxGrid2: TcxGrid
      Left = 3
      Top = 3
      Width = 267
      Height = 172
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2016Colorful'
      object cxGrid2DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid2DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsZqEmpleados
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'NOMBRES_EMP'
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
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object Edit2: TEdit
      Left = 216
      Top = 248
      Width = 57
      Height = 21
      TabOrder = 2
      Text = 'Edit2'
    end
  end
  object DataSource1: TDataSource
    DataSet = datos.ZUsaurios
    Left = 488
    Top = 72
  end
  object ZqEmpleados: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from mtempleado')
    Params = <>
    Left = 192
    Top = 160
    object ZqEmpleadosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object ZqEmpleadosCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
      Required = True
    end
    object ZqEmpleadosTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
  end
  object DsZqEmpleados: TDataSource
    DataSet = ZqEmpleados
    Left = 360
    Top = 88
  end
  object Zqtienda: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from tienda'
      '')
    Params = <>
    Left = 42
    Top = 168
    object ZqtiendaTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
      Required = True
    end
    object ZqtiendaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object ZqtiendaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZqtiendaDIRECCCION: TWideStringField
      FieldName = 'DIRECCCION'
      Size = 70
    end
    object ZqtiendaCIUDAD: TWideStringField
      FieldName = 'CIUDAD'
    end
    object ZqtiendaTELEFONO1: TWideStringField
      FieldName = 'TELEFONO1'
      Size = 14
    end
    object ZqtiendaTELEFONO2: TWideStringField
      FieldName = 'TELEFONO2'
      Size = 14
    end
    object ZqtiendaRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
  end
  object Dstienda: TDataSource
    DataSet = Zqtienda
    Left = 74
    Top = 80
  end
  object numero: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(USUARIOID) numero  from MUSUARIO')
    Params = <>
    Left = 344
    Top = 64
    object numeroNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ReadOnly = True
    end
  end
  object Zqusuario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.NOMBRES_EMP from musuario a'
      'left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1'
      ''
      ''
      '')
    Params = <>
    Left = 138
    Top = 88
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
    object ZqusuarioIDSESSION: TIntegerField
      FieldName = 'IDSESSION'
    end
  end
  object dsqusuario: TDataSource
    DataSet = Zqusuario
    Left = 474
    Top = 24
  end
  object QSESSIONES: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from TB_SESION')
    Params = <>
    Left = 48
    Top = 216
  end
  object dSsECCIONES: TDataSource
    DataSet = QSESSIONES
    Left = 96
    Top = 152
  end
  object SihayPass: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.NOMBRES_EMP from musuario a'
      'left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1')
    Params = <>
    Left = 280
    Top = 64
    object SihayPassUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Required = True
    end
    object SihayPassEMPLEADOID: TIntegerField
      FieldName = 'EMPLEADOID'
    end
    object SihayPassTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object SihayPassPASSW: TWideStringField
      FieldName = 'PASSW'
      Size = 10
    end
    object SihayPassIDAC: TWideStringField
      FieldName = 'IDAC'
      Size = 10
    end
    object SihayPassIDSESSION: TIntegerField
      FieldName = 'IDSESSION'
    end
    object SihayPassESTADO1: TWideStringField
      FieldName = 'ESTADO1'
      Size = 10
    end
    object SihayPassDESCUENTO: TIntegerField
      FieldName = 'DESCUENTO'
    end
    object SihayPassNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
  end
  object DsPerfil: TDataSource
    DataSet = datos.Qperfil
    Left = 472
    Top = 136
  end
  object NumeroPerfil: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_TB_PERFIL_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 552
    Top = 128
    object NumeroPerfilGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object QconsultaPerfil: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from TB_perfil')
    Params = <>
    Left = 568
    Top = 40
    object QconsultaPerfilID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QconsultaPerfilNOMBRE_PANTALLAS: TWideStringField
      FieldName = 'NOMBRE_PANTALLAS'
      Size = 50
    end
    object QconsultaPerfilNOMBRE_FORM: TWideStringField
      FieldName = 'NOMBRE_FORM'
      Size = 30
    end
    object QconsultaPerfilSECCION: TWideStringField
      FieldName = 'SECCION'
      Size = 15
    end
    object QconsultaPerfilBOTON: TWideStringField
      FieldName = 'BOTON'
      Size = 15
    end
    object QconsultaPerfilESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object QconsultaPerfilIDNIVEL: TIntegerField
      FieldName = 'IDNIVEL'
    end
    object QconsultaPerfilIDMODULO: TIntegerField
      FieldName = 'IDMODULO'
    end
  end
end
