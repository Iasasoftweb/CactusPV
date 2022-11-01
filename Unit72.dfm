object FrmVendedores: TFrmVendedores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Representante'
  ClientHeight = 329
  ClientWidth = 562
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
  object Panel1: TPanel
    Left = 106
    Top = 8
    Width = 450
    Height = 97
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 21
      Height = 13
      Caption = '# Id'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 119
      Top = 8
      Width = 86
      Height = 13
      Caption = 'Nombre y Apellido'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 32
      Top = 49
      Width = 53
      Height = 13
      Caption = 'No. Cedula'
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 159
      Top = 49
      Width = 42
      Height = 13
      Caption = 'Telefono'
      FocusControl = cxDBTextEdit3
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 32
      Top = 22
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      Style.Color = clActiveCaption
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 81
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 119
      Top = 22
      DataBinding.DataField = 'NOMBRE'
      DataBinding.DataSource = DataSource1
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 330
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 32
      Top = 62
      DataBinding.DataField = 'CEDULA'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 159
      Top = 62
      DataBinding.DataField = 'TELEFONO'
      DataBinding.DataSource = DataSource1
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 104
    Top = 111
    Width = 450
    Height = 210
    TabOrder = 1
    object Label5: TLabel
      Left = 12
      Top = 127
      Width = 101
      Height = 13
      Caption = 'Nombre de Vendedor'
      Visible = False
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 452
      Height = 145
      TabOrder = 0
      LookAndFeel.NativeStyle = False
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
          Caption = '# Id'
          DataBinding.FieldName = 'ID'
          HeaderAlignmentHorz = taCenter
          MinWidth = 39
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Width = 39
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          MinWidth = 300
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Width = 300
        end
        object cxGrid1DBTableView1CEDULA: TcxGridDBColumn
          Caption = 'C'#233'dula'
          DataBinding.FieldName = 'CEDULA'
          HeaderAlignmentHorz = taCenter
          MinWidth = 108
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Width = 108
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Edit1: TEdit
      Left = 95
      Top = 151
      Width = 350
      Height = 21
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      TabOrder = 1
      Visible = False
      OnChange = Edit1Change
    end
  end
  object nuevo: TcxButton
    Left = 8
    Top = 8
    Width = 92
    Height = 37
    Caption = '&Nuevo'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 944
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 8
    Top = 47
    Width = 92
    Height = 37
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    OnClick = guardarClick
  end
  object cxButton3: TcxButton
    Left = 7
    Top = 85
    Width = 93
    Height = 37
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    OnClick = cxButton3Click
  end
  object DataSource1: TDataSource
    DataSet = datos.TbVendedor
    Left = 288
    Top = 176
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from vendedores')
    Params = <>
    Left = 144
    Top = 184
    object consultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object consultaNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object consultaCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object consultaTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 13
    end
    object consultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 176
    Top = 208
  end
  object max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from vendedores')
    Params = <>
    Left = 444
    Top = 120
    object maxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
