object FrmDescarga: TFrmDescarga
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Inventario'
  ClientHeight = 568
  ClientWidth = 909
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
    Left = 20
    Top = 70
    Margins.Left = 20
    Margins.Right = 20
    Align = alTop
    PanelStyle.Active = True
    ParentBackground = False
    ParentColor = False
    Style.BorderColor = clWhite
    Style.BorderStyle = ebsNone
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Height = 139
    Width = 869
    object OpM: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Enabled = False
      ParentBackground = False
      ParentColor = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 0
      Height = 134
      Width = 863
      object Label1: TLabel
        Left = 84
        Top = 16
        Width = 21
        Height = 13
        Caption = '# ID'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 75
        Top = 38
        Width = 30
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 54
        Top = 61
        Width = 51
        Height = 13
        Caption = 'Empleado'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 401
        Top = 17
        Width = 55
        Height = 13
        Caption = 'Conceptos'
        FocusControl = cxDBTextEdit1
      end
      object Label5: TLabel
        Left = 431
        Top = 69
        Width = 25
        Height = 13
        Caption = 'Nota'
        FocusControl = cxDBMemo1
      end
      object Label8: TLabel
        Left = 8
        Top = 83
        Width = 97
        Height = 13
        Caption = 'Tipo de Transaci'#243'n'
        FocusControl = cxDBSpinEdit2
      end
      object Label16: TLabel
        Left = 62
        Top = 104
        Width = 43
        Height = 13
        Caption = 'Almacen'
        FocusControl = cxDBTextEdit1
      end
      object SpeedButton1: TSpeedButton
        Left = 151
        Top = 100
        Width = 21
        Height = 23
        BiDiMode = bdRightToLeftReadingOnly
        Caption = '...'
        ParentBiDiMode = False
        Transparent = False
        OnClick = SpeedButton1Click
      end
      object Label6: TLabel
        Left = 362
        Top = 36
        Width = 94
        Height = 26
        Alignment = taRightJustify
        Caption = 'Mover Producto a  almcen'
        FocusControl = cxDBTextEdit1
        WordWrap = True
      end
      object SpeedButton2: TSpeedButton
        Left = 509
        Top = 38
        Width = 21
        Height = 23
        BiDiMode = bdRightToLeftReadingOnly
        Caption = '...'
        ParentBiDiMode = False
        Transparent = False
        OnClick = SpeedButton2Click
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 115
        Top = 13
        DataBinding.DataField = 'MDESCARGARID'
        DataBinding.DataSource = DsMDescarga
        TabOrder = 0
        Width = 155
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 115
        Top = 35
        DataBinding.DataField = 'FECHA'
        DataBinding.DataSource = DsMDescarga
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 1
        Width = 231
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 115
        Top = 57
        DataBinding.DataField = 'NOMBRES_EMP'
        DataBinding.DataSource = DsMDescarga
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 2
        Width = 231
      end
      object cxDBMemo1: TcxDBMemo
        Left = 462
        Top = 67
        DataBinding.DataField = 'NOTA'
        DataBinding.DataSource = DsMDescarga
        TabOrder = 3
        Height = 62
        Width = 214
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 115
        Top = 101
        DataBinding.DataField = 'COD_ALM'
        DataBinding.DataSource = DsMDescarga
        Properties.ReadOnly = True
        Style.Color = 14739951
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 4
        Width = 38
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 175
        Top = 101
        DataBinding.DataField = 'NOMBREALMACEN'
        DataBinding.DataSource = DsMDescarga
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 5
        Width = 171
      end
      object TTrans: TcxComboBox
        Left = 111
        Top = 80
        Properties.Items.Strings = (
          'Entrada'
          'Salida'
          'Reposici'#243'n')
        Properties.OnChange = TTransPropertiesChange
        TabOrder = 6
        Text = 'Entrada'
        Width = 232
      end
      object Edit3: TEdit
        Left = 722
        Top = 13
        Width = 121
        Height = 21
        TabOrder = 7
        Visible = False
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 462
        Top = 15
        DataBinding.DataField = 'DESCID'
        DataBinding.DataSource = DsMDescarga
        Enabled = False
        Properties.KeyFieldNames = 'DESCARGAID'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRIPCION'
          end>
        Properties.ListSource = DsConceptos
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 214
      end
      object Edit1: TEdit
        Left = 462
        Top = 39
        Width = 49
        Height = 21
        TabStop = False
        Color = 14739951
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object Edit2: TEdit
        Left = 533
        Top = 39
        Width = 143
        Height = 21
        TabStop = False
        Color = 13041656
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
    end
  end
  object Opdetalle: TcxGroupBox
    AlignWithMargins = True
    Left = 20
    Top = 215
    Margins.Left = 20
    Margins.Right = 20
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
    DesignSize = (
      869
      302)
    Height = 302
    Width = 869
    object Label10: TLabel
      Left = 3
      Top = 16
      Width = 83
      Height = 13
      Caption = 'Codigo de Barra'
    end
    object Label11: TLabel
      Left = 118
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Productos'
    end
    object Label12: TLabel
      Left = 397
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Cantidad'
    end
    object Label9: TLabel
      Left = 483
      Top = 15
      Width = 48
      Height = 13
      Caption = 'Impuesto'
    end
    object Label15: TLabel
      Left = 573
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Costo'
    end
    object lblFechaVencimiento: TLabel
      Left = 657
      Top = 15
      Width = 96
      Height = 13
      Caption = 'Fecha Vencimiento'
    end
    object Cod_TXT: TcxTextEdit
      Left = 2
      Top = 28
      TabOrder = 0
      OnKeyDown = Cod_TXTKeyDown
      Width = 110
    end
    object Arti_TXT: TcxTextEdit
      Left = 116
      Top = 28
      TabOrder = 1
      Width = 272
    end
    object Cant_TXT: TcxCalcEdit
      Left = 394
      Top = 28
      EditValue = 1.000000000000000000
      TabOrder = 2
      OnExit = Cant_TXTExit
      OnKeyDown = Cant_TXTKeyDown
      Width = 85
    end
    object cxButton7: TcxButton
      Left = 766
      Top = 96
      Width = 107
      Height = 25
      Caption = 'Buscar Articulos'
      LookAndFeel.NativeStyle = False
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
      OptionsImage.ImageIndex = 258
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 3
      Visible = False
      OnClick = cxButton7Click
    end
    object Panel20: TPanel
      AlignWithMargins = True
      Left = 762
      Top = 22
      Width = 79
      Height = 28
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Anchors = [akRight]
      BevelOuter = bvNone
      Color = 3846482
      ParentBackground = False
      TabOrder = 5
      object btnInsertar: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 73
        Height = 22
        Align = alClient
        Caption = 'Insertar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnInsertarClick
        ExplicitTop = 6
      end
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 52
      Width = 856
      Height = 244
      TabOrder = 4
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSDdescarga
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TOTAL'
            Column = cxGrid1DBTableView1Column4
          end
          item
            Format = 'Total de Items =,0'
            Kind = skCount
            FieldName = 'ARTICULO'
            Column = cxGrid1DBTableView1ARTICULO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'COD_ART'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 69
        end
        object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
          Caption = 'Nombre del Articulo'
          DataBinding.FieldName = 'ARTICULO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 318
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'EX'
          DataBinding.FieldName = 'EXX'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'CANTIDAD'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 57
        end
        object cxGrid1DBTableView1SERIE: TcxGridDBColumn
          DataBinding.FieldName = 'SERIE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView1LOTE: TcxGridDBColumn
          DataBinding.FieldName = 'LOTE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'FV'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.ShowEditButtons = isebAlways
          Width = 83
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Impuesto'
          DataBinding.FieldName = 'IMPUESTO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 78
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Costo'
          DataBinding.FieldName = 'COSTO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 71
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Width = 83
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object DBGrid2: TDBGrid
      Left = 865
      Top = 85
      Width = 840
      Height = 226
      DataSource = DSDdescarga
      FixedColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI Semibold'
      TitleFont.Style = [fsBold]
      Visible = False
      OnColExit = DBGrid2ColExit
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOBARRA'
          ReadOnly = True
          Title.Caption = 'CodigoBarra'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARTICULO'
          ReadOnly = True
          Title.Caption = 'Nombre de Articulo'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          ReadOnly = True
          Title.Caption = 'Cantidad'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FV'
          ReadOnly = True
          Title.Caption = 'Fecha Vencimiento'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'LOTE'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ESTADO'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IMPUESTO'
          ReadOnly = True
          Title.Caption = 'Impuesto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COSTO'
          ReadOnly = True
          Title.Caption = 'Costo'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          ReadOnly = True
          Title.Caption = 'Total'
          Width = 75
          Visible = True
        end>
    end
    object edtImpuesto: TcxCurrencyEdit
      Left = 482
      Top = 28
      TabOrder = 7
      OnKeyDown = edtImpuestoKeyDown
      Width = 82
    end
    object edtCosto: TcxCurrencyEdit
      Left = 573
      Top = 28
      TabOrder = 8
      OnKeyDown = edtCostoKeyDown
      Width = 82
    end
    object edtCodigo: TEdit
      Left = 776
      Top = 3
      Width = 78
      Height = 21
      TabOrder = 9
      Visible = False
    end
    object edtTipo: TEdit
      Left = 788
      Top = 3
      Width = 78
      Height = 21
      TabOrder = 10
      Visible = False
    end
    object edtExistencia: TEdit
      Left = 741
      Top = 3
      Width = 78
      Height = 21
      TabOrder = 11
      Visible = False
    end
    object edFechaVencimiento: TcxDateEdit
      Left = 657
      Top = 28
      TabOrder = 12
      OnKeyDown = edFechaVencimientoKeyDown
      Width = 100
    end
    object Panel7: TPanel
      Left = 568
      Top = 160
      Width = 291
      Height = 112
      BevelInner = bvRaised
      BevelKind = bkSoft
      BevelOuter = bvNone
      TabOrder = 13
      object opImprime: TcxRadioGroup
        AlignWithMargins = True
        Left = 4
        Top = 4
        Align = alTop
        Caption = 'Tipo de Impresi'#243'n'
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
        Height = 70
        Width = 279
      end
      object Panel22: TPanel
        AlignWithMargins = True
        Left = 21
        Top = 77
        Width = 245
        Height = 28
        Margins.Left = 20
        Margins.Top = 2
        Margins.Right = 20
        Margins.Bottom = 2
        Align = alBottom
        BevelOuter = bvNone
        Color = 6376140
        ParentBackground = False
        TabOrder = 1
        object SpeedButton3: TSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 239
          Height = 22
          Align = alClient
          Caption = 'Imprimir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton3Click
          ExplicitLeft = 0
          ExplicitTop = -2
          ExplicitWidth = 155
          ExplicitHeight = 47
        end
      end
    end
  end
  object cxGrid2: TcxGrid
    Left = 138
    Top = 157
    Width = 250
    Height = 178
    TabOrder = 2
    Visible = False
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid2DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid2DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsAlmacenes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.GridLines = glHorizontal
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
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 25
    Top = 10
    Width = 859
    Height = 54
    Margins.Left = 25
    Margins.Top = 10
    Margins.Right = 25
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object btnsalir: TSpeedButton
      AlignWithMargins = True
      Left = 819
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
    object Panel2: TPanel
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
          object Label13: TLabel
            Left = 0
            Top = 0
            Width = 299
            Height = 22
            Align = alLeft
            Caption = 'Gesti'#243'n de Entrada / Salida /  Transferencia de Inventario'
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
          object Label14: TLabel
            AlignWithMargins = True
            Left = 63
            Top = 3
            Width = 62
            Height = 17
            Margins.Left = 5
            Align = alLeft
            Caption = 'Inventario'
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
            Width = 58
            Height = 23
            Align = alLeft
            Caption = 'Ajusto de'
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
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 517
    Width = 869
    Height = 41
    Margins.Left = 20
    Margins.Right = 20
    Margins.Bottom = 10
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    DesignSize = (
      869
      41)
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 552
      Top = 5
      Width = 102
      Height = 28
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Anchors = [akRight]
      BevelOuter = bvNone
      Color = 3846482
      ParentBackground = False
      TabOrder = 0
      object cxButton2: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 96
        Height = 22
        Align = alClient
        Caption = 'Nuevo'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnnuevoClick
        ExplicitLeft = 0
        ExplicitTop = -2
        ExplicitWidth = 155
        ExplicitHeight = 47
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 659
      Top = 5
      Width = 102
      Height = 28
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Anchors = [akRight]
      BevelOuter = bvNone
      Color = 10449444
      ParentBackground = False
      TabOrder = 1
      object cxButton3: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 96
        Height = 22
        Align = alClient
        Caption = 'Guardar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnGuardarClick
        ExplicitLeft = 4
        ExplicitTop = 1
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 763
      Top = 5
      Width = 102
      Height = 28
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Anchors = [akRight]
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 2
      object cxButton4: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 96
        Height = 22
        Align = alClient
        Caption = 'Cancelar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnCanelarClick
        ExplicitLeft = 0
        ExplicitTop = -2
        ExplicitWidth = 155
        ExplicitHeight = 47
      end
    end
  end
  object DsMDescarga: TDataSource
    DataSet = datos.ZMDescarga
    Left = 397
    Top = 88
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(MDESCARGARID) from MDESCARGAR')
    Params = <>
    Left = 224
    Top = 376
    object numeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object numeroinventario: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MINVENTARIO_ID, 0) from RDB$DATABASE')
    Params = <>
    Left = 112
    Top = 368
    object numeroinventarioGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
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
    Left = 56
    Top = 280
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
      currency = True
    end
    object ZExistenciaPRECIO_B: TFloatField
      FieldName = 'PRECIO_B'
      currency = True
    end
    object ZExistenciaPRECIO_D: TFloatField
      FieldName = 'PRECIO_D'
      currency = True
    end
    object ZExistenciaEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
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
    Left = 82
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
      'select max(DDESCARGARID) from DDESCARGAR')
    Params = <>
    Left = 184
    Top = 368
    object numeroDMAX: TIntegerField
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
    Left = 34
    Top = 368
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
  object DSDdescarga: TDataSource
    DataSet = datos.ZDdescarga
    Left = 397
    Top = 272
  end
  object ZcoceptoDes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from DESCA_INVENTARIO'
      '')
    Params = <>
    Left = 154
    Top = 304
    object ZcoceptoDesDESCARGAID: TIntegerField
      FieldName = 'DESCARGAID'
      Required = True
    end
    object ZcoceptoDesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
    object ZcoceptoDesESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object DsConceptos: TDataSource
    DataSet = ZcoceptoDes
    Left = 229
    Top = 304
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
  object almacenes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from almacenes')
    Params = <>
    Left = 472
    Top = 328
    object almacenesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object almacenesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
  end
  object DsAlmacenes: TDataSource
    DataSet = almacenes
    Left = 520
    Top = 184
  end
  object Qnumero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_MDESCARGAR_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 688
    Top = 282
    object QnumeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object QDDescarga: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_DDESCARGAR_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 624
    Top = 354
    object QDDescargaGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
  object master: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxMaster'
    CloseDataSource = True
    FieldAliases.Strings = (
      'MDESCARGARID=MDESCARGARID'
      'FECHA=FECHA'
      'USUARIOID=USUARIOID'
      'DESCID=DESCID'
      'NOMBRES_EMP=NOMBRES_EMP'
      'DESCRIPCION=DESCRIPCION'
      'NOTA=NOTA'
      'COD_ALM=COD_ALM'
      'NOMBREALMACEN=NOMBREALMACEN')
    DataSet = datos.ZMDescarga
    BCDToCurrency = False
    Left = 432
    Top = 384
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
    Left = 344
    Top = 384
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
    Left = 336
    Top = 288
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = master
        DataSetName = 'frxMaster'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDetalle'
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
        Height = 165.201670000000000000
        Top = 18.897650000000000000
        Width = 719.040464380000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 103.447310000000000000
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
            'CONDUCE')
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
          DataField = 'MDESCARGARID'
          DataSet = master
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."MDESCARGARID"]')
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
          Top = 159.381200000000000000
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
        Top = 245.669450000000000000
        Width = 719.040464380000000000
        DataSet = master
        DataSetName = 'frxMaster'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 1.738590000000000000
          Top = 30.559060000000000000
          Width = 116.258380000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estaci'#243'n de Destino :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 127.976500000000000000
          Top = 48.897650000000000000
          Width = 339.477490000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 70.431540000000000000
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
          Top = 5.595300000000010000
          Width = 107.565430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 125.904020000000000000
          Top = 21.913420000000000000
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
        object frxDBDataset1FECHA1: TfrxMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 2.599999999999990000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 28.800000000000000000
          Width = 345.600000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBREALMACEN'
          DataSet = master
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."NOMBREALMACEN"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 400.630180000000000000
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
          DataField = 'CANTIDAD'
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
            '[frxDetalle."CANTIDAD"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 143.000000000000000000
          Width = 386.570130000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."ARTICULO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 146.785900000000000000
        Top = 483.779840000000000000
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
          Top = 7.559059999999990000
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
          Top = 72.329190000000000000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 35.754360000000000000
          Top = 76.108720000000100000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Despachado por:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 470.400000000000000000
          Top = 5.600000000000020000
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
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 432.000000000000000000
          Top = 76.800000000000000000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 439.559060000000000000
          Top = 80.579530000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Recibido por:')
          ParentFont = False
        end
      end
    end
  end
  object detalle: TfrxDBDataset
    UserName = 'frxDetalle'
    CloseDataSource = True
    FieldAliases.Strings = (
      'DDESCARGARID=DDESCARGARID'
      'MDESCARGARID=MDESCARGARID'
      'COD_ART=COD_ART'
      'CANTIDAD=CANTIDAD'
      'ESTADO=ESTADO'
      'ARTICULO=ARTICULO')
    DataSet = datos.ZDdescarga
    BCDToCurrency = False
    Left = 384
    Top = 384
  end
  object IbqRArticulos: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.moneda, a.ubicacion, a.cod_art,upper(a.articulo) articu' +
        'lo ,a.cod_cat,a.politica,a.modelo, a.codigobarra, a.referencia, ' +
        ' a.marca,a.codigotxt,a.itbis, a.costo, a.taza_compra, a. lote, a' +
        '.serie,'
      'sum(b.entrada - b.salida) Existencia'
      'from mtartuculos a'
      'left join minventario b On a.cod_art = b.cod_art'
      
        'group by a.moneda,a.cod_art,a.articulo,a.cod_cat,a.politica,a.mo' +
        'delo,a.marca,a.codigotxt, a.codigobarra,a.itbis,a.costo, a.refer' +
        'encia,  taza_compra, a.ubicacion,  a. lote, a.serie')
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
    object IbqRArticulosCODIGOTXT: TWideStringField
      FieldName = 'CODIGOTXT'
      Size = 40
    end
    object IbqRArticulosEXISTENCIA: TExtendedField
      FieldName = 'EXISTENCIA'
      ReadOnly = True
      Precision = 19
    end
    object IbqRArticulosCODIGOBARRA: TWideStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object IbqRArticulosREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
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
  object fxTicket: TfrxReport
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
    Left = 344
    Top = 296
    Datasets = <
      item
        DataSet = config
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = master
        DataSetName = 'frxMaster'
      end
      item
        DataSet = detalle
        DataSetName = 'frxDetalle'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.001670000000000000
        Top = 19.200000000000000000
        Width = 288.000186000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 55.447310000000000000
          Width = 199.710700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONDUCE')
          ParentFont = False
        end
        object frxDBDataset1NO_ENTRADA: TfrxMemoView
          AllowVectorExport = True
          Left = 101.129190000000000000
          Top = 26.642610000000000000
          Width = 89.272480000000000000
          Height = 18.897650000000000000
          DataField = 'MDESCARGARID'
          DataSet = master
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."MDESCARGARID"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 21.759060000000000000
          Top = 25.863080000000000000
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
        object frxDBDataset1EMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 132.924490000000000000
        Top = 182.400000000000000000
        Width = 288.000186000000000000
        DataSet = master
        DataSetName = 'frxMaster'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 20.938590000000000000
          Top = 30.559060000000000000
          Width = 116.258380000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estaci'#243'n de Destino :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 127.976500000000000000
          Top = 48.897650000000000000
          Width = 137.877490000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 70.431540000000000000
          Width = 261.090230000000000000
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
          Left = 20.938590000000000000
          Top = 5.595300000000000000
          Width = 59.565430000000000000
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
          Left = 77.904020000000000000
          Top = 21.913420000000000000
          Width = 116.560730000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 22.979530000000000000
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
          Left = 179.800310000000000000
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
          Left = 63.600000000000000000
          Top = 102.800000000000000000
          Width = 83.149660000000000000
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
        object frxDBDataset1FECHA1: TfrxMemoView
          AllowVectorExport = True
          Left = 76.800000000000000000
          Top = 2.600000000000000000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 134.400000000000000000
          Top = 28.800000000000000000
          Width = 134.400000000000000000
          Height = 19.200000000000000000
          DataField = 'NOMBREALMACEN'
          DataSet = master
          DataSetName = 'frxMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxMaster."NOMBREALMACEN"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 336.000000000000000000
        Width = 288.000186000000000000
        DataSet = detalle
        DataSetName = 'frxDetalle'
        RowCount = 0
        Stretched = True
        object frxDBDataset2DESCRIPCION: TfrxMemoView
          AllowVectorExport = True
          Left = 14.600000000000000000
          Width = 55.710390000000000000
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
          Left = 240.400310000000000000
          Width = 40.970130000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
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
            '[frxDetalle."CANTIDAD"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 66.200000000000000000
          Top = 2.000000000000000000
          Width = 175.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ARTICULO'
          DataSet = detalle
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."ARTICULO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 146.785900000000000000
        Top = 422.400000000000000000
        Width = 288.000186000000000000
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
          Left = 19.805010000000000000
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
          Top = 53.129190000000000000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 35.754360000000000000
          Top = 56.908720000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Despachado por:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
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
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 28.800000000000000000
          Top = 105.600000000000000000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 36.359060000000000000
          Top = 109.379530000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Recibido por:')
          ParentFont = False
        end
      end
    end
  end
end
