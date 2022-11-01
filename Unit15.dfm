object frmcuadre_caja: Tfrmcuadre_caja
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cuadre de Caja'
  ClientHeight = 399
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 829
    Height = 74
    TabOrder = 0
    object Label1: TLabel
      Left = 323
      Top = 6
      Width = 63
      Height = 16
      Caption = 'Fecha Inicial'
    end
    object Label2: TLabel
      Left = 424
      Top = 6
      Width = 56
      Height = 16
      Caption = 'Fecha Final'
    end
    object Label7: TLabel
      Left = 105
      Top = 5
      Width = 92
      Height = 16
      Caption = 'Combre del Cajero'
    end
    object Label3: TLabel
      Left = 11
      Top = 5
      Width = 60
      Height = 16
      Caption = 'Cod. Cajero'
    end
    object fecha1: TcxDateEdit
      Left = 323
      Top = 21
      TabOrder = 0
      Width = 98
    end
    object fecha2: TcxDateEdit
      Left = 423
      Top = 21
      TabOrder = 1
      Width = 91
    end
    object cxButton1: TcxButton
      Left = 520
      Top = 14
      Width = 90
      Height = 36
      Caption = 'Pocesar'
      LookAndFeel.SkinName = 'Office2016Colorful'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000008F000000EC00000048000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0092000000FF000000FF000000F90000004C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000008F0000
        00FF000000FF000000FF000000FF000000F70000004800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000ED0000
        00FF000000FF000000FF000000FF000000FF000000F700000048000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000480000
        00F7000000FF000000FF000000FF000000FF000000FF000000F7000000480000
        0000000000000000000000000000000000000000000000000000000000700000
        002C000000000000002C00000070000000000000000000000000000000000000
        0048000000F7000000FF000000FF000000FF000000FF000000FF000000F70000
        00480000000000000000000000000000000000000000000000000000002C0000
        00F9000000BD000000F90000002C000000000000000000000000000000000000
        000000000048000000F7000000FF000000FF000000FF000000FF000000FF0000
        00F7000000480000000000000000000000000000000000000000000000000000
        00BD000000FF000000BD00000000000000000000000000000000000000000000
        00000000000000000048000000F7000000FF000000FF000000FF000000FF0000
        00FF000000F700000048000000000000000000000000000000000000002C0000
        00F9000000BD000000F90000002C000000000000000000000000000000000000
        0000000000000000000000000046000000F7000000FF000000FF000000FF0000
        00FF000000FF000000F90000004C000000000000000000000000000000740000
        002F00000000000000280000006A000000000000000000000000000000000000
        000000000000000000000000000000000046000000F7000000FF000000FF0000
        00FF000000FF000000FF000000F90000004C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000048000000F7000000FF0000
        00FF000000FF000000E60000007E000000F50000004800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000048000000F70000
        00FF000000E6000000280000000000000062000000F500000048000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000480000
        00F70000007E0000000000000000000000000000007E000000ED000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0048000000F5000000620000000000000028000000E60000008F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000048000000F50000007E000000E60000009400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000048000000ED0000008F0000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000700000002C000000000000002C000000700000
        0000000000000000000000000000000000000000000000000000000000700000
        002C000000000000002C00000070000000000000000000000000000000000000
        000000000000000000000000002C000000F9000000BD000000F90000002C0000
        00000000000000000000000000000000000000000000000000000000002C0000
        00F9000000BD000000F90000002C000000000000000000000000000000000000
        0000000000000000000000000000000000BD000000FF000000BD000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00BD000000FF000000BD00000000000000000000000000000000000000000000
        000000000000000000000000002C000000F9000000BD000000F90000002C0000
        00000000000000000000000000000000000000000000000000000000002C0000
        00F9000000BD000000F90000002C000000000000000000000000000000000000
        00000000000000000000000000740000002F00000000000000280000006A0000
        0000000000000000000000000000000000000000000000000000000000740000
        002F00000000000000280000006A000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 169
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxButton3: TcxButton
      Left = 66
      Top = 22
      Width = 34
      Height = 22
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
      OptionsImage.ImageIndex = 947
      TabOrder = 3
      OnClick = cxButton3Click
    end
    object cod: TcxTextEdit
      Left = 9
      Top = 21
      Enabled = False
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      StyleFocused.LookAndFeel.SkinName = 'Caramel'
      StyleHot.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 4
      Width = 57
    end
    object caj: TcxTextEdit
      Left = 103
      Top = 21
      Enabled = False
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      StyleFocused.LookAndFeel.SkinName = 'Caramel'
      StyleHot.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 5
      Width = 202
    end
    object Chk1: TcxCheckBox
      Left = 9
      Top = 49
      Caption = 'Incluir Criterio en la Consulta'
      TabOrder = 6
    end
  end
  object cxGrid1: TcxGrid
    Left = 11
    Top = 88
    Width = 894
    Height = 305
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSCUADRE
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'MONTOPAGO'
          Column = cxGrid1DBTableView1TOTALVENTAS
        end
        item
          Kind = skSum
          FieldName = 'EFECTIVOCAJA'
          Column = cxGrid1DBTableView1EFECTIVOCAJA
        end
        item
          Kind = skSum
          FieldName = 'TOTALEGRESOS'
          Column = cxGrid1DBTableView1TOTALEGRESOS
        end
        item
          Kind = skSum
          FieldName = 'TOTALCUADRE'
          Column = cxGrid1DBTableView1TOTALCUADRE
        end
        item
          Kind = skSum
          FieldName = 'SOBRANTES'
          Column = cxGrid1DBTableView1SOBRANTES
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Cajero / a'
        DataBinding.FieldName = 'NOMBRES_EMP'
        Width = 185
      end
      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1HORA: TcxGridDBColumn
        Caption = 'Hora'
        DataBinding.FieldName = 'HORA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 62
      end
      object cxGrid1DBTableView1EFECTIVO_INICIAL: TcxGridDBColumn
        Caption = 'Efectivo Inicial'
        DataBinding.FieldName = 'EFECTIVO_INICIAL'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 89
      end
      object cxGrid1DBTableView1EFECTIVOCAJA: TcxGridDBColumn
        Caption = 'Efectivo en Caja'
        DataBinding.FieldName = 'EFECTIVOCAJA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 93
      end
      object cxGrid1DBTableView1TOTALVENTAS: TcxGridDBColumn
        Caption = 'Total Ventas'
        DataBinding.FieldName = 'TOTALVENTAS'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 77
      end
      object cxGrid1DBTableView1TOTALEGRESOS: TcxGridDBColumn
        Caption = 'Total Egresos'
        DataBinding.FieldName = 'TOTALEGRESOS'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 89
      end
      object cxGrid1DBTableView1TOTALCUADRE: TcxGridDBColumn
        Caption = 'Total Cuadre'
        DataBinding.FieldName = 'TOTALCUADRE'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 78
      end
      object cxGrid1DBTableView1SOBRANTES: TcxGridDBColumn
        Caption = 'Efectivo Sobrantes'
        DataBinding.FieldName = 'SOBRANTES'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 81
      end
      object cxGrid1DBTableView1DESCUADRE: TcxGridDBColumn
        Caption = 'Efectivo Faltante'
        DataBinding.FieldName = 'DESCUADRE'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 69
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 624
    Top = 22
    Width = 113
    Height = 36
    Caption = 'Imprimir'
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
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      003C0000003D000000FF000000FF000000000000000000000000000000000000
      00E5000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      003A0000003C000000FF000000E5000000000000000000000000000000000000
      0088000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000088000000000000000000000000000000000000
      000600000089000000E6000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E50000008800000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
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
    OptionsImage.ImageIndex = 101
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object OpBuscarEmpleado: TcxGroupBox
    Left = 81
    Top = 57
    Caption = 'Buscar Empleado'
    Style.LookAndFeel.NativeStyle = True
    Style.LookAndFeel.SkinName = 'Caramel'
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 3
    Visible = False
    Height = 237
    Width = 244
    object Edit2: TEdit
      Left = 8
      Top = 204
      Width = 230
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit2Change
    end
    object cxGrid3: TcxGrid
      Left = 3
      Top = 15
      Width = 241
      Height = 189
      TabOrder = 1
      LookAndFeel.SkinName = 'Office2016Colorful'
      object cxGridDBTableView2: TcxGridDBTableView
        OnDblClick = cxGridDBTableView2DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsqusuario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NOMBRES_EMP: TcxGridDBColumn
          Caption = 'Usuarios Creados'
          DataBinding.FieldName = 'NOMBRES_EMP'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 235
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 235
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  object cuadre: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*,c.nombres_emp, d.descricpcion from turnos a'
      'left join Musuario b On a.usuarioid = b.usuarioid'
      'left join mtempleado C on b.empleadoid = c.cod_emp1'
      'left join mant_turnos d On a.idturno = d.id_turnos')
    Params = <>
    Left = 424
    Top = 184
    object cuadreTURNOID: TIntegerField
      FieldName = 'TURNOID'
      Required = True
    end
    object cuadreUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object cuadreEFECTIVO_INICIAL: TFloatField
      FieldName = 'EFECTIVO_INICIAL'
      currency = True
    end
    object cuadreESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object cuadreFECHA: TDateField
      FieldName = 'FECHA'
    end
    object cuadreIDTURNO: TIntegerField
      FieldName = 'IDTURNO'
    end
    object cuadreCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object cuadreHORA: TTimeField
      FieldName = 'HORA'
    end
    object cuadreEFECTIVOCAJA: TFloatField
      FieldName = 'EFECTIVOCAJA'
      currency = True
    end
    object cuadreCOBRANZA: TFloatField
      FieldName = 'COBRANZA'
      currency = True
    end
    object cuadreTC: TFloatField
      FieldName = 'TC'
      currency = True
    end
    object cuadreCHEQUE: TFloatField
      FieldName = 'CHEQUE'
      currency = True
    end
    object cuadreVALE: TFloatField
      FieldName = 'VALE'
      currency = True
    end
    object cuadreGASTOS: TFloatField
      FieldName = 'GASTOS'
      currency = True
    end
    object cuadreNC: TFloatField
      FieldName = 'NC'
      currency = True
    end
    object cuadreTOTALGASTOS: TFloatField
      FieldName = 'TOTALGASTOS'
      currency = True
    end
    object cuadreTOTALEINGRESO: TFloatField
      FieldName = 'TOTALEINGRESO'
      currency = True
    end
    object cuadreTOTALCUADRE: TFloatField
      FieldName = 'TOTALCUADRE'
      currency = True
    end
    object cuadreDESCUADRE: TFloatField
      FieldName = 'DESCUADRE'
      currency = True
    end
    object cuadreTOTALVENTAS: TFloatField
      FieldName = 'TOTALVENTAS'
      currency = True
    end
    object cuadreTOTALEGRESOS: TFloatField
      FieldName = 'TOTALEGRESOS'
      currency = True
    end
    object cuadreSOBRANTES: TFloatField
      FieldName = 'SOBRANTES'
      currency = True
    end
    object cuadreNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object cuadreDESCRICPCION: TWideStringField
      FieldName = 'DESCRICPCION'
      Size = 40
    end
  end
  object DSCUADRE: TDataSource
    DataSet = cuadre
    Left = 304
    Top = 192
  end
  object ticker: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Maximized = False
    PreviewOptions.Modal = False
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43150.574951423610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 432
    Top = 240
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'configuracion'
      end
      item
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
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
        Name = 'Empleado'
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
      PaperSize = 1
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 32.277180000000000000
        Top = 264.189240000000000000
        Width = 816.000527000000000000
        DataSet = mASTER
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2FECHA_FAC1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 69.770130000000000000
          Height = 28.497650000000000000
          DataField = 'FECHA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."FECHA"]')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT1: TfrxMemoView
          AllowVectorExport = True
          Left = 69.770130000000000000
          Width = 75.288250000000000000
          Height = 28.497650000000000000
          DataField = 'HORA'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."HORA"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO1: TfrxMemoView
          AllowVectorExport = True
          Left = 290.796970000000000000
          Width = 86.929190000000000000
          Height = 28.497650000000000000
          DataField = 'EFECTIVO_INICIAL'
          DataSet = mASTER
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
            '[frxDBDataset2."EFECTIVO_INICIAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Width = 142.488250000000000000
          Height = 28.497650000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = mASTER
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NOMBRES_EMP"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 383.000000000000000000
          Top = 0.010760000000004760
          Width = 67.729190000000000000
          Height = 28.497650000000000000
          DataField = 'EFECTIVOCAJA'
          DataSet = mASTER
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
            '[frxDBDataset2."EFECTIVOCAJA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 459.800000000000000000
          Top = 0.010760000000004760
          Width = 67.729190000000000000
          Height = 28.497650000000000000
          DataField = 'TOTALEINGRESO'
          DataSet = mASTER
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
            '[frxDBDataset2."TOTALEINGRESO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 531.600000000000000000
          Top = 0.010760000000004760
          Width = 67.729190000000000000
          Height = 28.497650000000000000
          DataField = 'TOTALEGRESOS'
          DataSet = mASTER
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
            '[frxDBDataset2."TOTALEGRESOS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 601.800000000000000000
          Top = 0.010760000000004760
          Width = 67.729190000000000000
          Height = 28.497650000000000000
          DataField = 'TOTALCUADRE'
          DataSet = mASTER
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
            '[frxDBDataset2."TOTALCUADRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 674.600000000000000000
          Top = 0.010760000000004760
          Width = 67.729190000000000000
          Height = 28.497650000000000000
          DataField = 'SOBRANTES'
          DataSet = mASTER
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
            '[frxDBDataset2."SOBRANTES"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 745.800000000000000000
          Top = 0.610760000000027500
          Width = 67.729190000000000000
          Height = 28.497650000000000000
          DataField = 'DESCUADRE'
          DataSet = mASTER
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
            '[frxDBDataset2."DESCUADRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 219.212740000000000000
        Top = 328.138900000000000000
        Width = 816.000527000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 798.085220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 83.754359999999960000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 83.754360000000030000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 240.000000000000000000
          Top = 179.376500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 240.000000000000000000
          Top = 182.400000000000000000
          Width = 284.144960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Aprobado Por:')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 231.110390000000000000
        Top = 6.897650000000000000
        Width = 816.000527000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 188.792270000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.477180000000000000
          Top = 191.812740000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 73.847309999999990000
          Top = 192.812740000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 153.600000000000000000
          Top = 193.800000000000000000
          Width = 142.790600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero')
          ParentFont = False
        end
        object fecha1: TfrxMemoView
          AllowVectorExport = True
          Left = 345.600000000000000000
          Top = 145.800000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          AllowVectorExport = True
          Left = 537.800000000000000000
          Top = 145.800000000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[fecha2]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 249.600000000000000000
          Top = 145.800000000000000000
          Width = 96.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Inicial :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 451.200000000000000000
          Top = 145.800000000000000000
          Width = 96.000000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Final :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 660.509030000000000000
          Top = 58.574830000000000000
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
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 632.431850000000000000
          Top = 19.200000000000000000
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
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 661.400000000000000000
          Top = 37.400000000000000000
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
            '[DATE]')
          ParentFont = False
        end
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 9.902350000000000000
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 32.902350000000000000
          Width = 400.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 49.200000000000000000
          Top = 56.902350000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 197.200000000000000000
          Top = 55.902350000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'configuracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[configuracion."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 24.200000000000000000
          Top = 56.902350000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 115.502350000000000000
          Width = 777.600000000000000000
          Height = 38.400000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DE CUADRES REALIZADOS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 299.600000000000000000
          Top = 194.302350000000000000
          Width = 75.590600000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Efectivo Inicial')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 379.000000000000000000
          Top = 194.302350000000000000
          Width = 75.590600000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Efectivo en Caja')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 458.800000000000000000
          Top = 194.302350000000000000
          Width = 65.990600000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Ingreso')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 225.012740000000000000
          Width = 807.685220000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 532.200000000000000000
          Top = 194.302350000000000000
          Width = 65.990600000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Egresos')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 603.000000000000000000
          Top = 194.302350000000000000
          Width = 65.990600000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Cuadre')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 674.600000000000000000
          Top = 193.302350000000000000
          Width = 65.990600000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sobrantes')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 739.200000000000000000
          Top = 192.302350000000000000
          Width = 65.990600000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Faltentes')
          ParentFont = False
        end
      end
    end
  end
  object mASTER: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TURNOID=TURNOID'
      'USUARIOID=USUARIOID'
      'EFECTIVO_INICIAL=EFECTIVO_INICIAL'
      'ESTADO=ESTADO'
      'FECHA=FECHA'
      'IDTURNO=IDTURNO'
      'CAJA=CAJA'
      'HORA=HORA'
      'EFECTIVOCAJA=EFECTIVOCAJA'
      'COBRANZA=COBRANZA'
      'TC=TC'
      'CHEQUE=CHEQUE'
      'VALE=VALE'
      'GASTOS=GASTOS'
      'NC=NC'
      'TOTALGASTOS=TOTALGASTOS'
      'TOTALEINGRESO=TOTALEINGRESO'
      'TOTALCUADRE=TOTALCUADRE'
      'DESCUADRE=DESCUADRE'
      'TOTALVENTAS=TOTALVENTAS'
      'TOTALEGRESOS=TOTALEGRESOS'
      'SOBRANTES=SOBRANTES'
      'NOMBRES_EMP=NOMBRES_EMP'
      'DESCRICPCION=DESCRICPCION')
    DataSet = cuadre
    BCDToCurrency = False
    Left = 352
    Top = 120
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
  object dsqusuario: TDataSource
    DataSet = Zqusuario
    Left = 250
    Top = 328
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
      'IMPRIMECOTIZA=IMPRIMECOTIZA')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 680
    Top = 232
  end
end
