object FrmCambioPrecio: TFrmCambioPrecio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cambio Masivo de Precios'
  ClientHeight = 372
  ClientWidth = 649
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
    Align = alLeft
    Caption = 'Categorias'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 372
    Width = 257
    object cxCheckListBox1: TcxCheckListBox
      Left = 2
      Top = 18
      Width = 253
      Height = 352
      Align = alClient
      Items = <>
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 280
    Top = 8
    Caption = 'Por Porcentaje'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 89
    Width = 345
    object porcentaje: TcxTextEdit
      Left = 16
      Top = 40
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 81
    end
    object cxLabel1: TcxLabel
      Left = 99
      Top = 43
      Caption = '%'
    end
    object op1: TcxRadioGroup
      Left = 123
      Top = 30
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Aumentar'
          Value = '1'
        end
        item
          Caption = 'Disminuir'
          Value = '2'
        end>
      ItemIndex = 0
      TabOrder = 2
      Height = 42
      Width = 209
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 280
    Top = 100
    Caption = 'Por Cantidad Fija'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Height = 89
    Width = 345
    object fijo: TcxTextEdit
      Left = 27
      Top = 40
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 70
    end
    object op2: TcxRadioGroup
      Left = 123
      Top = 30
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Aumentar'
          Value = '1'
        end
        item
          Caption = 'Disminuir'
          Value = '2'
        end>
      ItemIndex = 0
      TabOrder = 1
      Height = 42
      Width = 209
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 43
      Caption = '$'
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 280
    Top = 199
    Caption = 'Afectar Precios'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Height = 66
    Width = 345
    object precioa: TcxCheckBox
      Left = 16
      Top = 32
      Caption = 'Precio A'
      TabOrder = 0
      Width = 121
    end
    object preciob: TcxCheckBox
      Left = 120
      Top = 32
      Caption = 'Precio B'
      TabOrder = 1
      Width = 121
    end
  end
  object cxButton1: TcxButton
    Left = 296
    Top = 288
    Width = 75
    Height = 68
    Caption = 'Limpiar todo'
    OptionsImage.Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      05360000166F010120860101208A000018760000074300000210000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000010801011878060866F51516
      9AFF2629BEFF3135CEFF3236CEFF272AC0FF14179DFF07076CFF01011D920000
      0522000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000F3C06075AF01317B3FF282EEAFF3F47
      FBFF515AFFFF5C64FFFF5D66FFFF545DFFFF424AFCFF2A31EEFF1317BAFF0507
      69FF00000B600000000000000000000000000000000000000000000000000000
      0000000000000000000000000D550A0D7FFF1721DFFF1922F4FF1420E2FF242D
      E5FF343EF2FF3E45F7FF3F47F9FF3D44F5FF2F38EBFF1D26E5FF1620EFFF151F
      E0FF090C87FF0000137F00000000000000000000000000000000000000000000
      00000000000000000E34090D7DFF111DE6FF0912E7FF0810C4FF1821C0FF2026
      BAFF181FB2FF181DB8FF1E20BBFF2427BFFF2C30CAFF252CCAFF0C14C7FF060F
      DEFF0E18E4FF080B87FF00000C5F000000000000000000000000000000000000
      00000000000007095CF11118D2FF030ADAFF0007B4FF060FBBFF3135D2FF1C18
      91F60000193B00001022000012260000224806064494212399FF292FBBFF0A11
      BDFF0006CFFF0C14D2FF050869FF000003210000000000000000000000000000
      0000000120650E15A2FF070ED3FF0002A0FF0003ADFF0109BAFF1017C7FF0809
      C9FF0000325F0000000000000000000000000000000000001333151774F3242A
      A7FF070AA8FF0309C5FF0B11AAFF0101239E0000000000000000000000000000
      000005095DE90F16C7FF00019AFF0E128CFF1D23A8FF030AAFFF0004B1FF010A
      C8FF0206C0FF000024750000000000000000000000000000000000000B201B1F
      75FF172193FF000395FF090FBCFF05096BFF0000011400000000000000000000
      09180A1081FF080DB1FF000171FF101587FF1D2374F0030B82FF0006A6FF0009
      AAFF020ABAFF0409ADFF00012074000000000000000000000000000000000203
      2B7A161F72FF070A75FF02069EFF080E89FF00000B4F00000000000000000101
      1E500F1598FF020688FF010560FF030775FF01020C2402062E6C00088AFF0008
      A1FF0007A6FF040BB0FF080E9AFF00011C790000000000000000000000000000
      0F2611175DFF0B115CFF000375FF080E8CFF0101208900000000000000000101
      2E7311169CFF000266FF03085BFF05076CF2000000000000000000044484050C
      A3FF020AB5FF0008BBFF060EBEFF0B138AFF0002137800000000000000000000
      00000A0F54EE0B1165FF000373FF090E96FF01022EA600000000000000000101
      32771016A2FF00027FFF060B83FF070A76EE0000000200000000000000000204
      56830910BBFF030BBEFF0007C1FF0811C0FF0F1781FF00020C78000000000000
      0000070B53E8080E79FF01048FFF0A0EAFFF010336A900000000000000000101
      2B5B1116B6FF00039EFF090D94FF0F128BFF0000092300000000000000000000
      0000020368870E14C9FF050EC3FF0107C5FF0B12C4FF131D7DFF010314670000
      030B04085AFF030A87FF00039DFF080EB0FF01022B8C00000000000000000000
      0F1F1219ABFF1013B6FF13179DFF1D20ACFF0000277000000000000000000000
      00000000000003037785171EDAFF121DC9FF0B12CAFF1D23C9FF1E2580FF0B0E
      32CD0C136DFF0B11A1FF0F14B6FF0E15ADFF0001175200000000000000000000
      000010159FFF3236D8FF282BB0FF3034C2FF0E1084FD00000314000000000000
      0000000000000000000004047B842A2DE7FF3036D6FF2228D1FF343BCFFF5056
      A5FF3238A7FF2126B7FF3035D4FF12179BFF0000061400000000000000000000
      00000304457B3C44D9FF4649DBFF474ACBFF363AC7FF020355D3000003140000
      0000000000000000000000000000070775753B3EE6FF464CE4FF3B44DCFF4B50
      DFFF4347D2FF4448DAFF3B43DEFF050651AB0000000000000000000000000000
      0000000001022025B2FF6369F7FF5C60E6FF6064E6FF3E45C9FF0A0B6FF60000
      22640000051A00000000000000000000070D0E0F85DA3D3FB7FF5E63EBFF4E53
      E5FF595FE7FF636AF9FF2328B0FF00000E250000000000000000000000000000
      00000000000001012A493C45D3FF8288FCFF787DF7FF767DF6FF5E62E0FF2F33
      A1FF101372FF040750E403073CE50B0F4EFE30348DFF4D50C7FF7479F8FF757A
      F7FF8289FDFF4248D6FF02023C72000000000000000000000000000000000000
      0000000000000000000003044775484EDFFF949AFEFF989DFDFF9195FCFF898E
      FAFF777CEDFF6B70DCFF696FDAFF7178E6FF8388F6FF8A8FFAFF9A9EFCFF9A9F
      FFFF4C52E2FF0506599C00000000000000000000000000000000000000000000
      00000000000000000000000000000102375A3136D0FF898EFCFFB2B7FFFFBABD
      FFFFB7BBFEFFB4B9FEFFB5B9FEFFB8BBFFFFBBBFFFFFB7BBFFFF8F95FCFF363A
      D0FF030346770000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000E16090A72A3383DD9FF464A
      D3FF8C91F5FFA9AEFEFFA9AEFEFF9DA2FDFF8B90F5FF3C44DCFF0B0C80BA0000
      192A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000015280202
      3A5706066F99191C9EDC191C9FDD181891CF161779B101011B3100000B150000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    OptionsImage.Layout = blGlyphTop
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 379
    Top = 288
    Width = 246
    Height = 68
    Caption = 'Aplicar Cambios'
    OptionsImage.Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000103F154B1460
      16C80E1F0F1F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B370F48218424ED62D1
      68FF1F7123DD111B121B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006320A4816811CEC70EE7AFF90FF
      9CFF5FE168FF1E7021DD0C1C0E1C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000022C0646127818EA56E762FF63FF72FF63FE
      71FF73FF82FF4DDF57FF146D17DC08190A1B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000002703470F7615EC4ADC56FF4EF45EFF62F370FF6FF7
      7CFF57F866FF61FF70FF44DD4EFF0F6B12DD0617071B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002103480D7415EC39D047FF42E251FF6CE877FF87EE90FF84EF
      8EFF6CEF79FF4DEE5CFF57F767FF41D94BFF0B6410DD0415051B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000062109491D7023ED27BF36FF44D552FF80E289FF8EE696FF8AE893FFC7F6
      CCFF7EE888FF66E772FF43E452FF4CED5CFF3CCA46FF07590BDD0113031C0000
      0000000000000000000000000000000000000000000000000000000000000D26
      0F47418145EB28B436FF55CE61FF94DF9BFF92E09AFF8FE297FFDDF5DFFF4299
      46FFC4F3C8FF7AE284FF5DDF6AFF39DA48FF42E552FF33B63DFF035007DC0010
      021B000000000000000000000000000000000000000000000000001001223B80
      40EC51BC5BFF75CF7EFFA5DFABFF97DC9DFF97DD9DFFDFF5E1FF0F7817E50C31
      0F43449C4AFCBCEEC1FF77DC80FF56D763FF2ECF3DFF37DB46FF2BA936FF0249
      04DD000C011B00000000000000000000000000000000000000000007000E2667
      2BBFA5D8ABFFBADFBEFFA2D8A7FFA3DAA8FFE1F4E3FF11861BE3021E042C0000
      00000323063228922FFDBCEBC1FF71D67BFF4FCE5BFF22C331FF2BCF3AFF249C
      2EFF024004DD0009011B00000000000000000000000000000000000000000007
      010D116518BCBAE2BFFFC2DEC7FFE4F3E5FF0F7E16E1001D032D000000000000
      00000000000002220532258D2DFDBAE8BEFF6CCF75FF47C453FF16B725FF1EC2
      2EFF1D9829FF023D04DD0008011C000000000000000000000000000000000000
      00000008000D05690EC0C8E8CBFF1D8625E4001D022F00000000000000000000
      0000000000000000000000210334218829FDB7E4BCFF67C870FF3EBB49FF09AA
      18FF10B620FF169122FF023B05DB0007011A0000000000000000000000000000
      000000000000000A0110034E089A012004320000000000000000000000000000
      0000000000000000000000000000001E0233208228FDB8DFBCFF65BD6FFF38AF
      44FF009B0DFF04A612FF148E1FFF164917DC0209031B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000001E023322812AFDBADABDFF68B1
      6FFF399F43FF00850AFF008D08FF3A9B44FF144316D400040010000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001E0232237F2AFCBBD7
      BDFF6BAA71FF3B9244FF04730AFF87BB8DFF07410BD100050010000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002002342582
      2CFDBCD6BFFF6FA874FFB1D2B4FF024D07D30009011A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001F
      023328812EFDC6DEC8FF2C7032D1000B011A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000001F0234105F15C1020E031B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton2Click
  end
  object cxMemo1: TcxMemo
    Left = 8
    Top = 275
    Lines.Strings = (
      'cxMemo1')
    TabOrder = 6
    Visible = False
    Height = 89
    Width = 202
  end
  object dscategoria: TDataSource
    DataSet = datos.FbCategorias
    Left = 69
    Top = 184
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.mode' +
        'lo,a.marca,a.codigotxt,a.itbis,'
      'sum(b.entrada - b.salida) Existencia'
      'from mtartuculos a'
      'left join minventario b On a.cod_art = b.cod_art'
      
        'group by a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.mo' +
        'delo,a.marca,a.codigotxt,a.itbis')
    Params = <>
    Left = 168
    Top = 64
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
    object IbqRArticulosMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
  end
  object Articulo: TZQuery
    Connection = datos.Data
    UpdateObject = zuarticulos
    SQL.Strings = (
      
        'select a.cod_art, a.precio_a, a.precio_b,a.codigobarra,a.articul' +
        'o,c.cat,a.COSTO_PR, a.stock from mtartuculos a'
      'left join mtcategoria c On a.cod_cat = c.codcat')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 192
    Top = 88
    object ArticuloCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object ArticuloPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object ArticuloPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object ArticuloCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 15
    end
    object ArticuloARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object ArticuloCAT: TWideStringField
      FieldName = 'CAT'
      Size = 40
    end
    object ArticuloCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
    end
    object ArticuloSTOCK: TFloatField
      FieldName = 'STOCK'
    end
  end
  object zuarticulos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM mtartuculos'
      'WHERE'
      '  mtartuculos.COD_ART = :OLD_COD_ART')
    InsertSQL.Strings = (
      'INSERT INTO mtartuculos'
      
        '  (COD_ART, PRECIO_A, PRECIO_B, CODIGOBARRA, ARTICULO, COSTO_PR,' +
        ' STOCK)'
      'VALUES'
      
        '  (:COD_ART, :PRECIO_A, :PRECIO_B, :CODIGOBARRA, :ARTICULO, :COS' +
        'TO_PR, '
      '   :STOCK)')
    ModifySQL.Strings = (
      'UPDATE mtartuculos SET'
      '  COD_ART = :COD_ART,'
      '  PRECIO_A = :PRECIO_A,'
      '  PRECIO_B = :PRECIO_B,'
      '  CODIGOBARRA = :CODIGOBARRA,'
      '  ARTICULO = :ARTICULO,'
      '  COSTO_PR = :COSTO_PR,'
      '  STOCK = :STOCK'
      'WHERE'
      '  mtartuculos.COD_ART = :OLD_COD_ART')
    UseSequenceFieldForRefreshSQL = False
    Left = 200
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_A'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_B'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOBARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COSTO_PR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_COD_ART'
        ParamType = ptUnknown
      end>
  end
end
