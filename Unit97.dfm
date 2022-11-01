object FrmMoneda: TFrmMoneda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Monedas'
  ClientHeight = 247
  ClientWidth = 411
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
    Left = 112
    Top = 8
    Enabled = False
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 0
    Height = 57
    Width = 289
    object Label1: TLabel
      Left = 19
      Top = 6
      Width = 38
      Height = 13
      Caption = 'Moneda'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 143
      Top = 6
      Width = 67
      Height = 13
      Caption = 'Signo Moneda'
      FocusControl = cxDBTextEdit2
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 22
      DataBinding.DataField = 'MONEDA'
      DataBinding.DataSource = DsMoneda
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 143
      Top = 22
      DataBinding.DataField = 'SIGNO'
      DataBinding.DataSource = DsMoneda
      TabOrder = 1
      Width = 121
    end
  end
  object cxGrid1: TcxGrid
    Left = 112
    Top = 71
    Width = 291
    Height = 170
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsula
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1MONEDA: TcxGridDBColumn
        Caption = 'Moneda'
        DataBinding.FieldName = 'MONEDA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 179
      end
      object cxGrid1DBTableView1SIGNO: TcxGridDBColumn
        Caption = 'Signo'
        DataBinding.FieldName = 'SIGNO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 107
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object nuevo: TcxButton
    Left = 8
    Top = 8
    Width = 98
    Height = 36
    Caption = '&Nuevo'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 137
    TabOrder = 2
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 8
    Top = 50
    Width = 98
    Height = 35
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 9
    TabOrder = 3
    OnClick = guardarClick
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 91
    Width = 98
    Height = 35
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 45
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from tb_moneda')
    Params = <>
    Left = 160
    Top = 104
    object consultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object consultaMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object consultaSIGNO: TWideStringField
      FieldName = 'SIGNO'
      Size = 4
    end
  end
  object DsConsula: TDataSource
    DataSet = consulta
    Left = 248
    Top = 80
  end
  object DsMoneda: TDataSource
    DataSet = datos.ZMoneda
    Left = 240
    Top = 128
  end
  object Max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from tb_moneda')
    Params = <>
    Left = 48
    Top = 184
    object MaxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
