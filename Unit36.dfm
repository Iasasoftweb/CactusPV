object FrmCGastos: TFrmCGastos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Conceptos de Gastos'
  ClientHeight = 389
  ClientWidth = 376
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 0
    Height = 105
    Width = 376
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 10
      Height = 13
      Caption = 'Id'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 120
      Height = 13
      Caption = 'Descripcion del Concepto'
      FocusControl = cxDBTextEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 24
      DataBinding.DataField = 'CONCEPTOSID'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 65
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 72
      DataBinding.DataField = 'DESCRIPCION'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 305
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 152
    Align = alBottom
    Caption = 'Descripcion de Gastos '
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
    Height = 237
    Width = 376
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 372
      Height = 217
      Align = alClient
      TabOrder = 0
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
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
        DataController.DataSource = dsqcgastos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.AutoHeight = False
        object cxGrid1DBTableView1CONCEPTOSID: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'CONCEPTOSID'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
          Caption = 'Descripcion'
          DataBinding.FieldName = 'DESCRIPCION'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 301
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxButton1: TcxButton
    Left = 16
    Top = 111
    Width = 73
    Height = 34
    Caption = '&Nuevo'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 789
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 95
    Top = 111
    Width = 74
    Height = 34
    Caption = '&Guardar'
    Enabled = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 1014
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 175
    Top = 111
    Width = 82
    Height = 34
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 997
    TabOrder = 4
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 263
    Top = 111
    Width = 90
    Height = 34
    Caption = '&Cerrar'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 996
    TabOrder = 5
    OnClick = cxButton4Click
  end
  object DataSource1: TDataSource
    DataSet = datos.ZConceptos_Gastos
    Left = 280
    Top = 16
  end
  object max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(CONCEPTOSID) from CONCEPTOS_GASTOS')
    Params = <>
    Left = 208
    Top = 8
    object maxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object zqcgastos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from CONCEPTOS_GASTOS')
    Params = <>
    Left = 56
    Top = 240
    object zqcgastosCONCEPTOSID: TIntegerField
      FieldName = 'CONCEPTOSID'
      Required = True
    end
    object zqcgastosDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object zqcgastosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object zqcgastosC1: TIntegerField
      FieldName = 'C1'
    end
    object zqcgastosC2: TIntegerField
      FieldName = 'C2'
    end
    object zqcgastosC3: TIntegerField
      FieldName = 'C3'
    end
  end
  object dsqcgastos: TDataSource
    DataSet = zqcgastos
    Left = 160
    Top = 240
  end
end
