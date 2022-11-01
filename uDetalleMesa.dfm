object fDetalleMesas: TfDetalleMesas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Detalle de Mesas'
  ClientHeight = 506
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 419
    Height = 448
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Office2013White'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSdetalle
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Total de Items =,0'
          Kind = skCount
          FieldName = 'MASTERID'
          Column = cxGrid1DBTableView1ARTICULO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Existe Data'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 61
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
        Options.HorzSizing = False
        Width = 61
      end
      object cxGrid1DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Nombre del Articulo'
        DataBinding.FieldName = 'TITULOPRN'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 225
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
        Options.HorzSizing = False
        Width = 225
      end
      object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
        Caption = 'Cant.'
        DataBinding.FieldName = 'CANTIDAD'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 30
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
        Options.HorzSizing = False
        Width = 30
      end
      object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TOTAL'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 100
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
        Options.HorzSizing = False
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 80
    Top = 462
    Width = 265
    Height = 36
    Caption = 'Cerrar'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360900000000000036000000280000001800000018000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      00000000000000000014000000FF0000009B0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      00000000000000000014000000FF0000009B0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000E7000000000000000000000000000000000000
      00000000000000000014000000FF0000009B0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000001D000000030000002C0000005F00000092000000C40000
      005E0000000000000014000000FF0000009B0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000074000000F5000000FF000000FF000000FF000000FF0000
      009F0000000000000014000000FF0000009B0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000005B000000C900000095000000610000003B000000FE0000
      00D90000000000000081000000FF0000009B0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000007000000000000000000000000000000DD0000
      00FE0000009A000000FF000000FF000000670000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000CB000000FA000000000000000000000000000000AA0000
      00FF000000FF000000FE0000006E000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000880000005E000000780000
      00FF000000FF000000EC00000000000000000000000700000049000000700000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000FF000000B0000000460000
      00FF000000FF000000FF0000001F00000063000000EB000000FF000000FF0000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000FF000000B0000000140000
      00FF000000FF000000FF000000C4000000FF000000E7000000790000003F0000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000FF000000DE000000520000
      00E5000000FF000000FF000000FF000000D80000001700000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000AC000000FB000000FF0000
      00FF000000FF000000FF000000FB000000310000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000000000001D000000850000
      00EA000000FF000000FF00000080000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0007000000510000004D0000001E000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      000000000011000000DB000000FF0000009A0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      00000000004D000000FF000000FF000000FA0000000200000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      000000000015000000E3000000FF000000A70000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000B0000002A000000010000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object DSdetalle: TDataSource
    DataSet = Zdetalle
    Left = 81
    Top = 368
  end
  object Zdetalle: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.articulo, c.unidad, b.itbis from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      'left join unidad_m c on a.unidadid = c.cod_unidad_m'
      'order by NO_FACT asc')
    Params = <>
    Left = 41
    Top = 352
    object ZdetalleNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object ZdetalleNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object ZdetalleMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object ZdetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZdetallePRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object ZdetalleIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object ZdetalleITBS: TFloatField
      FieldName = 'ITBS'
    end
    object ZdetalleITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object ZdetalleTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object ZdetalleCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object ZdetalleUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object ZdetalleCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object ZdetalleARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object ZdetalleANCHO: TFloatField
      FieldName = 'ANCHO'
    end
    object ZdetalleALTO: TFloatField
      FieldName = 'ALTO'
    end
    object ZdetalleTITULOPRN: TWideStringField
      FieldName = 'TITULOPRN'
      Size = 100
    end
    object ZdetalleUNIDADID: TIntegerField
      FieldName = 'UNIDADID'
    end
    object ZdetalleITBS_ART: TWideStringField
      FieldName = 'ITBS_ART'
      Size = 1
    end
    object ZdetalleEX: TWideStringField
      FieldName = 'EX'
      Size = 1
    end
    object ZdetalleIDALMACEN: TIntegerField
      FieldName = 'IDALMACEN'
    end
    object ZdetalleBARRA: TWideStringField
      FieldName = 'BARRA'
    end
    object ZdetalleIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object ZdetalleARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object ZdetalleUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object ZdetalleITBIS: TWideStringField
      FieldName = 'ITBIS'
      Size = 2
    end
    object ZdetalleOP: TWideStringField
      FieldName = 'OP'
      Size = 10
    end
    object ZdetalleLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object ZdetalleEXIST1: TSingleField
      FieldName = 'EXIST1'
    end
    object ZdetalleLEY: TFloatField
      FieldName = 'LEY'
    end
    object ZdetalleDESC: TFloatField
      FieldName = 'DESC'
    end
  end
end
