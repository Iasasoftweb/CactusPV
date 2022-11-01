object ComprobantesAnulados: TComprobantesAnulados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Comprobantes Anulados'
  ClientHeight = 514
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 737
    Height = 65
    TabOrder = 0
    object Label8: TLabel
      Left = 8
      Top = 17
      Width = 103
      Height = 13
      Caption = 'Tipo de Comprobante'
    end
    object Label2: TLabel
      Left = 211
      Top = 17
      Width = 59
      Height = 13
      Caption = 'Fecha Inicial'
    end
    object Label3: TLabel
      Left = 327
      Top = 17
      Width = 54
      Height = 13
      Caption = 'Fecha Final'
    end
    object inicio: TcxDateEdit
      Left = 211
      Top = 34
      TabOrder = 0
      Width = 110
    end
    object fechafinal: TcxDateEdit
      Left = 327
      Top = 34
      TabOrder = 1
      Width = 116
    end
    object cxButton1: TcxButton
      Left = 472
      Top = 17
      Width = 98
      Height = 33
      Caption = 'Ejecutar'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000200001
        009F050806CB060807D002030299000000080000000000000000000000000000
        00000000000501020186070A08BF050705BB000100A8000000220000003E0405
        04CB111312F2131413F70A0C0AC50000001D0000000000000000000000000000
        000000000018070908B2161716E8101311E4030604D300000035060807CE3A2D
        39FF734E6DFF6F4168FF583F56FF121312B30000000800000000000000000000
        0006101210AD533D52FF663760FF774E6FFF4F3A4CFF080909B7110F12EB632F
        5FFFB072A7FF905386FF6B4367FF393339F70304048201010122010101190404
        047E363136F65F375AFF8A4A80FFBD82B3FF824F7BFF171218EF100F11E9501F
        4AFF934E89FF79326FFF592E54FF686469FF5A5A58FF1A1A1ACB151514BD605E
        5CFF6D6B6DFF512E4DFF722B69FFA9669EFF7C4175FF1C161EEA121312D72D27
        2CFF270A23FF42133CFF6F5D6DFF666868FF7A7877FF363534FF2E2C2CFF7C7A
        78FF5B5D5CFF645C64FF381836FF3F0E39FF472B45FF171616DC0000003E4243
        41EF7B7D7AFF8C8D8BFF5F605FFF313032FF696667FF555554FF585655FF7776
        76FF2F2E31FF414243FF727472FF777774FF424441F002010144000000001A19
        19786A6867FF4E4B4BFF2E2C2EFF525052FF656364FF595858FF5B5959FF6161
        63FF5D5B5CFF343234FF4E4D4DFF585655FF3332328E00000000000000001515
        1527413F3FEE585554FF7A7676FF7C7A7BFF424042FD4B4A4AFF4E4C4DFF3936
        39FB636060FF726F70FF575656FF464543F41B1A1A3500000000000000000000
        00000C0C0C60232323B84C4B4BFD5B5959FF212021C9181818911717178D1C1B
        1CBC5B595AFF515050FF292928BC131212680000000000000000000000000000
        00000000000000000001141313AF343332E80505067F00000000000000000202
        02722B2A2BE8232222B901010105000000000000000000000000000000000000
        00000000000000000000030303280A0A0A410101011C00000000000000000000
        0019070707410606062900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 576
      Top = 17
      Width = 113
      Height = 33
      Caption = '&Imprimir'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Caramel'
      OptionsImage.ImageIndex = 1007
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object cxComboBox1: TcxComboBox
      Left = 8
      Top = 34
      Properties.Items.Strings = (
        'Cons. Final'
        'Credito Fiscal'
        'Gubernamental')
      TabOrder = 4
      Width = 197
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 79
    Width = 737
    Height = 410
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Dscuadre
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'No existen datos'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1FECHA_FAC: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA_FAC'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
      object cxGrid1DBTableView1RNC: TcxGridDBColumn
        Caption = 'Rnc'
        DataBinding.FieldName = 'CEDULA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Width = 84
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'No. Comprabante'
        DataBinding.FieldName = 'NCF'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
      end
      object cxGrid1DBTableView1NOMBRECLIENTE_PRN: TcxGridDBColumn
        Caption = 'Nombre del Cliente'
        DataBinding.FieldName = 'CLIENTENOMBRE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Width = 219
      end
      object cxGrid1DBTableView1NCF_NOMBRE: TcxGridDBColumn
        Caption = 'Tipo de Comprabante'
        DataBinding.FieldName = 'NCF_NOMBRE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Width = 213
      end
      object cxGrid1DBTableView1MONTOPAGO: TcxGridDBColumn
        Caption = 'Monto Total'
        DataBinding.FieldName = 'MONTOPAGO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cuadre: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select a.fecha_fac, a.numero_factura, b.cedula ,b.nombres Client' +
        'eNombre, a.nombrecliente_prn, a.ncf_nombre, a.ncf, a.pogxitbs Gr' +
        'abado, a.monto NoGrabado, a.montopago, a.nombredeldr  from maste' +
        'r_fact a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp')
    Params = <>
    Left = 224
    Top = 176
    object cuadreFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object cuadreNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object cuadreCEDULA: TWideStringField
      FieldName = 'CEDULA'
      Size = 15
    end
    object cuadreCLIENTENOMBRE: TWideStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 200
    end
    object cuadreNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 100
    end
    object cuadreNCF_NOMBRE: TWideStringField
      FieldName = 'NCF_NOMBRE'
      Size = 50
    end
    object cuadreNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object cuadreGRABADO: TFloatField
      FieldName = 'GRABADO'
    end
    object cuadreNOGRABADO: TFloatField
      FieldName = 'NOGRABADO'
    end
    object cuadreMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object cuadreNOMBREDELDR: TWideStringField
      FieldName = 'NOMBREDELDR'
      Size = 40
    end
  end
  object Dscuadre: TDataSource
    DataSet = cuadre
    Left = 296
    Top = 192
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
    Left = 112
    Top = 248
  end
  object FxCuadre: TfrxDBDataset
    UserName = 'FxCuadre'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FECHA_FAC=FECHA_FAC'
      'NUMERO_FACTURA=NUMERO_FACTURA'
      'CEDULA=CEDULA'
      'CLIENTENOMBRE=CLIENTENOMBRE'
      'NOMBRECLIENTE_PRN=NOMBRECLIENTE_PRN'
      'NCF_NOMBRE=NCF_NOMBRE'
      'NCF=NCF'
      'GRABADO=GRABADO'
      'NOGRABADO=NOGRABADO'
      'MONTOPAGO=MONTOPAGO'
      'NOMBREDELDR=NOMBREDELDR')
    DataSet = cuadre
    BCDToCurrency = False
    Left = 600
    Top = 264
  end
  object reporte: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43155.955116527800000000
    ReportOptions.LastChange = 43278.936500763890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 502
    Top = 224
    Datasets = <
      item
        DataSet = Config
        DataSetName = 'Config'
      end
      item
        DataSet = FxCuadre
        DataSetName = 'FxCuadre'
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
        Name = 'tipo'
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
      PaperSize = 256
      LeftMargin = 9.900000000000000000
      RightMargin = 9.900000000000000000
      TopMargin = 9.900000000000000000
      BottomMargin = 9.900000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 174.683550000000000000
        Top = 18.897650000000000000
        Width = 741.165833000000000000
        object configuracionEMPRESA: TfrxMemoView
          Left = 13.379530000000000000
          Width = 400.630180000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Config."EMPRESA"]')
          ParentFont = False
        end
        object configuracionDIRECCION: TfrxMemoView
          Left = 15.379530000000000000
          Top = 23.000000000000000000
          Width = 400.630180000000000000
          Height = 22.897650000000000000
          DataField = 'DIRECCION'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Config."DIRECCION"]')
          ParentFont = False
        end
        object configuracionTELEFONO: TfrxMemoView
          Left = 43.379530000000000000
          Top = 47.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Config."TELEFONO"]')
          ParentFont = False
        end
        object configuracionRNC: TfrxMemoView
          Left = 191.379530000000000000
          Top = 46.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'RNC'
          DataSet = Config
          DataSetName = 'Config'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Config."RNC"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 18.379530000000000000
          Top = 47.000000000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 156.379530000000000000
          Top = 47.000000000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RNC:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 19.200000000000000000
          Top = 94.488250000000000000
          Width = 397.228820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Reporte de Comprobantes Anulados')
          ParentFont = False
        end
        object fecha1: TfrxMemoView
          Left = 574.085220000000100000
          Top = 61.365430000000000000
          Width = 98.570130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fecha1]')
          ParentFont = False
        end
        object fecha2: TfrxMemoView
          Left = 573.271120000000000000
          Top = 87.165430000000010000
          Width = 98.570130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fecha2]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 467.996970000000100000
          Top = 61.585900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desde :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 468.182870000000000000
          Top = 89.944959999999970000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Hasta :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 3.400000000000000000
          Top = 142.000000000000000000
          Width = 75.288250000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 78.747990000000000000
          Top = 142.000000000000000000
          Width = 94.488250000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'RNC / CEDULA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 173.000000000000000000
          Top = 142.000000000000000000
          Width = 276.888250000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE DEL CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 450.400000000000000000
          Top = 142.000000000000000000
          Width = 104.088250000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO COMPROBANTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 554.400000000000000000
          Top = 142.000000000000000000
          Width = 124.800000000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'NO. COMPROBANTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object tipo: TfrxMemoView
          Left = 19.200000000000000000
          Top = 115.200000000000000000
          Width = 393.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[tipo]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 21.338590000000000000
        Top = 253.228510000000000000
        Width = 741.165833000000000000
        DataSet = FxCuadre
        DataSetName = 'FxCuadre'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 3.840000000000000000
          Width = 75.288250000000000000
          Height = 20.938590000000000000
          DataField = 'FECHA_FAC'
          DataSet = FxCuadre
          DataSetName = 'FxCuadre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxCuadre."FECHA_FAC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 78.960000000000000000
          Width = 94.488250000000000000
          Height = 20.938590000000000000
          DataField = 'CEDULA'
          DataSet = FxCuadre
          DataSetName = 'FxCuadre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxCuadre."CEDULA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 173.000000000000000000
          Width = 276.888250000000000000
          Height = 20.938590000000000000
          DataField = 'CLIENTENOMBRE'
          DataSet = FxCuadre
          DataSetName = 'FxCuadre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxCuadre."CLIENTENOMBRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 450.480000000000000000
          Width = 104.088250000000000000
          Height = 20.938590000000000000
          StretchMode = smActualHeight
          DataField = 'NCF_NOMBRE'
          DataSet = FxCuadre
          DataSetName = 'FxCuadre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxCuadre."NCF_NOMBRE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 555.160000000000000000
          Width = 124.800000000000000000
          Height = 20.938590000000000000
          DataField = 'NCF'
          DataSet = FxCuadre
          DataSetName = 'FxCuadre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FxCuadre."NCF"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 57.600000000000000000
        Top = 336.378170000000000000
        Width = 741.165833000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 163.200000000000000000
          Top = 19.199999999999990000
          Width = 76.800000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 38.400000000000000000
          Top = 19.199999999999990000
          Width = 192.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Registros')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
