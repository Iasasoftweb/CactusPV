object FrmHolder: TFrmHolder
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cobro de Facturas'
  ClientHeight = 609
  ClientWidth = 1134
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 168
    Top = 72
    TabOrder = 0
    Height = 273
    Width = 945
  end
  object cxGroupBox2: TcxGroupBox
    Left = 168
    Top = 351
    TabOrder = 1
    Height = 250
    Width = 945
  end
  object HOLD: TZReadOnlyQuery
    Connection = datos.Data
    Active = True
    SQL.Strings = (
      
        'select a.*,b.nombres ClienteNombre, d.nombres_emp  from master_f' +
        'act a'
      'left join cliente b On a.clienteid = b.codigo'
      'left join musuario c On a.usuarioid = c.usuarioid'
      'left join mtempleado d On c.empleadoid = d.cod_emp'
      'WHERE a.situacion='#39'HOLD'#39
      'and a.iddr = 1')
    Params = <>
    Left = 188
    Top = 272
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
    Left = 244
    Top = 246
  end
  object Actualiza: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 448
    Top = 352
  end
  object Zdetalle: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select a.*, b.articulo, c.unidad, b.itbis from detailfact a'
      'left join mtartuculos b On a.cod_art = b.codigotxt'
      'left join unidad_m c on a.unidadid = c.cod_unidad_m'
      'order by NO_FACT asc')
    Params = <>
    Left = 704
    Top = 152
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
    object ZdetalleDESC: TIntegerField
      FieldName = 'DESC'
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
    object ZdetalleLINEA: TFloatField
      FieldName = 'LINEA'
    end
    object ZdetalleOP: TWideStringField
      FieldName = 'OP'
      Size = 10
    end
  end
  object DSdetalle: TDataSource
    DataSet = Zdetalle
    Left = 832
    Top = 152
  end
end
