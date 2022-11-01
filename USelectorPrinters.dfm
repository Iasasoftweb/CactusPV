object FSelectorPrinter: TFSelectorPrinter
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Selector de Impresora'
  ClientHeight = 264
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object TipoImpresion: TcxRadioGroup
    Left = 8
    Top = 16
    Caption = 'Tipo de Impresion'
    Properties.Items = <
      item
        Caption = '8 1/2 x 11'
      end
      item
        Caption = 'Ticket'
      end>
    ItemIndex = 1
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    OnClick = TipoImpresionClick
    Height = 89
    Width = 297
    object Edit1: TEdit
      Left = 152
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
      Visible = False
    end
  end
  object Formato: TcxRadioGroup
    Left = 8
    Top = 120
    Caption = 'Modo Impresi'#243'n'
    Enabled = False
    Properties.Items = <
      item
        Caption = 'Normal'
      end
      item
        Caption = 'Exportar PDF'
      end
      item
        Caption = 'Exportar Excel'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 89
    Width = 297
  end
  object cxButton1: TcxButton
    Left = 78
    Top = 223
    Width = 155
    Height = 33
    Caption = 'Imprimir'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000804944415448C7ED94510A80
      2010449F121DA2A34407B483DA35EAA328B3506B33307AB05FC2ACB3EB083F11
      54E06C7C424BE776507E8357A9811E1898177CA72C6016AD034620EC97396B60
      85A22DD0394E80FD921BE188355B16562D371C57831543F90EB250A5DE2440D0
      79F9497647E48FA28CDF3465C9A2E7FBADDFB44C26FDEF3B6031133A13000000
      2574455874646174653A63726561746500323032302D30322D30345430303A34
      373A30372B30303A30303BBB7AF10000002574455874646174653A6D6F646966
      7900323032302D30322D30345430303A34373A30372B30303A30304AE6C24D00
      000028744558747376673A626173652D7572690066696C653A2F2F2F746D702F
      6D616769636B2D44774A65307644517A72F32A0000000049454E44AE426082}
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object QCortes2: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'SELECT * FROM consultar_corte_inventario(:FFINAL, :FCORTE,:F1, :' +
        'F2)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'FFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FCORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F2'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FCORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'F2'
        ParamType = ptUnknown
      end>
    object QCortes2FECHA: TDateField
      FieldName = 'FECHA'
      ReadOnly = True
    end
    object QCortes2COD_ART: TIntegerField
      FieldName = 'COD_ART'
      ReadOnly = True
    end
    object QCortes2ARTICULOS: TWideStringField
      FieldName = 'ARTICULOS'
      ReadOnly = True
      Size = 75
    end
    object QCortes2EXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
    object QCortes2VENTAS: TExtendedField
      FieldName = 'VENTAS'
      ReadOnly = True
      Precision = 19
    end
    object QCortes2ENTRADAS: TExtendedField
      FieldName = 'ENTRADAS'
      ReadOnly = True
      Precision = 19
    end
    object QCortes2SALIDAS: TExtendedField
      FieldName = 'SALIDAS'
      ReadOnly = True
      Precision = 19
    end
    object QCortes2EXACTUAL: TExtendedField
      FieldName = 'EXACTUAL'
      ReadOnly = True
      Precision = 19
    end
  end
end
