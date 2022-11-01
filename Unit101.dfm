object FrmBtransaciones: TFrmBtransaciones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Transaciones'
  ClientHeight = 250
  ClientWidth = 336
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
    Top = 16
    Width = 324
    Height = 225
    TabOrder = 0
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
        DataBinding.FieldName = 'ID'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxGrid1DBTableView1TRANSACION: TcxGridDBColumn
        DataBinding.FieldName = 'TRANSACION'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Consulta: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      'select * from TB_TIPOTRANS')
    Params = <>
    Left = 40
    Top = 144
    object ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ConsultaTRANSACION: TWideStringField
      FieldName = 'TRANSACION'
      Size = 40
    end
  end
  object DsConsulta: TDataSource
    DataSet = Consulta
    Left = 64
    Top = 128
  end
end
