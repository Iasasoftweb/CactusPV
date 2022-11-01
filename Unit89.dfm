object FrmAlmacenes: TFrmAlmacenes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Almacenes'
  ClientHeight = 316
  ClientWidth = 527
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Gp1: TcxGroupBox
    Left = 96
    Top = 16
    Enabled = False
    Style.BorderColor = 10930928
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 0
    Height = 65
    Width = 423
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 118
      Top = 8
      Width = 97
      Height = 13
      Caption = 'Nombre del Almacen'
      FocusControl = cxDBTextEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 24
      Top = 24
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = DsAlamacen
      Properties.ReadOnly = True
      Style.Color = 12108797
      TabOrder = 0
      Width = 89
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 118
      Top = 27
      DataBinding.DataField = 'DESCRIPCION'
      DataBinding.DataSource = DsAlamacen
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 287
    end
  end
  object cxGrid1: TcxGrid
    Left = 96
    Top = 87
    Width = 423
    Height = 221
    TabOrder = 1
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsQConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
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
      end
      object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
        Caption = 'Nombre del Almacen'
        DataBinding.FieldName = 'DESCRIPCION'
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
        Width = 314
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object nuevo: TcxButton
    Left = 8
    Top = 33
    Width = 82
    Height = 36
    Caption = '&Nuevo'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 137
    TabOrder = 2
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 8
    Top = 75
    Width = 82
    Height = 35
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 9
    TabOrder = 3
    OnClick = guardarClick
  end
  object cxButton3: TcxButton
    Left = 8
    Top = 116
    Width = 82
    Height = 35
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 45
    TabOrder = 4
    OnClick = cxButton3Click
  end
  object DsAlamacen: TDataSource
    DataSet = datos.QAlmacen
    Left = 440
    Top = 152
  end
  object Qmax: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select Max(Id) from almacenes')
    Params = <>
    Left = 488
    Top = 96
    object QmaxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object QConsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from almacenes')
    Params = <>
    Left = 472
    Top = 192
    object QConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QConsultaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object DsQConsulta: TDataSource
    DataSet = QConsulta
    Left = 352
    Top = 192
  end
end
