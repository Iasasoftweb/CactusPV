object FInventarioEquivalencia: TFInventarioEquivalencia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 365
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 10
    Top = 343
    Width = 226
    Height = 17
    Margins.Left = 5
    Caption = 'Presione [ESC] para cerrar ventana'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 36
    Align = alTop
    TabOrder = 0
    object Label61: TLabel
      AlignWithMargins = True
      Left = 26
      Top = -3
      Width = 158
      Height = 33
      Margins.Left = 5
      Caption = 'Inventario |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object LbModo: TLabel
      AlignWithMargins = True
      Left = 186
      Top = 8
      Width = 101
      Height = 21
      Margins.Left = 5
      Caption = 'Equivalencia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object cxGrid1: TcxGrid
    Left = 5
    Top = 39
    Width = 538
    Height = 298
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsultar
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Productos'
        DataBinding.FieldName = 'ARTICULO'
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 380
      end
      object cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn
        Caption = 'Exisitencia'
        DataBinding.FieldName = 'EXISTENCIA'
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object consultar: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from INV_EQUIVALENCIA(:consultar)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'consultar'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'consultar'
        ParamType = ptUnknown
      end>
    object consultarCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      ReadOnly = True
    end
    object consultarARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      ReadOnly = True
      Size = 100
    end
    object consultarEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
  end
  object DsConsultar: TDataSource
    DataSet = consultar
    Left = 272
    Top = 136
  end
end
