object Fupdate: TFupdate
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Update Utility'
  ClientHeight = 137
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 24
    Top = 24
    Width = 177
    Height = 41
    Caption = 'Actualiza FecheVencimiento Facturas Creditos'
    TabOrder = 0
    WordWrap = True
    OnClick = cxButton1Click
  end
  object ProgressBar1: TProgressBar
    Left = 207
    Top = 24
    Width = 241
    Height = 41
    TabOrder = 1
    Visible = False
  end
  object cxButton2: TcxButton
    Left = 24
    Top = 71
    Width = 177
    Height = 41
    Caption = 'Acualiza Ulidad en Precio'
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object UpFechaV: TZQuery
    Connection = datos.Data
    UpdateObject = Update
    SQL.Strings = (
      'select * from  master_fact where tipo ='#39'CREDITO'#39)
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 72
    Top = 104
    object UpFechaVNO_FACT: TIntegerField
      FieldName = 'NO_FACT'
      Required = True
    end
    object UpFechaVFECHA_FAC: TDateField
      FieldName = 'FECHA_FAC'
    end
    object UpFechaVTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object UpFechaVCOD_CLIENT: TWideStringField
      FieldName = 'COD_CLIENT'
      Size = 10
    end
    object UpFechaVCOD_EMP: TWideStringField
      FieldName = 'COD_EMP'
      Size = 10
    end
    object UpFechaVNO_FACT1: TWideStringField
      FieldName = 'NO_FACT1'
      Size = 12
    end
    object UpFechaVMONTO: TFloatField
      FieldName = 'MONTO'
    end
    object UpFechaVHORA: TTimeField
      FieldName = 'HORA'
    end
    object UpFechaVPOGXITBS: TFloatField
      FieldName = 'POGXITBS'
    end
    object UpFechaVTIPOPAGO: TWideStringField
      FieldName = 'TIPOPAGO'
      Size = 10
    end
    object UpFechaVMONTOPAGO: TFloatField
      FieldName = 'MONTOPAGO'
    end
    object UpFechaVCONDICION: TWideStringField
      FieldName = 'CONDICION'
      Size = 10
    end
    object UpFechaVRENTA: TWideStringField
      FieldName = 'RENTA'
      Size = 10
    end
    object UpFechaVCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object UpFechaVTIPOITBS: TWideStringField
      FieldName = 'TIPOITBS'
      Size = 10
    end
    object UpFechaVVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 15
    end
    object UpFechaVSITUACION: TWideStringField
      FieldName = 'SITUACION'
      Size = 10
    end
    object UpFechaVCAJERO: TWideStringField
      FieldName = 'CAJERO'
      Size = 15
    end
    object UpFechaVNCF: TWideStringField
      FieldName = 'NCF'
      Size = 25
    end
    object UpFechaVRNC_CLIENTE: TWideStringField
      FieldName = 'RNC_CLIENTE'
      Size = 15
    end
    object UpFechaVNCF1: TFloatField
      FieldName = 'NCF1'
    end
    object UpFechaVNOM_CLIENTE: TWideStringField
      FieldName = 'NOM_CLIENTE'
      Size = 35
    end
    object UpFechaVDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object UpFechaVROTULO: TWideStringField
      FieldName = 'ROTULO'
      Size = 60
    end
    object UpFechaVNO_AUTORIZA_NCF: TFloatField
      FieldName = 'NO_AUTORIZA_NCF'
    end
    object UpFechaVMONTOFINANCIADO: TFloatField
      FieldName = 'MONTOFINANCIADO'
    end
    object UpFechaVCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
    end
    object UpFechaVINTERES: TFloatField
      FieldName = 'INTERES'
    end
    object UpFechaVDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object UpFechaVPAGADO: TFloatField
      FieldName = 'PAGADO'
    end
    object UpFechaVLEYPROPINA: TFloatField
      FieldName = 'LEYPROPINA'
    end
    object UpFechaVCOMPROBANTE: TWideStringField
      FieldName = 'COMPROBANTE'
      Size = 10
    end
    object UpFechaVTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 15
    end
    object UpFechaVEFECTIVO: TFloatField
      FieldName = 'EFECTIVO'
    end
    object UpFechaVDEVOLUCION1: TFloatField
      FieldName = 'DEVOLUCION1'
    end
    object UpFechaVRESTANTE: TFloatField
      FieldName = 'RESTANTE'
    end
    object UpFechaVABONO: TFloatField
      FieldName = 'ABONO'
    end
    object UpFechaVCHEK: TWideStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object UpFechaVNO_RECIBO: TIntegerField
      FieldName = 'NO_RECIBO'
    end
    object UpFechaVPAGADOCXC: TFloatField
      FieldName = 'PAGADOCXC'
    end
    object UpFechaVMESES: TIntegerField
      FieldName = 'MESES'
    end
    object UpFechaVDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object UpFechaVPENDIENTE: TFloatField
      FieldName = 'PENDIENTE'
    end
    object UpFechaVESTADOPAGO: TWideStringField
      FieldName = 'ESTADOPAGO'
      Size = 10
    end
    object UpFechaVDEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object UpFechaVCONDICION_PAGO: TIntegerField
      FieldName = 'CONDICION_PAGO'
    end
    object UpFechaVFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object UpFechaVCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 2
    end
    object UpFechaVCOBRADO: TIntegerField
      FieldName = 'COBRADO'
    end
    object UpFechaVQUEES: TWideStringField
      FieldName = 'QUEES'
      Size = 10
    end
    object UpFechaVUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object UpFechaVCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object UpFechaVCONDICIONVENTA: TWideStringField
      FieldName = 'CONDICIONVENTA'
      Size = 15
    end
    object UpFechaVTIENDAID: TIntegerField
      FieldName = 'TIENDAID'
    end
    object UpFechaVPINREFERIDO: TWideStringField
      FieldName = 'PINREFERIDO'
    end
    object UpFechaVNC: TIntegerField
      FieldName = 'NC'
    end
    object UpFechaVCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object UpFechaVCAJEROID: TIntegerField
      FieldName = 'CAJEROID'
    end
    object UpFechaVNOMBRECLIENTE_PRN: TWideStringField
      FieldName = 'NOMBRECLIENTE_PRN'
      Size = 40
    end
    object UpFechaVFECHA_FINAL: TDateField
      FieldName = 'FECHA_FINAL'
    end
    object UpFechaVINTERES_DIARIO: TFloatField
      FieldName = 'INTERES_DIARIO'
    end
    object UpFechaVINTERES_ACUM: TFloatField
      FieldName = 'INTERES_ACUM'
    end
    object UpFechaVDIAS_TRANS: TIntegerField
      FieldName = 'DIAS_TRANS'
    end
    object UpFechaVFECHA_ULTIMO_PAGO: TDateField
      FieldName = 'FECHA_ULTIMO_PAGO'
    end
    object UpFechaVDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
    end
    object UpFechaVINTERES_PAGADO: TFloatField
      FieldName = 'INTERES_PAGADO'
    end
    object UpFechaVCAPITAL_PAGADO: TFloatField
      FieldName = 'CAPITAL_PAGADO'
    end
    object UpFechaVDESC_CAPITAL: TFloatField
      FieldName = 'DESC_CAPITAL'
    end
    object UpFechaVIDDR: TIntegerField
      FieldName = 'IDDR'
    end
    object UpFechaVNOMBREDELDR: TWideStringField
      FieldName = 'NOMBREDELDR'
      Size = 40
    end
    object UpFechaVCAJA: TWideStringField
      FieldName = 'CAJA'
      Size = 10
    end
    object UpFechaVNCF_NOMBRE: TWideStringField
      FieldName = 'NCF_NOMBRE'
      Size = 50
    end
    object UpFechaVMORA: TFloatField
      FieldName = 'MORA'
    end
    object UpFechaVNUMERO_FACTURA: TFloatField
      FieldName = 'NUMERO_FACTURA'
    end
    object UpFechaVBONOS: TFloatField
      FieldName = 'BONOS'
    end
    object UpFechaVOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object UpFechaVIDRUTA: TIntegerField
      FieldName = 'IDRUTA'
    end
    object UpFechaVCAJAID: TIntegerField
      FieldName = 'CAJAID'
    end
    object UpFechaVTCREDITO: TFloatField
      FieldName = 'TCREDITO'
    end
    object UpFechaVVEFECTIVA: TFloatField
      FieldName = 'VEFECTIVA'
    end
    object UpFechaVIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object UpFechaVUBICACION: TWideStringField
      FieldName = 'UBICACION'
      Size = 15
    end
    object UpFechaVPAGOXEFECTIVO: TFloatField
      FieldName = 'PAGOXEFECTIVO'
    end
    object UpFechaVPAGOXCHEQUE: TFloatField
      FieldName = 'PAGOXCHEQUE'
    end
    object UpFechaVPAGOXTARJETA: TFloatField
      FieldName = 'PAGOXTARJETA'
    end
    object UpFechaVPAGOXBONO: TFloatField
      FieldName = 'PAGOXBONO'
    end
  end
  object Update: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM master_fact'
      'WHERE'
      '  master_fact.NO_FACT = :OLD_NO_FACT')
    InsertSQL.Strings = (
      'INSERT INTO master_fact'
      
        '  (NO_FACT, FECHA_FAC, TIPO, COD_CLIENT, COD_EMP, NO_FACT1, MONT' +
        'O, HORA, '
      
        '   POGXITBS, TIPOPAGO, MONTOPAGO, CONDICION, RENTA, CODIGO, TIPO' +
        'ITBS, VENDEDOR, '
      
        '   SITUACION, CAJERO, NCF, RNC_CLIENTE, NCF1, NOM_CLIENTE, DESCU' +
        'ENTO, ROTULO, '
      
        '   NO_AUTORIZA_NCF, MONTOFINANCIADO, CUOTAS, INTERES, DIRECCION,' +
        ' PAGADO, '
      
        '   LEYPROPINA, COMPROBANTE, TERMINAL, EFECTIVO, DEVOLUCION1, RES' +
        'TANTE, '
      
        '   ABONO, CHEK, NO_RECIBO, PAGADOCXC, MESES, DIAS, PENDIENTE, ES' +
        'TADOPAGO, '
      
        '   DEVOLUCION, CONDICION_PAGO, FECHAVENCIMIENTO, COMBO, COBRADO,' +
        ' QUEES, '
      
        '   USUARIOID, CLIENTEID, CONDICIONVENTA, TIENDAID, PINREFERIDO, ' +
        'NC, CODVEN, '
      
        '   CAJEROID, NOMBRECLIENTE_PRN, FECHA_FINAL, INTERES_DIARIO, INT' +
        'ERES_ACUM, '
      
        '   DIAS_TRANS, FECHA_ULTIMO_PAGO, DIAS_ATRASO, INTERES_PAGADO, C' +
        'APITAL_PAGADO, '
      
        '   DESC_CAPITAL, IDDR, NOMBREDELDR, CAJA, NCF_NOMBRE, MORA, NUME' +
        'RO_FACTURA, '
      
        '   BONOS, OBSERVACIONES, IDRUTA, CAJAID, TCREDITO, VEFECTIVA, ID' +
        'TECNICO, '
      
        '   UBICACION, PAGOXEFECTIVO, PAGOXCHEQUE, PAGOXTARJETA, PAGOXBON' +
        'O)'
      'VALUES'
      
        '  (:NO_FACT, :FECHA_FAC, :TIPO, :COD_CLIENT, :COD_EMP, :NO_FACT1' +
        ', :MONTO, '
      
        '   :HORA, :POGXITBS, :TIPOPAGO, :MONTOPAGO, :CONDICION, :RENTA, ' +
        ':CODIGO, '
      
        '   :TIPOITBS, :VENDEDOR, :SITUACION, :CAJERO, :NCF, :RNC_CLIENTE' +
        ', :NCF1, '
      
        '   :NOM_CLIENTE, :DESCUENTO, :ROTULO, :NO_AUTORIZA_NCF, :MONTOFI' +
        'NANCIADO, '
      
        '   :CUOTAS, :INTERES, :DIRECCION, :PAGADO, :LEYPROPINA, :COMPROB' +
        'ANTE, :TERMINAL, '
      
        '   :EFECTIVO, :DEVOLUCION1, :RESTANTE, :ABONO, :CHEK, :NO_RECIBO' +
        ', :PAGADOCXC, '
      
        '   :MESES, :DIAS, :PENDIENTE, :ESTADOPAGO, :DEVOLUCION, :CONDICI' +
        'ON_PAGO, '
      
        '   :FECHAVENCIMIENTO, :COMBO, :COBRADO, :QUEES, :USUARIOID, :CLI' +
        'ENTEID, '
      
        '   :CONDICIONVENTA, :TIENDAID, :PINREFERIDO, :NC, :CODVEN, :CAJE' +
        'ROID, :NOMBRECLIENTE_PRN, '
      
        '   :FECHA_FINAL, :INTERES_DIARIO, :INTERES_ACUM, :DIAS_TRANS, :F' +
        'ECHA_ULTIMO_PAGO, '
      
        '   :DIAS_ATRASO, :INTERES_PAGADO, :CAPITAL_PAGADO, :DESC_CAPITAL' +
        ', :IDDR, '
      
        '   :NOMBREDELDR, :CAJA, :NCF_NOMBRE, :MORA, :NUMERO_FACTURA, :BO' +
        'NOS, :OBSERVACIONES, '
      
        '   :IDRUTA, :CAJAID, :TCREDITO, :VEFECTIVA, :IDTECNICO, :UBICACI' +
        'ON, :PAGOXEFECTIVO, '
      '   :PAGOXCHEQUE, :PAGOXTARJETA, :PAGOXBONO)')
    ModifySQL.Strings = (
      'UPDATE master_fact SET'
      '  NO_FACT = :NO_FACT,'
      '  FECHA_FAC = :FECHA_FAC,'
      '  TIPO = :TIPO,'
      '  COD_CLIENT = :COD_CLIENT,'
      '  COD_EMP = :COD_EMP,'
      '  NO_FACT1 = :NO_FACT1,'
      '  MONTO = :MONTO,'
      '  HORA = :HORA,'
      '  POGXITBS = :POGXITBS,'
      '  TIPOPAGO = :TIPOPAGO,'
      '  MONTOPAGO = :MONTOPAGO,'
      '  CONDICION = :CONDICION,'
      '  RENTA = :RENTA,'
      '  CODIGO = :CODIGO,'
      '  TIPOITBS = :TIPOITBS,'
      '  VENDEDOR = :VENDEDOR,'
      '  SITUACION = :SITUACION,'
      '  CAJERO = :CAJERO,'
      '  NCF = :NCF,'
      '  RNC_CLIENTE = :RNC_CLIENTE,'
      '  NCF1 = :NCF1,'
      '  NOM_CLIENTE = :NOM_CLIENTE,'
      '  DESCUENTO = :DESCUENTO,'
      '  ROTULO = :ROTULO,'
      '  NO_AUTORIZA_NCF = :NO_AUTORIZA_NCF,'
      '  MONTOFINANCIADO = :MONTOFINANCIADO,'
      '  CUOTAS = :CUOTAS,'
      '  INTERES = :INTERES,'
      '  DIRECCION = :DIRECCION,'
      '  PAGADO = :PAGADO,'
      '  LEYPROPINA = :LEYPROPINA,'
      '  COMPROBANTE = :COMPROBANTE,'
      '  TERMINAL = :TERMINAL,'
      '  EFECTIVO = :EFECTIVO,'
      '  DEVOLUCION1 = :DEVOLUCION1,'
      '  RESTANTE = :RESTANTE,'
      '  ABONO = :ABONO,'
      '  CHEK = :CHEK,'
      '  NO_RECIBO = :NO_RECIBO,'
      '  PAGADOCXC = :PAGADOCXC,'
      '  MESES = :MESES,'
      '  DIAS = :DIAS,'
      '  PENDIENTE = :PENDIENTE,'
      '  ESTADOPAGO = :ESTADOPAGO,'
      '  DEVOLUCION = :DEVOLUCION,'
      '  CONDICION_PAGO = :CONDICION_PAGO,'
      '  FECHAVENCIMIENTO = :FECHAVENCIMIENTO,'
      '  COMBO = :COMBO,'
      '  COBRADO = :COBRADO,'
      '  QUEES = :QUEES,'
      '  USUARIOID = :USUARIOID,'
      '  CLIENTEID = :CLIENTEID,'
      '  CONDICIONVENTA = :CONDICIONVENTA,'
      '  TIENDAID = :TIENDAID,'
      '  PINREFERIDO = :PINREFERIDO,'
      '  NC = :NC,'
      '  CODVEN = :CODVEN,'
      '  CAJEROID = :CAJEROID,'
      '  NOMBRECLIENTE_PRN = :NOMBRECLIENTE_PRN,'
      '  FECHA_FINAL = :FECHA_FINAL,'
      '  INTERES_DIARIO = :INTERES_DIARIO,'
      '  INTERES_ACUM = :INTERES_ACUM,'
      '  DIAS_TRANS = :DIAS_TRANS,'
      '  FECHA_ULTIMO_PAGO = :FECHA_ULTIMO_PAGO,'
      '  DIAS_ATRASO = :DIAS_ATRASO,'
      '  INTERES_PAGADO = :INTERES_PAGADO,'
      '  CAPITAL_PAGADO = :CAPITAL_PAGADO,'
      '  DESC_CAPITAL = :DESC_CAPITAL,'
      '  IDDR = :IDDR,'
      '  NOMBREDELDR = :NOMBREDELDR,'
      '  CAJA = :CAJA,'
      '  NCF_NOMBRE = :NCF_NOMBRE,'
      '  MORA = :MORA,'
      '  NUMERO_FACTURA = :NUMERO_FACTURA,'
      '  BONOS = :BONOS,'
      '  OBSERVACIONES = :OBSERVACIONES,'
      '  IDRUTA = :IDRUTA,'
      '  CAJAID = :CAJAID,'
      '  TCREDITO = :TCREDITO,'
      '  VEFECTIVA = :VEFECTIVA,'
      '  IDTECNICO = :IDTECNICO,'
      '  UBICACION = :UBICACION,'
      '  PAGOXEFECTIVO = :PAGOXEFECTIVO,'
      '  PAGOXCHEQUE = :PAGOXCHEQUE,'
      '  PAGOXTARJETA = :PAGOXTARJETA,'
      '  PAGOXBONO = :PAGOXBONO'
      'WHERE'
      '  master_fact.NO_FACT = :OLD_NO_FACT')
    UseSequenceFieldForRefreshSQL = False
    Left = 152
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NO_FACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_FAC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CLIENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_FACT1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'POGXITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOITBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDEDOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITUACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RNC_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOM_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCUENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROTULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_AUTORIZA_NCF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MONTOFINANCIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CUOTAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LEYPROPINA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPROBANTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TERMINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EFECTIVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEVOLUCION1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RESTANTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHEK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NO_RECIBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGADOCXC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MESES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PENDIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTADOPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEVOLUCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICION_PAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHAVENCIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COBRADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QUEES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTEID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONDICIONVENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIENDAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PINREFERIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJEROID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRECLIENTE_PRN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES_DIARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES_ACUM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIAS_TRANS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_ULTIMO_PAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIAS_ATRASO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INTERES_PAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAPITAL_PAGADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESC_CAPITAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDDR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBREDELDR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCF_NOMBRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMERO_FACTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BONOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACIONES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDRUTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAJAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TCREDITO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VEFECTIVA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTECNICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UBICACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGOXEFECTIVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGOXCHEQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGOXTARJETA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGOXBONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NO_FACT'
        ParamType = ptUnknown
      end>
  end
  object UpdateU: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 112
    Top = 104
  end
end
