object FrmCompras: TFrmCompras
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Compras'
  ClientHeight = 649
  ClientWidth = 1012
  Color = clBtnFace
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label23: TLabel
    Left = 855
    Top = 547
    Width = 95
    Height = 30
    Caption = 'Procesada'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object OpM: TcxGroupBox
    AlignWithMargins = True
    Left = 25
    Top = 70
    Margins.Left = 25
    Margins.Right = 25
    Align = alTop
    Enabled = False
    ParentBackground = False
    ParentColor = False
    Style.BorderStyle = ebs3D
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 0
    Height = 97
    Width = 962
    object Label1: TLabel
      Left = 43
      Top = 8
      Width = 21
      Height = 13
      Caption = '# ID'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 36
      Top = 28
      Width = 30
      Height = 13
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit1
    end
    object Label3: TLabel
      Left = 19
      Top = 52
      Width = 51
      Height = 13
      Caption = 'Empleado'
      FocusControl = cxDBTextEdit1
    end
    object Label21: TLabel
      Left = 249
      Top = 52
      Width = 85
      Height = 13
      Caption = 'Tipo de Moneda'
      FocusControl = cxDBTextEdit1
    end
    object Label6: TLabel
      Left = 494
      Top = 35
      Width = 115
      Height = 13
      Caption = 'Nombre del Proveedor'
      FocusControl = cxDBTextEdit2
    end
    object Label7: TLabel
      Left = 240
      Top = 73
      Width = 94
      Height = 13
      Caption = 'No de Documento'
      FocusControl = cxDBTextEdit3
    end
    object Label8: TLabel
      Left = 241
      Top = 28
      Width = 89
      Height = 13
      Caption = 'Fecha de Compra'
      FocusControl = cxDBDateEdit2
    end
    object Label9: TLabel
      Left = 270
      Top = 8
      Width = 57
      Height = 13
      Caption = 'Plazo (dias)'
      FocusControl = cxDBSpinEdit3
    end
    object Label20: TLabel
      Left = 505
      Top = 66
      Width = 106
      Height = 13
      Caption = 'Nombre del Almacen'
      FocusControl = cxDBTextEdit4
    end
    object Label4: TLabel
      Left = 19
      Top = 73
      Width = 53
      Height = 13
      Caption = 'Condicion'
      FocusControl = cxDBTextEdit1
    end
    object Label24: TLabel
      Left = 494
      Top = 8
      Width = 115
      Height = 13
      Caption = 'No. Comprabante NCF'
      FocusControl = cxDBTextEdit3
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 71
      Top = 5
      TabStop = False
      DataBinding.DataField = 'NOID'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 71
      Top = 27
      TabStop = False
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 71
      Top = 49
      TabStop = False
      DataBinding.DataField = 'NOMBRES_EMP'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 121
    end
    object ComboMoneda: TcxDBComboBox
      Left = 331
      Top = 49
      DataBinding.DataField = 'MONEDA'
      DataBinding.DataSource = DataSource1
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        'RD'
        'US')
      Properties.PostPopupValueOnTab = True
      Properties.ReadOnly = False
      Properties.OnChange = ComboMonedaPropertiesChange
      TabOrder = 0
      Width = 102
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 606
      Top = 32
      TabStop = False
      DataBinding.DataField = 'PROVID'
      DataBinding.DataSource = DataSource1
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 49
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 656
      Top = 32
      TabStop = False
      DataBinding.DataField = 'NOMBRE_PRO'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 210
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 331
      Top = 70
      DataBinding.DataField = 'NOFACT'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 331
      Top = 27
      DataBinding.DataField = 'FECHA_COMPRA'
      DataBinding.DataSource = DataSource1
      TabOrder = 2
      Width = 102
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 331
      Top = 5
      DataBinding.DataField = 'PLAZO'
      DataBinding.DataSource = DataSource1
      TabOrder = 3
      Width = 102
    end
    object cxDBSpinEdit4: TcxDBSpinEdit
      Left = 606
      Top = 63
      TabStop = False
      DataBinding.DataField = 'COD_ALM'
      DataBinding.DataSource = DataSource1
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      TabOrder = 9
      Width = 49
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 656
      Top = 63
      TabStop = False
      DataBinding.DataField = 'ALMACEN'
      DataBinding.DataSource = DataSource1
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 119
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 71
      Top = 70
      TabStop = False
      DataBinding.DataField = 'CONDICION'
      DataBinding.DataSource = DataSource1
      Enabled = False
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Reposicion'
        'Compra')
      Properties.PostPopupValueOnTab = True
      Properties.ReadOnly = True
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 608
      Top = 5
      DataBinding.DataField = 'NCF'
      DataBinding.DataSource = DataSource1
      TabOrder = 12
      Width = 221
    end
    object Panel17: TPanel
      AlignWithMargins = True
      Left = 865
      Top = 32
      Width = 29
      Height = 20
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      BevelOuter = bvNone
      Color = 6376140
      ParentBackground = False
      TabOrder = 13
      object SpeedButton9: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 23
        Height = 14
        Align = alClient
        Anchors = [akRight]
        Caption = '....'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton9Click
        ExplicitLeft = -5
        ExplicitTop = 6
        ExplicitHeight = 15
      end
    end
    object Panel15: TPanel
      AlignWithMargins = True
      Left = 773
      Top = 63
      Width = 29
      Height = 19
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      BevelOuter = bvNone
      Color = 6376140
      ParentBackground = False
      TabOrder = 14
      object SpeedButton6: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 23
        Height = 13
        Align = alClient
        Anchors = [akRight]
        Caption = '....'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton6Click
        ExplicitLeft = -5
        ExplicitTop = -9
        ExplicitWidth = 32
        ExplicitHeight = 23
      end
    end
    object Panel23: TPanel
      AlignWithMargins = True
      Left = 820
      Top = 59
      Width = 109
      Height = 24
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      BevelOuter = bvNone
      Color = 12091960
      ParentBackground = False
      TabOrder = 15
      object SpeedButton8: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 103
        Height = 18
        Align = alClient
        Anchors = [akRight]
        Caption = 'Crear Proveedor'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton8Click
        ExplicitTop = -2
        ExplicitWidth = 101
      end
    end
  end
  object Opdetalle: TcxGroupBox
    AlignWithMargins = True
    Left = 25
    Top = 173
    Margins.Left = 25
    Margins.Right = 25
    Align = alTop
    Caption = 'Detalle    (Presiones [F2] para Buscar Articulos)'
    Enabled = False
    ParentBackground = False
    ParentColor = False
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
    Height = 346
    Width = 962
    object Label10: TLabel
      Left = 5
      Top = 17
      Width = 38
      Height = 13
      Caption = 'Codigo'
      FocusControl = cxDBSpinEdit2
    end
    object Label11: TLabel
      Left = 115
      Top = 19
      Width = 52
      Height = 13
      Caption = 'Productos'
      FocusControl = cxDBSpinEdit2
    end
    object Label12: TLabel
      Left = 399
      Top = 21
      Width = 47
      Height = 13
      Caption = 'Cantidad'
      FocusControl = cxDBSpinEdit2
    end
    object Label13: TLabel
      Left = 449
      Top = 21
      Width = 54
      Height = 13
      Caption = 'Costo RD$'
      FocusControl = cxDBSpinEdit2
    end
    object Label14: TLabel
      Left = 529
      Top = 21
      Width = 50
      Height = 13
      Caption = 'Total Imp.'
      FocusControl = cxDBSpinEdit2
    end
    object Label15: TLabel
      Left = 606
      Top = 22
      Width = 82
      Height = 13
      Caption = 'Total Costo RD$'
      FocusControl = cxDBSpinEdit2
    end
    object Label22: TLabel
      Left = 15
      Top = 319
      Width = 94
      Height = 15
      Caption = 'Total de Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFechaVencimiento: TLabel
      Left = 698
      Top = 19
      Width = 96
      Height = 13
      Caption = 'Fecha Vencimiento'
    end
    object Arti_TXT: TcxTextEdit
      Left = 115
      Top = 32
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 283
    end
    object Cant_TXT: TcxCalcEdit
      Left = 398
      Top = 33
      EditValue = 1.000000000000000000
      TabOrder = 1
      OnKeyDown = Cant_TXTKeyDown
      Width = 49
    end
    object MONTOCOSTO_TXT: TcxCurrencyEdit
      Left = 448
      Top = 33
      TabOrder = 2
      OnKeyDown = MONTOCOSTO_TXTKeyDown
      Width = 80
    end
    object TOTALIMPUESTO_TXT: TcxCurrencyEdit
      Left = 529
      Top = 33
      TabOrder = 3
      OnExit = TOTALIMPUESTO_TXTExit
      OnKeyDown = TOTALIMPUESTO_TXTKeyDown
      Width = 77
    end
    object totalcosto_txt: TcxCurrencyEdit
      Left = 607
      Top = 34
      Enabled = False
      TabOrder = 4
      Width = 85
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
    object DBGrid1: TDBGrid
      Left = 3
      Top = 59
      Width = 953
      Height = 240
      DataSource = DsAjusteD
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_ART'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARTICULOSNOM'
          Title.Alignment = taCenter
          Title.Caption = 'Productos'
          Width = 301
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANT'
          Title.Alignment = taCenter
          Title.Caption = 'Cant'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIOUNIT'
          Title.Alignment = taCenter
          Title.Caption = 'Precio Unit'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTOCOSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Monto Costo'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALIMP'
          Title.Alignment = taCenter
          Title.Caption = 'Total Imp.'
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALCOSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Total Costo'
          Width = 119
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 579
      Top = 56
      Width = 250
      Height = 81
      TabOrder = 6
      Visible = False
      object Button1: TButton
        Left = 87
        Top = 47
        Width = 65
        Height = 25
        Caption = 'Ok'
        HotImageIndex = 1
        ImageIndex = 9
        Images = FrmHome.RibbonImages16
        TabOrder = 0
        OnClick = Button1Click
      end
      object Memo1: TEdit
        Left = 8
        Top = 7
        Width = 233
        Height = 21
        TabOrder = 1
      end
    end
    object Edit4: TEdit
      Left = 115
      Top = 314
      Width = 73
      Height = 23
      TabStop = False
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object CxTotal: TcxCurrencyEdit
      Left = 656
      Top = 312
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clGradientInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 198
    end
    object Edit2: TEdit
      Left = 4
      Top = 32
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
      OnKeyDown = Edit2KeyDown
    end
    object Edit3: TEdit
      Left = 392
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 11
      Visible = False
    end
    object ITbs12: TEdit
      Left = 560
      Top = 200
      Width = 121
      Height = 21
      TabOrder = 12
      Visible = False
    end
    object edFechaVencimiento: TcxDateEdit
      Left = 698
      Top = 32
      TabOrder = 13
      OnKeyDown = edFechaVencimientoKeyDown
      Width = 100
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 854
      Top = 22
      Width = 78
      Height = 29
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      BevelOuter = bvNone
      Color = 12091960
      ParentBackground = False
      TabOrder = 14
      object cxButton1: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 72
        Height = 23
        Align = alClient
        Anchors = [akRight]
        Caption = 'Agregar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1ffffffffClick
        ExplicitLeft = 32
        ExplicitWidth = 120
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 803
      Top = 23
      Width = 48
      Height = 29
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      BevelOuter = bvNone
      Color = 3846482
      ParentBackground = False
      TabOrder = 15
      object cxButton8: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 42
        Height = 23
        Align = alClient
        Caption = 'OBS'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
        ExplicitLeft = 96
        ExplicitWidth = 56
      end
    end
    object Edit5: TEdit
      Left = 776
      Top = 200
      Width = 121
      Height = 21
      TabOrder = 16
      Visible = False
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 25
    Top = 605
    Width = 962
    Height = 41
    Margins.Left = 25
    Margins.Right = 25
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object RxClock1: TRxClock
      Left = 0
      Top = 0
      Width = 105
      Height = 41
      BevelInner = bvNone
      BevelOuter = bvNone
      ShowSeconds = False
      TwelveHour = True
      Align = alLeft
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Btconsultar: TcxButton
      Left = 382
      Top = 6
      Width = 90
      Height = 28
      Caption = 'Consultar'
      LookAndFeel.SkinName = 'Office2016Colorful'
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
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 1
      Visible = False
      OnClick = BtconsultarClick
    end
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 601
      Top = 5
      Width = 111
      Height = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      BevelOuter = bvNone
      Color = 12091960
      ParentBackground = False
      TabOrder = 2
      object cxButton3: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 105
        Height = 25
        Align = alClient
        Anchors = [akRight]
        Caption = '&Nuevo'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = 32
        ExplicitWidth = 120
        ExplicitHeight = 23
      end
    end
    object Panel8: TPanel
      AlignWithMargins = True
      Left = 718
      Top = 5
      Width = 119
      Height = 31
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      BevelOuter = bvNone
      Color = 3846482
      ParentBackground = False
      TabOrder = 3
      object cxButton4: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 113
        Height = 25
        Align = alClient
        Anchors = [akRight]
        Caption = 'Guardar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton4ddClick
        ExplicitLeft = 24
        ExplicitTop = 0
        ExplicitWidth = 131
        ExplicitHeight = 43
      end
    end
    object Panel9: TPanel
      AlignWithMargins = True
      Left = 843
      Top = 5
      Width = 114
      Height = 31
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Anchors = [akRight]
      BevelOuter = bvNone
      Color = 3116257
      ParentBackground = False
      TabOrder = 4
      object cxButton6: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 108
        Height = 25
        Align = alClient
        Anchors = [akRight]
        Caption = 'Cancelar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton6Click
        ExplicitLeft = 24
        ExplicitTop = 0
        ExplicitWidth = 131
        ExplicitHeight = 43
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 30
    Top = 525
    Caption = 'Cargos Adicionales'
    ParentBackground = False
    ParentColor = False
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 3
    Height = 65
    Width = 361
    object Label16: TLabel
      Left = 22
      Top = 24
      Width = 25
      Height = 13
      Caption = 'Flete'
      FocusControl = flete
    end
    object Label18: TLabel
      Left = 118
      Top = 23
      Width = 67
      Height = 13
      Caption = 'Otros Gastos'
      FocusControl = gastos
    end
    object Label17: TLabel
      Left = 239
      Top = 23
      Width = 55
      Height = 13
      Caption = 'Descuento'
      FocusControl = descuento
    end
    object flete: TcxDBCalcEdit
      Left = 20
      Top = 36
      DataBinding.DataField = 'FLETE'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.ImmediatePost = True
      Style.Color = 8454143
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 91
    end
    object gastos: TcxDBCalcEdit
      Left = 115
      Top = 36
      DataBinding.DataField = 'OTROSGASTOS'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Color = 8454143
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 121
    end
    object descuento: TcxDBCalcEdit
      Left = 241
      Top = 36
      DataBinding.DataField = 'DESCUENTO'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Color = 8454143
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 114
    end
  end
  object cxCheckBox1: TcxCheckBox
    Left = 668
    Top = 534
    Caption = 'Actualiza Precio'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 4
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 25
    Top = 10
    Width = 962
    Height = 54
    Margins.Left = 25
    Margins.Top = 10
    Margins.Right = 25
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    object btnsalir: TSpeedButton
      AlignWithMargins = True
      Left = 922
      Top = 15
      Width = 30
      Height = 24
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 10
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
      OnClick = btnsalirClick
      ExplicitLeft = 1325
      ExplicitHeight = 30
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 409
      Height = 54
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object imgLogoTop: TImage
        AlignWithMargins = True
        Left = 20
        Top = 10
        Width = 45
        Height = 34
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Center = True
        Picture.Data = {
          0B54504E474772617068696346270000424D4627000000000000360000002800
          0000320000003200000001002000000000001027000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000D997391BDB9833A9DB9834F1DB9834F1DB9834ABDC953224000000000000
          00000000000000000000000000000000000000000000D997391BDB9833A9DB98
          34F1DB9834F1DB9834ABDC953224000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DD9A3626DB9834ECDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34EDDC9532240000000000000000000000000000000000000000DD9A3626DB98
          34ECDB9834FFDB9834FFDB9834FFDB9834FFDB9834EDDC953224000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DC9834ADDB9834FFDC9834B4DB9B371CDB9B
          371CDA9834B5DB9834FFDB9834AB000000000000000000000000000000000000
          0000DC9834ADDB9834FFDC9834B4DB9B371CDB9B371CDA9834B5DB9834FFDB98
          34AB000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9834F1DB9834FFDB9B
          371C0000000000000000DC95351DDB9834FFDB9834F000000000000000000000
          00000000000000000000DB9834F1DB9834FFDB9B371C0000000000000000DC95
          351DDB9834FFDB9834F000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          34E8DB9834FFD997391B0000000000000000DC95351DDB9834FFDB9834ED0000
          000000000000000000000000000000000000DB9834EDDB9834FFD997391B0000
          000000000000DC95351DDB9834FFDB9834F00000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB9735A5DB9834FFDB9833B3D997391BD997391BDC9834B4DB98
          34FFDA9934A70000000000000000000000000000000000000000DA9934A7DB98
          34FFDB9833B3D997391BD997391BDC9834B4DB9834FFDB9833A4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB993355DB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FAD699
          3319000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DC983557DB9834FCDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834C10000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000E1962D11DB9834F1DB98
          34FFDB98348DDE94311FFFAA5503000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DA97
          3467DB9834FFDB9834C6FFFF0001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB9834B2DB9834FFDB9834630000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BF804004DB9834F1DB9834FFD893311A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DD9A3535DB9834FFDC9834D80000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DA993475DB98
          34FFDC9834970000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DB9833B3DB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FEDA983492000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFAA5503DB9834EFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FBDF9535180000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DC963233DB9834FFDC9833DF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DB9834AFDB9834FFDB983372000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DC993373DB9834FFDC98
          339F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DB98344FDB9834FFDB9834D300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          34B2DB9834FFDA97356000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000BF804004DB9834E7DB9834FFDC96
          3233000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FF800002DB9835EEDB9834FFD89B36210000000000000000000000000000
          00000000000000000000000000000000000000000000DA9834C3DC9835C20000
          000000000000000000000000000000000000000000000000000000000000DB97
          358CDB9834FFDB98349400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DB973431DB9834FFDB9834E200000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          34FFDB9834FF0000000000000000000000000000000000000000000000000000
          000000000000DB9A352BDB9834FFDB9834EDDF9F400800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB973471DB9834FFDB9834A10000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB9834FFDB9834FF000000000000000000000000000000000000
          000000000000000000000000000000000000DB9834CBDB9834FFDB9735560000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DB9834B0DB98
          34FFDB9734620000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9834FFDB9834FF00000000000000000000
          0000000000000000000000000000000000000000000000000000DB98356ADB98
          34FFDB9834B70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF80
          0002DB9834ECDB9834FFDB993323000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9834FFDB9834FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DD99330FDB9834F6DB9834FDDC95351D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000D998362FDB9834FFDB9834E30000000000000000000000000000
          000000000000D5AA2B06DB9834D7DB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDC9835C2000000000000
          0000000000000000000000000000DA9934A7DB9834FFDB983579000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DA99336EDB9834FFDB9833A4000000000000
          0000000000000000000000000000D5AA2B06DC9834D8DB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDA98
          34C30000000000000000000000000000000000000000DB973247DB9834FFDB98
          34D9FFFF00010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DA9833AEDB9834FFDB99
          3364000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9834FFDB9834FF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF80
          0002DB9834E2DB9834FFDC9A353A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFF0001DB98
          34EBDB9834FFDD98372500000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9834FFDB9834FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DB973485DB9834FFDB97359B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DD99332DDB9834FFDC9834E6000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          34FFDB9834FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DD983725DB9834FEDB9834F1E699
          330A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DC98336DDB9834FFDB9735A500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB9834FFDB9834FF000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DA98
          34C3DB9834FFDB97345D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB9934ACDB9834FFDC9935660000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9834C1DB9834CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB973462DB9834FFDB9834BE0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFF0001DB9835E9DB98
          34FFD89634270000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D5952B0CDB9834F3DB9834FEDA9635220000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB9A
          352BDB9834FFDB9834E700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DA9735A0DB98
          34FFDB99347F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DB98356ADB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834DC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9835AADB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834C100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFF0001DB9834E8DB9834FFD999
          3328000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DA953229DB98
          34FFDB9834E7FFFF000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DB993369DB9834FFDA9934A7000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DB9834A8DB9834FFDA98336800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB9734E5DB9834FFD99933280000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000D9993328DB9834FFDB98
          35E9FFFF00010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DA97
          3467DB9834FFDB9834A800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DC9834A6DB9834FFDB9933690000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DB922407DB9834ECDB9834FFDA953229000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DC9A3449DB9834E3DB9834E2DC98354800000000000000000000
          000000000000000000000000000000000000DC973565DB9834FFDB9834CD0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DB9834E3DB9834FFDB9834FFDB9834E20000
          0000000000000000000000000000FFFF0001D893311ADC973565DB9834F3DB98
          34FFDC98345E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB9833E4DB9834FFDB98
          34FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834FFDB9833A4FFFF0001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DA97
          324CDB9834E7DB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB9834FFDB98
          34FFDB9834EFDC9835C2DA973560FFFF00010000000000000000000000000000
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
        Proportional = True
        ExplicitTop = 7
        ExplicitHeight = 44
      end
      object Panel10: TPanel
        Left = 75
        Top = 0
        Width = 334
        Height = 54
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel11: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 33
          Width = 328
          Height = 22
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label19: TLabel
            Left = 0
            Top = 0
            Width = 212
            Height = 22
            Align = alLeft
            Caption = 'Creaci'#243'n de Nueva Facturas de Compras'
            Font.Charset = ANSI_CHARSET
            Font.Color = 10526880
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 15
          end
        end
        object Panel12: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 10
          Width = 328
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label25: TLabel
            AlignWithMargins = True
            Left = 98
            Top = 3
            Width = 54
            Height = 17
            Margins.Left = 5
            Align = alLeft
            Caption = 'Compras'
            Font.Charset = ANSI_CHARSET
            Font.Color = 12091960
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object lblEstado: TLabel
            Left = 0
            Top = 0
            Width = 93
            Height = 23
            Align = alLeft
            Caption = 'Mantenimiento'
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
  object edtLote: TEdit
    Left = 520
    Top = 536
    Width = 121
    Height = 21
    TabOrder = 6
    Visible = False
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 712
    Top = 248
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object numeroD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(detalleID) from DETALLE_AJUSTE')
    Params = <>
    Left = 1048
    Top = 208
    object numeroDMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object Qproveedor: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from fabricantes')
    Params = <>
    Left = 1056
    Top = 160
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
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(noid) from MASTER_AJUSTE')
    Params = <>
    Left = 1056
    Top = 104
    object numeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
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
    Left = 1050
    Top = 264
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
    object zAjustePRNFECHA_V: TDateField
      FieldName = 'FECHA_V'
    end
    object zAjustePRNMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object zAjustePRNCAMBIOMONEDA: TFloatField
      FieldName = 'CAMBIOMONEDA'
    end
    object zAjustePRNFLETE: TFloatField
      FieldName = 'FLETE'
    end
    object zAjustePRNOTROSGASTOS: TFloatField
      FieldName = 'OTROSGASTOS'
    end
    object zAjustePRNDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
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
    Left = 1000
    Top = 320
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
    Left = 1048
    Top = 320
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
  object Zqusuario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.NOMBRES_EMP from musuario a'
      'left Join MTEMPLEADO b On a.EMPLEADOid = b.COD_EMP1'
      ''
      ''
      '')
    Params = <>
    Left = 1002
    Top = 368
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
    Left = 1048
    Top = 368
    object ZExistenciaIDTIENDA: TIntegerField
      FieldName = 'IDTIENDA'
    end
    object ZExistenciaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZExistenciaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
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
    object ZExistenciaEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
  end
  object DsqProvee: TDataSource
    DataSet = Qproveedor
    Left = 1000
    Top = 112
  end
  object DsqCompra: TDataSource
    DataSet = QCompras
    Left = 1000
    Top = 168
  end
  object DsReposicion: TDataSource
    DataSet = QReposicion
    Left = 920
    Top = 17
  end
  object DsAjusteD: TDataSource
    DataSet = datos.AjusteD
    Left = 584
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = datos.ZAjusteM
    Left = 840
    Top = 264
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
    Left = 304
    Top = 360
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
    Left = 192
    Top = 272
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDetalle'
      end
      item
        DataSet = master
        DataSetName = 'frxMaster'
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
        Height = 151.063080000000000000
        Top = 19.200000000000000000
        Width = 719.040464380000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 107.447310000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."NOID"]')
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
          Top = 149.781200000000000000
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
        Height = 132.924490000000000000
        Top = 230.400000000000000000
        Width = 719.040464380000000000
        DataSet = master
        DataSetName = 'frxMaster'
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
          Top = 80.031540000000000000
          Width = 721.890230000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          Top = 104.447310000000000000
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
          Top = 104.447310000000000000
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
          Top = 126.724490000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 150.000000000000000000
          Top = 102.800000000000000000
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
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."NOMBRES_EMP"]')
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
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."FECHA"]')
          ParentFont = False
        end
        object frxDBDataset1FLETE: TfrxMemoView
          AllowVectorExport = True
          Left = 96.400000000000000000
          Top = 56.000000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'FLETE'
          DataSet = master
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."FLETE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 11.200000000000000000
          Top = 56.000000000000000000
          Width = 69.165430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Flete :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 278.400000000000000000
          Top = 56.000000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'OTROSGASTOS'
          DataSet = master
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."OTROSGASTOS"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 201.600000000000000000
          Top = 58.000000000000000000
          Width = 78.765430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Otros Gastos :')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 448.200000000000000000
          Top = 56.600000000000000000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."DESCUENTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 371.400000000000000000
          Top = 58.600000000000000000
          Width = 78.765430000000000000
          Height = 22.677180000000000000
          DataSet = master
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Otros Gastos :')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 384.000000000000000000
        Width = 719.040464380000000000
        DataSet = detalle
        DataSetName = 'frxDetalle'
        RowCount = 0
        object frxDBDataset2DESCRIPCION: TfrxMemoView
          AllowVectorExport = True
          Width = 84.510390000000000000
          Height = 18.897650000000000000
          DataField = 'COD_ART'
          DataSet = detalle
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."COD_ART"]')
          ParentFont = False
        end
        object frxDBDataset2PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 592.600310000000000000
          Width = 88.970130000000000000
          Height = 18.897650000000000000
          DataField = 'CANT'
          DataSet = detalle
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDetalle."CANT"]')
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
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."ARTICULOSNOM"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 146.785900000000000000
        Top = 470.400000000000000000
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
  object MaxAlmacen: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(COD_ALMACEN) from MAN_ALMACEN')
    Params = <>
    Left = 280
    Top = 192
    object MaxAlmacenMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object numero12: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_DETALLE_AJUSTE_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 392
    Top = 312
    object numero12GEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object NUMEROMA: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MASTER_AJUSTE_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 280
    Top = 280
    object NUMEROMAGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object QTotales: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select Sum(a.totalimp) TImpuesto, sum(a.totalcosto) Tcosto from ' +
        'detalle_ajuste a')
    Params = <>
    Left = 508
    Top = 335
    object QTotalesTIMPUESTO: TExtendedField
      FieldName = 'TIMPUESTO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QTotalesTCOSTO: TExtendedField
      FieldName = 'TCOSTO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.moneda, a.ubicacion, a.cod_art,upper(a.articulo) articu' +
        'lo , a.cod_cat,a.politica,a.modelo,a.marca,a.codigotxt,a.itbis, ' +
        'a.costo, taza_compra,'
      'sum(b.entrada - b.salida) Existencia, a. lote, a.serie'
      'from mtartuculos a'
      'left join minventario b On a.cod_art = b.cod_art'
      
        'group by a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.mo' +
        'delo,a.marca,a.codigotxt,a.itbis,a.costo,  taza_compra, a.ubicac' +
        'ion, a. lote, a.serie')
    Params = <>
    Left = 224
    Top = 216
    object IbqRArticulosMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object IbqRArticulosUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 30
    end
    object IbqRArticulosCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      Required = True
    end
    object IbqRArticulosARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      ReadOnly = True
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
      Size = 40
    end
    object IbqRArticulosITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object IbqRArticulosCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object IbqRArticulosTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object IbqRArticulosEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
    object IbqRArticulosLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object IbqRArticulosSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 2
    end
  end
  object SPactualizaEquivalenciaCostos: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 182
    Top = 390
  end
  object detalle: TfrxDBDataset
    UserName = 'frxDetalle'
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
      'MONEDA=MONEDA'
      'PRECIOUNIT=PRECIOUNIT'
      'ARTICULOSNOM=ARTICULOSNOM'
      'OBS=OBS'
      'LIN=LIN'
      'FV=FV'
      'LOTE=LOTE')
    DataSet = datos.AjusteD
    BCDToCurrency = False
    Left = 384
    Top = 384
  end
  object master: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxMaster'
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
      'NOMBRE_PRO=NOMBRE_PRO'
      'FECHA_V=FECHA_V'
      'MONEDA=MONEDA'
      'CAMBIOMONEDA=CAMBIOMONEDA'
      'FLETE=FLETE'
      'OTROSGASTOS=OTROSGASTOS'
      'DESCUENTO=DESCUENTO')
    DataSet = zAjustePRN
    BCDToCurrency = False
    Left = 432
    Top = 384
  end
end
