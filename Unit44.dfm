object FrmUnidad: TFrmUnidad
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Mantenimiento de Unidades'
  ClientHeight = 345
  ClientWidth = 419
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
  object Op1: TcxGroupBox
    Left = 8
    Top = 8
    Enabled = False
    TabOrder = 0
    Height = 105
    Width = 322
    object Label1: TLabel
      Left = 17
      Top = 18
      Width = 10
      Height = 13
      Caption = 'Id'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 104
      Top = 20
      Width = 85
      Height = 13
      Caption = 'Unidad Abreviado'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 16
      Top = 60
      Width = 54
      Height = 13
      Caption = 'Descripcion'
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 164
      Top = 60
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = cxDBTextEdit2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 32
      DataBinding.DataField = 'COD_UNIDAD_M'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      Width = 81
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 103
      Top = 32
      DataBinding.DataField = 'UNIDAD'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 1
      Width = 138
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 16
      Top = 72
      DataBinding.DataField = 'DESCRIPCION'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 2
      Width = 145
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 163
      Top = 72
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 3
      Width = 81
    end
  end
  object nuevo: TcxButton
    Left = 336
    Top = 62
    Width = 75
    Height = 51
    Caption = '&Nuevo'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 944
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 1
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 336
    Top = 119
    Width = 75
    Height = 58
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    OnClick = guardarClick
  end
  object cancelar: TcxButton
    Left = 336
    Top = 183
    Width = 75
    Height = 58
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    OnClick = cancelarClick
  end
  object eliminar: TcxButton
    Left = 336
    Top = 247
    Width = 75
    Height = 49
    Caption = '&Eliminar'
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 66
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 4
    Visible = False
  end
  object cerrar: TcxButton
    Left = 336
    Top = 247
    Width = 75
    Height = 49
    Caption = '&Cerrar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 996
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 5
    OnClick = cerrarClick
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 119
    Width = 322
    Height = 217
    TabOrder = 6
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Unidad de Medida'
        DataBinding.FieldName = 'DESCRIPCION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 162
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Abreviado'
        DataBinding.FieldName = 'UNIDAD'
        MinWidth = 85
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Width = 85
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'VALOR'
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = datos.Zunidad
    Left = 280
    Top = 8
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from unidad_m')
    Params = <>
    Left = 176
    Top = 184
    object consultaCOD_UNIDAD_M: TIntegerField
      FieldName = 'COD_UNIDAD_M'
      Required = True
    end
    object consultaUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object consultaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object consultaVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 224
    Top = 192
  end
  object max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(COD_UNIDAD_M) from unidad_m')
    Params = <>
    Left = 312
    Top = 8
    object maxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
