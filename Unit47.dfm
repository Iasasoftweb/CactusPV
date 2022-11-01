object FrmCobro: TFrmCobro
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cobro de Factura'
  ClientHeight = 509
  ClientWidth = 508
  Color = clMenu
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 776
    Top = 18
    Caption = 'Resumen de Totales'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Height = 178
    Width = 296
    object Label14: TLabel
      Left = 12
      Top = 36
      Width = 31
      Height = 14
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 16
      Top = 106
      Width = 26
      Height = 14
      Caption = 'ITBs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 71
      Width = 65
      Height = 14
      Caption = 'Descuento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 140
      Width = 96
      Height = 14
      Caption = 'Total Facturado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object total: TcxDBCurrencyEdit
      Left = 114
      Top = 29
      DataBinding.DataField = 'MONTO'
      DataBinding.DataSource = dsmasterFACT
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clBlack
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clYellow
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Blueprint'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Blueprint'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 0
      Width = 151
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 115
      Top = 62
      DataBinding.DataField = 'DESCUENTO'
      DataBinding.DataSource = dsmasterFACT
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clBlack
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Blueprint'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Blueprint'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Blueprint'
      TabOrder = 1
      Width = 150
    end
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 668
    Top = 399
    DataBinding.DataField = 'RNC_CLIENTE'
    DataBinding.DataSource = dsmasterFACT
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Visible = False
    Width = 185
  end
  object B6: TcxButton
    Left = 702
    Top = 307
    Width = 224
    Height = 66
    Caption = 'Aplicar Descuentos'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 698
    TabOrder = 1
    Visible = False
    OnClick = B6Click
  end
  object cxButton4: TcxButton
    Left = 585
    Top = 533
    Width = 144
    Height = 43
    Caption = 'Cobrar'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D361000000000000036000000280000002000000020000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005010101120101
      0112010101120101011201010112010101120101011201010112010101120101
      0112010101120101011201010112010101120101011201010112010101120101
      0112010101120101011201010112010101120101011201010112010101120101
      01120101011201010112010101120101011100000003070807385C7467CD5B73
      64CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B72
      64CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B72
      64CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B7264CD5B72
      64CD5B7264CD5B7264CD5C7365CD586F62CB030404280F100F52CEE1D3FFCADD
      D0FFC9DCCFFFC9DCCFFFC9DCCFFFC9DCCFFFC9DCCEFFC9DCCEFFC9DCCEFFC9DC
      CEFFC8DCCDFFC8DBCDFFC8DBCDFFC8DBCDFFC7DBCDFFC7DBCCFFC7DBCCFFC7DB
      CCFFC7DBCCFFC6DACBFFC6DACBFFC6DACBFFC6DACBFFC5DACBFFC5D9CAFFC5D9
      CAFFC5D9CAFFC5D9CAFFC6DBCCFFC1D5C7FF0809083D0D0F0E4FC1D4C5FFBED0
      C2FFBDCFC1FFBDD0C1FFBDD0C1FFBDD0C1FFBDD0C1FFBDD0C1FFBDD0C1FFBDD0
      C1FFBDD0C1FFBDD0C1FFBDD0C1FFBDD0C1FFBED0C2FFBED0C2FFBED0C2FFBED0
      C2FFBED0C2FFBED0C2FFBED0C2FFBED0C2FFBED0C2FFBED0C2FFBED0C2FFBED1
      C2FFBFD1C2FFBFD1C2FFC1D3C4FFBCCDC0FF0708083B17181861DDF4F0FFE1F9
      F8FFE1F9F7FFE1F9F7FFE1F9F7FFE1F9F7FFE1F9F7FFE1F9F7FFE1F9F7FFE1F9
      F7FFE0F9F7FFE0F9F7FFE0F9F7FFE0F9F7FFE0F8F7FFE0F8F7FFE0F8F7FFE0F9
      F7FFE0F8F7FFE0F9F7FFE0F9F7FFE0F9F7FFE0F9F7FFE0F9F7FFE0F9F7FFE1F9
      F7FFE0F9F7FFE0F8F7FFE1F9F7FFE1FAF9FF0809083C1212124DD9F5F3FFADCF
      C2FFB7D9D0FFB0D2C7FFA8CABEFFAFD0C6FFACCFC3FFB0D2C7FFB2D3C9FFB4D5
      CCFFB9DBD2FFBDDED5FFB6D7CDFFBBDCD3FFBDDED7FFC1E1DAFFBCDDD3FFB9DA
      D0FFBBDDD4FFB7D7CEFFB1D2C9FFB3D4CAFFABCFC3FFB0D2C8FFADCFC3FFA9CB
      BEFFB0D4C8FFB9D9D1FFADCFC2FFD5F0EFFC0C0D0D3B0D151146D0E9E8FA8FB4
      9FFF9FC5B4FFA5C9BAFFC8E6E2FFDBF7F5FFDAF7F7FFDEFBFCFFDEFAFBFFDDF9
      F9FFC9E5E1FFB7D4CDFFA9C8BAFFB0D0C0FFB3D3C3FF83A693FF87A796FFADCC
      C2FFC1DDD7FFDBF7F6FFDCF9F9FFDEFBFCFFDDF9FAFFDAF7F7FFDBF7F5FFBBDC
      D4FFA0C6B6FF9DC1B1FF97BBA8FFD3ECEBF9131313350C131035C8E0E0F389B0
      99FFA8CABCFFE8FFFFFFE4FFFFFFE3FEFFFFD7F4F5FFC2E1DFFFD1EFEEFFE6FF
      FFFFB6D3CEFFACCBC0FFC3E2D3FFC8E6D6FFCCEADBFF9ABAA9FF779985FF82A3
      93FFAAC9C0FFDFF9FAFFE1FCFDFFC8E7E5FFC6E5E3FFDFFBFCFFE3FEFFFFE6FF
      FFFFE1FDFEFF90B3A1FFB6D7CDFF4851529B0000000000000000586363ABC5E4
      DEFF8FAFA0FFCEEAE9FFE8FFFFFFE7FFFFFFC7E6E4FF9BBFB8FFB6D7D3FFE4FF
      FFFFE2FEFFFF99B8ACFF5E816CFF739581FFA5C5B4FF9EBFAEFF6F917DFF8BAD
      9DFFD2EFEDFFE6FFFFFFD9F6F7FFA4C7C1FFA5C8C2FFDAF7F7FFE7FFFFFFE6FF
      FFFFBFDBD8FF7D9F8DFFCAE8E4FF1D2021630000000000000000373E3E88CCEA
      E5FF89AE9AFF9EBFB2FFB4D0C9FFCFEBEAFFE5FFFFFFDAF7F3FFE4FFFFFFE2FE
      FFFFE4FFFFFFD0EDEBFF90B0A4FF739684FF729584FF7A9C8BFF97B9ACFFC9E7
      E3FFE2FEFFFFE2FEFFFFE2FEFFFFDDF9F6FFDEFAFAFFE1FCFCFFC2DEDAFFAFCE
      C5FF95B8A9FF87AC96FFCCE9E6FE0708083400000000000000001B1E1E61D1F1
      EBFFCCEBE6FFCFEEEAFFCAE7E3FFCAE6E2FFCCE9E5FFCEEBE6FFD2EEEAFFD6F2
      F0FFD8F4F2FFD6F2F0FFD6F2F0FFD2EFECFFD0ECE9FFD1EEEAFFD6F2F0FFD9F5
      F3FFD9F5F3FFD6F3F1FFD3F1EDFFD1EFEAFFCCEBE6FFCBE9E5FFCBE8E4FFCDEC
      E7FFCFEEE9FFCEECE7FFC9E4E3F9030B0726000000000000000003030321383F
      40873E43439F254559CD637D80D38CB6BCFF9AC3C9FFA0CAD0FF98C4CCFD7596
      9BE0113D5CCD84ACB3ED86AFB6FC97C0C6FFA2CAD1FF9FCCD3FF82A9B0EE1B48
      67E73C42429F3D43439F3D43439F3C42429F3D42429F3D43439F3E43439F3D43
      439F3D43439F414545A11B1E1F610A0A0A1A0000000000000000000000000000
      000000000000023A61C79BD9E6FCC6ECF4FFC6ECF4FFC6ECF4FFC6ECF4FF9DD9
      E4FB00375EC094CFDBF46AABB9FF74BDCCFF89D4E4FF8BD6E5FF99D9E6FE023B
      62CD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B466ECFA1DFECFF7DBAC6FF9AD9E5FFA6E3EFFF97DBE9FFA2DF
      ECFF00375EC0A2E0ECFFC6ECF4FFC6ECF4FFC6ECF4FFC6ECF4FF9DDCE9FF0B47
      6ED7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B456DCFA4E1EDFFC6ECF4FFC6ECF4FFC6ECF4FFC6ECF4FFA5E2
      EEFF00375EC0A2E0ECFF6BABB8FF78BFCDFF8CD6E4FF8ED6E5FF9CDBE8FF0945
      6CD6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000094269CB97D4E2FF4A9EAFFF84C3D0FF69B7C8FF4DA2B4FF9BD7
      E6FF00375EC0A2DFEBFCC6ECF4FFC6ECF4FFC6ECF4FFC6ECF4FF9DDCE8FF0844
      6CD6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000375EC08DC9DAFB94D0DFF8A0DDEAFC9FDDE9FB95CFDEF68DC9
      DAFB00375EC0A0DBE7F694D2DFFFAEE2EDFFAADFEAFF99D8E6FFA2DFEBFF0945
      6CD6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060B0F1A00375EC022597BCD306887D2306887D222597BCD0137
      5EC000375EC0A3DEE9FAC6ECF4FFC6ECF4FFC6ECF4FFC6ECF4FF9FDDEAFF104B
      72D6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060B0F1A0B161D310B161D31060B0F1A0101
      010100375EC08BC0CEE472B8C8FC5AABBCFF6DBDCEFF6BBCCDFF92CDDBF4053E
      65C7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000375EC070A0AECD8DC4D1E99DD7E2F19ED8E4F390C8D6EE8FCADBFD0037
      5EC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060B0F1A00375EC022597BCD306887D2306887D222597BCD00375EC0060B
      0F1A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000060B0F1A0B161D310B161D31060B0F1A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
    OptionsImage.ImageIndex = 698
    PopupAlignment = paRight
    SpeedButtonOptions.Transparent = True
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton4Click
  end
  object Edit1: TEdit
    Left = 774
    Top = 2
    Width = 121
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object Edit3: TEdit
    Left = 788
    Top = 399
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object cxCurrencyEdit2: TcxCurrencyEdit
    Left = 788
    Top = 183
    ParentFont = False
    Properties.ReadOnly = False
    Properties.OnChange = cxCurrencyEdit2PropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 179
  end
  object Memo1: TMemo
    Left = 932
    Top = 286
    Width = 424
    Height = 318
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 312
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 8
    Visible = False
  end
  object Edit7: TEdit
    Left = 496
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 9
    Visible = False
  end
  object cxDBSpinEdit2: TcxDBSpinEdit
    Left = 408
    Top = 66
    DataBinding.DataField = 'CLIENTEID'
    DataBinding.DataSource = dsmasterFACT
    Enabled = False
    Properties.ReadOnly = True
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 10
    Visible = False
    Width = 43
  end
  object pnlCEntral: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 88
    Width = 488
    Height = 352
    Margins.Left = 10
    Margins.Right = 10
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 11
    object Panel5: TPanel
      Left = 805
      Top = 305
      Width = 409
      Height = 150
      BevelInner = bvRaised
      BevelKind = bkSoft
      Color = 13433592
      ParentBackground = False
      TabOrder = 0
      Visible = False
      object Label21: TLabel
        Left = 60
        Top = 20
        Width = 107
        Height = 33
        Caption = 'Cambio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 39
        Top = 20
        Width = 15
        Height = 33
        Caption = '$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 360
        Top = 20
        Width = 15
        Height = 33
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object PEfectivo: TcxCurrencyEdit
      Left = 312
      Top = 155
      ParentFont = False
      Properties.Nullstring = '0.00'
      Properties.UseNullString = True
      Properties.OnChange = PEfectivoPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnEnter = PEfectivoEnter
      OnExit = PEfectivoExit
      OnKeyDown = PEfectivoKeyDown
      Width = 162
    end
    object PCheques: TcxCurrencyEdit
      Left = 312
      Top = 226
      ParentFont = False
      Properties.Nullstring = '0.00'
      Properties.UseNullString = True
      Properties.OnChange = PChequesPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 162
    end
    object PC: TcxPageControl
      Left = 496
      Top = 582
      Width = 597
      Height = 182
      TabOrder = 3
      Visible = False
      Properties.ActivePage = TabEfectivo
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 176
      ClientRectLeft = 3
      ClientRectRight = 591
      ClientRectTop = 26
      object TabEfectivo: TcxTabSheet
        Caption = 'Efectivo'
        ImageIndex = 0
        object GroupBox1: TGroupBox
          Left = 3
          Top = 10
          Width = 561
          Height = 95
          TabOrder = 0
          object Label24: TLabel
            Left = 27
            Top = 36
            Width = 15
            Height = 33
            Caption = '$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Tarjetas'
        ImageIndex = 1
        object GroupBox4: TGroupBox
          Left = 14
          Top = 12
          Width = 561
          Height = 139
          TabOrder = 0
          object Label20: TLabel
            Left = 27
            Top = 36
            Width = 15
            Height = 33
            Caption = '$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 48
            Top = 3
            Width = 128
            Height = 33
            Caption = 'Pagar con:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 255
            Top = 3
            Width = 34
            Height = 33
            Caption = 'Op'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 332
            Top = 3
            Width = 52
            Height = 33
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 33
            Top = 91
            Width = 171
            Height = 33
            Caption = '# Referencia :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cxCurrencyEdit4: TcxCurrencyEdit
            Left = 48
            Top = 36
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -27
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = PEfectivoEnter
            OnExit = PEfectivoExit
            OnKeyDown = PEfectivoKeyDown
            Width = 201
          end
          object CBTipo: TcxComboBox
            Left = 255
            Top = 37
            ParentFont = False
            Properties.Items.Strings = (
              'CR'
              'DB')
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -24
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Text = 'CR'
            Width = 71
          end
          object CBCaracteristica: TcxComboBox
            Left = 332
            Top = 37
            ParentFont = False
            Properties.Items.Strings = (
              'Visa'
              'MasterCard'
              'AmericanExpress')
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -24
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Text = 'Visa'
            Width = 213
          end
          object Edit4: TEdit
            Left = 210
            Top = 89
            Width = 335
            Height = 45
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'Cheques'
        ImageIndex = 2
        object GroupBox5: TGroupBox
          Left = 3
          Top = 6
          Width = 561
          Height = 139
          TabOrder = 0
          object Label29: TLabel
            Left = 12
            Top = 56
            Width = 15
            Height = 33
            Caption = '$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 33
            Top = 23
            Width = 112
            Height = 33
            Caption = 'Monto Ck'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cxCurrencyEdit5: TcxCurrencyEdit
            Left = 33
            Top = 56
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -27
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = PEfectivoEnter
            OnExit = PEfectivoExit
            OnKeyDown = PEfectivoKeyDown
            Width = 201
          end
          object GroupBox6: TGroupBox
            Left = 287
            Top = 3
            Width = 258
            Height = 133
            Caption = 'Detalle del CK'
            TabOrder = 1
            object Label33: TLabel
              Left = 12
              Top = 15
              Width = 48
              Height = 19
              Caption = 'No. Ck'
              Color = clNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label31: TLabel
              Left = 12
              Top = 71
              Width = 42
              Height = 19
              Caption = 'Banco'
              Color = clNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Edit5: TEdit
              Left = 11
              Top = 34
              Width = 121
              Height = 29
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cxComboBox3: TcxComboBox
              Left = 11
              Top = 91
              ParentFont = False
              Properties.Items.Strings = (
                'Banco de Reservas '
                'The Bank of Nova Scotia'
                'Citibank'
                'Banco Popular'
                'BancoProgreso'
                'Banco BHD-LEON'
                'Banco Santa Cruz'
                'Banco Caribe Internacional'
                'Banco BDI'
                'Banco Vimenca.'
                'Banco  L'#243'pez de Haro'
                'Banco de las Am'#233'ricas'
                'Banco Prom'#233'rica'
                'Banesco Banco'
                'Banco Lafise'
                'Banco Ademi'
                'Banco Bellbank'
                'Banco Activo Dominicana ')
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Text = 'Visa'
              Width = 230
            end
          end
        end
      end
    end
    object Pbonos: TcxCurrencyEdit
      Left = 312
      Top = 262
      ParentFont = False
      Properties.Nullstring = '0.00'
      Properties.UseNullString = True
      Properties.OnChange = PbonosPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 162
    end
    object PanelDesc: TcxGroupBox
      Left = 654
      Top = 231
      Caption = 'Aplicar Descuentos'
      PanelStyle.BorderWidth = 2
      PanelStyle.OfficeBackgroundKind = pobkStyleColor
      TabOrder = 5
      Visible = False
      Height = 122
      Width = 287
      object Label17: TLabel
        Left = 26
        Top = 28
        Width = 111
        Height = 13
        Caption = 'Clave de Autorizacion'
      end
      object Label18: TLabel
        Left = 146
        Top = 28
        Width = 93
        Height = 13
        Caption = 'Monto Descuento'
      end
      object cxTextEdit1: TcxTextEdit
        Left = 25
        Top = 43
        ParentFont = False
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 0
        OnKeyDown = cxTextEdit1KeyDown
        Width = 105
      end
      object cxButton3: TcxButton
        Left = 104
        Top = 78
        Width = 75
        Height = 25
        Caption = 'Ok'
        LookAndFeel.SkinName = 'SharpPlus'
        OptionsImage.ImageIndex = 81
        TabOrder = 1
        OnClick = cxButton3Click
      end
      object desc: TcxCalcEdit
        Left = 144
        Top = 44
        EditValue = 0.000000000000000000
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 86
      end
    end
    object panelcobro: TcxGroupBox
      Left = 585
      Top = 283
      Caption = 'Impresi'#243'n '
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.Shadow = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 6
      Visible = False
      Height = 175
      Width = 369
      object FORMAPAGO: TcxPageControl
        Left = 228
        Top = 251
        Width = 413
        Height = 66
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 60
        ClientRectLeft = 3
        ClientRectRight = 407
        ClientRectTop = 29
        object cxTabSheet1: TcxTabSheet
          Caption = 'Tarjeta de Cr'#233'dito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 0
          ParentFont = False
          object cxDBComboBox2: TcxDBComboBox
            Left = 23
            Top = 6
            DataBinding.DataField = 'PINREFERIDO'
            DataBinding.DataSource = dsmasterFACT
            Properties.Items.Strings = (
              'VISA'
              'MASTER CARD')
            TabOrder = 0
            Width = 265
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Tarjeta Debito'
          ImageIndex = 1
          object cxDBComboBox3: TcxDBComboBox
            Left = 23
            Top = 4
            DataBinding.DataField = 'PINREFERIDO'
            DataBinding.DataSource = dsmasterFACT
            Properties.Items.Strings = (
              'BANCO POPULAR'
              'BANCO DE RESERVAS'
              'BANCO DEL PROGRESO'
              'BANCO BHD'
              'BANCO PROAMERICA'
              'SCOTTIAN BANK'
              'BANCO ADEMI'
              'BANCO ADOPEN'
              'BANCO CONFISA'
              'BANCO CARIBE'
              'BANCO LEON'
              'BANCO PERAVIA'
              'BANCO CENTRAL'
              'ASOC. NAC. DE AHORROS Y PREST.'
              'ASOC. POPULAR AHORROS Y PREST.'
              'BANCO BDI'
              'BANCO SANTA CRUZ'
              'BANCO BANESCO'
              '')
            TabOrder = 0
            Width = 265
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'Cheques'
          ImageIndex = 2
          object cxDBComboBox4: TcxDBComboBox
            Left = 3
            Top = 3
            DataBinding.DataField = 'PINREFERIDO'
            DataBinding.DataSource = dsmasterFACT
            Properties.Items.Strings = (
              'BANCO POPULAR'
              'BANCO DE RESERVAS'
              'BANCO DEL PROGRESO'
              'BANCO BHD'
              'BANCO PROAMERICA'
              'SCOTTIAN BANK'
              'BANCO ADEMI'
              'BANCO ADOPEN'
              'BANCO CONFISA'
              'BANCO CARIBE'
              'BANCO LEON'
              'BANCO PERAVIA'
              'BANCO CENTRAL'
              'ASOC. NAC. DE AHORROS Y PREST.'
              'ASOC. POPULAR AHORROS Y PREST.'
              'BANCO BDI'
              'BANCO SANTA CRUZ'
              'BANCO BANESCO'
              '')
            TabOrder = 0
            Width = 278
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 311
      Width = 529
      Height = 95
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 7
      object Label40: TLabel
        Left = 182
        Top = 12
        Width = 64
        Height = 21
        Caption = 'Devuelta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBCurrencyEdit5: TcxDBCurrencyEdit
        Left = 262
        Top = 0
        DataBinding.DataField = 'DEVOLUCION'
        DataBinding.DataSource = dsmasterFACT
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.ReadOnly = True
        Properties.OnChange = cxDBCurrencyEdit5PropertiesChange
        Style.BorderStyle = ebsNone
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clGray
        Style.Font.Height = -27
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.TextStyle = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 0
        Width = 217
      end
    end
    object Panel2: TPanel
      Left = 131
      Top = 136
      Width = 175
      Height = 151
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 8
      object Label16: TLabel
        Left = 103
        Top = 21
        Width = 59
        Height = 21
        Caption = 'Efectivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 59
        Top = 59
        Width = 104
        Height = 21
        Caption = 'Tarjeta Cr / Db'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 99
        Top = 92
        Width = 63
        Height = 21
        Caption = 'Cheques'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 117
        Top = 127
        Width = 46
        Height = 21
        Caption = 'Bonos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel9: TPanel
      Left = 65
      Top = 106
      Width = 403
      Height = 2
      BevelOuter = bvNone
      Color = 10449444
      ParentBackground = False
      TabOrder = 9
    end
    object opradio: TcxRadioGroup
      Left = 702
      Top = 225
      Caption = 'Forma de Pago'
      ParentFont = False
      Properties.Columns = 4
      Properties.Items = <
        item
          Caption = 'Efectivo'
        end
        item
          Caption = 'T. Cr'#233'dito'
        end
        item
          Caption = 'T. Debito'
        end
        item
          Caption = 'CHK'
        end>
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 10
      Height = 52
      Width = 296
    end
    object opmaster: TcxGroupBox
      Left = 770
      Top = 53
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 11
      Height = 307
      Width = 369
      object Label4: TLabel
        Left = 18
        Top = 34
        Width = 62
        Height = 14
        Caption = 'Cod Cliente'
        FocusControl = cxDBSpinEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label5: TLabel
        Left = 22
        Top = 51
        Width = 104
        Height = 14
        Caption = 'Nombre del Cliente'
        FocusControl = cxDBSpinEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 434
        Top = 9
        Width = 107
        Height = 14
        Caption = 'Condicion de Venta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label3: TLabel
        Left = 19
        Top = 93
        Width = 24
        Height = 14
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 202
        Top = 93
        Width = 117
        Height = 14
        Caption = 'Asignar Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 119
        Top = 132
        Width = 86
        Height = 16
        Caption = 'No. Comprante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 21
        Top = 48
        DataBinding.DataField = 'CLIENTEID'
        DataBinding.DataSource = dsmasterFACT
        Enabled = False
        Properties.ReadOnly = True
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 0
        Visible = False
        Width = 43
      end
      object cxButton1: TcxButton
        Left = 405
        Top = 124
        Width = 43
        Height = 21
        Hint = 'Buscar Clientes [F8]'
        Caption = '[F8]'
        Enabled = False
        LookAndFeel.SkinName = 'Office2007Blue'
        OptionsImage.ImageIndex = 947
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxButton2: TcxButton
        Left = 48
        Top = 19
        Width = 254
        Height = 32
        Caption = 'Seleccionar Cliente'
        LookAndFeel.SkinName = 'Office2007Blue'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D361000000000000036000000280000002000000020000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          000B0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
          000A0000000A0000000B00000008000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000281B12057D241A
          0A8C231B0D8B231C0F8B231D118B231E138B231E138B231D138B231D118B231B
          0E8B231A0B8B241A0B8C1E150982010100360000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000472B078EFFB02FFFFFB8
          44FFFFC258FFFFCC69FFFFD377FFFFD880FFFFD982FFFFD67BFFFFCF6FFFFFC7
          60FFFFBE4FFFFFB33BFFFFBC4AFF704A16B30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000331E0274FFB133FFFFB6
          50FFFFBD5DFFFFC46AFFFFC973FFFFCC79FFFFCD7AFFFFCB76FFFFC569FFFFB9
          51FFFFAC37FFFFA326FFFFBF55FF55360F920000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A050033FFA92FFFFFC2
          6FFFFFC472FFFFC87AFFFFCC81FFFFCD85FFFFCE85FFFFCD84FFFFCB80FFFFC6
          77FFFFB450FFFFA52DFFFFC265FF100901410000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000774607A8FFD1
          77FFFFD997FFFFD497FFFFD396FFFFD498FFFFD498FFFFD397FFFFD193FFFFD0
          91FFFFD192FFFFD48EFF855A20B7000000090000000700000008000000080000
          0008000000080000000800000007000000000000000000000017050103590A02
          05690902056709020467090204670802036708030467060A0E63100808706338
          1ABBBF8754EAFDD096FFFFE2B2FFFFE3B2FFFFE4B5FFFFE3B4FFFFE3B6FFFFDF
          B0FFEAC79AFBA68D6EDF231C35A0121433932320319833302D98302C2C982D2A
          29982B27269829242498262121970F0D0C740000001C290B1883AB2F62FBAC31
          60FFA63159FFA13153FF9D314EFF992B40FF8B4F6AFF7DCDF8FF9079B1FC981B
          51F39C254DF7B94C56FFCDB092FFC6D7CAFFBDCEC6FFC8D9D4FFD1D2BFFFDCBC
          A1FFDFCBC7FEEBDDDCFE6764FFFF4244FFFFAEA3F5FFFFEFE3FFEDDBDAFFE3CF
          CEFFD9C3C0FFCFB7B3FFC5AAA6FFB69A95FF261F1E842F0C1C7EC73775FFB433
          66FFB03461FFAD385EFFAC3F5FFFAC3C52FF967195FF86D9FFFF93AEE6FFB832
          69FFB33062FF9A284FFF73809AFF79C2FBFF7BBDF9FF7BC1F9FF79AED6FFAD9E
          A0FFE2D0CFFFEEDED5FF7F79F2FF4E4FFFFFBBB0E6FFEFDFD6FFDECCCBFFD4BF
          BDFFCBB5B2FFC2AAA7FFB89E9AFFBA9C96FF2F26258A03000222AF3168F5BD3C
          71FFB6416DFFB54A6FFFB65472FFB14860FF9291BCFF87D5FFFF8ACAFDFFB04B
          82FFB42759FF8C4D75FF8FC5EEFF8ECCFFFF85C7FFFF86C8FFFF87C8FAFF9AAA
          BCFFD7C2BEFFEADACFFF968FECFF6D6EFFFFC8BDDFFFEADCD5FFE1D3D1FFD9C8
          C6FFC9B3B0FFBBA29EFFB49995FFB1948EFF120F0E5B00000000280B186CB842
          75F1CB5783FFCA6083FFC76984FFB55773FF8CB4E4FF8BD2FFFF88D6FFFFA970
          A7FFAE1B4EFF9381A8FF94DAFFFF83C7FFFF88CAFFFF94CFFFFF92D3FFFF8EB7
          DAFFC0ABA6FFE6D5CAFFA8A0E5FF8383FFFFD1C4D7FFE4D6D1FFDFD1CFFFDDCF
          CEFFD8CAC7FFC3AEAAFFAF938EFFA38781FC0605043600000000000000000401
          022032192A9A7E4D73EEAB6D91FFA57399FF8ED1FFFF90D3FFFF92DDFFFFA599
          CCFF881543FC6C89ACFF94D7FFFF89CBFFFF96D1FFFFADDDFFFFCCF1FFFF8CB7
          D8FF5D6775FFD6C3B8FFB7AEE1FF9594FBFFD7C9D1FFE0D2CEFFDDD0CEFFDCCE
          CCFFDACDCBFFDACDCBFFC7B3AFFF88716BE90000001500000000000000000000
          001A002846AF0063B1F90562B0FF2F83C7FF84C8F6FF78BCEDFF94D2F7FF76AF
          E1FE143260F23B7CA7FF94D4FFFF96D3FFFFB1E2FFFFACD7F5FF72A4C4FF407F
          A8FF125A87FFAAA7A5FFC7B9DAFFA2A0F6FFDACCCCFFDED1CEFFDDD0CEFFDCCE
          CCFFDBCECCFFE4DBD9FFEBE0DCFF483D3AA300000000000000000000001B0031
          56C0005CA2F5006AB9FF0062B3FF1F7FC6FF84C0F4FF87C1F8FF76C2F5FF44B8
          EDFF016DA2FF11699DFF8DCDF9FFB4E5FFFF84B8DAFF206693FF005284FF1E6E
          9CFF2B7CAAFFA5AAABFFC2B5DDFF9391F6FFDBCECEFFDDD0CDFFE4D8D6FFEADF
          DDFFECE1DEFFD3C7C4F86A5E5CB50201011A0000000000000003000D1860004F
          8AE40061ABFA0066B5FF1272BDFF85C0F3FF92CDFFFF84C5FFFF87C9FFFF87C4
          F8FF2184BBFF0075B2FF6EB8E4FF629DC4FF0B5A8AFF045B8EFF186FA1FF378A
          B6FF4491BAFFDBDAD8FFEFE9F9FFD5D0F5FFFBF5F4FFEBE2DEFFB5A9A6E5665E
          5CAD24201F67050403270000000000000000000000000000000500060B350014
          226700508ADA0066B7FF4897D5FFA1D6FFFF83C6FFFF88C9FFFF8ECCFFFF94D0
          FFFF50ACE3FF017DBBFF106B9FFF07598BFF086497FF0F6FA4FF2D86B6FF439F
          CFFF24566FC194BBD5F393C1E1FF95C0DCFFAFDFF8FF49545DA70000000E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000A12520587D2FF67AFE4FF96D2FFFF87CAFFFF94D0FFFFA8D9FFFFB9E0
          FFFF79CAFAFF0C7BB2FF075E91FF0A70A8FF0B77B1FF208BC2FF389FD3FF0E40
          58AD0917207B78B8EAFB81C2FAFF80C1F9FF85C9FAFF243C4DA5000000060000
          0000000000000000000000000000000000000000000000000000000000000000
          00000001032C098ECBF98BD6FDFF9AD2FFFF97D2FFFFA6D9FFFFB7E1FFFFD2EB
          FFFFA9E0FEFF1EBCF5FF0F81ABE7033958B7064564BF093C559F010E144C0407
          094377A2C6EB97D1FFFF86C6FFFF83C6FFFF8ACBFFFF85BCE5F80B0E11550000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000014047CA9E35DC6F2FF66B5EDFF77C2F1FFBCE3FFFFC6E8FFFFE3F2
          FFFFACE3FCFF1BD9FFFF0A505E99000000000000000000000000000000002632
          3C86A7E2FFFF84C6FFFF88C9FFFF8ECBFFFF89CAFFFF95DAFFFF2F3F4B950000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002095B81C70E9FE4FF129EE0FF21AAE8FFABDCF9FFDFF2FFFFF6F6
          FEFF65DBFAFF0AEDFFFF01191B55000000000000000000000000000000074054
          64B69FDCFFFF91CEFFFF9BD2FFFFA3D6FFFFA9D9FFFFA5E0FFFF496B83CB0000
          0017000000000000000000000000000000000000000000000000000000000000
          000000000000093D569C1CB4F7FF1EB4F0FF19BAF7FF50C8F8FFE7EEFBFF91DF
          F6FF09EBFEFF03CBD1E500010112000000000000000000000000000001435784
          A5F7AFE1FFFFA5D8FFFFADDBFFFFB4DFFFFFC3E9FFFFD2F5FFFF5C97C1FE000E
          1997000000080000000000000000000000000000000000000000000000000000
          000000000000020E134623C3FFFF25C3FCFF22CDFFFF19D8FFFF30D9F7FF04ED
          FCFF00FFFFFF0044437E0000000000000000000000000000000000101D90377B
          A7FFB6E2FFFFB6E0FFFFC1E6FFFFCBEDFFFF9ABFDAFF517FA0FF26638DFF0F51
          7CFA000203360000000000000000000000000000000000000000000000000000
          000000000000000000010D4D60951FE9FFFF14EEFFFF0AF6FFFF00FFFFFF00FF
          FFFF008989B40000000B00000000000000000000000000000002012C45BE0E65
          98FFA6D3F1FFD3F2FFFFC6E7FBFF5F8CACFF08436EFF034572FF27678FFF2B71
          9BFF000306390000000000000000000000000000000000000000000000000000
          0000000000000000000000000001032A2E62038487B400B1B1CA008585B3002E
          2E62000000040000000000000000000000000000000000000001043856C50066
          9FFF89C1E1FFBFDDEEFF3D7297FF00426EFF09517EFF1B6490FF3D82AAFF276A
          8FEB000000180000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000011B297A0379
          B6FF2D80AFFF235D86FF024977FF0A5785FF116392FF2C7AA5FF4B99C3FF0F3A
          50A9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040537
          55C4075485FF06517FFF0A5D8CFF0B6495FF2278A7FF4396C2FF2E82AEED0003
          0529000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000005
          0942085683F00A699FFF096FA6FF177EB5FF2C90C4FF1A6285CB00070B380000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000003052801182577021D2A82041F2D7F010C124800000006000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
        OptionsImage.ImageIndex = 89
        TabOrder = 2
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 18
        Top = 65
        DataBinding.DataField = 'NOMBRECLIENTE_PRN'
        DataBinding.DataSource = dsmasterFACT
        Enabled = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 3
        Width = 335
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 434
        Top = 25
        DataBinding.DataField = 'CONDICIONVENTA'
        DataBinding.DataSource = dsmasterFACT
        Enabled = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 4
        Visible = False
        Width = 163
      end
      object Edit2: TEdit
        Left = 424
        Top = -14
        Width = 121
        Height = 24
        TabOrder = 5
        Visible = False
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 18
        Top = 106
        DataBinding.DataField = 'TIPO'
        DataBinding.DataSource = dsmasterFACT
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'CREDITO'
          'Contado')
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 6
        Width = 177
      end
      object cxButton7: TcxButton
        Left = 19
        Top = 145
        Width = 93
        Height = 27
        Caption = 'Asignar NCF'
        Enabled = False
        LookAndFeel.SkinName = 'Office2007Blue'
        OptionsImage.ImageIndex = 744
        TabOrder = 7
        WordWrap = True
        OnClick = cxButton7Click
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 118
        Top = 148
        DataBinding.DataField = 'NCF'
        DataBinding.DataSource = dsmasterFACT
        Properties.ReadOnly = True
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 8
        Width = 233
      end
    end
    object Fimprime: TcxRadioGroup
      Left = 23
      Top = 150
      Caption = 'Formato de Impresi'#243'n'
      ParentFont = False
      Properties.Items = <
        item
          Caption = 'Ticket'
        end
        item
          Caption = 'Papel 8 1/2 * 11'
        end
        item
          Caption = 'Papel 8 1/2 * 5 1/2'
        end>
      Properties.WordWrap = True
      ItemIndex = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 12
      Transparent = True
      Height = 150
      Width = 161
    end
    object GroupBox2: TGroupBox
      Left = 748
      Top = 134
      Width = 300
      Height = 267
      Color = clBlack
      ParentBackground = False
      ParentColor = False
      TabOrder = 13
      Visible = False
      object Label13: TLabel
        Left = 219
        Top = 8
        Width = 54
        Height = 17
        Alignment = taRightJustify
        Caption = 'Sub Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 212
        Top = 68
        Width = 61
        Height = 17
        Alignment = taRightJustify
        Caption = 'Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 249
        Top = 132
        Width = 24
        Height = 17
        Alignment = taRightJustify
        Caption = 'Itbis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 199
        Top = 198
        Width = 74
        Height = 17
        Alignment = taRightJustify
        Caption = 'Total Factura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxDBCurrencyEdit6: TcxDBCurrencyEdit
        Left = 15
        Top = 22
        DataBinding.DataField = 'MONTO'
        DataBinding.DataSource = dsmasterFACT
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = clBlack
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clLime
        Style.Font.Height = -24
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Blueprint'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Blueprint'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Blueprint'
        TabOrder = 0
        Width = 257
      end
      object cxDBCurrencyEdit4: TcxDBCurrencyEdit
        Left = 22
        Top = 86
        DataBinding.DataField = 'DESCUENTO'
        DataBinding.DataSource = dsmasterFACT
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = clBlack
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clLime
        Style.Font.Height = -24
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Blueprint'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Blueprint'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Blueprint'
        TabOrder = 1
        Width = 251
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 17
        Top = 149
        DataBinding.DataField = 'POGXITBS'
        DataBinding.DataSource = dsmasterFACT
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = clBlack
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clLime
        Style.Font.Height = -24
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Blueprint'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Blueprint'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Blueprint'
        TabOrder = 2
        Width = 256
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 18
        Top = 221
        DataBinding.DataField = 'MONTOPAGO'
        DataBinding.DataSource = dsmasterFACT
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = clBlack
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clYellow
        Style.Font.Height = -24
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Blueprint'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Blueprint'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Blueprint'
        TabOrder = 3
        Width = 255
      end
    end
    object PTarjetas: TcxCurrencyEdit
      Left = 312
      Top = 191
      ParentFont = False
      Properties.Nullstring = '0.00'
      Properties.UseNullString = True
      Properties.OnChange = PTarjetasPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 162
    end
    object pcOpcion: TcxPageControl
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 468
      Height = 148
      Margins.Left = 10
      Margins.Right = 10
      Align = alTop
      TabOrder = 15
      Properties.ActivePage = tbNormal
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = True
      ClientRectBottom = 144
      ClientRectLeft = 4
      ClientRectRight = 464
      ClientRectTop = 24
      object tbNormal: TcxTabSheet
        Caption = 'tbNormal'
        ImageIndex = 0
        object Label39: TLabel
          AlignWithMargins = True
          Left = 43
          Top = 45
          Width = 122
          Height = 22
          Margins.Left = 30
          Margins.Top = 20
          Margins.Right = 30
          Margins.Bottom = 10
          Caption = 'Total a Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object cxDBCurrencyEdit7: TcxDBCurrencyEdit
          AlignWithMargins = True
          Left = 173
          Top = 38
          Margins.Left = 30
          Margins.Right = 30
          DataBinding.DataField = 'MONTOPAGO'
          DataBinding.DataSource = dsmasterFACT
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -21
          Style.Font.Name = 'Segoe UI Light'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = True
          Style.LookAndFeel.SkinName = 'Blueprint'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.SkinName = 'Blueprint'
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.SkinName = 'Blueprint'
          TabOrder = 0
          Width = 198
        end
        object Panel8: TPanel
          AlignWithMargins = True
          Left = 201
          Top = 76
          Width = 168
          Height = 2
          Margins.Left = 30
          Margins.Right = 30
          BevelOuter = bvNone
          Color = 10449444
          ParentBackground = False
          TabOrder = 1
        end
      end
      object tbResturant: TcxTabSheet
        Caption = 'tbResturant'
        ImageIndex = 1
        object PanelPizza: TPanel
          Left = 3
          Top = 12
          Width = 505
          Height = 134
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          Visible = False
          object Label41: TLabel
            Left = 109
            Top = 44
            Width = 32
            Height = 22
            Caption = 'Itbs'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Century Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 34
            Top = 73
            Width = 107
            Height = 22
            Caption = 'Ley Propina'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Century Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 19
            Top = 16
            Width = 122
            Height = 22
            Caption = 'Total a Pagar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Century Gothic'
            Font.Style = []
            ParentFont = False
          end
          object Image2: TImage
            Left = 483
            Top = 122
            Width = 47
            Height = 36
            Center = True
            Picture.Data = {
              0B54504E4747726170686963C6340000424DC634000000000000360000002800
              00003A0000003A00000001002000000000009034000000000000000000000000
              000000000000000000009BC8FF3380BBFFE16AAEFFFE64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF65ABFFFF73B3FFF989BFFFA780FFFF0200000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000098C6FF436BAEFFFE64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF84BDFFD50000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000007EBBFFEC78BAFFFF76B9
              FFFF68ADFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF94C8FF5800000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000079BC
              FFFF7BBDFFFF7BBDFFFF73B7FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF8BC1FFB400000000D5FFFF06D2F0FF11D5EE
              FF1ECFEAFF25D2EBFF33D0EAFF3CD2ECFF44D1EAFF54D2EBFF5BD2EBFF66D3EB
              FF73D3ECFF79D2EAFF88D1ECFF91D2EBFF99D2EBFFA9D2EBFFB0D2EBFFBBD2EA
              FFC7D2EBFFCED2EBFFDDD2EBFFE6D2EBFFEED2EBFFEED2EBFFDED1EBFFB3D2EC
              FF6BD2F0FF110000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000007BBDFFFF7BBDFFFF7BBDFFFF76B9FFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF98C9FFFBD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFF5D1EBFF80DBDBFF0700000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000007BBDFFFF7BBDFFFF7BBDFFFF76B9FFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF99C9
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFCBD5EA
              FF18000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000007BBDFFFF7BBDFFFF7BBD
              FFFF76B9FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF99C9FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFD7D2F0FF11000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000007BBD
              FFFF7BBDFFFF7BBDFFFF76B9FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF99C9FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFB6FFFFFF01000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000007BBDFFFF7BBDFFFF7BBDFFFF76B9FFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF99C9FFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD3EA
              FF6E000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000007BBDFFFF7BBDFFFF7BBDFFFF76B9FFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF99C9
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFF8D3E9FF2E000000000000000000000000000000000000
              000000000000000000000000000000000000000000007BBDFFFF7BBDFFFF7BBD
              FFFF76B9FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF99C9FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EAFFFFCBE8
              FFFFC7E6FFFFC6E5FFFFC9E7FFFFCFEAFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFD4C6E3FF09000000000000
              0000000000000000000000000000000000000000000000000000000000007BBD
              FFFF7BBDFFFF7BBDFFFF76B9FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF99C9FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFCEE9FFFFC5E4
              FFFFBCE0FFFFBADFFFFFBADFFFFFBADFFFFFBADFFFFFBBE0FFFFC5E4FFFFD1EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FF8E000000000000000000000000000000000000000000000000000000000000
              0000000000007BBDFFFF7BBDFFFF7BBDFFFF76B9FFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF99C9FFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD1EAFFFFC8E6FFFFBFE2
              FFFFBADFFFFFBADFFFFFBADFFFFFBEE1FFFFC4E3FFFFC5E4FFFFC1E3FFFFBADF
              FFFFBADFFFFFC1E2FFFFD1EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFED2EAFF4A000000000000000000000000000000000000
              00000000000000000000000000007BBDFFFF7BBDFFFF7BBDFFFF76B9FFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF99C9
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD1EBFFFFCCE8FFFFC3E4FFFFBADF
              FFFFBADFFFFFBADFFFFFBBE0FFFFC4E4FFFFCDE8FFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFCDE8FFFFBCE0FFFFBADFFFFFC4E4FFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFE9D3E9FF17000000000000
              000000000000000000000000000000000000000000007BBDFFFF7BBDFFFF7BBD
              FFFF76B9FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFFA1CEFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD0EAFFFFBEE1FFFFBADF
              FFFFBADFFFFFBBDFFFFFC0E2FFFFC9E7FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFCEE8FFFFBADFFFFFBBDFFFFFCFE9
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFB0000000000000000000000000000000000000000000000000000000007BBD
              FFFF7BBDFFFF7BBDFFFF76B9FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFFBEDDFFFFDDF0FFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD0EA
              FFFFBBE0FFFFBDE0FFFFC6E5FFFFCFEAFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFC6E5
              FFFFBADFFFFFC7E5FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFF65000000000000000000000000000000000000
              0000000000007BBDFFFF7BBDFFFF7BBDFFFF76B9FFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFFBEDDFFFFE4F3FFFFDFF0
              FFFFD3EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD1EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD3ECFFFFD7EDFFFFD2EC
              FFFFD2EBFFFFCCE8FFFFBADFFFFFC4E4FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFF4D1EBFF27000000000000
              00000000000000000000000000007BBDFFFF7BBDFFFF7BBDFFFF76B9FFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFFBEDD
              FFFFE4F3FFFFE4F3FFFFE1F2FFFFD4ECFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD5ECFFFFDDF0FFFFE3F3
              FFFFE4F3FFFFE1F2FFFFD3EBFFFFCDE7FFFFBADFFFFFC9E7FFFFD7EDFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFCDD5FFFF06000000000000000000000000000000007BBDFFFF7BBDFFFF7BBD
              FFFF79BBFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFFBEDDFFFFE4F3FFFFE4F3FFFFE4F3FFFFE3F2FFFFD6ECFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD4ECFFFFDCF0FFFFE4F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFD9EFFFFFC6E5FFFFBADFFFFFD1EA
              FFFFE4F2FFFFD8EEFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD3ECFF85000000000000000000000000000000007BBD
              FFFF7BBDFFFF7BBDFFFF7BBDFFFF6BB0FFFF64AAFFFF64AAFFFF64AAFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFFB5D8FFF7E4F3FFFFE4F3FFFFE4F3FFFFE4F3
              FFFFE3F2FFFFD8EEFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD4ECFFFFDCEFFFFFE3F2
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFDAEDFFE8BDE1
              FFFFBBDFFFFFDFF1FFFFE4F3FFFFE4F3FFFFDAEEFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFDD2EAFF3E000000000000
              0000000000007BBDFFFF7BBDFFFF7BBDFFFF7BBDFFFF78BBFFFF69AEFFFF64AA
              FFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF64AAFFFF88BFFFC3DDF0FFA6E3F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFDAEEFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD3EBFFFFDBEFFFFFE3F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE1F1
              FFECD8F0FF21CBE8FF63D0EAFFFCE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFDCF0
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFE1CFEFFF1000000000000000007BBCFFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBD
              FFFF7ABDFFFF72B5FFFF6EB2FFFF6DB1FFFF66ADFFFF64AAFFFF64AAFFFF89C0
              FFBE00000000DBF0FF7AE3F3FFFEE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFDFF1
              FFFFD4ECFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD3EBFFFFDAEEFFFFE3F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE2F2
              FFF7DDF0FF87FFFFFF020000000000000000D5EFFF30E1F2FFF6E4F3FFFFE4F3
              FFFFE4F3FFFFE4F3FFFFDDF0FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD3EBFFA700000000000000007ABBFFFD7BBDFFFF7BBD
              FFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBDFFFF7ABDFFFF68AD
              FFFF64AAFFFF90C5FF8C0000000000000000DCF2FF50E2F2FFFBE4F3FFFFE4F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE0F1FFFFDCF0FFFFDDF0FFFFDFF0FFFFE4F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE1F3
              FFFADBF0FF96FFFFFF040000000000000000000000000000000000000000D8EB
              FF1AE0F1FFEEE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFDEF1FFFFD3ECFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD3ECFF5D0000000088C0
              FFA77BBDFFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBD
              FFFF7BBDFFFF6DB2FFFF76B4FFF599CCFF0A000000000000000000000000DBED
              FF2AE0F2FFF2E4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE2F2
              FFFCDEF1FFA8D5FFFF0C00000000000000000000000000000000000000000000
              00000000000000000000DBEDFF0EDEF0FFE3E4F3FFFFE4F3FFFFE4F3FFFFE4F3
              FFFFE0F2FFFFD4ECFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EBFFFFD2EB
              FFF1D3EDFF1D0000000083C0FFCA7BBCFFFF7BBDFFFF7BBDFFFF7BBDFFFF7BBD
              FFFF7BBDFFFF7BBDFFFF7ABCFFFF76B6FFF896CAFF3F00000000000000000000
              00000000000000000000CFEFFF10E0F1FFE1E4F3FFFFE4F3FFFFE4F3FFFFE4F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE3F3
              FFFDDDEFFFB3E1F0FF1100000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF04DEF0FFD2E4F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE1F2FFFFD5ECFFFFD2EBFFFFD2EBFFFFD2EB
              FFFFD2EBFFFFD2EBFFFFD2EAFF9300000000000000008DC1FF3A87C2FFB083BF
              FFC883BFFFC883BFFFC883BFFFC884C0FFC18EC4FF7EBFBFFF04000000000000
              00000000000000000000000000000000000000000000FFFFFF02DEF0FFC7E4F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE3F3
              FFFEDDEFFFBBE9E9FF1700000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000DDF0FFBCE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE3F3FFFFDFF1
              FFFFDCEFFFFFDDF0FFFFDDF0FFFFD5EDFFFFD2ECFFDF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000DFF2FF77E2F3FFFAE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE3F2
              FFFEDFF1FFC5D8F0FF2100000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000DEEFFFA0E3F3FFFFE4F3FFFFE4F3
              FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE3F3FFFFD3ECFFEE0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000FFFFFF04DEF1FF5CDDF0FFA7DDEF
              FFA3DCF1FF7DCCFFFF0A00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000DCEF
              FF83E3F2FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3FFFFE4F3
              FFFFDAEFFFCE0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000DBF0FF63E3F3FFFDE4F3FFFFE4F3FFFFE4F3FFFFE4F3
              FFFFE4F3FFFFE3F3FFFFDAF1FF5A000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000DDEEFF4AE2F2FFF8E4F3
              FFFFE4F3FFFFE4F3FFFFE3F3FFFFDDEFFF9C0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000D5FFFF06DDEFFF70DDF0FFA7DDF0FF87DDF2FF2600000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000FFFF0172E9FF2F73E6FF5073E8FF6D73E7FF7673E7FF5F73E9
              FF4578E1FF110000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000072E4FF2672E7FF9373E7FFE273E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFB73E7FFBD73E8FF6466FFFF05000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000079E4FF1374E7FF9673E7FFFA73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFD974E8FF4F0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000072E4FF2673E7FFD873E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E8FF9980FFFF0400000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000072E9FF3A73E7FFF273E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF72E6FFB055FF
              FF03000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000076EBFF1A73E7FFE573E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFFADF1FFFFDDF9
              FFFF7CE9FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FF8C00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000080FFFF0273E7FFC973E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFFDBF9FFFFFFFFFFFF96EDFFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF74E6FF5100000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000074E8
              FF5A73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF7DE9FFFFCAF6FFFFFCFEFFFFFFFFFFFFE7FBFFFF9CEEFFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFDD80D5
              FF06000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000080FFFF0273E7FFDD73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF77E8FFFFE6FBFFFFFFFFFFFFFFFFFFFFFBFEFFFFFFFFFFFFFDFF
              FFFF9EEEFFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E6FF6600000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000072E9FF3A73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFFACF1FFFFFFFFFFFFE8FBFFFF84EAFFFF75E7
              FFFFB9F3FFFFFFFFFFFFEBFCFFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFBF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000073E7FF8973E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFFCBF6FFFFFFFFFFFFA8F0
              FFFF73E7FFFF73E7FFFF74E7FFFFF5FDFFFFFFFFFFFF7EE9FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFC73E6FF140000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000074E9FFC387EB
              FFFF89EBFFFF77E8FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFFA5F0
              FFFFDCF9FFFF81E9FFFF73E7FFFF73E7FFFF7CE9FFFFFBFEFFFFFEFFFFFF7BE8
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF71E6FF480000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000095EDFFF2A6F0FFFFA6F0FFFF9CEEFFFF74E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF89EBFFFF9FEFFFFFDFF9FFFFFFFF
              FFFFD6F8FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF72E8FF62000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A4F0FFFEA6F0FFFFA6F0FFFFA6F0FFFF7FE9FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF89EBFFFFE1FAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEEFCFFFF83EAFFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF72E6FF7B00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000A1EFFFFDA6F0FFFFA6F0FFFFA6F0
              FFFF90EDFFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF7BE8FFFFEFFCFFFFFFFF
              FFFFF2FDFFFFD8F8FFFFBAF3FFFF7BE8FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF74E6FF700000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000009EEEFFF6A6F0
              FFFFA6F0FFFFA6F0FFFFA3F0FFFF76E8FFFF73E7FFFF73E7FFFF73E7FFFFB7F3
              FFFFFFFFFFFFDBF9FFFF78E8FFFF73E7FFFF73E7FFFF84EAFFFF91ECFFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF74E7FF560000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000099EEFFE4A6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFF8EECFFFF73E7FFFF73E7
              FFFF73E7FFFFCFF7FFFFFFFFFFFFA7F0FFFF73E7FFFF73E7FFFF73E7FFFFE5FA
              FFFFFDFFFFFF7EE9FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E6FF33000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000091ECFF9EA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA5F0
              FFFF7DE9FFFF73E7FFFF73E7FFFFBFF4FFFFFFFFFFFFC2F4FFFF73E7FFFF73E7
              FFFF85EAFFFFFDFFFFFFFCFEFFFF76E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFE880FFFF0200000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000008CECFF28A5F0FFFFA6F0FFFFA6F0
              FFFFA6F0FFFFA6F0FFFF9FEFFFFF78E8FFFF73E7FFFF8CEBFFFFFDFFFFFFFEFF
              FFFFCAF6FFFFB9F3FFFFEEFCFFFFFFFFFFFFCAF6FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E8FF99000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000097EE
              FFDBA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFF9CEEFFFF77E8FFFF73E7
              FFFFABF1FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9FFFF7CE9FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFC71E7
              FF2B000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000093E6FF34A3F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0
              FFFF9FEFFFFF7DE8FFFF73E7FFFF85EAFFFFEAFBFFFFFFFFFFFFB2F2FFFF74E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF72E6FF9C0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000094EDFFAEA6F0FFFFA6F0FFFFA6F0
              FFFFA6F0FFFFA6F0FFFFA6F0FFFFA5EFFFFF8CEBFFFF75E7FFFFD4F8FFFFFFFF
              FFFF8EECFFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF72E7FFE174E8FF16000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000097EE
              FFD6A6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA3EF
              FFFF94EDFFFF9BEEFFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFF671E6FF340000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000008BE8FF0B98EDFFD9A6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0
              FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFF9BEEFFFF76E8FFFF73E7FFFF73E7
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFEB71E7FF3F00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000093EDFFADA5EFFFFFA6F0
              FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFF89EB
              FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFFF73E7FFCE71E9FF22000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00008DEDFF3897EEFFDBA5F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0FFFFA6F0
              FFFFA6F0FFFF87EBFFFF73E7FFFF73E7FFFF73E7FFE272E7FF6080FFFF020000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000090EEFF2E92ECFFA19AEEFFE69EEF
              FFF8A2EFFFFDA4F0FFFF97EEFFF575E7FFC773E8FF8E74E7FF4055FFFF030000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000}
            Proportional = True
          end
          object cxDBCurrencyEdit10: TcxDBCurrencyEdit
            Left = 213
            Top = 43
            DataBinding.DataField = 'POGXITBS'
            DataBinding.DataSource = dsmasterFACT
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Style.BorderStyle = ebsNone
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = True
            Style.LookAndFeel.SkinName = 'Blueprint'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.SkinName = 'Blueprint'
            StyleHot.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.SkinName = 'Blueprint'
            TabOrder = 0
            Width = 118
          end
          object cxDBCurrencyEdit11: TcxDBCurrencyEdit
            Left = 230
            Top = 67
            DataBinding.DataField = 'LEYPROPINA'
            DataBinding.DataSource = dsmasterFACT
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Style.BorderStyle = ebsNone
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = True
            Style.LookAndFeel.SkinName = 'Blueprint'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.SkinName = 'Blueprint'
            StyleHot.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.SkinName = 'Blueprint'
            TabOrder = 1
            Width = 101
          end
          object cxDBCurrencyEdit8: TcxDBCurrencyEdit
            Left = 155
            Top = 7
            DataBinding.DataField = 'MONTOPAGO'
            DataBinding.DataSource = dsmasterFACT
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = True
            Style.BorderStyle = ebsNone
            Style.Color = clWhite
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -21
            Style.Font.Name = 'Segoe UI Light'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = True
            Style.LookAndFeel.SkinName = 'Blueprint'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.SkinName = 'Blueprint'
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.SkinName = 'Blueprint'
            StyleHot.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.SkinName = 'Blueprint'
            TabOrder = 2
            Width = 176
          end
          object Panel4: TPanel
            Left = 155
            Top = 102
            Width = 176
            Height = 2
            BevelOuter = bvNone
            Color = 10449444
            ParentBackground = False
            TabOrder = 3
          end
        end
      end
    end
    object Panel13: TPanel
      AlignWithMargins = True
      Left = 9
      Top = 309
      Width = 469
      Height = 2
      Margins.Left = 30
      Margins.Right = 30
      BevelOuter = bvNone
      Color = 10449444
      ParentBackground = False
      TabOrder = 16
    end
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 488
    Height = 65
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 12
    object btnsalir: TSpeedButton
      AlignWithMargins = True
      Left = 458
      Top = 15
      Width = 30
      Height = 34
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 0
      Margins.Bottom = 15
      Align = alRight
      Flat = True
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000AAAA990FA5A59611A5A59611A5A59611A5A59611A5A5
        9611A5A59611A5A59611A5A59611A5A59611A5A59611A5A59611A5A59611A5A5
        9611A5A59611AAAA990F00000000000000000000000000000000000000000000
        0000A4A4933BA7A595DEA5A594E1A6A595DDA6A595DDA6A595DDA6A595DDA6A5
        95DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A5
        95DDA6A595DDA5A594E1A6A595DDA4A4933B0000000000000000000000000000
        0000A6A595DDA6A6943900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A7A7953AA6A595DD000000000000000000000000A5A5
        9611A6A595E30000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E3A5A596110000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E000000000000000000000000000000000A7A79334A4A4933B0000
        00000000000000000000000000000000000000000000A4A4933BA7A793340000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E000000000000000000000000000000000A7A7953AA6A495E7A6A6
        963F00000000000000000000000000000000A7A7953AA6A595E6A7A393400000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000A7A7953AA6A4
        95E7A6A6963F0000000000000000A7A7953AA6A595E6A7A39340000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E0000000000000000000000000000000000000000000000000A7A7
        953AA6A495E7A6A6963FA7A7953AA6A595E6A7A3934000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000A4A4933BA6A595E5A6A595E5A4A4933B0000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000A4A4933BA6A595E5A6A595E5A4A4933B0000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E0000000000000000000000000000000000000000000000000A7A7
        953AA6A595E6A7A39340A7A7953AA6A495E7A6A6963F00000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000A7A7953AA6A5
        95E6A7A393400000000000000000A7A7953AA6A495E7A6A6963F000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E000000000000000000000000000000000A7A7953AA6A595E6A7A3
        934000000000000000000000000000000000A7A7953AA6A495E7A6A6963F0000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E000000000000000000000000000000000A7A79334A4A4933B0000
        00000000000000000000000000000000000000000000A4A4933BA7A793340000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A6A6
        9914A6A595E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E0A6A699140000000000000000A5A5
        9611A6A595E30000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A595E3A5A5961100000000000000000000
        0000A7A595DEA4A4963800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A6A69439A6A595DD0000000000000000000000000000
        0000A6A6953CA7A595DEA5A594E1A6A595DDA6A595DDA6A595DDA6A595DDA6A5
        95DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A595DDA6A5
        95DDA6A595DDA5A594E1A6A595DDA4A4933B0000000000000000000000000000
        00000000000000000000AAAA990FA5A59611A5A59611A5A59611A5A59611A5A5
        9611A5A59611A5A59611A5A59611A5A59611A5A59611A5A59611A5A59611A5A5
        9611A5A59611AAAA990F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ExplicitLeft = 1325
      ExplicitHeight = 30
    end
    object pnlBarTopDiv: TPanel
      Left = 0
      Top = 64
      Width = 488
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = 13092807
      ParentBackground = False
      TabOrder = 0
    end
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 265
      Height = 64
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object imgLogoTop: TImage
        AlignWithMargins = True
        Left = 20
        Top = 10
        Width = 45
        Height = 44
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Center = True
        Picture.Data = {
          0B54504E474772617068696336100000424D3610000000000000360000002800
          0000200000002000000001002000000000000010000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB9734C5DB9935CCDB9935CCDB9935CCDB9935CCDB9935CCDB99
          35CCDB9935CCDB9935CCDB9935CCDB9935CCDB9834C400000000000000000000
          00000000000000000000000000000000000000000000D9993328DC973565DC99
          3566DC993566DC993566DC993566DC993566DC993566DC993566DC993566DC99
          3566D9993314DB9935CC00000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9834D3DA983368DC99
          3566DC993566DC993566DC993566DC993566DC993566DC993566DC993566DC99
          3566D9993314DB9935CC00000000DB9834A3DC973651DC973651DB9834A3DA95
          3229DC97347B00000000DB9834A300000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB9935CC00000000DA983552DA953229DA953229DA983552D999
          3314D996323D00000000DA98355200000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          000000000000D7943613DB99346BDB97358CDC98345ED5AA2B06000000000000
          000000000000DB9935CC00000000DA983552DA953229DA953229DA983552D999
          3314D996323D00000000DA98355200000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000D998362FDB9935CCDA973467DB9A353FDC97347BDB9834C4D59C39120000
          000000000000DB9935CC00000000DB9834A3DC973651DC973651DB9834A3DA95
          3229DC97347B00000000DB9834A300000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DB9734C5DB993323000000000000000000000000DB96344EDB97359B0000
          000000000000DB9935CC00000000DA953229D9993314D9993314DA953229E699
          330ADE94311F00000000DA95322900000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC00000000D893
          311ADB9833B30000000000000000DC993566DC993566DC993566DB9833DA0000
          000000000000DB9935CC00000000DC97347BD996323DD996323DDC97347BDD99
          331EDB98355C00000000DC97347B00000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC00000000D893
          311ADB9834B00000000000000000DB9834E1DC993566DC993566DB9833DA0000
          000000000000DB9935CC00000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DB9834C6D89B362100000000DB9935CC00000000DD98344ADB98349C0000
          000000000000DB9935CC00000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DA9A3530DB9935CCDC973565DB9833DADB993378DB9734C5D59C39120000
          000000000000DB9935CC00000000DB9834F5DB9935CCDB9935CCDB9935CCDB99
          35CCDB9935CCDB9935CCDB9834F500000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          000000000000D9993314DC97346CDB97358CDC99335FDB922407000000000000
          000000000000DB9935CC00000000DB9935CC000000000000000000000000DB98
          3639DC95351DDB9B371CDB9935CC00000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB9935CC00000000DB9935CC000000000000000000000000DC9A
          353ADC95351DDC95351DDB9935CC00000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DB983639E699330AD998362FD998362FE699330ADB983639DC95351DDB9B
          371C00000000DB9935CC00000000DB9834F5DB9935CCDB9935CCDB9935CCDB99
          35CCDB9935CCDB9935CCDB9834F500000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DC9A353AD1A22E0BD998362FDA9A3530E699330ADC9A353ADC95351DDC95
          351D00000000DB9935CC00000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB9935CC00000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DC983574DB9E3115DC99335FDC99335FDB9E3115DC983574DC9A353ADB98
          363900000000DB9734C5DB9935CCDB9935CCDB9935CCDB9935CCDB9935CCDB99
          35CCDB9935CCDB9935CCDB9935CCDB9935CCDB9734C500000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DB9E31150000000000000000D7943613FF80000200000000E699330AE699
          330A000000000000000000000000000000000000000000000000D9993314D999
          3314000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DC99335F0000000000000000DB98354DD59C391200000000DA9A3530D998
          362F000000000000000000000000000000000000000000000000DC993566DC99
          3566000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DC98345E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DC993566DC99
          3566000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          0000DC972E160000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DC993566DC99
          3566000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          00000000000000000000DA953229DC963233DC963233DC963233DC963233DC96
          3233DC963233DB993332D1A22E0B000000000000000000000000DC993566DC99
          3566000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9935CC000000000000
          000000000000DC97346CDB9834B9DA983499DA983499DA983499DA983499DA98
          3499DA983499DB97359BDB9834C6000000000000000000000000DC993566DC99
          3566000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9834CD000000000000
          000000000000DA983499DC963233000000000000000000000000000000000000
          00000000000000000000DB9935CC000000000000000000000000DA983368DC97
          3565000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9833A9DB9834CEDB99
          35CCDB9935CCDB9834EBDB9934D6DB9935CCDB99347FDB9E3115DC99335FDD99
          332DDB9935CCDB9935CCDB9834F5DB9935CCDB9935CCDB9935CCDB9834D3D896
          3427000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000CC993305DB9834C9D794361300000000DB98
          348DDB9834540000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA98353EDB9834C9DB9834CFDB98
          3588FFFF00010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        Proportional = True
        ExplicitTop = 7
      end
      object Panel7: TPanel
        Left = 75
        Top = 0
        Width = 310
        Height = 64
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 33
          Width = 304
          Height = 22
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label8: TLabel
            Left = 0
            Top = 0
            Width = 127
            Height = 22
            Align = alLeft
            Caption = 'Realizar Cobro a Factura'
            Font.Charset = ANSI_CHARSET
            Font.Color = 10526880
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 15
          end
        end
        object Panel11: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 10
          Width = 304
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label23: TLabel
            AlignWithMargins = True
            Left = 66
            Top = 3
            Width = 37
            Height = 17
            Margins.Left = 5
            Align = alLeft
            Caption = 'Cobro'
            Font.Charset = ANSI_CHARSET
            Font.Color = 12091960
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 46
          end
          object Label37: TLabel
            Left = 0
            Top = 0
            Width = 61
            Height = 23
            Align = alLeft
            Caption = 'Gesti'#243' de '
            Font.Charset = ANSI_CHARSET
            Font.Color = 6569760
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 17
          end
        end
      end
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 446
    Width = 488
    Height = 59
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 4
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 13
    object Panel23: TPanel
      AlignWithMargins = True
      Left = 218
      Top = 10
      Width = 133
      Height = 39
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      Align = alRight
      BevelOuter = bvNone
      Color = 12091960
      ParentBackground = False
      TabOrder = 0
      object cxButton5: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 127
        Height = 33
        Align = alClient
        Anchors = [akRight]
        Caption = 'Imprimir'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton8Click
        ExplicitLeft = 4
      end
    end
    object Panel12: TPanel
      AlignWithMargins = True
      Left = 357
      Top = 10
      Width = 126
      Height = 39
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alRight
      BevelOuter = bvNone
      Color = 3846482
      ParentBackground = False
      TabOrder = 1
      object cxButton6: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 120
        Height = 33
        Align = alClient
        Anchors = [akRight]
        Caption = '&Cancelar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = 32
        ExplicitHeight = 23
      end
    end
  end
  object facturasEmitidas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.codven = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.situacion  <>:opcion2'
      'and a.condicion =:OPCION4'
      'AND A.ROTULO =:OPCION5'
      'AND A.tipo =:opcion6')
    Params = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'opcion6'
        ParamType = ptUnknown
      end>
    Left = 120
    Top = 372
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opcion2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPCION5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'opcion6'
        ParamType = ptUnknown
      end>
    object facturasEmitidasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object facturasEmitidasFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object facturasEmitidasTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object facturasEmitidasCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object facturasEmitidasCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object facturasEmitidasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object facturasEmitidasMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object facturasEmitidasHORA: TTimeField
      FieldName = 'HORA'
    end
    object facturasEmitidasPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object facturasEmitidasTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object facturasEmitidasMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object facturasEmitidasCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object facturasEmitidasRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object facturasEmitidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object facturasEmitidasTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object facturasEmitidasVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object facturasEmitidasSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object facturasEmitidasCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object facturasEmitidasNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object facturasEmitidasRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object facturasEmitidasNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object facturasEmitidasNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object facturasEmitidasDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object facturasEmitidasROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object facturasEmitidasNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object facturasEmitidasMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object facturasEmitidasCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object facturasEmitidasINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object facturasEmitidasDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object facturasEmitidasPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object facturasEmitidasLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object facturasEmitidasCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object facturasEmitidasTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object facturasEmitidasEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object facturasEmitidasDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object facturasEmitidasRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object facturasEmitidasABONO: TFloatField
      FieldName = 'ABONO'
    end
    object facturasEmitidasCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object facturasEmitidasNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object facturasEmitidasPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object facturasEmitidasMESES: TIntegerField
      FieldName = 'MESES'
    end
    object facturasEmitidasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object facturasEmitidasPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object facturasEmitidasESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object facturasEmitidasDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object facturasEmitidasCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object facturasEmitidasFECHAVENCIMIENTO: TWideStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 10
    end
    object facturasEmitidasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object facturasEmitidasCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object facturasEmitidasQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object facturasEmitidasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object facturasEmitidasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object facturasEmitidasCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object facturasEmitidasNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object facturasEmitidasTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object facturasEmitidasCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object facturasEmitidasNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
    object facturasEmitidasCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
  end
  object DetalleFacturas: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.articulo, c.unidad from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      'left join unidad_m c on a.unidadid = c.cod_unidad_m'
      'where a.masterid =:master')
    Params = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    Left = 56
    Top = 420
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    object DetalleFacturasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object DetalleFacturasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object DetalleFacturasMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object DetalleFacturasCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object DetalleFacturasPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object DetalleFacturasIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object DetalleFacturasITBS: TFloatField
      FieldName = 'ITBS'
    end
    object DetalleFacturasITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object DetalleFacturasTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object DetalleFacturasCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object DetalleFacturasUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object DetalleFacturasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object DetalleFacturasLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object DetalleFacturasARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object DetalleFacturasARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object DetalleFacturasUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
  end
  object dsmasterFACT: TDataSource
    DataSet = datos.FbqMaster_Fact
    Left = 737
    Top = 128
  end
  object ncf: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from ncf')
    Params = <>
    Left = 464
    Top = 28
    object ncfNCFID: TIntegerField
      FieldName = 'NCFID'
      Required = True
    end
    object ncfNUNTEXT: TWideStringField
      FieldName = 'NUNTEXT'
      Size = 14
    end
    object ncfDESDE: TIntegerField
      FieldName = 'DESDE'
    end
    object ncfHASTA: TIntegerField
      FieldName = 'HASTA'
    end
    object ncfUSO: TIntegerField
      FieldName = 'USO'
    end
    object ncfTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ncfIDCONFIG: TIntegerField
      FieldName = 'IDCONFIG'
    end
    object ncfSIGUIENTE: TWideStringField
      FieldName = 'SIGUIENTE'
    end
  end
  object IbqClientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 360
    Top = 296
    object IbqClientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
    object IbqClientesNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object IbqClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IbqClientesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object IbqClientesCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object IbqClientesTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object IbqClientesCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object IbqClientesCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 15
    end
    object IbqClientesCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object IbqClientesRENGLONCNF: TWideStringField
      FieldName = 'RENGLONCNF'
      Size = 15
    end
    object IbqClientesTXTCNF: TWideStringField
      FieldName = 'TXTCNF'
      Size = 40
    end
    object IbqClientesCREDITOLIMITE: TFloatField
      FieldName = 'CREDITOLIMITE'
    end
    object IbqClientesTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object IbqClientesRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object IbqClientesCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object IbqClientesINICIO: TDateField
      FieldName = 'INICIO'
    end
    object IbqClientesSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object IbqClientesPAGOITB: TWideStringField
      FieldName = 'PAGOITB'
      Size = 2
    end
    object IbqClientesCREDITO: TWideStringField
      FieldName = 'CREDITO'
      Size = 2
    end
    object IbqClientesBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object IbqClientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object IbqClientesMOVIL: TWideStringField
      FieldName = 'MOVIL'
      Size = 17
    end
    object IbqClientesCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object IbqClientesNUMEROPIN: TWideStringField
      FieldName = 'NUMEROPIN'
      ReadOnly = True
      Size = 10
    end
    object IbqClientesMUSADOS: TFloatField
      FieldName = 'MUSADOS'
    end
    object IbqClientesMPENDIENTES: TFloatField
      FieldName = 'MPENDIENTES'
    end
    object IbqClientesRUTA_ID: TIntegerField
      FieldName = 'RUTA_ID'
    end
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.marc' +
        'a,a.codigotxt,a.itbis,'
      'sum(b.entrada - b.salida) Existencia'
      'from mtartuculos a'
      'left join minventario b On a.cod_art = b.cod_art'
      
        'group by a.cod_art,a.articulo,a.cod_cat,a.politica,a.modelo,a.ma' +
        'rca,a.codigotxt,a.itbis')
    Params = <>
    Left = 912
    Top = 128
    object IbqRArticulosCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object IbqRArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object IbqRArticulosCOD_CAT: TIntegerField
      FieldName = 'COD_CAT'
    end
    object IbqRArticulosPOLITICA: TWideStringField
      FieldName = 'POLITICA'
      Size = 10
    end
    object IbqRArticulosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 45
    end
    object IbqRArticulosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 45
    end
    object IbqRArticulosCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 10
    end
    object IbqRArticulosEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
    end
    object IbqRArticulosITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 1
    end
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 40
    Top = 376
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object Qfraccionado: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.descripcion from particionado a'
      'left join unidad_m b On a.id_unidad = b.cod_unidad_m'
      '')
    Params = <>
    Left = 56
    Top = 484
    object QfraccionadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QfraccionadoCOD_ARTI: TIntegerField
      FieldName = 'COD_ARTI'
    end
    object QfraccionadoCANTI: TFloatField
      FieldName = 'CANTI'
    end
    object QfraccionadoUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
    object QfraccionadoCOD_PART: TFloatField
      FieldName = 'COD_PART'
    end
    object QfraccionadoID_UNIDAD: TIntegerField
      FieldName = 'ID_UNIDAD'
    end
    object QfraccionadoPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object QfraccionadoPRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
    object QfraccionadoDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
  end
  object frxReport2: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'DETALLE'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 44855.436931203700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 440
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 88.900000000000000000
      PaperHeight = 203.200000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 33.600000000000000000
        Top = 307.200000000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 91.362400000000000000
          Top = 0.697650000000000000
          Width = 69.467780000000000000
          Height = 15.360000000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 35.520000000000000000
          Top = 17.200000000000000000
          Width = 240.982870000000000000
          Height = 15.360000000000000000
          StretchMode = smActualHeight
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."TITULOPRN"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 35.520000000000000000
          Width = 38.400000000000000000
          Height = 15.360000000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 163.000000000000000000
          Top = 0.697650000000000000
          Width = 50.267780000000000000
          Height = 15.360000000000000000
          DataField = 'ITBS'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."ITBS"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 216.200000000000000000
          Top = 1.297650000000000000
          Width = 69.467780000000000000
          Height = 15.360000000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 73.000000000000000000
          Top = 0.697650000000000000
          Width = 15.344960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'X')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 264.000000000000000000
          Top = 11.897650000000000000
          Width = 15.344960000000000000
          Height = 18.897650000000000000
          DataField = 'EX'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."EX"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 288.000000000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 282.144960000000000000
        Top = 403.200000000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 18.000000000000000000
          Top = 3.779530000000000000
          Width = 366.085220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 18.000000000000000000
          Top = 235.776500000000000000
          Width = 341.064750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 40.520000000000000000
          Top = 259.847310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."HORA"]')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 40.520000000000000000
          Top = 195.600000000000000000
          Width = 278.400000000000000000
          Height = 36.661410000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 177.952270000000000000
          Top = 23.600000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 177.600000000000000000
          Top = 78.872480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 74.986840000000000000
          Top = 25.600000000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 72.586840000000000000
          Top = 42.236240000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 73.986840000000000000
          Top = 77.533890000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 40.520000000000000000
          Top = 4.683550000000000000
          Width = 100.006370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 132.550600000000000000
          Top = 4.683550000000000000
          Width = 36.888250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 75.355300000000000000
          Top = 59.220470000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 175.600000000000000000
          Top = 58.220470000000000000
          Width = 75.840000000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."POGXITBS"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 177.680000000000000000
          Top = 41.800000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DESCUENTO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 40.520000000000000000
          Top = 108.144960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       ')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 87.360000000000000000
          Top = 109.000000000000000000
          Width = 134.400000000000000000
          Height = 19.200000000000000000
          DataField = 'CAJ'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."CAJ"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 40.520000000000000000
          Top = 159.354360000000000000
          Width = 148.308720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRE FACTURA')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 203.768980000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 38.520000000000000000
          Top = 80.083550000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 38.520000000000000000
          Top = 110.858380000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   ')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 114.360000000000000000
          Top = 110.858380000000000000
          Width = 227.376500000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 38.520000000000000000
          Top = 182.648980000000000000
          Width = 105.826840000000000000
          Height = 21.120000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 224.900990000000000000
          Top = 183.648980000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 130.160000000000000000
          Top = 80.037910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 36.600000000000000000
          Width = 316.800000000000000000
          Height = 28.497650000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Motorola ScreenType'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."EMPRESA"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 38.520000000000000000
          Top = 95.554360000000000000
          Width = 48.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC #')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 114.360000000000000000
          Top = 95.554360000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object CONFTELEFONO1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 67.200000000000000000
          Top = 39.554360000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object CONFDIRECCION: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 38.520000000000000000
          Top = 26.954360000000000000
          Width = 307.200000000000000000
          Height = 19.200000000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 38.520000000000000000
          Top = 126.400000000000000000
          Width = 72.113420000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC Cliente')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 114.600000000000000000
          Top = 125.800000000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 67.560000000000000000
          Top = 55.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 166.000000000000000000
          Top = 184.600000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 38.600000000000000000
          Top = 40.000000000000000000
          Width = 68.031540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TEL. :')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 38.520000000000000000
          Top = 54.200000000000000000
          Width = 29.631540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 38.520000000000000000
          Top = 144.000000000000000000
          Width = 72.113420000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NCF')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 114.360000000000000000
          Top = 143.000000000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NCF"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 17.400000000000000000
          Top = 163.200000000000000000
          Width = 345.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = -11.400000000000000000
          Top = 164.800000000000000000
          Width = 332.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NCF_NOMBRE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[MASTER."NCF_NOMBRE"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 17.000000000000000000
          Top = 182.400000000000000000
          Width = 393.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 17.400000000000000000
          Top = 201.600000000000000000
          Width = 374.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 135.040000000000000000
          Top = 53.067780000000000000
          Width = 68.031540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 198.847310000000000000
          Top = 53.067780000000000000
          Width = 75.666110000000000000
          Height = 16.856710000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Ropa Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NUMERO_FACTURA"]')
          ParentFont = False
        end
      end
    end
  end
  object Imprime_Media: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'DETALLE'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43435.069359861110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 315
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 88.900000000000000000
      PaperHeight = 254.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 412.800000000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 43.195300000000000000
          Width = 260.182870000000000000
          Height = 15.118120000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 16.579530000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 218.162400000000000000
          Width = 88.667780000000000000
          Height = 15.360000000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 393.600000000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 320.544960000000000000
        Top = 489.600000000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 13.379530000000000000
          Top = 3.779529999999965000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 195.392270000000000000
          Top = 7.272480000000029000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 87.426840000000000000
          Top = 8.933889999999963000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 25.727520000000000000
          Top = 128.883549999999900000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 132.990600000000000000
          Top = 128.883549999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 247.976499999999900000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 27.540260000000000000
          Top = 297.847310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."HORA"]')
          ParentFont = False
        end
        object frxDBDataset1TIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 31.463080000000000000
          Top = 149.461410000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."TIPO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 35.174830000000000000
          Top = 191.544959999999800000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       ')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 110.943290000000000000
          Top = 189.686579999999900000
          Width = 185.877180000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cajero]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 27.379530000000000000
          Top = 249.078850000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GRACIAS POR PREFERIRNOS !!!')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 33.056710000000000000
          Top = 172.999999999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor  ')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 31.795300000000000000
          Top = 207.999999999999900000
          Width = 259.200000000000000000
          Height = 36.661410000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 86.067780000000000000
          Top = 31.149659999999920000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 82.288250000000000000
          Top = 50.047310000000040000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 195.674150000000000000
          Top = 31.149659999999920000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."EFECTIVO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 195.674150000000000000
          Top = 50.047310000000040000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DEVOLUCION"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 310.492950000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 102.447310000000000000
          Top = 219.513420000000000000
          Width = 85.266110000000000000
          Height = 16.856710000000000000
          DataField = 'NO_FACT'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NO_FACT"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 26.215770000000000000
          Top = 220.513420000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 100.365430000000000000
          Top = 239.529190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 26.774830000000000000
          Top = 261.104020000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   ')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 100.329190000000000000
          Top = 260.104020000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 289.674150000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 25.477180000000000000
          Top = 290.894620000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 58.744960000000000000
          Top = 290.894620000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 207.100990000000000000
          Top = 291.200000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.599999999999999000
          Top = 308.281880000000000000
          Width = 321.260050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 214.105690000000000000
          Top = 197.083550000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 105.944960000000000000
          Top = 196.763760000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 26.185900000000000000
          Top = 197.184230000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC   ')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 0.261410000000000000
          Top = 156.066110000000000000
          Width = 328.138590000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 0.563760000000000000
          Top = 164.445640000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 26.181102360000000000
          Top = 239.756030000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 286.669450000000000000
          Width = 335.697650000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Width = 297.600000000000000000
          Height = 153.600000000000000000
          Center = True
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000C800
            00009E0802000000F8EDD223000000097048597300000B1300000B1301009A9C
            18000037984944415478DAED9D075C14471BC68FAA5862D760C11A6B142316EC
            5D63C7DE50B1448D1AA3C458882D2AB6A8B1A3898ADD88355662EF58820A56EC
            2DF64A1491FAFDBDF7CB7EEB1DC209771EE4BBF797F85BF6766767679E79DEE7
            9D999DB18A8D8DD558CC62C6362B0BB02C660AB300CB6226310BB02C6612B300
            CB6226310BB02C6612B300CB6226310BB02C6612B300CB6226310BB02C6612B3
            00CB6226310BB02C6612B300CB6226310BB02C6612B300CB6226310BB02C6612
            B300CB6226310BB02C6612B300CB6226310BB02C6612B300CB6226310BB02C66
            12B3002B010BD75A4444446464A49495ADADADBDBD7D6AAD595B5B9B3B83C9D4
            2CC0FA9F019D478F1E5DBB76EDF2E5CBB76FDFBE7BF7EEE3C78F9F3D7B161616
            A60F2C0707870C193264CB962D478E1C79F2E4C99F3F7FE1C2851D1D1D419BB9
            DF2359D8FF3BB05EBC7871E5CA95E0E0E0C0C0C0A0A0A04B972E812430F4A1E9
            80B674E9D2E5CB97CFD9D9F98B2FBE7071712958B0203833F7FB99CDFE4F81F5
            F7DF7F1F3F7EDCDFDF3F202000304154C64DFF934F3E81C3CA972F5FA74E9D1A
            356A64CF9EDDDC6FFCB1EDFF0B58A8A513274E6CDFBE7DF3E6CD172E5C888E8E
            FE080F757272AA57AF5EB366CD2A56AC98254B167397C147B2FF17600129F0B4
            72E5CA83070F3E78F0C0C6C606DD6DA535D33D54CA362626262A2A2A7DFAF465
            CB966DDFBEBD9B9B1BCACCDCE56172FB7F01D6CB972F434242D0E0E86E50F5F1
            3300BC783A382E50A080055816B35822CD022C8B99C42CC0B29849ECDF06ACE7
            CF9F9B548F9BCEA888B469D3DAD9D9993B23C6B17F0FB01E3D7A346EDCB8E3C7
            8FA75C60E5CE9D7BF8F0E1CECECEE6CE8B11EC5F02AC8080804183061D3972C4
            DC1949AA3939394D9C38B15DBB7629B47928F66F00D6FAF5EBBFF9E69BBB77EF
            9A3B23C6311CE2902143BCBCBCCCD22D622C4BD9C08A8888F8F9E79FC78C1913
            161666EEBC18D9BA75EB3669D2A4AC59B39A3B2389B4140CAC57AF5E21AAA64F
            9F0EBCFE65D357A894989898C68D1BCF9933274F9E3CE6CE4E622C05038B00F0
            E8D1A31CFCCB50A558787838423E6FDEBCE6CE48622C0503CB62C9D92CC0B298
            49CC022C8B99C42CC04A31464DA5A0CEAD9404ACFDFBF7CF9C39336595AF112D
            3232B269D3A63D7AF4487A52849CD1D1D1B6B6B6A62BC91403AC4B972E51AC21
            2121E6CE88392D75EAD4AB57AFA61C12712F31E6EDDBB7AF5DBB16181878EAD4
            A9BB77EF126FB668D1A2499326A952A5327A565306B028940E1D3A6CD8B0C1DC
            1931BF952F5F7EFDFAF5B972E532E4E2B0B0B01B376E040505C9A722D7AF5F07
            5B111111CA05F6F6F650E09429531C1C1C8C9BCF14002C723869D2A461C38699
            3B23F159C18205B3E5C8111911F1F4C913C8E0CD9B37C64A1987953B776E2727
            A752A54A952B57AE74E9D2458A14791FC7E0E0783A603A77EEDC891327C0D3D5
            AB575FBD7A157F2D8F1E3D7AC48811C6ED0E4C01C0DAB76F1F8CFDECD9337367
            E4BD068BF8FAFA3A66CB1A1111F92C34F4E683FBBB77EFD9B27EFD85F3E7E502
            EACCC6C6262A2ACAC0D2B6B3B3034C60C8C5C5C5D9D9B950A142FC992E5DBA38
            2F467B3D78F000EF068C4E9E3C89B3BB75EBD6DF7FFF6D78FEE1BF9D3B77162B
            56CC8865920280151010101C1C0C699B3B23BA86F2C5AD4C9C30A15AAD5A8B27
            4D0A6BDDD22632DAB660411B57D7D84A959FE572DCB46387EFAF0B0EECDB87A3
            C1E354A850016C219CE34F1614C27F254A94C89021C3FB58E4E1C387A0E7FCF9
            F3A74F9FFEF3CF3F2F5CB840C34BCA4747BFFCF2CB575F7D65CCC249FEC04ACE
            465D56AD5A255FE1222B478D8E28FEB97DF82B50C37FD139725855AB66DFE7EB
            67A54AF96DDA3C75C28488376FFAF5EB37D0D3D326511E87073D7DFAF4E2C58B
            383868092401ACC78F1F1BEB457AF5EA356FDE3C23968C05584932E44BAD5AB5
            0A162DB6F2C7D191CEA56D435F283FC11ED1F6F6568D9BD87B79DDCEE9E8EDED
            BD64E1C2CA952B4F9C38B16CD9B286248E3B436E4B1C0798CE9C3973FFFEFD44
            7CA56D8891A583070F1A717D000BB09264845D356BD68C13583178CAD8D8B7EC
            952DBBA64F5FBB81FDD7EDDF3FF8DB0144B873E7CE6DDEBCB97E6AD40560BA72
            E58A08A6B367CF22BD015382DE33E986DBC5A522E68C95A0055849323453D5AA
            55F3E30A55C00205D2ED186BA5B18ED5C40A7B55AA947ACA942B4E79FA74EB71
            E8E081254B96B66EDD8A6B881FFFFAEB2F00246A897FF17180EF23BF08ADC0CF
            CFAF55AB56464B3079028B36EAE3E303FF27DB8F0B64CA1408D8BC79B35BEBD6
            8B7FF841015654AA545176B6762F5F5969112620036D11D9B2DA4D9EFCA22997
            B73A131CFCE38F3FDEB9730766BA71E3C6CD9B378DD84391381B3C78F0A44993
            8C955A3205D6B163C71A3468909CBB18B0ECD9B33B3939858484B46CD7CED7CB
            4B0156589932B673E7581D3C14E3E767F3E79F36B1309715FF03C6C854A9EC67
            CDBAD9B8B15B8306414141E67E8377AC6EDDBA341263F5C22753600D183060C6
            8C19E6CE85AEA54D9BD6D1D1F18B2FBE7076762E59B2E4DB4ED16CD99A34695A
            B06851B52B0C2F573E76EFDEBF9E3D75B2B5B1DFB93BDC7B9C7D48883614B4C2
            31BEC9F049EA2DDB764645346BD0F0E3BBBC780C81E5EFEFCF4B19253533008B
            48EAD2A54B2F5FBEB4B6B6CE952B57BE7CF9742E406454A85001D1FA913316A7
            414B79F2E40146E029A3D6D0B99F7EFA69912245345A8554BD7AF50245DE0156
            A4ABEB533FBF16EDDBE570CC3970F0906AB97286F7FFD676DD5AF93482E20E77
            7171D8BAB5F79831BFCC9D6BEEF7FB9FC1559B366DAA57AF9E5152FBD8C0DABD
            7B378E3C3838580196BBBBFBF7DF7FAFEEFF2420570FE068A3AB3832F9BEF309
            BC705C77A94FDAD8D864CA94A970E1C2E5CB97777171295EBC38D0E7D79F7EFA
            E9F7DF7F07EED1D1D15C50AD5A352F2FAFBC79F3D6A851A350B1E2EF00AB82EB
            F3756BBF6CD6F454E0C92C59B38E1C3BB66FDB76119D3AD96FDD62AD051601A3
            CD8C1901152B36AE5FFFD9D3A71FB3FCE337DE71D0A0414649EAA3026BF9F2E5
            FDFBF7D7574E5F7FFDF5D4A953651C94FCAC59B3E6E2C58BB6B6B61AEDE006D1
            0AE1927E6AF9F3E7EFDCB9338804A0070F1EDCB66DDBFB9E5BB46851E0CB653C
            7ADEBC79FAC31D00AB499326952A55E21A2EC6D3C1490AD6B98B7069CF9E3D3A
            7715285000DEDABB776FBB4E9DD41A4B80D5D0CD2D509B6D5B1B9B69F37CBEA9
            5EFD4DDDFAF6376FC8BD91E5CB456EDBDEA46DBBBDBB777DB4F24FD0DAB56BB7
            72E54AA3CCA5F978C0022B34EE070F1E705CBB766D6AF1C99327AB56ADA2DAC0
            D0ECD9B37BF5EAA57F178161A3468DE00910E6E6E6067F5CB97265DDBA75A893
            4F3EF904A402082EEBDDBBF7FCF9F3D3A449D3A143879C3973422A940E51DB8A
            152B08B8F062C0022F367EFCF8912347F22B0EAE458B1628A423478E40A2A450
            B56AD58D1B3766CE9C5927032402EE7FF9E5178D76A4B979F3E650DA8E1D3B4E
            9D3AA55CD3AD57AF854387BE0F58D8A78E8E878E1DCB337DBAEDB46952696FD2
            A5497D3AA8DFECB973A6FF0C883D3C3C2804607DF9F26578B14D9B3684051F34
            4443AE8831972C592277E5C89183D2866B2937A9E2D7AF5F5305BCEFF3E7CFDF
            97088DEAC48913EF1B94FC20FB78C0C2DF4D993285034F4FCFB163C702028DF6
            5BD3AE5DBB8686865267BCB3CE928A9C074C5002281933660CFE91E223C38B17
            2FFEE69B6FD06A356BD6A48E113AE5CA95BB70E142E9D2A577EEDCA9FE16AF6F
            DFBE73E7CE457473195209FF456C8F00079A152B56D4687BB7BFFAEAABD5AB57
            734CFC0FECE4C6C8C8C8DB5A83080923780439DCB06103624BA31DAA23DB0A47
            26082C6CDA9CB9038A1589AA5BCF2E3A9A128FB2B5B13B78F0C73DFB46FFE085
            C33D7EFCB80C0BD200A08D2D5BB6E0883FB4844F9F3E5DB66CD9D4A953D34469
            0C6458877BC0DCD9B367478D1A85968AB3DEB9F7D0A143E427E9D5FD918045FD
            3568D0E0F0E1C3882AFC1A6D54CEC30738C73973E6703C73E64CE0A2BE8B8A6C
            DBB62D755CBF7E7DE8441970E00C7C43E9A74F9F9ED244AE21F6E1B08E1D3B2E
            5BB64C5D9ABEBEBEDDBA75D36807590156E3C68D295C000A7529D79C3B778EF4
            FFFAEB2FC22218143051CD41414157AF5EE59886CE35B8E9850B17B66FDF5EB9
            0B9E6BD6AC19E0D61806ACDEDFF4F719D03FBA64299BB0302DB06CEDF6ED1B7B
            F0E0C861C3A848C5D70BB080AC81C33E6A0B0C0CAC55AB16AF46738AE7B2172F
            5E409094679CBF1A6B34FA2301EBFAF5EB5F7EF925C1205548A9A907EDA9D7CA
            952BF3B6D009BCA2EE4711BEE10CC4D6B061437582500BB4473AB430B8AA7BF7
            EE9CC49F2A652A3398296B9EFBF8F163E08572FAF6DB6FB905BA8208D5A9711E
            5873008F0250FD21147CF7E6CD9BD5B3E1F0B0A48C73D11806ACEEBD7A2F183A
            34CAB9A46DE85B8517616F677FF4E8D00D1B278D1D8B7FC785E1B3C8F0514E0E
            1D0A47925BFDAA51CEE8CB20CE201B7064D24AE3B79090104A1BDED5FFA967CF
            9E888AA4D7F8470216150063E186500FBFFDF69BBA5CA845840BE48C0B83C045
            1BC979514894FB1F7FFC913B776E7582C42F83070FE680046FDDBA457DA0B591
            F0E2418E1D3B46C5C0704F9F3EE5B930107F7240BC094C8148DDBA75D5A9814E
            A0A39E5AA963A3478FC683A8CF20164950949621C0FA61F4E8714D9B44BA56B4
            D53E25224B56FBA0939D478C5AEEEB0BA4B264C9220BA2026B3410528FD7D1A9
            1AF5742E5943F59D8AB4B2828C0974408CE69F7685A3A0004993F4216C8987C4
            28EA38A733D0C869F9E8D724D6F8470216A44235F092FAC0D268E917F5FDBE9C
            E00D095574CA518045F9E2138111D82A5CB830ED9512410FC15BF83BE9EB4370
            903E320B05862F8E1358147D952A55A0B7383340C543A56861F5C90F0296BD7D
            AA9D870E563A7C443370808DB6C721AA56CD97AB56356CE6764CFB31B72106D9
            13850862709DBB76E9869308F6E0E06045A7E2EC508D34699A285C4BFEA74F9F
            AEF41A222BF1ECFA658E56F1F7F7FFFCF3CF9358E3C90258540F6E254E66C628
            0E5C95CE490116E53562C4085A1EC0A29860385286170924911A6820AE5CB060
            815A34C4092C8D2AB6D037023430A7B33EC70701AB79EBD6AB7D7CA2DDDCEC0E
            1D2287308FDD4F938ED6ACD3B06E9DE7860D5BD1AEB66EDD4A29C99FE3C68DE3
            C575AEF9ECB3CF009C90CDA3478FD09D2810F505B0D4DC7FBA64A125CA0716D4
            4984B6BA76ED5A1DA990083327B0D0CB04FC703E12180975E0C001FD1B716738
            38942CCDEEEEDDBBA87EE1730116BFD6A95387164601CD9A35AB5FBF7E1AADFE
            25B541830651FAFC79E6CC19024051D99A778115161686B3A0A1734C90DFAA55
            2BFD82C65A038BD5ABC933421077235D1286032B7F8102BFFFE15F7CD7AEE8BE
            7D6D62DE8E19BEC993C761F7AE214B974DD6E610368521647970FCA0708C4E1E
            107FB87B8949A932777777585CE71A35B038E0AD755E073787A8E0719AF7030B
            FBE1871FA4E89262E60416BA4A59F4827810E9CD41BA74E928A002050AECDBB7
            EFC99327458B16452111FD51A900889624EA5E7185100975CC059414EE8C9F7E
            FEF9674F4F4F480BC90F6A410F458C8FD007D6BD7BF7489C2B012B39840F603E
            FDCC2B9489CFE58912AF1908AC4C99322DF55BD3385BB6F02FBF4C75FF9E4CA1
            D18C18F157CFAFAA54ACF4D79D3BFC858FC6D592558A85D685E2D4AF6F2426DA
            5CD6F1460BD6AC59537F953935B0C82A624B473502ACEDDBB75356F1030B9F0B
            3B2671752E73020B178647971ECEC58B1713B891192F2F2F223EE9177DF6EC19
            81B1AFAFAF464B3C50348D493AC415F12E0640811D7C460A100C711FA5CC1900
            CAAFB8421CA23EB0000728C4A7D088A1349EB87FFF7E9D9C530D9472D5AA5539
            26E002E8C87C438055A761C307F7EFCF5DB4A865D122E1AD5ADB9F3EFDDFAED1
            322E763B770CF4F69E356D9A3C02A4C24652917BF7EEAD57AF9E7E7DE3D7C09C
            BC3B416E9932656EDFBE1D0FB06830E4590758343C8025FD9FF100CBD1D191F2
            57BA84521EB06002A2B63163C668B43DECB4274474F7EEDD0101112F729EF368
            02948146EBAA0004325C54BC0EB014810F165D5C5CD0167849185100A496596A
            60C188A0996CE4CF9F5FF34FF7BD4ECE7152009406401D7071E7CE9D71BE0900
            CBD5F5D1AADFBEFFC1CBA357CF7A397284BBBBDBFE1968F3765E566C44D6ACA9
            366EDCF63AAC6D8B962FFF195922C3D08F8066F7EEDD10A77E7DAB075BCE9E3D
            0BCEF4D79A3316B0E06F1814524CC1C0DAB9732788E14DD016B44200E1EAEABA
            65CB1614121C96316346DE5FBAC825C059B56A9524A8032C8867C080011C20C8
            601499188E7E97C16C8A9BDA02463AC00285F0E577DF7D271385F1C53A3DB41A
            1564E189EAD5AB0374FE8D1F58E1E5CAC5EEDCF9C6DA2A43606044AFDEF6972E
            596927FA4539A4B6FD65FECD1AB51AD5AD2B1D6086030B22F7F6F696E3B7530B
            DDDCF47598B180854D9E3C99682629356E4E605191D41372324F9E3C14133FE1
            C2703D20890282CC88AE610BE26759DE2E4B962CCB962D9304D5C0A24AF02095
            2A55E278DAB4690045CE031A426E3001A4A82DE9DD56030B347340D3A41CA532
            88C9A5AB5D3165C0FFD0A1435427098A928B0758AFCB964D7DF8B0B5BD7D78A3
            86F6DBB68B078CB0B7B3F19EF0A45B170FF74EFEDBFDD58F300458EA0E711AE4
            C08103F50BD988C0EAD0A1C3F2E5CB93321A6D668D85CA869F6AD5AAC59F8AFB
            530CBFB364C9128D5655142F5E9C580F1A53EA5B0156C182050303033364C840
            C8D6BE7DFB356BD6C879FC171E56FA757AF4E8B170E142CDBBC022200055DC08
            B845E6E38E4F9F3EAD648093D4B42009C822FEB8926B3409012BD5E143D6B676
            910D1BDAFDF1076762ECECA2274F8AFCBA8F7BFBF61B376CB0D27665299620B0
            F8893C2B33A59471021D3322B094269DE81AFF48C0BA76ED1A1E4AA7E79D56D8
            AB572F857511B054957AEC5DE941204204015DBB765DB46891FCA40696A23F88
            F2A8152500C4C3523AA2B515D4EA008B5F1F3E7C48FA22F375641627812C1E99
            5202B21B366C50A8D1106045346A64E7EFCFAB4603AC19D3A3BB761BF6C3B059
            3FCFD029F30481858E0610048F1AED40728B162D908FFA856C446065CE9C99A2
            2B57AE5CA26BDCE4C0428F13C3237D860E1D0AF1E8038BD75BBF7E3D0E8B0AA6
            AAE018B951E9C1E278D2A449DCFE3E6029A3D7C47478CC972F5F2A4F1F376E1C
            81A4463BF20F2070733AC022B4A63288FB38D0A88253B91D8185AA23B777EFDE
            E596AB57AFEED9B3C71060A5065876F6E1F5EAD9EFDAF55F57686B1BD3B3A7DD
            78EF690B178D1CE6F526E27F9F4E2408AC92254B0208590804B7CE734F9C3861
            52606110BC8CDF272360C92227A7B4161414045DDDB973475E521F58F9F2E583
            15682208290F0F0F4545514C149F38383869EDDAB5BCA7B83335B02826602103
            64D283A5CE09AA881B89E46506C4F9F3E77580452505040428329F277246643E
            3665CA14516C082CEA9BB222DA481058E165CBDA1E3860EBE01033D7276AD850
            BBD0D0586B2BAB9858028A988E1D52CD99337AE6AC712347C5FEE30F130416B4
            8A6090C91D972E5DE2B914A9A981D5B76F5FE9593433B0D0DA549BAC9883F1E6
            712E72A20F2C1C1634A0741489EFD3A8F4E3EDDBB7296B128F1358B466483B67
            CE9C3C0BFCF9F9F9A91F57B46851549193939346BB72BAAFAF6F9CC082E7084E
            614D65D05AA3EDECA63A25EA968C1158F0AC04811559C1F5899FDF8265CB3B74
            6C5FE0DAD57088EAEA3599941CCDBFEE9DACE6CEE9F7FDE05FE7CF331058D205
            23C7870F1F466B8686869A1A58B4D55DBB7625FAF33BE3008B763C7AF4E83367
            CE24B8C8893EB0342A62A038781FF9C24EE9EF561C5C9CC06ADDBA35DE0A4EA2
            ACF19B972F5F563FCEC1C1011889CC92C7517FC0450758B973E70622321AA8C8
            7C40098CF2E6CD4B1175E9D2052AA5CEA8184380F56CED9A5A0D1AD8585BCF5D
            B8B04ADA34AFBBF7B00B0878FBD6B1B160CB6A9CF7D3DEBD1AD4AB774AEBF713
            04D69831639491415A0EED27CE5A332EB09074A8DE447F0D660460A17C795599
            739CA0C509AC56AD5A71521C1682F1E2C58BBC3C6F2E34A638B83881A580F2D8
            B163D5AB57D7FFEC73C28409E833296B022B1E41E1EA008B472B2779842CC788
            1B25C08450692DE42A2424C4706029433AD93FCD3173FE2FAD5DCABCE9E86EBB
            7FBF95F6B38D8874E91DD6ADD96E6BDBA6A9DBCB572FE307167780E98E1D3BCA
            9F2237E32C5BE3028BD2E0E2440FEC241558641D3A81B10CBC3E4E6029BDDB64
            A653A74E2B56AC50CE20BC40ADF420E8034BED460921FBF7EFAFFFC4E6CD9B23
            B370738F1E3D0258A8F81D3B76E8008BE3B163C70E1F3E5CA395F9152B5624E6
            50CE28A3028900167F66C89871E6BC799D5D5DC35AB6B40F0CB4D67636449475
            B1D9B1B3D7E0C1BE0B16942953863CBC0F589CE71DA58F03EBD3A78F8F8FCF47
            0096A23BCD032CDC9F2B4566F0563671022B6DDAB40870E9D196EE6F85C39421
            9A3881A57407803F777777A55F3E4B962CCF9F3F97CF0AF06514B7B8B9CE9D3B
            D3FAE3045693264D084E412AD250643E0A433AD814E597386069B4038ECBD6F8
            35CBE9F8BA5E03FBFBF7ACB462CBEAE769E71B34A85CB65CA14285A0DBF7018B
            9CF38E221379230416F93735B0C0FA860D1BE4A1E60116F96BDAB4A9E1DF93C4
            092CCDBB8A8AB2832AA4B9A055A95D29207D6029A9E9F460415D800C8AD2685B
            3C1011569B3163C6F7DF7F0F88F58155A4481164BE282AFC0E9577EEDC399951
            23704C0AB0B002050BFCEEFF47F1DDBB23FBF695EF29224B14B7DFB1A3F3F0E1
            A78E1D279DF7010BF246EBC85C17FC38CD8CC0D074C0A23079046D29115F7318
            1358D41905917460299D9CC48090C7E4C993A5A31909A50C5AE9036BDAB46932
            B871F0E041E0283D58942CBEEFC71F7F04947231BA440419C50DA470AC92B81A
            58C87C0243011C8953EEBC1A9409807841E98E4F0AB0B0266E6E7E8B16C5B669
            6BBFEBAD72A0C8EC162DDA9627F78F5E3FD09C6442BD3EB01A356AB469D32619
            7ABF7AF52A5C126748981460C932A7D03F20C6E752089932654A0A2A8C002C5E
            95582C9E4FD50C04965228A8EF010306A04F210F1C5CFBF6ED951E0435B0C00A
            D0817BD4DD01F253891225E01E34BBF259418B162D480494802460016EE4D30C
            35B034AA9157E41DBACACBCB4BA31D0FE062F9C83689C022031BFDFD1B85BE88
            6CDDC63626E66DEFC397F51EFFBA60E48F63A74D9D2280D00716EF857C94E3F7
            4DAA490AB0002EBA0D5451E0465C3B39A9C092C50B90084904969D9D1DD1A5D4
            19F450BC78715CC3DDBB772965649C3EB0BCBDBD714F040D79F2E45124BFFC84
            5A472D291F7E6954BD5920B57BF7EE847B326B590758F8748485C87C224119E4
            99376F9ECCDB493AB0B0D6EDDAAE983D3BDAD5D5EECA552828E293F436C78FF9
            061C6FD3DC2D43860C71024B61658DDE346B1DD399414A3E7596FF0358B4199D
            19A446FCAC5E6D46E86E908FB40CBCF87DC0D2A83A0E143B70E000ED4919A251
            030BBAA251E223A0014080DCBE70E182FC04E6201BF5C8A3BAAB73FEFCF9049B
            44B21A3D60A967692AD6B56B5765E43BE9C0FAAC6811FFADDB9C860DB3F6F313
            09AF59E31758A050F1CF0AC9C44E1D608172DCBAB2FC1FD253993CA36F000B99
            2FE9203AF1243ABBCE7A78785080E25579111A120F4A62F4F73E3302B0962E5D
            4A8E0D4C271E60B56CD972F5EAD5EA8E139DF9216A608D1D3B16FA914FB2D4DD
            AACA24B5870F1F5243CA87F08ACC3A71E204ED58C0A1032CF9765E224131308D
            8655209B746065CA9C799BBFBFEBFA0D311327C81C87A8C9939FF6EC9929756A
            E98AD40156E6CC9979A2E868892A94C857DF6830E4476918CB972F9F3871E2CD
            9B37795FDC1F929CD805F2965FC12B75419A717EAB92743302B03E6891B47880
            55AA542988DAD1D151FE24631D3A74E062E50235B0A64E9DCAF5A2B567CE9CA9
            148DC23A3A1D10AD5AB54266F15CF2191E1E2E4FD1019646BBD0CD902143943F
            951E2CF933E9C0A282B7EFD85965E70EDA84002B62C488C8D1A31C6262E52311
            1D60A927588372D41E618A4E9AF21506F11372020727135CC588846EDCB84193
            C3CF12F6AABF161C3D7A34ACAFC388463423004B5DC4095A3CC052CF2ED76867
            E1952B57EECA952BCA056A6011D9A118C00700A21D2BF85326F769DE9D119A3F
            7F7EDC844EB0A30F2C8A989415D654C7041A63002B5B8E1C00E58BA54B627E9E
            6EAD9D561AE9E5153D6E6CAAE8983881A5FE7CF4D6AD5BFC24F48973475C0238
            6767E78A152B02A0FEFDFB4B67F292254B125C131F1109C75FBC7811C10E4917
            2E5C388918D03723004B27768BDFE20196E6DDE51BF48768D4C0221A458CD346
            D5DD019A7717F640C0023E4941A7FF5A4C1F583A5F5DE3E265A6A158D28155A1
            62C56DBF6F4ADFB6ADCDDEB78B22BD0D0CA74D79DAAD7BC6540E38438D1EB014
            A2D5A8BEBEC45923B6F2E5CB473E6590F8D5AB5700057E0570342774613C55C0
            C59E9E9EB27E4E8F1E3D7C7C7CD45F481BCB8C3308AD33033D1E0382CA0771EA
            C04DFF57FD19E8712E2B8066C22102118D76121F15AF7C0540F594295346092A
            F5C31F48B176EDDACA0C308D96096014614DD2A40AD5BF022CD0298BB1C82441
            F978DA7060CDF099F74D850A1155ABDABD7A1B9144A471B0DBBF7FEBA3270D6A
            D7B6B37F0B9143870E917F055823468C908F4D34DA2E43A0CC4F8A5E541BF2B4
            4B972EB42232C92DA8089D2844A3EDB827C3C87F992748CB84AE646942A39B71
            80453BAB5FBFBE21DDA40823DE59A3550670D2BA75EBD4BFE6CC99B34F9F3EB2
            8F1E1E4DCD25189E9116AC6418A6E4185A5276050358704C8E1C39E41A3C1A30
            55FAA98992B85D963A4673A088C90C8EE6FAF5EB808FB2968F5A5BB468E1EAEA
            AAD17E4FBB68D122F57C8DD4A9534306785512E162E853C22E0381E55AA9128F
            4BE3E969B36891B59526265613EDE6F6C2C7A7779F7E253F2F91266D1A591F8B
            64950F25F0ECA09C3FF9893715B7802A57C6A4158B888880AA65D963E93D8759
            3FFDF453656982B0B0B0B367CF22D16440227BF6EC909674BB98C28C032CF8F9
            8B2FBED0096E0D7A7CA2967B548C82436A386A2D4B962C543C0D1ADC8086FBF7
            EF93AB3B77EEA03FD41FB4805A3737375C002844AF708D83830320E32E1851FF
            633D43CC106039E5CDBB6EEB56979090379D3ADB87BD457044FAF4A9B76E5D76
            EFAE47FB8E3131BA6D1240C4B96F0080D8B973274D42FF27E93B20F47B9AD0F2
            93BC2F10D4598DC2B8661C60C1558D1B37C689982EA36A2B59B2246A03D10AB0
            7834811E4E8D7F656A21720A77904D6BA0E7DEBD7BF82FF88FC01BF29F3C7932
            58848A9E3C7942CC453DC14CFC3A6EDC38BC5BFC2B4BBDCF120456D6AC5917AD
            5CD9C43167589346A96EDCB4D6584513F50E1C183A7C38DE363828481694938B
            65E534324656434343D54B1765CC98115A2293F1CC663970E0009CB76FDF3E59
            2E557D3B29972E5D1A8FD1B2654B1906359D196D06A92C5865D2BC22549153DD
            BB772F58B06050501065171212427911EB51737837598F14A7208C05A438067F
            44E948DDFDFBF757A850E1F8F1E3F85FC88944CE9F3FCF657858DCE5E2C58B11
            703874F1141F64F1030BAEF259B8A861CE9CAFDBB7B50B0AB6B2B68E8D89892A
            5BCECE7FFBE0C993E7CF9983F8C3BD8A90A03A90E4C47ABC17B92228960AE25F
            C0449E0D8CE01E3F7E7CEDDA351A8FAC9AC9EDA08A942907236E98138F190D58
            D456DBB66D93B2B359FC067B7B79794136280C642C6D177D804700551015E508
            632123A404F915B9963E7D7A82474204242A2AFEBBEFBE93A5FA264E9CC819A2
            2159A9819F38969013D49E3B77EE43F31627B0BE6CDAF4D4C99365CABACC5BE4
            5B566315DED1DDFE4C904C220DCF9123CDEF1B373F7FDEAA999BE7C08113264C
            3051A199D18C062C8421EE09B762F42CE2CEBEFDF65B54D1AA55AB201508065F
            80B33B72E408083B7DFA3492826848E745B80B14366FDE1CDAA7E9135EE10A41
            2161D1DAB56BD55115527DCA942944A0244E580A163F348771CC795FE3D7B845
            8BC2858B4C99313D57E09FAFBFEE6B7FFD9AE6ED06159A487B7BDB458BAE56A9
            52AF7AB57C79F36FDEB2590661FE656634602150F038FA4BA024D188FF67CE9C
            F9F9E79FF7EBD70F4E826C0A1428F0EBAFBFA28A0CDC61A078F1E2449743860C
            99376F1EDE847408A908FDEE68577AD168970CA953A70E6922B338507F3D66A0
            E900EB4DF9F2619BB71CBF70BE72F1E2A916FBC68C1B6F1FFA22D6CA5A131B13
            656767337AF48BAFBF263EBD1C12429018A70CFF1798313FFF92B5F38C98B9B4
            69D3E2A4D04F9D3A75427610EF1010E1380C9741F0D6AC59B3F8173C91C2C993
            277197BFFDF61B4E50480BA86DDAB469FDFAF5C401E80F43D675C59DE5CA950B
            7C97D4DAB469D3CA57AABC6CD4C8FFEDA553BE42EA80009B4B17DF0CFADE6AEB
            56F9CC2546BB3CA4DDCF3FBF68D4A867AF9E3BFCFD2160708C1C244BAFFF3144
            E11BAD856B8D83C8C8480486FC4B9C282B4A22375BB76E6DE096E3663163024B
            BF273D8946F05CA95225D805F7377DFA74E84ADD0F6E8821D2C91292DCD1D171
            F3E6CD00F4E0C183F5EAD523D468D2A4091458B56A55F0DAB97367FC2090DDB2
            654B9CE910161046C9C6272E2E2E8493A0305DBA745476952A5574B6950B2F59
            4AD3BE9DD5BC7976B76E59691799793B2658B284C39CB997F317E8EDD1F5C0BE
            7D1E1E1ED5AB57BF73E7F6C3870F5FBC087D15F60A5485BF7E1D191515191141
            B2515A18892975049EE069F40691DDDCB97365A64DF2346302EBD4A953E0C058
            1B0F3568D0003270737393C50B478F1E6DE0A89162458B1625A418387020527D
            C18205E8276F6F6FC08AAE87A5DCDDDD91536BD6AC397CF830B5D5A54B176579
            6D3198D2C9C9094F0A98081D8A1429923973669D383FAE1D56AD62ACAD3531D1
            6FFB25DF2A750D515954EB56A9A74CD97DE3C6D7DDBABF7CF9F72FBFFC8A1E8D
            88888C79BB51E67F9740E65F6B0EACFE6B1AF5D2C8DA3A92F5FE68661AEDA24E
            FA7B1D242B3326B060F5B265CBBE6F46F60719DA1C4C507CB367CFDEBA756B70
            70F087CE19C2FDAD5CB9129707B0203CDAF7BE7DFBF01DB475B88734896181CB
            800103A031B8168F8943044CC0114E024C400A60C5BF30463C5BF74AB1BEC992
            D57ED4488D87C774DF4563478D2A5EAC38D4FBDFE9E4D2FF19FF16D1D40E9769
            D10C8DF5E9D3C7DFDF1F5A95352393B3191358FA135D126DB44B2F2F2FFC14BC
            85EE6EDCB8F187762F41489E9E9E78BDC78F1FCF99330704ECDDBB97E812AAA8
            5CB9323A1DA4E2FEF8B774E9D2B8CBC58B177350A64C196067F8E7BFEF02CBD9
            563B1B5D0A34CACA3AA651C3D463C75CF824C3482FAF8DEBD6418A13264ECCA6
            FD5E886BDE041C8EFA79BA5D4CAC4667F599FF558E550C6EB172E5748306813F
            94C0A44993A06DFD957993A11979ED06C347A3E3373CD7BD7BF7468C184139A2
            B829D30FBA3D53A64C7FFCF107DC006941391C77EBD6AD50A142C462008E0030
            5BB66C38B5A3478FEED9B307B79868B11227B0A2F8AF583187C183DF3477FB6D
            CBD6115E5E88275C30C052413636E6F98BD7DF79DA2DF2B5FD6717561D7BABCC
            9C9CAC57ACB4AF5299281859467B504FE349CE66646011B5356DDA3489322B4D
            9A34BB76ED82B1CE9F3F8FCFEADEBDBBF25D9781F6C30F3FB8BABA0223A22A84
            39CE0E273266CC1864CA93274FE0276B6B6BE2009A01FC9A14B7A202D6A8C862
            C5ADC2C3A38B14B1E9D2C5A67BB7803B7F8DFFF1C73FB66D234AE0D13A2BA7C7
            BEDD30DA2A3A3434DCBDA3FDE62DB65A18E9C0EB4DA64CD66BFCEC6BD7090808
            406BD224A64C996294ADB93E8219195857AE5CC1D724A28F516DB973E7A681B6
            6BD70EA5356FDE3C62BA0FDAC397788D00F09B6FBE4154510DCB972FAF5DBB36
            29C058BCAC7006EA0D669D3973A6AC5E9468938DA28A7E5E62E9983161EE9DD3
            346B12EDD6FC524CECF42953FC56FF962963465C2DB08E671425F2EA95C836AD
            539D3C1D6B8DEF7C2BF7355A9045A64E153B637AEA9EBD8901C9246A8F3843BE
            834811666460C110C4567F6897B14BB481005C18E9708013AC53A78ECEF28DEF
            33C23D5005A4222222F03B921421A1AC5DAB18610131266E25E993467850BDBA
            F5A23531FE5BB75A47459DB87469D9E2252B972CCD9C399347972E7DFAF65566
            5AC7696F0BDFCA2A32F0CF68B716F6776ECBCA0E9C8F84CC868F7018FBE38BD0
            D00EEDDB3F78F08096A6B3E94B3237E3AF8F3574E8D0246E864E65A07B8803F0
            89882DF43B023CCE2B6D6D6DD1DA846FC47DC471850B170658919191687699A0
            D7B163475C9EBA8F00214F0C480E955D1E9268A486EEA958A9928D8D6D60E089
            B469D2E27CBB76ED6AE0043AF1806FD6AE8DEDD1C3FEC50B2BEDC48737EDDBA5
            59B8D0CA214DDF7EFD366ED8801E90E5FC5290191F58F041EBD6AD93926CAA54
            A9D06A93274FDEBF7F3F7C83D822A0537E4598831E3054B66C598238B44BE6CC
            99D5936B956F7BC40FCABC428D76052FB4CEF1E3C7FF17F01BC37853A2011E64
            6F6F8F1242D8256285F4B71B45CF9A65EDE909ED45D4A9937AF9329B1C9F4E9D
            3A950C2B9B7DA62C333EB02E5FBE0C7FC85CE1441B8C025CBEFAEAAB69D3A611
            C10D1830000270D15AD1A24501D6FBA613E135AA55AB267D695C13181828E31E
            478E1C19397224550E5EF198462FC7A8A8286BAD253E8998E8D7E327C40407A7
            1A3FC1B650C175EBD67B7874993061424A090375CCF8C0426655A95225CE5D9C
            0DB74A952A2D5EBC18E6C309425AB054962C5912FCF844F3EEF2518451CB962D
            BB79F3E6ECD9B3E1BC6EDDBA11104087CADC1EDE9D6314B1FEF262A1A1A13131
            31440F8215E25CFCA96C83FBF7DF7FCB165CCAC524823CE74AB4A01A5B320534
            7DFAF43A8B1BCABDB1FFF4A7CBB195B575BAF4E9AD626238387AF428E487EA27
            6E356EED7C3433C91AA483060D82C63FF42E14152A1BB6C3C12198F074070E1C
            68D3A60D07AB56ADD2FF3440DF08A0504E67CF9ED568A7F68E1F3F1E34E09A4B
            962C89730416301F0E51A94B0C3DC765CA679C10DE860D1B083EEEDDBBE7E0E0
            009A5169DC4E057FFFFDF784023071FFFEFDD51FA509AA48FFD6AD5BEACE61CE
            E3A0EBD6ADCB1B797B7BA3FCC0998487CADC3D0CAA9339FE326B8387DEBF7F1F
            DF072BD3B4525018A86326011655DBB061C304E78F53D379F2E4C99B37AFB3B3
            3348024F004BA728B76DDBD6B3674FDCD9AC59B3121446EAA569001680A85CB9
            3252BA42850A1AED86BF20A669D3A6CA2B93F2E0C183A942F0477C879A81F070
            A3D42E3FA19660BB1123463C7FFE1CED4C3C912E5D3AC0111C1C0CDC95352965
            9511590406CCC9F6D258C68C19E7CD9B07B06866BEBEBE90AE4C08E611F2110E
            74F8EDB7DF92DAEFBFFFCE9F84B15C06C2E0573CE0B163C7525618A863A65A8E
            7BC58A157DFBF6D5575AB833CA8B2AA71D239868A6FC291B8FBFCF828282C68E
            1D8BE8263CC43982429C8BECF92E83FFD413957AFDFA750F0F0F65A412A5357F
            FE7C858AC40E1F3E5CBB766DF9D2100A3C75EA9428B0B0B0301C2838007C683B
            9843C67A35DABED6F15A53062BEFDEBD4BD429134D41E49A356B942F8965FD5C
            39EEDDBBB78F8F0F25C0CBA2EA6818BCF2A2458B7AF4E821655EA3460D621488
            0D38125AC2766DDBB6E575784D272727F2F0B130601233E13AEFC81A1ADF9933
            67A82D5473891225C4C751D9193264F8209D4B26F7EDDBB771E3C6F3E7CF734C
            5B873CC016B522139834DAB505D51E4AD97C406D8043191D52D6970755B848A9
            48B86ACE9C39EA0F3EF9938A873F94DDBF2118F02D0BB97CF6D9674840D9B614
            5758BF7E7DD92487BCE1BEE13C2E1E356AD4DAB56B71A38086872A337394ED80
            29A83E7DFA6CDEBC996B1070A54A951A3E7CB8EC729D72CDB41B08C025B22805
            C0C235243D4154F09D3B771E3E7CC881A813A000CEF0AAB085B2AC3E6780820E
            5D51678D1A3552D63E509087DFC1DF89A2A73AA119F520B4A7A7E7D6AD5B4F9F
            3EADAC1DA5DE71049FB872E54AE927E332A84B0057B06041E9980594103354AA
            D1AEA4003A652359C205F024FB4FE1A0172C580010791DD009B12D59B2C458DD
            6CE6B28FB4E589A96DE9D2A5D08CF2215E9C5B39AA172F919169945340400017
            CB57A9087960273B498B912064860A54D657D25932094028D4C235D3FED98250
            B6B4E062CE9082342A425484941438CC7DE8D021D1007E7E7EB413A149781759
            0695CA87FC29D7FE0DC0C297D5AA554BBDF85B9C7E50BD6F45CD9A35411E0C41
            48AFC86D1C255A4AE7AED7AF5FABD7B9030D3C4B68296BD6ACA83491D89C8169
            908372996CB308A7E2A695700454D100E49828524121F883232560444A427B38
            FDA4EC63931CECDF002C9D05BA50CAB091CE6C02EA98405559365CD60E41CBE3
            1C25C250380C36A2A695AE7C4458787838E142F1E2C509D9D49F4F162E5CD8DB
            DB9B0BA0463C3E01A92CCD8823061F3A433AF841A851A80E18AD5BB72ECEFEF4
            A3478F123C6ED8B0C188630366B1140FACE7CF9F376DDA54BD6A14158658D6E9
            4D55AF954ABDA26F2A57AE8C765696DC006154271019376E1C324BFD793B4825
            C4EBD9B327D448E2CAF8125A5B3606035B376EDC50A6224287605467B6200449
            A429C82B56AC98ECD2A8FF3AB2A40CAE5067619C1467291E582B56ACC0C5A83F
            948D73DB2A823E9021C790198C02F250330A4A940D2CA87BE48EB2E84DD5AA55
            7904D80273EA2D9CB265CB46C48754D268071B8813153A8C73351875A7B17A1B
            331DA301B8BABAF2446577C2146A291B583829C081EE51CE20C0FFFCF34F9DD1
            409DC5D908EBA64F9FAE6C16AC91F58C376E9485490156EDDAB59534D54B76A9
            970EAC5EBDFA962D5B6405E273E7CE81035913053F0839C9DE998A41759C91C5
            B4F0A7F86E7777F738DF08D43A3B3BFFF4D34FEDDBB73777E926C95236B0E015
            6A48FD0A5F7DF595FEB78DA0878A975E2E3C148E060CDDBF7F1FBE91AF5E09FE
            11373235E5E4C993B094ECB581B42226C07369B4E854F7420D1F3E5C115BEABD
            618919B76FDFAEB374E0912347F08FE207117330DFFB367DE01AD41541A52916
            9CFD9896828185E8A6A6F7EFDFAF9C217C4314E3AD74AEE464BB76ED64204559
            9A3B3434D4C5C545D0C68D8181810220F5B8508D1A3576ECD8216AE9D6AD5BA8
            341152487B1C9F2C03A4B39D9DD0A14E06D06DCAF65DEAC52CF54D52E3DF0FFD
            D62DB9597201162D157971EFDE3DE0C2313597264D9ACC9933A370DF37CB0587
            829652AB2BDCD3A64D9BD44BB88AA937E485E1B85156834518C9A26DE82D2244
            70A3330356115E9A777BA15069010101E207C93300E55F8D3684DCBC79B3EC4E
            A018E44778B17BF76EF973F6ECD9F12F96E4EBEBDBBF7F7FAEA958B162BE7CF9
            787D4306E0939B991F584813EAECC08103081D604421C21FB00B087BF0E0019A
            83FA2B57AE1C3C4400AFF479C2373817F53A8E9A77B77A57ECD5AB57547C4848
            88465BF14B962C51F40D9EB453A74EF2DD3A921F4D7DF6EC59449BF8479E0BC2
            948E4AF582EF9E9E9E8A12877E08F7A4183FFBEC33C2029D3106759A9F7EFA29
            69C6BF5E0340A419A0DF012BAD8B02295CB83098862053CA97141AF302EBF5EB
            D754153554A040815EBD7AD5A95387BA547797C31FB89E3D7BF62087838282F0
            5F700C95443BD65FA1B4448912286E9D4AFDFBEFBF972F5F4EEB57168F941D9A
            C4139181010306882643D990261057F617E11A7E024F701B79801D95250B89FB
            060E1C28233064039692F3D5AA55235454E78186811257E66AE388E148F55813
            F41C19194952B2F69A2C678549BB42E1E18B71E569D3A63D7DFAB4CEE4FDE46C
            6603D6B367CFBEFBEE3B22352F2F2F2A29C18947000B82C18B21A851E2481C9D
            4FAE67CC98A1B35F21BE15B5842A57BEC5E06521151F1F1F654499FA034FB24C
            48EEDCB9C12EF4902143062AFBCE9D3B542DB85FBD7A35FCF1F4E9534518019D
            F1E3C7F327BFAAF774E50CE1270E545E07F7C765E45CF1D720C6D5D51567A7CC
            80FDEBAFBF60EB3367CE406904AA32062A0893D541681B800FF70A4053D08247
            E60116E5D5BD7B77803277EE5C259E32C46EDCB8F1EBAFBF529D3A3BA9525BA8
            2B1D2D2223D6486FC84099DC47B5E5CA954BE77BACF0F070800E2C08D9D4EE46
            268E52E5B84B75872789802DC0874726A2546E9155FC15D0F0EBC3870F6572A9
            9C211DAEC99B37AFFAE9A443561F690DA02BE3EB283F9084D07474748CFF4BFF
            6468E601161E101743E386813E749E78707030EA4ABD7E2B7500A3B469D34639
            23933335FF2C9E2B787ABB844B54944CB3A12E3996B95CF29354393F456B4D59
            E645F84399F3A9F4C8CBEDEACCCB9C77B9461C3A4FB7D19ACC1195C11FB945E0
            2ED39DC5E41830C9BFCA8D9A7F669C4A82294566990158C88EFAF5EBA3A6F114
            1F3A2286B0251A57348D62C0F4EBAFBF46E353DFDBB66D438EDCBE7DFBF1E3C7
            E25C30B8073045684D4192781CF50AB01FDF14F0C901B013AE1284C17669B506
            41C2C7702D8108ED2AF94F593603B09014C8679C1708F8D002928FF8D4BBA5E1
            2CA803C08AB38002890AA91E5992F4E5CB9740EAEDBA53AA45CCE42042D6A0D2
            1258A4D684B1141A13CC096F29C8533396985CA0FF7D8EEC6F23C732D95531F9
            53D43A074257BC829CE198A018F72AD84AAD35CE50504436FC4B5C59B06041C3
            972D319799015804FC1E1E1E3D7AF4F8D0D9B7172E5C207254AF264FC520BD2B
            55AA346CD8B0EDDBB76BB4433A8469A41FFF27C88AC5FE63CA9F1A95EBD1291C
            F5956282337D0F15E719F581FACF14E4E00C3733004BC683E3ECA18EC7088EDC
            DDDD65AF0EC53A77EE0C87D1BED1BC243B79F264E919279EEFDBB76F870E1D92
            F9EA64FF623303B0B66CD9D2B46953A4128ADBF096AABF8E7CA3468D88DBD591
            E0C99327B906F009917CFEF9E7C0AB59B36606B297C58C686600D68D1B376AD4
            A891264D9A3D7BF618F8353A51649F3E7DD44B83D4AE5D7BD9B265FA884154E1
            6A274D9A246BB863CECECEDDBA756BDBB6ADA9F762B098DACCD3DD20BB30CE99
            3307B824783140C16FAABF2443A44F9D3A351EA01072E216FDFCFC94B5B5F3E7
            CF0F473669D2E48B2FBE48706B0651F4C93FF24ACE661E603D7FFEBC65CB96A7
            4E9DDABA75AB7CA912A751BB3E3E3E23468C08D5AE94A7D1AE08E2E9E969484F
            3DA1DC8E1D3B7EFAE9A77DFBF629EF88E4926147828002050AE86FDACE5D67CF
            9E5DB3664DF7EEDD53D0F8493234B30DE9DCBF7F9FF02D202000EA824BF48102
            ECBCBDBD957DE7709DF5EAD51B326488ECF966A0E13D376EDC3877EE5C1EA49E
            0741E85EA4489152A54A01AFECD9B313E77325590A0C0CDCBF7FFF800103C68D
            1B97A4153EFEEFCDCC83D0E8F7850B177EF2C927C0A558B16259B264898A8ABA
            76ED1A3483027BFAF4A94C794051B569D3A65AB56A89DB60E8D9B3673B77EE5C
            BA7429A04970E309624F80988246E592A7997FDA0C357DE8D0A163C78E5DBD7A
            1597171E1E0EB6ECECEC72E7CE0DA9942C59D2C5C525AB76A5E1241A8C75E6CC
            19080C785DB972E5C18307EA8E562893C7A1F93A75EA64C8B236168BDFCC0F2C
            B5C9C81D3EC8A4551B16160629DEB97307DF279FAA4299F9F2E5833253DC586F
            B2B5E4052C8BFD6BCC022C8B99C42CC0B29849CC022C8B99C42CC0B29849CC02
            2C8B99C42CC0B29849CC022C8B99C42CC0B29849CC022C8B99C42CC0B29849CC
            022C8B99C42CC0B29849CC022C8B99C42CC0B29849CC022C8B99C4FE036914B5
            FF172C75920000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'DETALLE'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 44533.714403344910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 368
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end
      item
        DataSet = FrxSeries
        DataSetName = 'FrxSeries'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 88.900000000000000000
      PaperHeight = 254.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 393.600000000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 190.762400000000000000
          Width = 69.467780000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 45.195300000000000000
          Top = 0.302350000000000000
          Width = 173.782870000000000000
          Height = 15.118120000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 18.579530000000000000
          Top = 0.302350000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 374.400000000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 358.944960000000000000
        Top = 470.400000000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 31.379530000000000000
          Top = 3.779530000000020000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 19.000000000000000000
          Top = 267.176500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 26.340260000000000000
          Top = 288.247310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."HORA"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 45.379530000000000000
          Top = 268.278850000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GRACIAS POR PREFERIRNOS !!!')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 41.040000000000000000
          Top = 217.600000000000000000
          Width = 259.200000000000000000
          Height = 36.661410000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 189.152270000000000000
          Top = 9.600000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 188.800000000000000000
          Top = 62.672480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 83.186840000000000000
          Top = 11.600000000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 84.786840000000000000
          Top = 28.236240000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 82.186840000000000000
          Top = 64.333890000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 29.600000000000000000
          Top = 141.683550000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 125.950600000000000000
          Top = 141.683550000000000000
          Width = 113.688250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 83.555300000000000000
          Top = 45.220470000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 188.800000000000000000
          Top = 44.220470000000000000
          Width = 75.840000000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."POGXITBS"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 84.939530000000000000
          Top = 82.800000000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 81.160000000000000000
          Top = 101.697650000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 188.800000000000000000
          Top = 82.800000000000000000
          Width = 75.840000000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."EFECTIVO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 188.800000000000000000
          Top = 101.697650000000000000
          Width = 75.840000000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DEVOLUCION"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 188.880000000000000000
          Top = 27.800000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DESCUENTO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 27.600000000000000000
          Top = 162.544960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       ')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 111.560000000000000000
          Top = 164.400000000000000000
          Width = 134.400000000000000000
          Height = 19.200000000000000000
          DataField = 'CAJ'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."CAJ"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 291.292950000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 99.447310000000000000
          Top = 115.513420000000000000
          Width = 85.266110000000000000
          Height = 16.856710000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 21.040000000000000000
          Top = 116.513420000000000000
          Width = 68.031540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 99.760000000000000000
          Top = 134.529190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 21.040000000000000000
          Top = 169.304020000000000000
          Width = 52.913420000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   ')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 99.760000000000000000
          Top = 170.304020000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 15.779530000000000000
          Top = 270.674150000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 21.040000000000000000
          Top = 271.894620000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 55.744960000000000000
          Top = 271.894620000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 204.100990000000000000
          Top = 270.894620000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 16.600000000000000000
          Top = 289.281880000000000000
          Width = 330.860050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 99.760000000000000000
          Top = 151.683550000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 21.040000000000000000
          Top = 230.502350000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NCF  ')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 99.760000000000000000
          Top = 229.502350000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NCF"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 21.040000000000000000
          Top = 212.943290000000000000
          Width = 191.924490000000000000
          Height = 18.897650000000000000
          DataField = 'NCF_NOMBRE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NCF_NOMBRE"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 21.040000000000000000
          Top = 134.756030000000000000
          Width = 68.031540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 21.040000000000000000
          Top = 246.685220000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Vencimiento')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 126.385900000000000000
          Top = 246.685220000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FINAL'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FINAL"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 13.779530000000000000
          Top = 212.869450000000000000
          Width = 335.697650000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 30.800000000000000000
          Width = 311.508720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC #')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 23.040000000000000000
          Top = 152.000000000000000000
          Width = 68.031540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 89.400000000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 64.200000000000000000
          Top = 29.800000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 67.200000000000000000
          Width = 19.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001800
            0000180806000000E0773DF80000000467414D410000B18F0BFC610500000006
            624B4744000000000000F943BB7F000000097048597300000EC400000EC40195
            2B0E1B0000013E4944415478DA6364A031601C76161C05622B24FE4F200E06E2
            ADD4B20064201B9A5817109753CB8237402C8C26361F8893A865C15920364213
            3B07C4C6D4B2602110C7A189FD05627E20FE4A0D0B404131174DEC02109B02F1
            1F6A582001C48F819805CABF02C44E40FC9A5A4104029B81D80788EF02B12525
            86E3B2C00E880F02F16720D604E2A7D4B600044019CB0B88D70071282D2C5066
            80442E0F101703711FB52D008128205E0AC4FF80380288576351034A0CA09CFF
            8D1C0B40A01E881BA09694A2F94414887703B12E105F82FA1854121C60402ABB
            88294DEB80B811CA5E0BC4F940FC0B88F701B10E16F5A0F28C83140B60C13503
            88791920A9EB1503249E08860C29F58112104F02626F22D49265010CD83040E2
            03948C5970A8A1C8021810835AE200C4DA40AC00C47C407C9201925929B68028
            30F42D00005E423419388404170000002574455874646174653A637265617465
            00323032302D31302D30325432313A32323A34382B30303A3030399F4C9E0000
            002574455874646174653A6D6F6469667900323032302D31302D30325432313A
            32323A34382B30303A303048C2F4220000001974455874536F66747761726500
            7777772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CONFTELEFONO1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 46.000000000000000000
          Top = 67.200000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
        end
        object CONFDIRECCION: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 48.000000000000000000
          Width = 307.200000000000000000
          Height = 19.200000000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 22.963760000000000000
          Top = 4.245640000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."EMPRESA"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 192.000000000000000000
          Width = 72.113420000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC Cliente')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 98.000000000000000000
          Top = 192.000000000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."RNC_CLIENTE"]')
          ParentFont = False
        end
      end
    end
  end
  object CUANTOS: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select COUNT(NO_FACT) from detailfact')
    Params = <>
    Left = 1064
    Top = 8
    object CUANTOSCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
    end
  end
  object NUMERO1: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(NUMERO_FACTURA, 0) from RDB$DATABASE')
    Params = <>
    Left = 49
    Top = 556
    object NUMERO1GEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object maxTarjeta: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 792
    Top = 24
  end
  object numero: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_PAGOXTARJETA_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 242
    Top = 200
    object numeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object NumeroCK: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_PAGOSXCHEQUE_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 18
    object NumeroCKGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 688
    Top = 128
  end
  object RECIBO2: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'DETALLE'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43977.292568206020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 136
    Top = 264
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 88.900000000000000000
      PaperHeight = 190.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 29.795300000000000000
        Top = 366.614410000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 181.700990000000000000
          Top = 10.897650000000000000
          Width = 88.667780000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 43.195300000000000000
          Width = 260.182870000000000000
          Height = 15.118120000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 6.579530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 101.463080000000000000
          Top = 10.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."PRECIO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 48.354360000000000000
          Top = 11.118120000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'UNID'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."UNID"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 343.937230000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 203.379530000000000000
        Top = 457.323130000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 13.379530000000000000
          Top = 3.779530000000020000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 184.392270000000000000
          Top = 5.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 184.392270000000000000
          Top = 23.795300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 185.392270000000000000
          Top = 59.272480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 78.426840000000000000
          Top = 7.000000000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 80.026840000000000000
          Top = 23.636240000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 77.426840000000000000
          Top = 60.933890000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 6.829870000000000000
          Top = 4.959060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 98.974830000000000000
          Top = 3.959060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 162.483550000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1TIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 5.006370000000000000
          Top = 25.536920000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."TIPO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 6.677180000000000000
          Top = 122.272480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       ')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327520000000000000
          Top = 124.193630000000000000
          Width = 185.877180000000000000
          Height = 19.200000000000000000
          DataField = 'CAJ'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."CAJ"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 78.795300000000000000
          Top = 40.620470000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 192.995300000000000000
          Top = 39.620470000000000000
          Width = 65.990600000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."POGXITBS"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 19.820470000000000000
          Top = 163.585900000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GRACIAS POR PREFERIRNOS !!!')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 3.297650000000000000
          Top = 138.727520000000000000
          Width = 259.200000000000000000
          Height = 17.461410000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 76.067780000000000000
          Top = 83.149660000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 72.288250000000000000
          Top = 102.047310000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 185.674150000000000000
          Top = 83.149660000000000000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."EFECTIVO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 185.674150000000000000
          Top = 102.047310000000000000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DEVOLUCION"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 266.045640000000000000
        Top = 18.897650000000000000
        Width = 336.000217000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 77.447310000000000000
          Top = 205.852010000000000000
          Width = 85.266110000000000000
          Height = 16.856710000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 9.215770000000000000
          Top = 206.852010000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 205.105690000000000000
          Top = 205.631540000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 9.656710000000000000
          Top = 226.985900000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   ')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 79.990600000000000000
          Top = 225.985900000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 246.412740000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 6.477180000000000000
          Top = 247.633210000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 58.744960000000000000
          Top = 247.633210000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 217.219110000000000000
          Top = 246.633210000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 265.020470000000000000
          Width = 321.260050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 205.782870000000000000
          Top = 190.422140000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 80.944960000000000000
          Top = 189.102350000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 9.185900000000000000
          Top = 189.522820000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC   ')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 151.033210000000000000
          Top = 246.869450000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRECIO')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 0.261410000000000000
          Top = 153.004700000000000000
          Width = 328.138590000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = -9.036240000000000000
          Top = 151.784230000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 167.921362360000000000
          Top = 205.858380000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object CONFDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 15.600000000000000000
          Top = 100.636240000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object CONFTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 95.411070000000000000
          Top = 121.872480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 42.481880000000000000
          Width = 265.322820000000000000
          Height = 103.861410000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000C800
            000072080600000016099E8D000000097048597300000B1300000B1301009A9C
            18000043A84944415478DAED5D077C13E5FFFEDE5D76BA5B685905C189888013
            172A4390214386E216072AA80808FE7000B254444514540401078820A0822088
            028A8A2CD928C81E2D5D69332F77FFF7B9E4C23564159A2AFEF3F8892D6972E3
            7DBFCF77BFEF71B22C53020924101A5C82200924101E09822490400424089240
            0211902048020944408220092410010982249040042408924002119020480209
            4440822009241001FF2F0822979692545242C4F3FFF4A554E24DC924701C3905
            4157E4F56654E93C721C97A2D3155B45D129B1F3CAEC3AAA0492447C4A0A7149
            495577ABFF1F08523A6102D9468F26CE6CFEA72FA552801933B2D7128E6B3DD6
            E3197DD0E5AA274B12135BAE2A2653394996C974F4718361DC5DB23C53AC2219
            921D0E4A7EEE394A7AFAE92A399FEF66FF1F10C436660C950C1B469CC5F24F5F
            4AA54060AF3CBD3EF3E6D2D28D791E4FED7FEA3AF43CEFF8362DAD5923B77B87
            A70ACE27DBED94F2F2CB943C746895DDE3FF0F828C1D4B252FBCF09F2108EE62
            32CFF7195A58F83E473CB328EA1C56C55CF2C4338F0AAE15B19F1F646575EAE2
            762F7256C19915828C1841C9438654C1D97C4810E42C03BC7DAF4EA7EBE072AD
            DA545A7A35DEE9D12493EA671998D4C6F9DC8C199B0F3BE89BED454A0C9464D0
            172E4B4969728EC7B35FAC827B4F10244EF82F1104B1C70A41B8BE5771C9F792
            D72BD44937D01F83CFA1D454016A3D8E6766D41438BA67EA519AB9EE84F24EC7
            B4D44F3EE4B8DE6E29CECCF423419038E13F45109EA73E92F4D197C525F7E0DF
            435A56A3319DB348764B14AF641224841364DA7144A22B26ECA352178B389835
            F92023A353178FA74ADC2BE53A1204890FFE2B04D1B1D75E9DAE4E6B9B6DB3CD
            ED494B32F0F4EB80FA74510D1DC9A28CEC2BC5230E5108C2CE35F4CB7C1AFBDD
            71664B3892059E3E4F4BBBA1A5C7B3CA514569DE0441E284FF0A412C4C10C708
            C2E0574E9C180797A74BE3349AF7600E0B4A7C617ADCC494272A2893A8D96BFB
            685FA1CB4710F67697CC8C8FDE1584FB4D2E972CC581244804B8E924E5130489
            13FE0B044189D32E08E6D60EC7BA3D0E47438EE3E99B8772A96D23339118E739
            D4134D5B534A0F7C7688CA5928E6EE5D9B92F2ED754949AB789DCEC302F74A63
            093B907CA1DDBEB195D7BB94BC5EE5AC0982C409FF058298D86BBEA0EBD0A7B0
            70113248CD6A5BE8A7A7EA90114591384DA162953899F18FA71B271EA4357B4B
            437C221EF0F34C27D0B3E9E9CF0E74BB5F512C498220F1C1D94E10888BC0B4F5
            9DA2B860B9ADAC13047362D79AF4C44DA9441E2FC5CBB95208A2E368D52E27DD
            FCCE7EF24AFEB6124566D4573CEE96235F3425532DAB65EF0F56EBC556A7D3E1
            753812048907CE768218D86BB34E77D1AD45C5EB5C5EAFA5468A89D60FAC4339
            29A8D8C1F98ACF1CAA04B977C6319AB1AE90E0D6415EDAB548A5AB2E3390E4A9
            FCF372CC221E394E34757601F3ACBC749EC5BC65A9D97CB949145DDE8405890F
            CE76829899F518CAF363A79C287816FF7EF2866C7AA37B3AB31E719E3B9EA33D
            F95E169CEFA162274A811C25990DF4FB57B9747E6326C995DD5F224B44161D4D
            185F44035E3E8A37A85F7ADA88E1B2FCA2034D910982C40767334104363F0546
            63DACD65659B8EDAEDB9269D9E7E7EB22E35C9D52BD9ABB8C2C0D3A8AF0B68D8
            E2A381B7BADC924EF3DECF66E48843719019C4523B4797773A403BF738C9A8D7
            3916A7A7356BE474EEF030D72E419038E16C2608FA8FA7198DF73C9397F7117C
            FF6E9766D0DC476A32D72A4CEC81E94456EB4CE7951DDAE662C23A7E1FEDCA73
            2A07E699907EF5612EB56B652272572E411477CEC4D1EC790EEAD5EF80F2DE0D
            C9D6C573F4865BA544162BBE385B09C2616E0C06AE9328AE5C5754740342D736
            176652B35C3389A7580FD9579F6082DDAFB985EA64F267D69BA5E769CE6FA5D4
            73C6C140C0DCF4622BFD34BF169984F8D45D2481A75BEE3A42DFAD2E46FA8C26
            A6A5F5EC2D49731CEA1D2608121FC49B2082FF55D9406A7791D97CD35DF9F94B
            2551D4F98264FC25BCE437C830D186417529D9C49D51EC2EB1F8A3ED3B0769D9
            2E1BA91DC3135FAA494F3C9442E4F0563E3B0C44BFFDEEA5EBBAEF23B747A41C
            B379FF0AABB57186DB5DECF5172113048913E2491064980EEA74D50FBB5CEABA
            8C331E5088032F08B44DA7BBE4358763F861BBBD9EFABE1C90CCD0A779A5534D
            1AD43AEDB463041081639AFCD7BF5D74DD5B7BC9E3B754D95926DAF84D1DCA61
            E1078971482B9B78EA3B289F267F7242B98AFBD3D2268C271AE0D0C867822071
            42BC0882CEDAAF4DA6B6838A8BDF3FEE74D6A2CACCB7FAB4265F915822CB6A64
            D6A30ED54ED39DB17BF5E8274769CACF0581B7FADD538DDE1A9341E48C83BC30
            F37BF8A84497DEBA9FF20BDCA41374EE0569A9CDAF14C5F56ECDC7120489136C
            E3C651C9F3CF572A4178366E7693C9DCCAE9FC7D6F49C945FFF43D020F37CFA4
            29775627D9239FBE07C442978345BEBEABBC529F781A0D3CAD9D57979A3436C4
            A73069E668C2A4521A30EA3041C75C6EB1FEB8D068B88924A95C03FF594B10D9
            ED8E9A350939A4D84401DFD3E9D8B87B756C3C021F4367AA5EA7F370A2E8D3A6
            F2A9999958AFBCF4D557A9840D6C651204D9A54F4DA6DB1FCF3BFE39D661A4F1
            7AAACFEB98E28EB3C2E17C6ED036D1431ED40D94B161632570F463BF7A74F539
            7A92BD6A3BE16980598FF1CB0A69E0C2A38171BFE586545A3C2387386F65A776
            65E51C0E263E57763A485B76D9957F8FC9C878E81151FCC011FCE9B3912092CD
            4605DDBA9174EC183395E54355D478F5F8C96EDAC5C890CF7199FB79BEDEDFB2
            DC609F24D53F24CBB947DDEE5A65466372A1D399297A3C3AF57A789E9793ADD6
            921497ABB09AC974ACB624ED6FA0D7EF3C97E376D415C53D591C57ACF37A091B
            0644AB5749858524151450652D98508EA2D3F15DBCDEEF7E292ABA09C7EDCF27
            D13D2CAC76C9F16AC120A5CD0331CF064EA227BC858C2032A9817BCBF392E8DB
            C76A297513355A399D1BB37B38BA7AC2DFF4C71167A06B77DEE45AD4A5838564
            97E46F02A9441879FA6A899D3AF639A05C7386D1786C795252E39AA2783C7895
            E2D94990E262CA6BD68CC48307154B80E1C324728C10C704216D23C75DB1C6ED
            6EF1BBD77BCD9F1ECF8527240961DE69EFBFC38EEFCDE6F9438D2C96F537E874
            DFB5E0F9EFCE77BB771A24895C14DAF5E640DC4ADCF2C7C8C66CA5D57A6D8FBC
            FC1F24D1236430CB319D52289B9DDC5B6967090DE6EDD07072D222C9EE1F0F9F
            107F7C776DBAF3CAA4D3AEAE63DC78663DBEDE584A1DA7FABA76F15FC3732DF4
            DBC2DA6431CB7159D22BEB05EA7CFF115AB8BC48F977CFCCCCF7DF91A4879D21
            56299EBD04B9F24AF21E3AC4CCBC401223C95A9DAEF91C8FE79EEF1D8E7647DC
            EEBA146549A68E7D072F5E23C4B82EF4E2B8DDEEF05F641AD5A4D7975D6134FE
            7887D1F8615B8EFB3ACDED76F8CA5AF183815DEBFDB2FCF15705057782B1DD38
            0B0D91CDE48E733CC7BC283ACC86E87EB9988AA593543C3FCB4CEB9EC93D83D4
            2EA8C02B6AEBB6F78ED2A26D45011B34F6D96C7AB67F1A0BCEE3C00E3D477F6C
            15E9AACEFBC9E1129922E3A43919992D6E72B956BB4258FBB39A203A4690DDC9
            C9E70C77BB5F595A52D21979FBC038E8F554BB766DAA57AF1ED5A953876AD4A8
            11F8999999496969696461F181C0080692A8E470B95C54C05CA3BCBC3CDAB76F
            1FEDDCB993B66CD9A2FCCCCFCF2F7F21EC7B1725276FE86BB1BCD6CDEDFECC20
            8A92BBA2371303F4ECDAB69BCDE7B52D2A5AEF70B9920CBC409329891A4942A5
            B7260503F2FF01EFA677A5B272F1D8C8763934AC7DC69955B719FB361FF450F3
            37F63237CB77ECCC343DADFF3A97726BF167D8D6726A595149279B051AF87C01
            8D9F8AB994A86152D2EF4B8CC6E67A510C99A43E6B095274C515B4A5A4E4FCBB
            5CAEAF0F14159DABFEED9C73CEA1871F7E98DAB56B470D1A34A0A44ADA11EFE8
            D1A3B47EFD7A5ABC78317DFDF5D7B477EFDE937F6444B9213979F14B06C3C026
            1ECF3647256B7533D36C430C8671EF1D3F3E18FFBE8A37D11B642529AE1B26F8
            7C52072FD303544A7F4B2A15394A3109B4FE99FAD4A01A3A7BCF203E60EED533
            73F3E8F51FF2026FDDDF33833E1CCF3C62D7193A8E2A3F7013928F1C24B09834
            5FA666EDF7D1C163BEFB19965DEDE9675CAE37EC61E6ECAC24885C5444075BB4
            3077DAB367D9C6D2D26BD5F76FBBED369A3C7932E5E4E4C4F5068AD8F9172D5A
            4413274EA4DF7EFB2DF07E9AC994373C25E5A9DE6EF727707D2A437C11001FB3
            58B25A16176FCE77386AE0BD91420AB593742C388FEB6D9291117329EFA1E7E4
            32366992DF80C8D4FBB2749A756F36496288C04EED848F766DEC73C76D12357D
            753F1D2E8183CA319797A31F67D7A3E657EA49769F41DA185F64E4F3BA38B23B
            794AB688B819E657CBF4EEFBA5F4D8B023CA0526190C45DFA5A5343EC7E93A20
            8649A69C950421664126DD7863AF27366DFA5435FB4D9A34A11F7FFC91929393
            ABEC46E08E4D9B368D5E7CF1453A7EFCB8EFE604C1FB524A4AFF2738EE1D8F28
            92F70CB3585813FEA6C9F8F84BC78EBF0DA1ABCB82F30FE564B254207E557D7B
            C82E521AD85F5771293952B25221BFC3F9D2DE4F33EBB15652D784B3EFF21C2D
            EF5B8F5A5C6050366DF0696A5F251C1794574A4AFA370D861BEBD665C92FE8FE
            D60DFFFF391628BFFB43313D36F7B0FFD832DDDC3C9996CFAEC93E2AF93EAF0E
            1D2CA5D71723C262451D528168DA1C27BDF72973C5F345AA554347ED6FB2D2ED
            9D52E8CEC70FD22F1B7DAB14DB67647C365D96EF88B485506067C5C183CF585E
            62C59913C466A30E575E39E7EB1D3BBAFB2693A3D9B36753F7EEDDABEC26B4D8
            BE7D3B3DF0C003B476ED5ADF1B8220F5CDCA1AFBAC2C8F4C71321085DD6C19CD
            81105CC17F1F9C3A36EC77588FA3164BCAAD0EC7DA3DC5C517E1BD475970FE90
            64A48A6C7BE357A854C27E5BCF8BB495B94B4676C6AB19D91A79798524C133C2
            6259DAC2DCAB47A4625FEDC38F6BEA25D10FFD6B934E619DEC6B57641F5EBFCF
            43C3179FA0DFF63BC8C0FED8E992241AD1AE1AA52573BE425FE0043EDF07D6EF
            FA370FB2CF97F9D2B8ECDEDE1B5D93DADC9C4C470F3BA9D8E626B78B278351A6
            CC7423D5C9D15135B8747AF6459714D2422957C3DCBF891FD8A8FF8B68972F2F
            F8D5324C5454E221282E94073EAA5EBD5D07BB7D49A4B1C4DEBC49030650D263
            8F451C5F5E9655AD424E1600DB79DE829E2E740593D94C7CB56AB1CFD719BB58
            65657459E3C63F6FD8B3E76AFC1B5663E3C68D54BF7EFD333AEE99E0E0C183D4
            BC7973E5A7EF2E396A929AFAD3332929236FB4DBBF4B1259040F81526B2ED0E2
            2C7629D3E9F8131C57ED984E9793EFF1542F4D4A4A15BD5E1DFB7C09B350960F
            DDEEBEBFD86C372BF7C982F38FB954AAC154BFDB9724A568BE0CE64CCFA6F07B
            468CF76407FD29AB69048EC53602F5E7CDD4433430C2953F8E91E3692C6FA7B9
            9243139C7334B5576D7AE03A66A5DDFEF70C440B363AE8C14F8ED009BB8BD4E5
            AB4A75BA8E951EB93683EE6866212BF2F0EA259B785ABAC94EED26EF572E5FE6
            D0D6CE53AD6C3D238644B6322F331A276310F488554B17E8D28BADD4E3D664EA
            DEDE442969EC1CC13E263B767EA14C8DDBEDA723C7DCFE9AE3C96BD74810D5B7
            5AB72D339B2FB7B8DD8E68BBA3707A3D3A9C15E5A5368962FEA0D0704B6E368F
            2774BACCAD1CD7783951BB1FEDF6D645B29CD94B10DE7BD6E91C6568D54A4E67
            0A3C569C39414A4BA9F9A597AEFC65CF9E163E21E0E8EAABAFA69933672A81B9
            0AB84088174A4A4AA8947D07FFF6783C4AB64A6266D5643229DFE32BA95EB162
            C50AEAD4A91395310207C006B7B1C9F4EB8D16CBB78D787E43A6D1C878E031EC
            F778EAAE17C5ABB74852B3834E67DD12494A974451080863D018F9045DA02E2C
            407F90E9FF3489574812696F75DC156A435379277D28D999C713A479D9418DCC
            65620E04DDC8621A3565AC6C54CDACC7BDCCE6146852BB75D34D2C38AF471949
            102809924B73D697529F4F8F90CD85125BA88BE1A843C3549A7D7F0DB258783A
            98EFA1B91BCB68F29A42DA79DC7E1AA3CCD325E75B69F4E06AD4A11D135C45FD
            FBCF6BE268CAB4327A74D8C1C0A75BB76EADA4F3915CD1624076F6F3C35CAE97
            6349A8E898ACA0F8EC66C739A2D7E7EC26BA608FD77BFE618EAB7D44146BEDF3
            7ACFDD2B8AE7E7399D3582E76D88C5F2CCFF5AB67C3D69E1C298EFB0525CAC87
            AFB966FCFB5BB60CD0BE0D728C1B378E76EDDA45AB57AFA63D7BF628A959082C
            6A1B2086165DBA74A12FBEF8C2BFF959E5E0A5975EA2E1C38787B9734E296C2A
            832886DF5956212CB453D0F572FE92C3A5BC91469255291286DB7D0777A463C2
            FF1623C72C660514D74DF6B921A9A9A9E4628E9F93290C1CB406A7A3C95C32E5
            F88F6764DFFE5870D304C9BFA3887FBE86DC9C4D63BA66E20DDA9B27D188C5F9
            34735D91B2B102E72FF25D7FFDF504A7524D5E304791BD2BD16D97A451436621
            66FC5642878A616940DFC8992AA4E0A1C8B4F2E23B9E172D41346670363DD3F7
            64A1D2E9616EDBED4769DD1F36E51A91C144E6F1BCF3CEA33163C6D073CF3DA7
            1E98BE4C4B6B7E9D28AE75853937C60B464F66E7D9A5D7D75F26CBED977B3C1D
            B6B85CCD0A5DAE2CF29E7AED90233373A7705E2866C89C85E74B5676E9D2F48A
            B973F7C42A439512A47F77EDB58DDB6FDFFE0B0BB04CA7730808E1F2E5CBE9C6
            1B6F0CF9F713274ED0CB2C386BDCB831DD72CB2D54B366CD988E5B5858A8240C
            F6EFDF1FF5B3184CB885175E78215D7CF1C574EEB9E72AB51AB88CB83E58BD1D
            3B76D0B7DF7ECB34E012B2DBCB7CCE0BFBDF258C2413642B59FD7172794F02ED
            211C7D2838E85D663938C5B5F3FDB977EFDE0A81A1401E7CF0418584888F6EE7
            8C34841DCF43D8388DC53A828DB67B3D4C1C39667938C28E8A1B079F4375B374
            34754D098D5C7A82097AF9CEA5962D5BD2BC79F3C8C1FCF62953A6D0C71F7F4C
            BB77ED0E04E6E1909D9D4DE79F7F3E356CD850190BA4EA91893430B7064A0D29
            F65F7FFD95162C58409B376F56679060EB268FAA498FDC675212029BB7487479
            A7BD2CC69094F3DD7EFBEDF4F9E79F2B9F661EAEE22DFCFEFBEF0A41666766DE
            D4D2E55A198A20E85A10D9B9571B8DD7CF703A1F595156D6A1D4E94C8D369F20
            F4430F3D44F7DD779FA228972C59A2BC3FA263C701CF2F5C382156D9AC943A48
            31BBD9B1F9F9835F292C1C178ACDD18094F0FCF9F3C35A8F418306D16BAFBDA6
            FC5EBD7A75C5DAF4EDDB972EBDF4D2A8C77EF6D967E995575E09F9374C3ACC7E
            D7AE5DE9BAEBAEA3BA75EB92D1688C7ACC0D1BD6D3934F3E45AB56AD52FC5F88
            4057DE4243987EF0907C52FE38343572F4B520D270C9C62CC249B7EA7FFFFB1F
            8D1C393270CFA817BDFFFEFB8A154961C2368359915C9957E295415289923CF2
            F9F11CF5BE3C8306DF9C460317E4D1B29DB02C92721CD91FC0DF7DF7DDF4C61B
            6F50464646E09AE7CE9D1B367182022EC6A07DFBF674C92597B0003C7A100BE2
            E17A711F501E204992554F3F7C569B9A5DADA3ADEBBDD4B4FD1E46105F9E19CA
            ED871F7E508AC2C0881123948C23303C2BEB89FE1ECF24AD9367802261166395
            D57AFDDB0EC7E095C5C5ED648FE7947569982F149BD3D3D39597E0EF0784C5C0
            FBF7DE7BAFA2209F79E619E5FDDE9D3A4D9BB560C103B1CA66A51024FFCA2B49
            3E768C3E3618EEF9D0E1E8CF7CFA06CC1D351B38CE65144557892C23D83584FA
            3E2AE86BD6AC51347D28C00A346AD4880E1F3E7CCAF7EEBFFF7E7AE1851714D2
            84C3CA952BE9E69B6FA6E0FB6CD1A2058D1D3B56D164A703C4523D98C07DBB74
            6960DFAAD7B814BA561294F80196C5C44EB94D90A9BF5C4245921458BA3A68D0
            4046DA57CB1D0FC5CE66CD9A513173076045867249D45336D1937C29FDE07504
            D2B3F0F8AEA997427F1C29A322075C437FF58DE1E28617D3A8D1A31485130C68
            7E281435050EC06AC2D581B281309D0E5083EAD5AB27B3A82EE5EEAEBD2C853E
            9A5883962C2BA3FEC30F2B6E99AA156029AFBDD6572AFBEEBBEF14E5A4CC4572
            F2D75FE8F51D3C4CB9225B0821DFA0D7377A5314877E6DB3F5903C9E4057062C
            3AC609EEE3954CEEE0B2C1EA59AD5645E18502BC9356AD5A29BF77EEDA75EEFC
            2FBE8839C55A69AD26D2A14364648CB7B1282C4F10AA970A428A99E3EC56BBDD
            7150AFCF7DD6E59AB4B9A4E4AAE0EF3FFDF4D3F4FAEBAF873D3E52C6BD7AF50A
            FB77B8433366CC50062D140EB1EB02C1E087AA80D97DE79D7714013913204B76
            CD35D7D08103BE4D062E150C34494E225EE694801D95EF7E5C196DF59E741E7A
            F6ECA9B83B8270EA225D08F6427F00D981B96DF77266BA9791CB1EA5970DC2D1
            BF7F7FC5D2428B86438F1E3D026E0E3E376BD62CBAF5D65BCF680C00C49A4386
            0CF1D750784AB5F254E6907D31999201F3C9D837DF7CA3745500478E1C51E605
            AD442C8671BF9591714767515CB84BA76BF081D7FBC4DC92927B1D1E4FA09076
            D96597299611560EEE6F45B06CD9326AD3A68DF2FB431D3B4E7C6FE1C2FEB17E
            B7529B15D56E5E6801B520066D6866FFFED16ABDBC6B7EFE6A8FC713F06160DA
            1140666565853D3E3251D05291002B00ED144AE86C369BE236A0970BB8EBAEBB
            E8C30F3F54FAC32A033816E207A5AF96DDF4583E99DA483A45A7BFCA82EBCF58
            50CE33D7076965B819DF7FFF7D39D7470B58B4A1FEC78B35E5F4D49037D0C7E8
            DA8D3047D08CA3478FA62BAEB822EAB50E183080264C98A068E1CF3EFBAC52C8
            01C0DD8245C65CFAD6AF036A39F4A405818B75C30D37F8FE2AFB9208F01E0046
            12577D9D6ED70149AA6777BB03C468DAB4A93226908358DCDF60204984580485
            6B6042E7CE0F3D357FFE07B17EBFD209120A204C9ED99C717D49C9CE228723C0
            0668D23BEFBC33ECB1FFFAEB2FC5F5F2F9B8E1317EFC7865F243010481958196
            874B06CB8194726501E96A58116468947A0BD3FCA358FCB041F6D04B32E20E5F
            610E4209531F4990B5D6324949777354AA7151B440A2E2F9E79FA73E7DFA28A9
            D348F8FBEFBFE9CB2FBF54C609D73B7DFAF44A23870A04ED9D3B77567E3FB95C
            EBE475E31A11944349A8C0DC7FFAE9A7218F0777095669F0E0C18A858C1570E9
            FEFCF34F8510E8D3838BAD7A0FCCA329F9B16BD7A6975765162B1682C09199C3
            F35DFA1615CD65E7530A1D1D3A7450063552DD038139DC864878E28927948034
            D87AE0BE506781CF0DA1ECD7AF9F32E0955567D102359F7BEEB9C7577D67AF54
            8EB918CC6AB835AB20A1B99F7AEAA988C7810B0217228030EB9E2058B01A482A
            44038AB6C8FC611CE0864E9D3A356CBC7726C05823BED0F6C3698174363AB1D1
            D5AD42EBF26901F70F9659255C3420950D05854CD5521613FEF1C71F2C262A5F
            D731E8F58ED13ADD230FB76E3D3399C95DAC883B4150F6771A8DA65B1D8E35DB
            4B4B9BA983855610A411230D3834F3BA75EB42FE1D6E0A52A420482860B0700C
            682EB8131F7DF45185EF0D6DF6A8DB60C270CDE1000B0757009A4BC96A292BFD
            48C90123286FDBB6ADE22646D3F428A0A99A5DED89D29204397DD410C2DD7328
            2095FCC9279F281A1942046B5A11C0E2805CB8768C4324EB8B5E38B4F984426E
            6EAED206B46DDB36655ED0E900170BAEB116B847D4C3D4982112906686D545DC
            B675EB560A27CB3966F3BE57ACD647DB97952D915BB7A6CC7F1341603DA61A0C
            F70ECACF9FAE6A534CF290281D993FFFFCB33280C105454C10D295C8BE842318
            0416695B985608367E9F346952CCF7F4CB2FBF2869489013FE358E811A09FC67
            6878644F822D11D29DD0EAC18050E15E2EB8E082A8E7851B841476285C74D145
            F4DE7BEF29F7122BE0A2C26A20E306FF1D751CC47DB100C478EBADB714770C89
            0E1004E95F64C240780870703D0AF52A04DEC8980503D78DB438026D28011C03
            F516EDBA1E585FDC23DCC64880DBF4E69B6F2A4AD0D75D171ACCAB10BBA5A44C
            1BA4D38DACEF761F70B07B32B1EBFED71044D9F943AF37B7753A7FDD5D56D608
            EF61C2305096281B28202B8316761548E5C1E4A25E102E63A5225053F0A363C7
            8E4A2D04421E2E15A802AE107CFB722D2AE5075D29C2C177D606DB3FFDF49342
            682928E3148B6BA502C70C159375EBD64D190B2C30AB08B4A4455202D93EA4BC
            23A5C50110EBD1471F5552B1E180F9401D0701B016505EA8B904037508B8CC08
            E6311710F2602509E27CF5D55761EB61B82ED44EE01178A3D5DB384E7E2E3DFD
            9941B23CC1C3E6042B4EE47F1B41105ABDAFB11E102EB8116AFE3B1CA0559079
            42B107192A14B13078B10808DC2E544E8301BF1B41B256A8556186358026429C
            F2C107D1131C7003A08D6BD5AA55EE9AA13D8F61F30A3FE022A2272CD6ECCBC9
            8C980FF81E0402816AA80C5D24409BE39E030D9B7E8068C12E1AC641B588505E
            88A710D847C3638F3D768A650E1537E2D85020A8CA23950D57ECA69B6E3AC5D2
            A0581C2EEE801584E29B1D63A361BAD99CB72A25E5826A0E47A1BABEE45F4510
            B4081CB25AAB772829F9E9405999D2B5A86D3788040C1CDC9CCB2FBFBC9C1046
            83B63AAB055C036434B41924B5AF0882874C172AAE98A05800ED099F575B5C03
            9991A1C17260E5FE997023A50B5F3B566081198A760072FDEFBEFB6EA0C05551
            4070838980FA0FDA4EB45614E3A02617D04673C71D7728C5D958000B0077590B
            6426914AD70284430C887A175C648C392C94162011B25CE11208982B8C31C677
            CE9C398A1581450907ABD158BC3C25E592062ED701F7BF85201C365F406319BB
            D9FD0643F5471D8E993FD96C4AB40581811689E61E9D0EE02F436B695D321570
            E5D093844C8E76B0F1C2A420C680502CA8C0A081B4083653525202EF61F2E09F
            C3B2001074A4942B0295207053E09A55443968016B78D55557697AA548F1F911
            FC6A5D5BAD05853B050556CCE63356A03F0E6E9C16C10441D60A2E172CC0EEDD
            BB152B80186EC3860DA71C0FE4C5DF6301E24BDC0F1441A86301BD525327BFC5
            F37D45C9B75BD93F4210361B54D2B429B90E1F46BCA13F2808F596735CDBA965
            65FDF697969EA77E0CA6154168650319160475A18A899878C422C19915D5A5C0
            4FFCADA2192EB87D7045B459296D808AE015E9CE704D9570C770DD6808D40256
            0E5A11AEDE9974350707FB202EAAC9DA1E2BAD9280E606814ED908230A103305
            7739A0D63270E0C0C0BF711F483020A88647306CD8B0B0091390098AAA224A14
            0A0E0A10C73F25C5CCF3F29B191977DCEDF1CC76B0B9964A4BC9C4EE33EB9B6F
            623E7E5482D85E7D953C48B5B220CFE0DF05719F4E576B3B51A34382909B5756
            56FDD0EAD5350E1517D7DE2F8AE7EC431F96DB5DAEB203938AA0AC2219985800
            AD846C0ADCB150C044BDFA6AF99E27AD4B010D8880BC22C0BD404BA265440B5C
            03EA00081E315948328403FAC790C10976452A03B83F584B35C00629100781BC
            2AB4E440CB07E201D5358C157085A0248237E20855FC53EF151A7FD3A64D118F
            8B0402E248B865D112395AA84BAE11AFC165569163B1EC5F62345E91DBA8D171
            139307811DDF5081FEBBA804C9679ADFB9702199998BF487D97CE11B1ECF73DF
            9795DD5A421453771B2601417345053116844BAD02689D4742409BB7D70A068A
            7208089193AF08601550F00AEE7952C906C141FB44B8C9557B90105FA05056D9
            407D09D934B494430980CC7021B550E71C6446866C61051610A9802540164B0B
            B86748AEA8BD696702C473B0EEF03C624D4D036A5F98168F27258D7CB5438717
            CC61AAF69110952027D022FDD557B43829A94DFFB2B299850E47F5A807651303
            738989425606A9C5CAC6DB6FBFAD343A8A21163BA16E01210D2E8AA9AE15DC20
            04CFB1646A82010D87005DDB3F069F1F09001007E63E5C2D03401201C9046853
            64E72A02C414705722F59121D980742EA006C75AA8F38D3982A58B35051D8C50
            017AA496FAD30514113C0F2833C85134B2C0750549B55DCBD93ADD81353D7B36
            6E306B56115510D15D2C76C31B962C39AFB328AE2E743A03E48066C6C52350C5
            4F647690C6835F8D0B44114FEDFDAF4C4003C34589948E8589C667B4D00A0662
            16B45C9C0ED0F3053F5B0BB50F09F5116482C2A5645199473C807BA82841403C
            646E6011C21104957CF8EF7031E05AA1D0890AB616AA92804B85584ADBE51C2B
            30E7B05420ABF6B8C8B82173172F40F1A9697F342F86DB520A8A13ED475ACCBC
            FBEEDBEE9A31A3C2A6322A414A991B70F7FCF9D3BE14C5FBF06F6850081F8401
            BFA391EC74BA2C2B0A986F3555A876E68602323FF073C3AD6F402C843A8C1861
            996D384020E0776B8F0D170DC52FC420100EB55B3514B435828A1004E9676477
            E016466A7644D72B3A8201B87BB054C150E71BEE5DA8825E2C40A12FB8D601C5
            805A9524C5618BD21080AB0B658557704203161EE384005E45FF5EBD5E79F3D3
            4F9FADE879A212E48F9E3D6B5EF3F9E75B4A65391D9A11131B6A414EBC006D0B
            AD896C145A97A321948657015220A83F1D2D074580D686E044835AFD865B052D
            1F0ED0EAD0EED0F240AC0441C6E7C9279F5482CF70F116800C14E21FB485E05A
            D1A4186EDD04EE1F4A226A353A0430F720963683871437DC1FB575BDAA006504
            85174C1090142E349606ABE8D4B9F3170BE6CFBFBDA2E7884A901977DCD1F9DE
            CF3E532A68082E91738ED6745719405602C13DAC064812D3CDB08142B51C5999
            50808043CBC59ADA866584A6C26A3FD4281E79E491727F875543BD011B52A0C6
            83346638A81DBF2AA21104EE18FC7C54D731EEE8E78AB4752B6232A4870164D3
            60E942A58A71EFE8A4FEA602A94E740D630EB01107C805775A8B484D8AF10216
            BB212D1E6EAE9198804BAAA243C78E5F2E5AB8B04BACC75711952043BB761D36
            76FE7C255D81F51498B058202B1DADA79FCB877683E6AC489321622198D7702D
            29B12CBE0A0C0CBB76B873686D80E0872A42AA0137DC95482D10B05CC8AA6935
            2CE2165C4FA871832542860E7102AC3604415BE80C06920428BEA1CD1B408A19
            017828A0E681169888BBE66B00AB04C500B71A6E14BA96B540308C7347727B2B
            1B7071515444062E1C509FD1CEC943BD7A4D7CEFD34F635E49A8222A411EEDDE
            FD8D2973E73EA99E142D0230617821588429538346358DAAE24CD75EC0874475
            37566D871801AE45A88644547131B9E19A1083816E61B813481BA25D3C38CE42
            4609EE162C1D043F92F5803687A6D3BA3410785847551BE35EA19DD1410B4154
            112A13150C104A2B2CA8E0AB2D2BC10815C08603AE0D0B8FA028E042854A4BA3
            9DA5224AEC4C8171449741A40D3B30CE8841B415F6F7EFBAAB579F993363DF31
            CE8FA804B9EB9E7BA67F3C73E6BDC1EF8314980898D6E0E77A2807AEA4FDADA0
            A1D0621E6E5D8816481C84EB408D35A50941877021A6402C8386BCE08A382C02
            D656ABED19D1FACB3046704382814C1F2C0BDAF3A1D9B15E420B3456E2BE911D
            0C8750D9235849B851C10009A124A21505912D02E14026C43668AB792CC4769F
            2840621C62B5466702C453480CA09F2C5A473612262831A8352E7F9AB7498359
            B30A623997165109F2448F1EAF4EFAFCF381DAF7905E83890BE522C403A857A0
            1522DAC4A2E6122EFD8B9677B4528702061C9A09D611130E6B016142FB887605
            9C0A956C88C51024AA3B7584026209A4BDB55DBEB102853814E42201B10FB268
            6A560ED78485513867304042A449C365F0B00F187C778C23AADF00B6CC51F7C5
            D202F1172C286A3FF1049628605EA06462D979050A0329F7802BCD14F5F3566B
            FF21EDDA4DB4CC9953E1F34725C8829E3D5B749E336705F977D7575B34023BE3
            85C199C620C1406C81003BD22670A10269001A1A02135C188430C16D80B00777
            FA86730F61B6A1F5D5361704FE91EE33D222A84840600C410FB7C1830AB81BDA
            F5F8F81E6291503BEB231318AA19104288310039D40268B4F98BB76B857A1A2C
            393284D1C6400BC48ADA369F9B5253177E248AB727B56BE7498FA1933C185109
            52DCB327D7E7CB2FA7CCF5781E52570442C322D083194686051A09C2871426F6
            AF02796259415751C0DD0049A09583018180F06AF7035681064010449B1787D6
            4590ADCD82A83194DAAB150CB481C38D537DDBE0401BE3109CE10BE75E4543AC
            0BAD82D77547B2A258B4A4DD6209490D6867B852C18D8C40388220230757271E
            350F24051E7FFC7125DEADE80397A08C4028759E1B98CD5BE62525B5CA292939
            26300F22331E0429623E76E177DF591ED7EB3F5C9C9FDF33DA01619A61CA63B9
            392CB0C780445BE116FC1D103378A713B860C19B22AB40E00E9F14DA116959AC
            D3862BA515666D822194F5C0A0E37BEA9A11B4B1E0B8EA3190C541F64CEB8AA8
            0BBF422D418D04B83A387634CD094222A650DD1C0834C6205CC60BD603648212
            415C870440B042D1B6C08702E20E584458D0CA02941B14154887793C9DFDCAE0
            52617ED446C57493E9D8ECE4E436CD5CAECDD8F7D8142F82A0174B6427775B2C
            86715EEFB0F71C8E412CF809BB721F1912A467A301B5036C06067FB1A21A16EB
            A495BD6C351A2C54E7AE0AA4415140031143B91ED12C073255983C6D5E1D1A1E
            938A1804C284E32366D0B681204E0B5E18140B4235028602326948B1E2FA0034
            48C2BD0AF7E809D4323066882942B5C3689B394301192D28A758DBE2710EF466
            618D0CBC0B55A9610EA04CA03C9060C0ABA29BC16981C2254A10EAF18D3A9DFD
            BDCCCC6E1D9DCE25B025329BFFB812C4C90822984C6460C2B34AAF6F3EDEE379
            6195CDD636781F5EF45E61D2A001A301EDCFA8909FEE03775044430A5605DC11
            086D6503960383AFCDA9C33AC24A22DE410A17428794286206B50683EF41782B
            1AC46A77418F86E01594E88F0341CE44D8C2018A00EE5C28F73612A0D961D1D0
            E18BEF827C70E7305E67BAB32580143C94A5BA79039E2A362E2BABCF434EE774
            75E39F2A2108E76F1BC7525AAFD1C80D1184F1D38E1D7B5ABBEB1FAC412CCB56
            5115460CA0A6E14028A4E62AB22901B426DC0454CE0104CE915A48B4D6269CA5
            08061AF9603982571BA22600AD0541C4D699005A41B484453364B4DD394201E9
            D9588A9920202C70706A38D2BA6E752D8C36C688651C90FD833B16EB525C2DE0
            D6C192C6025826C437D881118136EA5AB076E1AE11E4408CA75A50AC557A3623
            63F060B7FB5597E6495D554A10000BA77698CD0D5A16166E71BBDD813FC0F541
            BB7534A07680560B2D70A315EDB0456F16920548C7427B42CB21C608878AD468
            5058043990460D063245700F50D003C9E1BA217057EB25200DB26270232B8A58
            C750BB879616780F95F748A8C83860DD0A827B6D82231A602590A481DB89C22C
            82E750751940DDF40DB111948EBAC9048AB4A3468D0ABB8F175AFA61C103DBFE
            B073F6AD566DF408AFF77F1EB7BBDC63F6AA9C207856F81F2653C3B68585EBD5
            BD76515C82798FE65EE133703D82F73382BF0A4D8520AD2240CC832C0C801C3F
            D2AE9136798B05883510D36082D57DDBC26C72A8006D18DA07F5447AE44224C0
            37472772A4C2A00AF47185B2D6107AA4BB635DDB1D0E8857908D04612B0AD56D
            868543951FC28F6C279A0BD17E0FD220A90137156DF35A2B080587361B102A5C
            3C888E65941A02F51CF6B9FB52535F1FCBF303655194831FE356E504C1B3C25F
            148497269E38117080E167AA0F298984E0FDAEB4805646DB46459E8E0BCD062B
            82AC0F80DA04D29CB1C441C1809BF70A7393E6F9054FD92591F33DEF43D98639
            C450C16A4003AA2D23380682F78A685C15689F402A3B5A3328AC15EE39DCA669
            B0A688C74E27418002206243243C4E6741990A9C1BD60740660956049DCF5837
            1E1CE463AE703F58C60C0B186EF904DC692822C47D01801C292913C63072C087
            0C9578AE528240504A05C1D2CAE1D8B0CFE1385FFD1C0623DA842048C352CA48
            694F680F68878A001A5FBBAC145A0A1600416570E769305078FCE1C71F69363B
            06363608B44D280F49E5E92A32908D24DA268B8107D468A1DD2512A4409D0431
            D6E92052AA5A0B35C1110D48C7C2BAC2B2465A85887D6C914CC0D25B6CA903F7
            F24C81D67E28AAE0E6467414A88FE38322408C8154B37687182D301F882D5194
            84EB588E02CCEB783035F5B59765793027691F355A1E551BA4B3D70A9DEE869E
            85852B6549526C19D61FC0350855A4D32296B42752951810B861B10282891E2A
            F40C6981C1473325260BA4C1B161A241540801AE79DBD6AD54A85D55C7F99E0C
            5B9D91E361CE42B7C97A3AC608724FD0433401F8D91054B88D08625F79651C0D
            1DFA9C422C3C06008792FC4F952ABFDB7968A70D6E53706C160CB8244870C4DA
            FF8478004A091A1AD569B46BC09D454A1499251003E380346C2C853F25C8673F
            2FAC6F21A38168F37687F2DCC35040964AED5488B46136EE0571246A2B88E960
            C54020B8606854551ED5160C41909FCACE7E71A8DB3D5262DF8FF474DC2A2508
            DCAB511CF7DCF8C2C251EA67D09383CC43A4EEDDE0DDBF753CEFBED86ADD70C8
            EBCDCDB7DBCBA5AF20EC08B82BB2ED3D02BA687D4BE147817C0F1BE4B11B244F
            B77246BA934C5487F11F5E6E311380DE8C20F9413A0A89054C26841A96031389
            CC17473A7AF5B91A8A303D33EAA072789359A0EBAF48A52D3B4BE9F0B1D0AE51
            B84405080D6D0BD71335038CF53F05DF73D49992FCA42E59D83D35EFB28F2981
            C8AB33411464D6501D873B85FB416D04E404311198831070193166C13BB307C3
            2408652F65653DD9C7E59A8AE7CA47A375D55A104682FB44F193AF6CB6804F13
            6A017F30E0BE204E51CEC78EF1626666BF7E5EEFDB874CA69C312ED78B9F1516
            A28F3EF079141B636DCB06507F41E6289A660D156C6352EAF23A6AC1DCA9B6EC
            75AEC42BF186C8E20F8111C7C188F30023C85EC97372D775E571685C48AD9B64
            31D0CE15E7D0B17C275DDEE10061DBB24EAD5269C1BC3A34E2A563F4E2EBC743
            5E098258B8396A9201B10DDADF915E45A08BDFA33D0E229EF05D31477A1D4F9B
            97D421A783A3CB3AEDA7F0CECDA950F7233BFD8B60F16F7A7ABF0192F4769926
            951B09554610C5F960BE6C17495AB1B6A020D0C484941B76ED0E7B81EC1CA859
            A8FE752DB379EFCAA4A446292E975D318C4C3B3ECF71A3A714160E554902A145
            739D76AFDA4800316079D4454311C6974CCC05CAE604AAC1ACC5C54CDB3765AF
            0B659E52D9CB8BA7AA067DC7C088308BF3D09BB2CD3F6827EFCBFF9C03E234CF
            EEAC9D63A45D2B7269DB2E4690CE8794BFD7AF6DA205D37369FAE745347E0A3A
            7B43E7C5B4BB0B22CD8CB520C888C14D82168EB49B79DC807A897C5231009B17
            D72594B12EEB84855255B30E1DA86E361F62B2D330C3E52AF1C6D80C5BA504F1
            0A02D7DEE3F965B3CD16687F45C12678EF252D907D80F550170C3D929E3E768C
            2C0F551F1C0FC78C677EF10B412441CC001F3FD607A9202F8EEDF323DE3023C7
            F37C32B5243D9925DFB93106B016CA594F312FCA46E1EC6D813EE69D344F7233
            97CB4B0E2560E794C73BE0C17308E4D5A269BDDA7AFA935990153FBBA8CDBDEA
            4A3B9ECC4681B00DA6C7135EE3A29F08490AC40A488D2289D0A64D6B16F8AF2D
            B7215AD5C22788C9169EB2328D543DC3489FBC95414E97972EEF78981CAEF8AF
            0751D1A87AF5F54B04E132BEACAC5CAD2312AAD4C51298B6EF268A4BD7141707
            B6684787A85A8B50A1B68C43B3C37550773F34EBF5A54B92929A5D2449BBB55B
            B6694832869164884A12C421B0249108A842FBB8E870A8CFEB691AA5F83A02FC
            B71EA9C6111828F6D2B10929609F2C60177B9CB9151E46929AEC7820C9FFE452
            DA2EF904A5560E23C8F7E7D082651EEAD57F2FF93D778D06567F069EE448AA10
            E2F7F4B474BA8805D43FAFFD8564651C345D0081EF71CAFBFE921FE564E9A966
            B691F20BDDB4FFB05B398EF6D1D0FED50A9AF391E6BAB8C039D418038F9B56C6
            DFA2A332BB48F7744DA7978764518D74360E8CE83223398EB261AB486BD6B969
            CB9F0EFAE937076DFDD3E957143255CBD053ED1A463A51E4A1FD873CFE6BF29F
            4FD65E0769AE8D0B3CEE1AFF361B7524300B5EEAF0D9F52CB3F1E88AE4E446D5
            9DCE13FF3A0B029898D0F791A48FE6171707762080E646714A0BE4BC11BC2263
            3247B350A567B56AEF4FF27A1F7685D85103CF13E119015FE0F9D1530A0A0296
            04C740351785AB504540149E703E9034ECF30CFD63F90467A5FB5800EE92E5E8
            AC08015EF3823079D9718DECF5AA6CA78FC9A11C33354947BB5736A0153FA904
            51273F18025DD9C4429D5AA7527675134D99718CD6FD511AF8AC516F5048E50E
            ECFEA83C229520CCBC5FC68C0681FED7AF1AF5B9239972AA0BE4B47B69C63C07
            0D1E73848A6D5ED2922BA71A3B574B0BA5A5F3F4EB4637ADF9B58CF0E8656256
            950281B68F7C16938E460FCAA6EEDD5369E2A413B489B98B4F3D944DAE329959
            1099AE68C2AE41D0C15F653EA86F70BD2544B7DC758456FE5C42431FAF4E8FDE
            954CB56AB018CECED3A70BCB68F0A8E38C2CEE7224C9CE3252FB9BAD542D93E8
            F7CD22FDF04B297944DF353FD03D839EEB97453A3D4FA327E6D37B9FE4A33845
            13B3327BF676B9E6C45A69AAF22CD61B1CD77F44616160570014E7B4EBA88150
            5925AB4E57FC4D6AEA151789E2EE701B7E8224028B7386EBF52327E5E50DD336
            44C2E5000990DFC75A0634EAA1150455D95872F7692CEE98C6A5504D7F76AAB2
            8098662AE7A077E43245B68DECFAB72E3B87B6EEF2D06D0FFFAD7C262B5DA708
            AC47F48D770DA6F15F7E3687EEED6A26015DED124F8B16B8E97FE38ED31F3B4B
            99E0F3346F4A1DDAF1A7879E197548F90EC8F0F11BB518F1DCF4CEACE32C5816
            68EAD89A74F7BD16C23397E77DE9209DC053A74E2616ECDBA9E71347C8E9F669
            EE0BEA59E8EB19B5A9C1853A926D123B1D472B7FF252EF270FD1B17CF4326909
            42F470AF6C7A774C1ABDF551116DD926D2D43905A45ABCEC2C03EDFABE2EADDB
            E8A549B34AA85E1DA2A60DAD9499C1D1D07127D87793E9B1BE297023E8CB850E
            E5DE3ADF66A225DF3AA9EBA307C8E1F43D98B47EAE95BEFEA8165D78B14052A9
            A4C43AAB7F95A95BDFBDD4E2CA249A3B2D9B167C55CAAC0847D75E66A1F36EFC
            9B8EE439E89AB4B4A55FE8746D658F27A6FD69AA942058EDF0BB4ED7B84371F1
            6FA2281A54C145FA56DD07176E159A07CB15CCD8CD3F9E993972A428BEE08872
            4E952463ACD661130E1D1A19DC358CED27915A46535F2CDBF5FBB2B83CDDC699
            68986426F7E9988E0830B2332C143C3442B2F9953F476BE6D4A1B4349E2E69BB
            9FD252045A3BAF1EBD35AD90DE9E994FE7D533D117936BD12557E9A8709F4C1F
            7E5E4A6BD73B69FAF82C3A7EC24B0D5BFE4D8D2F34D12FCBEAD0C83105F4C21B
            BEE5BAD95926DAFBE33974F8B844E7DDB49BBAB54BA3CFA756A3238C3FB3E6DB
            69C8185F3BFBD37DB2E8F59733A9EB3D47E9CB65C5949966A4591372E886EB0C
            F4E08013CC7A945046BA91EAE45869D56F25945780C05FB5343E12F4BF3F9B26
            8CC8A0CBDA1CA28DDBB56B3F383232176BF7F27AF4D572373DF662F9159E1D6E
            4EA74533B3E9D831996633923E33F228896CFE1EBF3B93DE7E358BEE78E8387D
            B6A8885D939EDE7F259BDAB7B2509F41F9CC3D63D7940A972C8536EF2CA1A533
            72D84F917A3D7E98A68CCDA1AEADADD4E0A6BD9477C289A2A7EB9BCCCCCB9AD8
            ED5BDD31B859554A10C55B653E4F27B77BE5FAD252651735E4E8513443F7252A
            A7E8E3C13E4D5A343099B67C63B15C97EAF516C79214044950FD7D53929E1C6B
            B78FF3B85C11B76F64AE993783E3F2980E4F7688A235F8D9E27A4690497C0A35
            F1F254B1EDAAA3C3C046E557CE438F934A10993E79A32E756A65A6DAD7ECA50B
            EAEB69EDB7B9F4DA841334F4D57C5A3AAB2EDDD4CA405FCE73D2D0B179B463AF
            9D52985B06E137E889EA5EB78F095A124D9F509D2E69B39F5922DF4E2CB5981B
            B673457DA6819D54EFFAFDF4CEC81AD4BB47325DDFF910FDBCDEE69F1D2FA525
            1BE8C04FF5E9CD69369A38239F567D9E4BE75DC0D3B8376D3464DC1175165511
            F0FF54A3195F2110F1C34FF3EBB2005CA29B7B1CA0FC2277E0F302B3525B16D7
            A1ED7BBC8A45D0E2FDD135E8C17BD3A855B7C3B4626D69E03B49668EF6FF944B
            D3BFB0D1C8B76CB4665E2E8BB3789A38A584FA0FD75E934CADAE4DA165736AD1
            2FBFBA95F1687A9591868F2AA29798A2E094B84BA6A76BD67CF179BB7D443465
            ABDC5995F762B1D7C7443DFAD96CB329869CB6D160B07F9C9272CB4D1ECFEA8A
            2429393C8C87C51FAB0C866BE6381C776F14C5AB0A6539CBADD399F492E4B68A
            A2ADAE20FC7999C9B4B605C72D6D20497F1DD7E9B29FB0D9A66F713A4F96E299
            96B9823730B225297E6FE5DA0F64B188FEE62516DB9490C3DFB0356240757AFE
            990CBAF8C60354BF0E739FD884DFF748BE22C83B7FAC470B173B99FB05ED8BF1
            13A84F8F749A323E934A4EC8D4E0C67D745BAB64FA7062356ADBFD307DBBDA67
            257B76CCA4CFDEAB469B3688745987BF99C5A9413D6FB352A3960768D7DEC0EA
            07BAF48224FAFDDBDAF4D48B05F4D9C222DABBAA1E25A50AD4AAC7615AFEB34D
            39A78F16A73ECFDCF7AEEFFD1BAE60823ABB167DBB02EEDA21464C6F20D9B06E
            612E731739BAA6DB7E4D2280A3A9636AD2FDBD93A969EB83B4696759E09A2E6A
            60A54D4B6BD30BAF15D0A41925B46F753D4AAFCE517B16B37CF3BDCD7F5CDF71
            EEE894469F4CCEA1DF7F13E9609E9BD6AEF3D0F80FF2D9F9BCA426199AA4A5AD
            FD4AA7BB9677BBA568D9AC2A27883FDDABEFEEF17CB3D6668BF88C3066059CA3
            33331F7DD0E5FAC8719A0522837F955B19CF0B65826075190C26032388C9E974
            309177E9948C147BB1CFE2A1037374BA8E7D0A0B1706C8CB0670049F4CB74A7A
            5F705EC940C06E67E7788063132F7B94AAFCEDB732F7E7A31AD4B5F7612AB37B
            E8DB2FEAD02DB71FA60347DCB48DF9EFBF6F14E991E78ED181C35EEAC8C830E1
            F9344A4EE6A8A880C50B2DF753BD5C667516D5A15DBB5DF4F2C462661588063E
            9C4E759925E83FB088267E749C7A766084995A9D7E5EE3A497DF2EA23DFB1CD4
            989163C4E034E6AEF07465C77D74F08897362FC9A50BEBEBE8E236FB68FB5FB0
            04B1CE03478FDC9149931951FB3D5DC0DCC3933BA62F9D51871A9E6B62D7BA97
            CA1C2793085DDA64D03CE61EFDF6AB8346BD55443B19712F3ED74AC307A753CD
            6C764DED0FD05FFB5CF4FB57B9D4B491999AB46544DA51AAC9F2112378326D58
            5A87264E2BA6275F827BA9128327952056A3B164796A6AA3739CCE03E2BF8D20
            00828F2D3ADD850F3A9D5FECB1DB1B065C1A0E1566DE5B53AFFFFB06BD7ED9ED
            06C3ACEBBDDE35EE4A104CCE77C1279D0274DB067D06ADF8BB4CA6FA58ABE2F2
            7894256BB5791D4DA754B22A4B4A4F2B79151548E43CC702F565B2532148DD5A
            26DAFD433D1A3CFA187DB7DA437FACCAA599B38AA8CF90E3B47A4E2E5D71BD9E
            BC45321516F3945543F6B50A7BBC64B70BD4E4D6FDB4E7A0933E7DAB3675EF65
            F5CB063B41994CE327C34D627E3DD3A63A16A44F7E99B9347D187B90B376B0D1
            B0EAE9C01E91EE7FEA18B316BE1EB399AFD7A11B9B1BA9112348B10DC1782482
            9C4C4323C58A2CD2B081E9D4FBE163F4C9C282C09F3F7EA31EF5EA64A08B5BEF
            A71D7F39FCDFE495EE82375FAC498F23488765B133E1B61AE8F07E0FF519788C
            16AFF459C3F747D7A64E2CAEB8A8F51E2A28F2942308C7093466500D7AF6E934
            5AB5CAC1BE53AAF4B47DB50C69E432DF05609FE86AD5AE6F61B7AF76FD1B09A2
            08237BE5EBF5A9EB65F9CA3D6EF7795E49126A9A4C077339EEEFFA92B43B4B92
            4A253C7C310E02190E20C83683E1FC3645459BDCA257A96E3EC85BE931C9444E
            92E2C30EF2C5212B049186CA254C2E784551DCDA228936EE705351B1449F4ECC
            A1F3CF31D0E54CAB67571368F4B3D9746D5323592D126DDC2AD1D4B925F4F280
            54AA5B97A79B6E3F482B7F415C62A0BE2CB8BDE4420B0B4E3DB4E8DB625AF10B
            5C24DC844FC8754C50EEE89C416D5B58496071D6CF9BCA68F682123A9A07A1F5
            A56C2F6D68A1648B8E56AFB391EAE78703DCABD4143D8D1F964B375C25508D1A
            028D1C5F48AFBD7F82BC9248AA06EF7B5726BDF37A2DEA71FF21FAFCEB13816F
            033C5348BD3AA6D1AD375B49C708F3DB66A7E2EA1D3AE6087CEE920B2C94CEAC
            DC8FBFDA425F05BB97EEEDD2E9EEEE4954AF96402718AF86BF5E482B7F2EF411
            897914B3D2D3DBB413C565D1DCF67F8C2080C0BE8F029AB60C852988A6A7E205
            988C097AFD93234F9C501AB992D9407FC8A550AEC4294A364EFCF0370173F428
            57469BBDEEA0E223C7B43D47994C20F2980BE5EB5DE228234520934966C2EC7B
            EF837135993548A5FE4FE5D1C499F9543E80D61616D5F7B4054635C8E5481B84
            431BFBA658F2D53B94D6E2F03383994C4ED2D33D5D93C9C802EB252B9CB475B7
            5D735EDF3950406C7C610AFDB1D346A5652703F89397187CADE5CF52BE481A0C
            5EF33EA7140ABD813607DFCB60323997A7A5353ADF6EFFEB5FE962FD1B8161F2
            E87486B64EE7DAED65654D21B0B770267A5936935B8EA55E7EFA800754086BC5
            02F52352709EEEE464ABFFD706C7104AFCD6AD6D2ACD9D99434B173BA8FD03FB
            991B2587FC7E68818BDFBDFD0BE17DCC6C1EF3822C3F2FC6F00807D9E3510892
            751A8F9AFB4F110479E0A57AFDCDBD0B0B97C95E2F0F97E32D3E89AEF4EAE2EE
            E6A1A0FC29EFA1D7A4B2881A3A1232520DF4FBA2BA642BE3E9DAEE7BC956EABB
            EA2C8BE548078BE5F3749E2F08395B88CBCC6632B3B93A759EB456A6B211CF63
            07DFA2CCF18220A70842E1A54EE7BAE692F4139BE3D8BA794591F48D1A91F534
            36D1F86F1184F9A50F78BD33179694288F8F6DCC1B681231DF5CE2E2E75AF97F
            C2CC3FC2D968BB92C5F29DCD6C34969EAFD76FD379BD1E39C2F78F0B42CE01BB
            A30131CB935BD740258C6345F94CEB19F465EDADD639034DA69117399D7B9536
            F150EE041314BE7A754A452773256CA593C049FC6708825AC41E41C86D6DB36D
            2AF578D220794359ECD14D466A57F5CDE300CE97D1FB89F7D200D9A674062331
            51CB68DCF3417AFAED4D3C9E0D8AA60B21D8EA3B36833E790DAF6BF1B3576C71
            446FCA31BA5DCE46B277F38D82B0AC91C7B3031AD013C9CFF613A4FAAFBF121F
            C306CF09C48EFF0C41D023F68A5E3F686C7EFE2B301739BCA074EDA6CB9CBF6B
            373E3604720B576E2895D20AD9E95B37C1DE1B979EFE405FAF775A692CC74041
            146B2E980594B1E321F6AF62422FB2F73DB174AC26081237FC2708829C8743A7
            33B571387EFBD36E6F04A9BD9BB7D05392891C9ABA493CA06307DFC3C9F4805C
            1C582352C364DCB7DC6A6D92218A45157F0AE069204190B8E13F41105CD922BD
            BEED7D270A1623403673027DC0252B4B672BB36BF754704A70FE16EFA08FBC27
            D7513F969E3EEA65591E164B9F50A5204190B8E13F411003734DEEF67A672F29
            29E9017371236FA271B295BC52E5F75DA9805582E52AE299F560EED5617F114D
            5910969ADAF422B7FBCF98DCA3CA40822071C3594F1054F3770A42FD5B4A4A36
            DA45315979F8269F4AD7490255467B4B28A89BA020ADFC25E7A69765580F5F95
            BE7D6AEA67D379FE0E77153D2F5C41822071C3594F1004E723993B33A1B85879
            5EC0C5BC9EA6CA290A7128CE9573C4170F73A5B45176FB6A1182207D9291D1B2
            B5DBBDD2559583902048DC7056134409CEF57A04E7EBFE2C2B5376393E97D751
            1332B0D8432ED7B050A983E6FF6963C1F9F792CB17E7B071BC343575ED5706C3
            F582CB25C6BAA140A5204190B8E1AC2608FAC0F28DC6F41B6CB61D054E67EC8F
            A9AA2C683B3C9066CECCBCBF8FC733BDE2BBF29E211204891BA21224FFB6DBC8
            B9702171511EBDFB4F41C7828EA7BCDE499F8962DF333FDAE9E33C9D6EE322A3
            B145AADB1DF37E4D950610243B9BB2376D22DEFF10CE042A075109523A712279
            F0D0CA089B1FFF9350DC2C168ACC148407B6399D975255A556FDC0D671D946E3
            E1BB0D860FEA399D07AA2C73A505B6584A49A194E1C389ABE0832F13888CA804
            492081FFCF481024810422204190041288800441124820021204492081084810
            2481042220419004128880FF03707ABD1B9BB479A30000000049454E44AE4260
            82}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 167.417440000000000000
          Top = 188.315090000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
      end
    end
  end
  object master: TfrxDBDataset
    UserName = 'MASTER'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'FECHA_FAC=FECHA_FAC'
      'TIPO=TIPO'
      'COD_CLIENT=COD_CLIENT'
      'COD_EMP=COD_EMP'
      'NO_FACT1=NO_FACT1'
      'MONTO=MONTO'
      'POGXITBS=POGXITBS'
      'HORA=HORA'
      'TIPOPAGO=TIPOPAGO'
      'MONTOPAGO=MONTOPAGO'
      'CONDICION=CONDICION'
      'RENTA=RENTA'
      'CODIGO=CODIGO'
      'TIPOITBS=TIPOITBS'
      'VENDEDOR=VENDEDOR'
      'SITUACION=SITUACION'
      'NCF=NCF'
      'RNC_CLIENTE=RNC_CLIENTE'
      'NCF1=NCF1'
      'NOM_CLIENTE=NOM_CLIENTE'
      'DESCUENTO=DESCUENTO'
      'ROTULO=ROTULO'
      'NO_AUTORIZA_NCF=NO_AUTORIZA_NCF'
      'MONTOFINANCIADO=MONTOFINANCIADO'
      'CUOTAS=CUOTAS'
      'INTERES=INTERES'
      'PAGADO=PAGADO'
      'LEYPROPINA=LEYPROPINA'
      'COMPROBANTE=COMPROBANTE'
      'TERMINAL=TERMINAL'
      'EFECTIVO=EFECTIVO'
      'DEVOLUCION1=DEVOLUCION1'
      'RESTANTE=RESTANTE'
      'ABONO=ABONO'
      'CHEK=CHEK'
      'NO_RECIBO=NO_RECIBO'
      'PAGADOCXC=PAGADOCXC'
      'MESES=MESES'
      'DIAS=DIAS'
      'PENDIENTE=PENDIENTE'
      'ESTADOPAGO=ESTADOPAGO'
      'DEVOLUCION=DEVOLUCION'
      'CONDICION_PAGO=CONDICION_PAGO'
      'COMBO=COMBO'
      'COBRADO=COBRADO'
      'QUEES=QUEES'
      'USUARIOID=USUARIOID'
      'CLIENTEID=CLIENTEID'
      'CLIENTENOMBRE=CLIENTENOMBRE'
      'NOMBRES_EMP=NOMBRES_EMP'
      'TIENDAID=TIENDAID'
      'TCREDITO=TCREDITO'
      'CONDICIONVENTA=CONDICIONVENTA'
      'PINREFERIDO=PINREFERIDO'
      'NC=NC'
      'CODVEN=CODVEN'
      'CAJEROID=CAJEROID'
      'IDDR=IDDR'
      'NOMBREDELDR=NOMBREDELDR'
      'CAJA=CAJA'
      'NCF_NOMBRE=NCF_NOMBRE'
      'BONOS=BONOS'
      'NUMERO_FACTURA=NUMERO_FACTURA'
      'OBSERVACIONES=OBSERVACIONES'
      'IDRUTA=IDRUTA'
      'DIRECCION=DIRECCION'
      'CAJAID=CAJAID'
      'VEFECTIVA=VEFECTIVA'
      'PAGOXEFECTIVO=PAGOXEFECTIVO'
      'PAGOXCHEQUE=PAGOXCHEQUE'
      'PAGOXTARJETA=PAGOXTARJETA'
      'PAGOXBONO=PAGOXBONO'
      'DIR=DIR'
      'FECHAVENCIMIENTO=FECHAVENCIMIENTO'
      'CAJERO=CAJERO'
      'NOMBRECLIENTE_PRN=NOMBRECLIENTE_PRN'
      'FECHA_FINAL=FECHA_FINAL'
      'IDTECNICO=IDTECNICO'
      'CAJ=CAJ'
      'TECNICO=TECNICO'
      'IDESTACION=IDESTACION')
    DataSet = datos.FbqMaster_Fact
    BCDToCurrency = False
    Left = 424
    Top = 156
  end
  object detalle: TfrxDBDataset
    UserName = 'DETALLE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'ARTICULO=ARTICULO'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'NO_FACT1=NO_FACT1'
      'MASTERID=MASTERID'
      'IMPUESTO=IMPUESTO'
      'ITBS=ITBS'
      'ITBIS2=ITBIS2'
      'COD_ART=COD_ART'
      'UNID=UNID'
      'COMBO=COMBO'
      'ARTICULOID=ARTICULOID'
      'TOTAL=TOTAL'
      'ANCHO=ANCHO'
      'ALTO=ALTO'
      'UNIDADID=UNIDADID'
      'ITBS_ART=ITBS_ART'
      'UNIDAD=UNIDAD'
      'EX=EX'
      'IDALMACEN=IDALMACEN'
      'BARRA=BARRA'
      'ITBIS=ITBIS'
      'IDTECNICO=IDTECNICO'
      'DESC=DESC'
      'TITULOPRN=TITULOPRN'
      'OP=OP'
      'LINEA=LINEA'
      'EXIST1=EXIST1'
      'LEY=LEY'
      'ADICIONAL=ADICIONAL'
      'FRACCION=FRACCION'
      'TAZA_COMPRA=TAZA_COMPRA'
      'ITB3=ITB3')
    DataSet = datos.Zdetalle
    BCDToCurrency = False
    Left = 360
    Top = 224
  end
  object config: TfrxDBDataset
    UserName = 'CONF'
    CloseDataSource = False
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 248
  end
  object UpCredito: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 528
    Top = 160
  end
  object MaxRecibo: TZQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(no_recibo1) numero  from recibo_pago')
    Params = <>
    Left = 304
    Top = 200
    object MaxReciboNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ReadOnly = True
    end
  end
  object Recibo3: TfrxReport
    Version = '6.4.13'
    DataSet = FrmTouch.detalle
    DataSetName = 'detalle1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43835.601015034720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 344
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 88.900000000000000000
      PaperHeight = 190.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 29.795300000000000000
        Top = 366.614410000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 181.700990000000000000
          Top = 10.897650000000000000
          Width = 88.667780000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 43.195300000000000000
          Width = 260.182870000000000000
          Height = 15.118120000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 6.579530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 101.463080000000000000
          Top = 10.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."PRECIO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 343.937230000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 203.379530000000000000
        Top = 457.323130000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 13.379530000000000000
          Top = 3.779530000000020000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 184.392270000000000000
          Top = 5.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 184.392270000000000000
          Top = 23.795300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 185.392270000000000000
          Top = 59.272480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 78.426840000000000000
          Top = 7.000000000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 80.026840000000000000
          Top = 23.636240000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 77.426840000000000000
          Top = 60.933890000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 6.829870000000000000
          Top = 4.959060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 98.974830000000000000
          Top = 3.959060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 162.483550000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1TIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 5.006370000000000000
          Top = 25.536920000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."TIPO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 6.677180000000000000
          Top = 122.272480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       ')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 67.327520000000000000
          Top = 124.193630000000000000
          Width = 185.877180000000000000
          Height = 19.200000000000000000
          DataField = 'CAJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."CAJ"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 78.795300000000000000
          Top = 40.620470000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 192.995300000000000000
          Top = 39.620470000000000000
          Width = 65.990600000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."POGXITBS"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 19.820470000000000000
          Top = 163.585900000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GRACIAS POR PREFERIRNOS !!!')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 3.297650000000000000
          Top = 138.727520000000000000
          Width = 259.200000000000000000
          Height = 17.461410000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 76.067780000000000000
          Top = 83.149660000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 72.288250000000000000
          Top = 102.047310000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 185.674150000000000000
          Top = 83.149660000000000000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."EFECTIVO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 185.674150000000000000
          Top = 102.047310000000000000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DEVOLUCION"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 266.045640000000000000
        Top = 18.897650000000000000
        Width = 336.000217000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 77.447310000000000000
          Top = 205.852010000000000000
          Width = 85.266110000000000000
          Height = 16.856710000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 9.215770000000000000
          Top = 206.852010000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 205.105690000000000000
          Top = 205.631540000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 9.656710000000000000
          Top = 226.985900000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   ')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 79.990600000000000000
          Top = 225.985900000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 246.412740000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 6.477180000000000000
          Top = 247.633210000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 58.744960000000000000
          Top = 247.633210000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 217.219110000000000000
          Top = 246.633210000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 265.020470000000000000
          Width = 321.260050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 205.782870000000000000
          Top = 190.422140000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 80.944960000000000000
          Top = 189.102350000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 9.185900000000000000
          Top = 189.522820000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC   ')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 151.033210000000000000
          Top = 246.869450000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRECIO')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 0.261410000000000000
          Top = 153.004700000000000000
          Width = 328.138590000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = -9.036240000000000000
          Top = 151.784230000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 167.921362360000000000
          Top = 205.858380000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object CONFDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 15.600000000000000000
          Top = 100.636240000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object CONFTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 95.411070000000000000
          Top = 121.872480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 42.481880000000000000
          Width = 265.322820000000000000
          Height = 103.861410000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000C800
            000072080600000016099E8D000000097048597300000B1300000B1301009A9C
            18000043A84944415478DAED5D077C13E5FFFEDE5D76BA5B685905C189888013
            172A4390214386E216072AA80808FE7000B254444514540401078820A0822088
            028A8A2CD928C81E2D5D69332F77FFF7B9E4C23564159A2AFEF3F8892D6972E3
            7DBFCF77BFEF71B22C53020924101A5C82200924101E09822490400424089240
            0211902048020944408220092410010982249040042408924002119020480209
            4440822009241001FF2F0822979692545242C4F3FFF4A554E24DC924701C3905
            4157E4F56654E93C721C97A2D3155B45D129B1F3CAEC3AAA0492447C4A0A7149
            495577ABFF1F08523A6102D9468F26CE6CFEA72FA552801933B2D7128E6B3DD6
            E3197DD0E5AA274B12135BAE2A2653394996C974F4718361DC5DB23C53AC2219
            921D0E4A7EEE394A7AFAE92A399FEF66FF1F10C436660C950C1B469CC5F24F5F
            4AA54060AF3CBD3EF3E6D2D28D791E4FED7FEA3AF43CEFF8362DAD5923B77B87
            A70ACE27DBED94F2F2CB943C746895DDE3FF0F828C1D4B252FBCF09F2108EE62
            32CFF7195A58F83E473CB328EA1C56C55CF2C4338F0AAE15B19F1F646575EAE2
            762F7256C19915828C1841C9438654C1D97C4810E42C03BC7DAF4EA7EBE072AD
            DA545A7A35DEE9D12493EA671998D4C6F9DC8C199B0F3BE89BED454A0C9464D0
            172E4B4969728EC7B35FAC827B4F10244EF82F1104B1C70A41B8BE5771C9F792
            D72BD44937D01F83CFA1D454016A3D8E6766D41438BA67EA519AB9EE84F24EC7
            B4D44F3EE4B8DE6E29CECCF423419038E13F45109EA73E92F4D197C525F7E0DF
            435A56A3319DB348764B14AF641224841364DA7144A22B26ECA352178B389835
            F92023A353178FA74ADC2BE53A1204890FFE2B04D1B1D75E9DAE4E6B9B6DB3CD
            ED494B32F0F4EB80FA74510D1DC9A28CEC2BC5230E5108C2CE35F4CB7C1AFBDD
            71664B3892059E3E4F4BBBA1A5C7B3CA514569DE0441E284FF0A412C4C10C708
            C2E0574E9C180797A74BE3349AF7600E0B4A7C617ADCC494272A2893A8D96BFB
            685FA1CB4710F67697CC8C8FDE1584FB4D2E972CC581244804B8E924E5130489
            13FE0B044189D32E08E6D60EC7BA3D0E47438EE3E99B8772A96D23339118E739
            D4134D5B534A0F7C7688CA5928E6EE5D9B92F2ED754949AB789DCEC302F74A63
            093B907CA1DDBEB195D7BB94BC5EE5AC0982C409FF058298D86BBEA0EBD0A7B0
            70113248CD6A5BE8A7A7EA90114591384DA162953899F18FA71B271EA4357B4B
            437C221EF0F34C27D0B3E9E9CF0E74BB5F512C498220F1C1D94E10888BC0B4F5
            9DA2B860B9ADAC13047362D79AF4C44DA9441E2FC5CBB95208A2E368D52E27DD
            FCCE7EF24AFEB6124566D4573CEE96235F3425532DAB65EF0F56EBC556A7D3E1
            753812048907CE768218D86BB34E77D1AD45C5EB5C5EAFA5468A89D60FAC4339
            29A8D8C1F98ACF1CAA04B977C6319AB1AE90E0D6415EDAB548A5AB2E3390E4A9
            FCF372CC221E394E34757601F3ACBC749EC5BC65A9D97CB949145DDE8405890F
            CE76829899F518CAF363A79C287816FF7EF2866C7AA37B3AB31E719E3B9EA33D
            F95E169CEFA162274A811C25990DF4FB57B9747E6326C995DD5F224B44161D4D
            185F44035E3E8A37A85F7ADA88E1B2FCA2034D910982C40767334104363F0546
            63DACD65659B8EDAEDB9269D9E7E7EB22E35C9D52BD9ABB8C2C0D3A8AF0B68D8
            E2A381B7BADC924EF3DECF66E48843719019C4523B4797773A403BF738C9A8D7
            3916A7A7356BE474EEF030D72E419038E16C2608FA8FA7198DF73C9397F7117C
            FF6E9766D0DC476A32D72A4CEC81E94456EB4CE7951DDAE662C23A7E1FEDCA73
            2A07E699907EF5612EB56B652272572E411477CEC4D1EC790EEAD5EF80F2DE0D
            C9D6C573F4865BA544162BBE385B09C2616E0C06AE9328AE5C5754740342D736
            176652B35C3389A7580FD9579F6082DDAFB985EA64F267D69BA5E769CE6FA5D4
            73C6C140C0DCF4622BFD34BF169984F8D45D2481A75BEE3A42DFAD2E46FA8C26
            A6A5F5EC2D49731CEA1D2608121FC49B2082FF55D9406A7791D97CD35DF9F94B
            2551D4F98264FC25BCE437C830D186417529D9C49D51EC2EB1F8A3ED3B0769D9
            2E1BA91DC3135FAA494F3C9442E4F0563E3B0C44BFFDEEA5EBBAEF23B747A41C
            B379FF0AABB57186DB5DECF5172113048913E2491064980EEA74D50FBB5CEABA
            8C331E5088032F08B44DA7BBE4358763F861BBBD9EFABE1C90CCD0A779A5534D
            1AD43AEDB463041081639AFCD7BF5D74DD5B7BC9E3B754D95926DAF84D1DCA61
            E1078971482B9B78EA3B289F267F7242B98AFBD3D2268C271AE0D0C867822071
            42BC0882CEDAAF4DA6B6838A8BDF3FEE74D6A2CACCB7FAB4265F915822CB6A64
            D6A30ED54ED39DB17BF5E8274769CACF0581B7FADD538DDE1A9341E48C83BC30
            F37BF8A84497DEBA9FF20BDCA41374EE0569A9CDAF14C5F56ECDC7120489136C
            E3C651C9F3CF572A4178366E7693C9DCCAE9FC7D6F49C945FFF43D020F37CFA4
            29775627D9239FBE07C442978345BEBEABBC529F781A0D3CAD9D57979A3436C4
            A73069E668C2A4521A30EA3041C75C6EB1FEB8D068B88924A95C03FF594B10D9
            ED8E9A350939A4D84401DFD3E9D8B87B756C3C021F4367AA5EA7F370A2E8D3A6
            F2A9999958AFBCF4D557A9840D6C651204D9A54F4DA6DB1FCF3BFE39D661A4F1
            7AAACFEB98E28EB3C2E17C6ED036D1431ED40D94B161632570F463BF7A74F539
            7A92BD6A3BE16980598FF1CB0A69E0C2A38171BFE586545A3C2387386F65A776
            65E51C0E263E57763A485B76D9957F8FC9C878E81151FCC011FCE9B3912092CD
            4605DDBA9174EC183395E54355D478F5F8C96EDAC5C890CF7199FB79BEDEDFB2
            DC609F24D53F24CBB947DDEE5A65466372A1D399297A3C3AF57A789E9793ADD6
            921497ABB09AC974ACB624ED6FA0D7EF3C97E376D415C53D591C57ACF37A091B
            0644AB5749858524151450652D98508EA2D3F15DBCDEEF7E292ABA09C7EDCF27
            D13D2CAC76C9F16AC120A5CD0331CF064EA227BC858C2032A9817BCBF392E8DB
            C76A297513355A399D1BB37B38BA7AC2DFF4C71167A06B77DEE45AD4A5838564
            97E46F02A9441879FA6A899D3AF639A05C7386D1786C795252E39AA2783C7895
            E2D94990E262CA6BD68CC48307154B80E1C324728C10C704216D23C75DB1C6ED
            6EF1BBD77BCD9F1ECF8527240961DE69EFBFC38EEFCDE6F9438D2C96F537E874
            DFB5E0F9EFCE77BB771A24895C14DAF5E640DC4ADCF2C7C8C66CA5D57A6D8FBC
            FC1F24D1236430CB319D52289B9DDC5B6967090DE6EDD07072D222C9EE1F0F9F
            107F7C776DBAF3CAA4D3AEAE63DC78663DBEDE584A1DA7FABA76F15FC3732DF4
            DBC2DA6431CB7159D22BEB05EA7CFF115AB8BC48F977CFCCCCF7DF91A4879D21
            56299EBD04B9F24AF21E3AC4CCBC401223C95A9DAEF91C8FE79EEF1D8E7647DC
            EEBA146549A68E7D072F5E23C4B82EF4E2B8DDEEF05F641AD5A4D7975D6134FE
            7887D1F8615B8EFB3ACDED76F8CA5AF183815DEBFDB2FCF15705057782B1DD38
            0B0D91CDE48E733CC7BC283ACC86E87EB9988AA593543C3FCB4CEB9EC93D83D4
            2EA8C02B6AEBB6F78ED2A26D45011B34F6D96C7AB67F1A0BCEE3C00E3D477F6C
            15E9AACEFBC9E1129922E3A43919992D6E72B956BB4258FBB39A203A4690DDC9
            C9E70C77BB5F595A52D21979FBC038E8F554BB766DAA57AF1ED5A953876AD4A8
            11F8999999496969696461F181C0080692A8E470B95C54C05CA3BCBC3CDAB76F
            1FEDDCB993B66CD9A2FCCCCFCF2F7F21EC7B1725276FE86BB1BCD6CDEDFECC20
            8A92BBA2371303F4ECDAB69BCDE7B52D2A5AEF70B9920CBC409329891A4942A5
            B7260503F2FF01EFA677A5B272F1D8C8763934AC7DC69955B719FB361FF450F3
            37F63237CB77ECCC343DADFF3A97726BF167D8D6726A595149279B051AF87C01
            8D9F8AB994A86152D2EF4B8CC6E67A510C99A43E6B095274C515B4A5A4E4FCBB
            5CAEAF0F14159DABFEED9C73CEA1871F7E98DAB56B470D1A34A0A44ADA11EFE8
            D1A3B47EFD7A5ABC78317DFDF5D7B477EFDE937F6444B9213979F14B06C3C026
            1ECF3647256B7533D36C430C8671EF1D3F3E18FFBE8A37D11B642529AE1B26F8
            7C52072FD303544A7F4B2A15394A3109B4FE99FAD4A01A3A7BCF203E60EED533
            73F3E8F51FF2026FDDDF33833E1CCF3C62D7193A8E2A3F7013928F1C24B09834
            5FA666EDF7D1C163BEFB19965DEDE9675CAE37EC61E6ECAC24885C5444075BB4
            3077DAB367D9C6D2D26BD5F76FBBED369A3C7932E5E4E4C4F5068AD8F9172D5A
            4413274EA4DF7EFB2DF07E9AC994373C25E5A9DE6EF727707D2A437C11001FB3
            58B25A16176FCE77386AE0BD91420AB593742C388FEB6D9291117329EFA1E7E4
            32366992DF80C8D4FBB2749A756F36496288C04EED848F766DEC73C76D12357D
            753F1D2E8183CA319797A31F67D7A3E657EA49769F41DA185F64E4F3BA38B23B
            794AB688B819E657CBF4EEFBA5F4D8B023CA0526190C45DFA5A5343EC7E93A20
            8649A69C950421664126DD7863AF27366DFA5435FB4D9A34A11F7FFC91929393
            ABEC46E08E4D9B368D5E7CF1453A7EFCB8EFE604C1FB524A4AFF2738EE1D8F28
            92F70CB3585813FEA6C9F8F84BC78EBF0DA1ABCB82F30FE564B254207E557D7B
            C82E521AD85F5771293952B25221BFC3F9D2DE4F33EBB15652D784B3EFF21C2D
            EF5B8F5A5C6050366DF0696A5F251C1794574A4AFA370D861BEBD665C92FE8FE
            D60DFFFF391628BFFB43313D36F7B0FFD832DDDC3C9996CFAEC93E2AF93EAF0E
            1D2CA5D71723C262451D528168DA1C27BDF72973C5F345AA554347ED6FB2D2ED
            9D52E8CEC70FD22F1B7DAB14DB67647C365D96EF88B485506067C5C183CF585E
            62C59913C466A30E575E39E7EB1D3BBAFB2693A3D9B36753F7EEDDABEC26B4D8
            BE7D3B3DF0C003B476ED5ADF1B8220F5CDCA1AFBAC2C8F4C71321085DD6C19CD
            81105CC17F1F9C3A36EC77588FA3164BCAAD0EC7DA3DC5C517E1BD475970FE90
            64A48A6C7BE357A854C27E5BCF8BB495B94B4676C6AB19D91A79798524C133C2
            6259DAC2DCAB47A4625FEDC38F6BEA25D10FFD6B934E619DEC6B57641F5EBFCF
            43C3179FA0DFF63BC8C0FED8E992241AD1AE1AA52573BE425FE0043EDF07D6EF
            FA370FB2CF97F9D2B8ECDEDE1B5D93DADC9C4C470F3BA9D8E626B78B278351A6
            CC7423D5C9D15135B8747AF6459714D2422957C3DCBF891FD8A8FF8B68972F2F
            F8D5324C5454E221282E94073EAA5EBD5D07BB7D49A4B1C4DEBC49030650D263
            8F451C5F5E9655AD424E1600DB79DE829E2E740593D94C7CB56AB1CFD719BB58
            65657459E3C63F6FD8B3E76AFC1B5663E3C68D54BF7EFD333AEE99E0E0C183D4
            BC7973E5A7EF2E396A929AFAD3332929236FB4DBBF4B1259040F81526B2ED0E2
            2C7629D3E9F8131C57ED984E9793EFF1542F4D4A4A15BD5E1DFB7C09B350960F
            DDEEBEBFD86C372BF7C982F38FB954AAC154BFDB9724A568BE0CE64CCFA6F07B
            468CF76407FD29AB69048EC53602F5E7CDD4433430C2953F8E91E3692C6FA7B9
            9243139C7334B5576D7AE03A66A5DDFEF70C440B363AE8C14F8ED009BB8BD4E5
            AB4A75BA8E951EB93683EE6866212BF2F0EA259B785ABAC94EED26EF572E5FE6
            D0D6CE53AD6C3D238644B6322F331A276310F488554B17E8D28BADD4E3D664EA
            DEDE442969EC1CC13E263B767EA14C8DDBEDA723C7DCFE9AE3C96BD74810D5B7
            5AB72D339B2FB7B8DD8E68BBA3707A3D3A9C15E5A5368962FEA0D0704B6E368F
            2774BACCAD1CD7783951BB1FEDF6D645B29CD94B10DE7BD6E91C6568D54A4E67
            0A3C569C39414A4BA9F9A597AEFC65CF9E163E21E0E8EAABAFA69933672A81B9
            0AB84088174A4A4AA8947D07FFF6783C4AB64A6266D5643229DFE32BA95EB162
            C50AEAD4A91395310207C006B7B1C9F4EB8D16CBB78D787E43A6D1C878E031EC
            F778EAAE17C5ABB74852B3834E67DD12494A974451080863D018F9045DA02E2C
            407F90E9FF3489574812696F75DC156A435379277D28D999C713A479D9418DCC
            65620E04DDC8621A3565AC6C54CDACC7BDCCE6146852BB75D34D2C38AF471949
            102809924B73D697529F4F8F90CD85125BA88BE1A843C3549A7D7F0DB258783A
            98EFA1B91BCB68F29A42DA79DC7E1AA3CCD325E75B69F4E06AD4A11D135C45FD
            FBCF6BE268CAB4327A74D8C1C0A75BB76EADA4F3915CD1624076F6F3C35CAE97
            6349A8E898ACA0F8EC66C739A2D7E7EC26BA608FD77BFE618EAB7D44146BEDF3
            7ACFDD2B8AE7E7399D3582E76D88C5F2CCFF5AB67C3D69E1C298EFB0525CAC87
            AFB966FCFB5BB60CD0BE0D728C1B378E76EDDA45AB57AFA63D7BF628A959082C
            6A1B2086165DBA74A12FBEF8C2BFF959E5E0A5975EA2E1C38787B9734E296C2A
            832886DF5956212CB453D0F572FE92C3A5BC91469255291286DB7D0777A463C2
            FF1623C72C660514D74DF6B921A9A9A9E4628E9F93290C1CB406A7A3C95C32E5
            F88F6764DFFE5870D304C9BFA3887FBE86DC9C4D63BA66E20DDA9B27D188C5F9
            34735D91B2B102E72FF25D7FFDF504A7524D5E304791BD2BD16D97A451436621
            66FC5642878A616940DFC8992AA4E0A1C8B4F2E23B9E172D41346670363DD3F7
            64A1D2E9616EDBED4769DD1F36E51A91C144E6F1BCF3CEA33163C6D073CF3DA7
            1E98BE4C4B6B7E9D28AE75853937C60B464F66E7D9A5D7D75F26CBED977B3C1D
            B6B85CCD0A5DAE2CF29E7AED90233373A7705E2866C89C85E74B5676E9D2F48A
            B973F7C42A439512A47F77EDB58DDB6FDFFE0B0BB04CA7730808E1F2E5CBE9C6
            1B6F0CF9F713274ED0CB2C386BDCB831DD72CB2D54B366CD988E5B5858A8240C
            F6EFDF1FF5B3184CB885175E78215D7CF1C574EEB9E72AB51AB88CB83E58BD1D
            3B76D0B7DF7ECB34E012B2DBCB7CCE0BFBDF258C2413642B59FD7172794F02ED
            211C7D2838E85D663938C5B5F3FDB977EFDE0A81A1401E7CF0418584888F6EE7
            8C34841DCF43D8388DC53A828DB67B3D4C1C39667938C28E8A1B079F4375B374
            34754D098D5C7A82097AF9CEA5962D5BD2BC79F3C8C1FCF62953A6D0C71F7F4C
            BB77ED0E04E6E1909D9D4DE79F7F3E356CD850190BA4EA91893430B7064A0D29
            F65F7FFD95162C58409B376F56679060EB268FAA498FDC675212029BB7487479
            A7BD2CC69094F3DD7EFBEDF4F9E79F2B9F661EAEE22DFCFEFBEF0A41666766DE
            D4D2E55A198A20E85A10D9B9571B8DD7CF703A1F595156D6A1D4E94C8D369F20
            F4430F3D44F7DD779FA228972C59A2BC3FA263C701CF2F5C382156D9AC943A48
            31BBD9B1F9F9835F292C1C178ACDD18094F0FCF9F3C35A8F418306D16BAFBDA6
            FC5EBD7A75C5DAF4EDDB972EBDF4D2A8C77EF6D967E995575E09F9374C3ACC7E
            D7AE5DE9BAEBAEA3BA75EB92D1688C7ACC0D1BD6D3934F3E45AB56AD52FC5F88
            4057DE4243987EF0907C52FE38343572F4B520D270C9C62CC249B7EA7FFFFB1F
            8D1C393270CFA817BDFFFEFB8A154961C2368359915C9957E295415289923CF2
            F9F11CF5BE3C8306DF9C460317E4D1B29DB02C92721CD91FC0DF7DF7DDF4C61B
            6F50464646E09AE7CE9D1B367182022EC6A07DFBF674C92597B0003C7A100BE2
            E17A711F501E204992554F3F7C569B9A5DADA3ADEBBDD4B4FD1E46105F9E19CA
            ED871F7E508AC2C0881123948C23303C2BEB89FE1ECF24AD9367802261166395
            D57AFDDB0EC7E095C5C5ED648FE7947569982F149BD3D3D39597E0EF0784C5C0
            FBF7DE7BAFA2209F79E619E5FDDE9D3A4D9BB560C103B1CA66A51024FFCA2B49
            3E768C3E3618EEF9D0E1E8CF7CFA06CC1D351B38CE65144557892C23D83584FA
            3E2AE86BD6AC51347D28C00A346AD4880E1F3E7CCAF7EEBFFF7E7AE1851714D2
            84C3CA952BE9E69B6FA6E0FB6CD1A2058D1D3B56D164A703C4523D98C07DBB74
            6960DFAAD7B814BA561294F80196C5C44EB94D90A9BF5C4245921458BA3A68D0
            4046DA57CB1D0FC5CE66CD9A513173076045867249D45336D1937C29FDE07504
            D2B3F0F8AEA997427F1C29A322075C437FF58DE1E28617D3A8D1A31485130C68
            7E281435050EC06AC2D581B281309D0E5083EAD5AB27B3A82EE5EEAEBD2C853E
            9A5883962C2BA3FEC30F2B6E99AA156029AFBDD6572AFBEEBBEF14E5A4CC4572
            F2D75FE8F51D3C4CB9225B0821DFA0D7377A5314877E6DB3F5903C9E4057062C
            3AC609EEE3954CEEE0B2C1EA59AD5645E18502BC9356AD5A29BF77EEDA75EEFC
            2FBE8839C55A69AD26D2A14364648CB7B1282C4F10AA970A428A99E3EC56BBDD
            7150AFCF7DD6E59AB4B9A4E4AAE0EF3FFDF4D3F4FAEBAF873D3E52C6BD7AF50A
            FB77B8433366CC50062D140EB1EB02C1E087AA80D97DE79D7714013913204B76
            CD35D7D08103BE4D062E150C34494E225EE694801D95EF7E5C196DF59E741E7A
            F6ECA9B83B8270EA225D08F6427F00D981B96DF77266BA9791CB1EA5970DC2D1
            BF7F7FC5D2428B86438F1E3D026E0E3E376BD62CBAF5D65BCF680C00C49A4386
            0CF1D750784AB5F254E6907D31999201F3C9D837DF7CA3745500478E1C51E605
            AD442C8671BF9591714767515CB84BA76BF081D7FBC4DC92927B1D1E4FA09076
            D96597299611560EEE6F45B06CD9326AD3A68DF2FB431D3B4E7C6FE1C2FEB17E
            B7529B15D56E5E6801B520066D6866FFFED16ABDBC6B7EFE6A8FC713F06160DA
            1140666565853D3E3251D05291002B00ED144AE86C369BE236A0970BB8EBAEBB
            E8C30F3F54FAC32A033816E207A5AF96DDF4583E99DA483A45A7BFCA82EBCF58
            50CE33D7076965B819DF7FFF7D39D7470B58B4A1FEC78B35E5F4D49037D0C7E8
            DA8D3047D08CA3478FA62BAEB822EAB50E183080264C98A068E1CF3EFBAC52C8
            01C0DD8245C65CFAD6AF036A39F4A405818B75C30D37F8FE2AFB9208F01E0046
            12577D9D6ED70149AA6777BB03C468DAB4A93226908358DCDF60204984580485
            6B6042E7CE0F3D357FFE07B17EBFD209120A204C9ED99C717D49C9CE228723C0
            0668D23BEFBC33ECB1FFFAEB2FC5F5F2F9B8E1317EFC7865F243010481958196
            874B06CB8194726501E96A58116468947A0BD3FCA358FCB041F6D04B32E20E5F
            610E4209531F4990B5D6324949777354AA7151B440A2E2F9E79FA73E7DFA28A9
            D348F8FBEFBFE9CB2FBF54C609D73B7DFAF44A23870A04ED9D3B77567E3FB95C
            EBE475E31A11944349A8C0DC7FFAE9A7218F0777095669F0E0C18A858C1570E9
            FEFCF34F8510E8D3838BAD7A0FCCA329F9B16BD7A6975765162B1682C09199C3
            F35DFA1615CD65E7530A1D1D3A7450063552DD038139DC864878E28927948034
            D87AE0BE506781CF0DA1ECD7AF9F32E0955567D102359F7BEEB9C7577D67AF54
            8EB918CC6AB835AB20A1B99F7AEAA988C7810B0217228030EB9E2058B01A482A
            44038AB6C8FC611CE0864E9D3A356CBC7726C05823BED0F6C3698174363AB1D1
            D5AD42EBF26901F70F9659255C3420950D05854CD5521613FEF1C71F2C262A5F
            D731E8F58ED13ADD230FB76E3D3399C95DAC883B4150F6771A8DA65B1D8E35DB
            4B4B9BA983855610A411230D3834F3BA75EB42FE1D6E0A52A420482860B0700C
            682EB8131F7DF45185EF0D6DF6A8DB60C270CDE1000B0757009A4BC96A292BFD
            48C90123286FDBB6ADE22646D3F428A0A99A5DED89D29204397DD410C2DD7328
            2095FCC9279F281A1942046B5A11C0E2805CB8768C4324EB8B5E38B4F984426E
            6EAED206B46DDB36655ED0E900170BAEB116B847D4C3D4982112906686D545DC
            B675EB560A27CB3966F3BE57ACD647DB97952D915BB7A6CC7F1341603DA61A0C
            F70ECACF9FAE6A534CF290281D993FFFFCB33280C105454C10D295C8BE842318
            0416695B985608367E9F346952CCF7F4CB2FBF2869489013FE358E811A09FC67
            6878644F822D11D29DD0EAC18050E15E2EB8E082A8E7851B841476285C74D145
            F4DE7BEF29F7122BE0A2C26A20E306FF1D751CC47DB100C478EBADB714770C89
            0E1004E95F64C240780870703D0AF52A04DEC8980503D78DB438026D28011C03
            F516EDBA1E585FDC23DCC64880DBF4E69B6F2A4AD0D75D171ACCAB10BBA5A44C
            1BA4D38DACEF761F70B07B32B1EBFED71044D9F943AF37B7753A7FDD5D56D608
            EF61C2305096281B28202B8316761548E5C1E4A25E102E63A5225053F0A363C7
            8E4A2D04421E2E15A802AE107CFB722D2AE5075D29C2C177D606DB3FFDF49342
            682928E3148B6BA502C70C159375EBD64D190B2C30AB08B4A4455202D93EA4BC
            23A5C50110EBD1471F5552B1E180F9401D0701B016505EA8B904037508B8CC08
            E6311710F2602509E27CF5D55761EB61B82ED44EE01178A3D5DB384E7E2E3DFD
            9941B23CC1C3E6042B4EE47F1B41105ABDAFB11E102EB8116AFE3B1CA0559079
            42B107192A14B13078B10808DC2E544E8301BF1B41B256A8556186358026429C
            F2C107D1131C7003A08D6BD5AA55EE9AA13D8F61F30A3FE022A2272CD6ECCBC9
            8C980FF81E0402816AA80C5D24409BE39E030D9B7E8068C12E1AC641B588505E
            88A710D847C3638F3D768A650E1537E2D85020A8CA23950D57ECA69B6E3AC5D2
            A0581C2EEE801584E29B1D63A361BAD99CB72A25E5826A0E47A1BABEE45F4510
            B4081CB25AAB772829F9E9405999D2B5A86D3788040C1CDC9CCB2FBFBC9C1046
            83B63AAB055C036434B41924B5AF0882874C172AAE98A05800ED099F575B5C03
            9991A1C17260E5FE997023A50B5F3B566081198A760072FDEFBEFB6EA0C05551
            4070838980FA0FDA4EB45614E3A02617D04673C71D7728C5D958000B0077590B
            6426914AD70284430C887A175C648C392C94162011B25CE11208982B8C31C677
            CE9C398A1581450907ABD158BC3C25E592062ED701F7BF85201C365F406319BB
            D9FD0643F5471D8E993FD96C4AB40581811689E61E9D0EE02F436B695D321570
            E5D093844C8E76B0F1C2A420C680502CA8C0A081B4083653525202EF61F2E09F
            C3B2001074A4942B0295207053E09A55443968016B78D55557697AA548F1F911
            FC6A5D5BAD05853B050556CCE63356A03F0E6E9C16C10441D60A2E172CC0EEDD
            BB152B80186EC3860DA71C0FE4C5DF6301E24BDC0F1441A86301BD525327BFC5
            F37D45C9B75BD93F4210361B54D2B429B90E1F46BCA13F2808F596735CDBA965
            65FDF697969EA77E0CA6154168650319160475A18A899878C422C19915D5A5C0
            4FFCADA2192EB87D7045B459296D808AE015E9CE704D9570C770DD6808D40256
            0E5A11AEDE9974350707FB202EAAC9DA1E2BAD9280E606814ED908230A103305
            7739A0D63270E0C0C0BF711F483020A88647306CD8B0B0091390098AAA224A14
            0A0E0A10C73F25C5CCF3F29B191977DCEDF1CC76B0B9964A4BC9C4EE33EB9B6F
            623E7E5482D85E7D953C48B5B220CFE0DF05719F4E576B3B51A34382909B5756
            56FDD0EAD5350E1517D7DE2F8AE7EC431F96DB5DAEB203938AA0AC2219985800
            AD846C0ADCB150C044BDFA6AF99E27AD4B010D8880BC22C0BD404BA265440B5C
            03EA00081E315948328403FAC790C10976452A03B83F584B35C00629100781BC
            2AB4E440CB07E201D5358C157085A0248237E20855FC53EF151A7FD3A64D118F
            8B0402E248B865D112395AA84BAE11AFC165569163B1EC5F62345E91DBA8D171
            139307811DDF5081FEBBA804C9679ADFB9702199998BF487D97CE11B1ECF73DF
            9795DD5A421453771B2601417345053116844BAD02689D4742409BB7D70A068A
            7208089193AF08601550F00AEE7952C906C141FB44B8C9557B90105FA05056D9
            407D09D934B494430980CC7021B550E71C6446866C61051610A9802540164B0B
            B86748AEA8BD696702C473B0EEF03C624D4D036A5F98168F27258D7CB5438717
            CC61AAF69110952027D022FDD557B43829A94DFFB2B299850E47F5A807651303
            738989425606A9C5CAC6DB6FBFAD343A8A21163BA16E01210D2E8AA9AE15DC20
            04CFB1646A82010D87005DDB3F069F1F09001007E63E5C2D03401201C9046853
            64E72A02C414705722F59121D980742EA006C75AA8F38D3982A58B35051D8C50
            017AA496FAD30514113C0F2833C85134B2C0750549B55DCBD93ADD81353D7B36
            6E306B56115510D15D2C76C31B962C39AFB328AE2E743A03E48066C6C52350C5
            4F647690C6835F8D0B44114FEDFDAF4C4003C34589948E8589C667B4D00A0662
            16B45C9C0ED0F3053F5B0BB50F09F5116482C2A5645199473C807BA82841403C
            646E6011C21104957CF8EF7031E05AA1D0890AB616AA92804B85584ADBE51C2B
            30E7B05420ABF6B8C8B82173172F40F1A9697F342F86DB520A8A13ED475ACCBC
            FBEEDBEE9A31A3C2A6322A414A991B70F7FCF9D3BE14C5FBF06F6850081F8401
            BFA391EC74BA2C2B0A986F3555A876E68602323FF073C3AD6F402C843A8C1861
            996D384020E0776B8F0D170DC52FC420100EB55B3514B435828A1004E9676477
            E016466A7644D72B3A8201B87BB054C150E71BEE5DA8825E2C40A12FB8D601C5
            805A9524C5618BD21080AB0B658557704203161EE384005E45FF5EBD5E79F3D3
            4F9FADE879A212E48F9E3D6B5EF3F9E75B4A65391D9A11131B6A414EBC006D0B
            AD896C145A97A321948657015220A83F1D2D074580D686E044835AFD865B052D
            1F0ED0EAD0EED0F240AC0441C6E7C9279F5482CF70F116800C14E21FB485E05A
            D1A4186EDD04EE1F4A226A353A0430F720963683871437DC1FB575BDAA006504
            85174C1090142E349606ABE8D4B9F3170BE6CFBFBDA2E7884A901977DCD1F9DE
            CF3E532A68082E91738ED6745719405602C13DAC064812D3CDB08142B51C5999
            50808043CBC59ADA866584A6C26A3FD4281E79E491727F875543BD011B52A0C6
            83346638A81DBF2AA21104EE18FC7C54D731EEE8E78AB4752B6232A4870164D3
            60E942A58A71EFE8A4FEA602A94E740D630EB01107C805775A8B484D8AF10216
            BB212D1E6EAE9198804BAAA243C78E5F2E5AB8B04BACC75711952043BB761D36
            76FE7C255D81F51498B058202B1DADA79FCB877683E6AC489321622198D7702D
            29B12CBE0A0C0CBB76B873686D80E0872A42AA0137DC95482D10B05CC8AA6935
            2CE2165C4FA871832542860E7102AC3604415BE80C06920428BEA1CD1B408A19
            017828A0E681169888BBE66B00AB04C500B71A6E14BA96B540308C7347727B2B
            1B7071515444062E1C509FD1CEC943BD7A4D7CEFD34F635E49A8222A411EEDDE
            FD8D2973E73EA99E142D0230617821588429538346358DAAE24CD75EC0874475
            37566D871801AE45A88644547131B9E19A1083816E61B813481BA25D3C38CE42
            4609EE162C1D043F92F5803687A6D3BA3410785847551BE35EA19DD1410B4154
            112A13150C104A2B2CA8E0AB2D2BC10815C08603AE0D0B8FA028E042854A4BA3
            9DA5224AEC4C8171449741A40D3B30CE8841B415F6F7EFBAAB579F993363DF31
            CE8FA804B9EB9E7BA67F3C73E6BDC1EF8314980898D6E0E77A2807AEA4FDADA0
            A1D0621E6E5D8816481C84EB408D35A50941877021A6402C8386BCE08A382C02
            D656ABED19D1FACB3046704382814C1F2C0BDAF3A1D9B15E420B3456E2BE911D
            0C8750D9235849B851C10009A124A21505912D02E14026C43668AB792CC4769F
            2840621C62B5466702C453480CA09F2C5A473612262831A8352E7F9AB7498359
            B30A623997165109F2448F1EAF4EFAFCF381DAF7905E83890BE522C403A857A0
            1522DAC4A2E6122EFD8B9677B4528702061C9A09D611130E6B016142FB887605
            9C0A956C88C51024AA3B7584026209A4BDB55DBEB102853814E42201B10FB268
            6A560ED78485513867304042A449C365F0B00F187C778C23AADF00B6CC51F7C5
            D202F1172C286A3FF1049628605EA06462D979050A0329F7802BCD14F5F3566B
            FF21EDDA4DB4CC9953E1F34725C8829E3D5B749E336705F977D7575B34023BE3
            85C199C620C1406C81003BD22670A10269001A1A02135C188430C16D80B00777
            FA86730F61B6A1F5D5361704FE91EE33D222A84840600C410FB7C1830AB81BDA
            F5F8F81E6291503BEB231318AA19104288310039D40268B4F98BB76B857A1A2C
            393284D1C6400BC48ADA369F9B5253177E248AB727B56BE7498FA1933C185109
            52DCB327D7E7CB2FA7CCF5781E52570442C322D083194686051A09C2871426F6
            AF02796259415751C0DD0049A09583018180F06AF7035681064010449B1787D6
            4590ADCD82A83194DAAB150CB481C38D537DDBE0401BE3109CE10BE75E4543AC
            0BAD82D77547B2A258B4A4DD6209490D6867B852C18D8C40388220230757271E
            350F24051E7FFC7125DEADE80397A08C4028759E1B98CD5BE62525B5CA292939
            26300F22331E0429623E76E177DF591ED7EB3F5C9C9FDF33DA01619A61CA63B9
            392CB0C780445BE116FC1D103378A713B860C19B22AB40E00E9F14DA116959AC
            D3862BA515666D822194F5C0A0E37BEA9A11B4B1E0B8EA3190C541F64CEB8AA8
            0BBF422D418D04B83A387634CD094222A650DD1C0834C6205CC60BD603648212
            415C870440B042D1B6C08702E20E584458D0CA02941B14154887793C9DFDCAE0
            52617ED446C57493E9D8ECE4E436CD5CAECDD8F7D8142F82A0174B6427775B2C
            86715EEFB0F71C8E412CF809BB721F1912A467A301B5036C06067FB1A21A16EB
            A495BD6C351A2C54E7AE0AA4415140031143B91ED12C073255983C6D5E1D1A1E
            938A1804C284E32366D0B681204E0B5E18140B4235028602326948B1E2FA0034
            48C2BD0AF7E809D4323066882942B5C3689B394301192D28A758DBE2710EF466
            618D0CBC0B55A9610EA04CA03C9060C0ABA29BC16981C2254A10EAF18D3A9DFD
            BDCCCC6E1D9DCE25B025329BFFB812C4C90822984C6460C2B34AAF6F3EDEE379
            6195CDD636781F5EF45E61D2A001A301EDCFA8909FEE03775044430A5605DC11
            086D6503960383AFCDA9C33AC24A22DE410A17428794286206B50683EF41782B
            1AC46A77418F86E01594E88F0341CE44D8C2018A00EE5C28F73612A0D961D1D0
            E18BEF827C70E7305E67BAB32580143C94A5BA79039E2A362E2BABCF434EE774
            75E39F2A2108E76F1BC7525AAFD1C80D1184F1D38E1D7B5ABBEB1FAC412CCB56
            5115460CA0A6E14028A4E62AB22901B426DC0454CE0104CE915A48B4D6269CA5
            08061AF9603982571BA22600AD0541C4D699005A41B484453364B4DD394201E9
            D9588A9920202C70706A38D2BA6E752D8C36C688651C90FD833B16EB525C2DE0
            D6C192C6025826C437D881118136EA5AB076E1AE11E4408CA75A50AC557A3623
            63F060B7FB5597E6495D554A10000BA77698CD0D5A16166E71BBDD813FC0F541
            BB7534A07680560B2D70A315EDB0456F16920548C7427B42CB21C608878AD468
            5058043990460D063245700F50D003C9E1BA217057EB25200DB26270232B8A58
            C750BB879616780F95F748A8C83860DD0A827B6D82231A602590A481DB89C22C
            82E750751940DDF40DB111948EBAC9048AB4A3468D0ABB8F175AFA61C103DBFE
            B073F6AD566DF408AFF77F1EB7BBDC63F6AA9C207856F81F2653C3B68585EBD5
            BD76515C82798FE65EE133703D82F73382BF0A4D8520AD2240CC832C0C801C3F
            D2AE9136798B05883510D36082D57DDBC26C72A8006D18DA07F5447AE44224C0
            37472772A4C2A00AF47185B2D6107AA4BB635DDB1D0E8857908D04612B0AD56D
            868543951FC28F6C279A0BD17E0FD220A90137156DF35A2B080587361B102A5C
            3C888E65941A02F51CF6B9FB52535F1FCBF303655194831FE356E504C1B3C25F
            148497269E38117080E167AA0F298984E0FDAEB4805646DB46459E8E0BCD062B
            82AC0F80DA04D29CB1C441C1809BF70A7393E6F9054FD92591F33DEF43D98639
            C450C16A4003AA2D23380682F78A685C15689F402A3B5A3328AC15EE39DCA669
            B0A688C74E27418002206243243C4E6741990A9C1BD60740660956049DCF5837
            1E1CE463AE703F58C60C0B186EF904DC692822C47D01801C292913C63072C087
            0C9578AE528240504A05C1D2CAE1D8B0CFE1385FFD1C0623DA842048C352CA48
            694F680F68878A001A5FBBAC145A0A1600416570E769305078FCE1C71F69363B
            06363608B44D280F49E5E92A32908D24DA268B8107D468A1DD2512A4409D0431
            D6E92052AA5A0B35C1110D48C7C2BAC2B2465A85887D6C914CC0D25B6CA903F7
            F24C81D67E28AAE0E6467414A88FE38322408C8154B37687182D301F882D5194
            84EB588E02CCEB783035F5B59765793027691F355A1E551BA4B3D70A9DEE869E
            85852B6549526C19D61FC0350855A4D32296B42752951810B861B10282891E2A
            F40C6981C1473325260BA4C1B161A241540801AE79DBD6AD54A85D55C7F99E0C
            5B9D91E361CE42B7C97A3AC608724FD0433401F8D91054B88D08625F79651C0D
            1DFA9C422C3C06008792FC4F952ABFDB7968A70D6E53706C160CB8244870C4DA
            FF8478004A091A1AD569B46BC09D454A1499251003E380346C2C853F25C8673F
            2FAC6F21A38168F37687F2DCC35040964AED5488B46136EE0571246A2B88E960
            C54020B8606854551ED5160C41909FCACE7E71A8DB3D5262DF8FF474DC2A2508
            DCAB511CF7DCF8C2C251EA67D09383CC43A4EEDDE0DDBF753CEFBED86ADD70C8
            EBCDCDB7DBCBA5AF20EC08B82BB2ED3D02BA687D4BE147817C0F1BE4B11B244F
            B77246BA934C5487F11F5E6E311380DE8C20F9413A0A89054C26841A96031389
            CC17473A7AF5B91A8A303D33EAA072789359A0EBAF48A52D3B4BE9F0B1D0AE51
            B84405080D6D0BD71335038CF53F05DF73D49992FCA42E59D83D35EFB28F2981
            C8AB33411464D6501D873B85FB416D04E404311198831070193166C13BB307C3
            2408652F65653DD9C7E59A8AE7CA47A375D55A104682FB44F193AF6CB6804F13
            6A017F30E0BE204E51CEC78EF1626666BF7E5EEFDB874CA69C312ED78B9F1516
            A28F3EF079141B636DCB06507F41E6289A660D156C6352EAF23A6AC1DCA9B6EC
            75AEC42BF186C8E20F8111C7C188F30023C85EC97372D775E571685C48AD9B64
            31D0CE15E7D0B17C275DDEE10061DBB24EAD5269C1BC3A34E2A563F4E2EBC743
            5E098258B8396A9201B10DDADF915E45A08BDFA33D0E229EF05D31477A1D4F9B
            97D421A783A3CB3AEDA7F0CECDA950F7233BFD8B60F16F7A7ABF0192F4769926
            951B09554610C5F960BE6C17495AB1B6A020D0C484941B76ED0E7B81EC1CA859
            A8FE752DB379EFCAA4A446292E975D318C4C3B3ECF71A3A714160E554902A145
            739D76AFDA4800316079D4454311C6974CCC05CAE604AAC1ACC5C54CDB3765AF
            0B659E52D9CB8BA7AA067DC7C088308BF3D09BB2CD3F6827EFCBFF9C03E234CF
            EEAC9D63A45D2B7269DB2E4690CE8794BFD7AF6DA205D37369FAE745347E0A3A
            7B43E7C5B4BB0B22CD8CB520C888C14D82168EB49B79DC807A897C5231009B17
            D72594B12EEB84855255B30E1DA86E361F62B2D330C3E52AF1C6D80C5BA504F1
            0A02D7DEE3F965B3CD16687F45C12678EF252D907D80F550170C3D929E3E768C
            2C0F551F1C0FC78C677EF10B412441CC001F3FD607A9202F8EEDF323DE3023C7
            F37C32B5243D9925DFB93106B016CA594F312FCA46E1EC6D813EE69D344F7233
            97CB4B0E2560E794C73BE0C17308E4D5A269BDDA7AFA935990153FBBA8CDBDEA
            4A3B9ECC4681B00DA6C7135EE3A29F08490AC40A488D2289D0A64D6B16F8AF2D
            B7215AD5C22788C9169EB2328D543DC3489FBC95414E97972EEF78981CAEF8AF
            0751D1A87AF5F54B04E132BEACAC5CAD2312AAD4C51298B6EF268A4BD7141707
            B6684787A85A8B50A1B68C43B3C37550773F34EBF5A54B92929A5D2449BBB55B
            B6694832869164884A12C421B0249108A842FBB8E870A8CFEB691AA5F83A02FC
            B71EA9C6111828F6D2B10929609F2C60177B9CB9151E46929AEC7820C9FFE452
            DA2EF904A5560E23C8F7E7D082651EEAD57F2FF93D778D06567F069EE448AA10
            E2F7F4B474BA8805D43FAFFD8564651C345D0081EF71CAFBFE921FE564E9A966
            B691F20BDDB4FFB05B398EF6D1D0FED50A9AF391E6BAB8C039D418038F9B56C6
            DFA2A332BB48F7744DA7978764518D74360E8CE83223398EB261AB486BD6B969
            CB9F0EFAE937076DFDD3E957143255CBD053ED1A463A51E4A1FD873CFE6BF29F
            4FD65E0769AE8D0B3CEE1AFF361B7524300B5EEAF0D9F52CB3F1E88AE4E446D5
            9DCE13FF3A0B029898D0F791A48FE6171707762080E646714A0BE4BC11BC2263
            3247B350A567B56AEF4FF27A1F7685D85103CF13E119015FE0F9D1530A0A0296
            04C740351785AB504540149E703E9034ECF30CFD63F90467A5FB5800EE92E5E8
            AC08015EF3823079D9718DECF5AA6CA78FC9A11C33354947BB5736A0153FA904
            51273F18025DD9C4429D5AA7527675134D99718CD6FD511AF8AC516F5048E50E
            ECFEA83C229520CCBC5FC68C0681FED7AF1AF5B9239972AA0BE4B47B69C63C07
            0D1E73848A6D5ED2922BA71A3B574B0BA5A5F3F4EB4637ADF9B58CF0E8656256
            950281B68F7C16938E460FCAA6EEDD5369E2A413B489B98B4F3D944DAE329959
            1099AE68C2AE41D0C15F653EA86F70BD2544B7DC758456FE5C42431FAF4E8FDE
            954CB56AB018CECED3A70BCB68F0A8E38C2CEE7224C9CE3252FB9BAD542D93E8
            F7CD22FDF04B297944DF353FD03D839EEB97453A3D4FA327E6D37B9FE4A33845
            13B3327BF676B9E6C45A69AAF22CD61B1CD77F44616160570014E7B4EBA88150
            5925AB4E57FC4D6AEA151789E2EE701B7E8224028B7386EBF52327E5E50DD336
            44C2E5000990DFC75A0634EAA1150455D95872F7692CEE98C6A5504D7F76AAB2
            8098662AE7A077E43245B68DECFAB72E3B87B6EEF2D06D0FFFAD7C262B5DA708
            AC47F48D770DA6F15F7E3687EEED6A26015DED124F8B16B8E97FE38ED31F3B4B
            99E0F3346F4A1DDAF1A7879E197548F90EC8F0F11BB518F1DCF4CEACE32C5816
            68EAD89A74F7BD16C23397E77DE9209DC053A74E2616ECDBA9E71347C8E9F669
            EE0BEA59E8EB19B5A9C1853A926D123B1D472B7FF252EF270FD1B17CF4326909
            42F470AF6C7A774C1ABDF551116DD926D2D43905A45ABCEC2C03EDFABE2EADDB
            E8A549B34AA85E1DA2A60DAD9499C1D1D07127D87793E9B1BE297023E8CB850E
            E5DE3ADF66A225DF3AA9EBA307C8E1F43D98B47EAE95BEFEA8165D78B14052A9
            A4C43AAB7F95A95BDFBDD4E2CA249A3B2D9B167C55CAAC0847D75E66A1F36EFC
            9B8EE439E89AB4B4A55FE8746D658F27A6FD69AA942058EDF0BB4ED7B84371F1
            6FA2281A54C145FA56DD07176E159A07CB15CCD8CD3F9E993972A428BEE08872
            4E952463ACD661130E1D1A19DC358CED27915A46535F2CDBF5FBB2B83CDDC699
            68986426F7E9988E0830B2332C143C3442B2F9953F476BE6D4A1B4349E2E69BB
            9FD252045A3BAF1EBD35AD90DE9E994FE7D533D117936BD12557E9A8709F4C1F
            7E5E4A6BD73B69FAF82C3A7EC24B0D5BFE4D8D2F34D12FCBEAD0C83105F4C21B
            BEE5BAD95926DAFBE33974F8B844E7DDB49BBAB54BA3CFA756A3238C3FB3E6DB
            69C8185F3BFBD37DB2E8F59733A9EB3D47E9CB65C5949966A4591372E886EB0C
            F4E08013CC7A945046BA91EAE45869D56F25945780C05FB5343E12F4BF3F9B26
            8CC8A0CBDA1CA28DDBB56B3F383232176BF7F27AF4D572373DF662F9159E1D6E
            4EA74533B3E9D831996633923E33F228896CFE1EBF3B93DE7E358BEE78E8387D
            B6A8885D939EDE7F259BDAB7B2509F41F9CC3D63D7940A972C8536EF2CA1A533
            72D84F917A3D7E98A68CCDA1AEADADD4E0A6BD9477C289A2A7EB9BCCCCCB9AD8
            ED5BDD31B859554A10C55B653E4F27B77BE5FAD252651735E4E8513443F7252A
            A7E8E3C13E4D5A343099B67C63B15C97EAF516C79214044950FD7D53929E1C6B
            B78FF3B85C11B76F64AE993783E3F2980E4F7688A235F8D9E27A4690497C0A35
            F1F254B1EDAAA3C3C046E557CE438F934A10993E79A32E756A65A6DAD7ECA50B
            EAEB69EDB7B9F4DA841334F4D57C5A3AAB2EDDD4CA405FCE73D2D0B179B463AF
            9D52985B06E137E889EA5EB78F095A124D9F509D2E69B39F5922DF4E2CB5981B
            B673457DA6819D54EFFAFDF4CEC81AD4BB47325DDFF910FDBCDEE69F1D2FA525
            1BE8C04FF5E9CD69369A38239F567D9E4BE75DC0D3B8376D3464DC1175165511
            F0FF54A3195F2110F1C34FF3EBB2005CA29B7B1CA0FC2277E0F302B3525B16D7
            A1ED7BBC8A45D0E2FDD135E8C17BD3A855B7C3B4626D69E03B49668EF6FF944B
            D3BFB0D1C8B76CB4665E2E8BB3789A38A584FA0FD75E934CADAE4DA165736AD1
            2FBFBA95F1687A9591868F2AA29798A2E094B84BA6A76BD67CF179BB7D443465
            ABDC5995F762B1D7C7443DFAD96CB329869CB6D160B07F9C9272CB4D1ECFEA8A
            2429393C8C87C51FAB0C866BE6381C776F14C5AB0A6539CBADD399F492E4B68A
            A2ADAE20FC7999C9B4B605C72D6D20497F1DD7E9B29FB0D9A66F713A4F96E299
            96B9823730B225297E6FE5DA0F64B188FEE62516DB9490C3DFB0356240757AFE
            990CBAF8C60354BF0E739FD884DFF748BE22C83B7FAC470B173B99FB05ED8BF1
            13A84F8F749A323E934A4EC8D4E0C67D745BAB64FA7062356ADBFD307DBBDA67
            257B76CCA4CFDEAB469B3688745987BF99C5A9413D6FB352A3960768D7DEC0EA
            07BAF48224FAFDDBDAF4D48B05F4D9C222DABBAA1E25A50AD4AAC7615AFEB34D
            39A78F16A73ECFDCF7AEEFFD1BAE60823ABB167DBB02EEDA21464C6F20D9B06E
            612E731739BAA6DB7E4D2280A3A9636AD2FDBD93A969EB83B4696759E09A2E6A
            60A54D4B6BD30BAF15D0A41925B46F753D4AAFCE517B16B37CF3BDCD7F5CDF71
            EEE894469F4CCEA1DF7F13E9609E9BD6AEF3D0F80FF2D9F9BCA426199AA4A5AD
            FD4AA7BB9677BBA568D9AC2A27883FDDABEFEEF17CB3D6668BF88C3066059CA3
            33331F7DD0E5FAC8719A0522837F955B19CF0B65826075190C26032388C9E974
            309177E9948C147BB1CFE2A1037374BA8E7D0A0B1706C8CB0670049F4CB74A7A
            5F705EC940C06E67E7788063132F7B94AAFCEDB732F7E7A31AD4B5F7612AB37B
            E8DB2FEAD02DB71FA60347DCB48DF9EFBF6F14E991E78ED181C35EEAC8C830E1
            F9344A4EE6A8A880C50B2DF753BD5C667516D5A15DBB5DF4F2C462661588063E
            9C4E759925E83FB088267E749C7A766084995A9D7E5EE3A497DF2EA23DFB1CD4
            989163C4E034E6AEF07465C77D74F08897362FC9A50BEBEBE8E236FB68FB5FB0
            04B1CE03478FDC9149931951FB3D5DC0DCC3933BA62F9D51871A9E6B62D7BA97
            CA1C2793085DDA64D03CE61EFDF6AB8346BD55443B19712F3ED74AC307A753CD
            6C764DED0FD05FFB5CF4FB57B9D4B491999AB46544DA51AAC9F2112378326D58
            5A87264E2BA6275F827BA9128327952056A3B164796A6AA3739CCE03E2BF8D20
            00828F2D3ADD850F3A9D5FECB1DB1B065C1A0E1566DE5B53AFFFFB06BD7ED9ED
            06C3ACEBBDDE35EE4A104CCE77C1279D0274DB067D06ADF8BB4CA6FA58ABE2F2
            7894256BB5791D4DA754B22A4B4A4F2B79151548E43CC702F565B2532148DD5A
            26DAFD433D1A3CFA187DB7DA437FACCAA599B38AA8CF90E3B47A4E2E5D71BD9E
            BC45321516F3945543F6B50A7BBC64B70BD4E4D6FDB4E7A0933E7DAB3675EF65
            F5CB063B41994CE327C34D627E3DD3A63A16A44F7E99B9347D187B90B376B0D1
            B0EAE9C01E91EE7FEA18B316BE1EB399AFD7A11B9B1BA9112348B10DC1782482
            9C4C4323C58A2CD2B081E9D4FBE163F4C9C282C09F3F7EA31EF5EA64A08B5BEF
            A71D7F39FCDFE495EE82375FAC498F23488765B133E1B61AE8F07E0FF519788C
            16AFF459C3F747D7A64E2CAEB8A8F51E2A28F2942308C7093466500D7AF6E934
            5AB5CAC1BE53AAF4B47DB50C69E432DF05609FE86AD5AE6F61B7AF76FD1B09A2
            08237BE5EBF5A9EB65F9CA3D6EF7795E49126A9A4C077339EEEFFA92B43B4B92
            4A253C7C310E02190E20C83683E1FC3645459BDCA257A96E3EC85BE931C9444E
            92E2C30EF2C5212B049186CA254C2E784551DCDA228936EE705351B1449F4ECC
            A1F3CF31D0E54CAB67571368F4B3D9746D5323592D126DDC2AD1D4B925F4F280
            54AA5B97A79B6E3F482B7F415C62A0BE2CB8BDE4420B0B4E3DB4E8DB625AF10B
            5C24DC844FC8754C50EEE89C416D5B58496071D6CF9BCA68F682123A9A07A1F5
            A56C2F6D68A1648B8E56AFB391EAE78703DCABD4143D8D1F964B375C25508D1A
            028D1C5F48AFBD7F82BC9248AA06EF7B5726BDF37A2DEA71FF21FAFCEB13816F
            033C5348BD3AA6D1AD375B49C708F3DB66A7E2EA1D3AE6087CEE920B2C94CEAC
            DC8FBFDA425F05BB97EEEDD2E9EEEE4954AF96402718AF86BF5E482B7F2EF411
            897914B3D2D3DBB413C565D1DCF67F8C2080C0BE8F029AB60C852988A6A7E205
            988C097AFD93234F9C501AB992D9407FC8A550AEC4294A364EFCF0370173F428
            57469BBDEEA0E223C7B43D47994C20F2980BE5EB5DE228234520934966C2EC7B
            EF837135993548A5FE4FE5D1C499F9543E80D61616D5F7B4054635C8E5481B84
            431BFBA658F2D53B94D6E2F03383994C4ED2D33D5D93C9C802EB252B9CB475B7
            5D735EDF3950406C7C610AFDB1D346A5652703F89397187CADE5CF52BE481A0C
            5EF33EA7140ABD813607DFCB60323997A7A5353ADF6EFFEB5FE962FD1B8161F2
            E87486B64EE7DAED65654D21B0B770267A5936935B8EA55E7EFA800754086BC5
            02F52352709EEEE464ABFFD706C7104AFCD6AD6D2ACD9D99434B173BA8FD03FB
            991B2587FC7E68818BDFBDFD0BE17DCC6C1EF3822C3F2FC6F00807D9E3510892
            751A8F9AFB4F110479E0A57AFDCDBD0B0B97C95E2F0F97E32D3E89AEF4EAE2EE
            E6A1A0FC29EFA1D7A4B2881A3A1232520DF4FBA2BA642BE3E9DAEE7BC956EABB
            EA2C8BE548078BE5F3749E2F08395B88CBCC6632B3B93A759EB456A6B211CF63
            07DFA2CCF18220A70842E1A54EE7BAE692F4139BE3D8BA794591F48D1A91F534
            36D1F86F1184F9A50F78BD33179694288F8F6DCC1B681231DF5CE2E2E75AF97F
            C2CC3FC2D968BB92C5F29DCD6C34969EAFD76FD379BD1E39C2F78F0B42CE01BB
            A30131CB935BD740258C6345F94CEB19F465EDADD639034DA69117399D7B9536
            F150EE041314BE7A754A452773256CA593C049FC6708825AC41E41C86D6DB36D
            2AF578D220794359ECD14D466A57F5CDE300CE97D1FB89F7D200D9A674062331
            51CB68DCF3417AFAED4D3C9E0D8AA60B21D8EA3B36833E790DAF6BF1B3576C71
            446FCA31BA5DCE46B277F38D82B0AC91C7B3031AD013C9CFF613A4FAAFBF121F
            C306CF09C48EFF0C41D023F68A5E3F686C7EFE2B301739BCA074EDA6CB9CBF6B
            373E3604720B576E2895D20AD9E95B37C1DE1B979EFE405FAF775A692CC74041
            146B2E980594B1E321F6AF62422FB2F73DB174AC26081237FC2708829C8743A7
            33B571387EFBD36E6F04A9BD9BB7D05392891C9ABA493CA06307DFC3C9F4805C
            1C582352C364DCB7DC6A6D92218A45157F0AE069204190B8E13F41105CD922BD
            BEED7D270A1623403673027DC0252B4B672BB36BF754704A70FE16EFA08FBC27
            D7513F969E3EEA65591E164B9F50A5204190B8E13F411003734DEEF67A672F29
            29E9017371236FA271B295BC52E5F75DA9805582E52AE299F560EED5617F114D
            5910969ADAF422B7FBCF98DCA3CA40822071C3594F1054F3770A42FD5B4A4A36
            DA45315979F8269F4AD7490255467B4B28A89BA020ADFC25E7A69765580F5F95
            BE7D6AEA67D379FE0E77153D2F5C41822071C3594F1004E723993B33A1B85879
            5EC0C5BC9EA6CA290A7128CE9573C4170F73A5B45176FB6A1182207D9291D1B2
            B5DBBDD2559583902048DC7056134409CEF57A04E7EBFE2C2B5376393E97D751
            1332B0D8432ED7B050A983E6FF6963C1F9F792CB17E7B071BC343575ED5706C3
            F582CB25C6BAA140A5204190B8E1AC2608FAC0F28DC6F41B6CB61D054E67EC8F
            A9AA2C683B3C9066CECCBCBF8FC733BDE2BBF29E211204891BA21224FFB6DBC8
            B9702171511EBDFB4F41C7828EA7BCDE499F8962DF333FDAE9E33C9D6EE322A3
            B145AADB1DF37E4D950610243B9BB2376D22DEFF10CE042A075109523A712279
            F0D0CA089B1FFF9350DC2C168ACC148407B6399D975255A556FDC0D671D946E3
            E1BB0D860FEA399D07AA2C73A505B6584A49A194E1C389ABE0832F13888CA804
            492081FFCF481024810422204190041288800441124820021204492081084810
            2481042220419004128880FF03707ABD1B9BB479A30000000049454E44AE4260
            82}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 167.417440000000000000
          Top = 188.315090000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 123.165430000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
      end
    end
  end
  object Impreme_media: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'DETALLE'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Collate = False
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43106.789665925900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 307
    Top = 240
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'cajero'
        Value = Null
      end
      item
        Name = 'mensaje1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.236240000000000000
        Top = 307.200000000000000000
        Width = 793.701300000000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        RowCount = 0
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 154.740260000000000000
          Top = 3.779530000000022000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 429.204724410000000000
          Top = 3.338590000000011000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 474.031496060000000000
          Top = 2.779530000000022000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 670.314960630000000000
          Top = 2.645669290000001000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1MARCA: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 3.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'COD_ART'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."COD_ART"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 570.000000000000000000
          Top = 4.078539999999976000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ITBS'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."ITBS"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 288.000000000000000000
        Width = 793.701300000000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 249.448980000000000000
        Top = 393.600000000000000000
        Width = 793.701300000000000000
        object frxDBDataset2POGXITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 28.015770000000090000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 43.133890000000120000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 60.811070000000090000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 28.795300000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 42.574830000000020000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 60.472480000000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 21.133890000000000000
          Top = 84.811069999999970000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de Articulos')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 173.756030000000000000
          Top = 84.811069999999970000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 6.661410000000046000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 7.661410000000046000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 9.661409999999990000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object frxDBDataset1OBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 42.000000000000000000
          Top = 18.928879999999990000
          Width = 395.370130000000000000
          Height = 51.897650000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object mensaje1: TfrxMemoView
          AllowVectorExport = True
          Left = 514.000000000000000000
          Top = 90.928879999999990000
          Width = 250.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[mensaje1]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 209.110390000000000000
        Top = 19.200000000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 600.764070000000000000
          Top = 129.944960000000000000
          Width = 340.157700000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 662.299630000000000000
          Top = 24.440940000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 666.079160000000000000
          Top = 65.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 573.370440000000000000
          Top = 63.133890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha           ')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 46.015770000000000000
          Top = 96.252010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 46.015770000000000000
          Top = 116.149660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 44.795300000000000000
          Top = 132.267780000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 129.826840000000000000
          Top = 147.724490000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 45.015770000000000000
          Top = 147.724490000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC Cliente  :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 188.992270000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 208.110390000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 154.740260000000000000
          Top = 190.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 426.205010000000000000
          Top = 190.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 474.031850000000000000
          Top = 190.212740000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 670.315400000000000000
          Top = 190.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 189.551330000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Referencia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 572.370440000000000000
          Top = 22.440940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 44.133889999999980000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object frxDBDataset2ROTULO: TfrxMemoView
          AllowVectorExport = True
          Left = 572.488560000000000000
          Top = 91.022139999999990000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."TIPO"]')
          ParentFont = False
        end
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 33.000000000000000000
          Top = 13.102350000000000000
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 35.000000000000000000
          Top = 36.102349999999990000
          Width = 400.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 63.000000000000000000
          Top = 60.102350000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 211.000000000000000000
          Top = 59.102350000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 38.000000000000000000
          Top = 60.102350000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 176.000000000000000000
          Top = 60.102350000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 565.000000000000000000
          Top = 190.102350000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Itbs')
          ParentFont = False
        end
        object frxDBDataset1NOMBRECLIENTE_PRN: TfrxMemoView
          AllowVectorExport = True
          Left = 131.000000000000000000
          Top = 96.102350000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object frxDBDataset1NCF_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 169.800000000000000000
          Top = 168.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NCF_NOMBRE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."NCF_NOMBRE"]')
          ParentFont = False
        end
        object frxDBDataset1NCF: TfrxMemoView
          AllowVectorExport = True
          Left = 581.800000000000000000
          Top = 168.102350000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."NCF"]')
          ParentFont = False
        end
        object frxDBDataset1NOMBRES_EMP: TfrxMemoView
          AllowVectorExport = True
          Left = 133.000000000000000000
          Top = 114.102350000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'MASTER'
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRES_EMP"]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 663.000000000000000000
          Top = 45.102350000000000000
          Width = 87.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 133.000000000000000000
          Top = 132.102350000000000000
          Width = 281.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[cajero]')
        end
      end
    end
  end
  object ImprimeM: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'DETALLE'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Collate = False
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 44491.549675254630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 248
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end
      item
        DataSet = FAntiguedad
        DataSetName = 'FRAntiguedad'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'cajero'
        Value = Null
      end
      item
        Name = 'mensaje1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.058000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.236240000000000000
        Top = 307.200000000000000000
        Width = 793.920512740000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        KeepChild = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 139.606370000000000000
          Top = 0.779530000000023000
          Width = 301.153000000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 487.031496060000000000
          Top = 0.779530000000023000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 677.314960630000000000
          Top = 0.645669290000001000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1MARCA: TfrxMemoView
          AllowVectorExport = True
          Left = 63.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'COD_ART'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."COD_ART"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 583.000000000000000000
          Top = 0.078539999999975400
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ITBS'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."ITBS"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 443.409710000000000000
          Top = 2.000000000000000000
          Width = 40.365430000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataField = 'UNID'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."UNID"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 14.779244410000000000
          Top = 0.779529999999966000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 288.000000000000000000
        Width = 793.920512740000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
        Stretched = True
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 259.048980000000000000
        Top = 441.600000000000000000
        Width = 793.920512740000000000
        object frxDBDataset2POGXITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 42.615770000000100000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 57.733889999999900000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DESCUENTO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 43.395300000000100000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 57.174830000000100000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 22.872480000000000000
          Top = 196.411070000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de Articulos')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 164.156030000000000000
          Top = 196.411070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 6.861409999999980000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 22.261410000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 24.261410000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object mensaje1: TfrxMemoView
          AllowVectorExport = True
          Left = 14.800000000000000000
          Top = 28.728880000000000000
          Width = 451.970130000000000000
          Height = 47.697650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[mensaje1]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 164.600000000000000000
          Top = 11.000000000000000000
          Width = 470.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '**************  ULTIMA LINEA ***************')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 239.400000000000000000
          Width = 769.663080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '!! Gracias por su compra, vuelva pronto !!')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 650.704020000000000000
          Top = 76.800000000000100000
          Width = 104.390600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 533.138590000000000000
          Top = 78.461410000000500000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 531.779530000000000000
          Top = 100.677180000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pago con')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 532.600000000000000000
          Top = 119.574830000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 650.985900000000000000
          Top = 96.677180000000000000
          Width = 102.349660000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."EFECTIVO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 650.985900000000000000
          Top = 119.574830000000000000
          Width = 102.349660000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DEVOLUCION"]')
          ParentFont = False
        end
        object frxDBDataset1OBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 28.718120000000000000
          Top = 134.400000000000000000
          Width = 395.370130000000000000
          Height = 42.297650000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 158.740260000000000000
          Width = 189.278850000000000000
          Height = 18.897650000000000000
          DataField = 'TIPOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."TIPOPAGO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 158.740260000000000000
          Width = 124.422140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Forma de Pago')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 86.400000000000000000
          Width = 220.800000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '________________________________'
            '              DESPACHADO POR: ')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 259.200000000000000000
          Top = 86.400000000000000000
          Width = 220.800000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '________________________________'
            '            RECIBIDO POR: ')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 209.110390000000000000
        Top = 19.200000000000000000
        Width = 793.920512740000000000
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 33.000000000000000000
          Top = 13.102350000000000000
          Width = 736.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 35.000000000000000000
          Top = 32.102350000000000000
          Width = 736.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 490.100990000000000000
          Top = 156.724490000000000000
          Width = 215.433210000000000000
          Height = 33.713420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 124.699630000000000000
          Top = 62.840940000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 685.279160000000000000
          Top = 36.333890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 631.570440000000000000
          Top = 36.333890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha           ')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 35.015770000000000000
          Top = 83.852010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente           :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 36.015770000000000000
          Top = 152.949660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor       :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 38.795300000000000000
          Top = 169.467780000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 124.826840000000000000
          Top = 129.124490000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 35.236240000000000000
          Top = 133.124490000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC Cliente   :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 188.992270000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 208.110390000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 143.606370000000000000
          Top = 190.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 22.779530000000000000
          Top = 188.653680000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 491.031850000000000000
          Top = 190.212740000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 687.315400000000000000
          Top = 190.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 61.456710000000000000
          Top = 189.551330000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Referencia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 34.770440000000000000
          Top = 60.840940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 632.688560000000000000
          Top = 17.333890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object frxDBDataset2ROTULO: TfrxMemoView
          AllowVectorExport = True
          Left = 588.688560000000000000
          Top = 85.622140000000000000
          Width = 125.858380000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."TIPO"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 303.000000000000000000
          Top = 50.502350000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 451.000000000000000000
          Top = 50.502350000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 278.000000000000000000
          Top = 50.502350000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 416.000000000000000000
          Top = 50.502350000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 582.000000000000000000
          Top = 190.102350000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Itbs')
          ParentFont = False
        end
        object frxDBDataset1NOMBRECLIENTE_PRN: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 123.779530000000000000
          Top = 83.702350000000000000
          Width = 359.055350000000000000
          Height = 26.456710000000000000
          StretchMode = smActualHeight
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object frxDBDataset1NCF_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 486.600000000000000000
          Top = 106.102350000000000000
          Width = 285.430180000000000000
          Height = 18.897650000000000000
          DataField = 'NCF_NOMBRE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NCF_NOMBRE"]')
          ParentFont = False
        end
        object frxDBDataset1NCF: TfrxMemoView
          AllowVectorExport = True
          Left = 488.800000000000000000
          Top = 122.302350000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NCF"]')
          ParentFont = False
        end
        object frxDBDataset1NOMBRES_EMP: TfrxMemoView
          AllowVectorExport = True
          Left = 124.000000000000000000
          Top = 150.902350000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRES_EMP"]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 682.200000000000000000
          Top = 16.302350000000000000
          Width = 87.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 123.220470000000000000
          Top = 169.302350000000000000
          Width = 281.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CAJ'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."CAJ"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 36.400000000000000000
          Top = 105.800000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Direcci'#243'n       :')
          ParentFont = False
        end
        object frxDBDataset1DIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 106.800000000000000000
          Width = 288.000000000000000000
          Height = 28.800000000000000000
          DataField = 'DIR'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."DIR"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 489.600000000000000000
          Top = 86.599999999999900000
          Width = 82.544960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CONDICION')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 489.600000000000000000
          Top = 139.000000000000000000
          Width = 119.508720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Venc. NCF')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 615.640940000000000000
          Top = 138.000000000000000000
          Width = 125.858380000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FINAL'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FINAL"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 444.189240000000000000
          Top = 189.976500000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 355.200000000000000000
        Width = 793.920512740000000000
        PrintIfDetailEmpty = True
        RowCount = 0
        object SeriesSERIES: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 64.252010000000000000
          Top = 1.000000000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'SERIES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[series."SERIES"]')
          ParentFont = False
        end
      end
    end
  end
  object ImprimirMC: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'DETALLE'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Collate = False
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 44491.550559027780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 68
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end
      item
        DataSet = FAntiguedad
        DataSetName = 'FRAntiguedad'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'cajero'
        Value = Null
      end
      item
        Name = 'mensaje1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.058000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.236240000000000000
        Top = 307.200000000000000000
        Width = 793.920512740000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1MARCA: TfrxMemoView
          AllowVectorExport = True
          Left = 69.497650000000000000
          Top = 1.000000000000000000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'COD_ART'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 156.206370000000000000
          Top = 1.779530000000000000
          Width = 283.993940000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 24.158774410000000000
          Top = 0.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 677.314960630000000000
          Top = 0.645669290000001000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 580.000000000000000000
          Top = 0.078539999999975400
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ITBS'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."ITBS"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 484.031496060000000000
          Top = 0.179530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."PRECIO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 441.630180000000000000
          Top = 2.000000000000000000
          Width = 40.365430000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataField = 'UNID'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."UNID"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 288.000000000000000000
        Width = 793.920512740000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
        Stretched = True
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 307.048980000000000000
        Top = 393.600000000000000000
        Width = 793.920512740000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 34.211070000000000000
          Top = 172.811070000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de Articulos')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 186.833210000000000000
          Top = 172.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 19.861410000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object mensaje1: TfrxMemoView
          AllowVectorExport = True
          Left = 29.918120000000000000
          Top = 43.728880000000000000
          Width = 451.970130000000000000
          Height = 28.497650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[mensaje1]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 155.000000000000000000
          Top = 30.000000000000000000
          Width = 470.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '**************  ULTIMA LINEA ***************')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 32.277180000000000000
          Top = 195.600000000000000000
          Width = 318.463080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ESTADO PO ANTGUEDAD DE SALDO')
          ParentFont = False
        end
        object FRAntiguedadV0_30: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 235.800000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'V0_30'
          DataSet = FAntiguedad
          DataSetName = 'FRAntiguedad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRAntiguedad."V0_30"]')
          ParentFont = False
        end
        object FRAntiguedadV31_60: TfrxMemoView
          AllowVectorExport = True
          Left = 172.800000000000000000
          Top = 235.800000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'V31_60'
          DataSet = FAntiguedad
          DataSetName = 'FRAntiguedad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRAntiguedad."V31_60"]')
          ParentFont = False
        end
        object FRAntiguedadV61_90: TfrxMemoView
          AllowVectorExport = True
          Left = 278.400000000000000000
          Top = 235.800000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          DataField = 'V61_90'
          DataSet = FAntiguedad
          DataSetName = 'FRAntiguedad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRAntiguedad."V61_90"]')
          ParentFont = False
        end
        object FRAntiguedadV91_120: TfrxMemoView
          AllowVectorExport = True
          Left = 393.600000000000000000
          Top = 235.800000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'V91_120'
          DataSet = FAntiguedad
          DataSetName = 'FRAntiguedad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRAntiguedad."V91_120"]')
          ParentFont = False
        end
        object FRAntiguedadV120: TfrxMemoView
          AllowVectorExport = True
          Left = 527.000000000000000000
          Top = 235.800000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'V120'
          DataSet = FAntiguedad
          DataSetName = 'FRAntiguedad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRAntiguedad."V120"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 40.400000000000000000
          Top = 218.600000000000000000
          Width = 97.663080000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'De 0 a 30')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 172.800000000000000000
          Top = 219.200000000000000000
          Width = 97.663080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'De 31 a 60')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 279.400000000000000000
          Top = 219.600000000000000000
          Width = 97.663080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'De 61 a 90')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 393.600000000000000000
          Top = 218.600000000000000000
          Width = 97.663080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'De 91 a 120')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 218.600000000000000000
          Width = 97.663080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'De 120 a M'#225's')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 284.400000000000000000
          Width = 769.663080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '!! Gracias por su compra, vuelva pronto !!')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 652.800000000000000000
          Top = 216.600000000000000000
          Width = 116.863080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Balance Actual')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 652.800000000000000000
          Top = 235.800000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'ACTUAL'
          DataSet = FAntiguedad
          DataSetName = 'FRAntiguedad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FRAntiguedad."ACTUAL"]')
          ParentFont = False
        end
        object frxDBDataset1OBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 28.718120000000000000
          Top = 67.200000000000000000
          Width = 395.370130000000000000
          Height = 42.297650000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object frxDBDataset2POGXITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 675.879160000000000000
          Top = 65.354360000000400000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 675.879160000000000000
          Top = 83.472480000000500000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 675.879160000000000000
          Top = 101.149660000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'ABONO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."ABONO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 538.713730000000000000
          Top = 69.133890000000200000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 538.713730000000000000
          Top = 82.913420000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 538.713730000000000000
          Top = 100.811070000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Abono')
          ParentFont = False
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 675.879160000000000000
          Top = 48.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 538.713730000000000000
          Top = 50.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 674.765430000000000000
          Top = 122.077180000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'PENDIENTE'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."PENDIENTE"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 121.738590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pendiente')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 28.800000000000000000
          Top = 124.800000000000000000
          Width = 220.800000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '________________________________'
            '              DESPACHADO POR: ')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 316.800000000000000000
          Top = 124.800000000000000000
          Width = 220.800000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '________________________________'
            '            RECIBIDO POR: ')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 209.110390000000000000
        Top = 19.200000000000000000
        Width = 793.920512740000000000
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 33.000000000000000000
          Top = 13.102350000000000000
          Width = 736.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 35.000000000000000000
          Top = 32.102350000000000000
          Width = 736.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 626.164070000000000000
          Top = 157.944960000000000000
          Width = 340.157700000000000000
          Height = 33.713420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 124.699630000000000000
          Top = 62.840940000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 685.279160000000000000
          Top = 36.333890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 631.570440000000000000
          Top = 36.333890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha           ')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 35.015770000000000000
          Top = 83.852010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente          :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 37.015770000000000000
          Top = 154.949660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor      :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 38.795300000000000000
          Top = 169.467780000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 123.826840000000000000
          Top = 139.124490000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 39.015770000000000000
          Top = 137.124490000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC Cliente  :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 188.992270000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 208.110390000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 188.181200000000000000
          Top = 190.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 18.559060000000000000
          Top = 190.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 491.031850000000000000
          Top = 190.212740000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 687.315400000000000000
          Top = 190.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 59.897650000000000000
          Top = 189.551330000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Referencia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 34.770440000000000000
          Top = 60.840940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura  :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 632.688560000000000000
          Top = 17.333890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object frxDBDataset2ROTULO: TfrxMemoView
          AllowVectorExport = True
          Left = 588.688560000000000000
          Top = 85.622140000000000000
          Width = 125.858380000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."TIPO"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 303.000000000000000000
          Top = 50.502350000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 451.000000000000000000
          Top = 50.502350000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 278.000000000000000000
          Top = 50.502350000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 416.000000000000000000
          Top = 50.502350000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 582.000000000000000000
          Top = 190.102350000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Itbs')
          ParentFont = False
        end
        object frxDBDataset1NOMBRECLIENTE_PRN: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 120.000000000000000000
          Top = 83.702350000000000000
          Width = 355.275820000000000000
          Height = 26.456710000000000000
          StretchMode = smActualHeight
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object frxDBDataset1NCF_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 486.600000000000000000
          Top = 106.102350000000000000
          Width = 285.430180000000000000
          Height = 18.897650000000000000
          DataField = 'NCF_NOMBRE'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NCF_NOMBRE"]')
          ParentFont = False
        end
        object frxDBDataset1NCF: TfrxMemoView
          AllowVectorExport = True
          Left = 488.800000000000000000
          Top = 122.302350000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NCF"]')
          ParentFont = False
        end
        object frxDBDataset1NOMBRES_EMP: TfrxMemoView
          AllowVectorExport = True
          Left = 124.000000000000000000
          Top = 152.902350000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRES_EMP"]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 682.200000000000000000
          Top = 16.302350000000000000
          Width = 87.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 127.000000000000000000
          Top = 169.302350000000000000
          Width = 281.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CAJ'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."CAJ"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 36.400000000000000000
          Top = 104.800000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Direcci'#243'n      :')
          ParentFont = False
        end
        object frxDBDataset1DIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 107.800000000000000000
          Width = 288.000000000000000000
          Height = 28.800000000000000000
          DataField = 'DIR'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."DIR"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 489.600000000000000000
          Top = 86.600000000000000000
          Width = 82.544960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CONDICION')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 465.143290000000000000
          Top = 139.000000000000000000
          Width = 176.201670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha de Vencimiento NCF')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 638.200000000000000000
          Top = 140.000000000000000000
          Width = 125.858380000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FINAL'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FINAL"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 442.409710000000000000
          Top = 189.976500000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
      end
    end
  end
  object FAntiguedad: TfrxDBDataset
    UserName = 'FRAntiguedad'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLIENTEID=CLIENTEID'
      'PORVENCER=PORVENCER'
      'V0_30=V0_30'
      'V31_60=V31_60'
      'V61_90=V61_90'
      'V91_120=V91_120'
      'V120=V120'
      'ACTUAL=ACTUAL')
    DataSet = Antiguedad
    BCDToCurrency = False
    Left = 184
    Top = 192
  end
  object Antiguedad: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'SELECT a.clienteid,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AN' +
        'D ( a.fecha_fac is not null), a.pendiente, 0 )) AS PORVENCER,'
      
        'sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AN' +
        'D DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fe' +
        'chavencimiento is null,(a.pendiente),0)) AS V0_30,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendi' +
        'ente),0)) AS V31_60,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendi' +
        'ente),0)) AS V61_90,'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pend' +
        'iente),0)) AS V91_120,'
      
        'sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,' +
        '(a.pendiente),0)) as v120,'
      ''
      '('
      ''
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento, current_date  )< 0 AN' +
        'D ( a.fecha_fac is not null), a.pendiente, 0 )) +'
      
        'sum(IIF( (DATEDIFF(DAY, a.fechavencimiento, current_date )>=0 AN' +
        'D DATEDIFF( DAY, a.fechavencimiento, current_date )<=30) OR a.fe' +
        'chavencimiento is null,(a.pendiente),0)) +'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=31 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=60, (a.pendi' +
        'ente),0)) +'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=61 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=90, (a.pendi' +
        'ente),0))  +'
      
        'sum(IIF( DATEDIFF(DAY, a.fechavencimiento,current_date )>=91 AND' +
        ' DATEDIFF( DAY, a.fechavencimiento, current_date )<=120, (a.pend' +
        'iente),0)) +'
      
        'sum(IIF(  DATEDIFF(DAY, a.fechavencimiento,current_date )>=121 ,' +
        '(a.pendiente),0))'
      ''
      ''
      ') as actual'
      ''
      'from master_fact a'
      'where a.situacion  ='#39'IMPRESA'#39
      'and a.condicion    ='#39'ACTIVA'#39
      'AND A.ROTULO       ='#39'FACTURACION'#39
      'and a.tipo         ='#39'CREDITO'#39
      'and a.quees <>'#39'SALDADA'#39
      ''
      'group by a.clienteid')
    Params = <>
    Left = 312
    Top = 16
    object AntiguedadCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object AntiguedadPORVENCER: TExtendedField
      FieldName = 'PORVENCER'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV0_30: TExtendedField
      FieldName = 'V0_30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV31_60: TExtendedField
      FieldName = 'V31_60'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV61_90: TExtendedField
      FieldName = 'V61_90'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV91_120: TExtendedField
      FieldName = 'V91_120'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadV120: TExtendedField
      FieldName = 'V120'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object AntiguedadACTUAL: TExtendedField
      FieldName = 'ACTUAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object Qseries: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from man_series')
    Params = <>
    Left = 304
    Top = 352
    object QseriesCOD_SERIES: TIntegerField
      FieldName = 'COD_SERIES'
      Required = True
    end
    object QseriesCOD_ARTI: TIntegerField
      FieldName = 'COD_ARTI'
    end
    object QseriesSERIES: TWideStringField
      FieldName = 'SERIES'
      Size = 30
    end
    object QseriesESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QseriesNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
    end
    object QseriesIDDETALLE: TIntegerField
      FieldName = 'IDDETALLE'
    end
  end
  object FrxSeries: TfrxDBDataset
    UserName = 'FrxSeries'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_SERIES=COD_SERIES'
      'COD_ARTI=COD_ARTI'
      'SERIES=SERIES'
      'ESTADO=ESTADO'
      'NO_FACT=NO_FACT'
      'IDDETALLE=IDDETALLE'
      'PRECIO=PRECIO'
      'ITBS=ITBS'
      'TOTAL=TOTAL')
    DataSet = datos.Series
    BCDToCurrency = False
    Left = 128
    Top = 140
  end
  object Num_Comprobante: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(NCF_CONSUMIDORF, 0) from RDB$DATABASE')
    Params = <>
    Left = 416
    Top = 40
    object Num_ComprobanteGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object NumNCF_Fiscal: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_NCF_USO_CF, 0) from RDB$DATABASE')
    Params = <>
    Left = 504
    Top = 64
    object NumNCF_FiscalGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object NumNCF: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_NCF_USO, 0) from RDB$DATABASE')
    Params = <>
    Left = 360
    Top = 8
    object NumNCFGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object NumNCF_GOB: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_NCF_GOB, 0) from RDB$DATABASE')
    Params = <>
    Left = 40
    Top = 128
    object NumNCF_GOBGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object prncopia: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'DETALLE'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43836.475288645830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 236
    Top = 64
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = detalle
        DataSetName = 'DETALLE'
      end
      item
        DataSet = master
        DataSetName = 'MASTER'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 88.900000000000000000
      PaperHeight = 254.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 36.795300000000000000
        Top = 470.400000000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'DETALLE'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 170.362400000000000000
          Top = 15.897650000000000000
          Width = 88.667780000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 43.195300000000000000
          Width = 260.182870000000000000
          Height = 15.118120000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DETALLE."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 16.579530000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."CANTIDAD"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 96.201670000000000000
          Top = 17.897650000000000000
          Width = 69.770130000000000000
          Height = 18.897650000000000000
          DataField = 'ITBS'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."ITBS"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 14.533890000000000000
          Top = 17.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'DETALLE'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DETALLE."PRECIO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 451.200000000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'MASTER'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 320.544960000000000000
        Top = 566.400000000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 13.379530000000000000
          Top = 3.779530000000020000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 184.392270000000000000
          Top = 5.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 184.392270000000000000
          Top = 23.795300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 185.392270000000000000
          Top = 59.272480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 78.426840000000000000
          Top = 7.000000000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 80.026840000000000000
          Top = 23.636240000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 77.426840000000000000
          Top = 60.933890000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 25.727520000000000000
          Top = 129.683550000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 132.990600000000000000
          Top = 129.683550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 219.176500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 27.540260000000000000
          Top = 249.847310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."HORA"]')
          ParentFont = False
        end
        object frxDBDataset1TIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 31.463080000000000000
          Top = 150.261410000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."TIPO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 25.574830000000000000
          Top = 182.744960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       ')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 101.343290000000000000
          Top = 180.886580000000000000
          Width = 185.877180000000000000
          Height = 19.200000000000000000
          DataField = 'CAJ'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."CAJ"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 78.795300000000000000
          Top = 40.620470000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 192.995300000000000000
          Top = 39.620470000000000000
          Width = 65.990600000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."POGXITBS"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 27.379530000000000000
          Top = 220.278850000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GRACIAS POR PREFERIRNOS !!!')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 22.195300000000000000
          Top = 199.200000000000000000
          Width = 259.200000000000000000
          Height = 17.461410000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."OBSERVACIONES"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 76.067780000000000000
          Top = 83.149660000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 72.288250000000000000
          Top = 102.047310000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cambio')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 185.674150000000000000
          Top = 83.149660000000000000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."EFECTIVO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 185.674150000000000000
          Top = 102.047310000000000000
          Width = 73.549660000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
          DataSet = master
          DataSetName = 'MASTER'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[MASTER."DEVOLUCION"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 368.092950000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 100.447310000000000000
          Top = 275.113420000000000000
          Width = 85.266110000000000000
          Height = 16.856710000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 24.215770000000000000
          Top = 276.113420000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 98.365430000000000000
          Top = 295.129190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 24.774830000000000000
          Top = 316.704020000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   ')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 98.329190000000000000
          Top = 315.704020000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 348.674150000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 25.477180000000000000
          Top = 349.894620000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 58.744960000000000000
          Top = 349.894620000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 207.100990000000000000
          Top = 348.894620000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 367.281880000000000000
          Width = 321.260050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 212.105690000000000000
          Top = 252.683550000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 103.944960000000000000
          Top = 252.363760000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 24.185900000000000000
          Top = 252.784230000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC   ')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 157.033210000000000000
          Top = 349.130860000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 0.261410000000000000
          Top = 216.266110000000000000
          Width = 328.138590000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = -9.036240000000000000
          Top = 215.045640000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 24.181102360000000000
          Top = 295.356030000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object CONFDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 169.897650000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object CONFTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 89.411070000000000000
          Top = 191.133890000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 102.954360000000000000
          Top = 9.600000000000000000
          Width = 288.000000000000000000
          Height = 115.200000000000000000
          Frame.Typ = []
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000B0
            000000B9080200000007DA22C10000000467414D410000B1106B4CEFD0000000
            206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
            E5000019CC733C85770000010F6943435069636D000028CF636060E2C949CE2D
            66126060C8CD2B290A72775288888C5260BFC3C0C820C9C0CCA0C96099985C5C
            E01810E0C380137CBB06540D0497754166319006B852528B9381F41F208E4B2E
            282A6160608C01B2B9CB4B0A40EC0C205B24291BCCAE01B18B800E04B22780D8
            E910F612B01A087B07584D489033907D06C8764847622721B1A1F6820073B211
            03D541496A450988767362600085297A5821C498C580D89881816909422C7F11
            0383C557A0F8048458D24C0686EDAD0C0C12B710622A0B1818F85B1818B69D4F
            2E2D2A835A2D05C4A7194F3227B34EE2C8E6FE26602F1A286DA2F85173829184
            F52437D6C0F2D8B7D90555AC9D1B67D5ACC9DC5F7BF9F04B83FFFF01DE41537D
            A7A0FC6E000000097048597300000EC200000EC20115284A800000358D494441
            54785EED7D89531447DFFFF3C7FCAECD53F598E72DAB2829CB2A4B52269A1893
            688CBC06CBC4038D4AC50BA3C6235EF1040544454191121401CF7882B722E2C1
            7DDF37CBBBD43ECB6ED59EFC3EBDBDCCCECEF4CCCECCCEA2ABD9DAB210BA7BBA
            BFDFCF747FEFFEC7E8DF9FBF29C0A3C03FFEA6C6DF14E053E06F40FC8D87000A
            4412206C265373C9FD9AA22B6D8F1E8F0C0EFECDC97050206200F160DF81E409
            FF3E6C98C07DB3BF9DFB2AEBACD36209075D3EDA312303108F0F27F3A1C0FF39
            2D2ABAF4F849B7C3F1D1B250DF85470020AC43A62313264A0182FEFEF4E733BB
            5E96EB4B9A8F73B40800445541A13C1AE85F93FE39A12C23E3E3E4A28EAB8E00
            4094A69F500208DAE6EED61D3A52E7231C2A0200D1FBB6423920D0F2FE9E7D1F
            2123F55A720400024B2DDEB95B15262AF22EEA45A08F6D9CC80004B87277DB0E
            E59880103A5053FBB1F15297F5460C20B0DAAA4B85A913272984C59959DF38CC
            96BEB71575F9452F538E3FD973A064C72E9C268F0E1E86F5A2F1F65D737BBB2E
            14FCC00689244080F496BEFEEB6BD6257DE2374FC9E0E386616A9B615EBBE107
            EE5B67F8AECCF0D52D434CB661529261C2B149936FAC4B6CBC7DC7E3747E607C
            D5BC9C0803045D677F5575C192F8A05B458A614293612E1F10FC9FEB0DDFDD36
            C41C3310EB677AF494E7C78EBBAC36CD74FC603A46242028F5BBCB5F5D885B24
            0F8B9B86695280A0BF6F317C8F0DE38857653D392506BE920F86B5DA1612C180
            2027C8991B6513669F3248DA31D30C9FB6069E1A4C7C541ABEC9181BE4E1FE83
            DA48F961F48A5440788CC3FD713B287721283C347C0EDE33778BA78619F29B04
            FD6BB3612E040B3AC25FEB377E18DCD5B08A880484ABA5A73B66A580CD35866F
            B9B79C8F8C0B86C94A008136D84B384C94ECDAA3819A1F4097C80384BBB3BF6B
            4A3C93C78D86B9624C403E68FC6C59DB8C55ED53E33B26FCB73C3820849E1C3B
            3BEA6FDCFC0018AC7609910608ABA3F7EB75324C856299EE551CF8DF9E57AF7D
            7471799C954DC349B95290C2C81586D9C9DEEE6951933FC2309C08038469E769
            1934400E805A5114B74460A878792A53F8A2B83C969C5B9D513F3347BB6388A1
            78BAB17683DA372CD2DB4712205C4D5D1DFF8C9502C433C3CC939F4637DD2B06
            4BEEEDD8C5DF21A4F84A24D3857F880784944A8F1E00ABAFB22AD279AC6AFE91
            0488A18D695268B86B8841805DD78B32BA78C4D41CFDD4AF8B667F334792286E
            8F71ED11F1B0A586991452575625A82268A4378E1C40982C1D13163001F1C8F0
            0538F7E65C0E9F1977B66CE33689947F47C9F36920FE4FF1C89986281A7763E9
            ED8B74362B9F7FC400C272F11E130D90228F1A26E4CCFD41B0E6AEB297FC5303
            8E2E39A28CD87A67AD158C0FDB061D812182282770A4B58C1840305F62B0B0C0
            30053C6BBA7B4F4C797828384C983B3AE559E3AA6B17EC40B06A5393F6C5B845
            91C656EDF38D184030358246C31CA888C7A2278F7A3C621A5C5D95C00162B0AE
            DE65B59A7B7A90DC2145ADE1E43CC12671DE108D11105D31EAFE58DCA1910108
            4FAF91795ED05DFDDAAF6B993C7E793A8B03C49D89338B0D31458629B0520040
            D03BFCC609AEB3C5DA15BD98FF204EFF1C6A6ED6FED24554CFC80084E3551D13
            106030588E285C31CDA152BE895BC7010261109CE3E3B1E10BEAF8B8B5698B20
            12C2B4EF2CFF41E8454740AE5844B155FB64230310B6476F9880A0AE87AAFC02
            01019CCDDDDD53575419BEE100F1720C10749C7AC31C6A69288A5FC1EFEBAC6D
            E33FA8DAF02D1DA1EEFA5FDA691C513D231B105433AC2E2C0AA0B9CBD5332301
            7C8554C801E29561960052B586EF10418306E55967F8DDF9A74683618E0F10D7
            AE47145BB54F363200E1AC6C66EE1067BD3B0464053E01ACB74BB9C6544DC0F7
            B5E16BF1083067E14FE993A78CBADCDC089C571DEDE12DA3DD9B8B4BB4D338A2
            7A4606204687FFC30444BE613211057EDBC2A7B939BD8036C6864FDD54F876E5
            5DED99BE5A30087C9B88ACC45F3B4B5F70231837A470CDE052A7DD3F1E037684
            00627454CC4EB0ADC4FB8A23F48D0F0878AD28470B3EF1DB218C8D4DAEC64E31
            AA68B415DFCA39B4399D6B566E9885BFC2A3F1F1E498470C204C7BB2C4EC44A0
            2C7DC55BEE3FE030E1E93775FE571C1AB74EFC910B78E9AFAE410331AA72BD96
            06BE9EC2776D9418A6E3AF9933BF8EA85D3FA4C9460C20A4C4086AA93C3B7B8E
            C7E5B71DD99F54744D5E0A4CB44D5972E6EB6FC151AA5EF6CDDF22401505C4EB
            B3E7FC3204CFFF498FA492DD7B43A27144758E184080AAFD71DBC59B0414011A
            4A7F6FC74E81AE011D72D43CC2FF65778C508CA07A0ADFCCC0C5CEC0099EEA35
            57C02D12513C0D69B2910408043B757C325F8C894AC36CCED0E4B6DBA5E8016F
            85A02F8228A186C032CD89089EDE21AE4DA9E1CB8FEDBC00E922091098AEF950
            0E53DD80CF33CFBBBD67C44C7F9D9D63E9ED15C0C255DFD13975B9A02F0D7AB8
            96E0B77C5BF28BB936D49121F0AA87F4F64542E70803C4A8DB33B0742F131354
            CFBC6788C1C10FFB44EEE4E9D7E7C415C7C63F9BBDA462123BCE2AC7108D7007
            6343A35880786B984DE0352DE663CBF28B34408075567BFFA29D529850FE7B7A
            22A07A158706E2011F3B928015FC1515EF64DE6A8FD9E2329A466D1F5479AB08
            040458E47299B66728E7BDB825ECD6103BE01FE7FBCDB9900BE4F6000D058B97
            89D1E01EB60CE6DC684DD857F5F9B2D7513FD06FF5D72BBB93B3093822FF1399
            80F0D2DDF6E0B5586B50821204DA1F374CBCBF773F3FCA61E4DA63DA176A0BB0
            0217798020E219B5BDAA1F3C727130E9E2D0B1CBF48B9F3BD725577FB19CC2A2
            62CA42F37D5F5067E4022382014188EEF6580A4AFABEDFA40407680327E75F9F
            4CBBBC7405F2C7F93C83C8D9F1E98FC46E619877CE1005C1A2FDE9335F03B7C7
            56DE3074FC0A8703F10FADCB76534CBC898E1D795B1FB968883C2D438AD6EEB6
            5E4BD68DC1D5877A3E4FE8F8175F849CD7F8AF796F267EFF2C66C193951BAB2E
            5E1247CCC257DE16B59042EABA612AB15365FBE2751DF59DA6AC9B3250E0FED4
            B4702BC544C3C2CD7F03E2FDA300426A8DE65153F022B7E63BCF5B27F800440D
            D53E33B6C56AB9F64C0914681BE391FCB7937FA49870F60CBC7F14513AA3301F
            1936A7B3A9DBFABCC672F385B9F09139AF64F8FC3DFC6BBEF4D072E3F948C96B
            DBCB7A6763B77B6098EF80563AF7D0DA79862D4D0B3773670DC2A8E016799971
            1AA362CEA68C1BCAD1405B36CCDB4001617919C1B93DE10204F661F395A7A674
            B9A3974F71B41CCEB96BB95D8603DBD53930EA086350ABC73CD29478A0F99FFE
            6A43D81B8E4E985877FD06D030F2B0422D1468FB96C57F5040582B1B42C3EABB
            ECAD3F20DC7D26F385126D34E57AF9F071EF95BDAA95EC1F3A7D1C3D03B57189
            2D9FF8A10029F29A616AE68CAF10963D6A739A8B1E6B9E79F3A26D54AE1C1D89
            E0D2443A03C2FEB659F9AEA09CF4A6F4CBC3E7EE586EBFB057B6B8BA06472D9A
            286E73D44FF89EAF8FC01A91FD493412419D23237083618B523E2571CBDAAF57
            0310CDAB831496F018CDB6578D965B653837F1E6601FB53EAE74B5F7EB84F950
            87D11310B617B5A11054555F13E4B89442635AA131BDD078A2C878BC6830BD70
            302D7F20396FE0D0F98103E7070FE51A93F3070FE60E9EF2591B9DDD031C1AB0
            31C0C89DFBED3C1A8CEF191C36652AD226A426397828EFCDA4582240BC228117
            CC8FA3A113F293D4089880FD4D53A8FC0CB9BF6E808086A68AA3E3D9189CA084
            AA5BB3E7D5A7DF3D8EFAAE64F5868E67CFE92F5D1D03A68CEB21CEA7F9A7ED40
            43EBC6C34C8E402A8234ADE41168E6193487CC56ED03E804088B2D749A2AA197
            96366945EEDE21290A391BBA4CC7AF3287EDDF7BB67DF58196A53B7B769D1A4A
            2B9279345A4274A89EB512E2AAF0410EA7E5CE4B55D3369DBCE6EA366A676968
            3DF50184E54EB9AA35D3C68349173AD71F852C56F74D42D5674BDE4E8EC3AEFB
            266A3EFEC5CF95D316D7CCFCA5EEDB5F1B637F6BFE7947DB2F7F76AC4DEEDE9C
            DEB72B132782F168419027A61661FC81A43CEB4BC91AC7904898124F57622A1E
            5DF9D9E2FE33577C3CB6DA4D27D8B831A614547F115F317591ADB15DC00B0071
            F8EC6D0D9481D2AB514E0A0D0DE8AD0720B03D28562F2975C057701ABCE7FC43
            821FE0176858BCB563E7F1BE8C7CE3A53BA65B4F86EF3D373F7C697EFAC6F2A2
            D25256E5FB96565A9E55906F6995B5ACC6FABADE5EDFEEEE1B52E281B495D589
            59D5FBC7A99A2F7FC1C4BAF69FF65878AFBBCBCD06445A51FDBC0D6FA7C459CA
            036CE1A0ACBDA2456AEF51021153CE9D9099AB65001D0001CD42C90A7DBBC2A1
            3C40410A07D55FADE83D966BAD6A1A65E4EE6A599E541FB1B1015B4E53DC5640
            A1E6DB84913775828E30A031D7882E040D2F2A05ED47EEBF514E1376CBB4A2E1
            BB3E2947CF95071B4B074058FE2A55B8F88183B995D37E66A2011E646C03C166
            ABC7DF3DA350F90413EEDB9D55F5D9524CAC6D53B2D88A80139DF9AEE3B0C349
            21448FD3094D522141E49B352ED88C900B3DD6AC620C1D0061CE2D56B87EC80A
            4C3410E17C7CC24CEC4E73A1D0F4D4B66ABF576A59602CBC2BA69CBBDFC43063
            A71535C56DA99A116FAB6B0DE862B59B2FDE57488DA0CD2039F59D12A6ADAAE0
            ADA6A63A006238FB4ED0B5A141FF9FD94C34B4FD96A469E6AA3B794C96E17301
            A627E3D14BD401513573B9B59A610380BAC8D09E520A1BE625D6CE5BEBEC0DBC
            3B74D8A290144AC8853650706ABE4B50BDCED03AE8000885EF44F7A663624054
            7EB6C463B186B60445BDE15B11B0B67FDFB9EACFE389C3FAE7DF99C14E4C1D04
            4131B5B356B7ACDD2F3859605F379DFE4B21A71536838082E9393AC7B5C2950E
            80B0DC55A473F6ED3923060422CF14F13394466ECFC8C3B7021EF46C3D09CD16
            F369DF9EC670B4BA5C4CE3019600F5B8F7F805C174C84672E25A50360F1EBE00
            14424D0DDA9236A027EC70716928AB57DB57074028B75142B91760C274E391DA
            19AB6AEFEE191ACE119A08DB130E518307CC0C2CA1E17F984E8DCE0D29D533E2
            CDCFDE0ABA386ADA4CC7A49DBA6945DD5B8EC394523165111755056954DED245
            00915644216BCCBFAD6AC92136D60110886353B85BF6ED39CB459150EA0C1532
            8A8585B8245FF711BBA5F895D0409256447D9215D37E323F19AB77CC3DCF338A
            D00D864D25B51001518DF13B5C03428BA7E58E5061F1BFFDA9851DBF1EC68EC2
            949C600395DF277AB665849D442C42EB01081861149B22FA7665C104C9D188A8
            79BA7F2C56F80FC576248890F573D6E2D1B5DFAF7174083379885551B4975059
            B8E6AB95FD9945C2693A9DA65392C744E7BA23520A365D3B54CA603AE726DAD2
            525AA13B856406D407107880B9E0A1C2A3118C6959B68BEE877001882DBE1AD7
            EF20D159887B639A4D07F6E75011B2E38F74A18A6B73602F614E1E874B7DEC06
            5B7D9B604AB0870E265F6076E9DD79BAE6CB951CE2EB1724F6A4E59A1F953BDA
            7B5C0326D8DC7A4F5C842D0B9678197241747D1BBD80D287E11FD1482045DD74
            03046CEFA6AC5B0A31816690ADE0C880FE563F6F1D28A568B282466E8F67C80C
            EF94F56935E2F34CD281D19D1B8E027F555F2C130B682480E324E345870DADFE
            BB353DA9E74745F7B30DE5DC1C4A2914AF14DEF6A6B8DFA93D1E7E909ED41C80
            80B92E6B4503DC3132B46A59E20BBE6A5D3FDED7FBE807084415982CDAA20A8C
            872F98B26F23C4D2FAAC1AC1238EEA3608AA78DDE917CE6B476D3B9440781F46
            1E5520CC0EEC87D348890385F0F5FBF56052C7AEE302AB9FB3B967F80C1BC138
            FB1BE23659EB5A04EC7476F6F7EFCB6632B2EBB7342A36C2FA6EBC784B3E04D0
            5ED92A830660051B03D91EA2E60B0D5F5ADE1B757DF4040479B2D9AADC70A97C
            3BD1D012EF2B0C3BB03F362EDB2E602D62AE8673D9D109500B61AA1A3C7F43EC
            4C19CABD65E465E97053823249AD5B040A97EE048F1626A1027211BC54D0C1B7
            FB50963A66EAD15A6F40604ED0FBEFBF51F2FA6A60B3922E085EA2320A5224E0
            1DE55389C47B5E64C72CE10843AFF6CD47C4E797A3B5A76F4F16F3D1F0C8574C
            89836FB6FF74A1C2C06073C123995574AC4DA268A88FFB4DE1807AC0C03F4618
            00E11D9C90FED20325FCD3AD8D57E38750F2363AB665CD3E813FDADD6D345F90
            F4B92000A271F136B193130B31665EC51E209E24A454188EE861E41E1A56C815
            CB3DB6F44AC7EFDB7D86CA92F0926894AB14CE43BA59B800419F88D851CB557D
            5C7F52B8C19B8DE80A4873784DA9F75CE06270B5F5414091EA0EE36363DC96A1
            2B8CAA83D6B70DD039191D530A5BE377E3986F58FCBB58CE90E188F549959CE8
            0057F054E20A86406A6FE90A99B31A07082F207C93B2D82C25AF060E9E371EB9
            A4CB7E80A1BA361D6B59B2B3F6EB043006EF53E7BE0C46884A759B2943D25400
            79B3F9A76D7D199746EDA27C7E8BB5FFE805A68D199B106C4D409EE9A6BA62C7
            D6A7B26838709E9AB08086F11724F9D81917408C3D10EA56C7D65488603017B6
            FDB20F6A67CFEF27A0B84394C3C10F3110260AFA85220EAEE305EDDD9E01011E
            623FD8DF307F23547C6AEBC4BF301DF6651458ABFCE53E7CCFB139C4CE0B3E10
            3178EBD25D70A320B75FFC1E0D5F7E80886D317031C9FAB9EB60E224066F9579
            4450A064DE0450007115542CD5B8378CD8CC0FCB21D292F4F3D0B242C615103E
            EA8FD84C371EB66F4BAD9E25746D30ADBCF49715531742CE825969F0C24D0202
            5EED598EA9885D18BE508C087DC9F32539BF6DC5DEEE43675C830CCB87ADA615
            286418188EE4233401C263CFD173AA23561C4EB3ECA1091B365532EB16246A91
            1B1C4E18BE60E9E2485719F3F3F09DB1D475F5E7C6BB00046F967847913F6FBA
            FE6020FB2A1686B7B6EB5016FE8547112FE250D13DF383326B4D7310A9CDEEB4
            3C783D942E8903F018BB42DB8A3F7B53CEBBFF8711E4EE1E340DA65D1A4A138D
            9056D49E70B072EA4F1DBB4F68E016EC6682080C3EDA06104D38A661B66D3EC2
            38B982B1135E7BC0088E3A18C27B779C4214200EE5AEDF8ED57EF98B661FE93B
            0644B025CBFEDDE6F8CFBD97C6F42279CF21EC3C6D2BFF1C40FC3433F0C2EE34
            65B32D8F10531057D7B2EE80BDB55BC33C8917946503259800CE561FA0C67BBC
            DCC03D373E36BF965FFFC476886D033E175298A68F1D928FE5D4CEFD1533845C
            2CDCD5D28A6083D1306774893C40381A3A4CB9B751CC25A807B96F6766FBDA43
            389ED8C622B7C77CE3D9D051869C8BD86BE4E521EC5B63F50FAB4326CE14AF32
            577406EA315F27826F1D3880F38FC8582BF7217B187E35D8D606CE32DCF488E4
            C038FC8A367C58402276B4B10DE7F240890440B83D88AF1F3A77B33F298FC93F
            E1FB915AD8B531A56B5786641636EACEDC7F3DC40A5481180B5377CD9C04CDC5
            8160659732447ACDA089D4D981302DCBEBC084118713EA12FCEC43A9018E1264
            01D57DB786F8E4781FC8409069F80E11526A213096D1FA423221450613EF2520
            E0BF7E5933947BBBFF481E7C07CA9555B0B373638AF1E26DC9B03C443C3CAD1C
            4A63B8A6204E362ED8040718313FB36EF00ABA03135B5C1EDBF605D316384D93
            3FB1F108ECA774649CFA4850901287E11DEDCFF007DC1A0BEEB4C6EFA18DE1D5
            73D47560045B6D0B14166E04B87E82CE59DCE05D03C2EEB0377520016130EB6A
            5F524EEFAED37DBB33518D4595B902E4EEDA92DE7FE2929477912CDBE9F44281
            9191875D179999085F4052106A1E6A2022B23187252CE2901CB1FFC3FE888D01
            E2884C2A704F4A0E8E2A6EE178DD2DF7CAF98EA1F65FF671F1956DBF1FE51422
            FB5B5F78307611D8E8B8119CADC2980F254B1B1740D81CCEAE7E9CC784F1D9D7
            7A93CE75FF91D1B5E558F79674207A30D95FD74D250EF27A76640C6414D91BC9
            FB21F9B13B471E206D860105EC3DF05F60EFED3A98C9D43E825290D49AC9647B
            AA7040106F386482CF1677279D091A2BDB9374965B3E3C417009D1A793478C79
            F67B0FF942509B966CA78D11ED479B61CF806D06261CDFEFCF629F0B3A7D4603
            7D0081200E449120D50EFB6DDFC9FCEE83599DDB8EB5AF4F6A5BBDBF7DD57E84
            0F21200CC6FFA062607040A415E14CED3B906D2A2A09CE42F3084A4A98985048
            2980650C5068DB721460554D39F388F966A9D472604CA33EF7A6E57F90A05165
            56ACE19B7E1B3F62804DB7FD694B08E2A5CFC2DAE95491154269850A02504320
            60E23042380F4740CD0527B402C26A472E251C3FDDBB323A138F129BE3D69308
            9994127A83735ADA9A44AC080773FB0F9D1F3A7F531CBCC4E425626BCD972412
            66D28A60F78469A169E56ED5466294287CDD30942199F58B91AB67ACA8FE7245
            6F7A9E6A9CD91C7E2AA516D6CE5A05B513B6195899A08B0EA4FAF65147532746
            462144DAB875F55E200F9A081ECD750FA5CE841A40984710A582E014E6F61B22
            CB05DDA135F5EF3F072A98AF3E72F5AAC88D2785043325F323005CB80CE01657
            5B17CCD1D8653AF39740FEE7E68C830F3914F0AEB5261E660A8C0A77A0801CC3
            D442A49441B1F48560C52CA68F4300B7773338889F71E4412F6D5DBE77F0709E
            4FC03C71156A8EC2C7319B290084C3893833737E987DD92985838773078F1598
            F28B6D158DAACF3F9B83044C4B547A00B1E010414C655DEC7A9C6BCAE9E5EA1E
            34E5DD652AA81813872098513D7D19B2B81053C3F48C287F1669E9729BAF3C11
            BE1B470BE016EFD99E417F0FE30A2202E19913BF81A85104DBA8BA278A5ACB02
            02547E5219A64A205025068F5C30665C31DF78E268D6EEED050950F350C67F01
            FF24F24160D4E39FCAF2548302399C5F229551033F1CDE5D540D809111C110BA
            D79CC32B2E5379488C0348A0E6CB8FB5E914623A480202CA8C9E50482D1C3894
            3B70F4A2E9FC6D6B69F5A81EE97BCE961EA948384AB59E6D27711257CF5E65BA
            7A5FC99603DF98F992340E922FE29CAE9D4D82621A166D26F666AAA35AED23AF
            EB4C57EEC31D3370EE1ACC09CAE3656470890055C49622F60C7B06EA0C910834
            AF5C492299A174787F4688B9B3B14B9BAA2CF56816202C36F9302F25E202F41F
            6C6E7DFBCF0E65FF053B23A74485B8A191EE76A7ADBC5ED24DE08502E47C8433
            F9821CC7F437A947BB7B8CC317EF710A9B589AC1160D2F14CC4A95D397761F3E
            03C309CAF15B5FD6617BEB472D9B31AB09046AB83F10110955137602B749E3EE
            ED31FF07D551F02028294033044622364E8AA5124CFB8664089B3E70E4170754
            35D181B8225F06F25514A6618961019A766F4A6F89DFDD73206BE49516BBA9FC
            8A50D00F2997F2D19A50761035836A1324B75F160AC0810938489188D9492B42
            AC4663EC2628F76070EB868344F870B949FCD5B9DB26D992535D8929400F12B7
            832BC6BC05C3B18E70EDC6A5DB4851A5A8F955D397417785C50C620A4E284EA5
            848303012594F80DF3133137D8BB743CB60276088423CBBF79ECBD21ADA86B63
            2A8247AAA62F1DC8BE16628006131330CE0C07AB42D1FDFB091C1035DFAC26F1
            70D2B667B2C63CC9FD80486DBBB310FD00BD9444BA2E481CCCFD8B488B6E8FFD
            75A35499293159E0CC447785950E6C8D1D880EA998FC63CD57ABA04F427E0C5E
            418B6AE92985247174C166A2768A1390346D187E40403A532D34509D7EDACFC0
            298C71FAE718596CB6D25AD349B6DECFB101DB1222A9F0467A6505B67D8E2468
            E7DE95C9BC8625B875C55E9ADD55F5F9522C077C2224F55E8FA01C0ABE59A515
            41BFC58B2E6FA0447C142A0BC0B38A0D8019CAABE474461B587B61206F5CBC55
            CA0886EA170834C1B3608843A08938939103CF18205C2EB5755CF14642E322A1
            3EB1EB555B788281173BB3B9E85190587EEC4C89C8C85E81099072442C249013
            F082F4B90055FE68012E41A1F1D3FEA3610C55C4AA714A751574CA457A61022C
            CACCB5E280E8DC9381FD1F166E19AEE3F8B6DC7ED9FB67262AEA31F48BC08A14
            7064089CA2F4D1D8E404F5DD8863658DDF33C29FA10F10C88E55084634833D04
            DB148DD9EAF8E358F0D49460ECF7FF1D5BC28B5A99C858DF24C712AB1B976C63
            24717B73C8CC971F1953E52A3140F0847B93466822EEC877348C4D05F28AC242
            285274A3B5D061C817AF1E01BAC8BF901263E980D03C51E484C8D02D5D55537F
            669AC93149D4F447361BE7EC403E81F96940563BE418001D320D3CEF30672191
            04EE1B129C0C41754ADC7089FFD2733A4F2F20CC56E505F4608DE152DC216A29
            E7B55C4B0F71E198F38357670216E108AE9CBAA839612FC3733862FFCFDD32D4
            3B960137AC08381A688931B89DE0D6129AC3117E01EB8B74A14562458591FEC8
            45F9738486C70DE6DD0C58B865A4EF60361F0A1844104D83DFC012E8EBE51905
            E83161E68AEC753EA32429CD3C568CB77D6D40355D4B790D42B390742F188104
            67CCDF08A008A2D50920E423C4F903811F1C1A3056E8D78E41F547011A993C5D
            EEE9386211784DDC519B8F0813C671CCBF6D222E06715024E722411ACFA67448
            BEA454C82492C943A20E4591BAA4C08844A951048543606A5CB495F078AC449A
            B8A01D9D300E751A3ACB97FFAD65B546CEB59B56844A94A4903BE218DE3472CB
            44251AE4147118EA3A701A015452A28FF1CC75AE2549ACF5EA3ED07E1118C1FD
            1E3B844C2D0A5441411946BEE04500613AA3B4DA2ADE4E2EBA1731D39AB70708
            B0238F2B821F0D5EE222EC057EE4CA693F21D75190844345042917838F37D812
            E277D31C188424217CD7D5CFAA748CD81989731313C01109D999548908745DE2
            F617E6BB4B6FE142B1631F8950FD8E0B98482D8478CB37CD596EBDE006B1BD1E
            CB2A707B3AFFCC00AAB820091A1FC5B7C9766F3EC67F27FB93C7ECD939B7F8AC
            3165C915BF22A7CCA3573CA1D23CA25C7A805ECE01E24DF402B5B5048103AF2D
            3C7839263A2538CDF14E57CF5C0E4E04586090F973FB0533F089BF161812881B
            DA5B3D08B716902D41420721112EACE2E4381FC9BE1A351F8513C5E563C8CBCD
            2A688A5E34238F240D434D19F01736341EBFEC1119ACBCFE425FC077EB9A0308
            021DBC78AB6EFE7AA001962EFA27446F238A800870A985FE6D06F5F016FC666F
            26A5DD61CE8248E41BE7C4653E20461E084B6C0938DE977CDE0F08E26B97753D
            F3FF8AC84F7EEA049CBC4A3609B888CC571ECB87C907CC21AD08C64152E87AFE
            3AA249721B3B8E86570D26F9A3C15B7982B8A1BDF76A4281840759FE122C388B
            1967566A21842F5AD29C29B79285E3FA50714181D4425A300481999839A97E47
            8B641FB9647DCEBE7A89EFD08245878209DA53EFCE4C8E2C88E1864A45FE9B52
            683AE7AF6200AB49E59445F0DF421EC2CBE36B7FF26A005F6C4ECB8D525C3832
            52FC9A2929C355E60784B3A5573920200D7111C33E2D63D7717B2BC335E52057
            2C3DC20B21BF9F0B1E8D731A712B55D3164363E697D27175F413FB6060F4A978
            DA5818647BC819981B4C7E245F45DE6E8DDA31AC9BD6505F1D78C2C6800C4119
            4F01B37E31D5BFB02D214D0DA18E5438852357C60F29C8EB02A0056125489B06
            C3BAB79DA04B86A0C35F3B89D2FB693BB607C8CBF4F7B84950E6451D3A214E3F
            B9CCD545F9072CB8CA0141B6ACA39788CF177E7A6FC828FD56CF5CD1BC7C27CC
            EC088CF346C5A90B8AC4B0880582A050E58D36F38796780B872909BF406C0E02
            05C8E9101D0BAB9F921C5CC86E8C2B18D38A2027611C44DBCA4736605F11D30D
            622F25C840CE75C42C5134E0E0ABF9EA17A845A49E1C2B66D3D5DA27C30278B3
            6865FCDE03BE183B6B79EDC83DB95290505BE4007191516896BBC7EA1FF01569
            ACE5905644AEAC410D0D567D1DA520837169D331D885B0C192C22B63F4220666
            D4F4907519F8E40CC4ABC19F14351FE991A800A430BF0A67BF78D5580B02DEC9
            EE12BF43DE63C9141D383440952532BF570F0489A8159C7E911ACAAC46822D9D
            493184DAE2EE27CA5D63B64F361C385E809D4FC601093FB00C2090B324DEB6A9
            BE830FD132C4E59F95B253B1F0211E90E4D6ADDC573D7D290CFEB8EB805B00C9
            6B50661C84CD1FCE68624E98BE14F53A94FAFD90F7C73A267060431301B0485D
            2999F05452D354F876025BF4461D7CA11A109206D6C680D24F5CE7DE4BB97C80
            13641442C77956CD7724014FB038F1951A5B95EFD681DE9DA7C85148520AAAC5
            B6108890F2825DE79E93623D1607851F1088AD180704708F00231B6237D67EBB
            1A5CF4BF88F01EE18209A9DCB740E44113A3772C4092420882F2AC48920DCC32
            33C07E87B306097462CB1D9FB8C44A714EB8DFC2BADCBEF108911BA2E653BB24
            6214A4E809676C550CA9CA88801D8615C7ED81228D1304113A4C50FA6A1A616F
            BE3856CDD4E680BC89831529C508DB57125B5B1F9B289EDEE85822BCCF74ADFC
            8A03CDD081AD866C0933564085B33C0F40B137DB49D1AD5724B36AEE3AB2F74E
            59484A0CAB497D27C996E218BBB152A6F08DC9E5708ED81865506160BEF4B0F3
            8FE3743E086220E871384DB2B7E8800EB4A26FFDC24DE21277F22FF760BACF18
            0F04ABF2AD73C34203C0012D6022AC617E2DC3F713A2F9C214350913E1EF27A0
            CDA3660FA404413A3D24BBE16C459723C2488A6D991A15DA771C53470ECF28B3
            42030E78BAD3C04A2179E2D0384251296B60CB525CDE14BF03DD114045BD9A78
            41F9223062217152F8CD0663FB1CD401AA0AA1BE8512BD9D6B63AB189364530B
            5BD7ECD7906186983FB1E112557E448020AB71491962B5ED0A90FC216741FB80
            BFD5D92DCA7DC0592E5B7089FF5084C852D10CC14230CEAB2222298CC7BAC302
            E73AF56840AF610B0D040A55CC530C03A2B2009C43F89233CB2B73883D007026
            11B4ADDC4D926D023D9334600282B0C2AC0D6EC9304C51CA206998141108160F
            C6A715BC3F88BA10674621568F0508EFEF60485178A1A0144AA04042F9EC3998
            85A056A9F7188731C3A4C31251F1126377A12734EA75A8F5AC12DD8F25A2C288
            09970FE24A486EB8F863730A443C6EB1308B756E4EA537C5E14A305FE111728B
            8E305A1A5DE094228048D88B279070139E84840D8F1AA0D466152385979B0C0E
            0E6C51CCE227E235C16B8ACB28C47E32CC8A0F4A76902D291676A75C612C1D7C
            2AC6B482A153579143614715E0601964247C57D9A56D3010D1C2D87893501D58
            DDC68057B6947DB12C5E5C62699811CFB834C5E5428E2C53A0414402F2A5BC77
            EFFC888DD71FF9825B74C6AEB6469C0B2C631CC3E8365017BB81CE5C50748CAA
            4830A4AA5D177F7A30E9C27803B387BC1B01B083C60B07AC589307F4F9130892
            97017D1A4A2D8C30202E0A3741A5C1F565D07648BDD9DA76E2975379EB321EAF
            F000827392BE43C0B5C2842DFFC2906A7789557B9B5C8DF43B15E818F5286BDA
            99A62A1C58F4EA0AA806881184D7C0FF20BB93C6F6419123AED4E85863A6DF53
            837D88EC6DA857EDBDE0CFDD6BE2AF1DF0C25FB1CDA8050471E9F1DE28140C41
            EC1DF8DDB9FB24181FB02BDB1D08056D5E453C6D989E58DB44E561C199A52051
            47ED7CA5DB23164D291A36A7534B285C688CB262B25322614E2C9D05A74FAD97
            AFED5B530554403C811840B0C922BA9504087A9D5BE22A77D80B692FEC910839
            C10104EA07E8F029855478F415D3B7D8F8CBA7173574ED3BA581C07821059444
            B81431D0798906704069821786FE17F6958E35494CCAC3712178FAF80182DC6D
            A7ECA480B8C75DABC18C3892A42004D5DBEC6B7421E19220C7E858EA81F47F60
            DE41D86660E174629E8FDF035E528D462A0291138A11068D96A6DB5E59DDE6E0
            2F135A065882E540D316F8CA11338D3F09236814A383E9ACC7CCB12DC11F04B4
            612F84DF1FFF9532F85A9F31C4F3F10304F3360A266CA9A5810A9201FBB32CB1
            406E29A1077B3E580283A6F02DC7C9225240E06FA41A0D2A7BD81ADAA49EC95D
            1182F4763446960ED7129964FC75C16D8DFD03910382F237108F8246E1CAC383
            44FF2A7BC7C47486678E39F8380142B9311418E7DC6630442A796120E8C8D4CB
            85179B9CA071BF09E26288BB445084DC7BF92205226EB59079342C89745381A1
            0C8D919613D0D8620D2A8FC364890711BD51D967C468EC2C15C63FA22B29E4AE
            EC5644BFA2947E0548927AEC380122688C06375DF838E8F6401913C4590577E8
            BD72A92BAFA07053BF17BC4D029BA03F4C811763873054FA5CC4A7C8B1C9E1F4
            D9BFD38A60A044A6AF58C2274131D297F421D49B641E2F485492B8E0305B1E1F
            4A3A3A6162D2271346DD4EC6C43CA3246744D9652570B2606E32ABD30288BAEB
            7F3D3A78B8FEAF9B2EABD21B1699FE242901B366E60A0E13086B6044BC218EE1
            D16BE34922CD490DD2BB2303C214F618947815AC9FE468886E5B41154BFA506A
            3690F9706B8195138629C9DAB300EBAD32F1968EF08586D844E2420B7A77ADDB
            F9E65CCEB1E8C9870D13F0CD9C314B7E627082E0F5183ECBF06E9370FEBBE59C
            4B536740E47C3F9F4E3175E2A4FB7BF6598782DF87233856E5750DECC3D486E8
            DB2726C5424B849C8FEA0BEDEB0F77AC3FC2A8CCC8376AA515216283147059B1
            9361B419B18B4D55D0C73831563E499C1324DB5713D181542893FDE038836103
            C8B05C7F6EBEF6D45282BB9682977EF2389DD58545595F7E4DE94CBFCF52D294
            1D2F44B0858A8BDC164004B23C6CB54A3B6AAB5359955FC09F2860012007157F
            142A9CBE6648ADDC76125A1F2C6BF817821E0CA04AC2234879D86F127C1665D6
            9C98F672F8BE39FC897714DF302E3717B500B331049D70DC7F64EEEC7A927C34
            7DF2143E85F173CABFA36CA6E02F9E72C6EB2A43B89DA73F9F299871DE823873
            0789F6647FCC239AE561E548420E160CD2086F914C55433410EB6A2E789BB8DC
            A6EE645F1D27FE424886F898E31B817AB84D09A9E5AAEB5E4BB3CB6DB3D55DBF
            91FFD312080A02C2D2FF0225A1335BC9085A64088C5B75A9503CEF9489932A2E
            480AE7F215E195739DD912A70CC9FF9FF58B7CDD6FECA2520F6A5DBE876E12D8
            5D505DDB4F3B1447B8EAF753C00741C207A36385654795105BD4C66DB7371797
            DC58979832318A8903FACBE353A63A477C71539A9EA3A2934640C0C994313586
            B9868225F1E62E56716808E78177B1870802DA9D5699449D2FE4E2050D2FC015
            7E320F2561FBB800013E4CE4FFAF3FD87B38BBFF600E3FDA0C2A3112CC891A82
            6785F081E2507BE5DAD5550938086470C0FDA9F2E2A5109EA6AEAB56408C8EBE
            CA3A2BB518ACB32C03615E221DC93CA22326488CF5923F90F21C10AA2FBB7CD8
            0F34A39004B67C45E2EB1182A68EC663AD2104BCC9C9BDF4F3D2E409FF568203
            DAE6ECD7DF697B9CB65EDA01019D332D2A5A66615849C77351F8AF370C221479
            82DCA9B429BD3D3179E0ECD5A0D540C54491CAD453A0F8901B6FC8E5F1EA3FB0
            295D5FB3FEC88489CA71C0B56C7BEC8F5E51FF64D53DB403028F82C124E80A8B
            E27F19A811569341DA32B9B94FDA7423644F5AD1C0811C14281A3C758544E42A
            2B05CA24067225D46E12F04790DAC4D1B1E4EA3D951FBC12E7E7C506A5925483
            8B718B543E30D4E62101C2D2D79FFCAF4F83AE1692F3E515AB7A5E892E5F2769
            6EC308D741A0003475525D2BB77838E70EEE4C43222CAA479BAF3F45816A677B
            9FAAB8A0A024512EDE42BDAC9D4542A59182ADD605EFB4586E26FE169438F20D
            BACBFD599741D7A54B83900081195C5DFDABF2359F9BF3435541A1CB4AD24EDE
            ED87A404D20C3B669896F71A6A5A708ED41D507F1DBBB9A7078645E594618BE7
            8B978D3F954205044E38B5CB8621EBEEF63FFAAB558646EA4E1B844C3EAB1A4C
            C987C90B0E77583F115280B42D522CEB8B65A81780CBBD14A6FD08A606E1516C
            A7514B25B46F7FAAFDEA2CCDD40A151078F08929D334AC165D72E72F805B446D
            98A4E6A5CA744436305231E11C47509DBA786ED6A0977F59AD8D20FC5E595FCD
            0EC74A838EA90320EEEFDD1FCAFA4F4E8929CF3C03535DD0B99A5F570CDC2C36
            3D2EB5776AB9042BE8F8320D1C7D037874D3FE94D73F2E7F3279E6830953DE2E
            49609A3D9A4BEE87420DAEEFAB33BE9B104299B686BE3A00023A55E8248099AB
            E1A69CD3B93B27FFDEFF9AC87D4B0CD1A5337EA84AD8DC7E220B107169AD122A
            4532D7B0D9F4F445474676E5AA8D4000FFD1DCCF8377EE8BBB9F9B332F746A40
            0CB7F406F78169E077D02E3A000206287983847202DD58BB01D65CE6A4EBB7EE
            657285FB25D8F6E6E784C63D493D172F9B4ACBAD2DED6E0BE39E56E1E02EB7A3
            B7DFFCA66AF0EE83CECCF3F5DBF7BD59B4F2C994AF8A79E0937A2E302A18ADAF
            A252F962655AE6CCFD2128E7C2D4400F408C8E162E5DAE0B2130C885B845CCE3
            A3E570BA3C20987FC546F2282AE6E9D4D9A55FCE2FFB26EEC5EC05F8A174C63C
            FC06BFBFFFCFC94A182FF5DCDE427F8927CA9EFB7BFED4850E0F0F1C0A13BF83
            0EAB0F209EA7A5EB42083A089C3DE279F75DB9A9011061ED62BC274CF2C98899
            AE0B1D9AEEFA6FF20CCA427D1BE80388A67BC5BA10821B04030AD639D2D81256
            EE6A18DC5C11A0399B5ADBF422C2BB122040737D0031D4D4A4172DE8380CA5CB
            E3B9FFC9640D6C0B5F176760A8D89B9CF3BA10E1E8A713F57DE9558DA60F20DC
            0E87546487661A753CF366D7F33E65DF2D0C1F77D58E0C740AA6772D618DE6C5
            F23B8EB37B53B00A7D00814133A6B1C32334D3E8CE966D82B9D66EDAA9966DE1
            6BFFFCF3B982E9218C45F362F91D0BDE85C59A5B8B6E80C85FB458177270839C
            9832554071A885E163B0DA912B96ADE14F0FE1837A2D1F2E31559BBCBE8D7503
            C4CD8D9BF5A208378EA9A595BFDAA1FB4FD4B22D7CED61F0E0CF0D49097A2DBF
            6477903C007D1110AE2343496C845A92D55EF597BAC1BCADADEDE163B0DA917B
            F202622390A8A2767552ED315458592E3FB86E3B046CEF7A51841BE7C1BE0301
            B3773A43B123A965B97CFBE1B280F00E4492EAB57C18753E0440E8B867729445
            B49580340FFF6B9ABE7CD53C9ACB34CC9FDB498990630D28293DAE3166531718
            E9B64320564CC3E2E5BB64CEF84AB048589D35B350C78E8F26C6F02786E0281D
            D7FEE224A974F9AE3EBA010281933A12850E850C57015D5E2D88D791AF9A877A
            15BB943F3104FBE8B8F6B28C0F0210C8C5D09128DC5082FCB5CA95899AB9A863
            C7BADF031481FA1BBAA91858F807B24320F9241C8030D6075432A8DBBC5B47BE
            6A1EAA332BA052184E7D1DD7FE8100025BA8EED66B50B9AB2CE0EE7668FF9AB9
            A86347D3A38068C7BB5B77E80988131FC491014020B75347BAD0A1046ECFD6A3
            2775E4ABE6A16C1D01578420194BC78597A69F785712259EAB9B5089B17454BD
            38FAD65C0EB81CA6FD78A6662EEAD5B1E4FF4E12D414CE9C1950C82144707C38
            80C8FE766E88B4107717E4B922C8512FBE6A1E070176823758DFADF103B14380
            463A5AEB3864203B964FFD8E53E7343352AF8EE5F397F0A7E4D0D508F1E16819
            A011D26F74DF215E6707D4A6E9C838AB175F358F5395B0890F0853738BBEAB7E
            792AF30391215E9ECED29734184DB043B4A59FD6CC48BD3AD66FDF1FB069E96D
            A20D5A9F29AC70D153A8D490D617144015790125699A0FA4E8C557CDE340D3E1
            B3445FAB140882125E6165F938793BF118FBF0B0EEA688EAA2CB01D40F969DA1
            99CDCA3B428EE14FE9EDF9BCA0B056D5403E6129DC58D17387C05C110FA86AF1
            411B37DD09084847AA9672CE85A965D7B9804DEB65C6E9A0AB50D58059B136DC
            38E0C6D719108F938EA85A7CD0C6820CE8F7C1B9D59B1F601A41F1A4A0AB50D5
            4060AD1F3728D007E90C88C1BA3A558B0FDA58507DE679CC9C30BDF7CA871524
            6CE90B089CB9CAEB0387032B3A03025344927F50362B6F601918E02FFBC1A753
            95732E4C2D0580D02B1D83D2E45D550108D79181715B1F3C54CE6FF996C272DF
            367B9878AC6AD8DE8280484F7D43C5C6AD40A9D4EEA2FF0E8127E9E5EC817384
            3FEFF724C816D9E5FC59E995F18D7703E50ADF61125F5864083A2856756C92AF
            867B28BB0532C1F9A447C10655AF72981AC35ACA9F15E2E7F452B68541C5E190
            11828D19961D020FED7A51A6AD2C231F40B737FFCE9F3FF6EA30F158D5B04DFB
            8465A7B3BF99130AEE69DF33B3BE91AA8D118C897AFE3D5C80C01CDB1E3D962F
            E11C94882835C45F6B6B4A862ACE85A971CD86ED020EE0E00FBA16F906480344
            1D7C3D19AB75AC3002025382162AB8F44115E104455CDF93DC4ED4A91150DBDC
            D191F44F76157B25EBCDF8EC73418E9A566EEAD02FBC80C004B10D3E3D92A2B0
            CA379F7C3898610BE72FF1F5C295617AE9550D8B4A3462C2E37453C27B711BE4
            9E28B9814607562B1B22EC80A0D3C01D62CF528FA92A6088EC7AC1129E4F9FAB
            8A73616AFC2C86518D1C31C6A7BFF852152690CD8C6B7394B169FC5A8D1320B8
            05C1508F5B992040C94BE66767CF11BF37EF83550A207B1CFD05933F96DE3EEE
            F2297964A0E41E4205DEAD45520A62E30D086E1E76B3197E0A0483DCFA6DCB85
            050B510818640250B085E216165C3A259E71F1FF890AD34BAF6A5814A9947961
            1B6EDD2E5CB602D57AC598489D188D9ADF8812F5B85897EB8DDF2E20F7A47706
            080DCB2FF9245A15E7C2D4B8F87F47059FBCC7838A11D0BDA16AB5DC7F801AE6
            EC4B65820F34DE2D2209104FA77E1D261EAB1AB6E4FF4D1A6F2E8DE3F3220910
            EF491E1F64DB7164D0783F2A92000137A3AA57394C8D515377BCB9348ECF8B24
            408C3A1CC8C30F139B150E8B8A2596EABA7164D0783F2AA200313AFACEEB8ED5
            6DDA35DE2C1ADFE745182090430743A1C2B759F766A88B8E5D6A7C1934DE4F8B
            344020B6BBA74FEABE02DD11C00D0855B3696FF2FB70D74BB8011279800045EC
            5D3DA5337F081FFBF923C31A862B3350693BDC9C784FC68F484010DA399D2D49
            E9B8DF207CB040526FCB9113B84DE33D61D5F84C236201E1250FCA8F2348425F
            83D5B3986F5196C45CFE767C18F0BE3D25B201C151D352DB80C8B68AE5EB145E
            86C3DF5760797C31EBBF116C81840B1C46EF1B87C6793E1F082002A8E670E07E
            25141635163FECBF7A0B31B1B80B0955A13ACFE4E10754A0EDC9BFD27FFD0ECA
            02E1662582008F679C89FE3E3FEE4304C4FB4CEFF77E6E7F03E2BD67D1F84EF0
            6F408C2FBDDFFBA7FD7F0C01A0F3116B61A90000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = -11.338590000000000000
          Top = 132.283550000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPOSTERIA DO'#209'A PETRA')
          ParentFont = False
        end
      end
    end
  end
  object QBalanceCreditoCliente: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select balance, musados from cliente')
    Params = <>
    Left = 176
    object QBalanceCreditoClienteBALANCE: TExtendedField
      FieldName = 'BALANCE'
      currency = True
      Precision = 19
    end
    object QBalanceCreditoClienteMUSADOS: TFloatField
      FieldName = 'MUSADOS'
    end
  end
  object qactualizacopia: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 512
    Top = 416
  end
end
