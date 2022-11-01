object FrmConsultaNotaC: TFrmConsultaNotaC
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Notas de Creditos '
  ClientHeight = 488
  ClientWidth = 760
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 21
    Top = 8
    Width = 731
    Height = 401
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsMC
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1MONTO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No existe data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1MNCID: TcxGridDBColumn
        Caption = '#'
        DataBinding.FieldName = 'MNCID'
        HeaderAlignmentHorz = taCenter
        MinWidth = 46
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.HorzSizing = False
        Width = 46
      end
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.HorzSizing = False
      end
      object cxGrid1DBTableView1NO_FACT: TcxGridDBColumn
        Caption = '# Fact.'
        DataBinding.FieldName = 'NO_FACT'
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.HorzSizing = False
      end
      object cxGrid1DBTableView1NOMBRES: TcxGridDBColumn
        Caption = 'Nombre de Cliente'
        DataBinding.FieldName = 'NOMBRES'
        HeaderAlignmentHorz = taCenter
        MinWidth = 204
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.HorzSizing = False
        Width = 204
      end
      object cxGrid1DBTableView1MONTO: TcxGridDBColumn
        Caption = 'Monto'
        DataBinding.FieldName = 'MONTO'
        HeaderAlignmentHorz = taCenter
        MinWidth = 93
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.HorzSizing = False
        Width = 93
      end
      object cxGrid1DBTableView1OBSERVACION: TcxGridDBColumn
        Caption = 'Incidencias'
        DataBinding.FieldName = 'OBSERVACION'
        HeaderAlignmentHorz = taCenter
        MinWidth = 247
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.HorzSizing = False
        Width = 247
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object MC: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      'select a.*, c.nombres_emp, d.nombres from mnoc a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1'
      'left join cliente d On a.clienteid = d.codigo')
    Params = <>
    Left = 240
    Top = 200
    object MCMNCID: TIntegerField
      FieldName = 'MNCID'
      Required = True
    end
    object MCFECHA: TDateField
      FieldName = 'FECHA'
    end
    object MCUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object MCNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object MCCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object MCESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object MCAFECTA_INV: TIntegerField
      FieldName = 'AFECTA_INV'
    end
    object MCAFECTA_CAJA: TIntegerField
      FieldName = 'AFECTA_CAJA'
    end
    object MCMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object MCOBSERVACION: TWideMemoField
      FieldName = 'OBSERVACION'
      BlobType = ftWideMemo
    end
    object MCCONIDICIONFACT: TWideStringField
      FieldName = 'CONIDICIONFACT'
      Size = 10
    end
    object MCIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object MCNOTA: TWideStringField
      FieldName = 'NOTA'
      Size = 100
    end
    object MCNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object MCNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    Left = 360
    Top = 136
  end
  object DsMC: TDataSource
    DataSet = MC
    Left = 400
    Top = 184
  end
end
