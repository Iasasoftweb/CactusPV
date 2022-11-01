object FrmDelivery: TFrmDelivery
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Delivery Realizados'
  ClientHeight = 470
  ClientWidth = 994
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
  object cxGrid4: TcxGrid
    Left = 8
    Top = 8
    Width = 537
    Height = 409
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid4DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid4DBTableView1DblClick
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
      OnCellClick = cxGrid4DBTableView1CellClick
      DataController.DataSource = DsHold
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No Existe Data'
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      Preview.AutoHeight = False
      object cxGrid4DBTableView1NO_FACT: TcxGridDBColumn
        Caption = '# Fact'
        DataBinding.FieldName = 'NO_FACT'
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 74
      end
      object cxGrid4DBTableView1FECHA_FAC: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA_FAC'
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 94
      end
      object cxGrid4DBTableView1CLIENTENOMBRE: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'NOMBRECLIENTE_PRN'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 170
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 235
      end
      object cxGrid4DBTableView1Column1: TcxGridDBColumn
        Caption = 'Monto Pago'
        DataBinding.FieldName = 'MONTOPAGO'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 122
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Width = 125
      end
    end
    object cxGrid4Level1: TcxGridLevel
      GridView = cxGrid4DBTableView1
    end
  end
  object cxGrid1: TcxGrid
    Left = 548
    Top = 8
    Width = 438
    Height = 409
    TabOrder = 1
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
    Left = 8
    Top = 423
    Width = 257
    Height = 42
    Caption = 'Imprimir Orden para Cocina'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000206348524D00007A26000080
      840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
      06624B4744000000000000F943BB7F000000097048597300000EC400000EC401
      952B0E1B000001084944415448C7ED933B0AC24010863F88A8682744C5DE2378
      064144F0725E4011B5F0D16821F68256C6077A15412D9285B06CF691585838B0
      B0C5FCFF37333B0BFF708C265075D4F48115F00076404F977C00024B48095802
      6FE9BC80AE4AD08825D940C60A7371B62A414B4A3A6B201D8DF91BB8A84465E0
      A980D414B953036091D4F620A11A19723400121FBA006C2C200B8DF9DCF07614
      81B546E8474095F98870BB8C2143AE403D320F625DCD813D3001DA36C6F1C813
      7EA03BE10AFBC02932BF45C0CC51205CD578E5E29FF8DF0088990BF340BA6786
      A8C6F2B551E98C32436C0C52435C84CE900AEE8F282F414597EC01C31473159D
      CC809C29D93355A1E9DE4BA1FBF1F800EA5F8B6CF386B3640000002574455874
      646174653A63726561746500323032302D30392D31355432333A35353A35392B
      30303A3030398269A80000002574455874646174653A6D6F6469667900323032
      302D30392D31355432333A35353A35392B30303A303048DFD114000000197445
      5874536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00
      00000049454E44AE426082}
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton1Click
  end
  object BtPrintTicket: TcxButton
    Left = 271
    Top = 423
    Width = 274
    Height = 42
    Caption = 'Imprimir Ticket'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000804944415448C7ED94510A80
      2010449F121DA2A34407B483DA35EAA328B3506B33307AB05FC2ACB3EB083F11
      54E06C7C424BE776507E8357A9811E1898177CA72C6016AD034620EC97396B60
      85A22DD0394E80FD921BE188355B16562D371C57831543F90EB250A5DE2440D0
      79F9497647E48FA28CDF3465C9A2E7FBADDFB44C26FDEF3B6031133A13000000
      2574455874646174653A63726561746500323032302D30322D30345430303A34
      373A30372B30303A30303BBB7AF10000002574455874646174653A6D6F646966
      7900323032302D30322D30345430303A34373A30372B30303A30304AE6C24D00
      000028744558747376673A626173652D7572690066696C653A2F2F2F746D702F
      6D616769636B2D44774A65307644517A72F32A0000000049454E44AE426082}
    TabOrder = 3
    Visible = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtPrintTicketClick
  end
  object BTPreFactura: TcxButton
    Left = 549
    Top = 423
    Width = 216
    Height = 42
    Caption = 'Pre Factura'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F80000000467414D410000B18F0BFC6105000000017352474200AECE1CE90000
      00206348524D00007A26000080840000FA00000080E8000075300000EA600000
      3A98000017709CBA513C00000006624B4744000000000000F943BB7F00000009
      7048597300000048000000480046C96B3E000000CF4944415448C7ED944D0AC2
      301484BF76A10B77E246172578094105AFA73D820BCFD28B88B8B08770D32E7C
      C15862D234AD5070E0D1BF74E6BD49A7F0870789E359D507573AF404E317F829
      A6400E94BC36B84B95C00998D804F208E2661D6D02319D57C016D8CBF943939A
      9BBC8CB438E59D8595BE69862334583E24CD09BAE0095CC49A05300776C03964
      02D7EFC48BA182A6A43EF0EDEB0845065C813BB0762D6C2390018541A4C9ABBE
      040A5973030E72D4D7CAF3AE3354334BC7BABC9DB711D8583C0F220F8512BBBC
      B68C0F35D54C693BCA7435770000002574455874646174653A63726561746500
      323032302D30322D30345430303A34363A34352B30303A3030C7AC0E1C000000
      2574455874646174653A6D6F6469667900323032302D30322D30345430303A34
      363A34352B30303A3030B6F1B6A000000028744558747376673A626173652D75
      72690066696C653A2F2F2F746D702F6D616769636B2D597439564F6277551C66
      6A3B0000000049454E44AE426082}
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BTPreFacturaClick
  end
  object ToggleSwitch1: TToggleSwitch
    Left = 912
    Top = 256
    Width = 72
    Height = 20
    TabOrder = 5
    Visible = False
  end
  object HOLD: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'WHERE a.situacion='#39'DELIVERY'#39)
    Params = <>
    Left = 220
    Top = 112
    object HOLDNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object HOLDFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object HOLDTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object HOLDCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object HOLDCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object HOLDNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object HOLDMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object HOLDHORA: TTimeField
      FieldName = 'HORA'
    end
    object HOLDPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object HOLDTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object HOLDMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
      currency = True
    end
    object HOLDCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object HOLDRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object HOLDCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object HOLDTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object HOLDVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object HOLDSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object HOLDCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object HOLDNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object HOLDRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object HOLDNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object HOLDNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object HOLDDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object HOLDROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object HOLDNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object HOLDMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object HOLDCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object HOLDINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object HOLDDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object HOLDPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object HOLDLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object HOLDCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object HOLDTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object HOLDEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object HOLDDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object HOLDRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object HOLDABONO: TFloatField
      FieldName = 'ABONO'
    end
    object HOLDCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object HOLDNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object HOLDPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object HOLDMESES: TIntegerField
      FieldName = 'MESES'
    end
    object HOLDDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object HOLDPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object HOLDESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object HOLDDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object HOLDCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object HOLDCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object HOLDCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object HOLDQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object HOLDUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object HOLDCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object HOLDCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object HOLDTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object HOLDPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
      Size = 22
    end
    object HOLDNC: TIntegerField
      FieldName = 'NC'
    end
    object HOLDCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 40
    end
    object HOLDNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object HOLDNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 35
    end
    object HOLDFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
  end
  object DsHold: TDataSource
    DataSet = HOLD
    Left = 276
    Top = 86
  end
  object Zdetalle: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.articulo, c.unidad, b.itbis from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      'left join unidad_m c on a.unidadid = c.cod_unidad_m'
      'order by NO_FACT asc')
    Params = <>
    Left = 736
    Top = 160
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
    object ZdetalleADICIONAL: TWideStringField
      FieldName = 'ADICIONAL'
      Size = 50
    end
    object ZdetalleDESC: TFloatField
      FieldName = 'DESC'
    end
  end
  object DSdetalle: TDataSource
    DataSet = Zdetalle
    Left = 824
    Top = 128
  end
  object Actualiza: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 480
    Top = 192
  end
  object SqlBuscarCocina: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select * from ENVIOCOCINA')
    Params = <>
    Left = 604
    Top = 72
    object SqlBuscarCocinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SqlBuscarCocinaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object SqlBuscarCocinaNO_ORDEN: TIntegerField
      FieldName = 'NO_ORDEN'
    end
    object SqlBuscarCocinaHORA: TTimeField
      FieldName = 'HORA'
    end
    object SqlBuscarCocinaCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 30
    end
    object SqlBuscarCocinaORDEN: TWideMemoField
      FieldName = 'ORDEN'
      BlobType = ftWideMemo
    end
    object SqlBuscarCocinaTIEMPO: TIntegerField
      FieldName = 'TIEMPO'
    end
    object SqlBuscarCocinaTIEMPO_RESTANTA: TTimeField
      FieldName = 'TIEMPO_RESTANTA'
    end
    object SqlBuscarCocinaESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object SqlBuscarCocinaMESERO: TWideStringField
      FieldName = 'MESERO'
      Size = 50
    end
  end
  object MCocina: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'MCocina'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'FECHA=FECHA'
      'NO_ORDEN=NO_ORDEN'
      'HORA=HORA'
      'CLIENTE=CLIENTE'
      'ORDEN=ORDEN'
      'TIEMPO=TIEMPO'
      'TIEMPO_RESTANTA=TIEMPO_RESTANTA'
      'ESTADO=ESTADO'
      'MESERO=MESERO')
    DataSet = SqlBuscarCocina
    BCDToCurrency = False
    Left = 480
    Top = 96
  end
  object DCocina: TfrxDBDataset
    UserName = 'DCocina'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'NO_ORDEN=NO_ORDEN'
      'PRODUCTOS=PRODUCTOS'
      'CANT=CANT'
      'ESTADO=ESTADO'
      'IDMASTER=IDMASTER')
    DataSet = datos.SqlDCocina
    BCDToCurrency = False
    Left = 630
    Top = 136
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
    Left = 192
    Top = 160
  end
  object master: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'master'
    CloseDataSource = False
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
    Left = 152
    Top = 160
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
      'ADICIONAL=ADICIONAL')
    DataSet = datos.Zdetalle
    BCDToCurrency = False
    Left = 262
    Top = 168
  end
  object PrintCocina: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 42882.461021400500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 144
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'Config'
      end
      item
        DataSet = DCocina
        DataSetName = 'DCocina'
      end
      item
        DataSet = MCocina
        DataSetName = 'MCocina'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'titulos'
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
        Height = 22.677180000000000000
        Top = 364.800000000000000000
        Width = 336.000217000000000000
        DataSet = DCocina
        DataSetName = 'DCocina'
        RowCount = 0
        Stretched = True
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 82.795300000000000000
          Width = 194.494620000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          AllowExpressions = False
          DataField = 'PRODUCTOS'
          DataSet = DCocina
          DataSetName = 'DCocina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DCocina."PRODUCTOS"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 37.959060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CANT'
          DataSet = DCocina
          DataSetName = 'DCocina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DCocina."CANT"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 336.000000000000000000
        Width = 336.000217000000000000
        DataSet = MCocina
        DataSetName = 'MCocina'
        RowCount = 0
        Stretched = True
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 291.744960000000000000
        Top = 451.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 90.217440000000000000
          Top = 10.198330000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'MESERO'
          DataSet = MCocina
          DataSetName = 'MCocina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MCocina."MESERO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 42.179530000000000000
          Top = 8.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mesero  :')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 2.307050000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 252.518120000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 31.488250000000000000
          Top = 138.570130000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = MCocina
          DataSetName = 'MCocina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MCocina."FECHA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 31.256710000000000000
          Top = 205.822140000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 82.692950000000000000
          Top = 206.381200000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = MCocina
          DataSetName = 'MCocina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MCocina."CLIENTE"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Top = 225.330860000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 31.800000000000000000
          Top = 230.330860000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 68.847310000000000000
          Top = 230.330860000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.379530000000000000
          Top = 247.718120000000000000
          Width = 321.260050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 129.894620000000000000
          Top = 138.622140000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = -15.015770000000000000
          Top = 13.600000000000000000
          Width = 249.600000000000000000
          Height = 28.800000000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."EMPRESA"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          AllowVectorExport = True
          Left = 53.281880000000000000
          Top = 86.738590000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."RNC"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = -15.338590000000000000
          Top = 39.000000000000000000
          Width = 253.379530000000000000
          Height = 49.738590000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."DIRECCION"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 30.661410000000000000
          Top = 86.738590000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC    :')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 63.943290000000000000
          Top = 69.538590000000000000
          Width = 94.261410000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."TELEFONO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 28.881880000000000000
          Top = 69.538590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 26.261410000000000000
          Top = 111.820470000000000000
          Width = 245.744960000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEN COCINA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 101.626840000000000000
          Top = 158.181200000000000000
          Width = 98.267780000000000000
          Height = 45.354360000000000000
          DataField = 'NO_ORDEN'
          DataSet = MCocina
          DataSetName = 'MCocina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MCocina."NO_ORDEN"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 29.815770000000000000
          Top = 173.858380000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '# Orden')
          ParentFont = False
        end
      end
    end
  end
  object prncopia: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'detalle'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 43315.812406608800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 592
    Top = 192
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
      end
      item
        DataSet = series
        DataSetName = 'series'
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
        Height = 23.236240000000000000
        Top = 374.400000000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'detalle'
        RowCount = 0
        Stretched = True
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 23.974830000000000000
          Top = 1.220469999999977000
          Width = 158.135560000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          AllowExpressions = False
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
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = -1.420470000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CANTIDAD'
          DataSet = detalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."CANTIDAD"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 157.173470000000000000
          Width = 84.888250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."TOTAL"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 355.200000000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'master'
        RowCount = 0
        Stretched = True
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 301.344960000000000000
        Top = 460.800000000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 128.883550000000000000
          Top = 3.779530000000022000
          Width = 120.944960000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 134.274150000000000000
          Top = 5.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'MONTO'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."MONTO"]')
          ParentFont = False
        end
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 130.494620000000000000
          Top = 45.272479999999920000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOPAGO'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."MONTOPAGO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 18.426840000000000000
          Top = 7.000000000000000000
          Width = 101.744960000000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 20.206370000000000000
          Top = 46.933889999999800000
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
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 12.727520000000000000
          Top = 155.340259999999900000
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
          Left = 119.990600000000000000
          Top = 155.340259999999900000
          Width = 94.488250000000000000
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
          Left = -8.220470000000000000
          Top = 266.874150000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 3.201670000000000000
          Top = 284.165430000000000000
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
          Left = 18.463080000000000000
          Top = 175.918120000000000000
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
        object cajero: TfrxMemoView
          AllowVectorExport = True
          Left = 101.722820000000000000
          Top = 197.245640000000000000
          Width = 185.877180000000000000
          Height = 19.200000000000000000
          DataField = 'TECNICO'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."TECNICO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 17.795300000000000000
          Top = 26.620470000000010000
          Width = 101.744960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ITBIS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 132.059196000000000000
          Top = 25.620470000000010000
          Width = 105.645430000000000000
          Height = 18.897650000000000000
          DataField = 'POGXITBS'
          DataSet = master
          DataSetName = 'master'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[master."POGXITBS"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 14.379530000000000000
          Top = 271.756030000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GRACIAS POR PREFERIRNOS !!!')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 20.056710000000000000
          Top = 199.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Mesero')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 11.236240000000000000
          Top = 75.716449999999900000
          Width = 259.200000000000000000
          Height = 63.118120000000000000
          DataField = 'OBSERVACIONES'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
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
        Height = 270.604700000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 47.990600000000000000
          Top = 163.749660000000000000
          Width = 85.266110000000000000
          Height = 16.856710000000000000
          DataField = 'NO_FACT'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NO_FACT"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 163.749660000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No.      :')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 153.633210000000000000
          Top = 164.088250000000000000
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
          Left = -0.225170000000000000
          Top = 183.104020000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 46.431540000000000000
          Top = 181.883550000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
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
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -11.220470000000000000
          Top = 247.674150000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = -0.522820000000000000
          Top = 250.894620000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 47.863080000000000000
          Top = 250.894620000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 181.100990000000000000
          Top = 249.894620000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -9.400000000000000000
          Top = 268.281880000000000000
          Width = 321.260050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 153.987570000000000000
          Top = 147.540260000000000000
          Width = 64.252010000000000000
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
          Left = 48.924490000000000000
          Top = 149.000000000000000000
          Width = 84.963760000000000000
          Height = 19.200000000000000000
          DataField = 'RNC_CLIENTE'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."RNC_CLIENTE"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = -0.255040000000000000
          Top = 148.420470000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC    :')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = -1.400000000000000000
          Top = 113.902350000000000000
          Width = 316.800000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 1.600000000000000000
          Top = 225.179530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NCF     :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 43.159060000000000000
          Top = 224.400000000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NCF"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 0.600000000000000000
          Top = 205.400000000000000000
          Width = 229.719790000000000000
          Height = 18.897650000000000000
          DataField = 'NCF_NOMBRE'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NCF_NOMBRE"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 116.502350000000000000
          Width = 211.200000000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DELIVERY')
          ParentFont = False
        end
        object configuracionEMPRESA: TfrxMemoView
          AllowVectorExport = True
          Left = -3.456710000000000000
          Top = 7.559059999999999000
          Width = 249.600000000000000000
          Height = 28.800000000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."EMPRESA"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 36.040940000000000000
          Top = 80.697650000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."RNC"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 32.959060000000000000
          Width = 253.379530000000000000
          Height = 49.738590000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Config."DIRECCION"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 13.420470000000000000
          Top = 80.697650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC    :')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 46.702350000000000000
          Top = 63.497649999999990000
          Width = 94.261410000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."TELEFONO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 11.640940000000000000
          Top = 63.497649999999990000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TEL :')
          ParentFont = False
        end
      end
    end
  end
  object series: TfrxDBDataset
    UserName = 'series'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_SERIES=COD_SERIES'
      'COD_ARTI=COD_ARTI'
      'SERIES=SERIES'
      'ESTADO=ESTADO'
      'NO_FACT=NO_FACT')
    DataSet = datos.Series
    BCDToCurrency = False
    Left = 624
    Top = 256
  end
  object IbqClientes: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.* from cliente a')
    Params = <>
    Left = 344
    Top = 208
    object IbqClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IbqClientesNOMBRES: TWideStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object IbqClientesDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object IbqClientesCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object IbqClientesTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object IbqClientesCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object IbqClientesCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 15
    end
    object IbqClientesCONTACTO: TWideStringField
      FieldName = 'CONTACTO'
      Size = 40
    end
    object IbqClientesRENGLONCNF: TWideStringField
      FieldName = 'RENGLONCNF'
      Size = 15
    end
    object IbqClientesTXTCNF: TWideStringField
      FieldName = 'TXTCNF'
      Size = 40
    end
    object IbqClientesCREDITOLIMITE: TFloatField
      FieldName = 'CREDITOLIMITE'
    end
    object IbqClientesTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object IbqClientesRNC: TWideStringField
      FieldName = 'RNC'
      Size = 15
    end
    object IbqClientesCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object IbqClientesINICIO: TDateField
      FieldName = 'INICIO'
    end
    object IbqClientesSUELDO: TFloatField
      FieldName = 'SUELDO'
    end
    object IbqClientesPAGOITB: TWideStringField
      FieldName = 'PAGOITB'
      Size = 2
    end
    object IbqClientesCREDITO: TWideStringField
      FieldName = 'CREDITO'
      Size = 2
    end
    object IbqClientesBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
    object IbqClientesESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object IbqClientesMOVIL: TWideStringField
      FieldName = 'MOVIL'
      Size = 17
    end
    object IbqClientesCODIGO_T: TWideStringField
      FieldName = 'CODIGO_T'
      Size = 10
    end
    object IbqClientesCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object IbqClientesNUMEROPIN: TWideStringField
      FieldName = 'NUMEROPIN'
      Size = 10
    end
    object IbqClientesTELEFONO3: TWideStringField
      FieldName = 'TELEFONO3'
      Size = 15
    end
    object IbqClientesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object IbqClientesRUTA_ID: TIntegerField
      FieldName = 'RUTA_ID'
    end
    object IbqClientesREGIONID: TIntegerField
      FieldName = 'REGIONID'
    end
    object IbqClientesPROVINCIAID: TIntegerField
      FieldName = 'PROVINCIAID'
    end
    object IbqClientesMUNICIPIOID: TIntegerField
      FieldName = 'MUNICIPIOID'
    end
    object IbqClientesMUSADOS: TFloatField
      FieldName = 'MUSADOS'
      currency = True
    end
    object IbqClientesMPENDIENTES: TFloatField
      FieldName = 'MPENDIENTES'
      currency = True
    end
  end
  object PreFact: TfrxReport
    Version = '6.4.13'
    DataSet = detalle
    DataSetName = 'detalle'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40668.585858831000000000
    ReportOptions.LastChange = 44114.659885451400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 838
    Top = 216
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
        DataSet = FrmCobro.FrxSeries
        DataSetName = 'FrxSeries'
      end
      item
        DataSet = master
        DataSetName = 'master'
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
      PaperHeight = 254.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.200000000000000000
        Top = 489.600000000000000000
        Width = 336.000217000000000000
        DataSet = detalle
        DataSetName = 'detalle'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object frxDBDataset1IMPORTE: TfrxMemoView
          AllowVectorExport = True
          Left = 181.762400000000000000
          Width = 69.467780000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = detalle
          DataSetName = 'detalle'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[detalle."TOTAL"]')
          ParentFont = False
        end
        object frxDBDataset1ARTICULO: TfrxMemoView
          AllowVectorExport = True
          Left = 36.195300000000000000
          Top = 0.302350000000000000
          Width = 173.782870000000000000
          Height = 15.118120000000000000
          DataField = 'TITULOPRN'
          DataSet = detalle
          DataSetName = 'detalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[detalle."TITULOPRN"]')
          ParentFont = False
        end
        object frxDBDataset2CANTIDAD: TfrxMemoView
          AllowVectorExport = True
          Left = 6.579530000000000000
          Top = 0.302350000000000000
          Width = 32.277180000000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 470.400000000000000000
        Width = 336.000217000000000000
        DataSet = master
        DataSetName = 'master'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 358.944960000000000000
        Top = 566.400000000000000000
        Width = 336.000217000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 13.379530000000000000
          Top = 3.779530000000020000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 305.576500000000000000
          Width = 283.464750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 8.340260000000000000
          Top = 326.647310000000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 27.379530000000000000
          Top = 306.678850000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'GRACIAS POR PREFERIRNOS !!!')
          ParentFont = False
        end
        object masterOBSERVACIONES: TfrxMemoView
          AllowVectorExport = True
          Left = 23.040000000000000000
          Top = 256.000000000000000000
          Width = 259.200000000000000000
          Height = 36.661410000000000000
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
        object frxDBDataset2MONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 171.152270000000000000
          Top = 9.600000000000000000
          Width = 75.590600000000000000
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
        object frxDBDataset2MONTOPAGO: TfrxMemoView
          AllowVectorExport = True
          Left = 170.800000000000000000
          Top = 81.872480000000000000
          Width = 75.590600000000000000
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
          Left = 65.186840000000000000
          Top = 11.600000000000000000
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
          Left = 66.786840000000000000
          Top = 28.236240000000000000
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
          Left = 64.186840000000000000
          Top = 83.533890000000000000
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
          Left = 11.600000000000000000
          Top = 170.483550000000000000
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
          Left = 107.950600000000000000
          Top = 170.483550000000000000
          Width = 113.688250000000000000
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
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 65.555300000000000000
          Top = 45.220470000000000000
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
          Left = 170.800000000000000000
          Top = 44.220470000000000000
          Width = 75.840000000000000000
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
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 66.939530000000000000
          Top = 102.000000000000000000
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
            'Efectivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 63.160000000000000000
          Top = 120.897650000000000000
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
            'Cambio')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 170.800000000000000000
          Top = 102.000000000000000000
          Width = 75.840000000000000000
          Height = 18.897650000000000000
          DataField = 'EFECTIVO'
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
            '[master."EFECTIVO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 170.800000000000000000
          Top = 120.897650000000000000
          Width = 75.840000000000000000
          Height = 18.897650000000000000
          DataField = 'DEVOLUCION'
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
            '[master."DEVOLUCION"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 66.960000000000000000
          Top = 64.200000000000000000
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
            '10 % de Ley')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 170.800000000000000000
          Top = 63.200000000000000000
          Width = 75.840000000000000000
          Height = 18.897650000000000000
          DataField = 'LEYPROPINA'
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
            '[master."LEYPROPINA"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 170.880000000000000000
          Top = 27.800000000000000000
          Width = 75.590600000000000000
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
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 210.544960000000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 9.600000000000000000
          Top = 192.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Camarero')
          ParentFont = False
        end
        object MASTERTECNICO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 92.560000000000000000
          Top = 195.200000000000000000
          Width = 134.400000000000000000
          Height = 19.200000000000000000
          DataField = 'TECNICO'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."TECNICO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 93.560000000000000000
          Top = 212.400000000000000000
          Width = 134.400000000000000000
          Height = 19.200000000000000000
          DataField = 'CAJ'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."CAJ"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 387.292950000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object frxDBDataset2NO_FACT: TfrxMemoView
          AllowVectorExport = True
          Left = 86.447310000000000000
          Top = 224.113420000000000000
          Width = 85.266110000000000000
          Height = 16.856710000000000000
          DataField = 'NUMERO_FACTURA'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NUMERO_FACTURA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 8.040000000000000000
          Top = 225.113420000000000000
          Width = 68.031540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Factura')
          ParentFont = False
        end
        object frxDBDataset2FECHA_FAC: TfrxMemoView
          AllowVectorExport = True
          Left = 86.760000000000000000
          Top = 243.129190000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FAC'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."FECHA_FAC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 8.040000000000000000
          Top = 277.904020000000000000
          Width = 52.913420000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente   ')
          ParentFont = False
        end
        object frxDBDataset2NOM_CLIENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 86.760000000000000000
          Top = 278.904020000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRECLIENTE_PRN'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NOMBRECLIENTE_PRN"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 361.274150000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 8.040000000000000000
          Top = 362.494620000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 42.744960000000000000
          Top = 362.494620000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 191.100990000000000000
          Top = 361.494620000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.600000000000000000
          Top = 379.881880000000000000
          Width = 330.860050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 86.760000000000000000
          Top = 260.283550000000000000
          Width = 64.252010000000000000
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
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 8.040000000000000000
          Top = 321.102350000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NCF  ')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 86.760000000000000000
          Top = 320.102350000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'NCF'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."NCF"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 8.040000000000000000
          Top = 303.543290000000000000
          Width = 191.924490000000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.763760000000000000
          Top = 120.645640000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UNO COFFEE BREAK')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 8.040000000000000000
          Top = 243.356030000000000000
          Width = 68.031540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 8.040000000000000000
          Top = 337.285220000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Vencimiento')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 337.285220000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA_FINAL'
          DataSet = master
          DataSetName = 'master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[master."FECHA_FINAL"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 303.469450000000000000
          Width = 335.697650000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 76.800000000000000000
          Top = 19.200000000000000000
          Width = 153.600000000000000000
          Height = 105.600000000000000000
          Center = True
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000030900
            0001BC08060000009503E9630000001974455874536F6674776172650041646F
            626520496D616765526561647971C9653C0000032269545874584D4C3A636F6D
            2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D22
            EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
            64223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F7265
            20352E332D633031312036362E3134353636312C20323031322F30322F30362D
            31343A35363A32372020202020202020223E203C7264663A52444620786D6C6E
            733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F3032
            2F32322D7264662D73796E7461782D6E7323223E203C7264663A446573637269
            7074696F6E207264663A61626F75743D222220786D6C6E733A786D703D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E
            733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F786170
            2F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E73
            2E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F757263
            65526566232220786D703A43726561746F72546F6F6C3D2241646F6265205068
            6F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E73
            74616E636549443D22786D702E6969643A463331463745374330344633313145
            42413145344142414542344444383138422220786D704D4D3A446F63756D656E
            7449443D22786D702E6469643A46333146374537443034463331314542413145
            34414241454234444438313842223E203C786D704D4D3A446572697665644672
            6F6D2073745265663A696E7374616E636549443D22786D702E6969643A463331
            4637453741303446333131454241314534414241454234444438313842222073
            745265663A646F63756D656E7449443D22786D702E6469643A46333146374537
            42303446333131454241314534414241454234444438313842222F3E203C2F72
            64663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A78
            6D706D6574613E203C3F787061636B657420656E643D2272223F3E14FB686600
            00494F4944415478DAEDDD097C9C677DE0F19146F7615B966DC996EDD88EEF3B
            4E42EEC421578184904D9974DBA5DDB64043A19416CA964FD985B2A5650B94D2
            70C376DBB2A520133B0909908490DB24E4F27DC5B6ACF89265CBB2EE63AE7D5E
            C7CA4E9C99471AFD9FE77D9F79F5FBE6E3489E19BDEFF3CEBCF3CEF3F368668A
            D2E97404007259B8A571D3814F9DF854FA67E93D418F050000F8A3884800A0F3
            EECFBEB33D319818AA3D583727E8B1E0CD7ED4FCA3A08700000829220180D65D
            B1BBCE1E24FAE6F5753DF4D4434B6373636D418F09AF23120000B6100900B446
            22A17F797F64B861F0BE298F4FBD23E831E175440200C016220180D648248C48
            962512F71EDDB828363D7628E8B14D74440200C016220180D6F99190AA4C4492
            6FEB79A5F4C9BA75418F6DA223120000B6100900B4CE8F8411E9E2747AC3890D
            0B78462138440200C01622018056CE4888A6239DAB4FBE30F595196F0B7A8C13
            15910000B0854800A0952B1246A44A53A91F1FF9F1FC5843ECB5A0C73AD11009
            00005B8804005AA34642592AD27F4DF723358F4DB925E8B14E34440200C01622
            0180D66891302255924A3E157FEAE6F545EB7F19F498270A220100600B910040
            6BAC91E0196AEAEE293F3A6952D0639E28880400802D440200AD7C22215D9A4A
            BDFCF9479E3AF0BEEEF7C566C68E043DF6B023120000B6100900B4F289845459
            3292A81B8AF4CEEA796EEA2B0D57043DF6B023120000B6100900B4F28984F33D
            D8FDE08A5B27DDBA2BE86D082B220100600B9100404B12093D5776BC58BBB9FE
            D2A0B721AC880400802D4402002D492478E255C3439BF6DDB720363B762CE86D
            091B220100600B9100404B1C09938723894B865EAC7CAC9667140C23120000B6
            100900B4A49130225D9C4E6F38B061466C7EEC54D0DB1416440200C016220180
            96B14888A6239D6F6B7F70EAAF1A6E0B7A9BC282480000D8422400D032150923
            52A5A9D48FDB7FBC245617DB1FF4B6153A220100600B910040CB782494A522F1
            6BFAB6963F56BB36E86D2B74440200C01622018096E94818315C353C74DFDEFB
            E6C5E6C4DA82DEC642452400006C21120068D98A04EF1985BE2BCE3C5EFBE4D4
            B707BD8D858A480000D8422400D0B2150999369DDA74E11DD3EE3818F4B6161A
            220100600B910040CB8F4838B3EEC4AFA6BCDC7065D0DB5A68880400802D4402
            002D3F2261C4AF2A7FF53B570C5CF183A0B7B950100900005B8804005A7E46C2
            3945416F73A120120000B6100900B4FC8E84E19AA1C1FBF6DC7F616C76EC58D0
            DBEE3A220100600B910040CBEF48884F1D8A0C2DECDA5CF3EB195705BDEDAE23
            120000B6100900B402F875A337DC7BF2DE05774EBFB325E8EBC055440200C016
            220180569091D0757DE7B3931FAFBB3AE8EBC055440200C016220180569091E0
            4954C6E31B5B362D8C35C65E0BFABA700D910000B0854800A0157824D4C62391
            6B935B4B1EAA581BF475E11A220100600B9100402BE8481811AF1A1EDEB4E7BE
            0B6273636D418FC515440200C016220180962B919098128F74AF3CF3E0D467A6
            DF16F4585C412400006C21120068B912092352A5A9D48F3B7FBC2A5613DB15F4
            5882462400006C2112006839170965C948FFFAFEE76B1EA9BD3CE8B1048D4800
            00D8422400D0722D1246A48BD3E90DAD1B66C5E64CDCD728100900005B880400
            5ACE4642341D89DFD0F752D9233597043D96A0100900005B8804005AAE4642A6
            E6C3CD3327E2330A440200C01622018056214442D795279F9CBC79FAFAA0C7E1
            37220100600B910040AB102261C47335CFFDFEE5BD97FF4BD0E3F00B910000B0
            854800A0554891704E51D003F00B910000B0854800A055689190A8880F6F6CD9
            74616C66EC48D063B18D480000D8422400D02AB44848D6C623C32B7A76543E37
            7555D063B18D480000D8422400D02AB448C8F450D743CBDE35F95D7B821E872D
            440200C01622018056214742C795A736D76F9E7655D0E3B085480000D8422400
            D02AE4481811D66714880400802D440200AD304442FCD6A15DA50F96AF087A1C
            A6110900005B8804005A6188044FA2321EDF7860D382D8ACF0BCEB11910000B0
            854800A0159A48A88D47BA56773D51FFECB4EB831E8B29440200C01622018056
            582221D3CFFA7EB6E61DD5EFD816F438A4880400802D440200AD304642F7F55D
            BF9EF4F8E4CB821E8714910000B0854800A015C648F0A48BD3E90D27372C8CD5
            C70E063D96F122120000B6100900B4421B09D17464E8EADE7D154FD62E097A2C
            E3452400006C21120068853512469C7D46A1654363EC82587BD063C917910000
            B0854800A015FA4888A623DD57753E36F9A9A937063D967C110900005B880400
            5A618F844CCFD73EFF81CB7A2EFB5ED0E3182B220100600B9100406B2245C239
            45410F60AC880400802D440200AD891609898A787C63CBA605B199EE7F323391
            0000B0854800A035E122A1361E29BA78685FF4891AE7DFF588480000D8422400
            D09A689190A9F978F31C979F5120120000B6100900B4267224745DD7F9C2E427
            EBDE16F4387221120000B6100900B42672248C78B0FBC115B74EBA7557D0E338
            1F910000B0854800A045244422F1770CEE2AFD59C58AA0C7713E220100600B91
            00408B48785DA2321EDFF8EAA679B1D9B163418F6504910000B0854800A04524
            BCCE7BD7A3C1CB069FABF945ED15418F6504910000B0854800A04524BCD5FD9D
            F72FBDBDEEF6BD418F83480000D8422400D02212DEAAF39A8ECD754FD75F15F4
            38880400802D4402002D2221B7C7E28F5D7143E90DCF05B57E220100600B9100
            408B48C86DE08AEE7D95BF9A14D82733130900005B8804005A44825EBA389DDE
            7068C3ACD8DC589BDFEB26120000B6100900B48804BD74341D19BCAE6773E52F
            27F9FE1A05220100600B9100408B4818BBE76B9FFFC0653D977DCFAFF5110900
            005B8804005A4442DE8AFC5A11910000B0854800A04524E427599E4CDE7BE2DE
            E5B129B17DB6D7452400006C211200681109F949562622898BFA5F2DDF3C69B1
            ED75110900005B8804005A44C2F8351F6F9E139B193B626BF9440200C0162201
            801691307E5DD7763E3FF9A9BACB6D2D9F480000D872F605760B172E7CB7FA92
            F2BE57D130ACBE94043D3097A552A97871717199FA539A4824FAD4753678E8D0
            A1A7831E57A15BB468D17BD47599507F52418FC57189A2A2A232EFBEAABE5678
            D7993AADC8DB1FBBBBBBF7B6B5B5ED36B9322241EED1A1472FBDA9FCA617831E
            47216B4E375F12A98F4C8B949E7B7C4A9FFD93528F62C56FFCE7494412418F35
            5025EA3FEF7AF1AE9FA4BA2E52EABFA4FA138F0C479E893C937E356DECFA51C7
            9FC8E2C58BDF9D4C2607D5F7C5DEB1DBFB1AF45500203B75FF8C7A7307355FA8
            5673D9C1732727A3D168CDC183071F1B1E1EEE7ED3E54B4B4B27C7E3F133410F
            BC90D5D6D60EF7F4F494073D8E1060322AD4D4D474E6C891237526974924C80D
            DED2B7B5E2E1EAB5418FA3901D5C77F83B4D73A77C20DDFDFA1CD7FB17AE7469
            D1D94A38FB84F8B9A96F71F1C4DE5D93C9D7BF464BBC0941E4EC15555C521C89
            D694451EFCB707D60CDE9FDE666A5DAB57AFFE93EDDBB7FF53D0DB0C406EDDBA
            751B5F7AE9A53B334F23120CA8AAAA8AF7F7F797053D8E1098D88FEE06CC9E3D
            FBF4E1C387EB4D2E9348302351198F6F6CDDB43836237628E8B114A2A3F38EBD
            D47468D6BAA0C751A812B5F1C8C6C4A6EBD2FF9A7ECAD4325524FCB18A84AF07
            BD6D00E42EBEF8E21FBDF8E28BBF95791A91600091600C93512122C15DDE242D
            794DE2A5F29F565E12F4580A119120432400D021122C21128C61322A44241486
            4D1D9B16DD517FC7FEA0C751484E359E3A30AD6DDA82A0C751A886670C46EEEB
            7CE0AAF4BFA7379B5A269100840791600991600C93512122A130745FDFF5EB49
            8F4FBE2CE87114122241864800A0432458422418C364548848282C8FA71EBFEE
            FAE2EB8DFDFA4798B5CF6ADF3BE3D80CEB1F501756FCBA11001D22C11222C118
            26A342444261E9BFBC6B6FD5739397063D8E424024C81009007488044B880463
            988C0A110985A9F9B5E699B1B9B1B6A0C7E1327EDD48A6FFC2BEC883871FBA26
            FD7FD3CF985A269100840791600991600C93512122A1300DBFB3FF85B29F56BD
            2DE871B88C4890211200E81009961009C630191522120ADBE68ACDBF75E5E095
            3F0A7A1C2E6A9FD9BE7FC6F11917063D8E423530BF2FF293A3440280EC88044B
            880463988C0A1109A15014F4005C4424C81009007488044B880463988C0A1109
            852F599548DCDBBDF1B25849ECE5A0C7E2122241864800A0432458422418C364
            548848287CC9DA7824BEA26F77C5735396073D16971009324402001D22C11222
            C11826A3424442B8DCDB7EEFBC3B67DCD91AF4385C4024C81009007488044B88
            0463988C0A1109E1D27F55D7EEAA6727F38C42844890221200E81009961009C6
            3019152212C2275D9C4E6F18D8B036561EDB16F458824424C81009007488044B
            880463988C0A1109E1938EA623DDD7756F9EFCCBC957053D9620110932440200
            1D22C11222C11826A3424442789D7D46A17FC3DA58C5C47C46814890211200E8
            1009961009C63019152212C2CB7B4661E8F2AE1D8FFFD3A36BDE71F17B53418F
            C76F44820C9100408748B084483086C9A810913031341F6B9E139B153B12F438
            FC4424C81009007488044B880463988C0A11091343EFFAAE976B9E987C71D0E3
            F0139120432400D021122C21128C61322A44244C2C4F153FF58E6B53D7FE3CE8
            71F8814890211200E81009961009C630191522122696BEB51D07AAB7D42F0C7A
            1C7E2012648804003A4482254482314C4685888489E7ECBB1EB56D58109B113B
            14F4586C2212648804003A4482254482314C4685888489C77BD7A3C44DFD2F97
            FEBC3AD4AF512012648804003A4482254482314C4685888489ED99D2676EBF3A
            7EF503418FC3062241864800A0432458422418C364548848805214F4006C2012
            648804003A4482254482314C4685880424AB12897B07375E134BC59E0B7A2C26
            1109324402001D22C11222C11826A342440212B5F1C8F0F2DE5D55CFD7AD087A
            2C261109324402001D22C11222C11826A342440232DDDB7EEFBC3B67DCD91AF4
            384C2012648804003A4482254482314C46858804648A5F79E6D5A7BFF6DCF2B7
            AFFB8D44D063912212648804003A4482254482314C468588049CEFECE728746F
            5819AB89ED0A7A2C1244820C9100408748B084483086C9A8109180F3799FA3D0
            7BC9E9ADB5CFD7AF0D7A2C1244820C9100408748B084483086C9A81091009D27
            D24FDCB0BE68FD2F831EC7781009324402001D22C11222C11826A34244027486
            2E3BF3EA2FBEF1D4D2775DFCEE54D063C9179120432400D021122C21128C6132
            2A4424602C0AF15D8F8804192201800E91600991600C935121220163D1BFBE7B
            7BD5139356073D8E7C1009324402001D22C11222C11826A3424402F2F144D113
            B7AC4FAF7F24E8718C059120432400D021122C21128C61322A4424201F7D6B3A
            F6576FAD5F14F438C6824890211200E81009961009C63019152212301E8F251F
            BBE686E80DC6268F361009324402001D22C11222C11826A3424402C663E0FA9E
            1D958FD7AE0A7A1C3A44820C9100408748B084483086C9A810910009979F5120
            12648804003A4482254482314C46858804480CD7A90359675575D0E3C8864890
            211200E81009961009C630191522122095AC4A24EE8D6EBC25D61373EA939989
            04192201800E91600991600C93512122015289DA786470F9C0C19AE727393521
            2712648804003A4482254482314C4685880498F4F0E0C397DC5271CB4B418FC3
            4324C81009007488044B880463988C0A11093069F8F233FBCB9E9BE2C4E72810
            09324402001D22C11222C11826A34244024C4B17A7D31B3A362C8ED5C5F60739
            0E2241864800A0432458422418C3645488488069E9683AD27B69D7EEDAE7A62C
            0F721C44820C9100408748B084483086C9A81091009B9E297DE6F6ABE3573F10
            C4BA8904192201800E91600991600C935121220136F55DDADD5AFDC2A47941AC
            9B4890211200E81009961009C63019152212E0874DA7365D78C7B43B0EFAB94E
            2241864800A0432458422418C364548848801F066EECDF5FF98B2A5FDFF58848
            90211200E81009961009C63019152212E0A7C7E28F5D7143E90DCFF9B12E2241
            864800A0432458422418C364548848809F06D676BD56B965F2057EAC8B489021
            1200E81009961009C63019152212108467CB9FFDCDAB86AEBAD7E63A88041922
            01800E91600991600C935121220141E8BFBE7B47D5E39356D95C079120432400
            D021122C21128C61322A442420484F459F7AE7B5C96B7F6663D944820C910040
            8748B084483086C9A8109180A03DFFD48BD1CBAEBD24657AB944820C91004087
            48B084483086C9A8109180A025AB12897BE31BAF8BC5639B4D2E974890211200
            E81009961009C6301915221210B4446D3C32B8AC774FCDAFEB96995C2E912043
            2400D021122C21128C61322A4424C0258F251FBBE686E80D4626A544820C9100
            408748B084483086C9A8109100970C5EDADD5AF1C2A47926964524C810090074
            88044B880463988C0A110970D1FD9DF72FBEBDEEF65725CB2012648804003A44
            82254482314C46858804B8A8FB8AAE7D937E357989641944820C9100408748B0
            84483086C9A8109100973D5BF6EC9D570D5FB5713C3F4B24C81009007488044B
            880463988C0A11097059DF255D87AA5F9C3C7F3C3F4B24C81009007488044B88
            0463988C0A11092804BF88FFE2AA1B4B6FCCEB73148804192201800E91600991
            600C935121220185A0FFC6FEFDAF7CF9D72BAE5AB37E78AC3F4324C810090074
            88044B880463988C0A110928248F0E3D7AE94DE537BD3896CB1209324402001D
            22C11222C11826A34244020A49DFAA3387ABB74F993B96CB1209324402001D22
            C11222C11826A34244020AD133A5CFDC7E75FCEA0774972112648804003A4482
            254482314C4685880414A2E11B7B7794FDA26695EE3244820C9100408748B084
            483086C9A810918042B6B962F36F5D3978E58FB29D7772E6C957A71F9FBE30E8
            31162A2201800E91600991600C935121220185EE892DBF285FBFF6C6B7BCEBD1
            A999270F4E3B3E7D5C9FB1002201801E91600991600C9351212201852E5D9C4E
            6F886CB832968A3D97793A9120432400D021122C21128C61322A4424A0D0A5A3
            E9C8C08ACED6AA6D53E7659E7EAAF1D481696DD316043DBE42452400D021122C
            21128C61322A4424204C32DFF5A8ADA96D47E3D1C615418FA950110900748804
            4B880463988C0A11090893C1353D272AB6D6367ADF773674B4D49DA89F17F498
            0A159100408748B084483086C9A8109180B0E95B7BE6D0434F3C72CBFAE5EB7F
            32E3D88CC5418FA7501109007488044B880463988C0A1109089BC1F55D914422
            19491F8A466A8F4C0E7A38058B48709B378F48A7D3C58944A228E8B1B84CCD59
            936ACE1AF5BE2F292949171515A58686864A92C924D79B1091600991600C9351
            21220140364482D398E00A5D74D1458FBEF2CA2B37063D8E42462458422418C3
            6454884800900D91E034224188489023122C21128C61322A442400C88648701A
            91204424C81109961009C6301915221200644324388D48102212E488044B8804
            63988C0A110900B221129C4624081109724482254482314C4685880400D91009
            4E23128488043922C11222C11826A3424402806C8804A711094244821C916009
            91600C935121220140364482D388042122418E48B084483086C9A8109100201B
            22C1694482109120472458422418C36454884800900D91E03422418848902312
            2C21128C61322A442400C88648701A91204424C81109961009C6301915221200
            644324388D48102212E488044B880463988C0A110900B221129C462408110972
            4482254482314C4685880400D910094E23128488043922C11222C11826A34244
            02806C8804A711094244821C91600991600C935121220140364482D388042122
            418E48B084483086C9A8109100201B22C1694482109120472458422418C36454
            884800900D91E034224188489023122C21128C61322A442400C88648701A9120
            4424C81109961009C6301915221200644324388D48102212E488044B88046398
            8C0A110900B221129C4624081109724482254482314C4685880400D910094E23
            128488043922C11222C11826A3424402806C8804A711094244821C9160099160
            0C935121220140364482D388042122418E48B084483086C9A8109100201B22C1
            694482109120472458422418C36454884800900D91E034224188489023122C21
            128C61322A442400C88648701A91204424C81109961009C63019152212006443
            24388D48102212E488044B880463988C0A110900B221129C4624081109724482
            254482314C4685880400D910094E23128488043922C11222C11826A342440280
            6C8804A711094244821C91600991600C935121220140364482D388042122418E
            48B084483086C9A8109100201B22C1694482109120472458422418C364548848
            00900D91E034224188489023122C21128C61322A442400C88648701A91204424
            C81109961009C6301915221200644324388D48102212E488044B880463988C0A
            110900B221129C4624081109724482254482314C4685880400D910094E231284
            88043922C11222C11826A3424402806C8804A711094244821C91600991600C93
            5121220140364482D388042122418E48B084483086C9A81091E09E81D59D91BE
            BEBEC8B403B3831E0A263022C1694482109120472458422418C364548848708F
            17094FBFF0C265D74DBDEE89F2BEF2CAA0C783898948701A91204424C8110996
            1009C63019152212DCD3775B57E4A1FFF970796C6D6C78CE5DF55F3BFCA38E0F
            073D264C3C4482D388042122418E48B084483086C9A81091E09EFE7777471EFC
            DCCFCF4682F7F774713A55942A6252005F11094EE378204424C81109961009C6
            3019152212DC33F81B5D9107FEF6E1D2D8BA5862E4B4D26BE39F8E3F55FA3F83
            1E1B260E22C1694482109120472458422418C364548848704FE2FABEFD1BBFFA
            D0AAD8EAD8E0796771BDC2374482D388042122418E48B08448308649931091E0
            9EC16BBAF7543C3D6959B6F38AAE8B7E22FD64F28B418F11E14724388D481022
            12E488044B880463988C0A1109EE89AFEFDDB7E94B3F5D16BB2496CA767EAA24
            95284E1447831E27C28D48701A91204424C81109961009C63019152212DCD37F
            7B6FE4C1FFF1D368ECE2EC91E0A9BD23F5C38E1786EF2A3B5211F47011524482
            D388042122418E48B084483086C9A81091E09EB14442F3CEE6AA5BAF7AE7D1AA
            333553821E2FC28948701A91204424C81109961009C63019152212DCD37F6B77
            E4C1CFFFBC3CB6E6F5B740D55EF6F2E35FAB7A6E269FA300E38804A711094244
            821C91600991600C93512122C13D036FEFDDF793AFFC74D55822A1797B73456C
            556C20E831237C8804A711094244821C91600991600C93512122C13DF19BFAB6
            973E5ABD3A9F9F19BAF2E497CA374FFF78D063477810094E23128488043922C1
            1222C11826A34244827BC61309CDDB9A2BDE73F97BCE94F59795073D7E840391
            E034224188489023122C21128C61322A4424B867F89A9E57EFFBEACF96677EE2
            F25895BE2BFEBF077F59F407D18192A03703058E48701A91204424C811099610
            09C63019152212DC3378CB99C8037FF748E97822C17B46E13FBDED8EAE92C152
            8E2F1021129C4624081109724482254482314C46858804F7F4BFA32BF2E0DF3E
            5C1ABB28FF4818D179F9897B266DADFF08CF2860BC8804A711094244821C9160
            0991600C93512122C13D2622C17BD7A33B2FBEB3273A1CA512302E4482D38804
            2122418E48B084483086C9A81091E01E139130227A43FF3F261FABFAD3A0B709
            858748701A91204424C81109961009C63019152212DC6332129A5F6C2EBEEDFA
            DBBA2B7B2AAB83DE2E141622C1694482109120472458422418C364548848708F
            C94818517373F46F7A1F49FE55D0DB86C24124388D48102212E488044B880463
            988C0A1109EEB11109E770BB60CC8804A711094244821C91600991600C931E21
            22C13D16232192BAB2F263C59B07BE12F436C27D4482D388042122418E48B084
            483086C9A81091E01E9B91700EB70F464524388D48102212E488044B88046398
            EC081109EEF121122215EF4A7DA76B4FDF07CA0FD406BDB9701491E034224188
            489023122C21128C61322A4424B8C78F4868DED25C76F3CD37EE9FD23E754ED0
            DB0B3711094E23128488043922C11222C11826A34244827BFC88841103579CF8
            66E5AF1AEE0E7A9BE11E22C1694482109120472458422418C364548848708F9F
            91D0BCADB922B63A3610F436C33D4482D388042122418E48B084483086C9A810
            91E01E3F236144CF9AC39FA9DD3AE7B3416F3BDC4124388D48102212E488044B
            880463988C0A1109EE092212BC4F668E5D124B06BDED700791E0342241884890
            23122C21128C61322A4424B82788481851FBBEAA077ABEDF7F5BD0D701824724
            388D48102212E488044B880463988C0A1109EE0932129AB73757DC76E56DA72A
            7B2AAB83BE1E102C22C1694482109120472458422418C364548848704F909130
            A2FDB2B67F9CFE62C39F1625998B4C544482D3B8630A1109724482254482314C
            46858804F7B81009CDBB9B6BDEBBE2BDDD45A9222623131491E034EE97424482
            1C91600991600C93512122C13D2E44C288F875959F287D72E08B418F03FE2312
            9C4624081109724482254482314C46858804F7B814099EA1EAA1FEF2BEF2CAA0
            C7017F11094E23128488043922C11222C11826A34244827B5C8B04CFCCD8B4AF
            1E6F3EF5D1A0C701FF10094E23128488043922C11222C11826A34244827B5C8C
            044FAA2495284E1447831E07FC4124388D48102212E488044B880463988C0A11
            09EE7135123CE98B863E58F44AF9B7831E07EC23129C46240811097244822544
            82314C46858804F7B81C09E770FB4E004482D388042122418E48B084483086C9
            8A1091E09E02888448E96F94FECDC0AF7BFEAAE47445D04381254482D3880421
            22418E48B084483086C9A81091E09E428884E6979A8B6F7CE70DAD534FD4CF0E
            7A2CB08348701A91204424C81109961009C63019152212DC5308913022FEF6AE
            7F2EFDE5E4DF0F7A1C308F48701A91204424C81109961009C63019152212DC53
            4891D0BCBDB922B62A3610F438601E91E034224188489023122C21128C61322A
            4424B8A790226144D7AAC3FF7DF2F6399F0B7A1C308748701A91204424C81109
            961009C63019152212DC538891D0FC7273496C5D2C1EF438600E91E034224188
            489023122C21128C61322A4424B8A710236144CD7BCBBFDFF144D77F293FC9BB
            1E153A22C1694482109120472458422418C364548848704F214742F32BCD2537
            DD72536B5D7BDDACA0C7021922C1694482109120472458422418C36454884870
            4F2147C28833579DFCDA9467A77F38E87160FC8804A711094244821C91600991
            600C93512122C13D618884E65DCD35B1E5B19EA0C781F123129C462408110972
            4482254482314C46858804F7842112460C5C1EFD68E573C9AF063D0EE48F4870
            1A91204424C81109961009C63019152212DC13A648F00C550FF597F79557063D
            0EE48748701A91204424C81109961009C63019152212DC13B648F0CCFEAD19F7
            1CF961FB47821E07C68E48701A91204424C81109961009C63019152212DC13C6
            48F00CD40EF456F65456073D0E8C0D91E034224188489023122C21128C61322A
            4424B827AC91E049AD1DFC60F1968A6F073D0E8C8E48701A91204424C8110996
            1009C63019152212DC13E6483887FDA30010094E23128488043922C11222C118
            261B4244827B2640244406AF1CFCCB929DC57F5DD255C671D0514482D3880421
            22418E48B084483086C9A81091E09E8910099ED30D1D87A79EA89F1DF438901D
            91E034224188489023122C21128C61322A4424B867A24482277573DFBFA69E2E
            FFDD928192A08782F310094E23128488043922C11222C11826A34244827B2652
            24346F6FAEB8EDCADB4EF1AE47EE21129C4624081109724482254482314C4685
            8804F74CA44878639B57B77EB26ADB05FF2BE871E0FF23129C46240811097244
            82254482314C46858804F74CC4483887FDC6214482D388042122418E48B08448
            308649851091E09E091C0991D4B53D5F481C2CFD6F65472A821ECA844724388D
            48102212E488044B880463988C0A1109EE99C891D0FC5273F1F5B75EBF77FAF1
            E90B831ECB444724388D48102212E488044B880463988C0A1109EE99C89130A2
            E7FA33DFA87EB6F643C5C3D1A087326111094E23128488043922C11222C11826
            A34244827B888448A4F9D5E629EF597BFBB1B2BEF2CAA0C7325111094E231284
            88043922C11222C11826A34244827B8884FFAF736DF283755BA2DFCE3C2D1D7D
            7DF72A4A324FB28948701A3BBF109120472458422418C364548848700F91F066
            E9E274AA2855F4C6A48848F00791E034767E2122418E48B084483086C9A81091
            E01E22E1ADAA6F2EFF6CDF23439F097A1C130991E034224188489023122C2112
            8C61322A4424B88748C8AE737AE7F1BA93758D418F63A220129C462408110972
            4482254482314C46858804F71009B9A52F1EBEBBE8A5B26F063D8E898048701A
            91204424C81109961009C63019152212DC43248C8AFDCB074482D38804212241
            8E48B084483086C9821091E01E22617467D69DFEB39A0335FF50D2C561D41622
            C1694482109120472458422418C364548848700F9130BAE6179B8B6F7AE74D87
            EBDAEB66053D96B022129C4624081109724482254482314C46858804F7100963
            577A5BFC87DD3B86EFAA6CA90E7A28A14324388D48102212E488044B88046398
            8C0A1109EE2112C6AE797B73C54D37DC74806714CC23129C4624081109724482
            254482314C46858804F71009F91B5AD3F617E55B1BFF3EE871840991E0342241
            88489023122C21128C61322A4424B887481837F63B838804A711094244821C91
            600991600C93022122C13D44C2F8155DD6F38981F692CF54B454D6043D964247
            24388D48102212E488044B880463988C0A1109EE2112643A1A3A5AEA4FD4CF0B
            7A1C858E48701A91204424C8110996D4D6D60EF7F4F494073D8E1060322A4424
            B88748905B7275E39FEF7DA6EDCB418FA39011094E231284D6AD5BF7D0CB2FBF
            FCCEA0C751C888048B66CE9CD99D48248A53A954B1920A7A3C2EF3AEA3643259
            545959194F2BEAFB68515151BABDBDBD36E8B1153A22C13D44821943D543FDE5
            7DE595418FA3501109EE9A3367CEE9A1A1A152F570482C8CC29B3F785FA3D168
            52CD5F93838383654AE2F8F1E393821E5BA1231280902312DC432498D1D1D071
            B8FE44FDECA0C751A88804003A4402107244827B8804333A67741EE5F313C68F
            4800A0432400214724B8874830836712648804003A4402107244827B88043378
            9723192201800E9100841C91E01E22C18CF699EDFB671C9F7161D0E328544402
            001D2201083922C13D4482193C9320432400D0211280902312DC43249871AAF1
            D481696DD316043D8E42452400D0211280902312DC4324984124C81009007488
            0420E48804F7100966F09A04192201800E9100841C91E01E22C10C2241864800
            A0432400214724B8874830E3E4ACF6BDD38FCD581CF4380A1591004087480042
            8E48700F9160069120432400D0211280902312DC4324987172A68A84E344C278
            11090074880420E48804F71009661009324402001D2201083922C13D448219BC
            7059864800A0432400214724B8874830834890211200E8100940C81109EE2112
            CC2012648804003A4402107244827B8804338804192201800E9100841C91E01E
            22C10C2241864800A0432400214724B8874830834890211200E8100940C81109
            EE2112CC2012648804003A4402107244827B8804338804192201800E9100841C
            91E01E22C10C2241864800A0432400214724B8874830834890211200E8100940
            C81109EE2112CC2012648804003A4402107244827B8804338804192201800E91
            00841C91E01E22C10C2241864800A0432400214724B8874830834890211200E8
            100940C81109EE2112CC2012648804003A4402107244827B8804338804192201
            800E9100841C91E01E22C10C2241864800A0432400214724B887483083489021
            1200E8100940C81109EE2112CC2012648804003A4402107244827B8804338804
            192201800E9100841C91E01E22C10C2241864800A0432400214724B887483083
            4890211200E8100940C81109EE2112CC2012648804003A4402107244827B8804
            338804192201800E9100841C91E01E22C10C2241864800A0432400214724B887
            4830834890211200E8100940C81109EE2112CC2012648804003A440210724482
            7B8804338804192201800E9100841C91E01E22C10C2241864800A04324002147
            24B8874830834890211200E8100940C81109EE2112CC2012648804003A440210
            7244827B8804338804192201800E9100841C91E01E22C10C2241864800A04324
            00214724B8874830834890211200E8100940C81109EE2112CC2012648804003A
            4402107244827B8804338804192201800E9100841C91E01E22C10C2241864800
            A0432400214724B8874830834890211200E8100940C81109EE2112CC20126488
            04003A4402107244827B8804338804192201800E9100841C91E01E22C10C2241
            864800A0432400214724B8874830834890211200E8100940C81109EE2112CC20
            12648804003A4402107244827B8804338804192201800E9100841C91E01E22C1
            0C2241864800A0432400214724B8874830834890211200E8100940C81109EE21
            12CC2012648804003A4402107244827B8804338804192201800E9100841C91E0
            1E22C10C2241864800A0432400214724B8874830834890211200E8100940C811
            09EE2112CC2012648804003A4402107244827B8804338804192201800E910084
            1C91E01E22C10C2241864800A0432400214724B8874830834890211200E81009
            40C81109EE2112CC2012648804003A4402107244827B8804338804192201800E
            9100841C91E01E22C10C2241864800A0432400214724B8874830834890211200
            E8100940C81109EE2112CC2012648804003A4402107244827B88043388041922
            01800E9100841C91E01E22C10C2241864800A0432400214724B8874830834890
            211200E8100940C81109EE2112CC2012648804003A4402107244827B88043388
            04192201804EAE4898A422A12BE8C101902312DCD37F8D8A84EF3C5C1B5B16EB
            0D7A2C858C4890211200E8A848F8818A84DFC93CADA8A6A6A6A1B7B7B72DE8C1
            01909B3B776E7B6B6B6B83C96512093203EB7A8EFCE4FB3F5B125B11EB0F7A2C
            858C4890B111092B57AEBC7BE7CE9DDF0C7ADB00C8657D26E1DC5726014008CC
            9F3FFFC4C183071B4D2EF3DDDFBAE5E1E894E29B8B8B4A23D16834924CA7CE9E
            5EAAFEEE1988F79DFD5A561C8D44D49F54D05742C0AA8A4B227D7D7D91BE682A
            52595919A91EA8FA6EE2FED407831E57A123126478260180CEBA75EBBEFBD24B
            2FBDE9B1AA289DA60F00E456F4B6A21991642411198A0C9F3DA158FDE749445E
            FF1DFBCA48C5D9AFF108BF73EFF1AE9732F55F75A44A5D63C391339133BC1E41
            8E4890B1110900C28D48008010BA2B7657D043308A4890211200E48B48008010
            221290894800902F2201004288484026220140BE8804000821220199880400F9
            2212002084880464221200E48B48008010221290894800902F22010042884840
            26220140BE8804000821220199880400F92212002084880464221200E48B4800
            8010221290894800902F2201004288484026220140BE88040008212201998804
            00F92212002084880464221200E48B48008010221290894800902F2201004288
            484026220140BE8804000821220199880400F92212002084880464221200E48B
            48008010221290894800902F2201004288484026220140BE8804000821220199
            880400F92212002084880464221200E48B48008010221290894800902F22C151
            454545E3FAB9FAFAFA4F9495955D515C5CBC58FD35A1FE14AB3FA77B7A7AEEE9
            EEEEDE38DACFFBB53F8C67FBA64C99B2A8A1A1E1DA8A8A8A356A9C83EAA4E8E0
            E0E0F6B6B6B6A7D4B61D1CCF38D8FF4717B6C966507ED4FC235FD717B6DB8D48
            90211200E48B4870543E93E81933667CB9BDBDFDCFC772D9EAEAEA644949C9FB
            BABABAFE23DBF9AE45C2CC99332F3D7EFCF8AFC7BADCF9F3E7BFA7A5A5E5FEB1
            5EDECFFD5F055C930AB81D6A9DC592E5C4E3F1687979B9178029B52CEF3E5C5C
            5A5AAA4E8E5FAD82698FE971E79A6C3EFDCCD39D6A5F4A7ADF271289A8DAB678
            7F7F7F953A2D2E5D676363E3B6450B175D677A5B7269DED06C7D47F06E2BBFB6
            C7A3EE63D6B729F6DE986FDB4424C8988E04E9FEA51EB77AA74E9D7AACB8B8F8
            EBFBF6EDFB77750CE9D05DDECF63B51AD7E2CECECEBD9265CC9A35AB73FAF4E9
            CD5BB76EBDBBB2B2B2716060A06DB49FF1F1F1D7EA8A56AF5EFD0F6ABB3F6E79
            1BC6FDB3EAF61856B74769B6F31A1A1A2E3D71E2C48BE359AE1FB7DFE4C9935B
            BBBBBBE7E6BA5AF25996BAEF2553A9946E3E524424386A2C770035514C0D0D0D
            8DFB9ED2D4D4B4E3E8D1A3AB324F732512A64C993270E6CC998AF12E5FFDFCA0
            FAF9CAD12EE7E7FE3F7BF6EC55EAFADE666BF973E7CEBDACB5B575CC413556B9
            22C1E6C45A3DB8F65DBFFEFA1A5BCBF7735B4610093244828C6B9190CDB469D3
            FAD471FB826CC1E0E7B17AD2A449737A7A7A5E33B9CC9A9A9AE1850B17FEFB96
            2D5BFE20D7654214095F5491F049CBDB30AE9F5381305305C2B15CE7AF59B3E6
            5E35F6DF1CCFB27D8A84161509F3725D2D635D4ED1D9E97FEEF1969595FDE5F0
            F0F0FF22121CA5BB03A8D23DAD4AB7CEC47A54497A13EA4F9C3E7DFACBDEDF83
            8E8465CB967D78F7EEDD5F33B59E952B577E6EC78E1D9FC975BE9FFB7F6363E3
            5275BBEDB6B5FC3973E65CF2DA6BAFBD647AB9414482F7AF8CEBAF5B5F6B6BF9
            7E6ECB08224186489029844818A1266A4FAA89DAFACCD3FC3C5657575737F5F7
            F71FB1B16CF538D01D8D46DF7DF4E8D127CF3F2F2C91A06EBF7B540C7DD4F236
            8CEBE7EAEAEAFA3B3B3B47FB07C4712DDC8FDB4F05EC1115B04D9271575454F4
            0F0E0EE6BC0E6A6B6B7FACD6F1DEB30B2412DC94EB0EA026F5E9542A657C7D4D
            4D4D5BD441EBA22023411D587EA21E186EB5B5CA6C27FAFC4CC245EA3A7ED9D6
            F2E7CE9D7B456B6BEB73A6971B4424780FA4D75E73ED645BCBF7735B46100932
            44824C214542E66A46BEF1F3583D6DDAB4651D1D1DBB6CAE434DF62E3CFFB574
            218A84AFAA48F898E56DC8FB671A1A1A2E1ECBAF12CD9933A7FDF0E1C30DF92E
            BF109E49A8ACACEC191818C8F92CBDDA2F0FA8E52F7C638144829BCEBF03A81D
            E3BF767575FD1F9BEB9C317D46D789F6135382D8BEA54B97EEDEB367CF52DBAB
            3DFF043FF7FF59B3662D3F7EFCF84E5BCB0FD33309F5F5F5FD37BCFD866A5BCB
            F7735B4610093244824C2146C28A152B3EB573E7CE2F78DFFB79AC9E3265CA3C
            F578DBE2C3AADE74FF09512438F94CC2EAD5ABFF65DBB66DBF37D655E4BB7C9F
            22E1B09AC4CF1ECF9855003CA97EF65ACDF987D4F9F3DFB44022C14D59EE0063
            BEA1CACBCBD375757527A3D1687B2A95AA3FDD71BA716858FFDA85AACAAA54FF
            407F34886712D6AE5DFBCFEA80F2FBA3FDCC92254BF6AB6D7BE0EC95914E0F17
            17174F565FBBD45FDFA6EEF86F1FEDE767CF9EDD71E4C891696FBA5243F49A04
            150997AA4818D70BAE747826C10C224186489029C448185995F73F3F8FD56A22
            B6404D960EF8B97D7E6EA30FAF49F8EAD6AD5B9D7B262192C73C6AD9B2657FBE
            7BF7EEAFE4B5708723A1AAAAEABBFDFDFDEFCF757E4D4DCDA9DEDEDEE96F5920
            91E0A6CC3B40DD94BAC1CE339DE5BACB979595A5D58DFC67A74F9FFE6AAECBA8
            70F8C8C0C0C03F0D0E0EBE69472A2D298DC413715F0FC423DB575F5F3FEAD3BA
            2B56ACD8BA73E7CEB5A32D73CD9A35DF5507A6F7EB2E336FDEBC5B0F1D3AF4D0
            C8DF5D8884EAEAEAF882050B3EA6AE93322F7EBCAFBAE5A8CB24D565A2DEF7C9
            64B24FC552A9F777154AF7D8D89E7C23E1924B2E79588DEBE719DB9238F78E4E
            DE3B3279B7BDF6DD9DD465BD17E41F5DB572D598DFA54A2AD7B678B1A2F6D1BF
            53B1DDAFAEE772F575488DBF7C94C579EFF8143DF7754442EDC3FFE4D7F67872
            4D04544C9EAAADADFD62E4F5DB25756E5F8A7A5FD5DF87CE8D5DC7FB7D47EF36
            2C5AB962E5DFFBB53D44828C5F91505959D9A47B6168A6F2F2F2861933666C3F
            7CF8F0F45C9751C7F507D571FD36872261CCB35335F6FF3871E2C43BDBDADA26
            E5BA8CF74E40EAD87DF69D80828E8455AB567D411DBB4F0B971D3D72E4C80FCF
            9C3973C8F236E475F9E5CB976FDBB56BD7AABC7E28CF67135C8D84D2D2D28FC7
            E3F12FE55AA6BA1F0EAAC7DCACAF5120121C35720798D938F3DF8EB71D7FDF68
            17CF67D96A27FBEDAEAEAE7FF7BE573B4F5AED3C6F4CDA02782661B415E6FDCF
            052A2A5E5613B28B729D9FF9BBA02E4442B66738C6CB854858B972E5EFECD8B1
            E307D2F5C6DE1B33BE2DB9E4DA16F5C0B25D3DB0AC36B10EBF8FB59A89C033DB
            B76FBFC6C43AFCBC8D880419BF2261EAD4A94B4F9F3E9DD7DB87AA63F67F57C7
            ECCF653B4F1D4F7EAD8E2797156224646CDF16B57D6B725C5FFDEAFA3AFBAB95
            4147C278B62D17DBDB328E6712B20EE8A69B6E8A3CFAE8A3597F60E9D2A51FDE
            B367CF375CD966CF389F49C839B0EAEAEACEBEBEBEA9B9CE27121C359649B4F7
            1A82F693EDE37E0D415353D3F36AD27A59E6697E46C292254BDEBF77EFDEEFEA
            2E36DEE5AB079657D4034BD6671FD4017B873A60AFF2737B3DB92261CE9C3927
            0F1F3E3CC3C43A5C88043509FD03350915BF7EC6854850FBCA2B6A5F5967621D
            44820C9120E3E33309B30606068EE7BB3CB55F3EA9F6CB5CBF2FEDEB5CC57424
            7846F9976CBF9FC99F5091B070E1C2FFB27FFFFEEF673B2F1A8D4E578FCDDB5B
            5B5B1BCF3FCF7B26B9ADAD6DCCBFF6EA5A24A86D7B7F3299CC39C7AAA9A939D9
            DBDBAB9D7B10098EF2EE008D0D8DDF6D3BD196F5D7674A4A4ABC0FB032FEFBC0
            3E3F93A05B9978DB4A4B4B9399CF92645BBE0B91307FFEFCB69696969926D6E1
            422484E99904B52D5BD4B65C94EFF2B271251256AF5EFDCB6DDBB6DD60621D44
            42E1F02B12B2BD6BCF582C59B2E4EEBD7BF77E33D7EA0A3D12E6CD9BF7AE4387
            0E3DA85B269190D736E4359C6C277A9F5DA126C9E5EA38FFF7EA38FF17D92E93
            CF87ABB9160911CD1C4B05444A05C468BF5A4A24B8CA8F4974367EED0F0B162C
            B84D4D8C1FC876DEDAB56B7FBC65CB96F74AD7A11EAC721EE8D7AC59F3C8D6AD
            5B6F712112C2F6EB46AB56ADFABDEDDBB7FF9B74BD2E44C28A152BB6E5FA3581
            7C3914099B55245C65621D4442E1F03112168EE745BF4B972EFDE33D7BF67C3D
            D7EA0A3D12CEC9F58F119F5793D44F1309796DC3982EB77CF9F24FEDDAB5EB6F
            B39D575F5FBFAAA3A363C7C89073FCFC16F5F363FA87229722A1B8B838A564BD
            92BCEB6EAC6FA44124384A1709DEDB43AA1DDBCADB43FAB53FA883A2EE7503C6
            0E548B172F3EB86FDFBEF9E79FBE68D1A2D6575F7D751E9130BA091E096FFC6A
            9A942B91A06E9FA7D4ED739D8975100985C3AF48A8AEAE9ED3D7D797F70791A9
            FD72B3DA2FAF38FF74150FAA1DF62C0B7324AC59B3E67B5BB76EFD009190D736
            8CE972F3E6CD3B76E8D0A1B73C539FF95A108F9A937C4185DA7F935C2FAE4442
            454545DFE0E06095EEEA1BEBFA880447CD9A35EBD8F1E3C773FD0A8AB5B71DF4
            6B7F686A6A3A7DECD8B1BA2CA7AFCFF64994E3B564C9923FDCBB77EFF7729CED
            EBFE9F2B122EBCF0C263070E1C681ACF32CF47248C4FAE6D1999A09858872B91
            B07AF5EA27B76DDBB6DEC43A8884C2E1F2AF1BA963C697D431E3E3D9CE2BE477
            37CA22EB462C5CB8F0AEFDFBF7371309796DC3A897A9A9A999DBDBDBDB9AED3C
            B5CF7D5DED731F19F97B341A9D964C264F66BBECF2E5CB5FDAB56BD725416FB3
            67B44850F7BFDDEAFC9C9F39555A5AFA27F178FC6B635D1F91E0A89933671E6F
            6B6B6BCC7176C14742AE83948A84ABD544FA59D39B956B182E4442D85EB8AC26
            A11F5093D0EF45845C888430BEBB11913031F915096AFF7A589DD7AEBE8D679C
            7CFE5B0297AA09D9B21D3B768C3AF18AB8F73909E37AFC5DB972E567D4F67ED6
            856D9C2891A01E5B4F681E5BDFB200B5CC94E6D770465D61D091505B5BDBD6D3
            D3D3A8F9F1BC6F5F22C1518D8D8DA74F9C3891ED5FDA9F5013CDEB6DAD374C07
            A9CCCDCA76A2F799092D2D2D0FE5BBB0F1CA15090B162C387AF0E0C1D9E359E6
            5B36D4814858B162456CE7CE9D1BA4EB7521124CF17EE778FBF6ED9FF66D8322
            F63F3069D9B2657FBA6AE52ADF3EFB81489029C40F539B3973E615C78F1F7FCE
            FBBED023A1B2B272786060A054B74C071E7F8DADC2854888E478EC5721FBCFDB
            B66DFBC37C7E66F9F2E57FB16BD7AE9C9F3570F607837F2621A7D2D2D24FC4E3
            F12FE7FB734482A3264D9A945045F896579E37CD6A7AE8E8B1A3B7DA5AAF0307
            29DF2261CD9A35BFD8B265CB4DBE6C7044FF89CB6AC2B52B954A95161717C78B
            4639FA251289CAB2B2B21E7587AF50974FAB8B0F8FBCB59E0B91505F5FDF376B
            D6AC83C964B2CCDB9E73E32A39F7B5489D968C68A8EBE1D36A7B36852C123EA7
            22E133BE6D50C4FE4460C992257FB466F59AEFF8B53D44824C2145C28C19337A
            D5E3DFE2CCB7522DE448D005829AB03EAD26ACD7FAB98D132112D4F5FA6FEA7A
            CDF51953397F78FEFCF9875B5A5AF2FE44638FAB91505E5EFEE9A1A1A1CF8F67
            7D4482A3D42430A526816FD921D5E4EBE7C78E1D7B87ADF53A7090F22D1266CE
            9C7926DBEB226CD14582947A505DD2DEDEBECF854890BAE4924BBEF1E28B2F7E
            386491F0691509E33A488F970F9170B78A846FFBB53D44824C214582F749C55B
            B76EFDEDCCD30A2D129A9A9AAEE9E8E8787C707050FB3693CB972FFFE4AE5DBB
            BEE8E7364E844888E478DC57B7ED6057575765AE1F5AB162C55FEFDCB9F37F64
            3B4FED97F7AAFDF23773AED09F486851FBE6BC7CAFAEF1AE8F487014916076B3
            B29D387DFAF41E35B19EE4CB0647EC4682DA9685274F9E3C109248F84715097F
            16B24808DD3309CB962DFBE8AA95ABEEF16B7B880499428A8411992F82762812
            8C39FF354F0E3CFE1A5B459091A08E4D1FDBBD7BF757B29D57555535A7BFBF7F
            B477DFCA3AF8D1DE89D08FDB4FDD278EF4F4F4E4F54627E7DE0E75D4CF44C886
            4870546D6D6DBCB7B7B7E4FCD3F975A3F16D56B613FD9EB8D98C84FAFAFAF91D
            1D1D87C21009975E7AE9B75E78E1850F110932B627028B162DFA838BD65E24FE
            64EDB12212640A31123CD3A74F5F75F2E4C91D618C84C8798F770E3CFE1A5B45
            C0CF24E4FA55D85EF538593BDAB2172C58F0DE83070F36673BAFACACAC617878
            B83DEB4A1DFD75234F49494932914894E4FB734482A31A1B1B3B4E9C3831F5FC
            D355243CA622E1465BEB0DFA20A576E47AB5239F36BD59B986E1C2BB1B99A0F6
            97A56D6D6D7B431209F7A848F8A86B91108D46D3C964725C11BB7CF9F28FEFDC
            B9F31F7CDBA008918037F3F173129AFAFAFA8EE5B128ED7E3AF2A9E7618A848A
            8A8AE4E0E0E05B266C413FFE9A5C455091B062C58ACFA863ED67B39DB77AF5EA
            EF6EDBB6ED83635C45DE1F661B7424A8F3B6757575E57C37BEB17ECAF29B3694
            4870D3447D0B543591BEF1C891238F995ACFB977C7D89C6B18618984BABABA39
            9D9D9D478884F1E11397C787B7402D1C7E45C2942953169F3973E6D57C965556
            5636A3A6A6A6E5F4E9D3B93E00CAA54F5C1659B060C11D070F1EBC2FDB79413F
            FE4642F016A88D8D8D67D4DC69B274FB2EB8E082E3ADADAD59E7606A5E7155B6
            7945D0911079FD73129E52E75F93EBE76B6B6B8FF7F4F4CC1AEBFA880447CD6E
            9ABDF7E8B1A38B739C5DF091A026B503EA81A4E2FCD3B3BD604D62D9B2657FB2
            7BF7EE5C6FD3E84424CC9B37AFFDD0A1430D26D6E1422484E9C3D4BC779D52FB
            CF0A13EB702812F89C8409C8C74858A48EEDFBC7B9D8ACCBF49EC54B2412C53E
            5D55C62341DDE79E5713B3CFB7B4B4FC44BBF144423EDB9073D5B9CE983F7FBE
            F70F69DA7F49F7DE81CFBB7E94621509591F97D5EDF9A83A86DEECF7367BC6F2
            89CB2A14F6AACBE49A3F7AE7EF53E72F19CBFA8804479DBB03E47A75FE705757
            57B98DF5FAB53FAC5CB972FBCE9D3B57E6DA7C939B94ED4415238FA818B98548
            18DD448E84152B56EC50FBE92A13EB702512D4EDF3B8BA7DDE6E621D4442E128
            8448686868B8F8C489132F663B4FF32157C68DE7DD8D4A4B4B93F1785C17324E
            7C18D7D981843712FC3CC8BE6500AE4482E75C082CCAB59CDADADAFB55B8BE67
            D48D2412DCA48B84918BD858AF5FFB832AFA77A989F183D9CE5313F807D504FE
            36E93AD47236AAE5DC91EDBCB56BD7FEC7962D5B7E9B4818DD448E8491DF8736
            B10E572261F5EAD5BFDCB66DDB0D26D64124140EBF22414D62E67775751D122C
            3AEB725D8F048F0AA4ACCF909F3B6F509D97F3AD37CF6DA32FDB17C648D005A6
            0DEA38FA983A8EBEE9F5A12E45C2B9CBBEA2EE8B6B732DABAAAAEA1BFDFDFD1F
            D6AD8F4870947707503BFDB7D44EFF47BA8B995EAF8F07A9B3ABCB757E5353D3
            7A35A17E52BA39BA21F8B9BD1E22213F2E44C2D2A54BF728CB4CACC3A148E035
            091350213C93B07CF9F23FDFB56B57D64F852D8448A8ABAB5BD2D9D9B927D7F9
            4B962CD9BF77EFDE9CFFBA4B24E4B50D6FFABB3AAEFDC2D43F7EE4330C3FB7D9
            934F24786A6A6A4EF5F6F6D6E75A5E7575F5FFEDEBEBCBF5A1734482AB32EE00
            396F2075E326D58D9BF75B5A79D4C1EC43EA67BF5E5C5C1C191C1C7CE329523F
            2361D1A245EF7BF5D557734E26EBEBEB57747474EC1AE72A726E885AEFEF8DAC
            974818DD448E045E93A04724148E428884488EE3766969696A7878785CEFF33E
            1E920F539B3F7FFEED2D2D2DF7E53A5FDDFFBEA0EE7F9FCABAF144423EDBF096
            555A5D61168B172FFEC0BE7DFBBEE7D7367BF28D044F5959D9A0BAFFE4FC15F5
            9292920F2512896F655D2091E0A6913BC0D4A9533F76FAF4E9AFE82EAB26FC7F
            D2D9D9F9B5B12EBBA9A969BB9AACBEF17A00B58344D40EE2EBBFAC8F25823C6B
            D6ACB967EBD6AD1F1DEB722FBCF0C2DF3C70E0C086D156FFC6CA8984514DE448
            08E9BB1BF1EB4613905F91505B5B7B414F4FCF6BF92C6B94379870ED85CBA34E
            A4D5CFCFEBEAEA6AC975BEBA0F7E51DD073F79FEE944425EDBF0C6F72B57AEDC
            BC63C78E2BACAE503314BFB6D9339E48F0A8FB5052C9791F52F3C00FAAFBD877
            DFB24022C14D9977809A9A9A446F6FAFF65F512A2A2AD22A16DAD44EF0E3F6F6
            F6B74CAA67CE9CF9C3542A7553B6CF5EF0A81D2FAE0E6A657E47C2A44993467D
            1709EF530EA74D9BF6EC962D5B6ECF75191513DF50A57C9D7AA059AE5BD6FCF9
            F3EF6C6969D938F2772261741339123CE7DED37C5CFF8AE9FD0BE8C88B19FDFC
            75098FEEBDD033C7359ECF7F38F7EE1F45EA36F26D9B880419BF22414DD85E52
            FBD471757ECAFBBBF72E31EA4B5CFD291D394D7D1D548F47530706062EDCB76F
            DFFCD1D6A5C263AE7A9C38ECD775258D04CFD2A54BEFDEB367CF37739DAF42E1
            AB2A143E96799A03916084DA073EAF1E033E6D791BDEF8FEDCFBFFE7BA5D44C7
            28EFED79D56DF937EAB6FA40B6F31B1B1B2F6F6B6B7BDEFBDEE54838473BC0EA
            EAEA7FEEEBEBFBC3372D904870D3F94FA5151717A7D541D5EA3AABAAAA526A07
            F1E529DDCCED5313FC1F6CDDBAF53FDB5E67B667258884D14DF44830C5A54830
            8548281C85FA89CB232FF875E87312C6BCCFABC79C7F558F39BF9BEBFC0B2EB8
            E09DADADAD3F1BF97B5822416DF7B7B76CD972B7E56D38FBF5DCAF25EFC87699
            0B2FBCF03F1F3870E087865699EBED79DFF880B20288849CDB314245D19F0D0F
            0FFFE31B0B2412DC14C4DB7B79AF71E8EDED1DD76B1CA4DBB77AF5EABF53A5FE
            97B6D6B772E5CA4FEFD8B1E3F3E79FEE4224A8078A13B93EB4255F44C2F81009
            E34324148E428D8448006F323175EAD4C59D9D9D7B75E3192B3589ED5793D89C
            EF6A346DDAB435A74E9DDAE6E736DABEEDBC6749541C7D4CBE24ED368C7CEBCB
            BB402E59B2E4D5BD7BF72ECC76DE9C39736E3E7CF8F0A33E4542AB8A84B9C2ED
            D50E5485CFEFAAF0F9FED90512096ECAF54121151515A9C1C141E30FCC0D0D0D
            A74F9C38511FC06B12DEA026F27FA526F27F637A5DCB962DFBD35CBFEFEA4224
            84ED9904753BFE8EBA1D7F205D2F9120432420532146C2DCB9736F7EEDB5D71E
            F5BEF7F3585D5757B750F3A9D179EFF3EA713B91EB57162B2B2BE3030303657E
            6EA30FCF247C73CB962D7F6C791BBC5F1F7E4F4B4BCBA66CE7AB507978DBB66D
            BF616A7D6A9F58AAC27177B6F3D463DEAFD463DE957EDC7E53A64C39D0D5D5B5
            20D7D532C6EBEE3635D6077497A9AAAAFA7A7F7FFF47880447693E4DD07BE1F1
            336AB269E42D0C335FB4EC0932123CD3A74F5FA9C6F4F4F1E3C7A748D7515F5F
            3F50535373476B6BEBC3B92EE3E7FE3F63C68C05274F9E7CCB53D8DE6B2E8E1C
            3932CDC43A5C8804F50071F7D6AD5BBF2D5D2F9120432420532145C282050B8E
            1D3C78B029F3343F8FD5D5D5D54D6A827424D7A68F6799EAB168A8B7B7B72CDB
            79E75EF75412A248B84745C298DF70649CDBE0BDD6F2B49A2BD4E5BA88E9758E
            B63E3F6EBF4993261DEBE9E99969689B477B46E1BF12098ED245C208150BAFA8
            58583B86C565356DDAB4CF9E3A75EAAF334F0B3A12CE2319CCD856E0E3FE7FC1
            05175CFEDA6BAFFDEAFCD3E7CE9D7B4A9D3EDDC43A5C888465CB96BD67F7EEDD
            F74BD74B24C81009C8540891A02697DFDBBA756BD61788FA79AC568F8DCB3B3A
            3A76E6DA74C1A2B51BE1D731222C9110C9717DAE5CB9F2991D3B765C637A9DE7
            5EE390F55972EFD9A2818181529BDBEC993C79F2FEEEEEEE5CC7C1F1EC3FDA7D
            814870D41827D167353434DC535C5CDC984AA5AEF77E6528D7E51A1B1B4FAACB
            3D333434B4591D00BF94ED328E45C2D96716A64E9D7AB9BA03AE530F1E1FCA75
            3975507AA4BFBFFF87EACFC17C3E84CDCFFDDFDBE6E5CB977B2F62F30E24DEAB
            D093EA368BABDBA3ADA5A5E57113EBF0331276EFD9ED6D4B52AD33E9FD5DED5B
            DE8B0B93265E8FE0F13312B66DDF76B71A7B5CDD1EC3D168B442B838EFF68DAB
            E5A5D46D5EECDDC6EA6BC99E3D7BBE275C6E5E962E5DFA416F9BD4BA4BBD31A8
            DB27EA7D3F727B8D975AD6A05A4E995A5EE9EA55ABBF2959563E880419D391B0
            78F1E2DFF7F629EF7BB54F0C959494D4A9AF7DDE3EAFFB39EFDD8E92C964AFBA
            FCE4DEDEDE9DDEBB16A93F07475B9FDFC76A75FFF96335CE01B58DDE7D3875EE
            FEE3DD8FBF2559F692254BDEEF6D4EEAF577221954CB9DA4BE7AF7C9B45AF6FF
            F663FBD4B6FD915A7DBFB7A9DEFD38F2FAE432EA9D263DFEA9EB2CA11E831FE9
            EBEB3B6A731B9A9A9AAEA9AEAE5EE48D5FDD2ED14422D1ADBEAFF08EBB274F9E
            7C5AF3EB62220B172EFC3D6F7D4AA5DAD67EEF78EAED176AFDA70F1E3C789F7C
            0D7AE5E5E59F2C2B2B5BA7BE4DA8F57AFBCED0B9E37CB4A7A7E7AEF12CB3B6B6
            76A35A86775C8FAAAF25EA6B427D4DA8B3A24402008450AEB82B5444828CE948
            00107E440200841091804C4402807C1109001042440232110900F24524004008
            1109C8442400C81791000021442420139100205F440200841091804C4402807C
            1109001042440232110900F245240040081109C8442400C81791000021442420
            139100205F440200841091804C4402807C1109001042440232110900F2452400
            40081109C8442400C81791000021442420139100205F440200841091804C4402
            807C1109001042440232110900F245240040081109C8442400C8179100002144
            2420139100205F440200841091804C4402807C1109001042440232110900F245
            24004008852D124E2C3AFC78C3AB73D6073D8E4235B0AC37F293D69F5E9FFE97
            F413418F0540612012002084C21609C72E38F4F0ACD67937073D8E42D57F41EF
            9907BB7E7A57FA3BE947821E0B80C2F0FF005254451ED2B461AC000000004945
            4E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 6.200000000000000000
          Top = 139.400000000000000000
          Width = 311.508720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RNC #')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 10.040000000000000000
          Top = 260.600000000000000000
          Width = 68.031540000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 8.200000000000000000
          Top = 198.000000000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRE FACTURA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 51.200000000000000000
          Top = 138.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'Config'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."RNC"]')
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 6.200000000000000000
          Top = 175.800000000000000000
          Width = 19.200000000000000000
          Height = 19.200000000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001800
            0000180806000000E0773DF80000000467414D410000B18F0BFC610500000006
            624B4744000000000000F943BB7F000000097048597300000EC400000EC40195
            2B0E1B0000013E4944415478DA6364A031601C76161C05622B24FE4F200E06E2
            ADD4B20064201B9A5817109753CB8237402C8C26361F8893A865C15920364213
            3B07C4C6D4B2602110C7A189FD05627E20FE4A0D0B404131174DEC02109B02F1
            1F6A582001C48F819805CABF02C44E40FC9A5A4104029B81D80788EF02B12525
            86E3B2C00E880F02F16720D604E2A7D4B600044019CB0B88D70071282D2C5066
            80442E0F101703711FB52D008128205E0AC4FF80380288576351034A0CA09CFF
            8D1C0B40A01E881BA09694A2F94414887703B12E105F82FA1854121C60402ABB
            88294DEB80B811CA5E0BC4F940FC0B88F701B10E16F5A0F28C83140B60C13503
            88791920A9EB1503249E08860C29F58112104F02626F22D49265010CD83040E2
            03948C5970A8A1C8021810835AE200C4DA40AC00C47C407C9201925929B68028
            30F42D00005E423419388404170000002574455874646174653A637265617465
            00323032302D31302D30325432313A32323A34382B30303A3030399F4C9E0000
            002574455874646174653A6D6F6469667900323032302D31302D30325432313A
            32323A34382B30303A303048C2F4220000001974455874536F66747761726500
            7777772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object CONFTELEFONO1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 33.000000000000000000
          Top = 175.800000000000000000
          Width = 105.600000000000000000
          Height = 19.200000000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'Config'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."TELEFONO"]')
        end
        object CONFDIRECCION: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 8.200000000000000000
          Top = 156.600000000000000000
          Width = 307.200000000000000000
          Height = 19.200000000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'Config'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Config."DIRECCION"]')
        end
      end
    end
  end
  object FbqMaster_Fact: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp, b.direccion a' +
        's dir, f.nombres_emp Caj, h.nombres_emp Tecnico from master_fact' +
        ' a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp1'
      'LEFT JOIN MUSUARIO E oN a.cajeroid = e.usuarioid'
      'left JOIN mtempleado F On e.empleadoid= f.cod_emp1'
      'left JOIN mtempleado h On a.codven = h.cod_emp1')
    Params = <>
    Left = 720
    Top = 80
    object FbqMaster_FactNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object FbqMaster_FactFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object FbqMaster_FactTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object FbqMaster_FactCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object FbqMaster_FactCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object FbqMaster_FactNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object FbqMaster_FactMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object FbqMaster_FactHORA: TTimeField
      FieldName = 'HORA'
    end
    object FbqMaster_FactPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object FbqMaster_FactTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object FbqMaster_FactMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object FbqMaster_FactCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object FbqMaster_FactRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object FbqMaster_FactCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FbqMaster_FactTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object FbqMaster_FactVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object FbqMaster_FactSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object FbqMaster_FactCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 40
    end
    object FbqMaster_FactNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object FbqMaster_FactRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object FbqMaster_FactNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object FbqMaster_FactNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object FbqMaster_FactDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object FbqMaster_FactROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object FbqMaster_FactNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object FbqMaster_FactMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object FbqMaster_FactCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object FbqMaster_FactINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object FbqMaster_FactDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object FbqMaster_FactPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object FbqMaster_FactLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object FbqMaster_FactCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object FbqMaster_FactTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object FbqMaster_FactEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object FbqMaster_FactDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object FbqMaster_FactRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object FbqMaster_FactABONO: TFloatField
      FieldName = 'ABONO'
    end
    object FbqMaster_FactCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object FbqMaster_FactNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object FbqMaster_FactPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object FbqMaster_FactMESES: TIntegerField
      FieldName = 'MESES'
    end
    object FbqMaster_FactDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object FbqMaster_FactPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object FbqMaster_FactESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object FbqMaster_FactDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object FbqMaster_FactCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object FbqMaster_FactFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object FbqMaster_FactCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object FbqMaster_FactCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object FbqMaster_FactQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object FbqMaster_FactUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object FbqMaster_FactCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object FbqMaster_FactCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object FbqMaster_FactTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object FbqMaster_FactPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
    end
    object FbqMaster_FactNC: TIntegerField
      FieldName = 'NC'
    end
    object FbqMaster_FactCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FbqMaster_FactCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object FbqMaster_FactNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 100
    end
    object FbqMaster_FactFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object FbqMaster_FactINTERES_DIARIO: TFloatField
      FieldName = 'INTERES_DIARIO'
    end
    object FbqMaster_FactINTERES_ACUM: TFloatField
      FieldName = 'INTERES_ACUM'
    end
    object FbqMaster_FactDIAS_TRANS: TIntegerField
      FieldName = 'DIAS_TRANS'
    end
    object FbqMaster_FactFECHA_ULTIMO_PAGO: TDateField
      FieldName = 'FECHA_ULTIMO_PAGO'
    end
    object FbqMaster_FactDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
    end
    object FbqMaster_FactINTERES_PAGADO: TFloatField
      FieldName = 'INTERES_PAGADO'
    end
    object FbqMaster_FactCAPITAL_PAGADO: TFloatField
      FieldName = 'CAPITAL_PAGADO'
    end
    object FbqMaster_FactDESC_CAPITAL: TFloatField
      FieldName = 'DESC_CAPITAL'
    end
    object FbqMaster_FactIDDR: TIntegerField
      FieldName = 'IDDR'
    end
    object FbqMaster_FactNOMBREDELDR: TWideStringField
      FieldName = 'NOMBREDELDR'
      Size = 40
    end
    object FbqMaster_FactCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object FbqMaster_FactNCF_NOMBRE: TWideStringField
      FieldName = 'NCF_NOMBRE'
      Size = 50
    end
    object FbqMaster_FactMORA: TFloatField
      FieldName = 'MORA'
    end
    object FbqMaster_FactNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object FbqMaster_FactBONOS: TFloatField
      FieldName = 'BONOS'
    end
    object FbqMaster_FactOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object FbqMaster_FactIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object FbqMaster_FactCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object FbqMaster_FactTCREDITO: TFloatField
      FieldName = 'TCREDITO'
    end
    object FbqMaster_FactVEFECTIVA: TFloatField
      FieldName = 'VEFECTIVA'
    end
    object FbqMaster_FactIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object FbqMaster_FactUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object FbqMaster_FactPAGOXEFECTIVO: TFloatField
      FieldName = 'PAGOXEFECTIVO'
    end
    object FbqMaster_FactPAGOXCHEQUE: TFloatField
      FieldName = 'PAGOXCHEQUE'
    end
    object FbqMaster_FactPAGOXTARJETA: TFloatField
      FieldName = 'PAGOXTARJETA'
    end
    object FbqMaster_FactPAGOXBONO: TFloatField
      FieldName = 'PAGOXBONO'
    end
    object FbqMaster_FactPAGOCXC: TFloatField
      FieldName = 'PAGOCXC'
    end
    object FbqMaster_FactIDESTACION: TIntegerField
      FieldName = 'IDESTACION'
    end
    object FbqMaster_FactESTACION: TWideStringField
      FieldName = 'ESTACION'
      Size = 30
    end
    object FbqMaster_FactCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 100
    end
    object FbqMaster_FactNOMBRES_EMP: TWideStringField
      FieldName = 'NOMBRES_EMP'
      Size = 35
    end
    object FbqMaster_FactDIR: TWideStringField
      FieldName = 'DIR'
      Size = 100
    end
    object FbqMaster_FactCAJ: TWideStringField
      FieldName = 'CAJ'
      Size = 35
    end
    object FbqMaster_FactTECNICO: TWideStringField
      FieldName = 'TECNICO'
      Size = 35
    end
  end
  object qActualizaPre: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 556
    Top = 352
  end
end
