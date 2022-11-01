object FrmBuscarArticulos: TFrmBuscarArticulos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Buscar Articulos'
  ClientHeight = 486
  ClientWidth = 905
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
  object cxButton1: TcxButton
    Left = 958
    Top = 231
    Width = 255
    Height = 50
    Caption = 'Consultar Contenido del Combo'
    Enabled = False
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object Edit2: TEdit
    Left = 472
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 885
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
    object btnsalir: TSpeedButton
      AlignWithMargins = True
      Left = 855
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
      OnClick = btnsalirClick
      ExplicitLeft = 1325
      ExplicitHeight = 30
    end
    object pnlBarTopDiv: TPanel
      Left = 0
      Top = 64
      Width = 885
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = 13092807
      ParentBackground = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 449
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
        Width = 310
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
          Width = 304
          Height = 22
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 229
            Height = 22
            Align = alLeft
            Caption = 'Consultar por Codigo y Nombre de Articulo'
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
          Width = 304
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label4: TLabel
            AlignWithMargins = True
            Left = 45
            Top = 3
            Width = 53
            Height = 17
            Margins.Left = 5
            Align = alLeft
            Caption = 'Articulos'
            Font.Charset = ANSI_CHARSET
            Font.Color = 12091960
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object Label5: TLabel
            Left = 0
            Top = 0
            Width = 40
            Height = 23
            Align = alLeft
            Caption = 'Buscar'
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
    Top = 88
    Width = 885
    Height = 385
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object cxGrid2: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 68
      Width = 877
      Height = 214
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Caramel'
      object cxGrid2DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid2DBTableView1DblClick
        OnKeyDown = cxGrid2DBTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid2DBTableView1CellClick
        DataController.DataSource = DsqArticulos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1Column3: TcxGridDBColumn
          Caption = 'Codigo Barra'
          DataBinding.FieldName = 'CODIGOBARRA'
          Width = 115
        end
        object cxGrid2DBTableView1ARTICULO: TcxGridDBColumn
          Caption = 'Articulo'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 300
        end
        object cxGrid2DBTableView1Column2: TcxGridDBColumn
          Caption = 'Ubicaci'#243'n'
          DataBinding.FieldName = 'UBICACION'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.Focusing = False
          Options.IgnoreTimeForFiltering = False
          Options.IncSearch = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 87
        end
        object cxGrid2DBTableView1Column5: TcxGridDBColumn
          Caption = 'Costo'
          DataBinding.FieldName = 'COSTO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Width = 79
        end
        object cxGrid2DBTableView1MODELO: TcxGridDBColumn
          Caption = 'Precio de Venta'
          DataBinding.FieldName = 'POLITICA'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Width = 117
        end
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Total Existencia'
          DataBinding.FieldName = 'EXISTENCIA'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 106
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
          Options.HorzSizing = False
          Width = 106
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 883
      Height = 64
      Align = alTop
      Color = clWhite
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Panel17: TPanel
        AlignWithMargins = True
        Left = 197
        Top = 18
        Width = 338
        Height = 41
        Margins.Left = 10
        Margins.Right = 10
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label7: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 3
          Width = 330
          Height = 13
          Margins.Left = 5
          Align = alTop
          Caption = 'N'#250'mero de Codido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 98
        end
        object Panel18: TPanel
          Left = 0
          Top = 40
          Width = 338
          Height = 1
          Align = alBottom
          Color = 10449444
          ParentBackground = False
          TabOrder = 0
        end
        object edtBuscar: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 254
          Height = 13
          Margins.Top = 5
          Align = alLeft
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnChange = edtBuscarChange
          ExplicitLeft = 5
        end
      end
      object op: TcxRadioGroup
        AlignWithMargins = True
        Left = 5
        Top = 18
        Align = alLeft
        Alignment = alCenterCenter
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Properties.Items = <
          item
            Caption = 'Codigo'
          end
          item
            Caption = 'Nombre de Articulo'
          end>
        ItemIndex = 0
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clGray
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 1
        OnClick = opClick
        Height = 41
        Width = 179
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 762
        Top = 20
        Width = 118
        Height = 37
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = 3846482
        ParentBackground = False
        TabOrder = 2
        object SpeedButton1: TSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 112
          Height = 31
          Align = alClient
          Caption = 'Crear Articulo'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
          ExplicitLeft = 24
          ExplicitTop = 0
          ExplicitWidth = 131
          ExplicitHeight = 43
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 285
      Width = 883
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 280
        Height = 83
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'Caramel'
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsAlmacenes01
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = 'No Data'
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
            Caption = 'Almancenes'
            DataBinding.FieldName = 'DESCRIPCION'
            HeaderAlignmentHorz = taCenter
            MinWidth = 200
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
            Options.HorzSizing = False
            Width = 200
          end
          object cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn
            Caption = 'Cant.'
            DataBinding.FieldName = 'EXISTENCIA'
            HeaderAlignmentHorz = taCenter
            MinWidth = 64
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
            Options.HorzSizing = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        AlignWithMargins = True
        Left = 289
        Top = 3
        Width = 345
        Height = 83
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DsQinventarioEQ
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid3DBTableView1EXISTENCIA: TcxGridDBColumn
            Caption = 'Total Exist.'
            DataBinding.FieldName = 'EXISTENCIA'
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 100
          end
          object cxGrid3DBTableView1Column1: TcxGridDBColumn
            Caption = 'UND'
            DataBinding.FieldName = 'UNIDAD'
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
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
  end
  object DsExistencia: TDataSource
    Left = 120
    Top = 216
  end
  object DsqArticulos: TDataSource
    DataSet = IbqRArticulos
    Left = 168
    Top = 224
  end
  object ZqCombos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from Combomaster'
      'where estado = 1'
      'and codtienda =:opp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'opp'
        ParamType = ptUnknown
      end>
    Left = 288
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'opp'
        ParamType = ptUnknown
      end>
    object ZqCombosCOMBOMASTER: TIntegerField
      FieldName = 'COMBOMASTER'
      Required = True
    end
    object ZqCombosNOMBRECOMBO: TWideStringField
      FieldName = 'NOMBRECOMBO'
      Size = 45
    end
    object ZqCombosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object ZqCombosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object ZqCombosPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object ZqCombosCOSTOS1: TFloatField
      FieldName = 'COSTOS1'
    end
    object ZqCombosCOSTOS2: TFloatField
      FieldName = 'COSTOS2'
    end
    object ZqCombosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZqCombosCODTIENDA: TIntegerField
      FieldName = 'CODTIENDA'
    end
    object ZqCombosCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 10
    end
  end
  object DsqCombos: TDataSource
    DataSet = ZqCombos
    Left = 352
    Top = 248
  end
  object Dcombo: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*,b.articulo,b.costo,b.costo_pr from MANTCOMBO a'
      'left join MtArtuculos b On a.cod_art = b.cod_art')
    Params = <>
    Left = 256
    Top = 152
    object DcomboCOD_MANCOMBO: TIntegerField
      FieldName = 'COD_MANCOMBO'
      Required = True
    end
    object DcomboMACOMBOID: TIntegerField
      FieldName = 'MACOMBOID'
    end
    object DcomboCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object DcomboPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object DcomboPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object DcomboPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object DcomboARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object DcomboCOSTO: TFloatField
      FieldName = 'COSTO'
      currency = True
    end
    object DcomboCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Dcombo
    Left = 328
    Top = 184
  end
  object ZExistencia: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.idtienda,a.cod_art,b.descripcion,sum(a.entrada - a.sali' +
        'da) Existencia from minventario a'
      'left join tienda b On a.idtienda = b.tiendaid'
      'group by a.idtienda,a.cod_art,b.descripcion')
    Params = <>
    Left = 48
    Top = 240
    object ZExistenciaIDTIENDA: TIntegerField
      FieldName = 'IDTIENDA'
    end
    object ZExistenciaCOD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object ZExistenciaDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object ZExistenciaEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
  end
  object Precios: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.unidad, b.pos from CONTROL_PRECIOS a'
      'left join unidad_m b On a.unidad_m = b.cod_unidad_m')
    Params = <>
    Left = 592
    Top = 200
    object PreciosCPID: TIntegerField
      FieldName = 'CPID'
      Required = True
    end
    object PreciosNO_ART: TIntegerField
      FieldName = 'NO_ART'
    end
    object PreciosUNIDAD_M: TIntegerField
      FieldName = 'UNIDAD_M'
    end
    object PreciosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object PreciosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object PreciosPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object PreciosUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object PreciosPOS: TIntegerField
      FieldName = 'POS'
    end
  end
  object DsPRecios: TDataSource
    DataSet = Precios
    Left = 360
    Top = 184
  end
  object ActualidaCOmpartido: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 480
    Top = 304
  end
  object Almacenes1: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.cod_art, b.articulo, a.cod_alm, c.descripcion, sum(a.en' +
        'trada - a.salida) Existencia  from minventario a'
      'left join mtartuculos b  On a.cod_art = b.cod_art'
      'left join almacenes c On a.cod_alm = c.id'
      'and b.politica <> '#39'Servicio'#39
      
        'group by a.cod_art, b.articulo, b.costo_pr, a.cod_alm, c.descrip' +
        'cion')
    Params = <>
    Left = 712
    Top = 264
    object Almacenes1COD_ART: TIntegerField
      FieldName = 'COD_ART'
    end
    object Almacenes1ARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object Almacenes1COD_ALM: TIntegerField
      FieldName = 'COD_ALM'
    end
    object Almacenes1DESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object Almacenes1EXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
  end
  object DsAlmacenes01: TDataSource
    DataSet = Almacenes1
    Left = 752
    Top = 224
  end
  object DsQinventarioEQ: TDataSource
    DataSet = datos.QInventarioEQ
    Left = 416
    Top = 128
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.unidad,a.precio_a,  a.costo, a.codigobarra,a.precio_b,p' +
        'recio_d, precio_c, a.comision, a.unidadventa, a.serie, a.lote, a' +
        '.permitirdesc, idimpuesto, a.descpermitido, a.cod_art,upper(a.ar' +
        'ticulo) articulo,a.cod_cat,a.politica,a.referencia,a.ubicacion, ' +
        'a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra, a.costo_pr,' +
        ' a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, a.mayoreo2, a' +
        '.mayoreo3, a.obs, a.aplicarpormayor, a.moneda'
      'from mtartuculos a'
      
        'group by a.unidad,a.precio_a,a.codigobarra, a.precio_b,precio_d,' +
        'a.cod_art, a.unidadventa, a.serie, a.lote, a.permitirdesc, idimp' +
        'uesto, a.descpermitido, a.comision,a.articulo,a.cod_cat,a.politi' +
        'ca,a.modelo,a.marca,a.codigotxt,a.itbis, a.taza_compra,a.costo_p' +
        'r, a.beneficios, a.TIENECOMPACTIBILIDAD, a.mayoreo1, precio_c, a' +
        '.mayoreo2, a.mayoreo3, a.referencia,a.ubicacion, a.obs, a.aplica' +
        'rpormayor, a.costo, a.moneda'
      '')
    Params = <>
    Left = 440
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
    object IbqRArticulosPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
      currency = True
    end
    object IbqRArticulosTAZA_COMPRA: TFloatField
      FieldName = 'TAZA_COMPRA'
    end
    object IbqRArticulosCOSTO_PR: TFloatField
      FieldName = 'COSTO_PR'
      currency = True
    end
    object IbqRArticulosBENEFICIOS: TFloatField
      FieldName = 'BENEFICIOS'
    end
    object IbqRArticulosTIENECOMPACTIBILIDAD: TWideStringField
      FieldName = 'TIENECOMPACTIBILIDAD'
      Size = 2
    end
    object IbqRArticulosMAYOREO1: TFloatField
      FieldName = 'MAYOREO1'
    end
    object IbqRArticulosMAYOREO2: TFloatField
      FieldName = 'MAYOREO2'
    end
    object IbqRArticulosMAYOREO3: TFloatField
      FieldName = 'MAYOREO3'
    end
    object IbqRArticulosITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object IbqRArticulosREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object IbqRArticulosUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object IbqRArticulosOBS: TIntegerField
      FieldName = 'OBS'
      ReadOnly = True
    end
    object IbqRArticulosCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object IbqRArticulosCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object IbqRArticulosPRECIO_C: TFloatField
      FieldName = 'PRECIO_C'
      currency = True
    end
    object IbqRArticulosUNIDADVENTA: TWideStringField
      FieldName = 'UNIDADVENTA'
      Size = 10
    end
    object IbqRArticulosSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 2
    end
    object IbqRArticulosLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 2
    end
    object IbqRArticulosPERMITIRDESC: TWideStringField
      FieldName = 'PERMITIRDESC'
      Size = 2
    end
    object IbqRArticulosIDIMPUESTO: TIntegerField
      FieldName = 'IDIMPUESTO'
    end
    object IbqRArticulosDESCPERMITIDO: TIntegerField
      FieldName = 'DESCPERMITIDO'
    end
    object IbqRArticulosCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object IbqRArticulosMONEDA: TWideStringField
      FieldName = 'MONEDA'
      Size = 2
    end
  end
end
