object FrmRutas: TFrmRutas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Rutas'
  ClientHeight = 358
  ClientWidth = 607
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
  object Label4: TLabel
    Left = 120
    Top = 323
    Width = 132
    Height = 13
    Caption = 'Buscar por Nombre de Ruta'
    FocusControl = cxDBSpinEdit1
  end
  object cxGroupBox1: TcxGroupBox
    Left = 88
    Top = 16
    TabOrder = 0
    Height = 116
    Width = 505
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 10
      Height = 13
      Caption = 'Id'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 95
      Top = 16
      Width = 89
      Height = 13
      Caption = 'Nombre de la Ruta'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 24
      Top = 63
      Width = 103
      Height = 13
      Caption = 'Nombre del Vendedor'
      FocusControl = cxDBSpinEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 24
      Top = 32
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      Style.Color = 12582911
      TabOrder = 0
      Width = 65
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 95
      Top = 32
      DataBinding.DataField = 'NOMBRE_RUTA'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 386
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 24
      Top = 80
      DataBinding.DataField = 'IDVENDEDOR'
      DataBinding.DataSource = DataSource1
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NOMBRE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DsVendedor
      TabOrder = 2
      Width = 281
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 88
    Top = 138
    TabOrder = 1
    Height = 175
    Width = 505
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 501
      Height = 155
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NOMBRE_RUTA: TcxGridDBColumn
          Caption = 'Nombre de Ruta'
          DataBinding.FieldName = 'NOMBRE_RUTA'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 233
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 233
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          Caption = 'Vendedor'
          DataBinding.FieldName = 'NOMBRE'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 224
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 224
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object nuevo: TcxButton
    Left = 8
    Top = 63
    Width = 74
    Height = 37
    Caption = '&Nuevo'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 944
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 8
    Top = 106
    Width = 74
    Height = 37
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    OnClick = guardarClick
  end
  object cxButton3: TcxButton
    Left = 8
    Top = 149
    Width = 74
    Height = 37
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    OnClick = cxButton3Click
  end
  object Edit1: TEdit
    Left = 272
    Top = 320
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnChange = Edit1Change
  end
  object DataSource1: TDataSource
    DataSet = datos.TbRutas
    Left = 40
    Top = 232
  end
  object vendedor: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from vendedores')
    Params = <>
    Left = 480
    Top = 88
    object vendedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object vendedorNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object vendedorCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 13
    end
    object vendedorTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 13
    end
    object vendedorESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object DsVendedor: TDataSource
    DataSet = vendedor
    Left = 440
    Top = 96
  end
  object max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from ruta')
    Params = <>
    Left = 152
    Top = 48
    object maxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.nombre from ruta a'
      'INNER Join vendedores b On a.idvendedor = b.id')
    Params = <>
    Left = 208
    Top = 216
    object consultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object consultaNOMBRE_RUTA: TWideStringField
      FieldName = 'NOMBRE_RUTA'
      Size = 35
    end
    object consultaIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
    end
    object consultaNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 248
    Top = 220
  end
end
