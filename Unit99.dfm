object FrmMantBancos: TFrmMantBancos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mant. Bancos'
  ClientHeight = 337
  ClientWidth = 630
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
  object nuevo: TcxButton
    Left = 8
    Top = 8
    Width = 98
    Height = 36
    Caption = '&Nuevo'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 137
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 0
    OnClick = nuevoClick
  end
  object cxGrid1: TcxGrid
    Left = 112
    Top = 112
    Width = 510
    Height = 213
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1BANCO: TcxGridDBColumn
        Caption = 'Nombre del Banco'
        DataBinding.FieldName = 'BANCO'
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
        Width = 212
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'No. Cta'
        DataBinding.FieldName = 'NO_CTA'
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
        Width = 213
      end
      object cxGrid1DBTableView1SIGNO: TcxGridDBColumn
        Caption = 'Sgno Moneda'
        DataBinding.FieldName = 'SIGNO'
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
        Width = 81
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Gp1: TcxGroupBox
    Left = 112
    Top = 8
    Enabled = False
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'VisualStudio2013Light'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'VisualStudio2013Light'
    TabOrder = 2
    Height = 98
    Width = 510
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 86
      Height = 13
      Caption = 'Nombre del Banco'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 60
      Top = 51
      Width = 38
      Height = 13
      Caption = 'Moneda'
      FocusControl = cxDBTextEdit2
    end
    object Label3: TLabel
      Left = 280
      Top = 8
      Width = 56
      Height = 13
      Caption = 'No. de Cta.'
      FocusControl = cxDBTextEdit1
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 24
      DataBinding.DataField = 'BANCO'
      DataBinding.DataSource = DsBancos
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 265
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 60
      Top = 66
      DataBinding.DataField = 'SIGNO'
      DataBinding.DataSource = DsBancos
      ParentFont = False
      Style.Color = 10930928
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 245
    end
    object cxButton2: TcxButton
      Left = 16
      Top = 64
      Width = 38
      Height = 25
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 2
      OnClick = cxButton2Click
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 280
      Top = 24
      DataBinding.DataField = 'NO_CTA'
      DataBinding.DataSource = DsBancos
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 193
    end
  end
  object guardar: TcxButton
    Left = 8
    Top = 50
    Width = 98
    Height = 35
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = FrmHome.RibbonImages16
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
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object DsBancos: TDataSource
    DataSet = datos.Zbancos
    Left = 80
    Top = 176
  end
  object consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.signo from tb_bancos a'
      'left join tb_moneda b on a.moneda = b.id')
    Params = <>
    Left = 256
    Top = 168
    object consultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object consultaBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object consultaMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object consultaSIGNO: TWideStringField
      FieldName = 'SIGNO'
      Size = 4
    end
    object consultaNO_CTA: TWideStringField
      FieldName = 'NO_CTA'
      ReadOnly = True
      Size = 15
    end
  end
  object DsConsulta: TDataSource
    DataSet = consulta
    Left = 200
    Top = 192
  end
  object Numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from tb_bancos')
    Params = <>
    Left = 88
    Top = 272
    object NumeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
