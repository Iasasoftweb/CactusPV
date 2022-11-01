object FrmNotaCF: TFrmNotaCF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Nota de Credito a Factura Especifica'
  ClientHeight = 490
  ClientWidth = 898
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
    Top = 63
    Width = 882
    Height = 378
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsMC
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Total de Items =,0'
          Kind = skCount
          FieldName = 'MNCID'
          Column = cxGrid1DBTableView1NOMBRES
        end
        item
          Format = 'Monto Total =RD$,0.00'
          Kind = skSum
          FieldName = 'MONTO'
          Column = cxGrid1DBTableView1MONTO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
        MinWidth = 74
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
      end
      object cxGrid1DBTableView1NO_FACT: TcxGridDBColumn
        Caption = '# Factura'
        DataBinding.FieldName = 'NO_FACT'
        HeaderAlignmentHorz = taCenter
        MinWidth = 65
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 65
      end
      object cxGrid1DBTableView1NOMBRES: TcxGridDBColumn
        Caption = 'Nombre Cliente'
        DataBinding.FieldName = 'NOMBRES'
        HeaderAlignmentHorz = taCenter
        MinWidth = 227
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 227
      end
      object cxGrid1DBTableView1MONTO: TcxGridDBColumn
        Caption = 'Monto'
        DataBinding.FieldName = 'MONTO'
        HeaderAlignmentHorz = taCenter
        MinWidth = 190
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 190
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Observaci'#243'n'
        DataBinding.FieldName = 'OBSERVACION'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 320
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 320
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 744
    Top = 535
    Width = 313
    Height = 129
    TabOrder = 0
    object Label10: TLabel
      Left = 11
      Top = 9
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label11: TLabel
      Left = 59
      Top = 9
      Width = 91
      Height = 13
      Caption = 'Nombre del Articuo'
    end
    object Label30: TLabel
      Left = 107
      Top = 58
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object Label7: TLabel
      Left = 13
      Top = 59
      Width = 29
      Height = 13
      Caption = 'Precio'
    end
    object t1: TcxTextEdit
      Left = 11
      Top = 22
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 48
    end
    object t2: TcxTextEdit
      Left = 59
      Top = 23
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 237
    end
    object t4: TcxCurrencyEdit
      Left = 11
      Top = 72
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 87
    end
    object cxButton9: TcxButton
      Left = 170
      Top = 70
      Width = 126
      Height = 43
      Caption = 'A'#241'adir'
      Enabled = False
      LookAndFeel.SkinName = 'Sharp'
      OptionsImage.ImageIndex = 114
      OptionsImage.Images = inicio.RibbonImages16
      TabOrder = 3
      OnClick = cxButton9Click
    end
    object Edit1: TEdit
      Left = 13
      Top = 99
      Width = 121
      Height = 21
      TabOrder = 4
      Visible = False
    end
    object t3: TcxCalcEdit
      Left = 104
      Top = 72
      EditValue = 0.000000000000000000
      TabOrder = 5
      Width = 60
    end
  end
  object cxGrid2: TcxGrid
    Left = 900
    Top = 255
    Width = 368
    Height = 297
    TabOrder = 2
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 886
    Height = 49
    TabOrder = 3
    object Label1: TLabel
      Left = 17
      Top = 15
      Width = 70
      Height = 13
      Caption = 'Fecha Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 243
      Top = 15
      Width = 62
      Height = 13
      Caption = 'Fecha Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object inicio: TcxDateEdit
      Left = 93
      Top = 12
      EditValue = 0d
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      StyleFocused.LookAndFeel.SkinName = 'Caramel'
      StyleHot.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      Width = 135
    end
    object fechafinal: TcxDateEdit
      Left = 311
      Top = 12
      EditValue = 0d
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      StyleFocused.LookAndFeel.SkinName = 'Caramel'
      StyleHot.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 1
      Width = 186
    end
    object cxButton2: TcxButton
      Left = 528
      Top = 8
      Width = 105
      Height = 25
      Caption = '&Ok'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 1014
      OptionsImage.Images = FrmNFact_normal.RibbonImages16
      TabOrder = 2
      OnClick = cxButton2Click
    end
  end
  object TPanel
    Left = 8
    Top = 447
    Width = 886
    Height = 36
    TabOrder = 4
    object cxButton1: TcxButton
      Left = 656
      Top = 4
      Width = 203
      Height = 28
      Caption = 'Crear Nota de Cr'#233'dito'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 984
      OptionsImage.Images = FrmNFact_normal.RibbonImages16
      TabOrder = 0
      OnClick = cxButton1Click
    end
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(MNCID) from MNOC')
    Params = <>
    Left = 568
    Top = 200
    object numeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object numeroD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(dncid) from dnc')
    Params = <>
    Left = 528
    Top = 176
    object numeroDMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object Consulta: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 592
    Top = 136
  end
  object MC: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, c.nombres_emp, d.nombres from mnoc a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1'
      'left join cliente d On a.clienteid = d.codigo'
      'where a.AFECTA_INV = 1')
    Params = <>
    Left = 664
    Top = 168
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
    Left = 784
    Top = 104
  end
  object DsMC: TDataSource
    DataSet = MC
    Left = 824
    Top = 152
  end
  object update: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 280
    Top = 144
  end
end
