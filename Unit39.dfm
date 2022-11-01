object frmNC: TfrmNC
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Nota de Cr'#233'dito'
  ClientHeight = 461
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object Label6: TLabel
    Left = 587
    Top = 294
    Width = 70
    Height = 16
    Caption = 'Observaci'#243'n'
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 49
    Align = alTop
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 0
    Height = 128
    Width = 893
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 47
      Height = 16
      Caption = 'Cod NC:'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 79
      Top = 8
      Width = 56
      Height = 16
      Caption = '# Factura'
      FocusControl = cxDBSpinEdit2
    end
    object Label3: TLabel
      Left = 629
      Top = 8
      Width = 34
      Height = 16
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit1
    end
    object Label4: TLabel
      Left = 176
      Top = 8
      Width = 65
      Height = 16
      Caption = 'Cod Cliente'
      FocusControl = cxDBSpinEdit3
    end
    object Label5: TLabel
      Left = 247
      Top = 8
      Width = 109
      Height = 16
      Caption = 'Nombre del Cliente'
      FocusControl = cxDBTextEdit1
    end
    object Label12: TLabel
      Left = 16
      Top = 91
      Width = 70
      Height = 16
      Caption = 'Observaci'#243'n'
      FocusControl = cxDBSpinEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 8
      Top = 24
      DataBinding.DataField = 'MNCID'
      DataBinding.DataSource = DsMaster
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 65
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 79
      Top = 24
      DataBinding.DataField = 'NO_FACT'
      DataBinding.DataSource = DsMaster
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 82
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 629
      Top = 24
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = DsMaster
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 121
    end
    object Panel1: TPanel
      Left = 171
      Top = 3
      Width = 1
      Height = 65
      TabOrder = 3
      object Panel2: TPanel
        Left = 6
        Top = 0
        Width = 1
        Height = 65
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 625
      Top = 1
      Width = 2
      Height = 65
      TabOrder = 4
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 176
      Top = 24
      DataBinding.DataField = 'CLIENTEID'
      DataBinding.DataSource = DsMaster
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 65
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 247
      Top = 24
      DataBinding.DataField = 'NOMBRES'
      DataBinding.DataSource = DsMaster
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 266
    end
    object Panel4: TPanel
      Left = 2
      Top = 68
      Width = 945
      Height = 1
      TabOrder = 7
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 764
      Top = 9
      Caption = 'Afectar Caja'
      DataBinding.DataField = 'AFECTA_CAJA'
      DataBinding.DataSource = DsMaster
      Properties.Alignment = taLeftJustify
      Properties.DisplayChecked = 'False'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 2
      Style.BorderStyle = ebsOffice11
      TabOrder = 8
      Visible = False
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 764
      Top = 30
      Caption = 'Afectar Inventario'
      DataBinding.DataField = 'AFECTA_INV'
      DataBinding.DataSource = DsMaster
      Properties.Alignment = taLeftJustify
      Properties.DisplayChecked = 'False'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 2
      Style.BorderStyle = ebsOffice11
      TabOrder = 9
      Visible = False
    end
    object Panel6: TPanel
      Left = 756
      Top = 5
      Width = 2
      Height = 65
      TabOrder = 10
    end
    object cxButton8: TcxButton
      Left = 519
      Top = 16
      Width = 100
      Height = 32
      Caption = 'Buscar Cliente'
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D761400000000000036000000280000002400000024000000010020000000
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
        0000000000000000000000000000000000000000000000000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000080000001A0100
        002D0200013C03000243030002420200013D000000300000001F000000100000
        0008000000030000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        001A0E050A643B1D2DA96B3553D58A4068EB983D6FF59A356DF8962C66F88D27
        5FF47C2555E95C1B3FD2300B1FA80A000566000000260000000C000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000080305476D3D58D3C87DA6FFD481AFFFCF72A6FFC761
        9AFFBF4C8BFFB93D82FFB4307AFFB32D78FFBB3F84FFC24F8FFFC55B96FFB14C
        84FF49122FC60200014000000008000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000001589466AE8D883
        B3FFCD78A7FFC76B9EFFC35F96FFBD4F8CFFCF7EABFFE5BAD2FFE2B1CCFFC15A
        93FFAF2C75FFB74183FFBF5590FFCB6EA2FFCD69A0FF2506149C000000120000
        0009000000090000000700000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000C753557D8CC6AA1FFC36198FFC15A93FFBD4F8CFFBF55
        90FFF9EFF5FFFFFFFFFFFFFFFFFFF1DBE8FFAF2B75FFB3347AFFBA4988FFC562
        99FFBA5088FF230733C703031D810001116C000005500000002F000000170000
        000C000000020000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000010040B56B049
        81FEC15390FFBB4B89FFB84183FFC0528FFFFFF8FBFFFFFFFFFFFFFFFFFFF9EC
        F3FFB02D75FFAD2772FFB73F82FFC14C87FF78206DFF2B2EDFFF2A2FFBFF3035
        F2FF2C30D6FA15178CDB00002892000000340000000F00000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000260A1889B43E7FFFBB3F84FFB9347BFFAF44
        83FFC3CDDAFFB7CDDAFFC3D6DFFFE6D9E4FFB42772FFAB1C6CFFB62F74FF8920
        66FF3A2EC5FF2C34FFFF252AFFFF3439FFFF4D51FFFF6367FFFF4D51F9FF0809
        52B90000001D0000000100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000050000000C0000
        00192C0A1BA6A52D6EFE6A4381FF236CA2FF117EB4FF0D7DB6FF107EB5FF2980
        AFFF6E3476FFA7115EFF791A6BFF3D32C6FF3139FFFF252AFEFF1D23FFFF2328
        FFFF3B3FFFFF5559FFFF787BFFFF222599E00000001D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00070001003709130B7A1C3323AE2A4E35CB21492DDD234A65FE148CC6FF1694
        CEFF1991CBFF1991CBFF1991CBFF1592CDFF1684B9FF3A3380FF2B2FA8FF2531
        C5FF262BECFF2528BAFF171CFBFF171CFFFF2C31FFFF494EFFFF5256FFFF0505
        3597000000050000000000000000000000000000000000000000000000000000
        000000000000000000000000001817281C9B70937AF197C1A3FF8EC09DFF6FAA
        80FF174C5AFF044E77FF1F9BD6FF1F9AD5FF1F9AD4FF1F9AD4FF1F9AD4FF1F9A
        D4FF1F9FD8FF1576B8FF063264FF062A75FF3233BDFFBBBBCFFF1E22DFFF0D13
        FFFF1D22FFFF383CFFFF13158FDB000001240000000000000000000000000000
        0000000000000000000000000000000000000000000000000002223A28AFAAD0
        B6FFAFD2B9FF95C1A2FF7BB38BFF4F8A68FF013D61FF003C63FF1774A3FF26A9
        E5FF24A3DEFF24A3DEFF24A3DEFF24A3DEFF24A4E0FF219AD1FF024467FF002C
        5FFF7E7FA8FFF4F6F2FF5D5EC5FF0306FFFF0F15FFFF0A0E91DA000004360000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000002284832BEA6CFB2FF94C0A1FF7EB38DFF67A778FF3D7D
        5AFF003C62FF00426CFF033F64FF208CBFFF2BB2EFFF29ACE8FF29ACE8FF29AC
        E8FF29AEEAFF27A1DAFF04456CFF023A5EFF2B6B8CFF2E88B3FF2777A9FF072A
        C3FE010151B50000022B00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010602445E97
        6FFB84B893FF69A77CFF529A66FF32794FFF013D61FF00426CFF004069FF0542
        67FF2392C6FF31BCFAFF2FB6F3FF2EB6F2FF2FB8F5FF2AA5DEFF034269FF003C
        61FF16749BFF1F98C8FF229ECCFF2194BDFE031B25940000001A000000050000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000007170C7C579A6BFF589E6DFF3E8E55FF2E7C
        45FF05405AFF02436EFF03446DFF004169FF034065FF2086B6FF32BDFAFF32BF
        FCFF32BEFCFF2BA6DDFF024167FF013C62FF2381A3FF31ABD3FF32ADD5FF35B3
        DBFF258BB1F6000406520000000C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001071C0D8935854CFF308746FF227647FF0B455AFF155078FF104C74FF0B49
        71FF07466EFF033D63FF115F89FF279BD1FF32BBF7FF2BA4DBFF013F65FF023D
        62FF3197B5FF3EBDDFFF3FBFE0FF41C0E1FF42C4E7FF0A2B38A2000000160000
        0002000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000311067015604CF31882
        ADFF126B96FF205274FF285F83FF1B5378FF134567FF0D4A72FF07436AFF023E
        64FF0B5179FF0E577FFF00395FFF155A78FF48C2DCFF4CCFEAFF4DD0EBFF4ED1
        EBFF53DAF4FF247188DB000000310000000D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001022218749DED2AA6D5FF289FCBFF175B7DFF366584FF396D
        8DFF2B5D7EFF214E6EFF175075FF0C4B73FF00416AFF003963FF11516EFF4EC4
        D8FF59E0F5FF5AE1F6FF5CE4F8FF5DE6FAFF61EEFFFF46B9D0FB0003067F0000
        0018000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000006202D8534B3DBFF36B2
        D8FF37B5DBFF33A9CDFF206382FF3B6785FF487796FF3F6E8DFF345F7CFF2757
        77FF043F67FF0D4B6BFF4EBFCFFF65EFFFFF67F3FFFF68F5FFFF61E7F5FF5DDC
        EAFF5EDDE8FF53CCDDFF03121ACC000000230000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000D1B617BCF45C8E9FF42C2E3FF43C4E3FF46C8E7FF44C1DEFF2A80
        9CFF245B79FF326180FF356584FF1B4763FA04293FFC52CADBFF6CFBFFFF6AFB
        FFFF55CAD4FF275A5FFF14282BFF111C1EFF0E1719FF0A181AFF010406D40000
        0021000000020000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000A1158248DB5FF50D5EFFF53D4
        EEFF5CD7EFFF61D9F0FF64DDF3FF67E1F7FF5BCCE1FF42A8C0FF052B3FC60001
        0365030D10F643A3B0FF52C3C9FF3C8B93FF1C2527FF1D1516FF1A1617FF0A07
        07FF020000FF000000FF000000B8000000110000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000001141F6E127CAEFF5FD5E9FF78EBFBFF7CEDFCFF81F1FFFF82F2FFFF81F1
        FEFF86F6FFFF70DDF1FF063C58CB00000031000000EB0C0A0AFF202020FF3530
        30FF474545FF2F2F2FFF060606FF000000FF000000FF000000FF0000006A0000
        0002000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000010E155E0B6EA2FF6CCEE0FF96FF
        FFFF7FE4F1FF46A3BFFF439EBCFF7DDFECFF94F8FCFF4CA9C7FF023D5ED30000
        001700000096050404FF1E1D1DFF2B2B2BFF1C1C1CFF030303FF000000FF0000
        00FF000000FF000000A20000000E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000005083B085F8EFF2E81A4FF51A5BCFF27769BFF196A97FF186B99FF2271
        99FF297A9EFF0F6998FF032A40B40000000B0000000F000000A4000000F90000
        00FF000000FF000000FF000000F0000000C00000006000000007000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000C053E5FDA06527DFF1F61
        87FF377597FF387698FF367597FF2F7094FF125C85FF085883FF000B11680000
        00020000000000000000000000320000005D0000006200000049000000220000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000B115806466DFD0D486BFF195272FF1C5475FF185272FF0E4B
        6DFF08496FFF022A42C400000014000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000B125D0330
        4DDC033859FF033758FF033858FF04395BFB012236B500010223000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000001011000060943000A115E00090E580003
        0634000000030000000000000000000000000000000000000000000000000000
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
        00000000000000000000000000000000000000000000}
      TabOrder = 11
      WordWrap = True
      OnClick = cxButton8Click
    end
    object cxDBMemo1: TcxDBMemo
      Left = 108
      Top = 72
      DataBinding.DataField = 'OBSERVACION'
      DataBinding.DataSource = DsMaster
      Properties.CharCase = ecUpperCase
      Properties.WantTabs = True
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      StyleFocused.LookAndFeel.SkinName = 'Caramel'
      StyleHot.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 12
      Height = 51
      Width = 774
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 9
    Top = 188
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
    Height = 265
    Width = 873
    object Label10: TLabel
      Left = 43
      Top = 1
      Width = 39
      Height = 16
      Caption = 'Codigo'
      FocusControl = cxDBTextEdit1
    end
    object Label11: TLabel
      Left = 91
      Top = 1
      Width = 110
      Height = 16
      Caption = 'Nombre del Articuo'
      FocusControl = cxDBTextEdit1
    end
    object Label30: TLabel
      Left = 443
      Top = 1
      Width = 50
      Height = 16
      Caption = 'Cantidad'
      FocusControl = cxDBTextEdit1
    end
    object Label7: TLabel
      Left = 501
      Top = 0
      Width = 35
      Height = 16
      Caption = 'Precio'
      FocusControl = cxDBTextEdit1
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 43
      Width = 850
      Height = 212
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = DsDetalle
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total =,$0.00'
            Kind = skSum
            FieldName = 'TOTAL'
            Column = cxGrid1DBTableView1TOTAL
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.AutoHeight = False
        object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'COD_ART'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 112
        end
        object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
          Caption = 'Articulo'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 379
        end
        object cxGrid1DBTableView1CANT: TcxGridDBColumn
          Caption = 'Cant'
          DataBinding.FieldName = 'CANT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 79
        end
        object cxGrid1DBTableView1PRECIO: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 111
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 156
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton10: TcxButton
      Left = 6
      Top = 12
      Width = 34
      Height = 27
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      OnClick = cxButton10Click
    end
    object t1: TcxTextEdit
      Left = 43
      Top = 14
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 48
    end
    object t2: TcxTextEdit
      Left = 95
      Top = 15
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 339
    end
    object t4: TcxCurrencyEdit
      Left = 499
      Top = 14
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 87
    end
    object t3: TEdit
      Left = 442
      Top = 15
      Width = 53
      Height = 24
      Enabled = False
      TabOrder = 5
      OnKeyDown = t3KeyDown
    end
    object cxButton9: TcxButton
      Left = 592
      Top = 12
      Width = 89
      Height = 25
      Caption = 'A'#241'adir'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 114
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 6
      OnClick = cxButton9Click
    end
    object Edit1: TEdit
      Left = 752
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 7
      Visible = False
    end
  end
  object panelarti: TcxGroupBox
    Left = 44
    Top = 178
    Caption = 'Articulos'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 2
    Visible = False
    Height = 206
    Width = 754
    object cxGrid2: TcxGrid
      Left = 3
      Top = 16
      Width = 748
      Height = 181
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid2DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid2DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = DsArti
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.CellTextMaxLineCount = 5
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.AutoHeight = False
        object cxGrid2DBTableView1COD_ART: TcxGridDBColumn
          Caption = 'Cod.'
          DataBinding.FieldName = 'COD_ART'
          MinWidth = 51
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 118
        end
        object cxGrid2DBTableView1ARTICULO: TcxGridDBColumn
          Caption = 'Articulo'
          DataBinding.FieldName = 'TITULOPRN'
          MinWidth = 244
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 353
        end
        object cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn
          Caption = 'Cant'
          DataBinding.FieldName = 'CANTIDAD'
          MinWidth = 48
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 61
        end
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Cant. Rest'
          DataBinding.FieldName = 'ALTO'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
        end
        object cxGrid2DBTableView1PRECIO: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 91
        end
        object cxGrid2DBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          MinWidth = 75
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 114
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 893
    Height = 49
    Align = alTop
    TabOrder = 3
    object cxButton2: TcxButton
      Left = 8
      Top = 9
      Width = 137
      Height = 32
      Caption = 'Nueva Nota'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 0
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 151
      Top = 9
      Width = 154
      Height = 32
      Caption = 'Buscar Facturas'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 258
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      WordWrap = True
      OnClick = cxButton1Click
    end
    object cxButton6: TcxButton
      Left = 424
      Top = 10
      Width = 114
      Height = 33
      Caption = 'Consultar NC'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 966
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 2
      OnClick = cxButton6Click
    end
    object cxButton5: TcxButton
      Left = 760
      Top = 9
      Width = 101
      Height = 32
      Caption = '&Cerrar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 265
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 3
      OnClick = cxButton5Click
    end
    object cxButton4: TcxButton
      Left = 543
      Top = 9
      Width = 101
      Height = 32
      Caption = '&Cancelar'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 45
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 4
      OnClick = cxButton4Click
    end
    object cxButton3: TcxButton
      Left = 647
      Top = 9
      Width = 107
      Height = 32
      Caption = '&Guardar'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 5
      OnClick = cxButton3Click
    end
    object Edit2: TEdit
      Left = 328
      Top = 13
      Width = 90
      Height = 24
      TabOrder = 6
      Visible = False
    end
  end
  object PanelFinal: TPanel
    Left = 258
    Top = 94
    Width = 305
    Height = 288
    TabOrder = 4
    Visible = False
    object Label9: TLabel
      Left = 24
      Top = 88
      Width = 120
      Height = 16
      Caption = 'Aplicar Comprobante'
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 303
      Height = 79
      Align = alTop
      Color = 10053171
      ParentBackground = False
      TabOrder = 0
      object Label8: TLabel
        Left = 48
        Top = 13
        Width = 177
        Height = 18
        Caption = 'Total de la Nota Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxCurrencyEdit1: TcxCurrencyEdit
        Left = 7
        Top = 38
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Nullstring = '0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 10053171
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -27
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.TextStyle = []
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.TextStyle = []
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.TextStyle = []
        TabOrder = 0
        Width = 273
      end
    end
    object cxButton7: TcxButton
      Left = 70
      Top = 243
      Width = 153
      Height = 41
      Caption = 'Procesar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E0000000000000000000003030104A57A1DC0DBA2
        27FFDBA227FFDBA227FFDBA227FFDBA227FFDBA227FFDBA227FFDBA227FFDBA2
        27FFDBA227FFDBA227FFDBA227FFDBA227FFDBA227FFDBA227FFDBA227FFDBA2
        27FFDBA227FFD8A12BFFA28877FF8178A5FF5D65CBF64D5BD3EB3B47A3B62931
        717E06071012000000000000000000000000000000000E0A0210DBA227FFE9DC
        C1FFEAE1CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1
        CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1CFFFEAE1
        CFFFCDC9D3FF6F7AE1FF5363E5FF5565E5FF5363E5FF5363E5FF5363E5FF5565
        E5FF4C5AD0E81B204A520000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFD9D9
        EAFF5867E5FF5E6DE7FF97A1EFFFD0D4F8FFB5BCF4FF98A2F0FF99A3F0FFC8CD
        F7FFC0C5F5FF717FEAFF1D23505900000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF1EEEBFF7480
        E6FF5363E5FFC3C9F6FF98A1EFFFCBD0F7FFA4ACF1FF8994EDFF8994EDFFBFC5
        F5FFB3BAF3FF6B78E9FF4D5CD5ED08091618000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFEAE6DFFFDFDAD2FFDFDAD2FFECE8E1FFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFBCBFE9FF5363
        E5FF5363E5FF8D98EEFFD5D9F9FFCACFF7FFCACFF7FFCACFF7FFCACFF7FFCACF
        F7FFCACFF7FF6D7AE9FF5363E5FF2F388190000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC4BBAFFFD9D2C9FFD4CDC3FFCBC3B8FFF2EFE9FFF0ECE7FFF0EC
        E7FFF0ECE7FFF0ECE7FFF0ECE7FFF0ECE7FFF0ECE7FFF0ECE7FF99A0E6FF5363
        E5FF5363E5FF6C7AE9FFBAC0F4FF6A79E9FF6675E8FF6070E8FF6574E8FF6A78
        E9FF929DEFFF929DEFFF5363E5FF404DB2C6000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC5BCB0FFF3F0EBFFECE9E3FFCBC3B8FFD9D3CAFFBBB1A3FFBBB1
        A3FFBBB1A3FFBBB1A3FFBBB1A3FFBBB1A3FFBBB1A3FFBBB1A3FF6D76D5FF5363
        E5FF5363E5FF8F99EEFF939DEFFFCFD4F8FFB4BBF4FF8994EDFFA9B1F2FFCACF
        F7FF717EE9FFB1B9F3FF5363E5FF505FDCF5010103030E0A0210DBA227FFF2EF
        E9FFF3F0EBFFD2CBC1FFC5BCB0FFC3BAAEFFD8D1C8FFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFF7C87E7FF5363
        E5FF5363E5FFB2B9F3FF6F7CE9FFCFD4F8FFB4BBF4FF8994EDFFA9B1F2FFCACF
        F7FF5665E5FFCBD0F7FF5363E5FF4F5EDAF3010102020E0A0210DBA227FFF2EF
        E9FFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFF9CA4E8FF5363
        E5FF5363E5FFCFD4F8FF6F7CE9FF6E7BE9FF6E7BE9FF6E7BE9FF6E7BE9FF6E7B
        E9FF6E7BE9FFD5D9F9FF5363E5FF3F4BAEC2000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFCFC7BDFFC5BCB0FFC3B9ADFFD5CEC5FFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFC1C4E9FF5363
        E5FF5464E5FFE1E3FAFFB4BBF4FFB4BBF4FFB4BBF4FFB4BBF4FFB4BBF4FFB4BB
        F4FFB4BBF4FFB3BAF4FF5767E6FF2C357A88000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC5BCB0FFF3F0EBFFECE9E3FFCBC3B8FFD6CFC5FFB4A99BFFB4A9
        9BFFB4A99BFFB4A99BFFB4A99BFFB4A99BFFB4A99BFFB4A99BFFB4A99BFF6C75
        D2FFB9BFF4FFA5ADF1FF5363E5FF5363E5FF5363E5FF5363E5FF5363E5FF5363
        E5FF5363E5FF5363E5FF4B59CEE505060E10000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC4BBAFFFD2CBC1FFCEC6BBFFCBC3B8FFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFE0DF
        EAFF5C6BE5FF5363E5FF5363E5FF5363E5FF5363E5FF5363E5FF5363E5FF5363
        E5FF5363E5FF5262E3FD181C424900000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFEDE9E3FFE6E1DAFFE6E1DAFFEEEAE5FFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFE5E0D9FFC9C0B4FFE7EAE8FFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFFDEDDEAFF7A85E6FF5363E5FF5363E5FF5363E5FF5363E5FF5363E5FF5363
        E5FF4856C6DD1418373D0000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFE2DDD5FFCFC7BCFFCFC7BCFFE5E1DAFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFE4DFD7FF9D9B8FFF64D4FBFF7CD5F8FFB8E2F0FFF3F0EBFFF3F0
        EBFFF3F0EBFFF2EFEBFFBBBEE9FF949CE6FF7071BCFF4653BFD5353F91A2232A
        626D04040A0B000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC5BCB0FFE4E1DEFFDCD8D8FFCBC3B8FFEAE6DFFFDFDAD2FFDFDA
        D2FFDFDAD2FFDFDAD2FF6FD5F8FF5ABFF3FF57BCF3FF59C4F6FFAED4E1FFDFDA
        D2FFE7E2DBFFF3F0EBFFF3F0EBFFF2EEE7FFDBA227FF07050108000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC5BCB0FFB5B9E9FF8892E4FFBDB8BDFFDFDAD2FFC8BFB4FFC8BF
        B4FFC8BFB4FFC8BFB4FF79CAE8FF59C1F5FF4489DDFF57BEF3FF59C4F6FFA8C2
        C9FFD8D2C9FFF3F0EBFFF3F0EBFFF2EEE7FFDBA227FF07050108000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFD9D3CAFFC5BCB0FFBEB6B2FF969BDBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFCBE6EEFF5AC4F6FF58BFF4FF4488DDFF58C0F4FF5BC5
        F6FFD0E7EEFFF3F0EBFFF3F0EBFFF2EEE7FFDBA227FF07050108000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFBEE3F0FF59C4F6FF57BCF3FF458ADDFF59C2
        F5FF5CC6F7FFD8E9EEFFF3F0EBFFF2EEE7FFDBA227FF07050108000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC8BFB3FFC5BCB0FFC2B8ACFFCFC7BDFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFB2DFF1FF58C4F6FF55B8F1FF468C
        DEFF59C3F6FF5FC7F7FFE0EBEDFFF2EEE7FFDBA227FF07050108000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC5BCB0FFB2B6E9FF919AE4FFC8C0B9FFD7D1C8FFB8AD9FFFB8AD
        9FFFB8AD9FFFB8AD9FFFB8AD9FFFB8AD9FFFB8AD9FFF8ABBCCFF58C3F6FF54B4
        EFFF478FE0FF59C4F6FF62C8F6FFE6EBE9FFDBA227FF07050108000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC5BCB0FFC4BBB0FFB0AAB4FF848AD4FFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFF9BDAF3FF58C3
        F6FF52AFEDFF4993E1FF59C4F6FF66CAF6FFD5A430FF07050108000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF2EFEBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFF8FD6
        F4FF58C3F6FF50AAEBFF4A97E3FF59C4F6FF69C3E1FF0908060D000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFDBD4CCFFC5BCB0FFC4BBAFFFDFDAD2FFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFF83D3F4FF58C3F6FF4FA4E9FF4B9CE4FF59C4F6FF4EAAD2D9000101010000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC5BCB0FFC0C3E9FFA9AFE4FFCBC3B8FFE2DDD5FFCFC7BCFFCFC7
        BCFFCFC7BCFFCFC7BCFFCFC7BCFFCFC7BCFFCFC7BCFFCFC7BCFFCFC7BCFFCFC7
        BCFFDCD6CEFF79D0F6FF58C4F6FF4DA0E7FF4DA0E7FF5BC5F6FF4170ADB80000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFC5BCB0FFDDDCE3FFB7B9DEFF8A8FD0FFE7E2DBFFD9D2C9FFD9D2
        C9FFD9D2C9FFD9D2C9FFD9D2C9FFD9D2C9FFD9D2C9FFD9D2C9FFD9D2C9FFD9D2
        C9FFE3DDD6FFF2F0EBFF70CDF6FF59C4F6FF53ABECFF577FEBFF5363E5FF3D61
        A4B000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFE0DBD3FFCBC3B8FFCBC3B8FFD6D3D9FFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF0F0EBFF77CBF5FF567AEAFF5363E5FF5363E5FF2841
        6A7100000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0EBFFF3F0
        EBFFF3F0EBFFF3F0EBFFF3F0EBFFE9E9E8FF5F7DDDFF5469E5FE385A97A20000
        000000000000000000000000000000000000000000000E0A0210DBA227FFF2EF
        E9FFF3F0EBFFF3F0EBFFF3F0EBFFDCD5CDFFA79A8AFFA79A8AFFA79A8AFFA79A
        8AFFA79A8AFFA79A8AFFA79A8AFFA79A8AFFA79A8AFFA79A8AFFA79A8AFFDED8
        D0FFF3F0EBFFF3F0EBFFF3F0EBFFF2EEE7FFCDA23CFF17202E36000000000000
        000000000000000000000000000000000000000000000E0A0210DBA227FFE9D0
        9BFFEAD4A6FFEAD4A6FFEAD4A6FFCCB791FF8A7964FF8A7964FF8A7964FF8A79
        64FF8A7964FF8A7964FF8A7964FF8A7964FF8A7964FF8A7964FF8A7964FFCFBA
        93FFEAD4A6FFEAD4A6FFEAD4A6FFE9CF97FFDBA227FF07050108000000000000
        00000000000000000000000000000000000000000000010100017C5B1690B384
        20D0B38420D0B38420D0B38420D0A68135DE8A7964FF8A7964FF8A7964FF8A79
        64FF8A7964FF8A7964FF8A7964FF8A7964FF8A7964FF8A7964FF8A7964FFA881
        33DDB38420D0B38420D0B38420D0B38420D07556158800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000202020449403587574C3FA0574C3FA0574C
        3FA0847460F48A7964FF82725FF1574C3FA0574C3FA0574C3FA0473E33830201
        0103000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003E372D737C6D5AE538312968000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = cxButton7Click
    end
    object OpN: TcxRadioGroup
      Left = 11
      Top = 135
      Properties.Items = <
        item
          Caption = 
            'El saldo de la Nota de Cr'#233'dito se mantendra para ser usada en fu' +
            'turas compras'
        end
        item
          Caption = 'Devoluci'#243'n de Efectivo'
        end>
      Properties.WordWrap = True
      ItemIndex = 0
      TabOrder = 2
      Height = 106
      Width = 257
    end
    object CBTipoProceso: TcxComboBox
      Left = 24
      Top = 107
      Properties.Items.Strings = (
        'Si'
        'No')
      TabOrder = 3
      Text = 'No'
      Width = 201
    end
  end
  object DsMaster: TDataSource
    DataSet = datos.MNc
    Left = 936
    Top = 168
  end
  object DsDetalle: TDataSource
    DataSet = datos.DNC
    Left = 968
    Top = 216
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(MNCID) from MNOC')
    Params = <>
    Left = 904
    Top = 256
    object numeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object Zarti: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.articulo from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      '')
    Params = <>
    Left = 640
    Top = 264
    object ZartiNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object ZartiNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object ZartiMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object ZartiCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZartiPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object ZartiIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object ZartiITBS: TFloatField
      FieldName = 'ITBS'
    end
    object ZartiITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object ZartiTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object ZartiCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object ZartiUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object ZartiCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object ZartiLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object ZartiARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object ZartiANCHO: TFloatField
      FieldName = 'ANCHO'
    end
    object ZartiALTO: TFloatField
      FieldName = 'ALTO'
    end
    object ZartiTITULOPRN: TWideStringField
      FieldName = 'TITULOPRN'
      Size = 30
    end
    object ZartiARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
  end
  object DsArti: TDataSource
    DataSet = Zarti
    Left = 944
    Top = 344
  end
  object numeroD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(dncid) from dnc')
    Params = <>
    Left = 968
    Top = 352
    object numeroDMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 664
    Top = 184
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object Recibo1: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41440.780885324100000000
    ReportOptions.LastChange = 41488.861856053200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 384
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = master
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'titulos'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 10.160000000000000000
      BottomMargin = 5.080000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        Height = 108.200000000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.821251639999900000
        object titulos: TfrxMemoView
          AllowVectorExport = True
          Left = 403.200000000000000000
          Width = 307.200000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[titulos]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 551.509030000000000000
          Top = 80.174830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 551.200000000000000000
          Top = 56.599999999999990000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.600000000000001000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 20.200000000000000000
          Top = 29.497650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 58.954360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 49.436240000000000000
          Top = 43.615770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 43.615770000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC :')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 58.733890000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel. :')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 171.800000000000000000
        Top = 188.976500000000000000
        Width = 718.821251639999900000
        DataSet = master
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 116.661410000000000000
          Width = 729.600000000000000000
          Height = 32.579530000000000000
          Frame.Color = clNone
          Frame.Typ = []
        end
        object frxDBDataset1NO_FACT1: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 7.199999999999988000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'NO_FACT'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FACT"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 441.600000000000000000
          Top = 7.199999999999988000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '# Factura:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 28.000000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'FECHA'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FECHA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 441.600000000000000000
          Top = 28.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 528.000000000000000000
          Top = 47.800000000000010000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'CONIDICIONFACT'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CONIDICIONFACT"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 441.600000000000000000
          Top = 47.800000000000010000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Condici'#243'n :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Top = 16.800000000000010000
          Width = 230.400000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBRES'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRES"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 57.600000000000000000
          Top = 77.000000000000000000
          Width = 28.800000000000000000
          Height = 19.200000000000000000
          DataField = 'MNCID'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MNCID"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 76.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '# NC :')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 142.000000000000000000
          Width = 60.170130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Top = 142.000000000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 432.000000000000000000
          Top = 142.000000000000000000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 604.800000000000000000
          Top = 142.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 171.800000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 345.600000000000000000
          Top = 143.000000000000000000
          Width = 69.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object frxDBDataset1MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 96.000000000000000000
          Top = 45.599999999999990000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."MONTO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 45.599999999999990000
          Width = 60.170130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Monto  :')
          ParentFont = False
        end
        object frxDBDataset1NCF: TfrxMemoView
          AllowVectorExport = True
          Left = 413.527830000000000000
          Top = 105.047310000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NCF"]')
          ParentFont = False
        end
        object frxDBDataset1TIPO_NCF: TfrxMemoView
          AllowVectorExport = True
          Left = 413.527830000000000000
          Top = 82.370130000000010000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO_NCF'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO_NCF"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 718.821251639999900000
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'COD_ART'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 86.400000000000000000
          Width = 249.600000000000000000
          Height = 19.200000000000000000
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULO"]')
          ParentFont = False
        end
        object frxDBDataset2PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 441.600000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset2TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 585.600000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."TOTAL"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 364.800000000000000000
          Width = 48.000000000000000000
          Height = 19.200000000000000000
          DataField = 'CANT'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CANT"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 214.677180000000000000
        Top = 468.661720000000000000
        Width = 718.821251639999900000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 37.000000000000000000
          Width = 729.600000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 141.000000000000000000
          Top = 57.599999999999970000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 57.599999999999970000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cabtidad de Items')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 192.000000000000100000
          Width = 182.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 508.800000000000000000
          Top = 192.000000000000100000
          Width = 182.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 38.400000000000000000
          Top = 192.000000000000100000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Despachado Por:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 547.200000000000000000
          Top = 192.000000000000100000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibido por:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 259.200000000000000000
          Top = 192.000000000000100000
          Width = 182.400000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 288.000000000000000000
          Top = 192.000000000000100000
          Width = 117.770130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Autirzado Por:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 706.772110000000000000
        Width = 718.821251639999900000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 403.200000000000000000
          Top = 9.600000000000023000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pyme Fact V. 3.05 :  Iasa Soft Developer')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Top = 9.600000000000023000
          Width = 297.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Todos los Derechos Reservados')
          ParentFont = False
        end
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 38.400000000000000000
        Top = 186.576500000000000000
        Width = 175.370130000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Nota de Cr'#233'dito a Favor de:')
        ParentFont = False
      end
    end
  end
  object master: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBDataset1'
    CloseDataSource = True
    FieldAliases.Strings = (
      'MNCID=MNCID'
      'FECHA=FECHA'
      'USUARIOID=USUARIOID'
      'CLIENTEID=CLIENTEID'
      'NO_FACT=NO_FACT'
      'ESTADO=ESTADO'
      'NOMBRES_EMP=NOMBRES_EMP'
      'NOMBRES=NOMBRES'
      'AFECTA_INV=AFECTA_INV'
      'AFECTA_CAJA=AFECTA_CAJA'
      'MONTO=MONTO'
      'OBSERVACION=OBSERVACION'
      'CONIDICIONFACT=CONIDICIONFACT'
      'IDTURNO=IDTURNO'
      'NCF=NCF'
      'TIPO_NCF=TIPO_NCF'
      'NFC_AFECTADA=NFC_AFECTADA')
    DataSet = datos.MNc
    BCDToCurrency = False
    Left = 696
    Top = 376
  end
  object detalle: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = True
    FieldAliases.Strings = (
      'DNCID=DNCID'
      'MNCID=MNCID'
      'COD_ART=COD_ART'
      'CANT=CANT'
      'PRECIO=PRECIO'
      'TOTAL=TOTAL'
      'ESTADO=ESTADO'
      'ARTICULO=ARTICULO')
    DataSet = datos.DNC
    BCDToCurrency = False
    Left = 936
    Top = 272
  end
  object Config: TfrxDBDataset
    UserName = 'configuracion'
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
      'CLAVEAUTORIZACION=CLAVEAUTORIZACION'
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
      'RUTADB=RUTADB')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 905
    Top = 376
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.unidad,a.precio_a, a.precio_b,a.cod_art,UPPER(a.articul' +
        'o) articulo,a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.' +
        'itbis,'
      'sum(b.entrada - b.salida) Existencia'
      'from mtartuculos a'
      'left join minventario b On a.cod_art = b.cod_art'
      
        'group by a.unidad,a.precio_a, a.precio_b,a.cod_art,a.articulo,a.' +
        'cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis')
    Params = <>
    Left = 720
    Top = 152
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
    object IbqRArticulosPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
      currency = True
    end
    object IbqRArticulosPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
      currency = True
    end
    object IbqRArticulosUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 4
    end
  end
  object Facturas: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 32
    Top = 272
    object FacturasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object FacturasFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object FacturasTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object FacturasCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object FacturasCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object FacturasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object FacturasMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object FacturasHORA: TTimeField
      FieldName = 'HORA'
    end
    object FacturasPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object FacturasTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object FacturasMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object FacturasCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object FacturasRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object FacturasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FacturasTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object FacturasVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object FacturasSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object FacturasCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 40
    end
    object FacturasNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object FacturasRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object FacturasNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object FacturasNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object FacturasDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object FacturasROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object FacturasNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object FacturasMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object FacturasCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object FacturasINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object FacturasDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object FacturasPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object FacturasLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object FacturasCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object FacturasTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object FacturasEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object FacturasDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object FacturasRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object FacturasABONO: TFloatField
      FieldName = 'ABONO'
    end
    object FacturasCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object FacturasNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object FacturasPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object FacturasMESES: TIntegerField
      FieldName = 'MESES'
    end
    object FacturasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object FacturasPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object FacturasESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object FacturasDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object FacturasCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object FacturasFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object FacturasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object FacturasCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object FacturasQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object FacturasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object FacturasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object FacturasCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object FacturasTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object FacturasPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
    end
    object FacturasNC: TIntegerField
      FieldName = 'NC'
    end
    object FacturasCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FacturasCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object FacturasNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 100
    end
    object FacturasFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object FacturasINTERES_DIARIO: TFloatField
      FieldName = 'INTERES_DIARIO'
    end
    object FacturasINTERES_ACUM: TFloatField
      FieldName = 'INTERES_ACUM'
    end
    object FacturasDIAS_TRANS: TIntegerField
      FieldName = 'DIAS_TRANS'
    end
    object FacturasFECHA_ULTIMO_PAGO: TDateField
      FieldName = 'FECHA_ULTIMO_PAGO'
    end
    object FacturasDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
    end
    object FacturasINTERES_PAGADO: TFloatField
      FieldName = 'INTERES_PAGADO'
    end
    object FacturasCAPITAL_PAGADO: TFloatField
      FieldName = 'CAPITAL_PAGADO'
    end
    object FacturasDESC_CAPITAL: TFloatField
      FieldName = 'DESC_CAPITAL'
    end
    object FacturasIDDR: TIntegerField
      FieldName = 'IDDR'
    end
    object FacturasNOMBREDELDR: TWideStringField
      FieldName = 'NOMBREDELDR'
      Size = 40
    end
    object FacturasCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object FacturasNCF_NOMBRE: TWideStringField
      FieldName = 'NCF_NOMBRE'
      Size = 50
    end
    object FacturasMORA: TFloatField
      FieldName = 'MORA'
    end
    object FacturasNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object FacturasBONOS: TFloatField
      FieldName = 'BONOS'
    end
    object FacturasOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object FacturasIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object FacturasCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object FacturasTCREDITO: TFloatField
      FieldName = 'TCREDITO'
    end
    object FacturasVEFECTIVA: TFloatField
      FieldName = 'VEFECTIVA'
    end
    object FacturasIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object FacturasUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object FacturasPAGOXEFECTIVO: TFloatField
      FieldName = 'PAGOXEFECTIVO'
    end
    object FacturasPAGOXCHEQUE: TFloatField
      FieldName = 'PAGOXCHEQUE'
    end
    object FacturasPAGOXTARJETA: TFloatField
      FieldName = 'PAGOXTARJETA'
    end
    object FacturasPAGOXBONO: TFloatField
      FieldName = 'PAGOXBONO'
    end
    object FacturasCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 100
    end
    object FacturasNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object FacturasDIR: TWideStringField
      FieldName = 'DIR'
      Size = 40
    end
  end
  object UpCredito: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 200
    Top = 256
  end
  object IbqClientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.* from cliente a')
    Params = <>
    Left = 216
    Top = 400
    object IbqClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IbqClientesNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
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
      Size = 30
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
    object IbqClientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
    object IbqClientesCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object IbqClientesNUMEROPIN: TWideStringField
      FieldName = 'NUMEROPIN'
      Size = 10
    end
    object IbqClientesTELEFONO3: TWideStringField
      FieldName = 'TELEFONO3'
      Size = 15
    end
    object IbqClientesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object IbqClientesRUTA_ID: TIntegerField
      FieldName = 'RUTA_ID'
    end
    object IbqClientesREGIONID: TIntegerField
      FieldName = 'REGIONID'
    end
    object IbqClientesPROVINCIAID: TIntegerField
      FieldName = 'PROVINCIAID'
    end
    object IbqClientesMUNICIPIOID: TIntegerField
      FieldName = 'MUNICIPIOID'
    end
    object IbqClientesMUSADOS: TFloatField
      FieldName = 'MUSADOS'
      currency = True
    end
    object IbqClientesMPENDIENTES: TFloatField
      FieldName = 'MPENDIENTES'
      currency = True
    end
  end
  object UpDetalle: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 104
    Top = 272
  end
  object NumNCF: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_NCF_NC, 0) from RDB$DATABASE')
    Params = <>
    Left = 440
    Top = 240
    object NumNCFGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
end
