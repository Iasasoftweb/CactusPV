object FrmConsultaFactCXP: TFrmConsultaFactCXP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Consulta de Facturas x Proveedores'
  ClientHeight = 675
  ClientWidth = 1104
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 88
    Margins.Left = 10
    Align = alLeft
    ParentBackground = False
    ParentColor = False
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    ExplicitLeft = 12
    Height = 584
    Width = 201
    object Label4: TLabel
      Left = 5
      Top = 24
      Width = 82
      Height = 13
      Caption = 'Numero Factura'
    end
    object Edit4: TEdit
      Left = 5
      Top = 38
      Width = 172
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 64
      Caption = 'Intervalo de Fechas'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Height = 121
      Width = 174
      object Label3: TLabel
        Left = 3
        Top = 19
        Width = 63
        Height = 13
        Caption = 'Fecha Inicial'
      end
      object Label5: TLabel
        Left = 3
        Top = 57
        Width = 55
        Height = 13
        Caption = 'Fecha Fina'
      end
      object Dfinal: TcxDateEdit
        Left = 3
        Top = 70
        TabOrder = 0
        Width = 150
      end
      object DInicio: TcxDateEdit
        Left = 3
        Top = 33
        TabOrder = 1
        Width = 150
      end
      object ChkFecha: TcxCheckBox
        Left = 3
        Top = 97
        Caption = 'Activar este criterio'
        TabOrder = 2
      end
    end
    object RGTipoFactura: TcxRadioGroup
      Left = 3
      Top = 191
      Caption = 'Condici'#243'n de Facturas'
      Properties.Items = <
        item
          Caption = 'Sin Pagar'
        end
        item
          Caption = 'Pagadas'
        end
        item
          Caption = 'Todas'
        end>
      ItemIndex = 2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Height = 105
      Width = 174
    end
    object RGEstado: TcxRadioGroup
      Left = 3
      Top = 302
      Caption = 'Estado de Factura'
      Properties.Items = <
        item
          Caption = 'Vencidas'
        end
        item
          Caption = 'Proximo a Vencer'
        end
        item
          Caption = 'Todas'
        end>
      ItemIndex = 2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Height = 105
      Width = 174
    end
    object Panel23: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 438
      Width = 155
      Height = 29
      Margins.Left = 1
      Margins.Top = 10
      Margins.Right = 1
      Margins.Bottom = 10
      BevelOuter = bvNone
      Color = 12091960
      ParentBackground = False
      TabOrder = 4
      object SpeedButton8: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 149
        Height = 23
        Align = alClient
        Anchors = [akRight]
        Caption = 'Consultar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton8Click
        ExplicitLeft = 0
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    AlignWithMargins = True
    Left = 217
    Top = 88
    Margins.Right = 10
    Align = alClient
    ParentBackground = False
    ParentColor = False
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 1
    ExplicitLeft = 185
    ExplicitTop = 0
    ExplicitWidth = 585
    ExplicitHeight = 483
    Height = 584
    Width = 877
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 873
      Height = 564
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2016Colorful'
      ExplicitLeft = 3
      ExplicitTop = 20
      ExplicitWidth = 514
      ExplicitHeight = 675
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsCosulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1MONTOFACT
          end
          item
            Kind = skSum
            FieldName = 'MONTOPAGO'
            Column = cxGrid1DBTableView1MONTOPAGO
          end
          item
            Kind = skSum
            FieldName = 'MONTOPEND'
            Column = cxGrid1DBTableView1MONTOPEND
          end
          item
            Format = 'Cantidad de Facturas =  ,0'
            Kind = skCount
            FieldName = 'FECHA_COMPRA'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1FECHA_COMPRA: TcxGridDBColumn
          Caption = 'Fecha Compra'
          DataBinding.FieldName = 'FECHA_COMPRA'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
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
          Width = 112
        end
        object cxGrid1DBTableView1NOFACT: TcxGridDBColumn
          Caption = 'No. Factura'
          DataBinding.FieldName = 'NOFACT'
          HeaderAlignmentHorz = taCenter
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
          Width = 104
        end
        object cxGrid1DBTableView1PLAZO: TcxGridDBColumn
          Caption = 'Plazo'
          DataBinding.FieldName = 'PLAZO'
          HeaderAlignmentHorz = taCenter
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
          Width = 94
        end
        object cxGrid1DBTableView1FECHA_V: TcxGridDBColumn
          Caption = 'Fecha Vencimiento'
          DataBinding.FieldName = 'FECHA_V'
          HeaderAlignmentHorz = taCenter
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
          Width = 129
        end
        object cxGrid1DBTableView1MONTOFACT: TcxGridDBColumn
          Caption = 'Monto Facturado'
          DataBinding.FieldName = 'MONTOFACT'
          HeaderAlignmentHorz = taCenter
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
          Width = 146
        end
        object cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn
          Caption = 'Monto Pagado'
          DataBinding.FieldName = 'MONTOPAGO'
          HeaderAlignmentHorz = taCenter
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
          Width = 136
        end
        object cxGrid1DBTableView1MONTOPEND: TcxGridDBColumn
          Caption = 'Monto Pendiente'
          DataBinding.FieldName = 'MONTOPEND'
          HeaderAlignmentHorz = taCenter
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
          Width = 134
        end
        object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
          DataBinding.FieldName = 'ESTADO'
          Visible = False
          HeaderAlignmentHorz = taCenter
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
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Edit1: TEdit
      Left = 256
      Top = 344
      Width = 121
      Height = 21
      TabOrder = 1
      Visible = False
    end
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 1084
    Height = 65
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 259
    object btnsalir: TSpeedButton
      AlignWithMargins = True
      Left = 1051
      Top = 15
      Width = 30
      Height = 34
      Margins.Left = 0
      Margins.Top = 15
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
      Width = 1084
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = 13092807
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 309
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 433
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
          000000000000000000000000000000000000DA983552DB9834B0DB9224070000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DA973453DB9834FADB9834FFDB9834B00000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DA983552DB9834FADB9834FFDB9834FCDC9734580000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000DA983552DB9834FADB9834FFDB9834FCDA983459000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DA973453DB9834FADB9834FFDB9834FCDA98345900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DA97
          3453DB9834FADB9834FFDB9834FCDA9834590000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF800002DB983639DB983579DB993493DB9835AADB97
          3596DC983574D9973436FFFF0001000000000000000000000000DB993355DB98
          34FBDB9834FFDB9834FBDB983454000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000D5AA2B06DB993470DC9834E6DB9834FEDB9834D3DB9834B2DA9735A0DC98
          34B4DB9934DBDB9834FFDB9834D9DC993566FF800002DB993355DB9834FBDB98
          34FFDB9834FBDB98345400000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          372ADB9834D9DB9834EFDB983579DC95351D0000000000000000000000000000
          000000000000DD9A3626DC98348ADB9834F6DB9834D3DB9834FBDB9834FFDB98
          34FBDB9933550000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DB9A353FDB98
          34F1DB9833B3D59C391200000000000000000000000000000000000000000000
          0000000000000000000000000000DD99331EDB9834C8DB9834FFDB9834FBDB97
          3556000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DC953224DB9834EDDA98
          3499FF8000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DF9F4008DC9834B4DB9834E7D794
          3613000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFF0001DB9834C8DA9834BCBF80
          4004000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000D89D3B0DDB9833D5DB98
          34AB000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB983454DB9834FADC9532240000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DA98353EDB98
          34FEDD9A35350000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB9734C0DB98339A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DC97
          34BBDB9735A50000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D7943613DB9834FBDA983445000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DA97
          3467DB9835EEFFAA550300000000000000000000000000000000000000000000
          0000000000000000000000000000DA983445DB9834FDD5AA2B06000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DD98
          3725DB9834FFD999332800000000000000000000000000000000000000000000
          0000000000000000000000000000DC99335FDB9834E800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000E38E
          3909DB9834FFDB97344000000000000000000000000000000000000000000000
          0000000000000000000000000000DA983368DC9833DF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF80
          0002DB9834FCDC9A344900000000000000000000000000000000000000000000
          0000000000000000000000000000DC973651DB9834F600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DF95
          3518DB9834FFD998362F00000000000000000000000000000000000000000000
          0000000000000000000000000000DC97342CDB9834FFDD983725000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB99
          3346DB9834FBDD99330F00000000000000000000000000000000000000000000
          000000000000000000000000000000000000DC9833DFDC993373000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000DB98
          3494DB9834BF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DB973587DB9834DDD5AA2B060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000D9993314DB98
          34F0DA9734670000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000D59C3912DB9834EFDC9835740000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DB973596DB99
          34DBD5AA2B060000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB993364DB9834FADC99
          3341000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DB97345DDB9834FCDB99
          3346000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DB993493DB98
          34F2DB96344E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DA973467DB9834FADB9833720000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFF0001DC98
          3583DB9834FCDC993498D6993319000000000000000000000000000000000000
          00000000000000000000DD983725DB9834ABDB9834FADA983368000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DC9A3449DB9834D4DB9834F7DB9833B3DB98356ADA99334BDB963238DB98
          354DDB983372DA9834BCDB9834FBDB9734C5DA99333700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFAA5503DB98344FDA9735A0DB9934E0DB9834FADB9834FFDB98
          34F7DB9934DBDB973596DD983543000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DD99330F0000
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
      object Panel4: TPanel
        Left = 75
        Top = 0
        Width = 246
        Height = 64
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 33
          Width = 240
          Height = 22
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 184
          object Label1: TLabel
            Left = 0
            Top = 0
            Width = 190
            Height = 22
            Align = alLeft
            Caption = 'Facturas de Compras a Proveedores '
            Font.Charset = ANSI_CHARSET
            Font.Color = 10526880
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 15
          end
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 10
          Width = 240
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          ExplicitWidth = 184
          object Label2: TLabel
            AlignWithMargins = True
            Left = 83
            Top = 3
            Width = 142
            Height = 17
            Margins.Left = 5
            Align = alLeft
            Caption = 'Facturas x Proveedores'
            Font.Charset = ANSI_CHARSET
            Font.Color = 12091960
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object Label6: TLabel
            Left = 0
            Top = 0
            Width = 78
            Height = 23
            Align = alLeft
            Caption = 'Consultar de     '
            Font.Charset = ANSI_CHARSET
            Font.Color = 6569760
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
      end
    end
  end
  object QConsulta: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      
        'select first 20  a.*, c.nombres_emp, e.descripcion from master_a' +
        'juste a'
      'left join musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado c On b.empleadoid = c.cod_emp1'
      'left join fabricantes e On a.provid = e.COD'
      'Where a.condicion ='#39'Compra'#39)
    Params = <>
    Left = 536
    Top = 176
    object QConsultaNOID: TIntegerField
      FieldName = 'NOID'
      Required = True
    end
    object QConsultaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QConsultaUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object QConsultaTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object QConsultaCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object QConsultaPROVID: TIntegerField
      FieldName = 'PROVID'
    end
    object QConsultaNOFACT: TWideStringField
      FieldName = 'NOFACT'
      Size = 10
    end
    object QConsultaFECHA_COMPRA: TDateField
      FieldName = 'FECHA_COMPRA'
    end
    object QConsultaPLAZO: TIntegerField
      FieldName = 'PLAZO'
    end
    object QConsultaMONTOFACT: TFloatField
      FieldName = 'MONTOFACT'
      currency = True
    end
    object QConsultaMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object QConsultaMONTOPEND: TFloatField
      FieldName = 'MONTOPEND'
      currency = True
    end
    object QConsultaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QConsultaFECHA_V: TDateField
      FieldName = 'FECHA_V'
    end
    object QConsultaMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
    object QConsultaCAMBIOMONEDA: TFloatField
      FieldName = 'CAMBIOMONEDA'
      currency = True
    end
    object QConsultaFLETE: TFloatField
      FieldName = 'FLETE'
    end
    object QConsultaOTROSGASTOS: TFloatField
      FieldName = 'OTROSGASTOS'
    end
    object QConsultaDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QConsultaABONO: TFloatField
      FieldName = 'ABONO'
      currency = True
    end
    object QConsultaPAGADO: TFloatField
      FieldName = 'PAGADO'
      currency = True
    end
    object QConsultaCOD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object QConsultaNOMBREALMACEN: TWideStringField
      FieldName = 'NOMBREALMACEN'
      Size = 30
    end
    object QConsultaNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QConsultaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
  end
  object DsCosulta: TDataSource
    DataSet = QConsulta
    Left = 742
    Top = 160
  end
end
