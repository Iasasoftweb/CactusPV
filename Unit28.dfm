object FrmAjuste: TFrmAjuste
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Ajuste de Inventario'
  ClientHeight = 439
  ClientWidth = 776
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OpM: TcxGroupBox
    Left = -6
    Top = 0
    Enabled = False
    ParentBackground = False
    ParentColor = False
    Style.BorderStyle = ebsNone
    Style.Color = 8701674
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 57
    Width = 771
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 22
      Height = 13
      Caption = '# ID'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 143
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit1
    end
    object Label3: TLabel
      Left = 270
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Empleado'
      FocusControl = cxDBTextEdit1
    end
    object Label4: TLabel
      Left = 407
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Condicion'
      FocusControl = cxDBTextEdit1
    end
    object Label6: TLabel
      Left = 497
      Top = 13
      Width = 80
      Height = 13
      Caption = '# de Repositorio'
      FocusControl = cxDBSpinEdit2
    end
    object Label7: TLabel
      Left = 524
      Top = 38
      Width = 54
      Height = 13
      Caption = 'Repositorio'
      FocusControl = cxDBTextEdit2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 24
      DataBinding.DataField = 'NOID'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 143
      Top = 24
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 270
      Top = 24
      DataBinding.DataField = 'NOMBRES_EMP'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 131
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 407
      Top = 24
      DataBinding.DataField = 'CONDICION'
      DataBinding.DataSource = DataSource1
      Enabled = False
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Reposicion'
        'Compra')
      Properties.PostPopupValueOnTab = True
      Properties.ReadOnly = True
      Properties.OnChange = cxDBComboBox1PropertiesChange
      TabOrder = 3
      Width = 82
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 583
      Top = 33
      DataBinding.DataField = 'NOMBREALMACEN'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 121
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 583
      Top = 6
      DataBinding.DataField = 'COD_ALM'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 66
    end
    object cxButton7: TcxButton
      Left = 704
      Top = 0
      Width = 61
      Height = 54
      Caption = 'Insertar Repositorio'
      TabOrder = 6
      WordWrap = True
      OnClick = cxButton7Click
    end
  end
  object Opdetalle: TcxGroupBox
    Left = 8
    Top = 61
    Caption = 'Detalle    (Presiones [F2] para Buscar Articulos)'
    Enabled = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 333
    Width = 751
    object Label10: TLabel
      Left = 3
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label11: TLabel
      Left = 47
      Top = 21
      Width = 48
      Height = 13
      Caption = 'Productos'
    end
    object Label12: TLabel
      Left = 410
      Top = 21
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 58
      Width = 734
      Height = 248
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2010Blue'
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
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = DsAjusteD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxGrid1DBTableView1ARTICULOSNOM
          end
          item
            Kind = skSum
            FieldName = 'TOTALCOSTO'
            Column = cxGrid1DBTableView1TOTALCOSTO
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
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 42
        end
        object cxGrid1DBTableView1ARTICULOSNOM: TcxGridDBColumn
          Caption = 'Productos'
          DataBinding.FieldName = 'ARTICULOSNOM'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 318
        end
        object cxGrid1DBTableView1CANT: TcxGridDBColumn
          Caption = 'Cant.'
          DataBinding.FieldName = 'CANT'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 65
        end
        object cxGrid1DBTableView1MONTOCOSTO: TcxGridDBColumn
          Caption = 'Monto Costo'
          DataBinding.FieldName = 'MONTOCOSTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 97
        end
        object cxGrid1DBTableView1TOTALIMP: TcxGridDBColumn
          Caption = 'Total Imp'
          DataBinding.FieldName = 'TOTALIMP'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 95
        end
        object cxGrid1DBTableView1TOTALCOSTO: TcxGridDBColumn
          Caption = 'Total Costo'
          DataBinding.FieldName = 'TOTALCOSTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 83
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLEID'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 28
          IsCaptionAssigned = True
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'MONEDA'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Cod_TXT: TcxTextEdit
      Left = 3
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 44
    end
    object Arti_TXT: TcxTextEdit
      Left = 46
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 209
    end
    object Cant_TXT: TcxCalcEdit
      Left = 408
      Top = 33
      EditValue = 1.000000000000000000
      TabOrder = 3
      Width = 50
    end
    object cxButton1: TcxButton
      Left = 464
      Top = 23
      Width = 125
      Height = 29
      Caption = 'Agregar'
      Enabled = False
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424DC60700000000000036000000280000001600000016000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000207011D12350CC1145219E213631CE5154E12CC020C
        012A0000000000000000000000000808070F0C0B09190C0A09180C0A09180C0A
        09180C0A08180C0A08180C0A08180B0A08180B0A08180B0A08180B0A08180C0A
        081815120F35084308D61EB829FF30DC42FF14711AE1171710430C0A09170C0B
        09190908070F5A51489D80766CD87C7066D47C7065D47A6F65D4796F63D4796D
        62D4796C61D4786B60D4786A5FD4817169D484746BD489766FD3756860D31F5D
        1CEB16B021FF2BD83FFF29872AF66F6659D88E7978D18C7D77D85B504A98867C
        73E1F4F5F6FFF4F3F3FFF1F0F0FFF0EFEFFFEFEDEDFFEEEDECFFEDEBEAFFEBEA
        E8FFEBE8E6FFBDC1B7FFB4B6ADFFC2C0BCFFA8A6A2FF2A6825FF12A81BFF1AC9
        2DFF2E8B2DFF9A9E8FFFC3C4BFFFB9BEB9FF757867DC80756DD9FDFEFFFFFFFF
        FFFFFEFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4269
        41FF2C762FFF0D660DFF0D6F11FF1C8721FF0D9316FF18AE29FF42AE44FF3687
        31FF2F832EFF3A853CFF45603BF780756DD9FAFBFCFFFBFBFBFFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFFFFFFFF3E663BFF52C662FF00A8
        09FF16C323FF20C12FFF239D2FFF32973CFF48B853FF54CA5FFF59CA64FF78DD
        86FF425D38F680766DD9FAFDFDFFFDFDFCFFFCFCFBFFFCFCFBFFFCFCFBFFFCFC
        FBFFFCFCFBFFFCFCFBFFFFFFFFFF3E6A3DFF65DD77FF54E466FF69F077FF71EE
        7DFF58CF63FF49A751FF5FB36AFF6DCF7BFF70D07EFF8BE59DFF435D3AF68177
        6DD9FCFEFEFFFEFEFDFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
        FCFFFFFFFFFF5F825DFF408142FF4B8A4BFF4A8E44FF5EAF63FF75EA81FF61C5
        6AFF59955BFF3E753FFF377038FF3A723BFF475E3CF881776DD9FEFFFFFFFFFF
        FEFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFE4E9
        E3FFD3D7D1FFD3D8D1FFAEBAA8FF3E803DFF76E680FF77D784FF427A45FF9AA6
        96FFCDD2CBFFC9D0C8FF797266D681776DD9FEFFFFFFFFFFFFFFFFFEFEFFFFFE
        FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFD7DCD6FF3A7B39FF6FD277FF81D28DFF457C48FFC4CBC1FFFFFFFFFFFFFF
        FFFF837971D381776DD9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD6CDFF447E
        46FF91E3A3FF98E5ACFF4C8351FFBCC4B9FFFFFFFFFFFCFEFEFF80776FD38177
        6DD9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E7E0FF698665FF628563FF6684
        66FF6B8367FFD7DDD5FFFFFFFFFFFCFEFEFF80776FD381776DD9FEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFEFEFF80776FD381776DD9FEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE
        FEFF80776FD381776DD9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFF80776FD38177
        6DD9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFEFF80776FD381776DD9FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFFFFFF80776FD37F746AD9E9E5E3FFE6E0DCFFE3DDD9FFE2DA
        D6FFE0D9D4FFDED7D1FFDDD4CFFFDCD3CDFFDAD0CAFFD9CEC8FFD9CFC8FFDAD0
        CAFFDBD2CDFFDDD5CFFFDDD5CFFFDFD7D1FFE5DFDAFFE7E2DEFFE7E1DDFFEAE6
        E3FF7F756DD383766DDE938071FF938071FF938071FF938071FF938071FF9380
        71FF938071FF938071FF938071FF938071FF938071FF938071FF938071FF9380
        71FF938071FF938071FF938071FF938071FF938071FF938071FF80766CD8796F
        64BAAFA398FCA99B90F7A7998DF7A5978BF7A49589F7A29387F7A19185F7A190
        84F79E8D81F79C8C80F79C8C80F79E8D81F79F8F83F7A09084F7A5978BF7A79A
        8DF7AB9E93F7AB9F94F7ADA197F7B0A499FC756B62B2685F569E817266DD7B6C
        5ED7796A5DD777695BD7766759D7756558D7746355D7746254D7726052D7705F
        51D7705F51D7726052D7726153D7746255D7746558D7766759D77B6C5FD77C6E
        61D77C6E61D7817365DD655C5496000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OptionsImage.ImageIndex = 707
      OptionsImage.Images = inicio.RibbonImages32
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object Edit1: TEdit
      Left = 328
      Top = 112
      Width = 121
      Height = 21
      TabStop = False
      TabOrder = 5
      Visible = False
    end
    object cxButton5: TcxButton
      Left = 258
      Top = 27
      Width = 130
      Height = 25
      Caption = 'Buscar Articulos'
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
        0000000000000000000000000000000000000000000000000000000000000000
        00001313137E181818BC1A1A1AC41A1A1AC4171717BA1313137C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001313137C171717BA1A1A1AC41A1A
        1AC4181818BC1313137E000000000000000000000000000000000000002C0808
        089C7F7F7FEDB9B7B9FCC5C2C4FFBBB7BBFFB3B1B3FA7C7C7CE60203039D0000
        000D000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000D0203039D7C7C7CE6B3B1B3FABBB7BBFFC5C2
        C4FFB9B7B9FC7F7F7FED0808089C0000002C000000000000001C0D0D0DBDA3A2
        A4FF5E335BFF71566CFF8B6383FF6F3D68FF4C1A47FF5D305AFFA4A2A4FC0202
        0299000000090000000000000000000000000000000000000000000000000000
        0000000000000000000902020299A4A2A4FC5D305AFF4C1A47FF6F3D68FF8B63
        83FF71566CFF5E335BFFA3A2A4FF0D0D0DBD0000001C101010A7787879FD5A2E
        56FF7C4273FF8E4D83FFD1B1CBFF9B598FFF914E86FF7B3672FF5E2F5AFF7373
        73EE0000008A0000000000000000000000000000000000000000000000000000
        0000000000000000008A737373EE5E2F5AFF7B3672FF914E86FF9B598FFFD1B1
        CBFF8E4D83FF7C4273FF5A2E56FF787879FD101010A7171717C6929193FF5328
        4FFF88467FFF9A598FFF9C5D91FF9E5F93FF9B5B90FF904F86FF544653FF9792
        97F7000100C30000004E000000420101011C00000000000000000101011C0000
        00420000004E000100C3979297F7544653FF904F86FF9B5B90FF9E5F93FF9C5D
        91FF9A598FFF88467FFF53284FFF929193FF171717C6181818C7929094FF5F26
        5AFF8A4780FF9B5A90FF9E5D92FFB27EA9FFAB76A1FF7F3B76FF564654FF9B94
        9BFE1F201EF02D2C2CEC2A2929E20B0B0BAB0202021F0202021F0B0B0BAB2A29
        29E22D2C2CEC1F201EF09B949BFE564654FF7F3B76FF96548AFF9F5E93FFB17D
        A8FFAF7BA6FF8A4780FF5F265AFF929094FF181818C7191919BF949495FF300A
        2DFF89467EFF8F4B84FF8F4B84FFA56E9CFFE2D1DFFF63175AFF493A47FF9996
        9AFF383739FF615F5EFF767373FF565553F7303030E8303030E8565553F77673
        73FF615F5EFF383739FF99969AFF493A47FF63175AFF89447EFF8E4A83FFA56F
        9DFFE3D2E1FF89467EFF300A2DFF949495FF191919BF0D0D0D8D646465F06153
        60FF230A20FF753C6CFF7F3F75FF803D76FF7A3771FF4C0545FF694A68FF7A7A
        7AFF504E4EFF747270FF716F6EFF7B7876FF232221A1232221A17B7876FF716F
        6EFF747270FF504E4EFF7A7A7AFF694A68FF4C0545FF7A3771FF803D76FF7F3F
        75FF753C6CFF230A20FF615360FF646465F00D0D0D8D0404040F222222C4A5A4
        A5FF615360FF080008FF110010FF1A0018FF2E102CFF6B5068FF959697FF1A19
        1CFF403E3FFF666462FF696665FF6E6B6AFF353534D8353534D86E6B6AFF6966
        65FF666462FF403E3FFF1A191CFF959697FF6B5068FF2E102CFF1A0018FF1100
        10FF080008FF615360FFA5A4A5FF222222C40404040F00000000060606153130
        30DDB9B7B8FFB0B0B0FFB0B0B1FFB6B6B6FFB3B4B3FF989897FF202022FF6767
        68FF383739FF4D4C4DFF605E5EFF676464FF363636F4363636F4676464FF605E
        5EFF4D4C4DFF383739FF676768FF202022FF989897FFB3B4B3FFB6B6B6FFB0B0
        B1FFB0B0B0FFB9B7B8FF313030DD060606150000000000000000000000002323
        23755A5959FF4E4E4CFF9D9A9AFF9B9A99FF9A9999FF7C7B7CFF676769FF2C2B
        2EFF3F3D3FFF514F51FF676565FF3E3D3DFF83807FF683807FF6464545FF6765
        65FF514F51FF3F3D3FFF2C2B2EFF676769FF7C7B7CFF818080FF828180FF8481
        81FF4E4E4CFF5A5959FF23232375000000000000000000000000000000000000
        00005B5A5AB15B595AFF585757FF494848FF636364FF4F4F51FF333134FF3F3E
        40FF4C4B4CFF585556FF545254FF3B3B3BFF8B8887FF8B8887FF414040FF5452
        54FF585556FF4C4B4CFF3F3E40FF333134FF4F4F51FF636364FF494848FF5857
        57FF5B595AFF5B5A5AB100000000000000000000000000000000000000000000
        000028282845B1ADACFF625F5DFF787575FF625F5EFF6A6767FF716E6FFF7371
        72FF797778FF424042FF201F23FF1E1E21FF605E5EFF605E5EFF2A2A2CFF201F
        23FF424042FF797778FF737172FF716E6FFF6A6767FF625F5EFF787575FF625F
        5DFFB1ADACFF2828284500000000000000000000000000000000000000000000
        000000000000848280BE555453FF7E7C7BFF4B4848FF494645FF5B5655FF615E
        5EFF797878FF363537FF2D2C2FFF525050FF6E6C6BFF6E6C6BFF525050FF2D2C
        2FFF363537FF797878FF615E5EFF5B5655FF494645FF4B4848FF7E7C7BFF5554
        53FF848280BE0000000000000000000000000000000000000000000000000000
        000000000000151514207C7B79CA403F3EFF615F5EFF696767FF8D8B8BFF7E7D
        7DFF797777FF3D3A3CFF323232C02525247D575655F8575655F82525247D3232
        32C03D3A3CFF797777FF7E7D7DFF8D8B8BFF696767FF615F5EFF403F3EFF7C7B
        79CA151514200000000000000000000000000000000000000000000000000000
        00000000000000000000060606092B2B2A4C1C1C1BC6343332FC333232FF312F
        31FF504D4DFF434143FF09090A3700000000333333A9333333A9000000000909
        0A37434143FF504D4DFF312F31FF333232FF343332FC1C1C1BC62B2B2A4C0606
        0609000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002C2A296B373434FB7371
        70FF6A6767FF302E31F505050524000000000101010301010103000000000505
        0524302E31F56A6767FF737170FF373434FB2C2A296B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000282626463634
        33EA2C2A2CE10C0B0C6A00000000000000000000000000000000000000000000
        00000C0B0C6A2C2A2CE1363433EA282626460000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 6
      OnClick = cxButton5Click
    end
  end
  object cxButton2: TcxButton
    Left = 5
    Top = 399
    Width = 115
    Height = 31
    Caption = '&Nuevo'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 428
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 124
    Top = 400
    Width = 121
    Height = 31
    Caption = '&Guardar'
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 707
    TabOrder = 3
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 251
    Top = 399
    Width = 115
    Height = 31
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 715
    TabOrder = 4
    OnClick = cxButton4Click
  end
  object cxButton6: TcxButton
    Left = 372
    Top = 399
    Width = 115
    Height = 31
    Caption = '&Cerrar'
    LookAndFeel.SkinName = 'Office2010Blue'
    OptionsImage.ImageIndex = 429
    TabOrder = 5
    OnClick = cxButton6Click
  end
  object cxGroupBox2: TcxGroupBox
    Left = 1051
    Top = 24
    Caption = 'Buscar Entradas'
    TabOrder = 6
    Height = 396
    Width = 303
    object cxPageControl1: TcxPageControl
      Left = 3
      Top = 15
      Width = 297
      Height = 372
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet2
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 366
      ClientRectLeft = 3
      ClientRectRight = 291
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Ajustes'
        ImageIndex = 1
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 288
          Height = 241
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            OnDblClick = cxGridDBTableView2DblClick
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
            DataController.DataSource = DsReposicion
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = 'No data'
            OptionsView.CellTextMaxLineCount = 5
            OptionsView.GroupByBox = False
            OptionsView.GroupRowStyle = grsOffice11
            Preview.AutoHeight = False
            object cxGridDBTableView2FECHA: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'FECHA'
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
            end
            object cxGridDBTableView2NOMBRES_EMP: TcxGridDBColumn
              Caption = 'Usuario'
              DataBinding.FieldName = 'NOMBRES_EMP'
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
              Width = 213
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 235
          Align = alBottom
          Caption = 'Buscar...'
          TabOrder = 1
          Height = 105
          Width = 288
          object cxButton8: TcxButton
            Left = 165
            Top = 69
            Width = 74
            Height = 24
            Caption = '&Ok'
            LookAndFeel.SkinName = 'Office2010Blue'
            OptionsImage.ImageIndex = 951
            OptionsImage.Images = inicio.RibbonImages16
            TabOrder = 0
            OnClick = cxButton8Click
          end
          object op2: TcxRadioGroup
            Left = 9
            Top = 22
            Alignment = alCenterCenter
            Ctl3D = False
            ParentCtl3D = False
            Properties.Items = <
              item
                Caption = 'Por Usuario'
              end
              item
                Caption = 'Por Fecha'
              end>
            ItemIndex = 0
            Style.LookAndFeel.SkinName = 'Office2010Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
            TabOrder = 1
            OnClick = op2Click
            Height = 55
            Width = 105
          end
          object cxTextEdit2: TcxTextEdit
            Left = 151
            Top = 44
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 120
          end
          object cxLabel2: TcxLabel
            Left = 140
            Top = 24
            Caption = 'Introducir Nombre de Articulo'
          end
          object Panel2: TPanel
            Left = 124
            Top = 24
            Width = 160
            Height = 41
            TabOrder = 4
            Visible = False
            object Label18: TLabel
              Left = 1
              Top = 2
              Width = 59
              Height = 13
              Caption = 'Fecha Inicial'
            end
            object Label19: TLabel
              Left = 79
              Top = 2
              Width = 54
              Height = 13
              Caption = 'Fecha Final'
            end
            object inicio2: TcxDateEdit
              Left = 2
              Top = 13
              TabOrder = 0
              Width = 71
            end
            object fin2: TcxDateEdit
              Left = 79
              Top = 14
              TabOrder = 1
              Width = 74
            end
          end
        end
      end
    end
  end
  object cxGrid2: TcxGrid
    Left = 984
    Top = 45
    Width = 250
    Height = 242
    TabOrder = 7
    Visible = False
    object cxGrid2DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid2DBTableView1DblClick
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
        Caption = 'Repositorio'
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
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = datos.ZAjusteM
    Left = 456
    Top = 192
  end
  object DsAjusteD: TDataSource
    DataSet = datos.AjusteD
    Left = 208
    Top = 227
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(noid) from MASTER_AJUSTE')
    Params = <>
    Left = 64
    Top = 83
    object numeroMAX: TIntegerField
      FieldName = 'MAX'
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
    Left = 194
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
  object numeroD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(detalleID) from DETALLE_AJUSTE')
    Params = <>
    Left = 48
    Top = 112
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
    Left = 88
    Top = 72
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object recibo: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41232.303264849500000000
    ReportOptions.LastChange = 41511.852622916700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 232
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = master
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.058000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 9.906000000000000000
      RightMargin = 9.906000000000000000
      TopMargin = 2.540000000000000000
      BottomMargin = 2.540000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 131.863080000000000000
        Top = 19.200000000000000000
        Width = 719.040464380000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 88.247310000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'AJUSTE INVENTARIO')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 580.309030000000000000
          Top = 22.574830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object frxDBDataset1NO_ENTRADA: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 93.842610000000000000
          Width = 89.272480000000000000
          Height = 18.897650000000000000
          DataField = 'NOID'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOID"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 93.063080000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Conduce')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -0.779530000000000000
          Top = 130.581200000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 557.631850000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMPRESA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 10.600000000000000000
          Top = 19.897650000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 39.836240000000000000
          Top = 49.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 39.836240000000000000
          Top = 34.015770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = config
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RNC"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 34.015770000000000000
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
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 49.133890000000000000
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
        Height = 104.124490000000000000
        Top = 211.200000000000000000
        Width = 719.040464380000000000
        DataSet = master
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 106.658380000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Preparado por  :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 92.976500000000000000
          Top = 19.897650000000000000
          Width = 598.677490000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 57.031540000000000000
          Width = 721.890230000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            'Detalle del Concepto:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 29.795300000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 94.104020000000000000
          Top = 44.913420000000000000
          Width = 116.560730000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 81.447310000000000000
          Width = 77.858380000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 592.600310000000000000
          Top = 81.447310000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 0.800000000000000000
          Top = 103.724490000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 150.000000000000000000
          Top = 79.800000000000000000
          Width = 371.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Articulos')
          ParentFont = False
        end
        object frxDBDataset1DESTINO: TfrxMemoView
          AllowVectorExport = True
          Left = 96.000000000000000000
          Width = 345.600000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOMBRES_EMP"]')
          ParentFont = False
        end
        object frxDBDataset1FECHA1: TfrxMemoView
          AllowVectorExport = True
          Left = 96.000000000000000000
          Top = 26.800000000000000000
          Width = 96.000000000000000000
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
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 336.000000000000000000
        Width = 719.040464380000000000
        DataSet = detalle
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2DESCRIPCION: TfrxMemoView
          AllowVectorExport = True
          Width = 84.510390000000000000
          Height = 18.897650000000000000
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
        object frxDBDataset2PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 592.600310000000000000
          Width = 88.970130000000000000
          Height = 18.897650000000000000
          DataField = 'CANT'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."CANT"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 143.000000000000000000
          Width = 386.570130000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'ARTICULOSNOM'
          DataSet = detalle
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ARTICULOSNOM"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 146.785900000000000000
        Top = 412.800000000000000000
        Width = 719.040464380000000000
        object Line6: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 355.805010000000000000
          Top = 7.559060000000000000
          Width = 109.304020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Registro')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 28.195300000000000000
          Top = 110.729190000000000000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 35.754360000000000000
          Top = 114.508720000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Firma / Sello:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 5.600000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
      end
    end
  end
  object detalle: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = True
    FieldAliases.Strings = (
      'DETALLEID=DETALLEID'
      'MASTERID=MASTERID'
      'CANT=CANT'
      'ESTADO=ESTADO'
      'COD_ART=COD_ART'
      'MONTOCOSTO=MONTOCOSTO'
      'TOTALIMP=TOTALIMP'
      'TOTALCOSTO=TOTALCOSTO'
      'ARTICULOSNOM=ARTICULOSNOM')
    DataSet = datos.AjusteD
    BCDToCurrency = False
    Left = 16
    Top = 248
  end
  object master: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NOID=NOID'
      'FECHA=FECHA'
      'USUARIOID=USUARIOID'
      'TIENDAID=TIENDAID'
      'CONDICION=CONDICION'
      'PROVID=PROVID'
      'NOFACT=NOFACT'
      'FECHA_COMPRA=FECHA_COMPRA'
      'PLAZO=PLAZO'
      'MONTOFACT=MONTOFACT'
      'MONTOPAGO=MONTOPAGO'
      'MONTOPEND=MONTOPEND'
      'ESTADO=ESTADO'
      'NOMBRES_EMP=NOMBRES_EMP'
      'DESCRIPCION=DESCRIPCION'
      'NOMBRE_PRO=NOMBRE_PRO')
    DataSet = zAjustePRN
    BCDToCurrency = False
    Left = 24
    Top = 208
  end
  object zAjustePRN: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*, c.nombres_emp, d.descripcion, e.nombre_pro from mast' +
        'er_ajuste a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado c On b.empleadoid = c.cod_emp1'
      'left join tienda d On a.tiendaid = d.tiendaid'
      'left join man_provedores e On a.provid = e.COD_PROV')
    Params = <>
    Left = 122
    Top = 176
    object zAjustePRNNOID: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object zAjustePRNFECHA: TDateField
      FieldName = 'FECHA'
    end
    object zAjustePRNUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object zAjustePRNTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object zAjustePRNCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object zAjustePRNPROVID: TIntegerField
      FieldName = 'PROVID'
    end
    object zAjustePRNNOFACT: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object zAjustePRNFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object zAjustePRNPLAZO: TIntegerField
      FieldName = 'PLAZO'
    end
    object zAjustePRNMONTOFACT: TFloatField
      FieldName = 'MONTOFACT'
    end
    object zAjustePRNMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object zAjustePRNMONTOPEND: TFloatField
      FieldName = 'MONTOPEND'
    end
    object zAjustePRNESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object zAjustePRNNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object zAjustePRNDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object zAjustePRNNOMBRE_PRO: TWideStringField
      FieldName = 'NOMBRE_PRO'
      Size = 30
    end
  end
  object Qproveedor: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from fabricantes')
    Params = <>
    Left = 120
    Top = 112
    object QproveedorCOD: TIntegerField
      FieldName = 'COD'
      Required = True
    end
    object QproveedorCOD_FAB: TWideStringField
      FieldName = 'COD_FAB'
      Required = True
      Size = 10
    end
    object QproveedorDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object QproveedorCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object QproveedorTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 12
    end
    object QproveedorFAX: TWideStringField
      FieldName = 'FAX'
      Size = 12
    end
    object QproveedorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object QproveedorDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 60
    end
  end
  object DsqProvee: TDataSource
    DataSet = Qproveedor
    Left = 176
    Top = 96
  end
  object ZExistencia: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.idtienda,a.cod_art, b.articulo, b.Precio_A, b.Precio_B,' +
        ' b.pRecio_d, sum(a.entrada - a.salida) Existencia from minventar' +
        'io a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'where (b.cod_cat <> 4)'
      
        'group by a.idtienda,a.cod_art, b.articulo, b.Precio_A, b.Precio_' +
        'B, b.pRecio_d')
    Params = <>
    Left = 104
    Top = 296
    object ZExistenciaIDTIENDA: TIntegerField
      FieldName = 'IDTIENDA'
    end
    object ZExistenciaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZExistenciaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object ZExistenciaPRECIO_A: TFloatField
      FieldName = 'PRECIO_A'
    end
    object ZExistenciaPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
    end
    object ZExistenciaPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
    end
    object ZExistenciaEXISTENCIA: TFloatField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
    end
  end
  object QCompras: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, c.nombres_emp, e.descripcion from master_ajuste a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado c On b.empleadoid = c.cod_emp1'
      'left join fabricantes e On a.provid = e.COD'
      'Where a.condicion ='#39'Compra'#39)
    Params = <>
    Left = 176
    Top = 192
    object QComprasNOID: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object QComprasFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QComprasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object QComprasTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object QComprasCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object QComprasPROVID: TIntegerField
      FieldName = 'PROVID'
    end
    object QComprasNOFACT: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object QComprasFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object QComprasPLAZO: TIntegerField
      FieldName = 'PLAZO'
    end
    object QComprasMONTOFACT: TFloatField
      FieldName = 'MONTOFACT'
    end
    object QComprasMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object QComprasMONTOPEND: TFloatField
      FieldName = 'MONTOPEND'
    end
    object QComprasESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QComprasNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QComprasDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
  end
  object DsqCompra: TDataSource
    DataSet = QCompras
    Left = 232
    Top = 200
  end
  object QReposicion: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*, c.nombres_emp, d.descripcion, e.nombre_pro from mast' +
        'er_ajuste a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado c On b.empleadoid = c.cod_emp1'
      'left join tienda d On a.tiendaid = d.tiendaid'
      'left join man_provedores e On a.provid = e.COD_PROV'
      'Where a.condicion ='#39'Reposicion'#39)
    Params = <>
    Left = 192
    Top = 256
    object QReposicionNOID: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object QReposicionFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QReposicionUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object QReposicionTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object QReposicionCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object QReposicionPROVID: TIntegerField
      FieldName = 'PROVID'
    end
    object QReposicionNOFACT: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object QReposicionFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object QReposicionPLAZO: TIntegerField
      FieldName = 'PLAZO'
    end
    object QReposicionMONTOFACT: TFloatField
      FieldName = 'MONTOFACT'
    end
    object QReposicionMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object QReposicionMONTOPEND: TFloatField
      FieldName = 'MONTOPEND'
    end
    object QReposicionESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QReposicionNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QReposicionDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object QReposicionNOMBRE_PRO: TWideStringField
      FieldName = 'NOMBRE_PRO'
      Size = 30
    end
  end
  object DsReposicion: TDataSource
    DataSet = QReposicion
    Left = 64
    Top = 267
  end
  object config: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_COM=CODIGO_COM'
      'EMPRESA=EMPRESA'
      'RNC=RNC'
      'TELEFONO=TELEFONO'
      'FAX=FAX'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'DIRECCION=DIRECCION'
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
      'LOGOP_TXT=LOGOP_TXT')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 72
    Top = 176
  end
  object almacenes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from almacenes')
    Params = <>
    Left = 576
    Top = 152
    object almacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object almacenesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object MaxAlmacen: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(COD_ALMACEN) from MAN_ALMACEN')
    Params = <>
    Left = 288
    Top = 152
    object MaxAlmacenMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object DsAlmacenes: TDataSource
    DataSet = almacenes
    Left = 520
    Top = 184
  end
end
