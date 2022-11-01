object FrmVentasxProductos: TFrmVentasxProductos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Reporte de Ventas x Productos'
  ClientHeight = 485
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 8
    TabOrder = 0
    Height = 65
    Width = 609
    object Label1: TLabel
      Left = 298
      Top = 49
      Width = 62
      Height = 13
      Caption = 'Fecha Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 290
      Top = 20
      Width = 70
      Height = 13
      Caption = 'Fecha Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxSpinEdit1: TcxSpinEdit
      Left = 511
      Top = 44
      TabOrder = 0
      Visible = False
      Width = 59
    end
    object Edit1: TEdit
      Left = 15
      Top = 29
      Width = 178
      Height = 21
      CharCase = ecUpperCase
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 1
    end
    object cxButton9: TcxButton
      Left = 193
      Top = 29
      Width = 42
      Height = 23
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 2
      OnClick = cxButton9Click
    end
    object fechafinal: TcxDateEdit
      Left = 366
      Top = 44
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 3
      Width = 123
    end
    object inicio: TcxDateEdit
      Left = 366
      Top = 17
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 4
      Width = 123
    end
    object cxButton5: TcxButton
      Left = 234
      Top = 30
      Width = 39
      Height = 22
      Hint = 'Borrar Instalador'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 961
      OptionsImage.Images = FrmHome.RibbonImages16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = cxButton5Click
    end
    object BtFind: TcxButton
      Left = 495
      Top = 27
      Width = 108
      Height = 25
      Caption = 'Filtro'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000404
        04055C5C5C87545454742221212E020202020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C0C
        0C119F9E9DEED4D3D2FFADACABF9626160A40303030400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C0C
        0C119F9E9DE5E3E2E1FFCCCAC9FF949291EA0C0C0C1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C0C
        0C119F9E9EE5E2E1E0FFCBC9C8FF939191E50C0C0C1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000D0D
        0D11A0A09FE5E2E1E0FFCBC9C8FF949292E50D0D0D1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000D0D
        0D10A2A1A0E5E2E1E0FFCAC9C8FF959392E50D0D0D1000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000E0E
        0E11AAA9A8E9E2E1E0FFCAC9C7FF989796E90E0E0E1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003E3D
        3D54C2C1C0FDE2E1E0FFCAC9C8FFA6A5A4FD3D3D3D5500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001D1D1D259190
        8FE5D0CFCDFFE1E0DFFFCAC9C7FFB0AEADFF807F7EE51E1E1E26000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000B0B0B0D767675C6B3B2
        B0FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF999796FF6D6C6BC60B0B0B0D0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000005D5C5C9C9A9896FFB7B5
        B4FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9C9AFF858482FF5B5B5A9C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004848486D868584FFA2A09FFFB6B5
        B3FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9B9AFF8E8C8AFF797775FF4847
        476E000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000031313142767473F6908F8DFFA1A09EFFB6B5
        B3FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9B9AFF8D8C8AFF81807EFF6D6B
        6AF6303030420000000000000000000000000000000000000000000000000000
        000000000000000000001A1A1A1F696968E081807EFF918F8DFFA1A09EFFB6B5
        B3FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9B9AFF8D8C8AFF82807EFF7775
        73FF666564E11A1A191F00000000000000000000000000000000000000000000
        0000000000000909090A616060BE747271FF848280FF918F8DFFA1A09EFFB6B5
        B3FFD0CFCEFFE1E0DFFFCAC8C7FFB1AFAEFF9D9B9AFF8D8C8AFF82807EFF7A78
        76FF6F6D6BFF61605FBF0909090A000000000000000000000000000000000000
        000002020202545455916D6C6DFF7C7B7BFF858585FF939292FFA3A3A3FFB8B7
        B7FFD2D1D2FFE3E2E3FFCCCACBFFB3B1B2FF9F9E9FFF8F8F8FFF848383FF7C7B
        7BFF777676FF6B6B6BFF52525391020202020000000000000000000000000000
        000013131315756E62EB938876FF998F7DFF9F9584FFA89E8CFFB2A997FFBEB6
        A4FFCEC6B5FFD8D0C0FFCAC2B1FFBCB2A1FFAFA695FFA69D8BFF9F9583FF9A8F
        7DFF968C79FF938775FF756E61EB131313150000000000000000000000000000
        00001918161B956615EBB6811FFFC09031FFC89D41FFCFA951FFD7B560FFDEC1
        70FFE6CE81FFEBD78CFFE6CE80FFDFC272FFD8B864FFD2AD56FFCBA248FFC598
        3AFFBE8D2DFFB6801DFF996916EB1918171B0000000000000000000000000000
        000022201D25AB781CFEC9983BFFD3A64CFFDBB35CFFE2BF6DFFEACC7DFFF1D8
        8DFFF9E69EFFFEEEA9FFF9E59DFFF2DA8FFFEBCF80FFE4C472FFDEB864FFD7AD
        56FFD1A247FFC99639FFB07C1CFE22201D250000000000000000000000000000
        0000080808096151358985704AA786734DA6887551A68A7855A68C7B59A68D7E
        5CA68F8160A6918362A68F8160A68D7E5CA68C7C59A68B7956A6897653A68774
        4FA686724CA6857049A761513589080808090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      OnClick = BtFindClick
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 79
    TabOrder = 1
    Height = 354
    Width = 609
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 605
      Height = 334
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      ExplicitLeft = 80
      ExplicitTop = 144
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsQconsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '=,0.00'
            Kind = skSum
            FieldName = 'GL'
            Column = cxGrid1DBTableView1GL
          end
          item
            Format = '=,$0.00'
            Kind = skSum
            FieldName = 'TOTAL'
            Column = cxGrid1DBTableView1TOTAL
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ART'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          Width = 229
        end
        object cxGrid1DBTableView1GL: TcxGridDBColumn
          DataBinding.FieldName = 'GL'
          HeaderAlignmentHorz = taCenter
          Width = 122
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          Width = 139
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGrid3: TcxGrid
    Left = 23
    Top = 64
    Width = 250
    Height = 142
    TabOrder = 2
    Visible = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxGridDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsAlmacenes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1ID: TcxGridDBColumn
        Caption = 'Cod'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
      end
      object cxGrid2DBTableView1DESCRIPCION: TcxGridDBColumn
        Caption = 'Almacen'
        DataBinding.FieldName = 'DESCRIPCION'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 180
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton17: TcxButton
    Left = 242
    Top = 439
    Width = 164
    Height = 39
    Caption = 'Imprimir'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      00000000000000000000000000000F100F39343434792F2F2F712F2F2F712F2F
      2F712F2F2F712F2F2F712F2F2F712F2F2F712F2F2F712F2F2F712F2F2F712F2F
      2F712F2F2F712F2F2F712F2F2F712F2F2F712F2F2F712F2F2F712F2F2F713333
      33780E0E0E350000000000000000000000000000000000000000000000000000
      000000000000000000000000000042424275FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3A3A3A6C0000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B1B1B4DFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
      F9FF151615440000000000000000000000000000000000000000000000000000
      000000000000000000000000000005050528E3E3E3F4FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9
      D9EF030303220000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000EB0B0B0DBFCFCFCFFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFFCFCFCFFA5A5
      A5D40000000A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7EBEE6E6E6FFDADADAFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDADADAFFE8E8E8FF7474
      74B5000000000000000000000000000000000000000000000000000000000000
      0000000000010202020B0202020C030303175A5A5AC8CFCFCFFFC3C3C3FFC4C4
      C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
      C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC3C3C3FFD0D0D0FF5354
      53C9020202140202020C0202020B000000010000000000000000000000000101
      0104383838A3515251CE585858CF515151D6666666FA7A7A7AFF777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF797979FF5E5E
      5EFB585959D4565756CF505150CE3636369D0101010400000000000000000202
      0208888888FAEAE9E8FFE4E3E3FFE7E7E7FFCBCACBFFC9C9C9FFC9C9CAFFC9C9
      CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9
      CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9C9FFCBCB
      CBFFCDCCCCFFE4E4E3FFE9E9E8FF7F7F7FF40202020800000000000000000202
      0209727170F1E6E5E4FFC0BEBCFF939191FF403E3FFF494648FF484648FF4846
      48FF484648FF484648FF484648FF484648FF484648FF484648FF484648FF4846
      48FF484648FF484648FF484648FF484648FF484648FF484648FF484648FF413F
      40FF8D8B8AFFC1BFBDFFE6E5E4FF6C6B6AEC0202020900000000000000000202
      02098B8B8AE6F1F1F1FFDEDDDCFFBBB9B9FF4F4E4FFF545253FF545253FF5452
      54FF545254FF555354FF555354FF555354FF555355FF565455FF565455FF5654
      55FF565556FF565556FF575556FF575656FF585656FF585657FF585657FF504F
      50FFACABAAFFE0DEDCFFF1F1F1FF838383E10202020900000000000000000202
      0206929190D8F9F9F9FFF6F6F4FFD6D5D5FF535256FF525155FF504F53FF4E4E
      51FF4C4B4EFF49484CFF474649FF454447FF434145FF403F43FF3E3D40FF3C3B
      3EFF3A393CFF38373AFF353537FF333236FF313033FF2F2E32FF2C2B2EFF2222
      26FFB9B9B9FFF8F8F6FFF9F9F9FF8A8988D20202020600000000000000000202
      02047C7C7CC5F6F6F6FFF1F1F0FFDFDFDEFF8E8E90FF8B8B8DFF87878AFF8483
      85FF807F81FF7C7B7DFF777779FF747376FF706F72FF6C6B6EFF676769FF6362
      65FF5F5E61FF5B5A5DFF565759FF545355FF4F4F52FF4B4B4EFF454648FF3F40
      42FFC8C8C8FFF3F3F2FFF6F6F5FF767575BE0202020400000000000000000101
      010260605FA7F4F4F3FFEEEEEDFFE1E0E0FF9A999BFF949496FF929293FF8E8E
      8FFF8A898BFF858587FF808082FF7C7B7DFF777679FF757477FF707173FF6A6A
      6DFF676669FF646366FF605F63FF5E5C60FF5B5A5DFF58575AFF525355FF5352
      54FFD3D2D2FFF0EFEEFFF3F3F3FF5A5A59A00101010200000000000000000101
      010260605FA7F4F4F3FFEEEEEDFFE1E0E0FF9A999BFF949496FF929293FF8E8E
      8FFF8A898BFF858587FF808082FF7C7B7DFF777679FF757477FF707173FF6A6A
      6DFF676669FF646366FF605F63FF5E5C60FF5B5A5DFF58575AFF525355FF5352
      54FFD3D2D2FFF0EFEEFFF3F3F3FF5A5A59A00101010200000000000000000000
      000043434387F2F2F2FFEEEDEDFFE0E0DFFFA9A9A9FFA3A3A4FF9D9D9EFF9999
      9AFF959697FF959596FF949496FF969697FF979698FF8E8E8FFF89888AFF9190
      92FF8B8A8BFF818183FF79787BFF727174FF68686AFF626164FF59585CFF6462
      65FFDDDCDCFFEFEEEDFFF1F1F1FF3E3E3D7F0000000000000000000000000000
      00003232316FF0F0EFFFEEEEEDFFE0DFDFFFADADADFFB3B3B3FFC6C5C5FFCFCE
      CEFFD0D0CFFFD7D6D6FFD8D7D7FFDEDDDDFFE6E5E6FFDEDEDEFFDBDADAFFE6E5
      E5FFE2E1E0FFDEDDDCFFDCDBDBFFD1CFCFFFC4C3C3FFBBB9B9FFAEACAEFF9898
      99FFE1E0E0FFEEEEEDFFEFEFEFFF2D2D2D670000000000000000000000000000
      00001F1F1F59EEEEEEFFF0EFEFFFDFDFDEFFB2B2B1FFD8D6D6FFDEDDDDFFE0DF
      DEFFDFDEDEFFE2E1E0FFCECCCCFFCECDCDFFDFDFDFFFE0E0E0FFE0E0E0FFDDDC
      DCFFC9C9C9FFC7C6C5FFDFDEDDFFDCDADAFFDDDCDBFFDDDCDBFFE0DEDDFFC3C2
      C2FFE1E1E0FFEFEFEFFFEDEDEDFF1B1B1B510000000000000000000000000000
      00001515154AEDECECFFF8F8F8FFECECEAFF959695FF8E8F8EFF919191FF9090
      8FFF908F8FFF919090FF949392FF959594FF959594FF969796FF969796FF9494
      94FF939493FF929291FF8E8F8EFF8D8E8DFF8D8D8DFF8D8D8CFF8A8A89FF9292
      91FFEEEEEDFFF8F8F8FFEBEBEBFF121212420000000000000000000000000000
      000016161626A0A0A0DCC5C4C4F8B9B9B8F1B9B9B8F5C2C2C2FFE8E7E7FFE6E5
      E5FFE6E5E4FFE5E4E4FFE5E5E4FFE5E4E4FFE5E4E3FFE3E3E3FFE3E3E2FFE3E3
      E2FFE3E3E2FFE3E2E2FFE3E2E2FFE3E2E2FFE2E2E2FFE3E2E2FFB6B5B4FFBAB9
      B8F9B5B5B5F9C6C5C5F79D9C9CD8131313210000000000000000000000000000
      000000000000050505080505050B0505050A16171623B2B1B1FFF6F5F5FFF1F0
      F0FFF1F0F1FFF2F1F1FFF2F1F1FFF2F1F1FFF2F1F0FFF1F1F0FFF1F1F0FFF1F1
      F0FFF1F1F0FFF1F0F0FFF1F0F0FFF1F0F0FFF1F0F0FFF5F4F4FFBBBABBFF1919
      19270505050B0605050B05050508000000000000000000000000000000000000
      0000000000000000000000000000000000001A1A1A22BCBBBAFFF9F8F8FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF8F7F7FFC1C1C1FF1F1F
      1F26010101010000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000011111117B9B9B9F6FBFAFAFFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF9F8F8FFC0BFBFFB0303
      0305000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020204A1A1A1DCFFFFFFFFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFB7B6B6F40000
      0002000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000019B9B9BE0FFFFFFFFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFAFAEAEF40101
      0102000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001929292E3FFFFFFFFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFA4A3A3F50000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001929292E3FFFFFFFFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFA4A3A3F50000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001929292E3FFFFFFFFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFA4A3A3F50000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001929292E3FFFFFFFFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFA4A3A3F50000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001929393E3FFFEFEFFF5F4
      F4FFF5F4F4FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF7F6F6FFF7F6
      F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFFDFCFCFF353535780000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000019F9F9FEBFFFFFFFFFFFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1A5B0101
      0102000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A53262626652423
      2361242323612423236124232361242323612424246124242461242424612424
      24612424246124242461242424612424246124242461262626642120205E0000
      0001000000000000000000000000000000000000000000000000}
    TabOrder = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    WordWrap = True
    OnClick = cxButton17Click
  end
  object DsAlmacenes: TDataSource
    DataSet = almacenes
    Left = 72
    Top = 400
  end
  object almacenes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from almacenes')
    Params = <>
    Left = 32
    Top = 400
    object almacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object almacenesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object QConsulta: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      
        'select b.cod_art, c.articulo, sum(b.cantidad) Gl, sum((b.precio ' +
        '* b.cantidad)) Total from master_fact a'
      'left join detailfact b On a.no_fact = b.masterid'
      
        'left join mtartuculos c On b.articuloid = c.cod_art and c.condic' +
        'ion = '#39'Productos'#39
      'where a.situacion ='#39'IMPRESA'#39
      'AND a.TIPO ='#39'Contado'#39
      'group by b.cod_art, c.articulo')
    Params = <>
    Left = 344
    Top = 191
    object QConsultaCOD_ART: TWideStringField
      DisplayLabel = 'Codigo'
      FieldName = 'COD_ART'
      Size = 15
    end
    object QConsultaARTICULO: TWideStringField
      DisplayLabel = 'Productos'
      FieldName = 'ARTICULO'
      Size = 100
    end
    object QConsultaGL: TExtendedField
      DisplayLabel = 'Total Gl.'
      FieldName = 'GL'
      ReadOnly = True
      Precision = 19
    end
    object QConsultaTOTAL: TExtendedField
      DisplayLabel = 'Total '
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object DsQconsulta: TDataSource
    DataSet = QConsulta
    Left = 400
    Top = 191
  end
  object FxCuadre: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43568.227152835600000000
    ReportOptions.LastChange = 43568.227152835600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 232
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'Config'
      end
      item
        DataSet = FxDetalle
        DataSetName = 'FxDetalle'
      end
      item
        DataSet = FxMaster
        DataSetName = 'FxMaster'
      end
      item
        DataSet = FxTarjetas
        DataSetName = 'FxTarjetas'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fecha1'
        Value = ''
      end
      item
        Name = 'fecha2'
        Value = ''
      end
      item
        Name = 'estacion'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 9.906000000000000000
      BottomMargin = 9.906000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 230.400000000000000000
        Top = 19.200000000000000000
        Width = 741.120478640000000000
        object Memo5: TfrxMemoView
          Left = 290.000000000000000000
          Top = 115.200000000000000000
          Width = 240.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desde                  Hasta                   ')
          ParentFont = False
        end
        object configuracionEMPRESA: TfrxMemoView
          Width = 736.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          Left = 2.000000000000000000
          Top = 19.000000000000000000
          Width = 736.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          Left = 270.000000000000000000
          Top = 37.400000000000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Config."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 418.000000000000000000
          Top = 37.400000000000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Config."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 245.000000000000000000
          Top = 37.400000000000010000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 383.000000000000000000
          Top = 37.400000000000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 9.600000000000000000
          Top = 76.800000000000000000
          Width = 720.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 242.600000000000000000
          Top = 84.399999999999990000
          Width = 297.600000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de Ventas x Productos')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 9.600000000000000000
          Top = 115.200000000000000000
          Width = 720.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 11.800000000000000000
          Top = 182.400000000000000000
          Width = 720.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo30: TfrxMemoView
          Left = 9.600000000000000000
          Top = 163.200000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estaci'#243'n :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.600000000000000000
          Top = 208.600000000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 485.000000000000000000
          Top = 209.200000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Monto Total')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 9.600000000000000000
          Top = 228.400000000000000000
          Width = 720.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object fecha1: TfrxMemoView
          Left = 334.400000000000000000
          Top = 114.200000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          Left = 437.600000000000000000
          Top = 114.200000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '[fecha2]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 86.400000000000000000
          Top = 208.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Productos')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 341.000000000000000000
          Top = 210.200000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Gl. Comb.')
          ParentFont = False
        end
        object estacion: TfrxMemoView
          Left = 96.000000000000000000
          Top = 163.200000000000000000
          Width = 211.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[estacion]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 19.200000000000000000
        Top = 307.200000000000000000
        Width = 741.120478640000000000
        DataSet = FxTarjetas
        DataSetName = 'FxTarjetas'
        RowCount = 0
        object FxMasterCOMPANIA: TfrxMemoView
          Left = 9.600000000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = FxTarjetas
          DataSetName = 'FxTarjetas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '[FxTarjetas."COD_ART"]')
          ParentFont = False
        end
        object FxMasterSUM: TfrxMemoView
          Left = 480.000000000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'TOTAL'
          DataSet = FxTarjetas
          DataSetName = 'FxTarjetas'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FxTarjetas."TOTAL"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 86.400000000000000000
          Width = 230.400000000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = FxTarjetas
          DataSetName = 'FxTarjetas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '[FxTarjetas."ARTICULO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 345.600000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          DataField = 'GL'
          DataSet = FxTarjetas
          DataSetName = 'FxTarjetas'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FxTarjetas."GL"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 48.000000000000000000
        Top = 384.000000000000000000
        Width = 741.120478640000000000
        object Line6: TfrxLineView
          Left = 316.800000000000000000
          Top = 6.000000000000000000
          Width = 134.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 326.400000000000000000
          Top = 9.600000000000023000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FxTarjetas."GL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 477.000000000000000000
          Top = 6.600000000000023000
          Width = 134.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo2: TfrxSysMemoView
          Left = 486.600000000000000000
          Top = 10.199999999999990000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FxTarjetas."TOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object Config: TfrxDBDataset
    UserName = 'Config'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_COM=CODIGO_COM'
      'EMPRESA=EMPRESA'
      'RNC=RNC'
      'TELEFONO=TELEFONO'
      'FAX=FAX'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'CONTACTO=CONTACTO'
      'FACTIMPRIME=FACTIMPRIME'
      'GENERART=GENERART'
      'ITBIS=ITBIS'
      'AVG_GANANCIA=AVG_GANANCIA'
      'COBRAR_ITBS=COBRAR_ITBS'
      'THEMS=THEMS'
      'ANCHO=ANCHO'
      'ALTO=ALTO'
      'RUTABACKUP=RUTABACKUP'
      'ABRIRCAJON=ABRIRCAJON'
      'PTINTERTPV=PTINTERTPV'
      'CARGO_CARD=CARGO_CARD'
      'CARGO_CHEQUE=CARGO_CHEQUE'
      'MSN_PIE_FACT=MSN_PIE_FACT'
      'IMP_CANT=IMP_CANT'
      'IMPRIMIRCREDITO=IMPRIMIRCREDITO'
      'IMPRIMIRCONTADO=IMPRIMIRCONTADO'
      'DESCUENTO=DESCUENTO'
      'TIPOITBS=TIPOITBS'
      'TERMINAL=TERMINAL'
      'STOPVENTAS=STOPVENTAS'
      'STOPCOMPRAS=STOPCOMPRAS'
      'CONTROLSTOPVENTAS=CONTROLSTOPVENTAS'
      'CONTROLSTOPCOMPRAS=CONTROLSTOPCOMPRAS'
      'NCF_CF_INICIO_NUMERO=NCF_CF_INICIO_NUMERO'
      'NCF_CF_INICIO_LETRA=NCF_CF_INICIO_LETRA'
      'NCF_CF_CONTADOR=NCF_CF_CONTADOR'
      'NCF_CF_FINAL_NUMERO=NCF_CF_FINAL_NUMERO'
      'NCF_VF_INICIO_NUMERO=NCF_VF_INICIO_NUMERO'
      'NCF_VF_INICIO_LETRA=NCF_VF_INICIO_LETRA'
      'NCF_VF_CONTADOR=NCF_VF_CONTADOR'
      'NCF_VF_FINAL_NUMERO=NCF_VF_FINAL_NUMERO'
      'NCF_ESP_INICIO_NUMERO=NCF_ESP_INICIO_NUMERO'
      'NCF_ESP_INICIO_LETRA=NCF_ESP_INICIO_LETRA'
      'NCF_ESP_CONTADOR=NCF_ESP_CONTADOR'
      'NCF_ESP_FINAL=NCF_ESP_FINAL'
      'NO_AUTORIZACION2=NO_AUTORIZACION2'
      'NO_AUTORIZACION3=NO_AUTORIZACION3'
      'NO_AUTORIZACION=NO_AUTORIZACION'
      'USAR_CF=USAR_CF'
      'USAR_VF=USAR_VF'
      'USAR_ESP=USAR_ESP'
      'ROTULO_FC=ROTULO_FC'
      'ROTULO_FVF=ROTULO_FVF'
      'ROTULO_ESP=ROTULO_ESP'
      'VARIABLE_DEDUCIBLE=VARIABLE_DEDUCIBLE'
      'LOGO=LOGO'
      'CLAVEANULAR=CLAVEANULAR'
      'TERMINAL_TPV=TERMINAL_TPV'
      'MONTOCF=MONTOCF'
      'REDONDEAR=REDONDEAR'
      'COMISIONVENTA=COMISIONVENTA'
      'CONFID=CONFID'
      'LOGO_FRONTAR=LOGO_FRONTAR'
      'LOGOF_TXT=LOGOF_TXT'
      'LOGOP_TXT=LOGOP_TXT'
      'INSERTARSERIAL=INSERTARSERIAL'
      'DIRECCION=DIRECCION'
      'ITBIS_D=ITBIS_D'
      'ENLACEAWEB=ENLACEAWEB'
      'PISTOLAOPTICA=PISTOLAOPTICA'
      'TIPO_FACTURACION=TIPO_FACTURACION'
      'EXISTENCIAFACT=EXISTENCIAFACT'
      'RUTADB=RUTADB'
      'CANT_CAJA=CANT_CAJA'
      'TAZA=TAZA'
      'MONEDA=MONEDA'
      'APLICAR_AUMENTO_TAZA=APLICAR_AUMENTO_TAZA'
      'ANCHO_IMG_FRONTAL=ANCHO_IMG_FRONTAL'
      'ALTO_IMG_FRONTAL=ALTO_IMG_FRONTAL'
      'LEFT_IMAGEN=LEFT_IMAGEN'
      'RIGHT_IMAGEN=RIGHT_IMAGEN'
      'REDONDEOCOMPLETO=REDONDEOCOMPLETO'
      'CLAVEAUTORIZACION=CLAVEAUTORIZACION'
      'COMPROBANTEDEFAULT=COMPROBANTEDEFAULT'
      'USOAPLICACION=USOAPLICACION'
      'ARTICULOSVARIOS=ARTICULOSVARIOS'
      'MENSAJE_PIE1=MENSAJE_PIE1'
      'MENSAJE_PIE2=MENSAJE_PIE2'
      'IMPRESION_RAPIDA=IMPRESION_RAPIDA'
      'IMPRESIONDEFECTO=IMPRESIONDEFECTO'
      'TEXINICIAR=TEXINICIAR'
      'LONGTICKET=LONGTICKET'
      'IMPRIMEOPCIONAL=IMPRIMEOPCIONAL'
      'ENTRAREFECTIVOINICIAL=ENTRAREFECTIVOINICIAL'
      'CAJAID=CAJAID'
      'USARCASHDRAWER=USARCASHDRAWER'
      'ITBS_DEDUCIBLE=ITBS_DEDUCIBLE'
      'IMPRIMECOTIZA=IMPRIMECOTIZA'
      'USARRMA=USARRMA'
      'ALMACENRMA=ALMACENRMA'
      'ALMACENNOMBRE=ALMACENNOMBRE'
      'HABILITARMORA=HABILITARMORA')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 305
    Top = 208
  end
  object FxDetalle: TfrxDBDataset
    UserName = 'FxDetalle'
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
    Left = 328
    Top = 288
  end
  object FxTarjetas: TfrxDBDataset
    UserName = 'FxTarjetas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_ART=COD_ART'
      'ARTICULO=ARTICULO'
      'GL=GL'
      'TOTAL=TOTAL')
    DataSet = QConsulta
    BCDToCurrency = False
    Left = 464
    Top = 320
  end
  object FxMaster: TfrxDBDataset
    UserName = 'FxMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDTARJETAS=IDTARJETAS'
      'SUM=SUM'
      'COMPANIA=COMPANIA'
      'DESCRIPCION=DESCRIPCION')
    DataSet = QConsulta
    BCDToCurrency = False
    Left = 480
    Top = 256
  end
end
