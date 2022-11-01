object FrmTiposEquipos: TFrmTiposEquipos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Equipos RMA'
  ClientHeight = 265
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 115
    Top = 12
    Enabled = False
    TabOrder = 0
    Height = 65
    Width = 321
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 81
      Height = 13
      Caption = 'Tipo de Equipo'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 101
      Top = 21
      DataBinding.DataField = 'TIPOEQUIPO'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 196
    end
  end
  object cxGrid1: TcxGrid
    Left = 115
    Top = 83
    Width = 321
    Height = 170
    TabOrder = 1
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        Caption = '#'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
      end
      object cxGrid1DBTableView1TIPOEQUIPO: TcxGridDBColumn
        Caption = 'Tipo de Equipos'
        DataBinding.FieldName = 'TIPOEQUIPO'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 250
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
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
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object nuevo: TcxButton
    Left = 8
    Top = 8
    Width = 90
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
    Width = 90
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
    Width = 90
    Height = 35
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 45
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object Numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from TIPOEQUIPO')
    Params = <>
    Left = 257
    Top = 116
    object NumeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = datos.zTipoEquipos
    Left = 305
    Top = 92
  end
  object Consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from TIPOEQUIPO')
    Params = <>
    Left = 361
    Top = 172
    object ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ConsultaTIPOEQUIPO: TWideStringField
      FieldName = 'TIPOEQUIPO'
      Size = 50
    end
  end
  object DsConsulta: TDataSource
    DataSet = Consulta
    Left = 179
    Top = 140
  end
  object DsConsultar: TDataSource
    Left = 64
    Top = 184
  end
end
