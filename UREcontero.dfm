object FReconteo: TFReconteo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reconteo de Inventario'
  ClientHeight = 137
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 142
    Height = 13
    Caption = 'Cantidad de Existencia Actual'
  end
  object Label2: TLabel
    Left = 8
    Top = 24
    Width = 111
    Height = 13
    Caption = 'Nombre del Art'#237'culo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object spValor: TcxSpinEdit
    Left = 156
    Top = 77
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    OnKeyDown = spValorKeyDown
    Width = 77
  end
  object cxDBLabel1: TcxDBLabel
    Left = 24
    Top = 43
    DataBinding.DataField = 'ARTICULO'
    DataBinding.DataSource = DsCorteInventario
    Properties.WordWrap = True
    Height = 28
    Width = 257
  end
  object cxButton1: TcxButton
    Left = 200
    Top = 107
    Width = 101
    Height = 25
    Caption = 'Procesar'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000D24944415448C7DD943D0AC2
      4010853F3D4D8A80854730480A4F91D2CAC23A575810AFE37552995242AA58F8
      1622B8F97127163E58261BDE7E33B32403FFAA33B0D173021C8DFDA4400BDC14
      53633FC8DC299AFBCD3A58070E64C016D829662309E6FA07950335E080550C28
      047F0025500157CB241E5E689F2889B38237AABCAF52D76502EF5471A2F7853A
      CAADE07E55AA3C1ABEFF00F7AB050EBF84CF9A45F900BC095CCBE43FFF1BB8D7
      E82C8A818F7610030738F5A0A9F66FAA23E093E49684C36B605D30FCCE43491C
      70B7AC7C713D01A76677619ECB821D0000002574455874646174653A63726561
      746500323032302D30322D30355430333A31323A31362B30303A3030D5BAEB82
      0000002574455874646174653A6D6F6469667900323032302D30322D30355430
      333A31323A31362B30303A3030A4E7533E00000028744558747376673A626173
      652D7572690066696C653A2F2F2F746D702F6D616769636B2D7432594B45566D
      5045D2A2EA0000000049454E44AE426082}
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object DsCorteInventario: TDataSource
    DataSet = datos.QCorteInventario
    Left = 256
    Top = 5
  end
  object qactualiza: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 144
  end
end
