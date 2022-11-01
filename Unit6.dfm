object FrmFab: TFrmFab
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento de Fabricantes'
  ClientHeight = 331
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 86
    Top = 91
    Width = 287
    Height = 233
    TabOrder = 0
    LookAndFeel.SkinName = 'Office2010Blue'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsQFabricantes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_FAB'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 55
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Fabricantes'
        DataBinding.FieldName = 'DESCRIPCION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 215
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object nuevo: TcxButton
    Left = 4
    Top = 86
    Width = 75
    Height = 35
    Caption = '&Nuevo'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 836
    TabOrder = 1
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 4
    Top = 127
    Width = 75
    Height = 38
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 999
    TabOrder = 2
    OnClick = guardarClick
  end
  object cxButton3: TcxButton
    Left = 5
    Top = 171
    Width = 75
    Height = 46
    Caption = '&Cancelar'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 45
    TabOrder = 3
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 5
    Top = 223
    Width = 75
    Height = 42
    Caption = '&Eliminar'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 290
    TabOrder = 4
    OnClick = cxButton4Click
  end
  object Panel1: TPanel
    Left = 87
    Top = 0
    Width = 286
    Height = 85
    Enabled = False
    TabOrder = 5
    object Label1: TLabel
      Left = 10
      Top = 4
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 10
      Top = 44
      Width = 54
      Height = 13
      Caption = 'Descripcion'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 10
      Top = 19
      Width = 71
      Height = 21
      TabStop = False
      Color = 9626332
      DataField = 'COD_FAB'
      DataSource = DsQFabricantes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 57
      Width = 265
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRIPCION'
      DataSource = DsQFabricantes
      TabOrder = 1
    end
  end
  object QRFab: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from fabricantes')
    Params = <>
    Left = 136
    Top = 128
  end
  object DsQRFab: TDataSource
    DataSet = QRFab
    Left = 272
    Top = 256
  end
  object DsQFabricantes: TDataSource
    DataSet = datos.FbqFabricantes
    Left = 320
    Top = 144
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(cod) from fabricantes')
    Params = <>
    Left = 168
    Top = 8
    object numeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
