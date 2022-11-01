object Frmstart: TFrmstart
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 471
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ScreenSnap = True
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 258
    Width = 121
    Height = 26
    Caption = 'Ultima Taza Cambio Actualizado en el Sistema'
    FocusControl = cxDBCalcEdit2
    WordWrap = True
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 51
    Width = 192
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1MONTOFACT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 64
      end
      object cxGrid1DBTableView1NOFACT: TcxGridDBColumn
        Caption = '# Factura'
        DataBinding.FieldName = 'NOFACT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 60
      end
      object cxGrid1DBTableView1MONTOFACT: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'MONTOFACT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;($,0.00)'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 56
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxDBCalcEdit2: TcxDBCalcEdit
    Left = 8
    Top = 290
    DataBinding.DataField = 'TAZA'
    DataBinding.DataSource = DsConfiguracion
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.Shadow = True
    Style.ButtonStyle = btsFlat
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 121
  end
  object Zqconsulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.* from master_ajuste a')
    Params = <>
    Left = 596
    Top = 200
    object ZqconsultaNOID: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object ZqconsultaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZqconsultaUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object ZqconsultaTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object ZqconsultaCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object ZqconsultaPROVID: TIntegerField
      FieldName = 'PROVID'
    end
    object ZqconsultaNOFACT: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object ZqconsultaFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object ZqconsultaPLAZO: TIntegerField
      FieldName = 'PLAZO'
    end
    object ZqconsultaMONTOFACT: TFloatField
      FieldName = 'MONTOFACT'
      currency = True
    end
    object ZqconsultaMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object ZqconsultaMONTOPEND: TFloatField
      FieldName = 'MONTOPEND'
      currency = True
    end
    object ZqconsultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZqconsultaFECHA_V: TDateField
      FieldName = 'FECHA_V'
      ReadOnly = True
    end
    object ZqconsultaMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object ZqconsultaCAMBIOMONEDA: TFloatField
      FieldName = 'CAMBIOMONEDA'
      currency = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = Zqconsulta
    Left = 596
    Top = 216
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.* from master_ajuste a')
    Params = <>
    Left = 172
    Top = 80
    object IntegerField1: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'FECHA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'USUARIOID'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TIENDAID'
    end
    object WideStringField1: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldName = 'PROVID'
    end
    object WideStringField2: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object DateField2: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'PLAZO'
    end
    object FloatField1: TFloatField
      FieldName = 'MONTOFACT'
      currency = True
    end
    object FloatField2: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object FloatField3: TFloatField
      FieldName = 'MONTOPEND'
      currency = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'ESTADO'
    end
    object DateField3: TDateField
      FieldName = 'FECHA_V'
      ReadOnly = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object FloatField4: TFloatField
      FieldName = 'CAMBIOMONEDA'
      currency = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 172
    Top = 96
  end
  object DsConfiguracion: TDataSource
    DataSet = datos.ZUconfiguracion
    Left = 172
    Top = 56
  end
end
