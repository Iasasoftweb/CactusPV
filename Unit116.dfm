object FrmDetalleFact: TFrmDetalleFact
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Control de Detalle de Factura'
  ClientHeight = 482
  ClientWidth = 790
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 5
    Width = 777
    Height = 428
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid3DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = DsDetalleFacturas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Total ITEMS =,0'
          Kind = skCount
          FieldName = 'COD_ART'
          Column = cxGrid3DBTableView1ARTICULO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Data'
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGrid3DBTableView1COD_ART: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'COD_ART'
        Width = 88
      end
      object cxGrid3DBTableView1ARTICULO: TcxGridDBColumn
        Caption = 'Productos'
        DataBinding.FieldName = 'TITULOPRN'
        Width = 259
      end
      object cxGrid3DBTableView1CANTIDAD: TcxGridDBColumn
        Caption = 'Cant'
        DataBinding.FieldName = 'CANTIDAD'
        Width = 39
      end
      object cxGrid3DBTableView1UNIDAD: TcxGridDBColumn
        Caption = 'Und'
        DataBinding.FieldName = 'UNIDAD'
        Width = 39
      end
      object cxGrid3DBTableView1PRECIO: TcxGridDBColumn
        Caption = 'Precio'
        DataBinding.FieldName = 'PRECIO'
        Width = 96
      end
      object cxGrid3DBTableView1ITBS: TcxGridDBColumn
        Caption = 'Itbis'
        DataBinding.FieldName = 'ITBS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object cxGrid3DBTableView1TOTAL: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TOTAL'
        Width = 105
      end
      object cxGrid3DBTableView1NO_FACT: TcxGridDBColumn
        DataBinding.FieldName = 'NO_FACT'
        Visible = False
      end
      object cxGrid3DBTableView1NO_FACT1: TcxGridDBColumn
        DataBinding.FieldName = 'NO_FACT1'
        Visible = False
      end
      object cxGrid3DBTableView1MASTERID: TcxGridDBColumn
        DataBinding.FieldName = 'MASTERID'
        Visible = False
      end
      object cxGrid3DBTableView1IMPUESTO: TcxGridDBColumn
        DataBinding.FieldName = 'IMPUESTO'
        Visible = False
      end
      object cxGrid3DBTableView1ITBIS2: TcxGridDBColumn
        DataBinding.FieldName = 'ITBIS2'
        Visible = False
      end
      object cxGrid3DBTableView1UNID: TcxGridDBColumn
        DataBinding.FieldName = 'UNID'
        Visible = False
      end
      object cxGrid3DBTableView1COMBO: TcxGridDBColumn
        DataBinding.FieldName = 'COMBO'
        Visible = False
      end
      object cxGrid3DBTableView1LINEA: TcxGridDBColumn
        DataBinding.FieldName = 'LINEA'
        Visible = False
      end
      object cxGrid3DBTableView1ARTICULOID: TcxGridDBColumn
        DataBinding.FieldName = 'ARTICULOID'
        Visible = False
      end
      object cxGrid3DBTableView1Column1: TcxGridDBColumn
        Caption = 'Selecionar'
        DataBinding.FieldName = 'OP'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.OnChange = cxGrid3DBTableView1Column1PropertiesChange
        Options.ShowEditButtons = isebNever
        VisibleForEditForm = bTrue
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 288
    Top = 440
    Width = 225
    Height = 34
    Caption = 'Procesar Selecci'#243'n'
    LookAndFeel.SkinName = 'Caramel'
    OptionsImage.ImageIndex = 978
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object DsDetalleFacturas: TDataSource
    DataSet = DetalleFacturas
    Left = 384
    Top = 133
  end
  object DetalleFacturasaa: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.articulo, c.unidad from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      'left join unidad_m c on a.unidadid = c.cod_unidad_m'
      'where a.masterid =:master')
    Params = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    Left = 280
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    object DetalleFacturasaaNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object DetalleFacturasaaNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object DetalleFacturasaaMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object DetalleFacturasaaCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object DetalleFacturasaaPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object DetalleFacturasaaIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
    object DetalleFacturasaaITBS: TFloatField
      FieldName = 'ITBS'
    end
    object DetalleFacturasaaITBIS2: TFloatField
      FieldName = 'ITBIS2'
    end
    object DetalleFacturasaaTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object DetalleFacturasaaCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object DetalleFacturasaaUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object DetalleFacturasaaCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object DetalleFacturasaaLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object DetalleFacturasaaARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object DetalleFacturasaaARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 45
    end
    object DetalleFacturasaaUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object DetalleFacturasaaTITULOPRN: TWideStringField
      FieldName = 'TITULOPRN'
      Size = 100
    end
    object DetalleFacturasaaANCHO: TFloatField
      FieldName = 'ANCHO'
    end
    object DetalleFacturasaaALTO: TFloatField
      FieldName = 'ALTO'
    end
    object DetalleFacturasaaUNIDADID: TIntegerField
      FieldName = 'UNIDADID'
    end
    object DetalleFacturasaaITBS_ART: TWideStringField
      FieldName = 'ITBS_ART'
      Size = 1
    end
    object DetalleFacturasaaEX: TWideStringField
      FieldName = 'EX'
      Size = 1
    end
    object DetalleFacturasaaIDALMACEN: TIntegerField
      FieldName = 'IDALMACEN'
    end
    object DetalleFacturasaaBARRA: TWideStringField
      FieldName = 'BARRA'
    end
    object DetalleFacturasaaIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object DetalleFacturasaaDESC: TIntegerField
      FieldName = 'DESC'
    end
    object DetalleFacturasaaOP: TWideStringField
      FieldName = 'OP'
      Size = 10
    end
  end
  object DetalleFacturas: TZQuery
    Connection = datos.Data
    UpdateObject = ZUd
    SQL.Strings = (
      'select a.*, b.articulo, c.unidad from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      'left join unidad_m c on a.unidadid = c.cod_unidad_m'
      'where a.masterid =:master')
    Params = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 288
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'master'
        ParamType = ptUnknown
      end>
    object DetalleFacturasNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object DetalleFacturasNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object DetalleFacturasMASTERID: TIntegerField
      FieldName = 'MASTERID'
    end
    object DetalleFacturasCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object DetalleFacturasPRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object DetalleFacturasIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
      currency = True
    end
    object DetalleFacturasITBS: TFloatField
      FieldName = 'ITBS'
      currency = True
    end
    object DetalleFacturasITBIS2: TFloatField
      FieldName = 'ITBIS2'
      currency = True
    end
    object DetalleFacturasTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object DetalleFacturasCOD_ART: TWideStringField
      FieldName = 'COD_ART'
      Size = 15
    end
    object DetalleFacturasUNID: TWideStringField
      FieldName = 'UNID'
      Size = 3
    end
    object DetalleFacturasCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 10
    end
    object DetalleFacturasLINEA: TIntegerField
      FieldName = 'LINEA'
    end
    object DetalleFacturasARTICULOID: TIntegerField
      FieldName = 'ARTICULOID'
    end
    object DetalleFacturasANCHO: TFloatField
      FieldName = 'ANCHO'
    end
    object DetalleFacturasALTO: TFloatField
      FieldName = 'ALTO'
    end
    object DetalleFacturasTITULOPRN: TWideStringField
      FieldName = 'TITULOPRN'
      Size = 200
    end
    object DetalleFacturasUNIDADID: TIntegerField
      FieldName = 'UNIDADID'
    end
    object DetalleFacturasITBS_ART: TWideStringField
      FieldName = 'ITBS_ART'
      Size = 1
    end
    object DetalleFacturasEX: TWideStringField
      FieldName = 'EX'
      Size = 1
    end
    object DetalleFacturasIDALMACEN: TIntegerField
      FieldName = 'IDALMACEN'
    end
    object DetalleFacturasBARRA: TWideStringField
      FieldName = 'BARRA'
    end
    object DetalleFacturasIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object DetalleFacturasDESC: TIntegerField
      FieldName = 'DESC'
    end
    object DetalleFacturasOP: TWideStringField
      FieldName = 'OP'
      Size = 10
    end
    object DetalleFacturasARTICULO: TWideStringField
      FieldName = 'ARTICULO'
      Size = 100
    end
    object DetalleFacturasUNIDAD: TWideStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
  end
  object ZUd: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM detailfact'
      'WHERE'
      '  detailfact.NO_FACT = :OLD_NO_FACT')
    InsertSQL.Strings = (
      'INSERT INTO detailfact'
      
        '  (NO_FACT, NO_FACT1, MASTERID, CANTIDAD, PRECIO, IMPUESTO, ITBS' +
        ', ITBIS2, '
      
        '   TOTAL, COD_ART, UNID, COMBO, LINEA, ARTICULOID, ANCHO, ALTO, ' +
        'TITULOPRN, '
      '   UNIDADID, ITBS_ART, EX, IDALMACEN, BARRA, IDTECNICO, OP)'
      'VALUES'
      
        '  (:NO_FACT, :NO_FACT1, :MASTERID, :CANTIDAD, :PRECIO, :IMPUESTO' +
        ', :ITBS, '
      
        '   :ITBIS2, :TOTAL, :COD_ART, :UNID, :COMBO, :LINEA, :ARTICULOID' +
        ', :ANCHO, '
      
        '   :ALTO, :TITULOPRN, :UNIDADID, :ITBS_ART, :EX, :IDALMACEN, :BA' +
        'RRA, :IDTECNICO, '
      '   :OP)')
    ModifySQL.Strings = (
      'UPDATE detailfact SET'
      '  NO_FACT = :NO_FACT,'
      '  NO_FACT1 = :NO_FACT1,'
      '  MASTERID = :MASTERID,'
      '  CANTIDAD = :CANTIDAD,'
      '  PRECIO = :PRECIO,'
      '  IMPUESTO = :IMPUESTO,'
      '  ITBS = :ITBS,'
      '  ITBIS2 = :ITBIS2,'
      '  TOTAL = :TOTAL,'
      '  COD_ART = :COD_ART,'
      '  UNID = :UNID,'
      '  COMBO = :COMBO,'
      '  LINEA = :LINEA,'
      '  ARTICULOID = :ARTICULOID,'
      '  ANCHO = :ANCHO,'
      '  ALTO = :ALTO,'
      '  TITULOPRN = :TITULOPRN,'
      '  UNIDADID = :UNIDADID,'
      '  ITBS_ART = :ITBS_ART,'
      '  EX = :EX,'
      '  IDALMACEN = :IDALMACEN,'
      '  BARRA = :BARRA,'
      '  IDTECNICO = :IDTECNICO,'
      '  OP = :OP'
      'WHERE'
      '  detailfact.NO_FACT = :OLD_NO_FACT')
    UseSequenceFieldForRefreshSQL = False
    Left = 330
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NO_FACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_FACT1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MASTERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBIS2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LINEA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARTICULOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANCHO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TITULOPRN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDADID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITBS_ART'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDALMACEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTECNICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NO_FACT'
        ParamType = ptUnknown
      end>
  end
  object numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select gen_id(GEN_CONDEM_ID, 1) from RDB$DATABASE')
    Params = <>
    Left = 360
    Top = 312
    object numeroGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ReadOnly = True
    end
  end
end
