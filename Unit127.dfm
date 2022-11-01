object FrmUpSecuencia: TFrmUpSecuencia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Control de Secuencias'
  ClientHeight = 365
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 8
    Top = 277
    Width = 257
    Height = 37
    Caption = 'Actualizar en 0'
    LookAndFeel.SkinName = 'Coffee'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton1Click
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 8
    Caption = 'Modulo de Articulos'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 121
    Width = 257
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 56
      Height = 13
      Caption = 'Articulos  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 59
      Width = 99
      Height = 13
      Caption = 'Prov. en Articulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 86
      Width = 71
      Height = 13
      Caption = 'Particionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GArticulos: TEdit
      Left = 168
      Top = 28
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object GProvArti: TEdit
      Left = 168
      Top = 56
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Gparticionado: TEdit
      Left = 168
      Top = 83
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 131
    Caption = 'Modulo de Factura '
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Height = 140
    Width = 257
    object Label4: TLabel
      Left = 24
      Top = 32
      Width = 63
      Height = 13
      Caption = 'No. Factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 59
      Width = 60
      Height = 13
      Caption = 'No. Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 24
      Top = 87
      Width = 39
      Height = 13
      Caption = 'Turnos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 24
      Top = 115
      Width = 39
      Height = 13
      Caption = 'Gastos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Gfactura: TEdit
      Left = 168
      Top = 29
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object GDetalle: TEdit
      Left = 168
      Top = 56
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object GTurnos: TEdit
      Left = 168
      Top = 84
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Ggastos: TEdit
      Left = 168
      Top = 112
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 271
    Top = 143
    Caption = 'No. NCF'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Height = 185
    Width = 257
    object Label6: TLabel
      Left = 24
      Top = 32
      Width = 36
      Height = 13
      Caption = 'NCF ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 59
      Width = 75
      Height = 13
      Caption = 'NCF Consumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 24
      Top = 86
      Width = 54
      Height = 13
      Caption = 'NCF Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 113
      Width = 111
      Height = 13
      Caption = 'NCF Gubernamental'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 24
      Top = 141
      Width = 110
      Height = 13
      Caption = 'NCF Nota de Credito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GNCFID: TEdit
      Left = 168
      Top = 29
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object GNCF_C: TEdit
      Left = 168
      Top = 56
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object GNCF_FISCAL: TEdit
      Left = 168
      Top = 83
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object GNCF_GOB: TEdit
      Left = 168
      Top = 110
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object GNCF_NC: TEdit
      Left = 168
      Top = 138
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 271
    Top = 8
    Caption = 'Tools'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Height = 129
    Width = 257
    object Label12: TLabel
      Left = 24
      Top = 21
      Width = 80
      Height = 13
      Caption = 'Master Ajuste'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 24
      Top = 48
      Width = 80
      Height = 13
      Caption = 'Detalle Ajuste'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 24
      Top = 75
      Width = 62
      Height = 13
      Caption = 'Mdescarga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 24
      Top = 103
      Width = 60
      Height = 13
      Caption = 'Inventario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GMAjuste: TEdit
      Left = 168
      Top = 18
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object GDAjuste: TEdit
      Left = 168
      Top = 45
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object GMdescarga: TEdit
      Left = 168
      Top = 72
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object GInventario: TEdit
      Left = 168
      Top = 99
      Width = 65
      Height = 22
      Color = 15527119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object cxButton2: TcxButton
    Left = 8
    Top = 320
    Width = 257
    Height = 37
    Caption = 'Actualizar con Valor Insertado'
    LookAndFeel.SkinName = 'Coffee'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton2Click
  end
  object UpG: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 152
    Top = 136
  end
  object gen: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(numero_factura, 1) from RDB$DATABASE')
    Params = <>
    Left = 216
    Top = 160
    object genGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
end
