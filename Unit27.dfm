object frmCat: TfrmCat
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Administracion de Categorias'
  ClientHeight = 364
  ClientWidth = 342
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    ParentBackground = False
    ParentColor = False
    Style.BorderStyle = ebsNone
    Style.Color = 8701674
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 97
    Width = 342
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 47
      Height = 13
      Caption = 'Categoria'
      FocusControl = cxDBTextEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 24
      DataBinding.DataField = 'CODCAT'
      DataBinding.DataSource = DsCategoria
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 64
      DataBinding.DataField = 'CAT'
      DataBinding.DataSource = DsCategoria
      TabOrder = 1
      Width = 307
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 105
    Width = 253
    Height = 251
    TabOrder = 1
    LookAndFeel.SkinName = 'Office2010Blue'
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Dsqcategoria
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Categorias'
        DataBinding.FieldName = 'CAT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Width = 239
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton4: TcxButton
    Left = 259
    Top = 296
    Width = 75
    Height = 49
    Caption = '&Eliminar'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 66
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 2
    OnClick = cxButton4Click
  end
  object cxButton3: TcxButton
    Left = 259
    Top = 232
    Width = 75
    Height = 58
    Caption = '&Cancelar'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 3
    OnClick = cxButton3Click
  end
  object guardar: TcxButton
    Left = 259
    Top = 168
    Width = 75
    Height = 58
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 4
    OnClick = guardarClick
  end
  object nuevo: TcxButton
    Left = 259
    Top = 111
    Width = 75
    Height = 51
    Caption = '&Nuevo'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 944
    OptionsImage.Images = inicio.RibbonImages16
    TabOrder = 5
    OnClick = nuevoClick
  end
  object DsCategoria: TDataSource
    DataSet = datos.FbCategorias
    Left = 264
    Top = 16
  end
  object Numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(codcat) from MTCATEGORIA')
    Params = <>
    Left = 200
    Top = 32
    object NumeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object qcategoria: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from MTCATEGORIA')
    Params = <>
    Left = 200
    Top = 184
    object qcategoriaCODCAT: TIntegerField
      FieldName = 'CODCAT'
      Required = True
    end
    object qcategoriaCAT: TWideStringField
      FieldName = 'CAT'
      Size = 15
    end
  end
  object Dsqcategoria: TDataSource
    DataSet = qcategoria
    Left = 168
    Top = 144
  end
end
