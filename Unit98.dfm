object FrmBuscarMoneda: TFrmBuscarMoneda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Buscar Moneda'
  ClientHeight = 231
  ClientWidth = 332
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 316
    Height = 200
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsMoneda
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1MONEDA: TcxGridDBColumn
        DataBinding.FieldName = 'MONEDA'
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
        Width = 189
      end
      object cxGrid1DBTableView1SIGNO: TcxGridDBColumn
        DataBinding.FieldName = 'SIGNO'
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
        Width = 111
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Edit1: TEdit
    Left = 203
    Top = 202
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object Qmoneda: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from tb_moneda')
    Params = <>
    Left = 200
    Top = 72
    object QmonedaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QmonedaMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object QmonedaSIGNO: TWideStringField
      FieldName = 'SIGNO'
      Size = 4
    end
  end
  object DsMoneda: TDataSource
    DataSet = Qmoneda
    Left = 248
    Top = 72
  end
end
