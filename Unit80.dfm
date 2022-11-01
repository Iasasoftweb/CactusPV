object FrmCotiza: TFrmCotiza
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Control de Cotizaciones'
  ClientHeight = 434
  ClientWidth = 530
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 513
    Height = 353
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 509
      Height = 336
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsCotiza
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'FECHA_FAC'
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
        object cxGrid1DBTableView1NO_FACT: TcxGridDBColumn
          Caption = 'No. Fact'
          DataBinding.FieldName = 'NO_FACT'
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
        object cxGrid1DBTableView1CLIENTENOMBRE: TcxGridDBColumn
          Caption = 'Nombre del Cliente'
          DataBinding.FieldName = 'NOMBRECLIENTE_PRN'
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
          Width = 260
        end
        object cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn
          Caption = 'Monto Pago'
          DataBinding.FieldName = 'MONTOPAGO'
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
          Width = 107
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Memo1: TMemo
      Left = 80
      Top = 128
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
      Visible = False
    end
    object Panel1: TPanel
      Left = 168
      Top = 104
      Width = 201
      Height = 145
      TabOrder = 2
      Visible = False
      object Op1: TcxRadioGroup
        Left = 16
        Top = 16
        Caption = 'Tipo de Impresion'
        Properties.Items = <
          item
            Caption = '8.5" x  11"'
          end
          item
            Caption = 'Ticket'
          end>
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 73
        Width = 169
      end
      object cxButton1: TcxButton
        Left = 48
        Top = 103
        Width = 113
        Height = 33
        Caption = 'Imprimir'
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
        TabOrder = 1
        OnClick = cxButton1Click
      end
    end
    object Edit2: TEdit
      Left = 24
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 3
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 360
    Width = 511
    Height = 66
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 90
      Height = 13
      Caption = 'Nombre del Cliente'
    end
    object Edit1: TEdit
      Left = 19
      Top = 35
      Width = 225
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
    object cxButton11: TcxButton
      Left = 375
      Top = 30
      Width = 133
      Height = 33
      Caption = 'Convertir Coizaci'#243'n en Factura'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Caramel'
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
        0000000000000000000000000000000000000000000000000000000000B30000
        0022000000000000000000000000000000000000000000000000000000000000
        000000000049000000E3000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000035000000000000000000000000000000FF0000
        00F7000000800000000900000000000000000000000000000000000000000000
        0000000000E3000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF0000000A000000000000000000000000000000FF0000
        00FF000000FF000000DD0000004D000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF0000000C000000000000000000000000000000FF0000
        00FF000000FF000000DD0000004D000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000036000000000000000000000000000000FF0000
        00F7000000800000000900000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF0000000000000000000000000000
        0000000000FF000000FF00000090000000000000000000000000000000B30000
        0022000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF0000000000000000000000000000
        0000000000FF000000FF000000F70000002E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000E30000002E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000F800000091000000360000
        000B0000000A0000003500000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF0000000000000000000000000000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF0000000000000000000000000000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000E3000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000003C0000003D000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000E200000000000000000000000000000000000000000000
        00000000004B000000E4000000FF000000FF000000FF000000FF000000FF0000
        00FF0000003A0000003C000000FF000000FF000000FF000000FF000000FF0000
        00FF000000E30000004900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000800000
        00FF000000FF000000FF000000FF000000830000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050000
        0089000000E0000000E300000083000000050000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 194
      OptionsImage.Images = FrmHome.RibbonImages32
      TabOrder = 1
      Visible = False
      WordWrap = True
      OnClick = cxButton11Click
    end
    object cxButton13: TcxButton
      Left = 247
      Top = 31
      Width = 122
      Height = 32
      Caption = 'Imprimir Copia de Cotizaci'#243'n'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0049000000E2000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00E3000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000000000000000000049000000E2000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000E200000048000000000000000000000000000000000000
        00FF000000FF0000000000000000000000E3000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000E2000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FD000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000B400000035000000EB000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
        00B400000007000000000000002E000000EB000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000AD0000
        00050000000000000017000000000000002E000000EA000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000570000
        000000000080000000EB0000002E000000000000002E000000EA000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000FA0000
        00A8000000FF000000FF000000EB0000002E000000000000002E000000EB0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000EA0000002E000000000000002E0000
        00EB000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000EB0000002E000000000000
        0042000000FF000000FF000000FF000000000000000000000000000000000000
        00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000EA0000003F0000
        00CC000000FF000000FF000000FF000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        0000000000000000000000000000000000E3000000FF000000FF000000FF0000
        00FF000000FF000000FF0000004100000041000000FF000000FF000000FF0000
        00FF000000FF000000FF000000E2000000000000000000000000000000000000
        00000000000000000000000000000000004A000000E3000000FF000000FF0000
        00FF000000FF000000FF0000004200000043000000FF000000FF000000FF0000
        00FF000000FF000000E300000049000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000089000000FF000000FF000000FF000000FF00000088000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000050000008E000000EC000000EB0000008D00000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 452
      OptionsImage.Images = FrmHome.RibbonImages32
      TabOrder = 2
      WordWrap = True
      OnClick = cxButton13Click
    end
  end
  object QCotizacion: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp,  b.direccion ' +
        'as dir  from master_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.codven = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'where a.ROTULO = '#39'COTIZACION'#39)
    Params = <>
    Left = 256
    Top = 112
    object QCotizacionNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object QCotizacionFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object QCotizacionTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object QCotizacionCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object QCotizacionCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object QCotizacionNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object QCotizacionMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object QCotizacionHORA: TTimeField
      FieldName = 'HORA'
    end
    object QCotizacionPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object QCotizacionTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object QCotizacionMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object QCotizacionCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object QCotizacionRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object QCotizacionCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QCotizacionTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object QCotizacionVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object QCotizacionSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object QCotizacionCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object QCotizacionNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object QCotizacionRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object QCotizacionNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object QCotizacionNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object QCotizacionDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QCotizacionROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object QCotizacionNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object QCotizacionMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object QCotizacionCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object QCotizacionINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object QCotizacionDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object QCotizacionPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object QCotizacionLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object QCotizacionCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object QCotizacionTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object QCotizacionEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object QCotizacionDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object QCotizacionRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object QCotizacionABONO: TFloatField
      FieldName = 'ABONO'
    end
    object QCotizacionCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object QCotizacionNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object QCotizacionPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object QCotizacionMESES: TIntegerField
      FieldName = 'MESES'
    end
    object QCotizacionDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object QCotizacionPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object QCotizacionESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object QCotizacionDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object QCotizacionCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object QCotizacionCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object QCotizacionCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object QCotizacionQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object QCotizacionUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object QCotizacionCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object QCotizacionCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object QCotizacionTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object QCotizacionPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
      Size = 22
    end
    object QCotizacionNC: TIntegerField
      FieldName = 'NC'
    end
    object QCotizacionCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object QCotizacionCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object QCotizacionNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
    object QCotizacionFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object QCotizacionINTERES_DIARIO: TFloatField
      FieldName = 'INTERES_DIARIO'
    end
    object QCotizacionINTERES_ACUM: TFloatField
      FieldName = 'INTERES_ACUM'
    end
    object QCotizacionDIAS_TRANS: TIntegerField
      FieldName = 'DIAS_TRANS'
    end
    object QCotizacionFECHA_ULTIMO_PAGO: TDateField
      FieldName = 'FECHA_ULTIMO_PAGO'
    end
    object QCotizacionDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
    end
    object QCotizacionINTERES_PAGADO: TFloatField
      FieldName = 'INTERES_PAGADO'
    end
    object QCotizacionCAPITAL_PAGADO: TFloatField
      FieldName = 'CAPITAL_PAGADO'
    end
    object QCotizacionDESC_CAPITAL: TFloatField
      FieldName = 'DESC_CAPITAL'
    end
    object QCotizacionIDDR: TIntegerField
      FieldName = 'IDDR'
    end
    object QCotizacionNOMBREDELDR: TWideStringField
      FieldName = 'NOMBREDELDR'
      Size = 40
    end
    object QCotizacionCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object QCotizacionNCF_NOMBRE: TWideStringField
      FieldName = 'NCF_NOMBRE'
      Size = 50
    end
    object QCotizacionMORA: TFloatField
      FieldName = 'MORA'
    end
    object QCotizacionNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object QCotizacionBONOS: TFloatField
      FieldName = 'BONOS'
    end
    object QCotizacionOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object QCotizacionIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object QCotizacionCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object QCotizacionCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object QCotizacionNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object QCotizacionFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object QCotizacionDIR: TWideStringField
      FieldName = 'DIR'
      Size = 40
    end
  end
  object DsCotiza: TDataSource
    DataSet = QCotizacion
    Left = 232
    Top = 72
  end
  object IMPRIMEPEDIDO: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'detalle'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Collate = False
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 44840.532877511580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 430
    Top = 184
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'Config'
      end
      item
        DataSet = detalle
        DataSetName = 'detalle'
      end
      item
        DataSet = master
        DataSetName = 'master'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'cajero'
        Value = Null
      end
      item
        Name = 'mensaje1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.058000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.236240000000000000
        Top = 307.200000000000000000
        Width = 793.920512740000000000
        DataSet = detalle
        DataSetName = 'detalle'
        KeepChild = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 134.206370000000000000
          Top = 0.779530000000000000
          Width = 257.537230000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset1PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 437.795256060000000000
          Top = 0.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."PRECIO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 675.314960630000000000
          Top = 0.645669290000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1MARCA: TfrxMemoView
          AllowVectorExport = True
          Left = 70.656710000000000000
          Width = 58.431540000000000000
          Height = 18.897650000000000000
          DataField = 'COD_ART'
          DataSet = detalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."COD_ART"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 602.897650000000000000
          Top = 0.078540000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ITBS'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."ITBS"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 394.173470000000000000
          Top = 2.000000000000000000
          Width = 40.365430000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataField = 'UNID'
          DataSet = detalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."UNID"]')
          ParentFont = False
        end
        object frxDBDataset1CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 21.979244410000000000
          Top = 0.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."CANTIDAD"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 515.016080000000000000
          Top = 0.755905510000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'IMPUESTO'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."IMPUESTO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 288.000000000000000000
        Width = 793.920512740000000000
        DataSet = master
        DataSetName = 'master'
        RowCount = 0
        Stretched = True
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 259.048980000000000000
        Top = 441.600000000000000000
        Width = 793.920512740000000000
        object frxDBDataset2POGXITBS: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 42.615770000000100000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."POGXITBS"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 57.733889999999900000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."DESCUENTO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 43.395300000000100000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 57.174830000000100000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 22.872480000000000000
          Top = 167.611070000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de Articulos')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 164.156030000000000000
          Top = 167.611070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 6.861409999999980000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 22.261410000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."MONTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 512.913730000000000000
          Top = 24.261410000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          AllowVectorExport = True
          Left = 39.231540000000000000
          Top = 192.765430000000000000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313033347B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C636F
            6C6F7274626C203B5C726564305C677265656E305C626C7565303B7D0D0A7B5C
            2A5C67656E657261746F722052696368656432302031302E302E31383336327D
            5C766965776B696E64345C756331200D0A5C706172645C6366315C625C66305C
            66733230205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C70
            61720D0A2020202020202020202020205C6230204465737061636861646F2070
            6F723A5C7061720D0A7D0D0A00}
        end
        object Rich4: TfrxRichView
          AllowVectorExport = True
          Left = 476.825480000000000000
          Top = 192.765430000000000000
          Width = 287.244280000000000000
          Height = 52.913420000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313033347B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C636F
            6C6F7274626C203B5C726564305C677265656E305C626C7565303B7D0D0A7B5C
            2A5C67656E657261746F722052696368656432302031302E302E31383336327D
            5C766965776B696E64345C756331200D0A5C706172645C6366315C625C66305C
            66733230205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C70
            61720D0A5C623020202020202020202020202020526563696269646F20706F72
            3A5C7061720D0A7D0D0A00}
        end
        object mensaje1: TfrxMemoView
          AllowVectorExport = True
          Left = 14.800000000000000000
          Top = 57.528880000000000000
          Width = 451.970130000000000000
          Height = 47.697650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[mensaje1]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 164.600000000000000000
          Top = 11.000000000000000000
          Width = 470.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '**************  ULTIMA LINEA ***************')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 239.400000000000000000
          Width = 769.663080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '!! Gracias por su compra, vuelva pronto !!')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 650.704020000000000000
          Top = 76.800000000000100000
          Width = 104.390600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 533.138590000000000000
          Top = 78.461410000000500000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object frxDBDataset1OBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 28.718120000000000000
          Top = 105.600000000000000000
          Width = 395.370130000000000000
          Height = 42.297650000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."OBSERVACIONES"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 209.110390000000000000
        Top = 19.200000000000000000
        Width = 793.920512740000000000
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = 33.000000000000000000
          Top = 13.102350000000000000
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 35.000000000000000000
          Top = 32.102350000000000000
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."DIRECCION"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 497.660050000000000000
          Top = 115.149660000000000000
          Width = 215.433210000000000000
          Height = 33.713420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'COTIZACION')
          ParentFont = False
        end
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 143.899630000000000000
          Top = 62.840940000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 685.279160000000000000
          Top = 36.333890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 631.570440000000000000
          Top = 36.333890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha           ')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 35.015770000000000000
          Top = 83.852010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente           :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 36.015770000000000000
          Top = 152.949660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor       :')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 38.795300000000000000
          Top = 169.467780000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       :')
          ParentFont = False
        end
        object frxDBDataset2RNC_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 124.826840000000000000
          Top = 129.124490000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 35.236240000000000000
          Top = 133.124490000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC Cliente   :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 188.992270000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 208.110390000000000000
          Width = 797.480830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 128.606370000000000000
          Top = 190.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripcion')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 16.779530000000000000
          Top = 188.653680000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cant.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 429.457020000000000000
          Top = 190.212740000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 658.515400000000000000
          Top = 190.212740000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 55.456710000000000000
          Top = 189.551330000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Referencia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 34.770440000000000000
          Top = 62.840940000000000000
          Width = 100.308720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Cotizaci'#243'n :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 632.688560000000000000
          Top = 17.333890000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 303.000000000000000000
          Top = 50.502350000000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 451.000000000000000000
          Top = 50.502350000000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 278.000000000000000000
          Top = 50.502350000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 416.000000000000000000
          Top = 50.502350000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 604.677180000000000000
          Top = 190.102350000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Itbs')
          ParentFont = False
        end
        object frxDBDataset1NOMBRECLIENTE_PRN: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 123.779530000000000000
          Top = 83.702350000000000000
          Width = 359.055350000000000000
          Height = 26.456710000000000000
          StretchMode = smActualHeight
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object frxDBDataset1NOMBRES_EMP: TfrxMemoView
          AllowVectorExport = True
          Left = 124.000000000000000000
          Top = 150.902350000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRES_EMP'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NOMBRES_EMP"]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 682.200000000000000000
          Top = 16.302350000000000000
          Width = 87.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 123.220470000000000000
          Top = 169.302350000000000000
          Width = 281.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CAJ'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."CAJ"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 36.400000000000000000
          Top = 105.800000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Direcci'#243'n       :')
          ParentFont = False
        end
        object frxDBDataset1DIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 106.800000000000000000
          Width = 288.000000000000000000
          Height = 28.800000000000000000
          DataField = 'DIR'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."DIR"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 393.953000000000000000
          Top = 189.976500000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 516.016080000000000000
          Top = 188.976500000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 355.200000000000000000
        Width = 793.920512740000000000
        DataSet = FrxSeries
        DataSetName = 'FrxSeries'
        PrintIfDetailEmpty = True
        RowCount = 0
        object SeriesSERIES: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 64.252010000000000000
          Top = 1.000000000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'SERIES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[series."SERIES"]')
          ParentFont = False
        end
      end
    end
  end
  object detalle: TfrxDBDataset
    UserName = 'detalle'
    CloseDataSource = True
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
    Left = 430
    Top = 128
  end
  object master: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'master'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NO_FACT=NO_FACT'
      'FECHA_FAC=FECHA_FAC'
      'TIPO=TIPO'
      'COD_CLIENT=COD_CLIENT'
      'COD_EMP=COD_EMP'
      'NO_FACT1=NO_FACT1'
      'MONTO=MONTO'
      'POGXITBS=POGXITBS'
      'HORA=HORA'
      'TIPOPAGO=TIPOPAGO'
      'MONTOPAGO=MONTOPAGO'
      'CONDICION=CONDICION'
      'RENTA=RENTA'
      'CODIGO=CODIGO'
      'TIPOITBS=TIPOITBS'
      'VENDEDOR=VENDEDOR'
      'SITUACION=SITUACION'
      'NCF=NCF'
      'RNC_CLIENTE=RNC_CLIENTE'
      'NCF1=NCF1'
      'NOM_CLIENTE=NOM_CLIENTE'
      'DESCUENTO=DESCUENTO'
      'ROTULO=ROTULO'
      'NO_AUTORIZA_NCF=NO_AUTORIZA_NCF'
      'MONTOFINANCIADO=MONTOFINANCIADO'
      'CUOTAS=CUOTAS'
      'INTERES=INTERES'
      'PAGADO=PAGADO'
      'LEYPROPINA=LEYPROPINA'
      'COMPROBANTE=COMPROBANTE'
      'TERMINAL=TERMINAL'
      'EFECTIVO=EFECTIVO'
      'DEVOLUCION1=DEVOLUCION1'
      'RESTANTE=RESTANTE'
      'ABONO=ABONO'
      'CHEK=CHEK'
      'NO_RECIBO=NO_RECIBO'
      'PAGADOCXC=PAGADOCXC'
      'MESES=MESES'
      'DIAS=DIAS'
      'PENDIENTE=PENDIENTE'
      'ESTADOPAGO=ESTADOPAGO'
      'DEVOLUCION=DEVOLUCION'
      'CONDICION_PAGO=CONDICION_PAGO'
      'COMBO=COMBO'
      'COBRADO=COBRADO'
      'QUEES=QUEES'
      'USUARIOID=USUARIOID'
      'CLIENTEID=CLIENTEID'
      'CLIENTENOMBRE=CLIENTENOMBRE'
      'NOMBRES_EMP=NOMBRES_EMP'
      'TIENDAID=TIENDAID'
      'TCREDITO=TCREDITO'
      'CONDICIONVENTA=CONDICIONVENTA'
      'PINREFERIDO=PINREFERIDO'
      'NC=NC'
      'CODVEN=CODVEN'
      'CAJEROID=CAJEROID'
      'IDDR=IDDR'
      'NOMBREDELDR=NOMBREDELDR'
      'CAJA=CAJA'
      'NCF_NOMBRE=NCF_NOMBRE'
      'BONOS=BONOS'
      'NUMERO_FACTURA=NUMERO_FACTURA'
      'OBSERVACIONES=OBSERVACIONES'
      'IDRUTA=IDRUTA'
      'DIRECCION=DIRECCION'
      'CAJAID=CAJAID'
      'VEFECTIVA=VEFECTIVA'
      'PAGOXEFECTIVO=PAGOXEFECTIVO'
      'PAGOXCHEQUE=PAGOXCHEQUE'
      'PAGOXTARJETA=PAGOXTARJETA'
      'PAGOXBONO=PAGOXBONO'
      'DIR=DIR'
      'FECHAVENCIMIENTO=FECHAVENCIMIENTO'
      'CAJERO=CAJERO'
      'NOMBRECLIENTE_PRN=NOMBRECLIENTE_PRN'
      'FECHA_FINAL=FECHA_FINAL'
      'IDTECNICO=IDTECNICO'
      'CAJ=CAJ'
      'TECNICO=TECNICO')
    DataSet = datos.FbqMaster_Fact
    BCDToCurrency = False
    Left = 192
    Top = 104
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
      'REDONDEAR=REDONDEAR')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 336
    Top = 160
  end
  object frxReport1: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'detalle'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43179.833508530090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 334
    Top = 216
    Datasets = <
      item
        DataSet = detalle
        DataSetName = 'detalle'
      end
      item
        DataSet = master
        DataSetName = 'master'
      end
      item
        DataSet = Config
        DataSetName = 'Config'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      PaperWidth = 88.900000000000000000
      PaperHeight = 210.058000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 36.795300000000000000
        Top = 403.200000000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'detalle'
        RowCount = 0
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 125.623810000000000000
          Top = 17.897650000000000000
          Width = 69.770130000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 24.195300000000000000
          Width = 203.489920000000000000
          Height = 15.118120000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = -0.420470000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."CANTIDAD"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 59.463080000000000000
          Top = 17.897650000000000000
          Width = 69.770130000000000000
          Height = 18.897650000000000000
          DataField = 'ITBS'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."ITBS"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 17.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."PRECIO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 384.000000000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'master'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 365.596970000000000000
        Top = 499.200000000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 3.779530000000022000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 90.294620000000000000
          Top = 5.000000000000000000
          Width = 85.190600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2DESCUENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 80.694620000000000000
          Top = 23.795300000000050000
          Width = 94.790600000000000000
          Height = 18.897650000000000000
          DataField = 'DESCUENTO'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."DESCUENTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 80.694620000000000000
          Top = 65.929190000000010000
          Width = 94.790600000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = -25.270810000000000000
          Top = 7.000000000000000000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = -23.670810000000000000
          Top = 23.636239999999990000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = -26.270810000000000000
          Top = 67.590599999999940000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 4.774830000000000000
          Top = 125.544960000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 89.663080000000000000
          Top = 125.544960000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = -2.000000000000000000
          Top = 255.637910000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = -5.695980000000000000
          Top = 299.944960000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."HORA"]')
          ParentFont = False
        end
        object frxDBDataset1TIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 4.801670000000000000
          Top = 139.681880000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TIPO'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."TIPO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 14.497650000000000000
          Top = 181.206370000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cajero /a       ')
          ParentFont = False
        end
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 79.707050000000000000
          Top = 179.347990000000000000
          Width = 185.877180000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cajero]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = -21.122820000000000000
          Top = 40.620470000000010000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 90.297650000000000000
          Top = 39.620470000000010000
          Width = 85.190600000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."POGXITBS"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 1.702350000000000000
          Top = 259.519790000000000000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'GRACIAS POR PREFERIRNOS !!!'
            'NO ACEPTAMOS DEVOLUCI'#211'N')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 3.600000000000000000
          Top = 167.220470000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor  ')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 204.661410000000000000
          Width = 182.400000000000000000
          Height = 48.000000000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."OBSERVACIONES"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 305.881880000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 24.913420000000000000
          Top = 209.149660000000000000
          Width = 70.147990000000000000
          Height = 16.856710000000000000
          DataField = 'NO_FACT'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NO_FACT"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = -2.404700000000000000
          Top = 209.149660000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. :')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 94.683550000000000000
          Top = 208.488250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = -1.625170000000000000
          Top = 227.504020000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 46.031540000000000000
          Top = 226.283550000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -13.220470000000000000
          Top = 285.674150000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 2.477180000000000000
          Top = 286.894620000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 35.744960000000000000
          Top = 286.894620000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 134.967100000000000000
          Top = 285.894620000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object titulos: TfrxMemoView
          AllowVectorExport = True
          Left = 4.595300000000000000
          Top = 179.820470000000000000
          Width = 180.963760000000000000
          Height = 25.020470000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZACION')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -11.400000000000000000
          Top = 304.281880000000000000
          Width = 321.260050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 163.028510000000000000
          Top = 208.981200000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 23.922820000000000000
          Top = 157.738590000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."RNC"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 2.118120000000000000
          Top = 116.400000000000000000
          Width = 180.359060000000000000
          Height = 30.538590000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."DIRECCION"]')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Left = 0.081880000000000000
          Top = 158.738590000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC    :')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 24.481880000000000000
          Top = 146.538590000000000000
          Width = 94.261410000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."TELEFONO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -2.579530000000000000
          Top = 146.538590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 107.576500000000000000
          Top = 286.130860000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = -2.081880000000000000
          Top = 262.084910000000000000
          Width = 33.108720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NCF              :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 35.718120000000000000
          Top = 262.084910000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NCF"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 244.600000000000000000
          Width = 214.828510000000000000
          Height = 18.897650000000000000
          DataField = 'NCF_NOMBRE'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NCF_NOMBRE"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 18.200000000000000000
          Top = 0.302350000000000600
          Width = 150.000000000000000000
          Height = 97.000000000000000000
          AutoSize = True
          Center = True
          Frame.Typ = []
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000096
            00000061080600000034965843000000017352474200AECE1CE9000000046741
            4D410000B18F0BFC61050000000970485973000017110000171101CA26F33F00
            001DE449444154785EED9D099C9555DDC7EF322BB3320BB3DD59EE9D95196661
            980514152333C93D8D32CD15C45E2B5291B2545E81444921048464EBCDB7B22C
            4996ACD78CCAD4A23731B5D53717120D2DD1324DCD797FDFE13978E6F10E7367
            BB0CF09CCFE7FF79EEF39CF39CE57F7EE7FFFF9FFF39CFB93E9F173C0E781CF0
            38E071C0E380C7018F031E073C0E781CF038E071C0E380C7018703C9C9C9BEA4
            A4A49CCCCCCC2A51474646E671191919D3F652E6543D9B909E9E1E569AAC8484
            048F6F1E07A273209810F40B347563C6149C5F5A5AB6BABABAE6FECACAAA9D55
            D535AFEAF7BF75EDAAAAAAEE26DD436FE9F7DF95E6C97038725F5959D9D2BCBC
            BCE9A3468DAA0804021E9B0F670E0483415F5A5A7A654141E115E170F8FEAAAA
            9A5745DDE01160FA450670BABE545E5E714F7EFE9899A346A515F9FDFEC399C5
            8757DB01D4E8D1A33B2B2AC25F91E479692040DA1FF08C64D375572814FA1292
            D003D8218EB19C9C9C0601EAAB02D4EB430DA868607340B6A7B4B47489CA0E79
            6AF21003988CECD4A2A2E2AB642BFD355640B96C2AECAAB71DEAB6B34C7C2C6A
            93B4B5B5754F8742A5E7CBD8F7F4E3A180AFECECECFAAAAAAAFBFA02D45E3BA9
            DBBE7AA6B2B2F2072525A1C5E5E5E5B364949F2C69736476F6E80952A16DA347
            E71CA5EBE9454545974AFADDA2F77E2C7A3E16FB8C3264837D3D3535B5E850E0
            ED61DB8682828293255D76C56013FDA6A4A464B140786C4A4A4A4EAC2E04545B
            4262824FB3C1C29C9CDC13353B5C25F03CBD3F103B718F0B9CED876DC71CAC0D
            0718527D17AB135FEB0D548A7B5BEA8919DCE9F25BA50D455B31D2535252730B
            0B0B2FD04CF3A13E00B67BCC9831D33CC37E28381F873C98F5C9589E8DFFA937
            833A12A9FAA924CCFBA59286CDDE11B89305EEB35587C77A0398EAF84A4161E1
            691EB8E2008CC11481A4923A9AA98E7CAB1750BD585C5C3C5BC67CCA60CAE9CF
            BBF2D0E74422958B988946AB939EBF2C957DBC07AEFE70358E69E918A9A013D5
            51FF7C77075677452A2B7F9E959DDD1AC72AED2B0AC06B1270BCEAF5442FE0DA
            95979BD77C20EAE695D907077272736B05AA9DEE8E430D69D9E51BB27D720E34
            13B5CE287CD7FCA417BB6FBB260107BC8E079A4723AA7C19DF295237DF8F062A
            B90E56CB964A1E291596DB22B7A6A6766BB4BA4622919552D323A5AA87773D98
            F26BE96476340359605B9396366AC46D3FD0EE88EC9A9A9A7BDDE0921FED0DF9
            CF4E3ABC7B7484B43E2B2BAB522AF079BB9300999C979B13E5711F21D57C5735
            E4C72A543D7F1D4572ED903F2D6BA4D6FBB0A857B76BA1AC6CA55B5AE9FE77DA
            B9503CD299A041D1AABAFED53D2890C0DEBAE201EC3D3918EB65AFBC6C778CD4
            C96B5A8239EE0056AB5F45171517CF720F0C49E03F6ADB8D67C8F78B93439418
            F78216756F72778A3CDECB1212824354CAF06793989898A0596B0F639E7547ED
            139B39FCA57B25BC8B035AD3CB17A8B460FCCEA63C8DF4A7E5901CF12AD0DD18
            2D68B7ABEEFF70D95BF76B86E84D11E38D7DA9C18FD8D2CAD93930F760B44D70
            A06A06BBCE6E8F80F62F6FA13ACEA8023C9AF57DCD05AC9D6969698571AECA90
            15A7813241607AD5482DDA26557FADB7D433642CEE3B233944B3F990C1EE047D
            04B1F460EE04D95A01B5678BDD26D95E3F9634F3BECEE81B1243932233336B92
            BDD08CDAC8CFCF3F726872EF3D97BC045FA034C9971012E91A4C1CE202B5187D
            AE4B0ABF20291C1AE262BCEC7AE3404141117BADEC2F697E9D929A32247BAA7A
            2B332539C1B7A0366DC9AD65FE1D2BCA030FAF0807BF1E4A0E0CE95291FC5AE5
            1A242F18A9C556686DEF39D643421C3880BAD3B2C7321B5815E1F0CA40707835
            C6A89444DFE2868CCD2BCBFC5D2BCB035DCBC3098F86520243EAD9D79A664060
            DAB7D483DBA1B0B0E83FE2C056AF08BCEDE170E526DB16D11EAB73879B3300EB
            E6868CADB795FBBBBE5C11E85A1D4978BC748881B5D73717FA8219347B0DF8D0
            0DC3DD362F7F714033427F4545055F2A77AB42ECAB6C7D2738DCCC494E0CFACE
            294D9D75719E6FF5CC7CFFAA1905C1AB721303436D66F9E418FDB00DACE29292
            AF0E77DBBCFCC501CD9E92E5F3D9B7788B4D929B9B5B3658E6B4A70726CD2E0A
            AEB9B430B846D7D5C785FC95769EC94941DF7965A3665E3226B062564160F9AC
            C284B97949430FAC9C9CBCC9AE1DB09BD4E6C136CF7BBF2F0EE8CBE274AD0FFE
            E11D5558A575B551D97DBDD757FC07B2FCE7AF0F4BC549CDADD37566A57FB2FD
            4E3C5421E5656466D6F085B6A5EA7FE039E0FBEABD21884F4B4F4FABAEA9FDBD
            B5FCB19D8D7E83CDFA842CFF79D84ECB6598AFAEF0775D14F1F7705F741BEFF5
            7B8D77CD0ABB560C83F14E1B34332C11B09EB380758F27B106DBBB31BC2F2627
            6AA7E5AF2C603D20600D5A571C9F9370C2CACAE4079644921E585E99FC930F97
            2734DAD549494AF05D5D9BB1685938E9C1A54A737338657D71D2D0BA1B284F9B
            000BB443E3CFB40F5BABACACFCAE8371992A86AE1C594960B27630FCC802D643
            49C9C9835EAC9D9415AC991B4A9C795949E28CB9A1A48B4ECC4928B05B9E24E3
            FD82F251EFBBA22471E6E5A24F17279D9E97E81FF2DDA9925845DA5DFAAC0156
            7171C96D23AB070ED1DAEC5D27ACB8D302D6E3925819D19ACBF45D6B7027EBB3
            F6EB440BB4BE78A57667464D3B4D36D61AA9427C54B7E91ACDC6BAA92163CB2A
            A9C25B95666538E1B158DD0D25254D21953D8F3AE8B3FD795A5C3EAAB7EED107
            1761E324456269A9EA3F0FD1AE1C79CDD287A00BCC949C4FE835CABB179FD9DB
            A40D72FBB6CD38D26DAB39C4A3AE6EEC4BFAEE30EAB61AD958E7BE636305DEBE
            308A8D75637DC6DDC6C692837447AC0ED233CF9C3ED1D481AB16976F315C15F8
            FD5AB62935EA4E9EF636F30D220E526DA9F9D8C8EB8143B446520FFBB6CCC81E
            F987768CD6481235E80B670EF3B8D934DB916E1B0D08F549FD2E7D251DF5408E
            F767F9A7AFAA08BCB8AC3CF0E2AD1581E76754F83BDCB3C2450D995F5D5EE67F
            F116A559164EBC4FC08A69D270C6196774A80EDD1FAC5217571DFD52EDDF29AF
            A8B85D83429F46161E6F0D9A373988E410EDC691D72C2D423768549B7319DE92
            31BF5E9DB18B0E91345B3A1060756627965E5E9172CA27CB934FB92C9C72D2D4
            DC841E5B8313B5C9E09C705AC7ECF2E45349F38970CA31F9C98198B6AAF6012C
            9F54E456A49380F79876347C739F9AD70123C92929A3475E0F1CA235E2137931
            FF9168DFE609584B0602AC69D9FE8FAE09075F5B51117CEDB670F0EF1754FA27
            DAEC4B95BBE186FA8C6FAE2A0FBCBE52695644121F8CD5C68A01589BA37C10A2
            238FBC19615C218C512EA3F65DFBDD1D89352060B96CAC7FCBC63AC2AD0A6563
            7D772036D6408125957F715C19EB15E6F3E5E6E51D57555DDDE34499C1004B9E
            F7733784FDDDCED1F561FFDB33ABDEED205DD29071F79A729F16A1B5101D09EE
            186689F58AECC62AAFAFE3C80167EBCC35D1D4472CAA9013B3D3137C2919417F
            FA5EF2A556A50622C7E5249E3D7574E247753DAB2EC79F6F37892F7F8E1E937A
            CCD4D109E728CDD95373134FC848EC696325067CFECCA03FCDC937233DE84BE2
            9CA4014AACB7B4B3E1237164AB57145FE8545656473D00A42F601515870ACB72
            93B50566D4CAC5A1C0138B4B834FDC50EAFFC6848AC253EBC6B73E5ADFD2F2E8
            B8D6D6874BC3911EA7BFF0C1437D73F3978887C636B7DC91E23A13627296BF70
            6945C2CF6F549E5F14CD2B097C3A45C83A7DFFB3428CF7A836960CF99FB1D2E0
            F5789C38A083FEA7BBA59599CAF705ACC2E292C2CABC54DF9AA6F4BB5796EE75
            762E2FF73D34B9BAF8C2B68913BB3A3A3BBA264E9AD855DF50DFC3C6A27FDB3B
            DA37110FB577743CA2C5EF1E1BFDDE93E52FD504E06F385965E47709B80B39DA
            6D20C072B604BD2175E8B91BE2812B7C531AE1ABDD33C27E012B3FD5B7B6397D
            AB01D68A72DF76016B860B583D16A11D607DCF02D6E36E604D15B0D66A460958
            578B6E2A0D2C1A0CB0183CDA9F353B1E7C3DECCB60A39F54C4B68102AB38142A
            CC4B4DF25D5D9E72D6FC52FFC2F9A581055785FC1735860A5A6BEBEBE7D7D6D5
            5D57DFD030AFACB4341494B40988B826CAC6AAAAAE3AAB6E6CDD02D1FCCAAAAA
            4BE4F6E8A1A6C667F933AF0F073F332F1498AF7C17CECAF74F25C10707A00ACD
            4091977ECD61DFE9F160005B64C4F4C7070AACA212D9586989BE0591944BAF29
            09ACBF36145C7F75B1FFB3ADA1FCC963C78D5B2B15B8B6B661DCAD27D595B5C9
            46BAE5F325C13BAE2D09DC714149CA1902DECC86868675A2B563EBEBAF91ADD7
            63F13B372F77747373E3D2C6710D6B9B1A1BD60988A7FA2561070A2C075C5B3C
            332B0EC8D2293269D5D5EF6CF4B301168BBBA1DBC6DAAB0AB7583616AAF022A3
            0A5B3B3BBB2E3CB2F1CCDB2AFCCF6979478BD2FEAE2BCB5317B6B6B77FDB5285
            8FB955A116BC439D9326BED28E0D36B1A3AB7542EB22F6E80F0658DAD4F87D6F
            A35F1C80A58ED2211AE15F0C54621960AD694EDF6C01EB172E60BD7DE1118D67
            7CB9DCBF0B435CD7AE3965A90B04AC3B2D603DEA0696BE0B0CC9F07FB93BCD5E
            605D3F5860C99EFC96B71F2B3EC0E29C83BB060A2C54616166926F515DCAE76E
            2CF56FB9B12CB0E5FA52DF8D6DA563DEDBD0DCBCB9B1A971D3D8A6A66F9FDE18
            3EE2A632FFDA1BCA029B75DD726969EA590D4D4D73144F9ACD4D4D4D4BA50A7B
            AC156A0637BAA9B9E976F2686C6EDC5C5B577B36A018A8C472BED2B93E0E6CF5
            8A8003FA1789B9037537C8E9589820D7417D55E4E4A6EAC89CC69AC815632BCA
            A61715148CD34E89CBF5F72897C9A3FFC9EA48B87A5C55F8A2C6EAC8E54D3595
            736A2ACA26852391698ABFC2A1E9FAECAC590BE0574A824297E964E41A9D793A
            43F1972BAF39DA497104CEDC8138488DF12E29789AD7EB71E280B6EF8E37DB50
            FA6B63099485DAFFE4EBE89CB8A55DB654FBC4CEAE96D6D6ED32B46774EAB751
            75471E35F9CCB6F68EE748D321FF968CF5856D6D6DFB6CAC096D13B64B227D1C
            9F9779AFB6B6F6437AFF054B150ECAC612389F95BA1D1327B67AC5C86E096A47
            A6B69AF4FCD3CA588C7780A5CEF27576767E570E4F01ABBDAB657CCB83955595
            176017B577EA5967FB1B474E3EF28302D233DC039CB163C75E3761C2843B9C78
            ECA7076B6A6B2E36EFB475B4BDA92DC56728CF5DDD6994EFF8D6F10B076A6339
            6AF0A03EE8E4A044AABE253C46CCFFD74024966C235F6B6BEB06499DBF40B28B
            EE8E54463ED2D6DED67D2F7A4600F980D2FC927B3DDF5D57573767FCF8F1AB74
            BF9B6702E32649B973CC3B02DA4EA9C01315F7B093C7EEE696E6B98300D66E49
            D61EDF361E941D75B055DAD91DBAC4753A0B1BFD62DA36A3297CB67C62850EE5
            C857946ADD17E83E45F7F9E699D2A727A72467F5E71DA54D1F888DB5F7CC86C2
            8F1F6C7D72C8D4578768A4737EA7FD497AACC08A2713FA63BCB3275E2E8695DE
            B958F1ECA1286549ADE5095CDDBB0362B1B17ADBF33E9CCD881558804A1B1857
            4905C6B4977E38EBECE52D0E4872A5C9985F2C2FF51BDA75B9D230A53F1F530C
            2723FB0296EA7E6F4D75EDCB725F7CDA9354C3D91303C81B23392F2F7FAA4EF6
            9BEE02D6BEBD4EFA4A67F7819058D3A77FA8D31CF4E17CA5F325AB8E81C2C2E2
            195959D92D07F3519703E8B283F715678BCD72016A674D6DDDB3F5F50DBF92BB
            21EE7EA1A38F3EBAA5AEAEFE4FD4813F1D97649A7BF0727564D63C5DD582863B
            B023982F9E476936E7D7D9EF49FAC2382B3D3D335B926D788FFE8BD232013C41
            E58F16E5A82E99C354079697A27EE5DD4F6663DF91CF01D9B9CA26B83B45DF12
            45FAA8386720CC11DD277A5AF48C689BE8F3A2925EDEBDCEC9FF6A2B9EDD9AA8
            10CABD5D14EDC3D3B17ABE48F4A0E8CFA2FF136D11CD10453BD6913F435AE7E4
            797994BAC0646C36CAECCFA981E4C53BCB44D1CE95E0CBEDFF76D29CEA2A9725
            1CDE651F56A61587A4A5DDC49D6E3D67A05C2AFA85D3E69FE87A8E2BCF09CE7B
            DFD035DA5962B4F32C11FDF93B279F47745D2F7ABF68D8FEE2D855CFEE4A7439
            B4BF7F63E72FD2FE64A535EF982B403BC59DB9EE1F72DEF9B115C717CEE63D00
            E7963CB3F5ECA5FD94B55D714DAEB200FD3F9C77DED4F568573CD27597130F48
            6209488E5FF7C19F0BAC78F7463EDA463B698BADB619C0FF76E2AEB12A32BF97
            36E3CF33B3CB93AD34EE7F7285273FDB0FDFA8CB5DA28A581A3FD83418C814F8
            B688D1102D9CA887AF59E97EA4DF5F74689BF32E7990C6FD1F7D008AB81F3819
            737E81612A23DD0DAACF588C01281B459CDDC919093BAC38808C5433818E7BC1
            8A077CF6E9CB00CB0C8C9BA2B6F2DD0FC973B79527D2D71D90A266902061ECF0
            5927EE395DED2F85C2BA3783E02AE785525D5F71D2FF4A57061F1287BC9138B9
            4EBA0F38CFFEA5AB7D3C13BF91ECA62E8FEA37121ADE7D4DF4BC15477EC3FE77
            777D010BE6D28954F8AF2244B72D4EF97DA6E86F4E9A9DBADAFF2A6180B549CF
            5BAC740FEBB7FB9373CE1F856194F5B8C82D4119B5578A9048A4F9A1C8D80F6E
            60116FABDF81008B81F696D52174B8AD0E51457BACF827F5DB5679FD0116BC61
            70536F331B26FFE522DBCC88062CEA64F80C6F98508C12D98133E6011AF5E54F
            A3623A52C09547BF6EFB021636068D45CAECEFDB3854AAE9043ADF04D3603A65
            87931720748B71D233B28CEAE871589AAB458C423332CDDFCED9C0321DF477A5
            332A7320C0B2CD04CAA3D3EC2F6DE820DB24785DF7B5565DFB032C24C8134E7E
            48143B1FBBF9D180F55EAB1E0BFAE87D5BCAF70B28FD4DDC17B0BEEF541A09B3
            3F941387D16924891B58A603FEA9880F47A9248C653240BA0D7D3482E38B909E
            A44525136C606DD43D9293F87B451CAAC608EEAF2AA493C8033562EC33FB8CAB
            EF39F1BFD7F555E7F734ABEEFD0116AF21F9CDE07C4ABF8F89C28768C0620321
            F5FC8BA8C721737DF07158A3F7072C442C4CA3D2B11C25FD158BD14665188965
            8005C3A2E97756FF9130A4FB541F2D46FD1A1023E50836B0E6E9DE36AA393701
            5BAEBFC0FA8E531F666FCC62A9DBFF3A7995EBFAB2F38C4566C3A7D956DDFB0B
            2C5EBD4484E4A3AC3D22F7995AD180F55F4EFAFBFBE05B5CA3FB02D66F9D4AC7
            022CD3408C4E37B030568DD18EDDE00ECC948CF16A774E346600925F3AF58A06
            2CDC14A4C12D6246322AD118C3B118EFD4FF31E77D24021FBD92D71B22D4C9F9
            56DE48896DCEFD5AABC2030116AF63C79A890812EC222BCF68C0DAE094FD4034
            661DA8677DA94233EB61DABD3F471BEA063BCAA81FD31E23B1EED103CEE0241E
            669DE26A308EBCA79C78668BFB0B18B52F3969173B096D8975A3F3AC45572305
            29BF3F128B599A29031001347C69D41F17C146E7F71D4E59EB9C7BDA6B263706
            58A8D13CAB41F6AC309ACF8DA4ADA23F38792219AB9DF7A301CBB829300F7AF3
            27F6C1D2A18FB6814563DC81FF7F819918C438277B0B30DF48249CA82618606D
            D5831C8B594FEAB7FBA8C7F54E5948AE1E675AB90A356A897A4D75E2A2018BA8
            6B9D3C4D1BB8C622B1381BDEBC63BEA46656656C2E0358338333931C66D06666
            884A273D93157BA65CA17B63937DC26A1BB35E1B804C148C5BC2FC0F4F34604D
            513A3361313667B47E423030F38E4BB0814567263B64A4132E01A34260063680
            3D95253DA2DAA831186B1B906E3FD6F18A479DC070D498EDBA68B618493E30D1
            F67365EBFE0B2203607C63E6B4E3DE80852F0BBBC8D878B1028B369116A9C554
            9DC00CD474A051B1944BC0D7C733ECA37AE719C6B801E7879C675C984D9A7C4E
            739E03DE9F8AB0934C9ED89DC68D63066B6FEE06A3F6E10D3C327E2F532CC728
            215DF1352204DCFE43AB7A43F3D3000B06302BFBA343DFD6D5CC028FD1EF3D0E
            934887ED813D85B1FEB0F59CD17582AB5A6E6011CDA8321D4D23ED304B370638
            5CB11B90645F171955C4BBFC36EA81F77B0316715344C63F162BB0906AA4B54D
            00D4B55D0763DF510676972903901150A766F68A3A631906BE1A6733B34DB39C
            C56CD3F08481BC41642604B664EECD410A986D07297DC9B20E2A1A73860162F2
            DFA6DFD196C59C6A0FCDE5A35681F6A8FE8D9EDBEE8563756F0C793B9DF90D13
            588B72879F3BF9DB5E697C4A468A004624951D98D1D91E6F7779E455E77A0729
            69D4CBD228F5B0D5275EFCFD05A4286550EEDDAE84AB2C7E21914C40FD3DE7C4
            7DDE7ACEC03140B2DB415DEDF791AC1BADBCEDB4D8A6A62F4EB6D2B8F9D6A238
            0662B4FEE119037583C848C43ED830B868BCCBB74621BCB76E718978451532EA
            58328060060BA7B66D60D7E83227EF4FBAAA893D87CDB25A8423D21D307059EE
            C05784171EC988518F9316F5EB0E48130C79DA62D48B9D86BADFECC47F30CAFB
            F623D42BE0202F66687630FC222FCC043B5CE9BC63EC2E13879A43EAEE103D22
            DA20EA71B492931029022FF1BDD1667C88D8B5F6A4699C530683239AA14E1EF0
            88593C3367F241C52E13A179467C6004EDCF613A940DA0A387DD2618CA0AF792
            176D889567C6761C4CB590BC4391CF60EAE0BDEB71607838C0822FF6C039228C
            4E02EAE83C1133A41657B1A4212D62D7D6D9CCA0CE1531F3418D3083C49640A4
            E301EF70F219EFE48D4F8AC08C143BCE04DE3BC929BBD17A8E2D83EA346A087B
            0DD5832BC3840AFD60D9C83869794E79EFB3D260EC9E27A24E178AC817154B5E
            D88AF6BBBC467B4DBB7807A39B3CB0794C404DB9272F948BC16D022E05EA962F
            4245624F921F7C44BAD0E6062B3D13811AD17B9CB4F4D1A9563C26C8D9A22CEB
            193F517BD8CFEED9A12BD9F0DF6294EE116D1731F3C1EF4263CDCCEC45FD361D
            43439E15B1AC8253F429116E04C229220C458C488C4EEC006624D86318C47422
            F615EFF3EE3611CC262DBE2E42AD08E39E0904F9307BBAD68983C9E44F7D0911
            113E25DB0767FC4D2CCE9A8037DE5EF2C079C92C8E3AFD8F08A050072621B4DF
            3D5B659050EECF9C77309C7101F08C4E277C4E449BEC00F098111A170C7CC235
            C340C05685AFD4811923F6113611ED66C0109881639FE2946586C96487B61B37
            8DA903003581C1B14BC48C9699EB0155875F5605308E41F83F455344F85E6824
            A317E379A188910B5018BD041AF819A721D9BA32C2768A30A6090094D9927132
            F28C91847F0600198663287F47841D02A36F17197F19EFD2394803241CF53353
            70DE6706D9E29447873D2962BA8D016BC27CFDF8A175CFC4E041EB9E72E94466
            8FE461EA6F9260F09327B337134CA7F21EA0C049CA40B003CFA98F012A75C20D
            4060C6B9C2558787744FDBF0451130C03FE5FCC660BFCB4A4FBF10FF94E84722
            6387D2565C160C96B8CC007B36B9E71D0C6524B1ECC12C02D10AB07066F28CE5
            0546292A8D916007240E6042A24D15BD2962D46F1421B1183DF8589E105D26A2
            73706ED2512D4E46000B86931E101927A32907D033B302580095110EE8799FFC
            4D3E009E518F33937466E6E406D6158AC30D409D00062A9C41811B6089C89E89
            510724B16917EF603A00247881940208481637B078779988199E714990170187
            E51EA70E383819486801F8C060C1FB8F8434C042127FD779970BA6037C3D4A44
            5B8DD466F0C303F232668DF55A7C7FD2B1348E69B0719EA1F29E16012CA41561
            A6880EB50340A1617426E08229D8152C49306A88631A3D4584EA2230DA00072A
            9134301F8622E1F68800B11D885B2B0258A88F26114CA7C3C8837B026DD82442
            3D997279EE06165216E64F111D2D326DA60DE48FEAB403AAF02F22EC2FDEC916
            21F5901480EC0511AE916DAEF7B89DE4D40555F994088011903E1B9DFC3A7545
            650154D41AF5A57EBF15C13B821B580C344C86294E5A5C202620A9E00FF1A63C
            2B3A7E3F5185E8633B7C4C378C461A8A44C2606664031C3A8611862D70930871
            8FFAC0F84412011C82518530CE044618D21095835AA5B3600A8C46B56E11DD23
            0270309B118E1D35455421428D0250C087444592E030E5193608D2F58F22EA6C
            24C875FA0DE850179401286CE982D4A503E910EC2F24AEB163F4D36754A16917
            CFF0751975CAC04385D9EA963404A41FB6EBEB22D49909A842FB9EBA618BCE12
            3191E03779724FB08185D18EA4A69EB415FE2349E913EC3A06169300EC48F720
            B5AA30FC3FD7A9883B5DC59CE7541A89C4C8C1802460EB9806195532D1893B4D
            578C6DDBC6C2E844F299D147C3910A4842800B939098481A02EAEB5E1100C556
            40227DC289034080C7A8CA79FA0DF3AB45742E360AD287CEAC11A15651110C04
            984C1DE828D40B80E49E3A902F1D4D59D05CA73C73A15D948371CF3B4863F2C4
            C62130C09030B6DD666781B4E27D069509D894981FE487690028D006A85402AA
            8EC99391580C7E061DE112D153A26C116DCD1751EF339DF7E13960DB2AB2ED42
            5376DCAE635552A3AB342406AA9180A1DD61C56383614F4D71559C06C2BCA093
            96118EAA018CA847F2210084E345C66D40F9F6C862F422E5A689909226C024BB
            4C240D1DC0733A9B7CED40FD791F158A9AA60E55CE33738FC4048C4847F2261F
            77A05DA849EA431E48DB72116AD00424A6CD233B0F26454811406002FC8607E4
            471BE01903D4B68BA8BFB907FC8647BC6BD4BFC98F01441A02E9E81FA3E2EDBA
            78BF3D0E781CF038E071C0E380C7018F031E073C0E781CF038E071C0E380C701
            8F03079A03FF0FAAA579219E18F5490000000049454E44AE426082}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object FrxSeries: TfrxDBDataset
    UserName = 'FrxSeries'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_SERIES=COD_SERIES'
      'COD_ARTI=COD_ARTI'
      'SERIES=SERIES'
      'ESTADO=ESTADO'
      'NO_FACT=NO_FACT'
      'IDDETALLE=IDDETALLE'
      'PRECIO=PRECIO'
      'ITBS=ITBS'
      'TOTAL=TOTAL')
    DataSet = datos.Series
    BCDToCurrency = False
    Left = 128
    Top = 140
  end
end
