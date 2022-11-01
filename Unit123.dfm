object FrmNotario: TFrmNotario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mantenimiento Notario'
  ClientHeight = 294
  ClientWidth = 588
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
  object G1: TcxGroupBox
    Left = 104
    Top = 8
    Enabled = False
    Style.BorderStyle = ebsSingle
    TabOrder = 0
    Height = 161
    Width = 473
    object Label1: TLabel
      Left = 16
      Top = 23
      Width = 88
      Height = 13
      Caption = 'Nombre Notario'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 51
      Height = 13
      Caption = 'Domicilio'
      FocusControl = cxDBTextEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 108
      Width = 41
      Height = 13
      Caption = 'Cedula '
      FocusControl = cxDBTextEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 143
      Top = 108
      Width = 31
      Height = 13
      Caption = 'CARD'
      FocusControl = cxDBTextEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 277
      Top = 108
      Width = 53
      Height = 13
      Caption = 'Matricula'
      FocusControl = cxDBTextEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 37
      DataBinding.DataField = 'NOMBRE_PRO'
      DataBinding.DataSource = DataSource1
      TabOrder = 0
      Width = 441
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 16
      Top = 80
      DataBinding.DataField = 'DIRECCION'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 433
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 16
      Top = 122
      DataBinding.DataField = 'NOM_CONTACTO'
      DataBinding.DataSource = DataSource1
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 143
      Top = 122
      DataBinding.DataField = 'TELF1'
      DataBinding.DataSource = DataSource1
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 277
      Top = 122
      DataBinding.DataField = 'TELF2'
      DataBinding.DataSource = DataSource1
      TabOrder = 4
      Width = 121
    end
  end
  object cxGrid1: TcxGrid
    Left = 104
    Top = 171
    Width = 473
    Height = 118
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Cedula'
        DataBinding.FieldName = 'NOM_CONTACTO'
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
        Width = 105
      end
      object cxGrid1DBTableView1NOMBRE_PRO: TcxGridDBColumn
        Caption = 'Notario'
        DataBinding.FieldName = 'NOMBRE_PRO'
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
        Width = 318
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object nuevo: TcxButton
    Left = 8
    Top = 8
    Width = 90
    Height = 36
    Caption = '&Nuevo'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 137
    TabOrder = 2
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 8
    Top = 50
    Width = 90
    Height = 35
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 9
    TabOrder = 3
    OnClick = guardarClick
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 91
    Width = 90
    Height = 35
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 45
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object DataSource1: TDataSource
    DataSet = datos.QNotarios
    Left = 192
    Top = 200
  end
  object Consulta: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from MAN_PROVEDORES')
    Params = <>
    Left = 152
    Top = 224
    object ConsultaCOD_PROV: TIntegerField
      FieldName = 'COD_PROV'
      Required = True
    end
    object ConsultaNOMBRE_PRO: TWideStringField
      FieldName = 'NOMBRE_PRO'
      Size = 30
    end
    object ConsultaNOM_CONTACTO: TWideStringField
      FieldName = 'NOM_CONTACTO'
      Size = 35
    end
    object ConsultaDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 45
    end
    object ConsultaTELF1: TWideStringField
      FieldName = 'TELF1'
      Size = 13
    end
    object ConsultaTELF2: TWideStringField
      FieldName = 'TELF2'
      Size = 13
    end
    object ConsultaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 45
    end
    object ConsultaWEBSITE: TWideStringField
      FieldName = 'WEBSITE'
      Size = 100
    end
  end
  object DsConsulta: TDataSource
    DataSet = Consulta
    Left = 296
    Top = 208
  end
  object max: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(cod_prov) from MAN_PROVEDORES')
    Params = <>
    Left = 256
    Top = 208
    object maxMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
