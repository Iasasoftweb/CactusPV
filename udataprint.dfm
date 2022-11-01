object DataPrint: TDataPrint
  OldCreateOrder = False
  Height = 676
  Width = 835
  object PrnCorte01_ticket: TfrxReport
    Version = '6.7.9'
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
    ReportOptions.LastChange = 43441.573946250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 36
    Top = 120
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = FDqcortes
        DataSetName = 'FDCortes'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'FECHA'
        Value = ''
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
      PaperHeight = 254.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 278.400000000000000000
        Width = 336.000217000000000000
        DataSet = FDqcortes
        DataSetName = 'FDCortes'
        RowCount = 0
        object FDCortesARTICULOS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.200000000000000000
          Width = 201.600000000000000000
          Height = 19.200000000000000000
          StretchMode = smActualHeight
          DataField = 'ARTICULOS'
          DataSet = FDqcortes
          DataSetName = 'FDCortes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FDCortes."ARTICULOS"]')
        end
        object FDCortesEXISTENCIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 230.400000000000000000
          Width = 57.600000000000000000
          Height = 19.200000000000000000
          DataField = 'EXISTENCIA'
          DataSet = FDqcortes
          DataSetName = 'FDCortes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FDCortes."EXISTENCIA"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 138.144960000000000000
        Top = 364.800000000000000000
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
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 25.727520000000000000
          Top = 14.483550000000000000
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
          Left = 152.190600000000000000
          Top = 14.483550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 17.940260000000000000
          Top = 105.847310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."HORA"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 195.292950000000000000
        Top = 19.200000000000000000
        Width = 336.000217000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 170.674150000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 25.477180000000000000
          Top = 171.894620000000000000
          Width = 162.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ARTICULOS / PRODUCTOS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 226.300990000000000000
          Top = 170.894620000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EXISTENCIA')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 189.281880000000000000
          Width = 321.260050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 27.363760000000000000
          Top = 110.445640000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'INVENTARIO CORTE INICIAL')
          ParentFont = False
        end
        object CONFDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 43.097650000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object CONFTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 23.211070000000000000
          Top = 71.333890000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 19.200000000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."EMPRESA"]')
          ParentFont = False
        end
        object FECHA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 82.200000000000000000
          Top = 151.400000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FECHA]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 28.800000000000000000
          Top = 151.600000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FECHA    :')
          ParentFont = False
        end
      end
    end
  end
  object detalle: TfrxDBDataset
    UserName = 'DETALLE'
    CloseDataSource = False
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
    Left = 72
    Top = 32
  end
  object master: TfrxDBDataset
    UserName = 'MASTER'
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
    Left = 128
    Top = 28
  end
  object config: TfrxDBDataset
    UserName = 'CONF'
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
      'IMPRIMECOTIZA=IMPRIMECOTIZA'
      'USARRMA=USARRMA'
      'ALMACENRMA=ALMACENRMA'
      'ALMACENNOMBRE=ALMACENNOMBRE'
      'HABILITARMORA=HABILITARMORA'
      'TIPOINVENTARIO=TIPOINVENTARIO'
      'ACTIVARSOLIDARIDAD=ACTIVARSOLIDARIDAD'
      'DSBDIASVENTAS=DSBDIASVENTAS'
      'PERMISOSALIR=PERMISOSALIR'
      'ARTICULOREPETIDO=ARTICULOREPETIDO'
      'EMUSUARIO=EMUSUARIO'
      'EMCONTRASENA=EMCONTRASENA'
      'EMASUNTO=EMASUNTO'
      'EMDESTINATARIOS=EMDESTINATARIOS'
      'EMADJUNTO=EMADJUNTO'
      'ENVIAREMAILCUADRE=ENVIAREMAILCUADRE'
      'CALLE=CALLE'
      'SECTOR=SECTOR'
      'CIUDAD=CIUDAD')
    DataSet = datos.ZUconfiguracion
    BCDToCurrency = False
    Left = 32
    Top = 32
  end
  object FDqcortes: TfrxDBDataset
    UserName = 'FDCortes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FECHA=FECHA'
      'COD_ART=COD_ART'
      'ARTICULOS=ARTICULOS'
      'EXISTENCIA=EXISTENCIA'
      'VENTAS=VENTAS'
      'ENTRADAS=ENTRADAS'
      'SALIDAS=SALIDAS'
      'EXACTUAL=EXACTUAL')
    DataSource = FrmCorteInventario.DsCortes
    BCDToCurrency = False
    Left = 160
    Top = 36
  end
  object PrnCorte01_Normal: TfrxReport
    Version = '6.7.9'
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
    ReportOptions.LastChange = 44092.845693611110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 84
    Top = 192
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = FDqcortes
        DataSetName = 'FDCortes'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'FECHA'
        Value = ''
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 288.000000000000000000
        Width = 816.000527000000000000
        DataSet = FDqcortes
        DataSetName = 'FDCortes'
        RowCount = 0
        object FDCortesARTICULOS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.200000000000000000
          Width = 412.800000000000000000
          Height = 19.200000000000000000
          StretchMode = smActualHeight
          DataField = 'ARTICULOS'
          DataSet = FDqcortes
          DataSetName = 'FDCortes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FDCortes."ARTICULOS"]')
          ParentFont = False
        end
        object FDCortesEXISTENCIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 508.800000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          DataField = 'EXISTENCIA'
          DataSet = FDqcortes
          DataSetName = 'FDCortes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FDCortes."EXISTENCIA"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 138.144960000000000000
        Top = 374.400000000000000000
        Width = 816.000527000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 13.379530000000000000
          Top = 3.779530000000000000
          Width = 759.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 534.527520000000000000
          Top = 14.483550000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 660.990600000000000000
          Top = 14.483550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 17.940260000000000000
          Top = 105.847310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."HORA"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 204.892950000000000000
        Top = 19.200000000000000000
        Width = 816.000527000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 170.674150000000000000
          Width = 780.019110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 25.477180000000000000
          Top = 171.894620000000000000
          Width = 162.595300000000000000
          Height = 24.718120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ARTICULOS / PRODUCTOS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 504.700990000000000000
          Top = 170.894620000000000000
          Width = 93.052010000000000000
          Height = 24.718120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'EXISTENCIA')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 198.281880000000000000
          Width = 782.060050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 27.363760000000000000
          Top = 110.445640000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'INVENTARIO CORTE INICIAL')
          ParentFont = False
        end
        object CONFDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 51.097650000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object CONFTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 23.211070000000000000
          Top = 71.333890000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 19.200000000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."EMPRESA"]')
          ParentFont = False
        end
        object FECHA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 658.200000000000000000
          Top = 141.800000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FECHA]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 604.800000000000000000
          Top = 142.000000000000000000
          Width = 64.252010000000000000
          Height = 24.718120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FECHA    :')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 168
    Top = 128
  end
  object FdCortes2: TfrxDBDataset
    UserName = 'FDCortes2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FECHA=FECHA'
      'COD_ART=COD_ART'
      'ARTICULOS=ARTICULOS'
      'EXISTENCIA=EXISTENCIA'
      'VENTAS=VENTAS'
      'ENTRADAS=ENTRADAS'
      'SALIDAS=SALIDAS'
      'EXACTUAL=EXACTUAL')
    DataSource = FrmCorteInventario.DsCortes2
    BCDToCurrency = False
    Left = 352
    Top = 60
  end
  object PrnCorte02_Normal: TfrxReport
    Version = '6.7.9'
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
    ReportOptions.LastChange = 44092.845693611100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 292
    Top = 216
    Datasets = <
      item
        DataSet = config
        DataSetName = 'CONF'
      end
      item
        DataSet = FdCortes2
        DataSetName = 'FDCortes2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'FECHA'
        Value = Null
      end
      item
        Name = 'fecha_inicial'
        Value = ''
      end
      item
        Name = 'fecha_final'
        Value = ''
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.200000000000000000
        Top = 288.000000000000000000
        Width = 816.000527000000000000
        DataSet = FdCortes2
        DataSetName = 'FDCortes2'
        RowCount = 0
        object FDCortesARTICULOS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.200000000000000000
          Width = 278.400000000000000000
          Height = 19.200000000000000000
          StretchMode = smActualHeight
          DataField = 'ARTICULOS'
          DataSet = FdCortes2
          DataSetName = 'FDCortes2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FDCortes2."ARTICULOS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FDCortesEXISTENCIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 301.200000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'EXISTENCIA'
          DataSet = FdCortes2
          DataSetName = 'FDCortes2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FDCortes2."EXISTENCIA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 367.600000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'VENTAS'
          DataSet = FdCortes2
          DataSetName = 'FDCortes2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FDCortes2."VENTAS"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.600000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'ENTRADAS'
          DataSet = FdCortes2
          DataSetName = 'FDCortes2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FDCortes2."ENTRADAS"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 501.800000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'SALIDAS'
          DataSet = FdCortes2
          DataSetName = 'FDCortes2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FDCortes2."SALIDAS"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 569.400000000000000000
          Width = 67.200000000000000000
          Height = 19.200000000000000000
          DataField = 'EXACTUAL'
          DataSet = FdCortes2
          DataSetName = 'FDCortes2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FDCortes2."EXACTUAL"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 138.144960000000000000
        Top = 374.400000000000000000
        Width = 816.000527000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 13.379530000000000000
          Top = 3.779530000000000000
          Width = 759.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 534.527520000000000000
          Top = 14.483550000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cantidad de ITEM')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 660.990600000000000000
          Top = 14.483550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object frxDBDataset2HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 17.940260000000000000
          Top = 86.647310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = master
          DataSetName = 'MASTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MASTER."HORA"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 204.892950000000000000
        Top = 19.200000000000000000
        Width = 816.000527000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 170.674150000000000000
          Width = 780.019110000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 25.477180000000000000
          Top = 171.894620000000000000
          Width = 162.595300000000000000
          Height = 24.718120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ARTICULOS / PRODUCTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 303.100990000000000000
          Top = 168.894620000000000000
          Width = 73.852010000000000000
          Height = 34.318120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Existencia Inicial')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 204.281880000000000000
          Width = 782.060050000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 27.363760000000000000
          Top = 100.845640000000000000
          Width = 311.508720000000000000
          Height = 28.497650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CIERRE CORTE INVENTARIO')
          ParentFont = False
        end
        object CONFDIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 51.097650000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'DIRECCION'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."DIRECCION"]')
          ParentFont = False
        end
        object CONFTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 23.211070000000000000
          Top = 71.333890000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."TELEFONO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 21.200000000000000000
          Top = 19.200000000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          DataField = 'EMPRESA'
          DataSet = config
          DataSetName = 'CONF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CONF."EMPRESA"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 576.000000000000000000
          Top = 65.200000000000000000
          Width = 102.652010000000000000
          Height = 24.718120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Inicial    :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 369.400000000000000000
          Top = 168.800000000000000000
          Width = 73.852010000000000000
          Height = 34.318120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ventas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 426.400000000000000000
          Top = 173.800000000000000000
          Width = 64.252010000000000000
          Height = 24.718120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entredas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 499.200000000000000000
          Top = 174.800000000000000000
          Width = 73.852010000000000000
          Height = 24.718120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Salidas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 577.000000000000000000
          Top = 167.800000000000000000
          Width = 73.852010000000000000
          Height = 34.318120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Existencia Actual')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 556.800000000000000000
          Top = 19.200000000000000000
          Width = 211.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 576.000000000000000000
          Top = 96.000000000000000000
          Width = 102.652010000000000000
          Height = 24.718120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Final      :')
          ParentFont = False
        end
        object fecha_inicial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 681.600000000000000000
          Top = 67.200000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fecha_inicial]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fecha_final: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 681.600000000000000000
          Top = 96.000000000000000000
          Width = 86.400000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fecha_final]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
