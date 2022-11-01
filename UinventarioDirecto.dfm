object FInventarioDirecto: TFInventarioDirecto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Inventario Directo'
  ClientHeight = 498
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label36: TLabel
    Left = 136
    Top = 62
    Width = 11
    Height = 16
    Caption = 'ID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 51
    Top = 88
    Width = 96
    Height = 16
    Caption = 'Nombre del Aritculo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 102
    Top = 116
    Width = 45
    Height = 16
    Caption = 'Cantidad'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 36
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 404
    object Label61: TLabel
      AlignWithMargins = True
      Left = 26
      Top = -3
      Width = 158
      Height = 33
      Margins.Left = 5
      Caption = 'Inventario |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object LbModo: TLabel
      AlignWithMargins = True
      Left = 186
      Top = 8
      Width = 126
      Height = 21
      Margins.Left = 5
      Caption = 'Entrada Directa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 457
    Width = 515
    Height = 41
    Align = alBottom
    Color = 10449444
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 218
    ExplicitWidth = 404
  end
  object DBEdit1: TDBEdit
    Left = 153
    Top = 58
    Width = 84
    Height = 24
    TabStop = False
    Color = 9626332
    DataField = 'CODIGOTXT'
    DataSource = DsArticulos
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 153
    Top = 86
    Width = 232
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ARTICULO'
    DataSource = DsArticulos
    Enabled = False
    ReadOnly = True
    TabOrder = 3
  end
  object BtGuardar: TcxButton
    Left = 84
    Top = 166
    Width = 100
    Height = 35
    Caption = 'Guardar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 256
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    WordWrap = True
    OnClick = BtGuardarClick
  end
  object BtCancelar: TcxButton
    Left = 217
    Top = 166
    Width = 111
    Height = 35
    Caption = 'Cancelar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 5
    WordWrap = True
    OnClick = BtCancelarClick
  end
  object Cant_TXT: TcxCalcEdit
    Left = 153
    Top = 113
    EditValue = 1.000000000000000000
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Width = 98
  end
  object Edit1: TEdit
    Left = 328
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object Qnumero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MDESCARGAR_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 391
    Top = 282
    object QnumeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object Zqusuario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.NOMBRES_EMP from musuario a'
      'left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1'
      ''
      ''
      '')
    Params = <>
    Left = 82
    Top = 320
    object ZqusuarioUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Required = True
    end
    object ZqusuarioEMPLEADOID: TIntegerField
      FieldName = 'EMPLEADOID'
      ReadOnly = True
    end
    object ZqusuarioTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ZqusuarioPASSW: TWideStringField
      FieldName = 'PASSW'
      Size = 10
    end
    object ZqusuarioIDAC: TWideStringField
      FieldName = 'IDAC'
      Size = 10
    end
    object ZqusuarioNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
  end
  object ZcoceptoDes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from DESCA_INVENTARIO'
      '')
    Params = <>
    Left = 154
    Top = 304
    object ZcoceptoDesDESCARGAID: TIntegerField
      FieldName = 'DESCARGAID'
      Required = True
    end
    object ZcoceptoDesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object ZcoceptoDesESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object DsConceptos: TDataSource
    DataSet = ZcoceptoDes
    Left = 229
    Top = 304
  end
  object almacenes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from almacenes')
    Params = <>
    Left = 391
    Top = 328
    object almacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object almacenesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object QDDescarga: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_DDESCARGAR_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 303
    Top = 386
    object QDDescargaGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object DsArticulos: TDataSource
    DataSet = datos.MantArt
    Left = 287
    Top = 304
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 64
    Top = 103
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
end
