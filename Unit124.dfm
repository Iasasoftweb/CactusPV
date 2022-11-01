object FrmSeries: TFrmSeries
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Insertar Serie del Producto'
  ClientHeight = 352
  ClientWidth = 539
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
  object Label3: TLabel
    Left = 8
    Top = 75
    Width = 67
    Height = 13
    Caption = 'Serie / IMEI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 12
    Width = 523
    Height = 57
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvSpace
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 45
      Height = 13
      Caption = 'Cod. Art'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 119
      Top = 11
      Width = 108
      Height = 13
      Caption = 'Nombre de Articulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 16
      Top = 25
      Width = 97
      Height = 21
      TabStop = False
      Color = 50319311
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 119
      Top = 25
      Width = 378
      Height = 21
      TabStop = False
      Color = 50319311
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 118
    Width = 523
    Height = 183
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1COD_SERIES
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1COD_SERIES: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'COD_SERIES'
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
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
      object cxGrid1DBTableView1SERIES: TcxGridDBColumn
        Caption = 'Series / IMEI'
        DataBinding.FieldName = 'SERIES'
        HeaderAlignmentHorz = taCenter
        MinWidth = 445
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
        Width = 445
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxTextEdit1: TcxTextEdit
    Left = 8
    Top = 88
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 441
  end
  object cxButton1: TcxButton
    Left = 455
    Top = 87
    Width = 75
    Height = 25
    Caption = 'A'#241'adir'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 944
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 168
    Top = 312
    Width = 93
    Height = 33
    Caption = 'Aceptar'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 169
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 280
    Top = 312
    Width = 93
    Height = 33
    Caption = 'Cancelar'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 961
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 5
    OnClick = cxButton3Click
  end
  object Edit3: TEdit
    Left = 200
    Top = 184
    Width = 37
    Height = 21
    TabOrder = 6
    Visible = False
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MAN_SERIES_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 303
    Top = 160
    object numeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = datos.Series
    Left = 184
    Top = 144
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from man_series')
    Params = <>
    Left = 56
    Top = 208
    object consultaCOD_SERIES: TIntegerField
      FieldName = 'COD_SERIES'
      Required = True
    end
    object consultaCOD_ARTI: TIntegerField
      FieldName = 'COD_ARTI'
    end
    object consultaSERIES: TWideStringField
      FieldName = 'SERIES'
      Size = 30
    end
    object consultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object consultaNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object consultaIDDETALLE: TIntegerField
      FieldName = 'IDDETALLE'
    end
  end
end
