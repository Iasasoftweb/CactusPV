object FStart: TFStart
  Left = 0
  Top = 0
  Caption = 'Ventas por Cajero'
  ClientHeight = 881
  ClientWidth = 1292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1292
    Height = 49
    Align = alTop
    Color = 9068819
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 144
      Top = 4
      Width = 128
      Height = 41
      Margins.Left = 2
      Align = alLeft
      Caption = ' | DASBOARD Reportes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 14
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 62
      Top = 4
      Width = 77
      Height = 41
      Margins.Left = 5
      Align = alLeft
      Caption = 'PrintSoft PV'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 14
    end
    object cxImage1: TcxImage
      AlignWithMargins = True
      Left = 21
      Top = 4
      Margins.Left = 20
      TabStop = False
      Align = alLeft
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
        206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
        98000017709CBA513C00000006624B4744000000000000F943BB7F0000000970
        48597300000EC400000EC401952B0E1B0000028E4944415468DEED993D681441
        1CC5672F78012F5858881F24A6D2469B4002969A6B12B04C2B08626B3A5B4D65
        6B61612D36B6292D1411ECB4492C4C6571B94248A19C9844EF67B1B3BAEECDCC
        CED7EE72B80FA6999D79FFF766EEE6E33F42B468D1223A802EB009ECCBB20974
        9BD6652BBE0FEC30894FC046D3FA4CC297805794E31D70AD69BD79E1E781A7C0
        4F0BF119C6C00BE06293C27BC04360A411790C3C91E558D36624397A750AEF00
        1BC067C308BF04AEE6FA5C9623AEC300B80BCC542DFE3AF0DE20E423B06EE87F
        03F860E8BF0BAC5521FC52C9087E01EED98CA09CC15BA4CBAB6906AFC4107E1A
        7804FCD004FA2EBF9FF2E0EE01F7816F1AEE23D2C5E18CAFF83E70A0211F03CF
        80F90883342FB9C69A580740DF8778A8217C032C870A57C45B96DC2AECEBFA75
        0C9C6735F55D21C489D806841063595438E7332226641BD162A86AE082FCADFF
        32058C6DA08E3F717403DB06FE217007BB657446B61D1AF82662051B9075651B
        51E846F6A77F250664BDED46E4729498D8082B3390FB3E076C117E98DB02E65C
        E3071BC8B5CB56119FE3F46268FC6003B9F64BC06B0BF156179ADA0DE4FAF549
        4F9545EC911EC39398F11313C13F0D93C42AB0ECDB15421C16AA679324397219
        409BF81D3B3A37A884BA8877412506EA446BA069FC3F0680D9BA44B9C4729981
        3DD23390F572EA29FEA61062370691EEB0F61658B1E8EFBA93AF486E15063E06
        56315FEA9F030BA1068005C965BAD4AFFACE42595AE510788CE246566680F446
        F680F456A742585AA510CC39B1A533C0DFFB84E9461627B1A530629D5A5419A0
        A9D462C14407B84D9A90D561DBB22EC34072D6B72F012749B30A5FF1C708CFAC
        464C23D3F9C0A130329D4F4C0A23D3F9C85730913DB30E64999E67D6162DA60C
        BF01BB8931F93A2D0F250000002574455874646174653A637265617465003230
        32302D30362D30315430313A32383A32362B30303A303088F0EE870000002574
        455874646174653A6D6F6469667900323032302D30362D30315430313A32383A
        32362B30303A3030F9AD563B0000001974455874536F66747761726500777777
        2E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      Properties.ShowFocusRect = False
      Style.BorderStyle = ebsNone
      StyleDisabled.BorderStyle = ebsNone
      StyleFocused.BorderStyle = ebsNone
      TabOrder = 0
      Transparent = True
      Height = 41
      Width = 33
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 1292
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Color = 15921906
    ParentBackground = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 106
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Reporte de Gastos'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      AlignWithMargins = True
      Left = 922
      Top = 0
      Width = 120
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Articulos Vendidos'
      Flat = True
      PopupMenu = PopupMenu1
      OnClick = SpeedButton2Click
      ExplicitTop = -2
    end
    object SpeedButton3: TSpeedButton
      AlignWithMargins = True
      Left = 106
      Top = 0
      Width = 103
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Cierres Anteriores'
      Flat = True
      OnClick = SpeedButton3Click
      ExplicitTop = -1
    end
    object SpeedButton4: TSpeedButton
      AlignWithMargins = True
      Left = 209
      Top = 0
      Width = 96
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Ventas por Fecha'
      Flat = True
      OnClick = SpeedButton4Click
      ExplicitTop = 3
    end
    object SpeedButton5: TSpeedButton
      AlignWithMargins = True
      Left = 305
      Top = 0
      Width = 102
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Ventas x Vendedor'
      Flat = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      AlignWithMargins = True
      Left = 407
      Top = 0
      Width = 95
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Ventas x Cajero'
      Flat = True
      Visible = False
      OnClick = SpeedButton6Click
    end
    object Shape2: TShape
      Left = 0
      Top = 41
      Width = 1292
      Height = 1
      Align = alBottom
      ExplicitTop = 0
      ExplicitWidth = 1428
    end
    object SpeedButton7: TSpeedButton
      AlignWithMargins = True
      Left = 502
      Top = 0
      Width = 123
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Catalogos de Productos'
      Flat = True
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      AlignWithMargins = True
      Left = 625
      Top = 0
      Width = 112
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Reporte de Pedidos'
      Flat = True
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      AlignWithMargins = True
      Left = 737
      Top = 0
      Width = 80
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Comisiones'
      Flat = True
      PopupMenu = PopupMenu1
      OnClick = SpeedButton9Click
    end
    object SpeedButton10: TSpeedButton
      AlignWithMargins = True
      Left = 817
      Top = 0
      Width = 105
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Resumen Ventas'
      Flat = True
      PopupMenu = PopupMenu1
      OnClick = SpeedButton10Click
    end
    object Panel5: TPanel
      Left = 1096
      Top = 0
      Width = 196
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Versi'#243'n'
      TabOrder = 0
      object Shape1: TShape
        AlignWithMargins = True
        Left = 120
        Top = 10
        Width = 56
        Height = 21
        Margins.Top = 10
        Margins.Right = 20
        Margins.Bottom = 10
        Align = alRight
        Brush.Color = clGreen
        Pen.Color = clGreen
        Shape = stRoundRect
        ExplicitHeight = 22
      end
      object Label3: TLabel
        Left = 133
        Top = 15
        Width = 27
        Height = 13
        AutoSize = False
        Caption = '6.4.2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object PCinicio: TcxPageControl
    Left = 0
    Top = 91
    Width = 1292
    Height = 790
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = TInicio
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 786
    ClientRectLeft = 4
    ClientRectRight = 1288
    ClientRectTop = 24
    object TInicio: TcxTabSheet
      Caption = 'Inicio'
      ImageIndex = 0
      object Shape3: TShape
        Left = 0
        Top = 0
        Width = 25
        Height = 762
        Align = alLeft
        Brush.Color = 9068819
        Pen.Color = 9068819
        ExplicitTop = 754
        ExplicitHeight = 47
      end
      object Pcentral: TPanel
        Left = 25
        Top = 0
        Width = 1259
        Height = 762
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Panel15: TPanel
          Left = 1
          Top = 1
          Width = 1257
          Height = 192
          Margins.Top = 0
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          TabOrder = 0
          object Panel10: TPanel
            AlignWithMargins = True
            Left = 525
            Top = 10
            Width = 508
            Height = 172
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alLeft
            BevelKind = bkTile
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object lbTotalAyer: TLabel
              Left = 24
              Top = 88
              Width = 99
              Height = 27
              Caption = 'RD$ 0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = 10449444
              Font.Height = -24
              Font.Name = 'Eras Medium ITC'
              Font.Style = []
              ParentFont = False
            end
            object lbVentasHoy: TLabel
              Left = 264
              Top = 88
              Width = 99
              Height = 27
              Caption = 'RD$ 0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = 10449444
              Font.Height = -24
              Font.Name = 'Eras Medium ITC'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 24
              Top = 65
              Width = 69
              Height = 17
              Caption = 'Dia anterior'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Lao UI'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 266
              Top = 65
              Width = 60
              Height = 17
              Caption = 'Venta Hoy'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Lao UI'
              Font.Style = []
              ParentFont = False
            end
            object Shape4: TShape
              Left = 245
              Top = 68
              Width = 1
              Height = 74
              Pen.Color = 10449444
            end
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 504
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              Color = 10449444
              ParentBackground = False
              TabOrder = 0
              object Label6: TLabel
                Left = 10
                Top = 13
                Width = 98
                Height = 17
                Caption = 'Ventas Recientes'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Lao UI'
                Font.Style = []
                ParentFont = False
              end
            end
          end
          object Panel16: TPanel
            AlignWithMargins = True
            Left = 10
            Top = 10
            Width = 495
            Height = 172
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alLeft
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object Panel11: TPanel
              Left = 17
              Top = 16
              Width = 233
              Height = 153
              BevelOuter = bvLowered
              Color = 10449444
              ParentBackground = False
              TabOrder = 0
              object Image1: TImage
                Left = 23
                Top = 16
                Width = 81
                Height = 65
                Center = True
                Picture.Data = {
                  0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
                  0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
                  206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
                  98000017709CBA513C00000006624B4744000000000000F943BB7F0000000970
                  48597300000EC400000EC401952B0E1B000002274944415468DEED98316B1441
                  1886DF2FC1428318AD2CBC3416292C04CB08B6A23F4208D8A61141C1C6CA22A4
                  B4D1CA3631C12A0716DA58682562172C2444ABA8700BA292708F8553E872BB3B
                  333BB723BA6F77B737DFF73CB33BBBB327F5E9D3479244755EE5666B2B007029
                  375F5B81616EBEB60200177233860ABDF090EA227BC0952A4EAB11B82A693BF7
                  44BAEC99D9C2A403339566664349AF7393BB507560A661E06A4288DB2DC63E8C
                  D386596027C585ECEADD8A18FA11988B5607AEA7128894586E75DE8123C06E2A
                  814089B7C06C2B01D7F04608A0674D1F89CBADE15DB339603FA58087C4739F1A
                  4D77214992997D95743FC96CFC99A315DF8F25DD4CDA09380514092FA1BB35B3
                  FF680A9325016BC1AB77826003FC37602196B149E0B46B102DD0000F706F2AF0
                  BF013C8815F080DF074E4C5BE02C7018E1D0040FB012CA63A103807949EF25CD
                  279E9B7792CE99D941C820AFDB682977A600FF43D272287C70DCE5F33D660D54
                  64046CD3D5DB1EB05502F8001CEBA47902F825605C12B8969B2B446058827F03
                  C4ACA1A40901B858FABC6566E3DC02DEB751A09074BC3330332FB69033F0AC2B
                  F82051DF1F028B925E4A3AD90958EA3360663B92CE4B7A2CA9E842A2CF3F1760
                  006CF2EBCDAC009EB8B5F157D4F369F679C27EE60B30C85DCFA7E166CDA66C23
                  773D9F86454DC351AE7AA9F63251FF0BA5A897EA49FC34023275BDFA008B6E81
                  95F3093893BB9E6FD301B0E1DEA446C07A9B66A9EBF5E9F33FE6278845D008E9
                  FAB21D0000002574455874646174653A63726561746500323032302D30362D31
                  395431313A34313A35352B30303A3030CEC7A9F0000000257445587464617465
                  3A6D6F6469667900323032302D30362D31395431313A34313A35352B30303A30
                  30BF9A114C0000001974455874536F667477617265007777772E696E6B736361
                  70652E6F72679BEE3C1A0000000049454E44AE426082}
                Proportional = True
                Stretch = True
              end
              object Lbfacturas: TLabel
                Left = 188
                Top = 11
                Width = 26
                Height = 58
                Alignment = taRightJustify
                Caption = '6'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -48
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 110
                Top = 75
                Width = 101
                Height = 17
                Caption = 'Facturas Emitidas'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Lao UI'
                Font.Style = []
                ParentFont = False
              end
              object Panel13: TPanel
                Left = 1
                Top = 104
                Width = 231
                Height = 48
                Align = alBottom
                Color = clWhite
                ParentBackground = False
                TabOrder = 0
                object Label12: TLabel
                  Left = 14
                  Top = 16
                  Width = 97
                  Height = 17
                  Caption = 'Ver m'#225's detalles'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 10449444
                  Font.Height = -13
                  Font.Name = 'Lao UI'
                  Font.Style = []
                  ParentFont = False
                end
                object Image2: TImage
                  Left = 182
                  Top = 10
                  Width = 28
                  Height = 25
                  DragCursor = crHandPoint
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
                    000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
                    206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
                    98000017709CBA513C00000006624B4744000000000000F943BB7F0000000970
                    48597300000EC400000EC401952B0E1B000000E84944415448C7DD944B0E8240
                    10445F349A783A09221EC52D4B516F21D12389DF4BE05A5D306C4C0FDD33EEA8
                    A436334515FD01183AA6C00A380235F072ACDD59EE345158000FE0A3F00EA421
                    C663606F30FEE50E18590262CC3B9696B6C49A774CFA067A3718AC95FB279EC1
                    AF8C6F0850289AA514700A0840A9A49202AE8AA1045F482D899B88005F48D35D
                    9AF656C14C387B4BC24B440585E799B3243E1236E4A247739002F2808042D164
                    5280F543D3CC6FC0C4D7D3D458451FE7CADCD8FD61BED1CCA15DDD6D847949E0
                    DA27AE9F9AF1CDD2161F26B43FAE8A76B71BC7B33BCBFA063A0C7C011FB703D0
                    84C9BF840000002574455874646174653A63726561746500323032302D30362D
                    31395431313A35303A31392B30303A3030A36179800000002574455874646174
                    653A6D6F6469667900323032302D30362D31395431313A35303A31392B30303A
                    3030D23CC13C0000001974455874536F667477617265007777772E696E6B7363
                    6170652E6F72679BEE3C1A0000000049454E44AE426082}
                end
              end
            end
            object Panel17: TPanel
              Left = 255
              Top = 16
              Width = 224
              Height = 153
              BevelOuter = bvLowered
              Color = 4227327
              ParentBackground = False
              TabOrder = 1
              object Image3: TImage
                Left = 23
                Top = 16
                Width = 81
                Height = 65
                Center = True
                Picture.Data = {
                  0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
                  0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
                  206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
                  98000017709CBA513C00000006624B4744000000000000F943BB7F0000000970
                  48597300000EC400000EC401952B0E1B000001D94944415468DEED99C14A1B51
                  1486FF1B13B0E0C6D266A3D988104AFB166EDA852BB7BA10AA8F51EA5E91BC46
                  29C4923642A1DD48F52904B12E84D242A2B45DF9B948025A3233C9B993B9933A
                  DF2E30E79CFFBFE7DC7B998954F09F01948175E033F003B804BE029BC04C687D
                  49E2ABC011D11C03D5D03AA3C457806F2473025442EB1D66E0F508E2076C6525
                  AA06BC07BA63881BF01158001681B621BE0B3481BA8FF89F86C20316FFC965E5
                  17508BD2598AF1B02FE97126AD8E675ED29EA50396B1B94BBB3F3E35E0D03357
                  274AA78B3140E8A5BF27D4B9A15A4BE326CA1B8581D094AD81513369C5BAE7A6
                  BE038581D098F7405EEE89A9EF4061203499DD0393DA3353DF81C24068F2720F
                  7C97F441D2274967FDDF487A22E9B9A41593C00CB800B601F3429A0353E040D2
                  8673EEDA2749A83DD090B4E62B3E96A4DE7BC43781D416CEFC529F749145C45F
                  487A96E6CA673D426FA2C4032D6029B54A1318A173623EAFF79FF903BC051E4D
                  DC8081C618F54E81D5BC197869A8671FAB09185836D6FB4D6FAC66431B98F3AC
                  3774ACE24EA12B53EBA2B949395FA2812F29D77A6A8CFB2B6947D20BE75C6BE4
                  28A04EEFCF85B47895506F187E7703BD6FFBEF804E0A0676C730E07F8C664D5F
                  B8EDC4C903DEE35250F040B9058FBBFF06B6B781D60000002574455874646174
                  653A63726561746500323032302D30362D31395431323A32343A30332B30303A
                  303056A1FF670000002574455874646174653A6D6F6469667900323032302D30
                  362D31395431323A32343A30332B30303A303027FC47DB000000197445587453
                  6F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000000
                  49454E44AE426082}
                Proportional = True
                Stretch = True
              end
              object Label13: TLabel
                Left = 181
                Top = 11
                Width = 26
                Height = 58
                Alignment = taRightJustify
                Caption = '6'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -48
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 126
                Top = 75
                Width = 86
                Height = 17
                Caption = 'Facturas HOLD'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Lao UI'
                Font.Style = []
                ParentFont = False
              end
              object Panel18: TPanel
                Left = 1
                Top = 104
                Width = 222
                Height = 48
                Align = alBottom
                Color = clWhite
                ParentBackground = False
                TabOrder = 0
                object Label15: TLabel
                  Left = 14
                  Top = 16
                  Width = 97
                  Height = 17
                  Caption = 'Ver m'#225's detalles'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 10449444
                  Font.Height = -13
                  Font.Name = 'Lao UI'
                  Font.Style = []
                  ParentFont = False
                end
                object Image4: TImage
                  Left = 177
                  Top = 10
                  Width = 28
                  Height = 25
                  DragCursor = crHandPoint
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
                    000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
                    206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
                    98000017709CBA513C00000006624B4744000000000000F943BB7F0000000970
                    48597300000EC400000EC401952B0E1B000000E84944415448C7DD944B0E8240
                    10445F349A783A09221EC52D4B516F21D12389DF4BE05A5D306C4C0FDD33EEA8
                    A436334515FD01183AA6C00A380235F072ACDD59EE345158000FE0A3F00EA421
                    C663606F30FEE50E18590262CC3B9696B6C49A774CFA067A3718AC95FB279EC1
                    AF8C6F0850289AA514700A0840A9A49202AE8AA1045F482D899B88005F48D35D
                    9AF656C14C387B4BC24B440585E799B3243E1236E4A247739002F2808042D164
                    5280F543D3CC6FC0C4D7D3D458451FE7CADCD8FD61BED1CCA15DDD6D847949E0
                    DA27AE9F9AF1CDD2161F26B43FAE8A76B71BC7B33BCBFA063A0C7C011FB703D0
                    84C9BF840000002574455874646174653A63726561746500323032302D30362D
                    31395431313A35303A31392B30303A3030A36179800000002574455874646174
                    653A6D6F6469667900323032302D30362D31395431313A35303A31392B30303A
                    3030D23CC13C0000001974455874536F667477617265007777772E696E6B7363
                    6170652E6F72679BEE3C1A0000000049454E44AE426082}
                end
              end
            end
          end
        end
        object Panel12: TPanel
          Left = 1
          Top = 193
          Width = 1257
          Height = 368
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel14: TPanel
            AlignWithMargins = True
            Left = 692
            Top = 20
            Width = 603
            Height = 328
            Margins.Left = 0
            Margins.Top = 20
            Margins.Bottom = 20
            Align = alLeft
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object Label8: TLabel
              Left = 17
              Top = 21
              Width = 189
              Height = 17
              Caption = 'Top 10 Productos m'#225's vendidos'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8026746
              Font.Height = -13
              Font.Name = 'Lao UI'
              Font.Style = []
              ParentFont = False
            end
            object Shape7: TShape
              Left = 17
              Top = 42
              Width = 190
              Height = 2
              Brush.Color = 10449444
              Pen.Color = 10449444
            end
            object Label7: TLabel
              Left = 4
              Top = 60
              Width = 69
              Height = 17
              Caption = 'Fecha Inicial'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8026746
              Font.Height = -13
              Font.Name = 'Lao UI'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 220
              Top = 60
              Width = 63
              Height = 17
              Caption = 'Fecha Final'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8026746
              Font.Height = -13
              Font.Name = 'Lao UI'
              Font.Style = []
              ParentFont = False
            end
            object cxGrid3: TcxGrid
              Left = 4
              Top = 83
              Width = 569
              Height = 230
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object cxGrid3DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = QTopVentas
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.ScrollBars = ssNone
                OptionsView.GridLineColor = 13215105
                OptionsView.GridLines = glHorizontal
                OptionsView.GroupByBox = False
                object cxGrid3DBTableView1ARTICULOID: TcxGridDBColumn
                  Caption = 'Id'
                  DataBinding.FieldName = 'ARTICULOID'
                  GroupSummaryAlignment = taLeftJustify
                  Options.Sorting = False
                end
                object cxGrid3DBTableView1TITULOPRN: TcxGridDBColumn
                  Caption = 'Productos'
                  DataBinding.FieldName = 'TITULOPRN'
                  Width = 318
                end
                object cxGrid3DBTableView1TCANTIDAD: TcxGridDBColumn
                  Caption = 'Cantidades'
                  DataBinding.FieldName = 'TCANTIDAD'
                  Width = 79
                end
                object cxGrid3DBTableView1Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'TCANTIDAD'
                  PropertiesClassName = 'TcxProgressBarProperties'
                  Properties.AssignedValues.Min = True
                  Properties.BeginColor = 13215105
                  Properties.Max = 15.000000000000000000
                  Properties.OverloadValue = 15.000000000000000000
                  Properties.PeakValue = 15.000000000000000000
                  Width = 95
                end
              end
              object cxGrid3Level1: TcxGridLevel
                GridView = cxGrid3DBTableView1
              end
            end
            object Finicio: TcxDateEdit
              Left = 79
              Top = 60
              TabOrder = 1
              Width = 121
            end
            object Ffinal: TcxDateEdit
              Left = 294
              Top = 60
              TabOrder = 2
              Width = 121
            end
            object cxButton1: TcxButton
              Left = 424
              Top = 57
              Width = 108
              Height = 25
              Caption = 'Consultar'
              LookAndFeel.NativeStyle = True
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360900000000000036000000280000001800000018000000010020000000
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
                0020000000200000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000001E0000
                00DD000000E10000002200000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000001E000000DD0000
                00FF000000E10000002200000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000001E000000DD000000FF0000
                00E1000000220000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000001E000000DD000000FF000000E10000
                0022000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000003B000000A6000000E3000000FA0000
                00E5000000A80000003D00000000000000DF000000FF000000DF000000200000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000400000095000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000AA000000FF000000DF00000020000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000095000000FF000000F50000007D00000023000000060000
                00230000007D000000F5000000FF000000AA0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000003C000000FF000000F5000000370000000000000000000000000000
                00000000000000000037000000F5000000FF0000003D00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000A7000000FF0000007D000000000000000000000000000000000000
                000000000000000000000000007D000000FF000000A800000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000E5000000FF00000022000000000000000000000000000000000000
                0000000000000000000000000023000000FF000000E500000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000F9000000FF00000006000000000000000000000000000000000000
                0000000000000000000000000007000000FF000000F900000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000E5000000FF00000022000000000000000000000000000000000000
                0000000000000000000000000023000000FF000000E400000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000A8000000FF0000007D000000000000000000000000000000000000
                000000000000000000000000007D000000FF000000A600000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000003E000000FF000000F5000000370000000000000000000000000000
                00000000000000000037000000F5000000FF0000003B00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000097000000FF000000F50000007D00000022000000060000
                00220000007D000000F5000000FF000000950000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000400000097000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF00000095000000040000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000003D000000A8000000E5000000F90000
                00E4000000A70000003C00000000000000000000000000000000000000000000
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
              TabOrder = 3
              OnClick = cxButton1Click
            end
          end
          object Panel7: TPanel
            AlignWithMargins = True
            Left = 20
            Top = 20
            Width = 669
            Height = 328
            Margins.Left = 20
            Margins.Top = 20
            Margins.Bottom = 20
            Align = alLeft
            BevelKind = bkTile
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 665
              Height = 41
              Align = alTop
              Color = 10449444
              ParentBackground = False
              TabOrder = 1
              object Label5: TLabel
                Left = 10
                Top = 13
                Width = 88
                Height = 17
                Caption = 'Ventas Anuales'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Lao UI'
                Font.Style = []
                ParentFont = False
              end
            end
            object cxGrid1: TcxGrid
              Left = -1
              Top = 47
              Width = 667
              Height = 263
              BorderStyle = cxcbsNone
              TabOrder = 0
              object cxGridDBTableView2: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = DsVentasDiarias
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
              end
              object cxGridDBChartView2: TcxGridDBChartView
                Categories.DataBinding.FieldName = 'FTCNOMBREMES'
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DataSource = Dsventasmensuales
                DiagramArea.Active = True
                DiagramArea.AxisCategory.GridLines = False
                DiagramArea.AxisCategory.TickMarkKind = tmkInside
                DiagramArea.AxisCategory.ValueAxisBetweenCategories = True
                DiagramArea.AxisValue.TickMarkKind = tmkNone
                DiagramArea.AxisValue.TickMarkLabels = False
                DiagramArea.Styles.ValueCaptions = cxStyle1
                DiagramArea.Styles.Values = cxStyle2
                DiagramArea.Values.CaptionPosition = ldvcpCenter
                DiagramArea.Values.LineStyle = clsDashDot
                DiagramArea.Values.MarkerStyle = cmsSquare
                DiagramBar.AxisCategory.GridLines = False
                DiagramBar.AxisValue.TickMarkLabels = False
                DiagramBar.Styles.ValueCaptions = cxStyle1
                DiagramBar.Values.VaryColorsByCategory = True
                DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
                DiagramColumn.Legend.Border = lbNone
                DiagramColumn.Legend.Orientation = cpoHorizontal
                DiagramColumn.Legend.Position = cppBottom
                DiagramColumn.AxisCategory.GridLines = False
                DiagramColumn.AxisValue.GridLines = False
                DiagramColumn.AxisValue.TickMarkKind = tmkNone
                DiagramColumn.AxisValue.TickMarkLabels = False
                DiagramColumn.Styles.ValueCaptions = cxStyle1
                DiagramColumn.Values.VaryColorsByCategory = True
                DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                Legend.Position = cppNone
                OptionsBehavior.ValueHotTrack = vhAlways
                OptionsCustomize.DataGroupMoving = False
                OptionsCustomize.OptionsCustomization = False
                OptionsCustomize.SeriesCustomization = False
                OptionsView.TransparentCaptions = False
                ToolBox.Border = tbNone
                ToolBox.Visible = tvNever
                object cxGridDBChartView2DataGroup1: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'FTCNOMBREMES'
                  SortOrder = soNone
                  Visible = False
                end
                object cxGridDBChartView2Series1: TcxGridDBChartSeries
                  DataBinding.FieldName = 'FTNMONTO'
                  Styles.Values = cxStyle1
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxGridDBChartView2
              end
            end
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 561
          Width = 1257
          Height = 297
          Align = alTop
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Shape5: TShape
            Left = 13
            Top = 43
            Width = 190
            Height = 2
            Brush.Color = 10449444
            Pen.Color = 10449444
          end
          object Label4: TLabel
            Left = 13
            Top = 22
            Width = 197
            Height = 17
            Caption = 'Cantidad de Productos Vendidos '
            Font.Charset = ANSI_CHARSET
            Font.Color = 8026746
            Font.Height = -13
            Font.Name = 'Lao UI'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 7
            Top = 60
            Width = 69
            Height = 17
            Caption = 'Fecha Inicial'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8026746
            Font.Height = -13
            Font.Name = 'Lao UI'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 223
            Top = 60
            Width = 63
            Height = 17
            Caption = 'Fecha Final'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8026746
            Font.Height = -13
            Font.Name = 'Lao UI'
            Font.Style = []
            ParentFont = False
          end
          object Finicio01: TcxDateEdit
            Left = 82
            Top = 60
            TabOrder = 0
            Width = 121
          end
          object Ffinal01: TcxDateEdit
            Left = 297
            Top = 60
            TabOrder = 1
            Width = 121
          end
          object cxButton2: TcxButton
            Left = 424
            Top = 56
            Width = 139
            Height = 25
            Caption = 'Buscar Articulos'
            LookAndFeel.NativeStyle = True
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360900000000000036000000280000001800000018000000010020000000
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
              0020000000200000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000001E0000
              00DD000000E10000002200000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000001E000000DD0000
              00FF000000E10000002200000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000001E000000DD000000FF0000
              00E1000000220000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000001E000000DD000000FF000000E10000
              0022000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000003B000000A6000000E3000000FA0000
              00E5000000A80000003D00000000000000DF000000FF000000DF000000200000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000400000095000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF000000AA000000FF000000DF00000020000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000095000000FF000000F50000007D00000023000000060000
              00230000007D000000F5000000FF000000AA0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000003C000000FF000000F5000000370000000000000000000000000000
              00000000000000000037000000F5000000FF0000003D00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000A7000000FF0000007D000000000000000000000000000000000000
              000000000000000000000000007D000000FF000000A800000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000E5000000FF00000022000000000000000000000000000000000000
              0000000000000000000000000023000000FF000000E500000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000F9000000FF00000006000000000000000000000000000000000000
              0000000000000000000000000007000000FF000000F900000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000E5000000FF00000022000000000000000000000000000000000000
              0000000000000000000000000023000000FF000000E400000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000A8000000FF0000007D000000000000000000000000000000000000
              000000000000000000000000007D000000FF000000A600000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000003E000000FF000000F5000000370000000000000000000000000000
              00000000000000000037000000F5000000FF0000003B00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000097000000FF000000F50000007D00000022000000060000
              00220000007D000000F5000000FF000000950000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000400000097000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FF00000095000000040000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000003D000000A8000000E5000000F90000
              00E4000000A70000003C00000000000000000000000000000000000000000000
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
            TabOrder = 2
            OnClick = cxButton2Click
          end
          object cxGrid2: TcxGrid
            Left = 10
            Top = 87
            Width = 553
            Height = 196
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Century Gothic'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsPvendidos
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ScrollBars = ssNone
              OptionsView.GridLineColor = 13215105
              OptionsView.GridLines = glHorizontal
              OptionsView.GroupByBox = False
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Id'
                DataBinding.FieldName = 'ARTICULOID'
                GroupSummaryAlignment = taLeftJustify
                Options.Sorting = False
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Productos'
                DataBinding.FieldName = 'TITULOPRN'
                Width = 377
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'Cantidades'
                DataBinding.FieldName = 'TCANTIDAD'
                Width = 79
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
    end
  end
  object QventasDiarias: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from ventas_diarias(:fecha1, :fecha2 )')
    Params = <
      item
        DataType = ftWideString
        Name = 'fecha1'
        ParamType = ptUnknown
        Value = '22/05/2020'
      end
      item
        DataType = ftWideString
        Name = 'fecha2'
        ParamType = ptUnknown
        Value = '26/05/2020'
      end>
    Left = 928
    Top = 443
    ParamData = <
      item
        DataType = ftWideString
        Name = 'fecha1'
        ParamType = ptUnknown
        Value = '22/05/2020'
      end
      item
        DataType = ftWideString
        Name = 'fecha2'
        ParamType = ptUnknown
        Value = '26/05/2020'
      end>
    object QventasDiariasFTDFECHAX: TDateField
      FieldName = 'FTDFECHAX'
      ReadOnly = True
    end
    object QventasDiariasFTNTOTALX: TIntegerField
      DisplayLabel = 'Monto Vendido'
      FieldName = 'FTNTOTALX'
      ReadOnly = True
      DisplayFormat = '##0,000.00'
    end
  end
  object DsVentasDiarias: TDataSource
    DataSet = QventasDiarias
    Left = 576
    Top = 451
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 392
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clTeal
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientActiveCaption
    end
  end
  object Qventasmeses: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'SELECT'
      
        '    compras_por_mes.ftcnombremes,  cast(compras_por_mes.ftnmonto' +
        ' as float) as ftnmonto'
      'FROM'
      '   COMPRAS_POR_MES(2020, 12)')
    Params = <>
    Left = 411
    Top = 608
    object QventasmesesFTCNOMBREMES: TWideStringField
      FieldName = 'FTCNOMBREMES'
      ReadOnly = True
      Size = 25
    end
    object QventasmesesFTNMONTO: TSingleField
      FieldName = 'FTNMONTO'
      ReadOnly = True
      currency = True
    end
  end
  object Dsventasmensuales: TDataSource
    DataSet = Qventasmeses
    Left = 443
    Top = 504
  end
  object QVentasHoy: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'SELECT'
      '   *'
      'FROM'
      '   VENTAS_DIARIAS('#39'01/04/2020'#39', '#39'01/04/2020'#39')')
    Params = <>
    Left = 335
    Top = 544
    object QVentasHoyFTDFECHAX: TDateField
      FieldName = 'FTDFECHAX'
      ReadOnly = True
    end
    object QVentasHoyFTNTOTALX: TIntegerField
      FieldName = 'FTNTOTALX'
      ReadOnly = True
    end
  end
  object QmasVEndido: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'SELECT first 10 a.articuloid, a.tituloprn, sum(a.cantidad) as Tc' +
        'antidad  FROM detailfact a'
      'GROUP BY a.articuloid, a.tituloprn'
      'Order by SUM(a.CANTIDAD) desc')
    Params = <>
    Left = 817
    Top = 653
    object QmasVEndidoARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object QmasVEndidoTITULOPRN: TWideStringField
      FieldName = 'TITULOPRN'
      Size = 100
    end
    object QmasVEndidoTCANTIDAD: TExtendedField
      FieldName = 'TCANTIDAD'
      ReadOnly = True
      Precision = 19
    end
  end
  object QTopVentas: TDataSource
    DataSet = QmasVEndido
    Left = 921
    Top = 701
  end
  object PopupMenu1: TPopupMenu
    TrackButton = tbLeftButton
    Left = 854
    Top = 132
    object C1: TMenuItem
      Caption = 'Comisi'#243'n x Servicio'
      OnClick = C1Click
    end
    object C2: TMenuItem
      Caption = 'Comsi'#243'n x Monto Factura'
      OnClick = C2Click
    end
  end
  object QproductosVendidos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'SELECT first 10 a.articuloid, a.tituloprn, sum(a.cantidad) as Tc' +
        'antidad  FROM detailfact a'
      'left join Master_fact b On a.masterid = b.no_fact'
      'GROUP BY a.articuloid, a.tituloprn'
      'Order by SUM(a.CANTIDAD) desc')
    Params = <>
    Left = 654
    Top = 804
    object QproductosVendidosARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object QproductosVendidosTITULOPRN: TWideStringField
      FieldName = 'TITULOPRN'
      Size = 100
    end
    object QproductosVendidosTCANTIDAD: TExtendedField
      FieldName = 'TCANTIDAD'
      ReadOnly = True
      Precision = 19
    end
  end
  object dsPvendidos: TDataSource
    DataSet = QproductosVendidos
    Left = 542
    Top = 548
  end
  object FactCount: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select count(*)  from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp1'
      'LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid'
      'left JOIN mtempleado F On e.empleadoid= f.cod_emp1'
      'LEFT JOIN MUSUARIO g oN a.codven = g.usuarioid'
      'left JOIN mtempleado h On g.empleadoid = h.cod_emp1'
      'WHERE a.situacion='#39'HOLD'#39
      'and a.iddr = 1')
    Params = <>
    Left = 500
    Top = 88
    object FactCountCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
    end
  end
end
