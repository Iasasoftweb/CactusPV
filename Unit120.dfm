object FrmServicioInstalador: TFrmServicioInstalador
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Servicio por Instalador / Obrero'
  ClientHeight = 292
  ClientWidth = 309
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
  object Label3: TLabel
    Left = 8
    Top = 225
    Width = 53
    Height = 13
    Caption = 'Monto $$'
    FocusControl = cxDBTextEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 93
    Width = 289
    Height = 113
    CharCase = ecUpperCase
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 8
    TabOrder = 1
    Height = 79
    Width = 289
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 21
      Height = 13
      Caption = 'Cod'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 45
      Width = 59
      Height = 13
      Caption = 'Instalador'
      FocusControl = cxDBTextEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 141
      Top = 10
      Width = 135
      Height = 25
      Caption = 'Buscar Instalador'
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 70
      Top = 18
      DataBinding.DataField = 'COD_EMP'
      DataBinding.DataSource = DsTecnico
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.Color = 12582911
      TabOrder = 1
      Width = 56
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 70
      Top = 42
      DataBinding.DataField = 'NOMBRES_EMP'
      DataBinding.DataSource = DsTecnico
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.Color = 12582911
      TabOrder = 2
      Width = 213
    end
  end
  object cxButton2: TcxButton
    Left = 78
    Top = 251
    Width = 161
    Height = 25
    Caption = 'Procesar'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 81
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxCurrencyEdit1: TcxCurrencyEdit
    Left = 78
    Top = 212
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 187
  end
  object Edit1: TEdit
    Left = 175
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object Tecnicos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select cod_emp, nombres_emp, descuento, cod_emp1  from mtemplead' +
        'o'
      'where cargo = '#39'INSTALADOR'#39)
    Params = <>
    Left = 325
    Top = 26
    object TecnicosCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object TecnicosNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object TecnicosDESCUENTO: TIntegerField
      FieldName = 'DESCUENTO'
    end
    object TecnicosCOD_EMP1: TIntegerField
      FieldName = 'COD_EMP1'
      Required = True
    end
  end
  object DsTecnico: TDataSource
    DataSet = Tecnicos
    Left = 357
    Top = 18
  end
  object InsertaComision: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 104
    Top = 112
  end
end
