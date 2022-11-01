object FrmMturnos: TFrmMturnos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Turnos'
  ClientHeight = 296
  ClientWidth = 720
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
  object Op1: TcxGroupBox
    Left = 8
    Top = 5
    Enabled = False
    TabOrder = 0
    Height = 70
    Width = 625
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 111
      Top = 24
      Width = 102
      Height = 13
      Caption = 'Descripci'#243'n del Turno'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 372
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Hora Inicio'
      FocusControl = cxDBTimeEdit1
    end
    object Label4: TLabel
      Left = 497
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Hora Final'
      FocusControl = cxDBTimeEdit2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 40
      DataBinding.DataField = 'ID_TURNOS'
      DataBinding.DataSource = DsMTurnos
      Properties.ReadOnly = True
      Style.Color = 16638152
      TabOrder = 0
      Width = 89
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 111
      Top = 40
      DataBinding.DataField = 'DESCRICPCION'
      DataBinding.DataSource = DsMTurnos
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 258
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 370
      Top = 40
      DataBinding.DataField = 'INICIO'
      DataBinding.DataSource = DsMTurnos
      Properties.Use24HourFormat = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 497
      Top = 40
      DataBinding.DataField = 'FINAL'
      DataBinding.DataSource = DsMTurnos
      Properties.Use24HourFormat = False
      TabOrder = 3
      Width = 121
    end
  end
  object Op2: TcxGroupBox
    Left = 8
    Top = 78
    TabOrder = 1
    Height = 210
    Width = 625
    object cxGrid1: TcxGrid
      Left = 8
      Top = 6
      Width = 606
      Height = 196
      TabOrder = 0
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
        DataController.DataSource = DSQmTurnos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.AutoHeight = False
        object cxGrid1DBTableView1ID_TURNOS: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'ID_TURNOS'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 94
        end
        object cxGrid1DBTableView1DESCRICPCION: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'DESCRICPCION'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 274
        end
        object cxGrid1DBTableView1INICIO: TcxGridDBColumn
          Caption = 'Hora de Inicio'
          DataBinding.FieldName = 'INICIO'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 112
        end
        object cxGrid1DBTableView1FINAL: TcxGridDBColumn
          Caption = 'Hora Final'
          DataBinding.FieldName = 'FINAL'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 98
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object nuevo: TcxButton
    Left = 640
    Top = 8
    Width = 75
    Height = 63
    Caption = '&Nuevo'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 137
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 2
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 639
    Top = 74
    Width = 75
    Height = 70
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 3
    OnClick = guardarClick
  end
  object cxButton3: TcxButton
    Left = 639
    Top = 150
    Width = 75
    Height = 66
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 4
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 639
    Top = 222
    Width = 75
    Height = 66
    Caption = '&Eliminar'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 66
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 5
    OnClick = cxButton4Click
  end
  object DsMTurnos: TDataSource
    DataSet = datos.ZManTurnos
    Left = 368
    Top = 144
  end
  object max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(ID_TURNOS) from MANT_TURNOS')
    Params = <>
    Left = 616
    Top = 120
    object maxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object ZQMturnos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from MANT_TURNOS')
    Params = <>
    Left = 168
    Top = 168
    object ZQMturnosID_TURNOS: TIntegerField
      FieldName = 'ID_TURNOS'
      Required = True
    end
    object ZQMturnosDESCRICPCION: TWideStringField
      FieldName = 'DESCRICPCION'
      Size = 40
    end
    object ZQMturnosINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object ZQMturnosFINAL: TTimeField
      FieldName = 'FINAL'
    end
  end
  object DSQmTurnos: TDataSource
    DataSet = ZQMturnos
    Left = 176
    Top = 208
  end
end
